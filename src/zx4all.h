#ifndef EMULADOR_H
#define EMULADOR_H

#include "z80intrf.h"
#include "computer.h"

#define ZX4ALL_VERSION "beta2"

#define NUM_SNDBUF 2
#define DEFAULT_SOUND_FREQ 44100
#ifdef DREAMCAST
#define DEFAULT_SOUND_BUFLEN 1024
#else
#if !defined(WIN32) || !defined(NO_USE_TV_FILTER)
#define DEFAULT_SOUND_BUFLEN 1024
#else
#define DEFAULT_SOUND_BUFLEN 2048
#endif
#endif
#define DEFAULT_SOUND_CHANNELS 1

#define MUSIC_VOLUME 96

#ifndef NAME_CAPTION
#define NAME_CAPTION "ZX4ALL"
#endif

extern SDL_Surface *screen;
extern struct computer cmpt;
extern unsigned char *sound[];
extern char path_snaps[2049];
extern char path_taps[2049];
extern char path_mdrs[2049];

extern int mainMenu_frameskip;
void reset_frameskip();
void getChanges(void);
void setChanges(void);

void load_rom(char);
void load_rom_loading(char);

void zx4all_clear_events(void);
#ifdef DREAMCAST
void zx4all_back_keys(void);
void zx4all_remap_keys(void);
#else
#define zx4all_back_keys()
#define zx4all_remap_keys()
#endif

void zx4all_setup_sdl(void);

#endif
