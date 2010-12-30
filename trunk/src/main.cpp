#ifdef DREAMCAST
#include <kos.h>
#ifndef EXECUTE_FSL
extern uint8 romdisk[];
KOS_INIT_ROMDISK(romdisk);
#else
KOS_INIT_FLAGS(INIT_DEFAULT);
#endif
#include <SDL.h>
#include <SDL_dreamcast.h>
#endif

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <SDL.h>

#include "zx4all.h"
#include "z80intrf.h"
#include "computer.h"
#include "snapshot.h"
#include "characters.h"
#include "menus.h"
#include "sound.h"
#include "tape.h"
#include "microdrive.h"
#include "debug.h"
#include "tvfilter/tvfilter.h"

#include "vkbd/vkbd.h"
#include "vtape/vtape.h"

#ifndef DREAMCAST
#include "win_icon.h"
#endif

#ifndef USE_RAZE
Z80 procesador;
#else
unsigned __z80_last_cycles;
#endif

#include "menu.h"

char zx4all_image_file[1024];
char zx4all_tape_file[1024];
int emulating=0;
char salir=0;

unsigned long long DEBUG_ACTUAL_TIMESLICE=0;

#ifndef DEBUG_Z80_STATS
#if !defined(DEBUG_START) || DEBUG_START==0
#define DEBUG_START 0
int DEBUG_AHORA=1;
#else
int DEBUG_AHORA=0;
#endif

#ifndef DEBUG_END
#define DEBUG_END (DEBUG_START+10)
#endif
#endif

struct computer cmpt;
SDL_Surface *screen;
unsigned char *sound[NUM_SNDBUF];
/*
char path_snaps[2049];
char path_taps[2049];
char path_mdrs[2049];
*/

#ifndef DREAMCAST
static char original_path[1024];
#endif

extern int closing_sound;
extern int mainMenu_sound;
extern int menuOpt_mode;
extern int menuOpt_joy;
extern int menuOpt_ay;
extern int menuOpt_intr;
extern int menuOpt_fast;

void setChanges(void)
{
	if (cmpt.issue<=2 && cmpt.mode128k==0)
	{
		menuOpt_mode=0;
		menuOpt_ay=0;
	}
	else
	if (cmpt.mode128k==0)
	{
		menuOpt_mode=1;
		menuOpt_ay=0;
	}
	else
	if (cmpt.mode128k==1)
	{
		menuOpt_mode=2;
		menuOpt_ay=1;
	}
	else
	if (cmpt.mode128k==2)
	{
		menuOpt_mode=3;
		menuOpt_ay=1;
	}
	else
	{
		menuOpt_mode=4;
		menuOpt_ay=1;
	}
}

