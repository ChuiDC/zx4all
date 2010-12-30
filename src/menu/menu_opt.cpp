#include<stdio.h>
#include<stdlib.h>
#include<string.h>


#include "menu.h"

#include "zx4all.h"
#include "sound.h"

int menuOpt_mode=2;
int menuOpt_joy=1; // 0;
int menuOpt_fast=1;
int menuOpt_ay=1;
int menuOpt_intr=1;
int menuOpt_case=-1;

#ifndef NO_MENU


static char *text_str_title="Options";
static char *text_str_mode="Mode:";
static char *text_str_48k="48k";
static char *text_str_64k="64k";
static char *text_str_128k="128k";
static char *text_str_plus2="plus2";
static char *text_str_plus3="plus3";
static char *text_str_on="On";
static char *text_str_off="Off";
static char *text_str_joy="Joy:";
static char *text_str_cur="Cursr";
static char *text_str_kem="Kempt";
static char *text_str_si1="Sinc1";
static char *text_str_si2="Sinc2";
static char *text_str_ay="AY3 8912:";
static char *text_str_intr="Interface I:";
static char *text_str_fast="Fast Load:";
static char *text_str_separator="~~~~~~~~~~~~~~~~~~~~~~~~~~";
static char *text_str_exit="Main Menu (B)";

enum { OPT_MENU_CASE_EXIT, OPT_MENU_CASE_CANCEL };

static int position_c=0;

static inline void draw_optMenu(void)
{
	int c=position_c;
	text_draw_background();
	text_draw_window(40-32,24+8,260+32+16,200-16-8,text_str_title);

	write_text(2,4,text_str_separator);
	if (c==0)
	{
		write_text_sel(2,5,296,text_str_mode);
		switch(menuOpt_mode)
		{
			case 0: write_text_inv( 9,5,"|||||||||||");break;
			case 1: write_text_inv(14,5,"|||||||||||");break;
			case 2: write_text_inv(19,5,"|||||||||||||");break;
			case 3: write_text_inv(25,5,"||||||||||||||");break;
			case 4: write_text_inv(32,5,"||||||||||||||");break;
		}
		write_text_inv(9,5,text_str_48k);
		write_text_inv(14,5,text_str_64k);
		write_text_inv(19,5,text_str_128k);
		write_text_inv(25,5,text_str_plus2);
		write_text_inv(32,5,text_str_plus3);
	}
	else
	{
		write_text(2,5,text_str_mode);
		switch(menuOpt_mode)
		{
			case 0: write_text( 9,5,"|||||||||||");break;
			case 1: write_text(14,5,"|||||||||||");break;
			case 2: write_text(19,5,"|||||||||||||");break;
			case 3: write_text(25,5,"||||||||||||||");break;
			case 4: write_text(32,5,"||||||||||||||");break;
		}
		write_text(9,5,text_str_48k);
		write_text(14,5,text_str_64k);
		write_text(19,5,text_str_128k);
		write_text(25,5,text_str_plus2);
		write_text(32,5,text_str_plus3);
	}
	write_text(2,6,text_str_separator);

	write_text(2,7,text_str_separator);
	if (c==1)
	{
		write_text_sel(2,8,296,text_str_joy);
		switch(menuOpt_joy)
		{
			case 0: write_text_inv( 9,8,"||||||||||||||||");break;
			case 1: write_text_inv(16,8,"|||||||||||||||||");break;
			case 2: write_text_inv(24,8,"|||||||||||||||");break;
			case 3: write_text_inv(31,8,"|||||||||||||||");break;
		}
		write_text_inv(9,8,text_str_cur);
		write_text_inv(16,8,text_str_kem);
		write_text_inv(24,8,text_str_si1);
		write_text_inv(31,8,text_str_si2);

	}
	else
	{
		write_text(2,8,text_str_joy);
		switch(menuOpt_joy)
		{
			case 0: write_text( 9,8,"||||||||||||||||");break;
			case 1: write_text(16,8,"|||||||||||||||||");break;
			case 2: write_text(24,8,"|||||||||||||||");break;
			case 3: write_text(31,8,"|||||||||||||||");break;
		}
		write_text(9,8,text_str_cur);
		write_text(16,8,text_str_kem);
		write_text(24,8,text_str_si1);
		write_text(31,8,text_str_si2);
	}
	write_text(2,9,text_str_separator);

	write_text(2,11,text_str_separator);
	if (c==2)
	{
		write_text_sel(2,12,296,text_str_ay);
		if (menuOpt_ay)
			write_text_inv(28,12,"|||||||");
		else
			write_text_inv(19,12,"|||||||||");
		write_text_inv(19,12,text_str_off);
		write_text_inv(28,12,text_str_on);
	}
	else
	{
		write_text(2,12,text_str_ay);
		if (menuOpt_ay)
			write_text(28,12,"|||||||");
		else
			write_text(19,12,"|||||||||");
		write_text(19,12,text_str_off);
		write_text(28,12,text_str_on);
	}
	write_text(2,13,text_str_separator);
	
	write_text(2,14,text_str_separator);
	if (c==3)
	{
		write_text_sel(2,15,296,text_str_intr);
		if (menuOpt_intr)
			write_text_inv(28,15,"|||||||");
		else
			write_text_inv(19,15,"|||||||||");
		write_text_inv(19,15,text_str_off);
		write_text_inv(28,15,text_str_on);
	}
	else
	{
		write_text(2,15,text_str_intr);
		if (menuOpt_intr)
			write_text(28,15,"|||||||");
		else
			write_text(19,15,"|||||||||");
		write_text(19,15,text_str_off);
		write_text(28,15,text_str_on);
	}
	write_text(2,16,text_str_separator);

	write_text(2,17,text_str_separator);
	if (c==4)
	{
		write_text_sel(2,18,296,text_str_fast);
		if (menuOpt_fast)
			write_text_inv(28,18,"|||||||");
		else
			write_text_inv(19,18,"|||||||||");
		write_text_inv(19,18,text_str_off);
		write_text_inv(28,18,text_str_on);
	}
	else
	{
		write_text(2,18,text_str_fast);
		if (menuOpt_fast)
			write_text(28,18,"|||||||");
		else
			write_text(19,18,"|||||||||");
		write_text(19,18,text_str_off);
		write_text(28,18,text_str_on);
	}
	write_text(2,19,text_str_separator);

	write_text(2,21,text_str_separator);
	if ((c==5)) //&&(bb))
		write_text_sel(2,22,296,text_str_exit);
	else
		write_text(2,22,text_str_exit);
	write_text(2,23,text_str_separator);

	text_flip();
}

