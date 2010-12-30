#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>
#include <signal.h>
//#include <sys/wait.h>

#include "zx4all.h"
#include "computer.h"
#include "menus.h"
#include "characters.h"
#include "sound.h"
#include "z80intrf.h"
#include "tape.h"
#include "microdrive.h"
#include "snapshot.h"
#include "tape.h"
#include "debug.h"
#include "tvfilter/tvfilter.h"

#include "menu/menu.h"

#include "vkbd/vkbd.h"
#include "vtape/vtape.h"

#define COMP_INIT_LINE 0
#define COMP_NEXT_LINE 320
#define COMP_FIRST_LINE 20
#define COMP_LAST_LINE 240
#define COMP_FIRST_PIXEL 8
#define COMP_LAST_PIXEL 168

#define PALN0 0
#define PALN1 192
#define PALB0 0
#define PALB1 255

extern int emulating;
extern char zx4all_image_file[];
extern char zx4all_tape_file[];

static unsigned screen_lag = 0;

#ifndef DREAMCAST
static void *save_pixels=NULL;
static SDL_Surface *save_screen=NULL;
#endif

/* Returns the bus value when reading a port without a periferial */

unsigned char bus_empty () {

	if (cmpt.mode128k != 3)
		return (cmpt.bus_value);
	else
		return (255);	// +2A and +3 returns always 255
}

/* calls all the routines that emulates the computer, runing them for 'tstados'
   tstates */

void emulate (int tstados) {
	int est=1,bcs;
	extern int closing_sound;
//dbgf("emulate %i\n",tstados);
/*
	if((procesador.I>=0x40)&&(procesador.I<=0x7F))
		cmpt.screen_snow=1;
	else
		cmpt.screen_snow=0;
*/
	show_screen (tstados);
	play_ay (tstados);
	play_sound (tstados);
	tape_read (tstados);
#ifndef DEBUG_ZX4ALL
	bcs=closing_sound;
	while(cmpt.tape_fast_load && (cmpt.tape_current_mode == TAP_DATA || cmpt.tape_current_mode == TAP_GUIDE || cmpt.tape_current_mode == TAP_PAUSE || /* cmpt.tape_current_mode == TAP_TRASH  || */ cmpt.tape_current_mode == TAP_PAUSE2 || cmpt.tape_current_mode == TAP_PAUSE3 || cmpt.tape_current_mode == TZX_PURE_TONE  || cmpt.tape_current_mode == TZX_SEQ_PULSES )&& !cmpt.pause && est<0x100)
	{
		int t;
		closing_sound=1;
		_z80_emulate(224);
		t=_z80_get_last_cycles();
		if (t<0) t=4;
		tape_read (t);
		if(!(est&0xFF))
			_z80_interrupt(bus_empty());
		est++;
		reset_frameskip();
#ifdef DREAMCAST
		if (SDL_PollEvent(NULL))
			break;
#endif
	};
	closing_sound=bcs;
#endif
	vtape_pos=getpos_permil_tape();
	microdrive_emulate(tstados);
	if (!cmpt.pause) {
		if (cmpt.tape_readed)
			cmpt.sound_bit = 1;
		else
			cmpt.sound_bit = 0;	// if not paused, asign SOUND_BIT the value of tape
	}
}

void computer_init () {

	int bucle;

	cmpt.bus_counter = 0;
	cmpt.port254 = 0;
	cmpt.issue = 3;
	cmpt.mode128k = 1;//0;
	cmpt.joystick = 1;//0;

	cmpt.tape_readed = 0;
	cmpt.pause = 1;	// tape stop
	cmpt.tape_fast_load = 1;	// fast load by default
	cmpt.tape_current_mode = TAP_TRASH;
	cmpt.tap_file = NULL;

	cmpt.other_ret = 0;

	cmpt.s8 = cmpt.s9 = cmpt.s10 = cmpt.s11 =
		cmpt.s12 = cmpt.s13 = cmpt.s14 =
		cmpt.s15 = 0xFF;

	cmpt.js = 0x00;

	for (bucle = 0; bucle < 16; bucle++)
		cmpt.ay_registers[bucle] = 0;
	cmpt.ay_emul = (unsigned)-1; //0;
	cmpt.aych_a = 0;
	cmpt.aych_b = 0;
	cmpt.aych_c = 0;
	cmpt.aych_n = 0;
	cmpt.aych_envel = 0;
	cmpt.vol_a = 0;
	cmpt.vol_b = 0;
	cmpt.vol_c = 0;
	cmpt.tst_ay = 0;
	cmpt.tst_ay2 = 0;

	cmpt.ayval_a = 0;
	cmpt.ayval_b = 0;
	cmpt.ayval_c = 0;
	cmpt.ayval_n = 0;
	cmpt.ay_envel_value = 0;
	cmpt.ay_envel_way = 0;
	
	cmpt.tape_loop_counter = 0;
}


/* Registers the screen surface where the Spectrum will put the picture,
prepares the palette and creates two arrays (translate and translate2)
that gives the memory address for each scan */

static Uint16 real_buffer[65536*8];
static void *buffers[65536];
static Uint16 colores[16];

static __inline__ void pon(unsigned short ink, unsigned short paper, unsigned char octet, unsigned short *buf)
{
	register unsigned bucle;
	register unsigned char mask = 0x80;
	for(bucle = 0; bucle < 8; bucle++)
	{
		register unsigned short valor = (octet & mask) ? ink : paper;
		*buf++=valor;
		mask = ((mask >> 1) & 0x7F);
	}
}

static void pon_todo(void)
{
	unsigned i,p,o;
	for(i=0;i<65536;i++)
		buffers[i]=(void *)&real_buffer[i<<3];
	for(i=0;i<8;i++)
		for(p=0;p<8;p++)
			for(o=0;o<256;o++)
			{
				unsigned short *buf=(unsigned short *)buffers[(i<<8)|(p<<11)|o];
				pon(colores[i],colores[p],o,buf);
			}
	for(i=0;i<8;i++)
		for(p=0;p<8;p++)
			for(o=0;o<256;o++)
			{
				unsigned short *buf=(unsigned short *)buffers[(1<<14)|(i<<8)|(p<<11)|o];
				pon(colores[i+8],colores[p+8],o,buf);
			}
	for(i=0;i<8;i++)
		for(p=0;p<8;p++)
			for(o=0;o<256;o++)
			{
				unsigned short *buf=(unsigned short *)buffers[(1<<15)|(i<<8)|(p<<11)|o];
				pon(colores[p],colores[i],o,buf);
			}
	for(i=0;i<8;i++)
		for(p=0;p<8;p++)
			for(o=0;o<256;o++)
			{
				unsigned short *buf=(unsigned short *)buffers[(1<<15)|(1<<14)|(i<<8)|(p<<11)|o];
				pon(colores[p+8],colores[i+8],o,buf);
			}
}

void clean_screen(void)
{
//	SDL_FillRect();
}