void getChanges(void)
{
#if !defined(NOSOUND) && !defined(NO_MENU)
	if (!mainMenu_sound)
	{
		sound_type=1;
		closing_sound=1;
	}
	else
		sound_type=0;
#endif

	switch (menuOpt_mode)
	{
		case 0:
			if (cmpt.issue>2 || cmpt.mode128k!=0)
			{
				cmpt.issue=2;
				cmpt.mode128k=0;
				cmpt.ay_emul=menuOpt_ay=0;
				ResetComputer();
				if (menuOpt_fast)
					tape_reset((char *)&zx4all_tape_file[0]);
			}
			break;
		case 1:
			if (cmpt.issue!=3 || cmpt.mode128k!=0)
			{
				cmpt.issue=3;
				cmpt.mode128k=0;
				cmpt.ay_emul=menuOpt_ay=0;
				ResetComputer();
				if (menuOpt_fast)
					tape_reset((char *)&zx4all_tape_file[0]);
			}
			break;
		case 2:
			if (cmpt.issue!=3 || cmpt.mode128k!=1)
			{
				cmpt.issue=3;
				cmpt.mode128k=1;
				cmpt.ay_emul=menuOpt_ay=-1;
				ResetComputer();
				if (menuOpt_fast)
					tape_reset((char *)&zx4all_tape_file[0]);
			}
			break;
		case 3:
			if (cmpt.issue!=3 || cmpt.mode128k!=2)
			{
				cmpt.issue=3;
				cmpt.mode128k=2;
				cmpt.ay_emul=menuOpt_ay=-1;
				ResetComputer();
				if (menuOpt_fast)
					tape_reset((char *)&zx4all_tape_file[0]);
			}
			break;
		case 4:
			if (cmpt.issue!=3 || cmpt.mode128k!=3)
			{
				cmpt.issue=3;
				cmpt.mode128k=3;
				cmpt.ay_emul=menuOpt_ay=-1;
				cmpt.mdr_active=menuOpt_intr=0;
				ResetComputer();
				if (menuOpt_fast)
					tape_reset((char *)&zx4all_tape_file[0]);
			}
			break;
	}
	cmpt.ay_emul=menuOpt_ay;
	cmpt.joystick=menuOpt_joy;
	if (cmpt.mdr_active!=menuOpt_intr)
	{
		cmpt.mdr_active=menuOpt_intr;
/*
		if(cmpt.mode128k!=3)
	        {
			ResetComputer();
			tape_reset((char *)&zx4all_tape_file[0]);
		}
*/
	}
	if (cmpt.tape_fast_load!=menuOpt_fast)
	{
		if (cmpt.tape_fast_load)
			rewind_tape(1);
		else
			cmpt.pause=0;
		cmpt.tape_fast_load=menuOpt_fast;
	}
}

void load_rom_loading(char type) {
	char *fname=(char *)calloc(1,1024);
#ifndef DREAMCAST
	strcpy(fname,original_path);
#endif
	strcat(fname,ROM_PATH_PREFIX);
	switch (type)
	{
		case 1:
			strcat(fname,"/128.z80.gz"); break;
		case 2:
			strcat(fname,"/plus2.z80.gz"); break;
		case 3:
			strcat(fname,"/plus3.z80.gz"); break;
		default:
			strcat(fname,"/spectrum.z80.gz");
	}
	load_z80(fname);
	cmpt.mode128k=type;
//	ResetComputer();
	free(fname);
}

void load_rom(char type) {
	gzFile fichero;
	int size;
	char *fname=(char *)calloc(1,1024);
	int fname_len;
#ifndef DREAMCAST
	strcpy(fname,original_path);
#endif
	strcat(fname,ROM_PATH_PREFIX);
	fname_len=strlen(fname);

	switch(type) {
	case 0:
		strcat(fname,"/spectrum.rom.gz");
		fichero=gzopen(fname,"rb");
		size=16384;
		break;
	case 1:
		strcat(fname,"/128.rom.gz");
		fichero=gzopen(fname,"rb");
		size=32768;
		break;
	case 2:
		strcat(fname,"/plus2.rom.gz");
		fichero=gzopen(fname,"rb");
		size=32768;
		break;
	case 3:
		strcat(fname,"/plus3.rom.gz");
		fichero=gzopen(fname,"rb");
		size=65536;
		break;
	default:
		fichero=NULL;
		size=0;
	}
  
	if(fichero==NULL) {
		printf("Can't open ROM file\n");
		exit(1);
	}
	gzread(fichero,cmpt.memoria,size);
	gzclose(fichero);

#if 0
	if (type==1)
	{
		unsigned char *m=cmpt.memoria;
		m[0x1F47]=0xd1;
		m[0x1F56]=0xd5;
//		m[0x1F3F]=0x51;
	}
#endif
  
	fname[fname_len]=0;
	strcat(fname,"/if1-v2.rom.gz");
	fichero=gzopen(fname,"rb"); // load Interface1 ROM
	if(fichero==NULL) {
		printf("Can't open Interface1 ROM file\n");
		exit(1);
	}
	
	gzread(fichero,cmpt.shadowrom,8192);
  	gzclose(fichero);
	free(fname);
}


