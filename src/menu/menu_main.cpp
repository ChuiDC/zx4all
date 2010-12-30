
#ifndef NO_MENU

#ifdef DREAMCAST
#include <kos.h>
#endif
#include<stdio.h>
#include<stdlib.h>
#include<string.h>

#include "menu.h"
#include "zx4all.h"
#include "sound.h"


extern int emulating;

static char *text_str_title="ZX4ALL " ZX4ALL_VERSION;
static char *text_str_snap="Load Snapshot";
static char *text_str_tape="Select Tape";
static char *text_str_frameskip="Frameskip";
static char *text_str_options="More Options";
static char *text_str_0="0";
static char *text_str_1="1";
static char *text_str_2="2";
static char *text_str_3="3";
static char *text_str_4="4";
static char *text_str_5="5";
static char *text_str_auto="auto";
static char *text_str_sound="Sound";
static char *text_str_on="on";
static char *text_str_off="off";
static char *text_str_separator="~~~~~~~~~~~~~~~~~~~~~~";
static char *text_str_reset="Reset (R)";
static char *text_str_run="Run (L)";
#ifdef DREAMCAST
static char *text_str_exit="Reboot Dreamcast";
#else
static char *text_str_exit="Exit";
#endif

#if !defined(DEBUG_ZX4ALL) && !defined(PROFILER_ZX4ALL) && !defined(AUTO_EVENTS) && !defined(AUTO_FRAMERATE)
int mainMenu_throttle=3;
int mainMenu_frameskip=-1;
#else
#ifdef PROFILER_ZX4ALL
#ifndef AUTO_PROFILER
int mainMenu_frameskip=0;
#else
int mainMenu_frameskip=-1;
#endif
#ifndef AUTO_PROFILER_THROTTLE
int mainMenu_throttle=0;
#else
int mainMenu_throttle=3;
#endif
#else
#ifdef DEBUG_FRAMERATE
int mainMenu_frameskip=-1;
#ifndef AUTO_FRAMERATE_THROTTLE
int mainMenu_throttle=0;
#else
int mainMenu_throttle=3;
#endif
#else
int mainMenu_throttle=0;
int mainMenu_frameskip=0;
#endif
#endif
#endif


#if !defined(DEBUG_ZX4ALL) && !defined(PROFILER_ZX4ALL) && !defined(AUTO_EVENTS) && !defined(AUTO_FRAMERATE)
int mainMenu_sound=-1;
#else
int mainMenu_sound=0;
#endif
int mainMenu_autosave=-1;

int mainMenu_case=-1;

enum { MAIN_MENU_CASE_REBOOT, MAIN_MENU_CASE_SNAP, MAIN_MENU_CASE_TAPE, MAIN_MENU_CASE_OPTIONS, MAIN_MENU_CASE_RUN, MAIN_MENU_CASE_RESET, MAIN_MENU_CASE_CANCEL, MAIN_MENU_CASE_EJECT };

#if !defined(DEBUG_ZX4ALL) && !defined(PROFILER_ZX4ALL) 
static int position_c=0;
#else
static int position_c=5;
#endif