void register_screen (SDL_Surface * pantalla) {

	int bucle, bucle2, bucle3, bucle4, bucle5;

#ifndef DREAMCAST
	// we prepare the scanline transform arrays
	save_screen=pantalla;
	save_pixels=pantalla->pixels;
#endif

	bucle5 = 0;
	for (bucle = 0; bucle < 3; bucle++)
		for (bucle2 = 0; bucle2 < 8; bucle2++)
			for (bucle3 = 0; bucle3 < 8; bucle3++)
				for (bucle4 = 0; bucle4 < 32; bucle4++) {
					cmpt.translate[bucle5] =
						147456 + bucle * 2048 +
						bucle2 * 32 + bucle3 * 256 +
						bucle4;
					cmpt.translate2[bucle5] =
						153600 + bucle * 256 +
						bucle2 * 32 + bucle4;
					bucle5++;
				}
	cmpt.tstados_counter = 0;

	cmpt.screen = pantalla;

	colores[0] = SDL_MapRGB(cmpt.screen->format, PALN0, PALN0, PALN0);
	colores[1] = SDL_MapRGB(cmpt.screen->format, PALN0, PALN0, PALN1);
	colores[2] = SDL_MapRGB(cmpt.screen->format, PALN1, PALN0, PALN0);
	colores[3] = SDL_MapRGB(cmpt.screen->format, PALN1, PALN0, PALN1);
	colores[4] = SDL_MapRGB(cmpt.screen->format, PALN0, PALN1, PALN0);
	colores[5] = SDL_MapRGB(cmpt.screen->format, PALN0, PALN1, PALN1);
	colores[6] = SDL_MapRGB(cmpt.screen->format, PALN1, PALN1, PALN0);
	colores[7] = SDL_MapRGB(cmpt.screen->format, PALN1, PALN1, PALN1);
	colores[8] = SDL_MapRGB(cmpt.screen->format, PALB0, PALB0, PALB0);
	colores[9] = SDL_MapRGB(cmpt.screen->format, PALB0, PALB0, PALB1);
	colores[10] = SDL_MapRGB(cmpt.screen->format, PALB1, PALB0, PALB0);
	colores[11] = SDL_MapRGB(cmpt.screen->format, PALB1, PALB0, PALB1);
	colores[12] = SDL_MapRGB(cmpt.screen->format, PALB0, PALB1, PALB0);
	colores[13] = SDL_MapRGB(cmpt.screen->format, PALB0, PALB1, PALB1);
	colores[14] = SDL_MapRGB(cmpt.screen->format, PALB1, PALB1, PALB0);
	colores[15] = SDL_MapRGB(cmpt.screen->format, PALB1, PALB1, PALB1);

	pon_todo();

	cmpt.border = 0;
	cmpt.currline = 0;
	cmpt.currpix = 0;
	cmpt.flash = 0;

	cmpt.pixel = (void *)(((unsigned)cmpt.screen->pixels) + COMP_INIT_LINE);
	screen_lag = cmpt.screen->pitch - (cmpt.screen->w*2);
	cmpt.interr = 0;

	cmpt.p_translt = cmpt.translate;
	cmpt.p_translt2 = cmpt.translate2;

	cmpt.contador_flash = 0;
	cmpt.readed = 0;

	cmpt.tstados_counter_sound = 0;
	cmpt.current_buffer = sound[0];
	cmpt.num_buff = 0;	// first buffer
	cmpt.sound_cuantity = 0;
	cmpt.sound_current_value = 0;
	cmpt.pixancho = 447-8;
	cmpt.pixalto = 311-1;	// values for 48K mode
}

void set_memory_pointers () {
#ifdef DEBUG_MEMORY
	dbg("set_memory_pointers()");
#endif
	unsigned char *bk_block0=cmpt.block0;
	unsigned char *bk_block1=cmpt.block1;
	unsigned char *bk_block2=cmpt.block2;
	unsigned char *bk_block3=cmpt.block3;

	static unsigned int rom, ram;

	// assign the offset for video page

	if (cmpt.mport1 & 0x08)
		cmpt.video_offset = 32768;	// page 7
	else
		cmpt.video_offset = 0;	// page 5

	// assign ROMs and, if in special mode, RAM for the whole blocks

	if ((cmpt.mode128k == 3)) {
		if (cmpt.mport2 & 0x01) {		// +2A/+3 special mode
			ram = (unsigned int) (cmpt.mport1 & 0x06);	// bits 1&2
			switch (ram) {
			case 0:
				cmpt.block0 = cmpt.memoria + 65536;
				cmpt.block1 = cmpt.memoria + 65536;
				cmpt.block2 = cmpt.memoria + 65536;
				cmpt.block3 = cmpt.memoria + 65536;
				break;
			case 2:
				cmpt.block0 = cmpt.memoria + 131072;
				cmpt.block1 = cmpt.memoria + 131072;
				cmpt.block2 = cmpt.memoria + 131072;
				cmpt.block3 = cmpt.memoria + 131072;
				break;
			case 4:
				cmpt.block0 = cmpt.memoria + 131072;
				cmpt.block1 = cmpt.memoria + 131072;
				cmpt.block2 = cmpt.memoria + 131072;
				cmpt.block3 = cmpt.memoria + 65536;
				break;
			case 6:
				cmpt.block0 = cmpt.memoria + 131072;
				cmpt.block1 = cmpt.memoria + 163840;
				cmpt.block2 = cmpt.memoria + 131072;
				cmpt.block3 = cmpt.memoria + 65536;
				break;
			}
			return;
		} else {		// ROMs for +2A/+3 normal mode
			rom = 0;
			if (cmpt.mport1 & 0x10)
				rom++;
			if (cmpt.mport2 & 0x04)
				rom += 2;
			// assign the first block pointer to the right block bank
			cmpt.block0 = cmpt.memoria + (16384 * rom);
		}
	} else {			// ROMs for 128K/+2 mode
		if (cmpt.mport1 & 0x10)
			cmpt.block0 = cmpt.memoria + 16384;
		else
			cmpt.block0 = cmpt.memoria;
	}

	// RAMs for 128K/+2 mode, and +2A/+3 in normal mode

	cmpt.block1 = cmpt.memoria + 131072;	// page 5 minus 16384
	cmpt.block2 = cmpt.memoria + 65536;	// page 2 minus 32768

	ram = 1 + ((unsigned int) (cmpt.mport1 & 0x07));	// RAM page for block3 plus 1
	cmpt.block3 = cmpt.memoria + (16384 * ram);	// page n minus 49152
	if ( (bk_block0!=cmpt.block0) || (bk_block1!=cmpt.block1) ||
	     (bk_block2!=cmpt.block2) || (bk_block3!=cmpt.block3) )
		_z80_resetmapping_fetch();
}

Uint32 zx4all_numframes=0;

#ifdef DEBUG_FRAMERATE

double zx4all_framerate=0.0;
static Uint32 zx4all_total_skipped=0;

void zx4all_update_time(void)
{
	zx4all_numframes=0;
	zx4all_framerate=0.0;
	zx4all_total_skipped=0;
}

void zx4all_calculate_framerate(int bdraw)
{
	static Uint32 start_time=0;
	static Uint32 start_numframes=0;

	zx4all_numframes++;
	if (!bdraw)
		zx4all_total_skipped++;
	if (!start_time)
	{
		start_time=SDL_GetTicks();
		start_numframes=zx4all_numframes;
	}
	else
	{
		Uint32 now=SDL_GetTicks();
		if (now-start_time>=1000)
		{
			if (zx4all_framerate!=0.0)
				zx4all_framerate=(zx4all_framerate+((double)(zx4all_numframes-start_numframes)))/2.0;
			else
				zx4all_framerate=(double)(zx4all_numframes-start_numframes);
			start_time=now;
			start_numframes=zx4all_numframes;
		}
	}
	if (!(zx4all_numframes&127))
		printf("---- framerate = %.4f (%.2f%% skip)\n",zx4all_framerate,
				((double)(100.0*((double)zx4all_total_skipped))/(double)zx4all_numframes));
}
#else
#define zx4all_calculate_framerate(BDRAW) zx4all_numframes++;
#endif


/* PAINT_PIXELS paints one byte with INK colour for 1 bits and PAPER colour
for 0 bits, and increment acordingly the pointer PIXEL */

