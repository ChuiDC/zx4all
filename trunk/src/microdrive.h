#ifndef H_MICRODRIVE
#define H_MICRODRIVE

void microdrive_init();
void microdrive_reset();
unsigned char microdrive_in(unsigned short);
void microdrive_out(unsigned short,unsigned char);
void microdrive_emulate(int);
void increment_head();
void microdrive_restart();

#endif