static void draw_mainMenu(void)
{
//	static int b=0;
//	int bb=(b%6)/3;
	int c=position_c;

	text_draw_background();
	text_draw_window(40,24,260,200,text_str_title);
	write_text(6,4,text_str_separator);
	if ((c==0)) //&&(bb))
		write_text_sel(6,5,252,text_str_snap);
	else
		write_text(6,5,text_str_snap);

	write_text(6,6,text_str_separator);
	if ((c==1)) //&&(bb))
		write_text_sel(6,7,252,text_str_tape);
	else
		write_text(6,7,text_str_tape);
	write_text(6,8,text_str_separator);

	write_text(6,9,text_str_separator);
	if ((c==2)) //&&(bb))
		write_text_sel(6,10,252,text_str_options);
	else
		write_text(6,10,text_str_options);
	write_text(6,11,text_str_separator);
	
//	write_text(6,12,text_str_separator);
/*
	write_text(6,13,text_str_frameskip);
	if ((mainMenu_frameskip==0)&&((c!=3)||(bb)))
		write_text_inv(17,13,text_str_0);
	else
		write_text(17,13,text_str_0);
	if ((mainMenu_frameskip==1)&&((c!=3)||(bb)))
		write_text_inv(19,13,text_str_1);
	else
		write_text(19,13,text_str_1);
	if ((mainMenu_frameskip==2)&&((c!=3)||(bb)))
		write_text_inv(21,13,text_str_2);
	else
		write_text(21,13,text_str_2);
	if ((mainMenu_frameskip==3)&&((c!=3)||(bb)))
		write_text_inv(23,13,text_str_3);
	else
		write_text(23,13,text_str_3);
	if ((mainMenu_frameskip==4)&&((c!=3)||(bb)))
		write_text_inv(25,13,text_str_4);
	else
		write_text(25,13,text_str_4);
	if ((mainMenu_frameskip==5)&&((c!=3)||(bb)))
		write_text_inv(27,13,text_str_5);
	else
		write_text(27,13,text_str_5);
	if ((mainMenu_frameskip==-1)&&((c!=3)||(bb)))
		write_text_inv(29,13,text_str_auto);
	else
		write_text(29,13,text_str_auto);
*/
	if (c==3)
	{
		write_text_sel(6,13,252,text_str_frameskip);
		switch(mainMenu_frameskip)
		{
			case 0: write_text_inv(19,13,"||||");break;
			case 1: write_text_inv(21,13,"||||"); break;
			case 2: write_text_inv(23,13,"||||"); break;
			case 3: write_text_inv(25,13,"||||"); break;
			case 4: write_text_inv(27,13,"||||"); break;
			case 5: write_text_inv(29,13,"||||"); break;
			default:
				        write_text_inv(31,13,"||||||||||||||");
		}
		write_text_inv(19,13,text_str_0);
		write_text_inv(21,13,text_str_1);
		write_text_inv(23,13,text_str_2);
		write_text_inv(25,13,text_str_3);
		write_text_inv(27,13,text_str_4);
		write_text_inv(29,13,text_str_5);
		write_text_inv(31,13,text_str_auto);
	}
	else
	{
		write_text(6,13,text_str_frameskip);
		switch(mainMenu_frameskip)
		{
			case 0: write_text(19,13,"||||"); break;
			case 1: write_text(21,13,"||||"); break;
			case 2: write_text(23,13,"||||"); break;
			case 3: write_text(25,13,"||||"); break;
			case 4: write_text(27,13,"||||"); break;
			case 5: write_text(29,13,"||||"); break;
			default:
				        write_text(31,13,"||||||||||||||");
		}
		write_text(19,13,text_str_0);
		write_text(21,13,text_str_1);
		write_text(23,13,text_str_2);
		write_text(25,13,text_str_3);
		write_text(27,13,text_str_4);
		write_text(29,13,text_str_5);
		write_text(31,13,text_str_auto);
	}

/*
	write_text(6,15,text_str_sound);
	if ((!mainMenu_sound)&&((c!=4)||(bb)))
		write_text_inv(17,15,text_str_off);
	else
		write_text(17,15,text_str_off);
	if ((mainMenu_sound)&&((c!=4)||(bb)))
		write_text_inv(22,15,text_str_on);
	else
		write_text(22,15,text_str_on);
*/
	if (c==4)
	{
		write_text_sel(6,15,252,text_str_sound);
		if (mainMenu_sound)
			write_text_inv(24,15,"|||||||");
		else
			write_text_inv(19,15,"|||||||||");
		write_text_inv(19,15,text_str_off);
		write_text_inv(24,15,text_str_on);
	}
	else
	{
		write_text(6,15,text_str_sound);
		if (mainMenu_sound)
			write_text(24,15,"|||||||");
		else
			write_text(19,15,"|||||||||");
		write_text(19,15,text_str_off);
		write_text(24,15,text_str_on);
	}
	write_text(6,16,text_str_separator);

	write_text(6,18,text_str_separator);
	if ((c==5)) //&&(bb))
		write_text_sel(6,19,252,text_str_reset);
	else
		write_text(6,19,text_str_reset);
	write_text(6,20,text_str_separator);

	if ((c==6)) //&&(bb))
		write_text_sel(6,21,252,text_str_run);
	else
		write_text(6,21,text_str_run);
	write_text(6,22,text_str_separator);

	write_text(6,23,text_str_separator);
	if ((c==7)) //&&(bb))
		write_text_sel(6,24,252,text_str_exit);
	else
		write_text(6,24,text_str_exit);
	write_text(6,25,text_str_separator);

	text_flip();
//	b++;
}

