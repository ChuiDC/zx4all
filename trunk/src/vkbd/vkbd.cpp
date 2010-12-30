#include<stdio.h>
#include<stdlib.h>
#include<SDL.h>
#include<SDL_image.h>

#include "vkbd.h"

#define MIN_VKBD_TIME 100

#define MAX_KEY 40

extern SDL_Surface *screen;

static SDL_Surface *ksur, *vkey[MAX_KEY];

static int vkbd_actual=0, vkbd_color=0;

int vkbd_mode=0;
int vkbd_move=0;
SDLKey vkbd_key=(SDLKey)0;
SDLKey vkbd_button2=(SDLKey)0;
SDLKey vkbd_button3=(SDLKey)0;
SDLKey vkbd_button4=(SDLKey)0;
int vkbd_keysave=-1234567;

typedef struct{
	SDL_Rect rect;
	unsigned char up,down,left,right;
	SDLKey key;
} t_vkbd_rect;



static t_vkbd_rect vkbd_rect[]=
{
	{{  6, 4, 7, 5 },30,10, 9, 1, SDLK_1},	// 0
	{{ 16, 4, 7, 5 },31,11, 0, 2, SDLK_2},	// 1
	{{ 25, 4, 7, 5 },32,12, 1, 3, SDLK_3},	// 2
	{{ 35, 4, 7, 5 },33,13, 2, 4, SDLK_4},	// 3
	{{ 44, 4, 7, 5 },34,14, 3, 5, SDLK_5},	// 4
	{{ 53, 4, 7, 5 },35,15, 4, 6, SDLK_6},	// 5 
	{{ 63, 4, 7, 5 },36,16, 5, 7, SDLK_7},	// 6
	{{ 72, 4, 7, 5 },37,17, 6, 8, SDLK_8},	// 7 
	{{ 82, 4, 7, 5 },38,18, 7, 9, SDLK_9},	// 8 
	{{ 91, 4, 7, 5 },39,19, 8, 0, SDLK_0},  // 9 

	{{ 11,14, 7, 5 }, 0,20,19,11, SDLK_q},	// 10 
	{{ 21,14, 7, 5 }, 1,21,10,12, SDLK_w},	// 11
	{{ 30,14, 7, 5 }, 2,22,11,13, SDLK_e},	// 12
	{{ 40,14, 7, 5 }, 3,23,12,14, SDLK_r},	// 13
	{{ 49,14, 7, 5 }, 4,24,13,15, SDLK_t},	// 14
	{{ 58,14, 7, 5 }, 5,25,14,16, SDLK_y},	// 15
	{{ 68,14, 7, 5 }, 6,26,15,17, SDLK_u},	// 16
	{{ 77,14, 7, 5 }, 7,27,16,18, SDLK_i},	// 17
	{{ 87,14, 7, 5 }, 8,28,17,19, SDLK_o},	// 18
	{{ 96,14, 7, 5 }, 9,29,18,10, SDLK_p},	// 19

	{{ 13,23, 7, 5 },10,30,29,21, SDLK_a},	// 20 
	{{ 23,23, 7, 5 },11,31,20,22, SDLK_s},	// 21
	{{ 32,23, 7, 5 },12,32,21,23, SDLK_d},	// 22
	{{ 41,23, 7, 5 },13,33,22,24, SDLK_f},	// 23
	{{ 51,23, 7, 5 },14,34,23,25, SDLK_g},	// 24
	{{ 60,23, 7, 5 },15,35,24,26, SDLK_h},	// 25
	{{ 70,23, 7, 5 },16,36,25,27, SDLK_j},	// 26
	{{ 79,23, 7, 5 },17,37,26,28, SDLK_k},	// 27
	{{ 89,23, 7, 5 },18,38,27,29, SDLK_l},	// 28
	{{ 98,23, 7, 5 },19,39,28,20, SDLK_RETURN},	// 29

	{{  6,33,10, 5 },20, 0,39,31, SDLK_LSHIFT},	// 30 
	{{ 18,33, 7, 5 },21, 1,30,32, SDLK_z},	// 31
	{{ 27,33, 7, 5 },22, 2,31,33, SDLK_x},	// 32
	{{ 37,33, 7, 5 },23, 3,32,34, SDLK_c},	// 33
	{{ 46,33, 7, 5 },24, 4,33,35, SDLK_v},	// 34
	{{ 55,33, 7, 5 },25, 5,34,36, SDLK_b},	// 35
	{{ 65,33, 7, 5 },26, 6,35,37, SDLK_n},	// 36
	{{ 74,33, 7, 5 },27, 7,36,38, SDLK_m},	// 37
	{{ 84,33, 7, 5 },28, 8,37,39, SDLK_RCTRL},	// 38
	{{ 93,33,10, 5 },29, 9,38,30, SDLK_SPACE},	// 39
};


static int lshift=0;
static int rctrl=0;


void vkbd_init_button2(void)
{
	vkbd_button2=(SDLKey)0;
	vkbd_button3=(SDLKey)0;
	vkbd_button3=(SDLKey)0;
}