static void init_sdl(void) {
  Uint32 flags=SDL_INIT_VIDEO;
#ifndef NOSOUND
  flags|=SDL_INIT_AUDIO;
#endif
#ifndef AUTO_EVENTS
  flags|=SDL_INIT_JOYSTICK;
#endif
  int retorno=SDL_Init(flags);
  if(retorno!=0) {
    printf("Can't initialize SDL library. Exiting\n");
    exit(1);
  }
#if defined(DREAMCAST) && defined(DEBUG_ZX4ALL)
  SDL_DC_ShowAskHz(SDL_FALSE);
#endif
}


static void init_screen(void) {
  // screen initialization
  Uint32 flags=SDL_HWSURFACE | SDL_DOUBLEBUF; // |SDL_HWPALETTE;
#if defined(DREAMCAST) || defined(FULLSCREEN)
  flags|=SDL_FULLSCREEN;
#endif

  screen=TV_Init(320,240,16,flags);
  if(screen==NULL) {
    printf("Can't assign SDL Surface. Exiting\n");
    exit(1);
  }

#ifndef DREAMCAST
  if(SDL_MUSTLOCK(screen)) {
    cmpt.mustlock=1;
    SDL_LockSurface(screen);
  } else
    cmpt.mustlock=0;
#endif
}

static void init_sound(void)
{
	int i;

	cmpt.channels=DEFAULT_SOUND_CHANNELS;
	cmpt.freq=DEFAULT_SOUND_FREQ;
#ifndef NOSOUND
	if(sound_init(DEFAULT_SOUND_FREQ,DEFAULT_SOUND_BUFLEN)!=0) {
#ifndef DREAMCAST
#ifndef WIN32
	  sleep(2);
#endif
	  if (sound_init(DEFAULT_SOUND_FREQ,DEFAULT_SOUND_BUFLEN)!=0)
#endif
          {
	  	printf("Can't initialize sound. Exiting. (Try with 'nosound')\n");
	  	exit(1);
	  }
	}
#else
	// NO SOUND ...
	cmpt.sign=0;
	cmpt.format=0;
	cmpt.channels=1;
	cmpt.freq=48000;
	cmpt.buffer_len=4800; // will wait 1/10 second

#endif
	for(i=0;i<NUM_SNDBUF;i++) {
		sound[i]=(unsigned char *)calloc(cmpt.buffer_len+(1024*64),cmpt.channels*2);
	}
	if(cmpt.format)
		cmpt.increment=2*cmpt.channels;
	else
		cmpt.increment=1*cmpt.channels;

	cmpt.tst_sample=3500000/cmpt.freq;
	set_volume(70);
	sound_setup();
}

#ifdef EXECUTE_FSL
#ifdef DREAMCAST
#include<arch/exec.h>
void exec_fsl(void)
{
	FILE *f=fopen(EXECUTE_FSL,"rb");
	if (f)
	{
		void *mem;
		long len;
		fseek(f,0,SEEK_END);
		len=ftell(f);
		fseek(f,0,SEEK_SET);
		mem=malloc(len);
		if (mem)
		{
			if (fread(mem,1,len,f)==len)
				arch_exec(mem,len);
			free(mem);
		}
		fclose(f);
	}
}
#else

#include <unistd.h>

void exec_fsl(void)
{
	char *fname=(char *)calloc(1024,1);
	strncpy(fname,EXECUTE_FSL,1023);
	char const *args[] = { fname, NULL };
	chdir("../");
	execv(EXECUTE_FSL,args);
	free(fname);
}
#endif
#else
#define exec_fsl()
#endif

void end_system() {
	sound_close();
	if(cmpt.tap_file!=NULL)
		gzclose(cmpt.tap_file);
#ifndef DREAMCAST
	if(cmpt.mustlock)
		SDL_UnlockSurface(screen);
#endif
	TV_Quit();
//	SDL_Quit();
	exec_fsl();
}

