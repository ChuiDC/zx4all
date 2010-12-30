#ifndef SOUND_H
#define SOUND_H

#ifndef NOSOUND
extern char sound_type;

int sound_init(int wfreq,int wbuff);
void sound_play();
void sound_close();
void sound_setup(void);

void zx4all_pause_sound(void);
void zx4all_resume_sound(void);
void zx4all_pause_music(void);
void zx4all_resume_music(void);
void zx4all_play_click(void);

#ifdef USE_LIBAYEMU
#include "libayemu/ayemu.h"
extern ayemu_ay_t ayemu_ay;
#endif

#else

#define sound_init(WF,WB) 0
#define sound_play() cmpt.current_buffer=sound[0]
#define sound_close()
#define sound_setup() cmpt.current_buffer=sound[0]
#define zx4all_pause_sound()
#define zx4all_resume_sound()
#define zx4all_pause_music()
#define zx4all_resume_music()
#define zx4all_play_click()

#endif

#endif