static int set_pos_by_mouse(int posx, int posy, int click)
{
	int x=TV_ConvertMousePosX(posx);
	int y=TV_ConvertMousePosY(posy);
	if (x>(6*8) && x<(252+6*8) && y>(5*8) && y<(5+6*8))
	{
		position_c=0;
		return 1;
	}
	else
	if (x>(6*8) && x<(252+6*8) && y>(7*8) && y<(5+8*8))
	{

		position_c=1;
		return 1;
	}
	else
	if (x>(6*8) && x<(252+6*8) && y>(10*8) && y<(5+11*8))
	{
		position_c=2;
		return 1;
	}
	else
	if (x>(6*8) && x<(252+6*8) && y>(13*8) && y<(5+14*8))
	{
		position_c=3;
		if (click)
		{
			if (x>(19*8) && x<(4+20*8))
				mainMenu_frameskip=0;
			else
			if (x>(21*8) && x<(4+22*8))
				mainMenu_frameskip=1;
			else
			if (x>(23*8) && x<(4+24*8))
				mainMenu_frameskip=2;
			else
			if (x>(25*8) && x<(4+26*8))
				mainMenu_frameskip=3;
			else
			if (x>(27*8) && x<(4+28*8))
				mainMenu_frameskip=4;
			else
			if (x>(29*8) && x<(4+30*8))
				mainMenu_frameskip=5;
			else
			if (x>(31*8) && x<(4+35*8))
				mainMenu_frameskip=-1;
		}
		return 1;
	}
	else
	if (x>(6*8) && x<(252+6*8) && y>(15*8) && y<(5+16*8))
	{
		position_c=4;
		if (click)
		{
			if (x>(19*8) && x<(4+22*8))
				mainMenu_sound=0;
			else
			if (x>(24*8) && x<(4+26*8))
				mainMenu_sound=-1;
		}
		return 1;
	}
	else
	if (x>(6*8) && x<(252+6*8) && y>(19*8) && y<(5+20*8))
	{
		position_c=5;
		return 1;
	}
	else
	if (x>(6*8) && x<(252+6*8) && y>(21*8) && y<(5+22*8))
	{
		position_c=6;
		return 1;
	}
	else
	if (x>(6*8) && x<(252+6*8) && y>(24*8) && y<(5+25*8))
	{
		position_c=7;
		return 1;
	}

	return 0;
}