void zx4all_setup_sdl(void)
{
	static int yet=0;
#if !defined(DREAMCAST) && !defined(DEBUG_ZX4ALL)
	atexit(end_system);
#endif
#ifndef AUTO_EVENTS
	SDL_JoystickEventState(SDL_ENABLE);
	SDL_JoystickOpen(0);
	SDL_JoystickOpen(1);
#ifdef DREAMCAST
	SDL_DC_EmulateKeyboard(SDL_TRUE);
#endif
#else
#ifdef DREAMCAST
	SDL_EventState(SDL_JOYAXISMOTION,SDL_IGNORE);
	SDL_EventState(SDL_JOYBUTTONDOWN,SDL_IGNORE);
	SDL_EventState(SDL_JOYBUTTONUP,SDL_IGNORE);
	SDL_EventState(SDL_JOYHATMOTION,SDL_IGNORE);
	SDL_EventState(SDL_JOYBALLMOTION,SDL_IGNORE);
#endif
#endif
#ifdef DREAMCAST
#ifndef NO_MENU
	SDL_EventState(SDL_ACTIVEEVENT,SDL_IGNORE);
	SDL_EventState(SDL_MOUSEMOTION,SDL_IGNORE);
	SDL_EventState(SDL_MOUSEBUTTONDOWN,SDL_IGNORE);
	SDL_EventState(SDL_MOUSEBUTTONUP,SDL_IGNORE);
#endif
	SDL_EventState(SDL_QUIT,SDL_IGNORE);
	SDL_EventState(SDL_SYSWMEVENT,SDL_IGNORE);
	SDL_EventState(SDL_VIDEORESIZE,SDL_IGNORE);
	SDL_EventState(SDL_USEREVENT,SDL_IGNORE);
	SDL_ShowCursor(SDL_DISABLE);
#else
	SDL_WM_SetCaption(NAME_CAPTION,NAME_CAPTION);
	SDL_WM_SetIcon(SDL_LoadBMP_RW(SDL_RWFromMem((void*)win_icon, WIN_ICON_LEN),0),NULL);
#ifdef NO_MENU
	SDL_ShowCursor(SDL_DISABLE);
#else
	SDL_ShowCursor(SDL_ENABLE);
#endif
#endif
	if (!yet)
	{
		vkbd_init();
		vtape_init();
		yet=1;
	}
}

static void go_system(void);

#if defined(DREAMCAST) && !defined(DEBUG_ZX4ALL)
static void _emergency_reset_(void)
{
	ResetComputer();
	clean_screen();
	getChanges();
	go_system();
	end_system();
}

static uint32 zx4all_dc_args[4]={ 0, 0, 0, 0};
static void zx4all_dreamcast_handler(irq_t source, irq_context_t *context)
{
	irq_create_context(context,context->r[15], (uint32)&_emergency_reset_, (uint32 *)&zx4all_dc_args[0],0);
}

