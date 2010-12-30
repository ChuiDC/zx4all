#include<stdio.h>
#include<stdlib.h>
#include<SDL.h>
#include<SDL_image.h>

#include "vtape.h"

#define MIN_VTAPE_TIME 100

#define MAX_KEY 6
#define MAX_TAPE 3

extern SDL_Surface *screen;
static SDL_Surface *ksur[3], *knum, *vkey[MAX_KEY];
static int vtape_actual=0, vtape_color=0, n_kur=1; //0;

typedef struct{
	SDL_Rect rect;
	unsigned char left,right;
	t_vtape_state state;
} t_vtape_rect;

static t_vtape_rect vtape_rect[]=
{
	{{  8, 34, 5, 5 }, 5, 1, VTAPE_SAVE},	// 0
	{{ 14, 34, 5, 5 }, 0, 2, VTAPE_PLAY},	// 1
	{{ 20, 34, 4, 5 }, 1, 3, VTAPE_REWIND},	// 2
	{{ 25, 34, 5, 5 }, 2, 4, VTAPE_FORWARD},// 3
	{{ 31, 34, 5, 5 }, 3, 5, VTAPE_SAVE},	// 4
	{{ 37, 34, 5, 5 }, 4, 0, VTAPE_PAUSE}	// 5 
};


int vtape_init(void)
{
	int i;
	char tmpchar[256];
	SDL_Surface *tmp;
	for(i=0;i<MAX_TAPE;i++)
	{
		sprintf(tmpchar,DATA_PREFIX "vtape%i.png", i);
		tmp=IMG_Load(tmpchar);
		if (tmp==NULL)
		{
			printf("Virtual Keyboard Bitmap Error: %s\n",SDL_GetError());
			return -1;
		}
		ksur[i]=SDL_ConvertSurface(tmp,screen->format,SDL_RLEACCEL);
		SDL_FreeSurface(tmp);
	}
	tmp=IMG_Load(DATA_PREFIX "vnumbers.png");
	if (tmp==NULL)
	{
		printf("Virtual Keyboard Bitmap Error: %s\n",SDL_GetError());
		return -1;
	}
	knum=SDL_ConvertSurface(tmp,screen->format,SDL_RLEACCEL);
	SDL_FreeSurface(tmp);
	for(i=0;i<MAX_KEY;i++)
		vkey[i]=NULL;
	for(i=0;i<MAX_KEY;i++)
	{
		sprintf(tmpchar,DATA_PREFIX "vtkey%i.png", i);
		tmp=IMG_Load(tmpchar);
		if (tmp==NULL)
			break;
		vkey[i]=SDL_ConvertSurface(tmp,screen->format,SDL_RLEACCEL);
		SDL_FreeSurface(tmp);
	}
	vtape_actual=0;
//	vtape_process();
	return 0;
}

void vtape_redraw(void)
{
	SDL_Rect r;
	r.x=VTAPE_X;
	r.y=VTAPE_Y;
	r.w=ksur[n_kur]->w;
	r.h=ksur[n_kur]->h;
	SDL_BlitSurface(ksur[n_kur],NULL,screen,&r);

	SDL_UpdateRect(screen, r.x, r.y, r.w, r.h);

}

int vtape_move=0;
int vtape_mode=0;
int vtape_pos=0;

t_vtape_state vtape_process(void)
{
	static Uint32 last_time=0;
	Uint32 now=SDL_GetTicks();
	int canmove=(now-last_time>MIN_VTAPE_TIME);
	SDL_Rect r;
//	static int back_n_kur=-1;

	if (n_kur)
	{
		static int contador=0;
		contador++;
		if (!(contador&0x03))
		{
			n_kur++;
			if (n_kur>=MAX_TAPE)
				n_kur=1;
		}
	}
//	if ((vtape_move)||(n_kur!=back_n_kur))
	{
//		back_n_kur=n_kur;
		vtape_redraw();
	}

	if (canmove)
	{
		last_time=now;
		if (vtape_move&VTAPE_LEFT)
			vtape_actual=vtape_rect[vtape_actual].left;
		else if (vtape_move&VTAPE_RIGHT)
			vtape_actual=vtape_rect[vtape_actual].right;
	}
		
	r.x=VTAPE_X+vtape_rect[vtape_actual].rect.x;
	r.y=VTAPE_Y+vtape_rect[vtape_actual].rect.y;
	r.w=vtape_rect[vtape_actual].rect.w;
	r.h=vtape_rect[vtape_actual].rect.h;

	SDL_FillRect(screen,&r,vtape_color);

	SDL_UpdateRect(screen, r.x, r.y, r.w, r.h);

	vtape_color = ~vtape_color;
	
	if (/* vtape_move && */ vkey[vtape_actual]!=NULL)
	{
		r.x=VTAPE_X+ksur[n_kur]->w+10;
		r.y=VTAPE_Y+10;
		r.w=vkey[vtape_actual]->w;
		r.h=vkey[vtape_actual]->h;
		SDL_BlitSurface(vkey[vtape_actual],NULL,screen,&r);
	
		SDL_UpdateRect(screen, r.x, r.y, r.w, r.h);
	}

	if (vtape_move&VTAPE_BUTTON)
		return vtape_rect[vtape_actual].state;

	return VTAPE_NONE;
}