static __inline__ void paint_pixels (unsigned short col) {
	register unsigned short *buf=(unsigned short *)buffers[col];
	register unsigned short *dest=(unsigned short *)cmpt.pixel;
	*dest++=*buf++;
	*dest++=*buf++;
	*dest++=*buf++;
	*dest++=*buf++;
	*dest++=*buf++;
	*dest++=*buf++;
	*dest++=*buf++;
	*dest++=*buf++;
	cmpt.pixel=(void *)dest;
}

int sound_frameskip=0;
int sound_delayed=0;
static int skipped=0;
static Uint32 autoframeskip_next=0;
#define AUTOFRAME_50 (1000 / 50)
#define AUTOFRAME_MIN (5)

void reset_frameskip(void)
{
	autoframeskip_next=SDL_GetTicks()+AUTOFRAME_50;
	skipped=sound_delayed=sound_frameskip=0;
#ifdef DEBUG_FRAMERATE
	zx4all_update_time();
#endif
}

static int autoframeskip(void)
{
	static int anteriorskip=0;
	Uint32 now=SDL_GetTicks();
	int ret=0;
	if (!sound_delayed)
	{
	if (now>autoframeskip_next) // - +AUTOFRAME_MIN)
	{
		if (now<autoframeskip_next+AUTOFRAME_50)
			ret=1;
		else
		if (now<autoframeskip_next+(AUTOFRAME_50*2))
		        ret=2;
		else
		if (now<autoframeskip_next+(AUTOFRAME_50*3))
		        ret=3;
		else
		        ret=4;
		anteriorskip+=ret;
		if (anteriorskip>5)
		{
			autoframeskip_next=now;
			anteriorskip=2;
			ret=2;
		}
//		ret+=sound_frameskip;
	}
	else
	{
		if (!anteriorskip)
		{
			int diff=autoframeskip_next-now;
			if (diff>AUTOFRAME_MIN)
				        SDL_Delay(diff-AUTOFRAME_MIN);
		}
		else
		if (!sound_frameskip)
			anteriorskip=0;
	}
	}
	autoframeskip_next+=AUTOFRAME_50;
	sound_frameskip=0;
	return ret;
}


static void real_draw_screen(void)
{
#ifndef AUTO_EVENTS
	int bdraw=1;

#ifndef NO_MENU
	if (mainMenu_frameskip>=0)
	{
		if (skipped>0)
			bdraw=0;
		else
			skipped=mainMenu_frameskip;
		skipped--;
	}
	else
#endif
	{
		skipped=autoframeskip();
		bdraw=(skipped==0);
	}

	if (bdraw)
	{
		if (vkbd_mode)
			vkbd_key=vkbd_process();
		else if (vtape_mode)
			switch(vtape_process())
			{
				case VTAPE_FORWARD:
					break;
				case VTAPE_PLAY:
					cmpt.pause = 0; break;
				case VTAPE_REWIND:
					rewind_tape(1); break;
				case VTAPE_SAVE:
					break;
				case VTAPE_STOP:
				case VTAPE_PAUSE:
					cmpt.pause = 1; break;
			}


		TV_Flip (cmpt.screen);
	}
	zx4all_calculate_framerate(bdraw);
#else
	TV_Flip (cmpt.screen);
#endif
}


/* Paints the spectrum screen during the TSTADOS tstates that the Z80 used
to execute last instruction */

void show_screen (int tstados) {
#ifdef DEBUG_TSTADOS 
	dbgf("show_screen(%i) counter=%i\n",tstados,cmpt.tstados_counter);
#endif
#ifndef DREAMCAST
	if (save_screen != screen || save_pixels != screen->pixels)
		register_screen(screen);
#endif
	cmpt.tstados_counter += tstados;
	while (cmpt.tstados_counter > 3) {
		cmpt.tstados_counter -= 4;
		if ((cmpt.currpix >= 16) && (cmpt.currpix < 336)
			&& (cmpt.currline >= 40) && (cmpt.currline < 280)
			&& (skipped<=0) )
		{

			if ((cmpt.currline < 64) || (cmpt.currline > 255)
				|| (cmpt.currpix < 48) || (cmpt.currpix > 303))
			{
				// is border
				paint_pixels (0xFF|(cmpt.border<<8));	// paint 8 pixels with BORDER color

				cmpt.bus_value = 255;
			}
			else
			{
				// is user area. We search for ink and paper colours
				unsigned short temporal = cmpt.memoria[(*cmpt.p_translt2) + cmpt.video_offset];	// attributes
				cmpt.bus_value = temporal;
				temporal&=cmpt.flash;
				temporal<<=8;
/*
 SNOW !!!
				if(cmpt.screen_snow) {
					temporal |= cmpt.memoria[(((*cmpt.p_translt) + (cmpt.video_offset))&0xFFFFFF00)+(procesador.R+procesador.R2)];	// data with snow
					cmpt.screen_snow=0; // no more snow for now
				} else
*/
					temporal |= cmpt.memoria[(*cmpt.p_translt) + cmpt.video_offset];	// data
			
				cmpt.p_translt++;
				cmpt.p_translt2++;
				paint_pixels(temporal);
			}
		}
		cmpt.currpix += 8;
		if (cmpt.currpix > cmpt.pixancho) {
			cmpt.currpix = 0;
			cmpt.currline++;
			if (cmpt.currline > 40)	// COMP_FIRST_LINE)
				cmpt.pixel = (void *)((unsigned)cmpt.pixel + screen_lag);
			if (cmpt.currline > cmpt.pixalto) {
				real_draw_screen();
					
				cmpt.currline = 0;
#ifdef DEBUG_TSTADOS
				dbg("interr 1");
#endif
				cmpt.interr = 1;
				read_keyboard ();	// read the physical keyboard
				cmpt.pixel = ((void *) (cmpt.screen->pixels));
				screen_lag = cmpt.screen->pitch - (cmpt.screen->w*2);
				cmpt.p_translt = cmpt.translate;
				cmpt.p_translt2 = cmpt.translate2;
				cmpt.contador_flash++;
				if (cmpt.contador_flash == 16) {
					cmpt.flash = (cmpt.flash^0x80)|0x7F;
					cmpt.contador_flash = 0;
				}
			}
		}
	}
}


static int zx4all_fasting=0;
extern int closing_sound;

void goFast(SDL_bool b)
{
	static int back_type=0;
	static int back_fskip=0;
	if (zx4all_fasting)
	{
		if (!b)
		{
#ifndef NOSOUND
#ifndef NO_MENU
			mainMenu_frameskip=back_fskip;
#endif
			sound_type=back_type;
#endif
			zx4all_fasting=0;
		}
	}
	else
	{
		if (b)
		{
#ifndef NOSOUND
			back_type=sound_type;
#ifndef NO_MENU
			back_fskip=mainMenu_frameskip;
#endif
			sound_type=1;
			closing_sound=1;
#ifndef NO_MENU
			mainMenu_frameskip=260;
#endif
#endif
			zx4all_fasting=1;
		}
	}
}

void zx4all_clear_events(void)
{
	SDL_Event e;
	do{
		SDL_Delay(100);
	}while(SDL_PollEvent (&e));
}

#ifdef DREAMCAST
#include <SDL_dreamcast.h>

void zx4all_back_keys(void)
{
	SDL_DC_MapKey(0,SDL_DC_START,SDLK_RETURN);
	SDL_DC_MapKey(0,SDL_DC_Y,SDLK_LSHIFT);
	SDL_DC_MapKey(0,SDL_DC_L,SDLK_TAB);
	SDL_DC_MapKey(0,SDL_DC_R,SDLK_BACKSPACE);
	zx4all_clear_events();
}
void zx4all_remap_keys(void)
{
	SDL_DC_MapKey(0,SDL_DC_START,SDLK_ESCAPE);
	SDL_DC_MapKey(0,SDL_DC_Y,SDLK_F10);
	SDL_DC_MapKey(0,SDL_DC_L,SDLK_F11);
	SDL_DC_MapKey(0,SDL_DC_R,SDLK_F12);
	zx4all_clear_events();
}
#endif

