#include<stdio.h>
#include<SDL.h>

#include "tvfilter/tvfilter.h"

extern SDL_Surface *screen;

#define MENU_FILE_SPLASH DATA_PREFIX "splash.png"
#define MENU_FILE_BACKGROUND DATA_PREFIX "background.png"
#define MENU_FILE_WINDOW DATA_PREFIX "window.png"
#define MENU_FILE_TEXT DATA_PREFIX "font.png"
#define MENU_FILE_TEXT2 DATA_PREFIX "font2.png"
#define MENU_FILE_MAC_UPPER_LEFT DATA_PREFIX "mac-upper-left.png"
#define MENU_FILE_MAC_UPPER_RIGHT DATA_PREFIX "mac-upper-right.png"
#define MENU_FILE_MAC_UPPER DATA_PREFIX "mac-upper.png"
#define MENU_FILE_MAC_BOTTOM_LEFT DATA_PREFIX "mac-bottom-left.png"
#define MENU_FILE_MAC_BOTTOM_RIGHT DATA_PREFIX "mac-bottom-right.png"
#define MENU_FILE_MAC_BOTTOM DATA_PREFIX "mac-bottom.png"
#define MENU_FILE_MAC_LEFT DATA_PREFIX "mac-left.png"
#define MENU_FILE_MAC_RIGHT DATA_PREFIX "mac-right.png"
#ifdef DREAMCAST
#define MENU_DIR_DEFAULT "/cd/"
#else
#define MENU_DIR_DEFAULT "."
#endif

#ifndef NO_MENU
void text_draw_background();
void init_text(int splash);
void quit_text(void);
void write_text(int x, int y, char * str);
void write_text_inv(int x, int y, char * str);
void write_text_sel(int x, int y, int w, char * str);
void write_centered_text(int y, char * str);
void write_num(int x, int y, int v);
void write_num_inv(int x, int y, int v);
void text_draw_window(int x, int y, int w, int h, char *title);
// void text_draw_menu_msg();
void text_flip(void);

void drawPleaseWait(void);
void menu_raise(void);
void menu_unraise(void);

int run_mainMenu();
int run_menuLoadSNAP();
int run_menuLoadTAPE();
int run_menuOpt();

int vid_screenshot(char *filename);


#else

#define text_draw_background()
#define init_text(SPL)
#define quit_text()
#define write_text(X,Y,STR)
#define write_text_inv(X,Y,STR)
#define write_centered_text(Y,STR)
#define write_num(X,Y,V)
#define write_num_inv(X,Y,V)
#define text_draw_window(X,Y,W,H,TITLE)
#define text_draw_menu_msg()
#define text_flip()
#define drawPleaseWait()
#define menu_raise()
#define menu_unraise()
#define run_mainMenu() 1
#define run_menuLoadSNAP() 1
#define run_menuLoadTAPE() 1
#define run_menuOpt() 1

#endif