static void init_dreamcast_handlers(void)
{
    irq_set_handler(EXC_USER_BREAK_PRE,&zx4all_dreamcast_handler);
    irq_set_handler(EXC_INSTR_ADDRESS,&zx4all_dreamcast_handler);
    irq_set_handler(EXC_ILLEGAL_INSTR,&zx4all_dreamcast_handler);
    irq_set_handler(EXC_SLOT_ILLEGAL_INSTR,&zx4all_dreamcast_handler);
    irq_set_handler(EXC_GENERAL_FPU,&zx4all_dreamcast_handler);
    irq_set_handler(EXC_SLOT_FPU,&zx4all_dreamcast_handler);
    irq_set_handler(EXC_DATA_ADDRESS_WRITE,&zx4all_dreamcast_handler);
    irq_set_handler(EXC_DTLB_MISS_WRITE,&zx4all_dreamcast_handler);
    irq_set_handler(EXC_OFFSET_000,&zx4all_dreamcast_handler);
    irq_set_handler(EXC_OFFSET_100,&zx4all_dreamcast_handler);
    irq_set_handler(EXC_OFFSET_400,&zx4all_dreamcast_handler);
    irq_set_handler(EXC_OFFSET_600,&zx4all_dreamcast_handler);
    irq_set_handler(EXC_FPU,&zx4all_dreamcast_handler);
    irq_set_handler(EXC_TRAPA,&zx4all_dreamcast_handler);
    irq_set_handler(EXC_RESET_UDI,&zx4all_dreamcast_handler);
    irq_set_handler(EXC_UNHANDLED_EXC,&zx4all_dreamcast_handler);
}
#else
#define init_dreamcast_handlers()
#endif

int main(int argc,char *argv[]) {

	int bucle;

#ifndef DREAMCAST
	getcwd(original_path,1024);
	strcat(original_path,"/");
#else
	puts("MAIN!!!!");
#endif

	zx4all_image_file[0]=0;

	init_sdl();
	init_screen();
	init_sound();
	zx4all_setup_sdl();

	init_text(1);
#ifdef MACOSX
	chdir(SNAP_PATH_PREFIX);
#endif
	run_mainMenu();
	quit_text();
//	vkbd_init();
	zx4all_pause_music();
	zx4all_resume_sound();

	computer_init();
	register_screen(screen);
	cmpt.interr=0;

	cmpt.screenbuffer=(unsigned char*)cmpt.screen->pixels;
	cmpt.screen_width=cmpt.screen->w;

	// assign initial values for PATH variables
/*
	strcpy(path_snaps,SNAP_PATH_PREFIX "/");
	strcpy(path_taps,TAP_PATH_PREFIX "/");
	strcpy(path_mdrs,MDR_PATH_PREFIX "/");
*/
	cmpt.current_tap[0]=0;

	// assign random values to the memory before start execution

	for(bucle=0;bucle<196608;bucle++)
		cmpt.memoria[bucle]=(unsigned char) rand();

	cmpt.tap_file=NULL;
	
	ResetComputer();
	_z80_init();
	clean_screen();
	microdrive_init();
	getChanges();
#ifdef AUTO_TAPE
	tape_reset(AUTO_TAPE);
#else
	if (zx4all_tape_file[0])
		tape_reset((char *)&zx4all_tape_file[0]);
#endif
#ifdef AUTO_SNAPSHOT
	load_z80(AUTO_SNAPSHOT);
#else
	if (zx4all_image_file[0])
	{
		load_z80((char *)&zx4all_image_file[0]);
		zx4all_image_file[0]=0;
		cmpt.pause=1;
	}
#endif

#ifndef DREAMCAST
	SDL_ShowCursor(SDL_DISABLE);
#endif
	init_dreamcast_handlers();

	go_system();

#ifdef DREAMCAST
	end_system();
#endif
	return 0;
}