void goMenu(void)
{
#ifdef NO_MENU
	salir=1;
#else
#ifndef DREAMCAST
	SDL_ShowCursor(SDL_ENABLE);
#endif
	int exitmode;
	emulating=1;
	goFast(SDL_FALSE);
	zx4all_fasting=skipped=0;
	zx4all_back_keys();
#ifdef DEBUG_Z80_STATS
	debugZ80_PrintStatitics();
#endif
#ifdef DEBUG_FRAMESKIP
	printf("---- framerate = %.4f\n",zx4all_framerate);
#endif
	zx4all_pause_sound();
	exitmode=run_mainMenu();
	
	getChanges();
	if (exitmode==2)
	{
		ResetComputer();
		tape_reset((char *)&zx4all_tape_file[0]);
	}
	else
	if (zx4all_tape_file[0])
		tape_select((char *)&zx4all_tape_file[0]);
	if (zx4all_image_file[0])
	{
		load_z80((char *)&zx4all_image_file[0]);
		zx4all_image_file[0]=0;
		cmpt.pause=1;
	}
#ifndef DREAMCAST
	SDL_ShowCursor(SDL_DISABLE);
#endif
	zx4all_resume_sound();
	zx4all_remap_keys();
#endif
	SDL_Delay(333);
	zx4all_clear_events();
	reset_frameskip();
}

// Read the keyboard and stores the flags

