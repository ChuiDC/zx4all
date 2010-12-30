
#ifndef NO_MENU

#include<stdio.h>
#include<stdlib.h>
#include<string.h>

#include "menu.h"

#include <sys/stat.h>
#include <unistd.h>
#include <dirent.h>

#include "zx4all.h"
#include "sound.h"

#define MAX_FILELEN 128-3

typedef struct{
	char d_name[MAX_FILELEN+2];
	char d_type;
}fichero;

#ifdef DREAMCAST
#define chdir(A) fs_chdir(A)
#endif

extern char zx4all_image_file[];
extern char zx4all_tape_file[];

static char *text_str_load_separator="~~~~~~~~~~~~~~~~~~~~~~~~";
static char *text_str_load_dir="#DIR#";
static char *text_str_load_title="Filemanager";
static fichero *text_dir_files=NULL;
static int text_dir_num_files=0, text_dir_num_files_index=0;

static char *load_file=zx4all_image_file;

#define MAX_FILES_PER_DIR 4096
#define SHOW_MAX_FILES 12

#ifdef DREAMCAST
#define chdir(A) fs_chdir(A)
static char actual_dir[128];
#else
static char init_dir[128];
#endif


static int min_in_dir=0, max_in_dir=SHOW_MAX_FILES;

static int compare_names(fichero *a, fichero *b)
{
	return strcmp(a->d_name,b->d_name);
}

static void copyCompleteName(char *dest, int n)
{
	char *src=text_dir_files[n].d_name;
	if (strlen(src)<MAX_FILELEN)
		strcpy(dest,src);
	else
	{
#ifdef DREAMCAST
		DIR *d=opendir(actual_dir);
#else
		DIR *d=opendir(".");
#endif
		if (d)
		{
			int i,indice=0,buscado=src[MAX_FILELEN+1];
			for(i=0;i<MAX_FILES_PER_DIR;i++)
			{
				struct dirent *actual=readdir(d);
				if (actual==NULL)
				{
					dest[0]=0;
					break;
				}
				if (!strncmp(src,actual->d_name,MAX_FILELEN))
				{
					if (indice==buscado)
					{
						strcpy(dest,actual->d_name);
						break;
					}
					indice++;
				}
			}
			closedir(d);
		}
		else
			dest[0]=0;
	}

}

static int checkFiles(void)
{
	char *buf=(char *)calloc(1,2046);
	int i,max=text_dir_num_files;
	int ret=(text_dir_num_files<1);
	if (max>16)
		max=16;
	for(i=0;(i<max)&&(!ret);i++)
	{
		copyCompleteName(buf,i);
		if (!buf[0])
			ret=1;
		else
		if (!text_dir_files[i].d_type)
		{
			FILE *f=fopen(buf,"rb");
			if (!f)
				ret=1;
			else
				fclose(f);
		}
		else
		if (strcmp(buf,".."))
		{
			DIR *d=opendir(buf);
			if (!d)
				ret=1;
			else
				closedir(d);
		}
	}
	free(buf);
	return ret;
}