/*
**  TakeScreenShot of SDL surface, only needs SDL lib
**      surface is optional, if NULL is specified use the main video
**      filename is optional, if NULL is specified use SCREENSHOT_DEFAULT_FILENAME
**
**  Saves BMP files (SDL has built in support for BMP).
**  If no filename is provided a default name is used (which may
**  overwrite existing files).
*/
#define SCREENSHOT_DEFAULT_FILENAME "screenshot_zx4all.bmp"
void TakeScreenShot(SDL_Surface *screen_to_save, char *filename)
{
    char *local_filename=NULL;
    SDL_Surface *local_screen=NULL;
    
    local_screen = screen_to_save;
    local_filename = filename;
    
    if (local_screen == NULL)
    {
        local_screen = SDL_GetVideoSurface();
        
        /*
        or if there is global screen ref go grab it ...
        extern SDL_Surface *screen;
        
        local_screen = screen;
        */
    }
    if (local_filename == NULL)
    {
        local_filename = SCREENSHOT_DEFAULT_FILENAME;
        /* TODO scan local dir and derive name? Use timestamp (note Dingoo has no clock). */
    }
    
    SDL_SaveBMP(local_screen, local_filename);
    /*
    ** If SDL_image is available it is possible to save SDL surfaces
    ** to a PNG with the use of some glue code. See:
    ** http://stackoverflow.com/questions/718933/how-to-save-an-sdl-surface-to-a-png-and-get-the-colors-right/719636#719636
    */
}

int vid_screenshot(char *filename)
{
    TakeScreenShot(screen, filename);
    return 0;
}

static int key_mainMenu(void)
{
	static int mouse_x=0;
        static int mouse_y=0;
	int back_c=-1;
	int c=position_c;
	int end=0;
	int left=0, right=0, up=0, down=0, hit0=0, hit1=0, hit2=0, hit3=0, hit4=0, hit5=0;
	SDL_Event event;

	while (SDL_PollEvent(&event) > 0)
	{
		if (event.type == SDL_MOUSEMOTION)
		{
			mouse_x=event.motion.x;
			mouse_y=event.motion.y;
			set_pos_by_mouse(mouse_x,mouse_y,0);
			c=position_c;
		}
		else
		if (event.type == SDL_MOUSEBUTTONDOWN)
		{
			zx4all_play_click();
			hit0=set_pos_by_mouse(mouse_x,mouse_y,1);
		}
		else
		if (event.type == SDL_VIDEORESIZE)
			TV_ResizeWindow(event.resize.w, event.resize.h);
		else
		if (event.type == SDL_QUIT)
		{
			mainMenu_case=MAIN_MENU_CASE_REBOOT;
			end=-1;
		}
		else
		if (event.type == SDL_KEYDOWN)
		{
			zx4all_play_click();
			switch(event.key.keysym.sym)
			{
				case SDLK_d:
				case SDLK_RIGHT: right=1; break;
				case SDLK_a:
				case SDLK_LEFT: left=1; break;
				case SDLK_w:
				case SDLK_UP: up=1; break;
				case SDLK_s:
				case SDLK_DOWN: down=1; break;
				case SDLK_c:
				case SDLK_LSHIFT: hit3=1; break;
				case SDLK_2:
				case SDLK_BACKSPACE: hit5=1; break;
				case SDLK_x:
				case SDLK_SPACE: hit4=1; break;
				case SDLK_1:
				case SDLK_TAB: hit2=1; break;
				case SDLK_z:
				case SDLK_RETURN:
				case SDLK_e:
				case SDLK_LCTRL: hit0=1; break;
				case SDLK_q:
				case SDLK_LALT: hit1=1; break;
#ifndef DREAMCAST
				case SDLK_F5: TV_ToggleFullScreen(screen);break;
				case SDLK_F6: TV_ToggleFilter(); break;
				case SDLK_F7: TV_ToggleDistorsion();break;
				case SDLK_F8: TV_ToggleScanlines();break;
//				case SDLK_F9: TV_ToggleTV();break;
#endif
				case SDLK_ESCAPE: hit0=1; c=7; break;
#ifdef INTERNAL_MENU_SCREENSHOT
				case SDLK_PAUSE:
								vid_screenshot(NULL);
								break;
#endif /* INTERNAL_MENU_SCREENSHOT */
			}
		}
		if (hit1)
		{
			mainMenu_case=MAIN_MENU_CASE_CANCEL;
			end=1;
		}
		else if (hit2)
		{
			back_c=c;
			hit0=1;
			c=6;
		}
		else if (hit3)
		{
			mainMenu_case=MAIN_MENU_CASE_SNAP;
			end=1;
		}
		else if (hit4)
		{
			back_c=c;
			hit0=1;
			c=5;
		}
		else if (hit5)
		{
			back_c=c;
			hit0=1;
			c=7;
		}
		else if (up)
		{
			if (c>0) c=(c-1)%8;
			else c=7;
		}
		else if (down)
		{
			c=(c+1)%8;
		}
		switch(c)
		{
			case 0:
				if (hit0)
				{
					mainMenu_case=MAIN_MENU_CASE_SNAP;
					end=1;
				}
				break;
			case 1:
				if (hit0)
				{
					mainMenu_case=MAIN_MENU_CASE_TAPE;
					end=1;
				}
				break;
			case 2:
				if (hit0)
				{
					mainMenu_case=MAIN_MENU_CASE_OPTIONS;
					end=1;
				}
				break;
			case 3:
				if (left)
				{
					if (mainMenu_frameskip>-1)
						mainMenu_frameskip--;
					else
						mainMenu_frameskip=5;
				}
				else if (right)
				{
					if (mainMenu_frameskip<5)
						mainMenu_frameskip++;
					else
						mainMenu_frameskip=-1;
				}
				break;
			case 4:
				if ((left)||(right))
					mainMenu_sound=~mainMenu_sound;
				break;
			case 5:
				if (hit0)
				{
					mainMenu_case=MAIN_MENU_CASE_RESET;
					end=1;
				}
				break;
			case 6:
				if (hit0)
				{
					mainMenu_case=MAIN_MENU_CASE_RUN;
					end=1;
				}
				break;
			case 7:
				if (hit0)
				{
					mainMenu_case=MAIN_MENU_CASE_REBOOT;
					end=1;
				}
				break;
		}
		if (back_c>=0)
		{
			c=back_c;
			back_c=-1;
		}
	}

	position_c=c;
	return end;
}