void read_keyboard () {
#ifdef AUTO_EVENTS
	SDL_Event evento;
	while(SDL_PollEvent (&evento)) 
		if (evento.type == SDL_QUIT)
		{	TV_Quit(); SDL_Quit(); exit(0); }
	static unsigned cual=0;
	switch(cual)
	{
/*
// VEGA SOLARIS: PULSAR 0
		case 0:
			cmpt.k12 = 1;
			cmpt.s12 &= (cmpt.k12 ^ 255);
			cmpt.js |= cmpt.jk;
			break;
		case 1:
			cmpt.k12 = 1;
			cmpt.s12 |= cmpt.k12;
			cmpt.js &= (cmpt.jk ^ 255);
			break;
		default:
			cmpt.k12 = 0;
*/
/*
// ACE: PULSAR ENTER y 1
		case 0:
		case 6:
//puts("down enter");
			cmpt.k14 = 1;
			cmpt.s14 &= (cmpt.k14 ^ 255);
			cmpt.js |= cmpt.jk;
			break;
		case 1:
		case 7:
//puts("up enter");
			cmpt.k14 = 1;
			cmpt.s14 |= cmpt.k14;
			cmpt.js &= (cmpt.jk ^ 255);
			break;
		case 12:
		case 17:
//puts("down 1");
			cmpt.k11 = 1;
			cmpt.s11 &= (cmpt.k11 ^ 255);
			cmpt.js |= cmpt.jk;
			break;
		case 13:
		case 18:
//puts("up 1");
			cmpt.k11 = 1;
			cmpt.s11 |= cmpt.k11;
			cmpt.js &= (cmpt.jk ^ 255);
			break;
		default:
			cmpt.k14 = 0;
			cmpt.k11 = 0;
*/
/*
// TLL: PULSAR ENTER y 3
		case 0:
//puts("down enter");
			cmpt.k14 = 1;
			cmpt.s14 &= (cmpt.k14 ^ 255);
			cmpt.js |= cmpt.jk;
			break;
		case 1:
//puts("up enter");
			cmpt.k14 = 1;
			cmpt.s14 |= cmpt.k14;
			cmpt.js &= (cmpt.jk ^ 255);
			break;
		case 5:
//puts("down 3");
			cmpt.k11 = 4;
			cmpt.s11 &= (cmpt.k11 ^ 255);
			cmpt.js |= cmpt.jk;
			break;
		case 6:
//puts("up 3");
			cmpt.k11 = 4;
			cmpt.s11 |= cmpt.k11;
			cmpt.js &= (cmpt.jk ^ 255);
			break;
		default:
			cmpt.k14 = 0;
			cmpt.k11 = 0;
*/
/*
// ADASTRA: 2 veces a la tecla 8
		case 175:
		case 185:
//puts("down 8");
			cmpt.k12 = 4;
			cmpt.s12 &= (cmpt.k12 ^ 255);
			cmpt.js |= cmpt.jk;
			break;
		case 176:
		case 186:
//puts("up 8");
			cmpt.k12 = 4;
			cmpt.s12 |= cmpt.k12;
			cmpt.js &= (cmpt.jk ^ 255);
			break;
		default:
			cmpt.k12 = 0;
*/
// HIGHWAY ENCOUNTER: 2 veces a la tecla 7
/*
		case 0:
		case 215:
// puts("down 7");
			cmpt.k12 = 8;
			cmpt.s12 &= (cmpt.k12 ^ 255);
			cmpt.js |= cmpt.jk;
			break;
		case 1:
		case 216:
// puts("up 7");
			cmpt.k12 = 8;
			cmpt.s12 |= cmpt.k12;
			cmpt.js &= (cmpt.jk ^ 255);
			break;
		default:
			cmpt.k12 = 0;
*/
/*
// ALIEN HIGHWAY: PULSAR ENTER dos veces y 5
		case 0:
		case 370:
//puts("down enter");
			cmpt.k14 = 1;
			cmpt.s14 &= (cmpt.k14 ^ 255);
			cmpt.js |= cmpt.jk;
			break;
		case 1:
		case 371:
//puts("up enter");
			cmpt.k14 = 1;
			cmpt.s14 |= cmpt.k14;
			cmpt.js &= (cmpt.jk ^ 255);
			break;
		case 500:
//puts("down 5");
			cmpt.k11 = 16;
			cmpt.s11 &= (cmpt.k11 ^ 255);
			cmpt.js |= cmpt.jk;
			break;
		case 501:
//puts("up 5");
			cmpt.k11 = 16;
			cmpt.s11 |= cmpt.k11;
			cmpt.js &= (cmpt.jk ^ 255);
			break;
		default:
			cmpt.k14 = 0;
			cmpt.k11 = 0;
*/
/*
// ABADIA: PULSAR SPACE y L
		case 100:
//puts("down space");
			cmpt.k15 = 1;
			cmpt.s15 &= (cmpt.k15 ^ 255);
			cmpt.js |= cmpt.jk;
			break;
		case 106:
//puts("up space");
			cmpt.k15 = 1;
			cmpt.s15 |= cmpt.k15;
			cmpt.js &= (cmpt.jk ^ 255);
			break;
		case 200:
//puts("down L");
			cmpt.k14 = 2;
			cmpt.s14 &= (cmpt.k14 ^ 255);
			cmpt.js |= cmpt.jk;
			break;
		case 206:
//puts("up L");
			cmpt.k14 = 2;
			cmpt.s14 |= cmpt.k14;
			cmpt.js &= (cmpt.jk ^ 255);
			break;
		default:
			cmpt.k14 = 0;
			cmpt.k15 = 0;
*/
/*
// JET SET WILLY: Pulsar P y ENTER
		case 0:
//puts("down p");
			cmpt.k13 = 1;
			cmpt.s13 &= (cmpt.k13 ^ 255);
			cmpt.js |= cmpt.jk;
			break;
		case 1:
//puts("up p");
			cmpt.k13 = 1;
			cmpt.s13 |= cmpt.k13;
			cmpt.js &= (cmpt.jk ^ 255);
			break;
		case 2:
//puts("down enter");
			cmpt.k14 = 1;
			cmpt.s14 &= (cmpt.k14 ^ 255);
			cmpt.js |= cmpt.jk;
			break;
		case 20:
//puts("up enter");
			cmpt.k14 = 1;
			cmpt.s14 |= cmpt.k14;
			cmpt.js &= (cmpt.jk ^ 255);
			break;
		default:
			cmpt.k13 = 0;
			cmpt.k14 = 0;
*/

/*
// GRYZOR: Pulsar 0
		case 1:
//puts("down 0");
			cmpt.k12 = 1;
			cmpt.s12 &= (cmpt.k12 ^ 255);
			cmpt.js |= cmpt.jk;
			break;
		case 2:
//puts("up 0");
			cmpt.k12 = 1;
			cmpt.s12 |= cmpt.k12;
			cmpt.js &= (cmpt.jk ^ 255);
			break;
//case 100: exit(0);
		default:
			cmpt.k12 = 0;
*/

/*
// LTK: PULSAR SPACE 
		case 0:
//puts("down space");
			cmpt.k15 = 1;
			cmpt.s15 &= (cmpt.k15 ^ 255);
			cmpt.js |= cmpt.jk;
			break;
		case 2:
//puts("up space");
			cmpt.k15 = 1;
			cmpt.s15 |= cmpt.k15;
		default:
			cmpt.k15 = 0;
*/
// HUMPHREY: PULSAR SPACE y E 
		case 1:
//puts("down space");
			cmpt.k15 = 1;
			cmpt.s15 &= (cmpt.k15 ^ 255);
			cmpt.js |= cmpt.jk;
			break;
		case 3:
//puts("up space");
			cmpt.k15 = 1;
			cmpt.s15 |= cmpt.k15;
		case 20:
//puts("down E");
			cmpt.k10 = 4;
			cmpt.s10 &= (cmpt.k10 ^ 255);
			cmpt.js |= cmpt.jk;
			break;
		case 22:
//puts("up E");
			cmpt.k10 = 4;
			cmpt.s10 |= cmpt.k10;
			cmpt.js &= (cmpt.jk ^ 255);
			break;
		default:
			cmpt.k15 = 0;
			cmpt.k10 = 0;
	}
//printf("cual:%i\n",cual);
	cual++;
#else
	unsigned int temporal_io;
	SDL_Event evento;
	int itsnokeyup=0;
	static int to_menu=0;
	static SDLKey lastkey=(SDLKey)0;
	static int keying=0;
	static int resized=0;
		
	cmpt.k8 = cmpt.k9 = cmpt.k10 = cmpt.k11 =
		cmpt.k12 = cmpt.k13 = cmpt.k14 =
		cmpt.k15 = cmpt.jk = 0;

	if (resized)
	{
		resized--;
		if (!resized)
			zx4all_setup_sdl();	
	}
	if (to_menu)
	{
		if ( (to_menu>5) || (cmpt.tape_fast_load && (cmpt.tape_current_mode == TAP_DATA || cmpt.tape_current_mode == TAP_GUIDE || cmpt.tape_current_mode == TAP_PAUSE || /* cmpt.tape_current_mode == TAP_TRASH  || */ cmpt.tape_current_mode == TAP_PAUSE2 || cmpt.tape_current_mode == TAP_PAUSE3 || cmpt.tape_current_mode == TZX_PURE_TONE  || cmpt.tape_current_mode == TZX_SEQ_PULSES )&& !cmpt.pause) )
		{
			goMenu();
			to_menu=0;
		}
		else
			to_menu++;
	}
	if (!vkbd_key)
	{
		if (lastkey && lastkey!=SDLK_LSHIFT && lastkey!=SDLK_RCTRL)
		{
			if (keying)
			{
				keying--;
				return;
			}
			evento.type = SDL_KEYUP;
			temporal_io = (unsigned int) lastkey;
			lastkey=(SDLKey)0;
		}
		else
		{
			if (!SDL_PollEvent (&evento)) 
				return;
			if ((evento.type != SDL_KEYDOWN) && (evento.type != SDL_KEYUP))
			{
#ifndef DREAMCAST
				static int but=0;
				if (evento.type == SDL_JOYBUTTONDOWN)
				{
					if (!but)
					{
						evento.type = SDL_KEYDOWN;
						evento.key.keysym.sym = SDLK_LALT;
						but=1;
					}
				}
				else
				if (evento.type == SDL_JOYBUTTONUP)
				{
					if (but)
					{
						evento.type = SDL_KEYUP;
						evento.key.keysym.sym = SDLK_LALT;
						but=0;
					}
				}
				else
				if (evento.type == SDL_JOYAXISMOTION)
				{
					if (!(evento.jaxis.axis&1))
					{
						static int left=0;
						static int right=0;
						if (evento.jaxis.value<=-3200)
						{
							if (!left)
							{
								evento.type = SDL_KEYDOWN;
								evento.key.keysym.sym = SDLK_LEFT;
								left=1;
							}
						}
						else
						if (evento.jaxis.value>=3200)
						{
							if (!right)
							{
								evento.type = SDL_KEYDOWN;
								evento.key.keysym.sym = SDLK_RIGHT;
								right=1;
							}
						}
						else
						{
							if (left)
							{
								evento.type = SDL_KEYUP;
								evento.key.keysym.sym = SDLK_LEFT;
								left=0;
							}
							else
							if (right)
							{
								evento.type = SDL_KEYUP;
								evento.key.keysym.sym = SDLK_RIGHT;
								right=0;
							}
						}
					}
					else
					{
						static int up=0;
						static int down=0;
						if (evento.jaxis.value<=-3200)
						{
							if (!up)
							{
								evento.type = SDL_KEYDOWN;
								evento.key.keysym.sym = SDLK_UP;
								up=1;
							}
						}
						else
						if (evento.jaxis.value>=3200)
						{
							if (!down)
							{
								evento.type = SDL_KEYDOWN;
								evento.key.keysym.sym =  SDLK_DOWN;
								down=1;
							}
						}
						else
						{
							if (up)
							{
								evento.type = SDL_KEYUP;
								evento.key.keysym.sym = SDLK_UP;
								up=0;
							}
							else
							if (down)
							{
								evento.type = SDL_KEYUP;
								evento.key.keysym.sym = SDLK_DOWN;
								down=0;
							}
						}
					}
				}
				else
				if (evento.type == SDL_VIDEORESIZE)
				{
					TV_ResizeWindow(evento.resize.w, evento.resize.h);
					resized=20;
					return;
				}
				else
				if (evento.type == SDL_QUIT)
				{
					do{
						salir = 1;
					}while(SDL_PollEvent(&evento));
#ifdef DEBUG_Z80_STATS
					debugZ80_PrintStatitics();
#endif
					return;
				}
				else 
					return;
#endif
			}
			temporal_io = (unsigned int) evento.key.keysym.sym;
		}
	}
	else
	{
		if (lastkey)
		{
			keying=0;
			lastkey=(SDLKey)0;
			return;
		}
		if (vkbd_key==SDLK_LCTRL)
		{
			evento.type = SDL_KEYUP;
			temporal_io = (unsigned int) SDLK_RCTRL;
			lastkey=(SDLKey)0;
		}
		else
		if (vkbd_key==SDLK_RSHIFT)
		{
			evento.type = SDL_KEYUP;
			temporal_io = (unsigned int) SDLK_LSHIFT;
			lastkey=(SDLKey)0;
		}
		else
		{
			evento.type = SDL_KEYDOWN;
			temporal_io = (unsigned int) vkbd_key;
			if (vkbd_key==SDLK_LSHIFT || vkbd_key==SDLK_RCTRL)
				lastkey=(SDLKey)0;
			else
				lastkey=vkbd_key;
		}
		keying=10;
	}

	if (evento.type == SDL_KEYUP)
	{
		to_menu=0;
		if (vkbd_move)
			if ((temporal_io==SDLK_F11)||(temporal_io==SDLK_F12))
			{
				vkbd_move=0;
				return;
			}
		else if (vtape_move)
			if ((temporal_io==SDLK_F11)||(temporal_io==SDLK_F12))
			{
				vtape_move=0;
				return;
			}
	}
	else
	if (evento.type == SDL_KEYDOWN)
	{
		itsnokeyup=1;
		switch (temporal_io) {
/*
#ifndef DREAMCAST
		case SDLK_ESCAPE:	// to exit from the emulator
			salir = 1;
			return;
			break;
#endif
*/
		case SDLK_F10:
			if (zx4all_fasting)
				goFast(SDL_FALSE);
			else
				goFast(SDL_TRUE);
			return;
		case SDLK_F12:
			to_menu=0;
			if (vtape_mode)
			{
				vtape_mode=0;
				return;
			}
			vkbd_key=(SDLKey)0;
			vkbd_mode=1;
			return;
		case SDLK_F11:
			to_menu=0;
			if (vkbd_mode)
			{
				vkbd_mode=0;
				return;
			}
			vtape_mode=1;
			return;
		case SDLK_ESCAPE:
				to_menu=1;
			return;
		case SDLK_F1:	// STOP tape
			cmpt.pause = 1;
			break;
			
		case SDLK_F2:	// PLAY tape
			cmpt.pause = 0;
			break;
		case SDLK_F4:	// Reset
			ResetComputer();
			tape_reset((char *)&zx4all_tape_file[0]);
			break;
		case SDLK_PAGEUP:
			goFast(SDL_TRUE);
			break;
		case SDLK_PAGEDOWN:
			goFast(SDL_FALSE);
			break;
	
#ifndef DREAMCAST	
		case SDLK_F5:
			TV_ToggleFullScreen(screen);
			break;
		case SDLK_F6:
			TV_ToggleFilter();
			break;
		case SDLK_F7:
			TV_ToggleDistorsion();
			break;
		case SDLK_F8:
			TV_ToggleScanlines();
			break;
		case SDLK_F9:
//			TV_ToggleTV();
			break;
#endif
		
		
/*
		case SDLK_F7:
			SDL_PauseAudio (1);
			microdrive_menu ();	// shows the microdrive menu
			SDL_PauseAudio (0);
			break;
			
		case SDLK_F11:	// lower volume
			if (cmpt.volume > 3)
				set_volume (cmpt.volume - 4);
			break;
			
		case SDLK_F12:	// upper volume
			set_volume (cmpt.volume + 4);
			break;
*/
#ifdef INTERNAL_MENU_SCREENSHOT
				case SDLK_PAUSE:
								vid_screenshot(NULL);
								break;
#endif /* INTERNAL_MENU_SCREENSHOT */
		default:
			to_menu=0;

		}
	}

	// test for joystick
	if (vkbd_mode)
	{
		to_menu=0;
		if (!itsnokeyup)
		{
			if ((temporal_io==SDLK_UP)||(temporal_io==SDLK_DOWN)||(temporal_io==SDLK_LEFT)||(temporal_io==SDLK_RIGHT)||(temporal_io==SDLK_LCTRL))
			{
				vkbd_move=0;
				return;
			}
		}
		else
		switch(temporal_io)
		{
			case SDLK_UP:
				vkbd_move=VKBD_UP;
				return;
			case SDLK_DOWN:
				vkbd_move=VKBD_DOWN;
				return;
			case SDLK_LEFT:
				vkbd_move=VKBD_LEFT;
				return;
			case SDLK_RIGHT:
				vkbd_move=VKBD_RIGHT;
				return;
			case SDLK_LCTRL:
				vkbd_move=VKBD_BUTTON;
				return;
		}
	}
	else
	if (vtape_mode)
	{
		to_menu=0;
		if (!itsnokeyup)
		{
			if ((temporal_io==SDLK_UP)||(temporal_io==SDLK_DOWN)||(temporal_io==SDLK_LEFT)||(temporal_io==SDLK_RIGHT)||(temporal_io==SDLK_LCTRL))
			{
				vtape_move=0;
				return;
			}
		}
		else
		switch(temporal_io)
		{
			case SDLK_UP:
				vtape_move=VKBD_UP;
				return;
			case SDLK_DOWN:
				vtape_move=VKBD_DOWN;
				return;
			case SDLK_LEFT:
				vtape_move=VKBD_LEFT;
				return;
			case SDLK_RIGHT:
				vtape_move=VKBD_RIGHT;
				return;
			case SDLK_LCTRL:
				vtape_move=VKBD_BUTTON;
				return;
			default:
				vtape_move=0;
		}
	}

	switch (temporal_io) {
	case 0:
		break;
	case SDLK_UP:
		to_menu=0;
		switch (cmpt.joystick) {
		case 0:	// cursor
			temporal_io = SDLK_7;
		break;
		
		case 1:
			cmpt.jk = 8;
		break;
		
		case 2:	// sinclair 1
			temporal_io = SDLK_4;
		break;
		
		case 3:	// sinclair 2
			temporal_io = SDLK_7;
		break;
		}
	break;
	
	case SDLK_DOWN:
		to_menu=0;
		switch (cmpt.joystick) {
		case 0:	// cursor
			temporal_io = SDLK_6;
		break;
		
		case 1:
			cmpt.jk = 4;
		break;
		
		case 2:	// sinclair 1
			temporal_io = SDLK_3;
		break;
		
		case 3:	// sinclair 2
			temporal_io = SDLK_8;
		break;		
		}
	break;
		
	case SDLK_RIGHT:
		to_menu=0;
		switch (cmpt.joystick) {
		case 0:	// cursor
			temporal_io = SDLK_8;
		break;
		
		case 1:
			cmpt.jk = 1;
		break;
		
		case 2:	// sinclair 1
			temporal_io = SDLK_1;
		break;
				
		case 3:	// sinclair 2
			temporal_io = SDLK_9;
		break;
		
		}
	break;
	
	case SDLK_LEFT:
		to_menu=0;
		switch (cmpt.joystick) {
		case 0:	// cursor
			temporal_io = SDLK_5;
		break;
		
		case 1:
			cmpt.jk = 2;
		break;
		
		case 2:	// sinclair 1
			temporal_io = SDLK_2;
		break;
		
		case 3:	// sinclair 2
			temporal_io = SDLK_0;
		break;		
		}
	break;
	
	case SDLK_LALT:
	case SDLK_RALT:
	case SDLK_RMETA:
	case SDLK_LMETA:
	case SDLK_RSUPER:
	case SDLK_LSUPER:
	case SDLK_MENU:
		to_menu=0;
		switch (cmpt.joystick) {
		case 0:	// cursor
			temporal_io = SDLK_0;
		break;
		
		case 1:
			cmpt.jk = 16;
		break;
		
		case 2:	// sinclair 1
			temporal_io = SDLK_5;
		break;
		
		case 3:	// sinclair 2
			temporal_io = SDLK_6;
		break;		
		}
	break;
	}

	switch (temporal_io) {

	case SDLK_SPACE:
		cmpt.k15 = 1;
	break;
	
	case SDLK_RCTRL:
	case SDLK_LCTRL:
		to_menu=0;
		cmpt.k15 = 2;
	break;
	
	case SDLK_m:
		cmpt.k15 = 4;
	break;
	
	case SDLK_n:
		cmpt.k15 = 8;
	break;
	
	case SDLK_b:
		cmpt.k15 = 16;
	break;
	
	case SDLK_RETURN:
		cmpt.k14 = 1;
	break;
	
	case SDLK_l:
		cmpt.k14 = 2;
	break;
	
	case SDLK_k:
		cmpt.k14 = 4;
	break;
	
	case SDLK_j:
		cmpt.k14 = 8;
	break;
	
	case SDLK_h:
		cmpt.k14 = 16;
	break;
	
	case SDLK_p:
		cmpt.k13 = 1;
	break;
	
	case SDLK_o:
		cmpt.k13 = 2;
	break;
	
	case SDLK_i:
		cmpt.k13 = 4;
	break;
	
	case SDLK_u:
		cmpt.k13 = 8;
	break;
	
	case SDLK_y:
		cmpt.k13 = 16;
	break;
	
	case SDLK_0:
		cmpt.k12 = 1;
	break;
	
	case SDLK_9:
		cmpt.k12 = 2;
	break;
	
	case SDLK_8:
		cmpt.k12 = 4;
	break;
	
	case SDLK_7:
		cmpt.k12 = 8;
	break;
	
	case SDLK_6:
		cmpt.k12 = 16;
	break;
	
	case SDLK_1:
		cmpt.k11 = 1;
	break;
	
	case SDLK_2:
		cmpt.k11 = 2;
	break;
	
	case SDLK_3:
		cmpt.k11 = 4;
	break;
	
	case SDLK_4:
		cmpt.k11 = 8;
	break;
	
	case SDLK_5:
		cmpt.k11 = 16;
	break;
	
	case SDLK_q:
		cmpt.k10 = 1;
	break;
	
	case SDLK_w:
		cmpt.k10 = 2;
	break;
	
	case SDLK_e:
		cmpt.k10 = 4;
	break;
	
	case SDLK_r:
		cmpt.k10 = 8;
	break;
	
	case SDLK_t:
		cmpt.k10 = 16;
	break;
	
	case SDLK_a:
		cmpt.k9 = 1;
	break;
	
	case SDLK_s:
		cmpt.k9 = 2;
	break;
	
	case SDLK_d:
		cmpt.k9 = 4;
	break;
	
	case SDLK_f:
		cmpt.k9 = 8;
	break;
	
	case SDLK_g:
		cmpt.k9 = 16;
	break;
	
	case SDLK_RSHIFT:
	case SDLK_LSHIFT:
		cmpt.k8 = 1;
	break;
	
	case SDLK_z:
		cmpt.k8 = 2;
	break;
	
	case SDLK_x:
		cmpt.k8 = 4;
	break;
	
	case SDLK_c:
		cmpt.k8 = 8;
	break;
	
	case SDLK_v:
		cmpt.k8 = 16;
	break;
	
	case SDLK_BACKSPACE:
		cmpt.k12 = 1;
		cmpt.k8 = 1;
	break;
	}

	if (evento.type == SDL_KEYUP) {
		cmpt.s8 |= cmpt.k8;
		cmpt.s9 |= cmpt.k9;
		cmpt.s10 |= cmpt.k10;
		cmpt.s11 |= cmpt.k11;
		cmpt.s12 |= cmpt.k12;
		cmpt.s13 |= cmpt.k13;
		cmpt.s14 |= cmpt.k14;
		cmpt.s15 |= cmpt.k15;
		cmpt.js &= (cmpt.jk ^ 255);
	} else {
		cmpt.s8 &= (cmpt.k8 ^ 255);
		cmpt.s9 &= (cmpt.k9 ^ 255);
		cmpt.s10 &= (cmpt.k10 ^ 255);
		cmpt.s11 &= (cmpt.k11 ^ 255);
		cmpt.s12 &= (cmpt.k12 ^ 255);
		cmpt.s13 &= (cmpt.k13 ^ 255);
		cmpt.s14 &= (cmpt.k14 ^ 255);
		cmpt.s15 &= (cmpt.k15 ^ 255);
		cmpt.js |= cmpt.jk;
	}

#endif
	return;
}