static int getFiles(char *dir)
{
	int i,j;
	DIR *d;
	text_dir_num_files_index=0;
	text_dir_num_files=0;
	min_in_dir=0;
	max_in_dir=SHOW_MAX_FILES;

	if (text_dir_files!=NULL)
		free(text_dir_files);

	text_draw_window(96,64,140,32,"-------");
	write_text(14,9,"Please wait");
	text_flip();

	text_dir_files=(fichero *)calloc(sizeof(fichero),MAX_FILES_PER_DIR);
#ifdef DREAMCAST
        if (!strcmp(dir,".."))
        {
                int ind;
                for(ind=strlen(actual_dir)-1;ind>0;ind--)
                        if (actual_dir[ind]=='/')
                        {
                                actual_dir[ind]=0;
                                break;
                        }
                d=opendir(actual_dir);
        }
        else
#endif
	d=opendir(dir);
	if (d==NULL)
		return -1;
	for(i=0;i<MAX_FILES_PER_DIR;i++)
	{
		struct dirent *actual=readdir(d);
		if (actual==NULL)
			break;
		if ((!strcmp(actual->d_name,"."))||(!strcmp(actual->d_name,"kick.rom"))||
		    (!strcmp(actual->d_name,"ip.bin"))||(!strcmp(actual->d_name,"1st_read.bin")))
		{
			i--;
			continue;
		}
		memset(text_dir_files[i].d_name,0,MAX_FILELEN+1);
		strncpy(text_dir_files[i].d_name,actual->d_name,MAX_FILELEN);
		if (strlen(text_dir_files[i].d_name)==MAX_FILELEN)
		{
			int jjg,indice=0;
			for(jjg=0;jjg<i;jjg++)
				if (!(strcmp(text_dir_files[i].d_name,text_dir_files[jjg].d_name)))
						indice++;
			text_dir_files[jjg].d_name[MAX_FILELEN+1]=indice;
		}
#ifndef DREAMCAST
		{
			struct stat sstat;
			char *tmp=(char *)calloc(1,256);
			strcpy(tmp,dir);
			strcat(tmp,"/");
			strcat(tmp,text_dir_files[i].d_name);
			if (!stat(tmp, &sstat))
		        	if (S_ISDIR(sstat.st_mode))
					text_dir_files[i].d_type=4;
			free(tmp);
		}
#else
		text_dir_files[i].d_type=actual->d_type & 4;
#endif
	}
	closedir(d);
	text_dir_num_files=i;

#ifndef DREAMCAST
        chdir(dir);
#else
        if (strcmp(dir,MENU_DIR_DEFAULT))
        {
                if (strcmp(dir,".."))
                {
                        strcat(actual_dir,"/");
                        strcat(actual_dir,dir);
                }
        }
        chdir(actual_dir);
        if (strcmp(actual_dir,MENU_DIR_DEFAULT))
        {
		strcpy(text_dir_files[i].d_name,"..");
                text_dir_files[i].d_type=4;
                if (text_dir_num_files>0)
                {
                        char *pptmp=(char *)calloc(1,256);
                        int tmptype=text_dir_files[0].d_type;
                        strcpy(pptmp,text_dir_files[0].d_name);
                        text_dir_files[0].d_type=text_dir_files[text_dir_num_files].d_type;
                        text_dir_files[text_dir_num_files].d_type=tmptype;
                        strcpy(text_dir_files[0].d_name,text_dir_files[text_dir_num_files].d_name);
                        strcpy(text_dir_files[text_dir_num_files].d_name,pptmp);
                        free(pptmp);
                }
                text_dir_num_files++;
	}
#endif

	for(i=0;i<text_dir_num_files;i++)
	{
		if (text_dir_files[i].d_type==0)
			for(j=i;j<text_dir_num_files;j++)
				if (text_dir_files[j].d_type==4)
				{
					char *ctmp=(char *)calloc(1,256);
					strcpy(ctmp,text_dir_files[j].d_name);
					strcpy(text_dir_files[j].d_name,text_dir_files[i].d_name);
					strcpy(text_dir_files[i].d_name,ctmp);
					text_dir_files[i].d_type=4;
					text_dir_files[j].d_type=0;
					free(ctmp);
					break;
				}
	}
	for(i=0;i<text_dir_num_files;i++)
		if (text_dir_files[i].d_type==0)
		{
			qsort((void *)&text_dir_files[i],text_dir_num_files-i,sizeof(fichero),(int (*)(const void*, const void*))compare_names);
			break;
		}
	return 0;
}

static int position_c=0;

static void draw_loadMenu()
{
	int i,j;
	int c=position_c;
//	static int b=0;
//	int bb=(b%6)/3;
	SDL_Rect r;
	extern SDL_Surface *text_screen;
//	r.x=80-64; r.y=0; r.w=110+64+64; r.h=240;
	r.x=80-64; r.y=18; r.w=110+64+64-16; r.h=208;

	text_draw_background();
//	text_draw_window(80-64,12,160+64+64,220,text_str_load_title);
	text_draw_window(80-64,18,160+64+64-4,208-2,text_str_load_title);

	if (text_dir_num_files_index<min_in_dir)
	{
		min_in_dir=text_dir_num_files_index;
		max_in_dir=text_dir_num_files_index+SHOW_MAX_FILES;
	}
	else
		if (text_dir_num_files_index>=max_in_dir)
		{
			max_in_dir=text_dir_num_files_index+1;
			min_in_dir=max_in_dir-SHOW_MAX_FILES;
		}
	if (max_in_dir>text_dir_num_files)
		max_in_dir=text_dir_num_files-min_in_dir;


	for (i=min_in_dir,j=1;i<max_in_dir;i++,j+=2)
	{
		if (i!=min_in_dir)
			write_text(3,j+1,text_str_load_separator);

		SDL_SetClipRect(text_screen,&r);

		if ((text_dir_num_files_index==i)) //&&(bb))
			write_text_sel(3,j+2,276,(char *)&text_dir_files[i].d_name);
		else
			write_text(3,j+2,(char *)&text_dir_files[i].d_name);

		SDL_SetClipRect(text_screen,NULL);

		if (text_dir_files[i].d_type==4)
			write_text(30,j+2,text_str_load_dir);
	}
//	write_text(3,j,text_str_load_separator);
	text_flip();
//	b++;
}

