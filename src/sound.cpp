
#ifndef NOSOUND

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#ifndef NOSOUND
#ifdef SOUND_IOCTL
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <sys/ioctl.h>
#include <unistd.h>
#include <sys/soundcard.h>
#else
#include <SDL.h>
#include <SDL_mixer.h>
#ifndef NO_THREADS
#include <SDL_thread.h>
#endif

#include "sound.h"

#ifdef USE_LIBAYEMU
ayemu_ay_t ayemu_ay;
#endif

enum{
	SAMPLE_CLICK,
	NUM_SAMPLES
};
static char *sample_filename[NUM_SAMPLES]={
	DATA_PREFIX "click.wav"
};
static Mix_Chunk *sample_wave[NUM_SAMPLES];
#define play_sample(NSAMPLE) Mix_PlayChannel(0,sample_wave[(NSAMPLE)],0)
#define play_sampleS(NSAMPLE) Mix_PlayChannel(-1,sample_wave[(NSAMPLE)],0)
#ifdef DREAMCAST
#include <SDL_dreamcast.h>
#endif
#ifndef NO_THREADS
static SDL_sem *data_available_sem, *callback_done_sem;
#endif
#endif
#endif


#include "zx4all.h"
#include "z80intrf.h"
#include "computer.h"

#ifndef NOSOUND
#ifdef SOUND_IOCTL
int audio_fd=0;
#else
int closing_sound=1;
unsigned char *callback_sndbuff, *render_sndbuff;
#endif

char sound_type=0;
#else
char sound_type=1;
#endif

#if !defined(SOUND_IOCTL) && !defined(NOSOUND)
static void sound_callback (void *userdata, Uint8 *stream, int len)
{
	if (!closing_sound)
	{
		while ((!closing_sound) && (((unsigned)render_sndbuff)==((unsigned)callback_sndbuff)))
#ifndef NO_THREADS
			SDL_SemWait(data_available_sem);
#else
		{
			extern int sound_frameskip;
			play_ay(128);
			play_sound(128);
			sound_frameskip=1;
		}
#endif
		if (!closing_sound)
		{
#ifndef DREAMCAST
			memcpy(stream,callback_sndbuff,len);
//			if (len!=(cmpt.buffer_len*2))
				cmpt.buffer_len=len/2;
#else
			SDL_DC_SetSoundBuffer(render_sndbuff);
#endif
			callback_sndbuff=render_sndbuff;
#ifndef NO_THREADS
			SDL_SemPost(callback_done_sem);
#endif
		}

	}
	else
		memset(stream,0,len);
}
#endif