static void raise_mainMenu()
{
	int i;

	text_draw_background();
	text_flip();
	for(i=0;i<10;i++)
	{
		text_draw_background();
		text_draw_window(40,(10-i)*24,260,200,text_str_title);
		text_flip();
	}
}

static void unraise_mainMenu()
{
	int i;

	for(i=9;i>=0;i--)
	{
		text_draw_background();
		text_draw_window(40,(10-i)*24,260,200,text_str_title);
		text_flip();
	}
	text_draw_background();
	text_flip();
}

int run_mainMenu()
{
#if defined(AUTO_EVENTS) || defined(AUTO_FRAMERATE) || defined(AUTO_PROFILER)
	return 1;
#else
	int end;
	mainMenu_case=-1;

	while(mainMenu_case<0)
	{
		raise_mainMenu();
		end=0;
		while(!end)
		{
			draw_mainMenu();
			end=key_mainMenu();
		}
		unraise_mainMenu();
		switch(mainMenu_case)
		{
			case MAIN_MENU_CASE_SNAP:
				run_menuLoadSNAP();	
				mainMenu_case=-1;
				break;
			case MAIN_MENU_CASE_TAPE:
				run_menuLoadTAPE();
				mainMenu_case=-1;
				break;
			case MAIN_MENU_CASE_OPTIONS:
				run_menuOpt();
				mainMenu_case=-1;
				break;
			case MAIN_MENU_CASE_EJECT:
				mainMenu_case=3;
				break;
			case MAIN_MENU_CASE_CANCEL:
				if (emulating)
					mainMenu_case=1;
				else
					mainMenu_case=-1;
				break;
			case MAIN_MENU_CASE_RESET:
				if (emulating)
				{
					mainMenu_case=2;
					break;
				}
			case MAIN_MENU_CASE_RUN:
				mainMenu_case=1;
				break;
			case MAIN_MENU_CASE_REBOOT:
#ifdef DREAMCAST
				arch_reboot();
#else
				exit(0);
#endif
				break;
			default:
				mainMenu_case=-1;
		}
	}

	return mainMenu_case;
#endif
}

#endif