static int upping=0;
static int downing=0;

static int set_pos_by_mouse(int posx, int posy, int click)
{
	int x=TV_ConvertMousePosX(posx);
	int y=TV_ConvertMousePosY(posy);
	upping=downing=0;
	if (x>(3*8) && x<(276+3*8))
	{
		if (y<26)
			upping=1;
		else if (y>(26+(8*(2*SHOW_MAX_FILES))))
			downing=1;
		else
		{
			y-=26;
			y/=8;
			if (!(y&1))
			{
				y/=2;
				int new_index=min_in_dir+y;
				if (new_index<max_in_dir)	
					text_dir_num_files_index=new_index;
			}
		}
	}

	return click;
}

static int key_loadMenu(void)
{
	static int mouse_x=0;
        static int mouse_y=0;
	int end=0;
	int c=position_c;
	int left=0, right=0, up=0, down=0, hit0=0, hit1=0, hit2=0;
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
			end=-1;
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
				case SDLK_x:
				case SDLK_SPACE:
				case SDLK_c:
				case SDLK_LSHIFT: hit2=1; break;
				case SDLK_z:
				case SDLK_RETURN:
				case SDLK_e:
				case SDLK_LCTRL: hit0=1; break;
				case SDLK_q:
				case SDLK_ESCAPE:
				case SDLK_LALT: hit1=1; break;
				case SDLK_1:
				case SDLK_TAB:
						if (text_dir_num_files)
							text_dir_num_files_index=text_dir_num_files-1;
						break;
				case SDLK_2:
				case SDLK_BACKSPACE:
						text_dir_num_files_index=0;
						break;
#ifndef DREAMCAST
				case SDLK_F5: TV_ToggleFullScreen(screen);break;
				case SDLK_F6: TV_ToggleFilter(); break;
				case SDLK_F7: TV_ToggleDistorsion();break;
				case SDLK_F8: TV_ToggleScanlines();break;
//				case SDLK_F9: TV_ToggleTV();break;
#endif
			}
		}
		if ((hit0)||(hit2))
		{
			if ((text_dir_files[text_dir_num_files_index].d_type==4)||(!strcmp((char *)&text_dir_files[text_dir_num_files_index].d_name,"."))||(!strcmp((char *)&text_dir_files[text_dir_num_files_index].d_name,"..")))
			{
				char *tmp=(char *)calloc(1,512);
				strcpy(tmp,text_dir_files[text_dir_num_files_index].d_name);
				if (getFiles(tmp))
					end=-1;
				free(tmp);
			}
			else
			{
				copyCompleteName(load_file,text_dir_num_files_index);
				end=1;
			}
		}
		else if (hit2)
		{
		}
		else if (hit1)
			end=-1;
		else if ((up)&&(text_dir_num_files_index>0))
			text_dir_num_files_index--;
		else if ((down)&&(text_dir_num_files_index+1!=text_dir_num_files))
			text_dir_num_files_index++;
		else if (left)
		{
			text_dir_num_files_index-=SHOW_MAX_FILES;
			if (text_dir_num_files_index<0)
				text_dir_num_files_index=0;
		}
		else if (right)
		{
			text_dir_num_files_index+=SHOW_MAX_FILES;
			if (text_dir_num_files_index+1>=text_dir_num_files)
				text_dir_num_files_index=text_dir_num_files-1;
		}
	}
	{
		static unsigned cnt=0;
		cnt++;
		if (!(cnt&3))
		{
			if (upping)
			{
				if (text_dir_num_files_index)
				text_dir_num_files_index--;
			}
			else if (downing)
			{
				if (text_dir_num_files_index+1!=text_dir_num_files)
					text_dir_num_files_index++;
			}
		}
	}

	return end;
}