// resets the computer and loads the right ROMs

void ResetComputer () {
#if defined(DEBUG_ZX4ALL) && !defined(DEBUG_Z80_STATS)
	dbg("ResetComputer()");
#endif

	int i;

	_z80_reset();
	load_rom (cmpt.mode128k);

	// reset the AY-3-8912

	for (i = 0; i < 16; i++)
		cmpt.ay_registers[i] = 0;

	cmpt.aych_a = 0;
	cmpt.aych_b = 0;
	cmpt.aych_c = 0;
	cmpt.aych_n = 0;
	cmpt.aych_envel = 0;
	cmpt.vol_a = 0;
	cmpt.vol_b = 0;
	cmpt.vol_c = 0;

	cmpt.mport1 = 0;
	cmpt.mport2 = 0;
	cmpt.video_offset = 0;	// video in page 9 (page 5 in 128K)
	switch (cmpt.mode128k) {
	case 0:		// 48K
		cmpt.pixancho = 447-8;
		cmpt.pixalto = 311-1;

		cmpt.block0 = cmpt.memoria;
		cmpt.block1 = cmpt.memoria + 131072;	// video mem. in page 9 (page 5 in 128K)
		cmpt.block2 = cmpt.memoria + 65536;	// 2nd block in page 6 (page 2 in 128K)
		cmpt.block3 = cmpt.memoria + 65536;	// 3rd block in page 7 (page 3 in 128K)
		cmpt.mport1 = 32;	// access to port 7FFD disabled
	break;
	
	case 3:		// +2A/+3
		OutZ80 (0x1FFD, 0);
	case 1:		// 128K
	case 2:		// +2
		OutZ80 (0x7FFD, 0);
		cmpt.pixancho = 455-8;
		cmpt.pixalto = 310-1;
	break;
	}
	
	microdrive_reset();
	{
		static int miprimeravez=0;
		if (miprimeravez)
		{
			_z80_resetmapping();
		}
		else
			miprimeravez++;
	}
#if defined(USE_LIBAYEMU) && !defined(NOSOUND)
	ayemu_reset(&ayemu_ay);
#endif
	reset_frameskip();
}