int sound_init(int wfreq,int wbuff) {

#ifndef NOSOUND
	if(sound_type==1)
	{ // no sound; simulate 8bits mono
#endif
		cmpt.sign=0;
		cmpt.format=0;
		cmpt.channels=1;
		cmpt.freq=48000;
		cmpt.buffer_len=4800; // will wait 1/10 second
		return (0);		
#ifndef NOSOUND
	}
	

#ifdef SOUND_IOCTL
	int parameter;
	int parameter2;
	int bytes,stereo;

	audio_fd=open("/dev/dsp",O_WRONLY); // open DSP
	if(audio_fd==-1)
		return (-1);
	
	// set format
	if(ioctl(audio_fd,SNDCTL_DSP_GETFMTS, &parameter2)==-1)
		return (-2);
	
	// Priority: U8, S8, U16LE, S16LE, U16BE, U16LE
	
	if(parameter2 & AFMT_S16_BE)
		parameter = AFMT_S16_BE;
	if(parameter2 & AFMT_U16_BE)
		parameter = AFMT_U16_BE;
	if(parameter2 & AFMT_S16_LE)
		parameter = AFMT_S16_LE;
	if(parameter2 & AFMT_U16_LE)
		parameter = AFMT_U16_LE;
	if(parameter2 & AFMT_S8)
		parameter = AFMT_S8;
	if(parameter2 & AFMT_U8)
		parameter = AFMT_U8;
	
	bytes=0; //8 bits
	stereo=0; // no stereo
	parameter=AFMT_U8;
	if(ioctl(audio_fd,SNDCTL_DSP_SETFMT,&parameter) == -1)
		return (-2);
	
	switch(parameter) {
	case AFMT_U8:
	    	cmpt.sign=0;
	    	cmpt.format=0;
		cmpt.channels=1;
    		break;
	case AFMT_S8:
	    	cmpt.sign=-128;
    		cmpt.format=0;
		cmpt.channels=1;
    		break;
	case AFMT_U16_LE:
		cmpt.sign=0;
	    	cmpt.format=1;
		cmpt.channels=2;
    		break;
	case AFMT_S16_LE:
	    	cmpt.sign=-128;
    		cmpt.format=1;
		cmpt.channels=2;
    		break;
	case AFMT_U16_BE:
	    	cmpt.sign=0;
    		cmpt.format=2;
		cmpt.channels=2;
    		break;
	case AFMT_S16_BE:
		cmpt.sign=-128;
	    	cmpt.format=2;
		cmpt.channels=2;
    	break;
	}

	parameter = cmpt.channels; // we want mono audio
	if(ioctl(audio_fd,SNDCTL_DSP_CHANNELS, &parameter)==-1)
		return (-3);

	cmpt.channels = parameter;
	parameter=cmpt.freq;
	if(ioctl(audio_fd,SNDCTL_DSP_SPEED, &parameter)==-1)
		return (-3);
	cmpt.freq=parameter;
			
	if(cmpt.freq<=24000) // the maximum available frequency in lower than 24000?
		parameter=0x002B ; // two buffers with 2048 bytes each one
	else
		parameter=0x002C ; // two buffers with 4096 bytes each one
	if(ioctl(audio_fd,SNDCTL_DSP_SETFRAGMENT, &parameter)==-1)
		return (-4);
	if(ioctl(audio_fd,SNDCTL_DSP_GETBLKSIZE, &parameter)==-1)
		return (-4);
	cmpt.buffer_len=parameter;
#else
	Uint16 format;
#ifndef ZX4ALL_BIG_ENDIAN
	if (Mix_OpenAudio(wfreq,AUDIO_S16,DEFAULT_SOUND_CHANNELS,wbuff))
#else
	if (Mix_OpenAudio(wfreq,AUDIO_S16MSB,DEFAULT_SOUND_CHANNELS,wbuff))
#endif
		return -1;
	cmpt.buffer_len=wbuff;
	Mix_QuerySpec(&cmpt.freq,&format,&cmpt.channels);
	switch(format)
	{
		case AUDIO_U8:
	    		cmpt.sign=0;
	    		cmpt.format=0;
			break;
		case AUDIO_S8:
	    		cmpt.sign=-128;
    			cmpt.format=0;
    			break;
		case AUDIO_U16LSB:
			cmpt.sign=-128;
	    		cmpt.format=1;
    			break;
		case AUDIO_U16MSB:
	    		cmpt.sign=-128;
    			cmpt.format=2;
    			break;
		case AUDIO_S16MSB:
			cmpt.sign=0;
	    		cmpt.format=2;
			break;
		default: // AUDIO_S16LSB
	    		cmpt.sign=0;
    			cmpt.format=1;
	}
#ifndef NO_THREADS
	data_available_sem=SDL_CreateSemaphore(0);
	callback_done_sem=SDL_CreateSemaphore(0);
#endif
	closing_sound = 1;
	int i;
	for(i=0;i<NUM_SAMPLES;i++)
		sample_wave[i]=Mix_LoadWAV(sample_filename[i]);
	Mix_PlayMusic(Mix_LoadMUS(DATA_PREFIX "music.mod"),-1);
	Mix_VolumeMusic(MUSIC_VOLUME);
#endif
#endif

#ifdef USE_LIBAYEMU
	memset (&ayemu_ay, 0, sizeof(ayemu_ay));
	ayemu_init(&ayemu_ay);
	ayemu_set_chip_type(&ayemu_ay,AYEMU_AY,NULL);
	ayemu_set_chip_freq(&ayemu_ay,3500000/2);
	ayemu_set_sound_format(&ayemu_ay,wfreq+(8000*2),cmpt.channels,(cmpt.format+1)*8);
#endif
	return 0;
}