static void raise_loadMenu()
{
	int i;

	text_draw_background();
	text_flip();
	for(i=0;i<10;i++)
	{
		text_draw_background();
		text_draw_window(80-64,(10-i)*24,160+64+64,220,text_str_load_title);
		text_flip();
	}
}

static void unraise_loadMenu()
{
	int i;

	for(i=9;i>=0;i--)
	{
		text_draw_background();
		text_draw_window(80-64,(10-i)*24,160+64+64,220,text_str_load_title);
		text_flip();
	}
	text_draw_background();
	text_flip();
}


int getDefaultFiles(void)
{
#ifdef DREAMCAST
	strcpy(actual_dir,MENU_DIR_DEFAULT);
#endif
	return(getFiles(MENU_DIR_DEFAULT));
}

static int run_menuLoad()
{
	int end=0;
	
	position_c=0;
	upping=downing=0;

	if (text_dir_files==NULL)
		end=getDefaultFiles();
	else
		if (checkFiles())
			end=getDefaultFiles();

	raise_loadMenu();
	while(!end)
	{
		draw_loadMenu();
		end=key_loadMenu();
	}
	unraise_loadMenu();

	return end;
}


int run_menuLoadSNAP()
{
	static fichero *fich=NULL;
	static int num=0;
	static int ind=0;
	static int min=0;
	static int max=SHOW_MAX_FILES;
	static char adir[128];

#ifndef DREAMCAST
	if ((fich==NULL)&&(text_dir_files==NULL))
		getcwd(init_dir,128);
#endif
	if (fich!=text_dir_files)
	{
		if (fich==NULL)
		{
#ifdef DREAMCAST
			chdir(MENU_DIR_DEFAULT);
			strncpy(actual_dir,MENU_DIR_DEFAULT,128);
#else
			chdir(init_dir);
#endif
		}
		else
		{
#ifdef DREAMCAST
			strncpy(actual_dir,adir,128);
#else
			chdir(adir);
#endif
		}
		text_dir_files=fich;
		text_dir_num_files=num;
		text_dir_num_files_index=ind;
		min_in_dir=min;
		max_in_dir=max;
	}

	load_file=zx4all_image_file;

	int end=run_menuLoad();

	fich=text_dir_files;
	num=text_dir_num_files;
	ind=text_dir_num_files_index;
	min=min_in_dir;
	max=max_in_dir;
#ifdef DREAMCAST
	strncpy(adir,actual_dir,128);
#else
	getcwd(adir,128);
	strcat(adir,"/");
	strcat(adir,load_file);
	strcpy(load_file,adir);
	getcwd(adir,128);
#endif

	return end;
}


int run_menuLoadTAPE()
{
	static fichero *fich=NULL;
	static int num=0;
	static int ind=0;
	static int min=0;
	static int max=SHOW_MAX_FILES;
	static char adir[128];

#ifndef DREAMCAST
	if ((fich==NULL)&&(text_dir_files==NULL))
		getcwd(init_dir,128);
#endif
	if (fich!=text_dir_files)
	{
		if (fich==NULL)
		{
#ifdef DREAMCAST
			chdir(MENU_DIR_DEFAULT);
			strncpy(actual_dir,MENU_DIR_DEFAULT,128);
#else
			chdir(init_dir);
#endif
		}
		else
		{
#ifdef DREAMCAST
			strncpy(actual_dir,adir,128);
#else
			chdir(adir);
#endif
		}
		text_dir_files=fich;
		text_dir_num_files=num;
		text_dir_num_files_index=ind;
		min_in_dir=min;
		max_in_dir=max;
	}

	load_file=zx4all_tape_file;

	int end=run_menuLoad();

	fich=text_dir_files;
	num=text_dir_num_files;
	ind=text_dir_num_files_index;
	min=min_in_dir;
	max=max_in_dir;
#ifdef DREAMCAST
	strncpy(adir,actual_dir,128);
#else
	getcwd(adir,128);
	strcat(adir,"/");
	strcat(adir,load_file);
	strcpy(load_file,adir);
	getcwd(adir,128);
#endif

	return end;
}

#endif
