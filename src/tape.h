#ifndef H_TAPE
#define H_TAPE

#include <zlib.h>

void tape_reset(char *);
void tape_read(int);
void tape_read_tap(int);
void tape_read_tzx(int);
void rewind_tape(unsigned char);
unsigned char file_empty(void);
void fastload_block (void);
void save_file(void);
int tape_select(char *);
long getpos_tape(void);
long getpos_tape(void);
long getpos_permil_tape(void);

#endif