void sound_setup(void)
{
#ifndef NOSOUND
#ifndef SOUND_IOCTL
	render_sndbuff=cmpt.current_buffer=sound[0];
	callback_sndbuff=sound[1];
#else
	cmpt.current_buffer=sound[0];
#endif
#endif
}

void sound_play() {
	extern int sound_delayed;
#ifdef NOSOUND
	cmpt.current_buffer=sound[0];
#else
	if(sound_type==1) { // no sound
#ifndef DEBUG_ZX4ALL
		cmpt.current_buffer=sound[0];
//		SDL_Delay(5);
#endif
		return;
	}
#ifdef SOUND_IOCTL
	cmpt.current_buffer=sound[0];
	write(audio_fd,sound[0],cmpt.buffer_len);
#else
	closing_sound=0;
#ifndef NO_THREADS
	SDL_SemPost(data_available_sem);
#endif
	sound_delayed=0;
	while ((!closing_sound) && (callback_sndbuff!=render_sndbuff))
	{
#ifndef NO_THREADS
		SDL_SemWait(callback_done_sem);
#else
		SDL_Delay(1);
#endif
		sound_delayed++;
	}
	if (render_sndbuff==sound[0])
		render_sndbuff=cmpt.current_buffer=sound[1];
	else
		render_sndbuff=cmpt.current_buffer=sound[0];

#endif
#endif
}

void sound_close() {
#ifndef NOSOUND
//	if(sound_type==0)
//		return;
#ifdef SOUND_IOCTL
	close(audio_fd);
#else
	int i;
	for (i=0;i<33;i++)
	{
		closing_sound=1;
#ifndef NO_THREADS
		SDL_SemPost(data_available_sem);
#endif
		SDL_Delay(10);
	}
	SDL_CloseAudio();
	SDL_Delay(100);
#ifndef NO_THREADS
	SDL_DestroySemaphore(data_available_sem);
	SDL_DestroySemaphore(callback_done_sem);
#endif
#endif
#endif
}

void zx4all_pause_sound (void)
{
#if !defined(NOSOUND) && !defined(SOUND_IOCTL)
	closing_sound=-1;
#ifndef NO_THREADS
	SDL_SemPost(data_available_sem);
#endif
	SDL_Delay(333);
	SDL_PauseAudio (1);
#ifdef DREAMCAST
	SDL_DC_RestoreSoundBuffer();
#endif
	Mix_HookMusic(NULL,NULL);
	Mix_VolumeMusic(MUSIC_VOLUME);
	SDL_PauseAudio(0);
#endif
}

void zx4all_resume_sound (void)
{
#if !defined(NOSOUND) && !defined(SOUND_IOCTL)
	SDL_PauseAudio (1);
	Mix_HookMusic(&sound_callback,NULL);
	SDL_PauseAudio (0);
#endif
}

void zx4all_pause_music(void)
{
#if !defined(NOSOUND) && !defined(SOUND_IOCTL)
	SDL_PauseAudio (1);
#endif
}

void zx4all_resume_music(void)
{
#if !defined(NOSOUND) && !defined(SOUND_IOCTL)
	SDL_PauseAudio (0);
#endif
}

void zx4all_play_click(void)
{
#if !defined(NOSOUND) && !defined(SOUND_IOCTL)
	play_sampleS(SAMPLE_CLICK);
#endif
}


#endif