static int set_pos_by_mouse(int posx, int posy, int click)
{
	int x=TV_ConvertMousePosX(posx);
	int y=TV_ConvertMousePosY(posy);
	if (x>(2*8) && x<(296+2*8) && y>(5*8) && y<(5+6*8))
	{
		position_c=0;
		if (click)
		{
			if (x>(9*8) && x<(4+12*8))
				menuOpt_mode=0;
			else
			if (x>(14*8) && x<(4+17*8))
				menuOpt_mode=1;
			else
			if (x>(19*8) && x<(4+23*8))
				menuOpt_mode=2;
			else
			if (x>(25*8) && x<(4+30*8))
				menuOpt_mode=3;
			else
			if (x>(32*8) && x<(4+37*8))
				menuOpt_mode=4;
		}
		return 1;
	}
	else
	if (x>(2*8) && x<(296+2*8) && y>(8*8) && y<(5+9*8))
	{
		position_c=1;
		if (click)
		{
			if (x>(9*8) && x<(4+14*8))
				menuOpt_joy=0;
			else
			if (x>(16*8) && x<(4+22*8))
				menuOpt_joy=1;
			else
			if (x>(24*8) && x<(4+29*8))
				menuOpt_joy=2;
			else
			if (x>(31*8) && x<(4+37*8))
				menuOpt_joy=3;
		}
		return 1;
	}
	else
	if (x>(2*8) && x<(296+2*8) && y>(12*8) && y<(5+13*8))
	{
		position_c=2;
		if (click)
		{
			if (x>(19*8) && x<(4+22*8))
				menuOpt_ay=0;
			else
			if (x>(28*8) && x<(4+30*8))
				menuOpt_ay=-1;
		}
		return 1;
	}
	else
	if (x>(2*8) && x<(296+2*8) && y>(15*8) && y<(5+16*8))
	{
		position_c=3;
		if (click)
		{
			if (x>(19*8) && x<(4+22*8))
				menuOpt_intr=0;
			else
			if (x>(28*8) && x<(4+30*8))
				menuOpt_intr=-1;
		}
		return 1;
	}
	else
	if (x>(2*8) && x<(296+2*8) && y>(18*8) && y<(5+19*8))
	{
		position_c=4;
		if (click)
		{
			if (x>(19*8) && x<(4+22*8))
				menuOpt_fast=0;
			else
			if (x>(28*8) && x<(4+30*8))
				menuOpt_fast=-1;
		}
		return 1;
	}
	else
	if (x>(2*8) && x<(296+2*8) && y>(22*8) && y<(5+23*8))
	{
		position_c=5;
		return 1;
	}
	return 0;
}