static void go_system(void)
{
	int bucle,tstados;
	unsigned short PC;

	SDL_Delay(333);
	zx4all_clear_events();
	zx4all_remap_keys();
	while(!salir) {
#ifndef DEBUG_Z80
		PC=_z80_emulate(224);
#else
		if (DEBUG_START==0 && DEBUG_ACTUAL_TIMESLICE==0)
			puts("--> DEBUG START!!!"); fflush(stdout);
#ifdef DEBUG_PRESTART
		if (DEBUG_ACTUAL_TIMESLICE<DEBUG_PRESTART)
			PC=_z80_emulate(224);
		else
#endif
		{
			unsigned actual=0;
#ifdef DEBUG_Z80_CYCLING
			while(actual<224)
#else
			for(actual=0;actual<34;actual++)
#endif
			{
#ifndef DEBUG_Z80_STATS
				dbg("/-");
				if (DEBUG_AHORA)
					debugZ80(0);
#endif
				PC=_z80_emulate(1);
#ifdef DEBUG_Z80_STATS
				debugZ80_GetStatitics();
#else
				dbg(" -/");
#endif
#ifdef DEBUG_Z80_CYCLING
				actual+=_z80_get_last_cycles();
#endif
			}
		}
#endif
#ifdef DEBUG_ZX4ALL
		DEBUG_ACTUAL_TIMESLICE++;
//if (!(DEBUG_ACTUAL_TIMESLICE&0xFF)) { printf("%i\n",DEBUG_ACTUAL_TIMESLICE);fflush(stdout);}
#ifndef DEBUG_Z80_STATS
		if (DEBUG_ACTUAL_TIMESLICE>DEBUG_START && !DEBUG_AHORA)
		{
			puts("--> DEBUG START!!!"); fflush(stdout);
			DEBUG_AHORA=1;
		}
		if (DEBUG_ACTUAL_TIMESLICE>DEBUG_END)
		{
			puts("--> DEBUG END!!!"); fflush(stdout);
#ifdef DREAMCAST
			SDL_Delay(500);
			exit(0);
			malloc(20*1024*1024);
			arch_reboot();
#else
			SDL_Delay(500);
			exit(0);
#endif
		}
#endif
#ifdef DEBUG_Z80_CYCLING
		dbgf("ts=%i\n",((unsigned)DEBUG_ACTUAL_TIMESLICE));
#endif
#endif
	
		/* if PC is 0x0556, a call to LD_BYTES has been made, so if
		FAST_LOAD is 1, we must load the block in memory and return */
/*
		if((!cmpt.mdr_paged)&&(PC==0x0556) && (cmpt.tape_fast_load==1)&&(cmpt.tape_file_type==TAP_TAP)) {
			if(cmpt.tap_file!=NULL)
				fastload_block(cmpt.tap_file);
		}
*/
		
		/* if PC is 0x04C2, a call to SA_BYTES has been made, so if
		we want to save to the TAP file, we do it */
/*		
		if((!cmpt.mdr_paged)&&(PC==0x04C2)&&(cmpt.tape_write==1)&&(cmpt.tape_file_type==TAP_TAP)) {
			if(cmpt.tap_file!=NULL)
				save_file(cmpt.tap_file);
		}
*/
			/* if cmpt.mdr_paged is 2, we have executed the RET at 0x0700, so
		we have to return to the classic ROM */
/*		
		if(cmpt.mdr_paged==2)
			cmpt.mdr_paged=0;
*/
		
		/* if PC is 0x0008 or 0x1708, and we have a microdrive, we have to page
		the Interface 1 ROM */
/*		
		if(((PC==0x0008)||(PC==0x1708))&&(cmpt.mdr_active))
			cmpt.mdr_paged = 1;
*/
		
		/* if PC is 0x0700 and we have a microdrive, we have to unpage
		the Interface 1 ROM after the last instruction */
/*		
		if((PC==0x0700)&&(cmpt.mdr_active))
			cmpt.mdr_paged = 2;
*/

#ifndef DEBUG_Z80
		tstados=_z80_get_last_cycles();
/*
		if(!tstados)
			tstados=4; // if we are in halt, we execute virtual NOPs
		else
		if(tstados<0) {
			printf("Error ciclado %i\n",tstados);
			exit(1);
		}
*/
		if (tstados<=0)
			tstados=4;
#else
		tstados=224;
#endif
		emulate(tstados); // execute the whole hardware emulation
		if(cmpt.interr==1) {
			register unsigned char be=bus_empty();
#if defined(DEBUG_Z80) && !defined(DEBUG_Z80_STATS)
			dbgf("INT %.2X\n",be);
#endif
			_z80_interrupt(be);
			cmpt.interr=0;
		}
	}
}