#ifdef USE_MASCARA_AF
int pushaf_found=0;
#endif

void WrZ80 (unsigned short Addr, unsigned char Value) {
#ifdef DEBUG_MEMORY
#ifdef USE_MASCARA_AF
	if (pushaf_found)
	{
		pushaf_found--;
		if (!pushaf_found)
			Value&=MASCARA_AF;
	}
#endif
	dbgf("WrZ80(0x%.4X,0x%.2X)\n",Addr,Value);
#endif
	switch (Addr & 0xC000) {
	case 0x0000:
	// only writes in the first 16K if we are in +3 mode and bit0 of mport2 is 1

		if ((cmpt.mode128k == 3) && (1 == (cmpt.mport2 & 0x01)))
			*(cmpt.block0 + Addr) = (unsigned char) Value;
	break;

	case 0x4000:
		*(cmpt.block1 + Addr) = (unsigned char) Value;
	break;
	
	case 0x8000:
		*(cmpt.block2 + Addr) = (unsigned char) Value;
	break;
	
	case 0xC000:
		*(cmpt.block3 + Addr) = (unsigned char) Value;
	break;
	}
}


unsigned char RdZ80 (unsigned short Addr) {
#ifdef DEBUG_MEMORY
	int esopcode=(((_z80_get_PC()-8)<=Addr)&&((_z80_get_PC()+8)>=Addr));
	if (!esopcode)
		dbgf("RdZ80(0x%.4X)",Addr);
#endif
/*
	if((cmpt.mdr_active)&&(cmpt.mdr_paged)&&(Addr<8192)) // Interface I
	{
		register unsigned char r=((unsigned char)cmpt.shadowrom[Addr]);
#ifdef DEBUG_MEMORY
		if (!esopcode)
			dbgf(" = 0x%.2X\n",r);
#endif
		return r;
	}
*/
	
	switch (cmpt.other_ret) {
	case 1:
		cmpt.other_ret = 0;
#ifdef DEBUG_MEMORY
		if (!esopcode)
			dbg(" = 201");
#endif
		return (201);	// RET instruction
	break;

	default:
		switch (Addr & 0xC000) {
		case 0x0000:
		{
			register unsigned char r=((unsigned char) (*(cmpt.block0 + Addr)));
#ifdef DEBUG_MEMORY
			if (!esopcode)
				dbgf(" = 0x%.2X\n",r);
#endif
			return r;
		}
		break;

		case 0x4000:
		{
			register unsigned char r=((unsigned char) (*(cmpt.block1 + Addr)));
#ifdef DEBUG_MEMORY
			if (!esopcode)
				dbgf(" = 0x%.2X\n",r);
#endif
			return r;
		}
		break;

		case 0x8000:
		{
			register unsigned char r=((unsigned char) (*(cmpt.block2 + Addr)));
#ifdef DEBUG_MEMORY
			if (!esopcode)
				dbgf(" = 0x%.2X\n",r);
#endif
			return r;
		}
		break;

		case 0xC000:
		{
			register unsigned char r=((unsigned char) (*(cmpt.block3 + Addr)));
#ifdef DEBUG_MEMORY
			if (!esopcode)
				dbgf(" = 0x%.2X\n",r);
#endif
			return r;
		}
		break;

		default:
#ifdef DEBUG_MEMORY
			if (!esopcode)
				dbg ("  Memory error !!!");
#endif
			return 0;
		}
		break;
	}
}