static inline int key_menuOpt(void)
{
	static int mouse_x=0;
        static int mouse_y=0;
	int c=position_c;
	int back_c=-1;
	int end=0;
	int left=0, right=0, up=0, down=0;
	int hit0=0, hit1=0, hit2=0, hit3=0, hit4=0, hit5=0;
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
			menuOpt_case=OPT_MENU_CASE_EXIT;
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
				case SDLK_z:
				case SDLK_RETURN:
				case SDLK_e:
				case SDLK_LCTRL: hit0=1; break;
				case SDLK_2:
				case SDLK_BACKSPACE: hit2=1; break;
				case SDLK_1:
				case SDLK_TAB: hit3=1; break;
				case SDLK_x:
				case SDLK_SPACE: hit4=1; break;
				case SDLK_c:
				case SDLK_LSHIFT: hit5=1; break;
				case SDLK_q:
				case SDLK_LALT: hit1=1; break;
#ifndef DREAMCAST
				case SDLK_F5: TV_ToggleFullScreen(screen);break;
				case SDLK_F6: TV_ToggleFilter(); break;
				case SDLK_F7: TV_ToggleDistorsion();break;
				case SDLK_F8: TV_ToggleScanlines();break;
//				case SDLK_F9: TV_ToggleTV();break;
#endif
			}
		}
	}

	if (hit1)
	{
		menuOpt_case=OPT_MENU_CASE_CANCEL;
		end=1;
	}
	else if (hit2)
	{
		back_c=c;
		c=3;
		hit0=1;
	}
	else if (hit3)
	{
		back_c=c;
		c=4;
		hit0=1;
	}
	else if (hit4)
	{
		back_c=c;
		c=1;
		hit0=1;
	}
	else if (hit5)
	{
		back_c=c;
		c=2;
		hit0=1;
	}
	else if (up)
	{
		if (c>0) c=(c-1)%6;
		else c=5;
	}
	else if (down)
		c=(c+1)%6;
	else
	switch(c)
	{
		case 0:
			if ((right)&&(menuOpt_mode<4))
				menuOpt_mode++;
			else
			if ((left)&&(menuOpt_mode))
				menuOpt_mode--;
			break;
		case 1:
			if ((right)&&(menuOpt_joy<3))
				menuOpt_joy++;
			else
			if ((left)&&(menuOpt_joy))
				menuOpt_joy--;
			break;
		case 2:
			if ((left)||(right))
			{
				if (menuOpt_ay)
					menuOpt_ay=0;
				else
					menuOpt_ay=1;
			}
			break;
		case 3:
			if ((left)||(right))
			{
				if (menuOpt_intr)
					menuOpt_intr=0;
				else
					menuOpt_intr=1;
			}
			break;
		case 4:
			if ((left)||(right))
			{
				if (menuOpt_fast)
					menuOpt_fast=0;
				else
					menuOpt_fast=1;
			}
			break;
		case 5:
			if (hit0)
			{
				menuOpt_case=OPT_MENU_CASE_EXIT;
				end=1;
			}
			break;
	}
	if (back_c>=0)
	{
		c=back_c;
		back_c=-1;
	}

	position_c=c;
	return end;
}

static inline void raise_menuOpt()
{
	int i;

	zx4all_play_click();
	text_draw_background();
	text_flip();
	for(i=0;i<8;i++)
	{
		text_draw_background();
		text_draw_window(128-(8*i),(8-i)*24,144+(8*i),172,"");
		text_flip();
		SDL_Delay(15);
	}
}

static inline void unraise_menuOpt()
{
	int i;

	for(i=7;i>=0;i--)
	{
		text_draw_background();
		text_draw_window(128-(8*i),(8-i)*24,144+(8*i),160,"");
		text_flip();
		SDL_Delay(15);
	}
	text_draw_background();
	text_flip();
}

int run_menuOpt()
{
	int end;
	menuOpt_case=-1;
	position_c=0;
	while(menuOpt_case<0)
	{
		raise_menuOpt();
		end=0;
		while(!end)
		{
			draw_optMenu();
			end=key_menuOpt();
		}
		unraise_menuOpt();
		switch(menuOpt_case)
		{
			case OPT_MENU_CASE_EXIT:	
			case OPT_MENU_CASE_CANCEL:	
				menuOpt_case=1;
				break;
			default:
				menuOpt_case=-1;
		}
	}

	return menuOpt_case;
}
#endif