int vkbd_init(void)
{
	int i;
	char tmpchar[256];
	SDL_Surface *tmp=IMG_Load(DATA_PREFIX "vkbd.png");
	if (tmp==NULL)
	{
		printf("Virtual Keyboard Bitmap Error: %s\n",SDL_GetError());
		return -1;
	}
	ksur=SDL_ConvertSurface(tmp,screen->format,SDL_RLEACCEL);
	SDL_FreeSurface(tmp);
	for(i=0;i<MAX_KEY;i++)
		vkey[i]=NULL;
	for(i=0;i<MAX_KEY;i++)
	{
		sprintf(tmpchar,DATA_PREFIX "key%i.png", i);
		tmp=IMG_Load(tmpchar);
		if (tmp==NULL)
			break;
		vkey[i]=SDL_ConvertSurface(tmp,screen->format,SDL_RLEACCEL);
		SDL_FreeSurface(tmp);
	}
	vkbd_actual=0;
//	vkbd_redraw();
	vkbd_mode=0;
	vkbd_init_button2();
	return 0;
}


void vkbd_quit(void)
{
	int i;
	for(i=0;i<MAX_KEY;i++)
		SDL_FreeSurface(vkey[i]);
	SDL_FreeSurface(ksur);
	vkbd_mode=0;
}

static void draw_key(void)
{
	SDL_Rect r;
	r.x=VKBD_X+ksur->w+2;
	r.y=240-40+2;
	r.w=vkey[vkbd_actual]->w;
	r.h=vkey[vkbd_actual]->h;
	SDL_BlitSurface(vkey[vkbd_actual],NULL,screen,&r);
}

void vkbd_redraw(void)
{
	SDL_Rect r;
	r.x=VKBD_X;
	r.y=240-40;
	r.w=ksur->w;
	r.h=ksur->h;
	SDL_BlitSurface(ksur,NULL,screen,&r);
	draw_key();
}

SDLKey vkbd_process(void)
{
	static Uint32 last_time=0;
	Uint32 now=SDL_GetTicks();
	int canmove=(now-last_time>MIN_VKBD_TIME);
	SDL_Rect r;
	vkbd_redraw();
	if (vkbd_move&VKBD_BUTTON)
	{
		vkbd_move=0;
		if (vkbd_actual==30)
		{
			lshift = ~lshift;
			if (lshift)
				return SDLK_LSHIFT;
			return SDLK_RSHIFT;
		}
		else
		if (vkbd_actual==38)
		{
			rctrl = ~rctrl;
			if (rctrl)
				return SDLK_RCTRL;
			return SDLK_LCTRL;
		}
		return vkbd_rect[vkbd_actual].key;
	}
	else
	if (vkbd_move&VKBD_BUTTON2)
	{
		vkbd_move=0;
		vkbd_button2=vkbd_rect[vkbd_actual].key;
		return (SDLKey)0;
	}
	else
	if (vkbd_move&VKBD_BUTTON3)
	{
		vkbd_move=0;
		vkbd_button3=vkbd_rect[vkbd_actual].key;
		return (SDLKey)0;
	}
	else
	if (vkbd_move&VKBD_BUTTON4)
	{
		vkbd_move=0;
		vkbd_button4=vkbd_rect[vkbd_actual].key;
		return (SDLKey)0;
	}

	if (canmove)
	{
		last_time=now;
		if (vkbd_move&VKBD_LEFT)
			vkbd_actual=vkbd_rect[vkbd_actual].left;
		else if (vkbd_move&VKBD_RIGHT)
			vkbd_actual=vkbd_rect[vkbd_actual].right;
		if (vkbd_move&VKBD_UP)
			vkbd_actual=vkbd_rect[vkbd_actual].up;
		else if (vkbd_move&VKBD_DOWN)
			vkbd_actual=vkbd_rect[vkbd_actual].down;
	}
		
	r.x=VKBD_X+vkbd_rect[vkbd_actual].rect.x;
	r.y=240-40+vkbd_rect[vkbd_actual].rect.y;
	r.w=vkbd_rect[vkbd_actual].rect.w;
	r.h=vkbd_rect[vkbd_actual].rect.h;

	SDL_FillRect(screen,&r,vkbd_color);

	if ((lshift)&&(vkbd_actual!=30))
	{
		r.x=VKBD_X+vkbd_rect[30].rect.x;
		r.y=240-40+vkbd_rect[30].rect.y;
		r.w=vkbd_rect[30].rect.w;
		r.h=vkbd_rect[30].rect.h;
		SDL_FillRect(screen,&r,vkbd_color&0x66666666);
	}

	if ((rctrl)&&(vkbd_actual!=38))
	{
		r.x=VKBD_X+vkbd_rect[38].rect.x;
		r.y=240-40+vkbd_rect[38].rect.y;
		r.w=vkbd_rect[38].rect.w;
		r.h=vkbd_rect[38].rect.h;
		SDL_FillRect(screen,&r,vkbd_color&0x66666666);
	}

	vkbd_color = ~vkbd_color;
	
	if (vkbd_move && vkey[vkbd_actual]!=NULL)
		draw_key();
	return (SDLKey)0;
}