void OutZ80 (unsigned short Port, unsigned char Value) {
#ifdef DEBUG_MEMORY
	dbgf("OutZ80(0x%.4X,0x%.2X)\n",Port,Value);
#endif

	// Microdrive access
	
	if(((Port &0x0018)!=0x0018)&&(cmpt.mdr_active))
		microdrive_out(Port,Value);
	
	// ULA port (A0 low)

	if (!(Port & 0x0001)) {

		cmpt.port254 = (unsigned char) Value;
		cmpt.border = 16 + (((unsigned char) Value) & 0x07);

		if (cmpt.pause) {
			unsigned char newvalue=((Value&0x10)>>4)&1;
			if (newvalue!=cmpt.sound_bit)
			{
				_z80_release();
				cmpt.sound_bit=newvalue;
			}
		}
	}

	// Memory page (7FFD & 1FFD)

	if ((Port == 0x7FFD) && (0 == (cmpt.mport1 & 0x20))) {
		cmpt.mport1 = (unsigned char) Value;
		set_memory_pointers ();	// set the pointers
		_z80_release();
	}

	if ((Port == 0x1FFD) && (0 == (cmpt.mport1 & 0x20))) {
		cmpt.mport2 = (unsigned char) Value;
		set_memory_pointers ();	// set the pointers
		_z80_release();
	}

	// Sound chip (AY-3-8912)

	if (Port == 0xFFFD)
		cmpt.ay_latch = ((unsigned int) (Value & 0x0F));

	if (Port == 0xBFFD || Port == 0x00FD )
	{
		if (cmpt.ay_registers[cmpt.ay_latch]!=(unsigned char) Value)
		{
			_z80_release();
			cmpt.ay_registers[cmpt.ay_latch] =
				(unsigned char) Value;
		}
		if (cmpt.ay_latch == 13)
			cmpt.ay_envel_way = 2;	// start cycle
	}
}


unsigned char InZ80 (unsigned short Port) {
#ifdef DEBUG_MEMORY
	dbgf("InZ80(0x%.4X)",Port);
#endif

	unsigned int temporal_io = (unsigned int) Port;

	if (!(temporal_io & 0x0001)) {

		unsigned char pines = 0xBF;	// by default, sound bit is 0
		if (!(temporal_io & 0x0100))
			pines &= cmpt.s8;
		if (!(temporal_io & 0x0200))
			pines &= cmpt.s9;
		if (!(temporal_io & 0x0400))
			pines &= cmpt.s10;
		if (!(temporal_io & 0x0800))
			pines &= cmpt.s11;
		if (!(temporal_io & 0x1000))
			pines &= cmpt.s12;
		if (!(temporal_io & 0x2000))
			pines &= cmpt.s13;
		if (!(temporal_io & 0x4000))
			pines &= cmpt.s14;
		if (!(temporal_io & 0x8000))
			pines &= cmpt.s15;

		if (cmpt.pause) {
			if (cmpt.issue == 2)	{
				if (cmpt.port254 & 0x18)
					pines |= 0x40;
			} else {
				if (cmpt.port254 & 0x10)
					pines |= 0x40;
			}
		} else {
			if (cmpt.tape_readed)
				pines |= 0x40;	// sound input
			else
				pines &= 0xBF;	// sound input
		}
#ifdef DEBUG_MEMORY
		dbgf(" = 0x%.2X\n",pines);
#endif
		return (pines);
	}

	if ((!(temporal_io & 0x0020)) && (cmpt.joystick == 1))
	{
#ifdef DEBUG_MEMORY
		dbgf(" = cmpt.js = 0x%.2X\n",cmpt.js);
#endif
		return (cmpt.js);
	}

	if (temporal_io == 0xFFFD)
	{
#ifdef DEBUG_MEMORY
		dbgf(" = cmpt.ay_registers[%i] = 0x%.2X\n",cmpt.ay_latch,cmpt.ay_registers[cmpt.ay_latch]);
#endif
		return (cmpt.ay_registers[cmpt.ay_latch]);
	}

	// Microdrive access
	
	if(((Port &0x0018)!=0x0018)&&(cmpt.mdr_active))
	{
#ifdef DEBUG_MEMORY
		dbg(" = microdirve_in()");
#endif
		return(microdrive_in(Port));
	}
	
	register unsigned char r=bus_empty();
#ifdef DEBUG_MEMORY
	dbgf(" = bus_empty() = 0x%.2X\n",r);
#endif
	return r;
}

#ifndef USE_RAZE
void PatchZ80 (Z80 * R) {

}

unsigned short LoopZ80 (Z80 * R) {
	if (cmpt.interr == 0)
		return (INT_NONE);
	else
		return (0x0038);
}
#endif

void set_volume (unsigned char volume) {

	unsigned char vol2;
	int bucle;

	if (volume > 40)
		vol2 = 40;
	else
		vol2 = volume;

	cmpt.volume = vol2;

	for (bucle = 0; bucle < 4; bucle++)	{
		cmpt.sample0[bucle] = 0;
		cmpt.sample1[bucle] = 0;
		cmpt.sample1b[bucle] = 0;
	}

	switch (cmpt.format) {
	case 0:
		cmpt.sample1[0] = 2 * vol2;
		cmpt.sample1[1] = 2 * vol2;
		cmpt.sample1b[0] = 1;
		cmpt.sample1b[1] = 1;
		break;
	case 1:
		cmpt.sample1[1] = 2 * vol2;
		cmpt.sample1[3] = 2 * vol2;
		cmpt.sample1b[1] = 1;
		cmpt.sample1b[3] = 1;
		break;
	case 2:
		cmpt.sample1[0] = 2 * vol2;
		cmpt.sample1[2] = 2 * vol2;
		cmpt.sample1b[0] = 1;
		cmpt.sample1b[2] = 1;
		break;
	}
}
