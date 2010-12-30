#ifndef SNAPSHOT_H
#define SNAPSHOT_H

#include "zx4all.h"
#include "z80intrf.h"
#include "computer.h"

//typedef unsigned char[16384] z80snapshot_page_t;
typedef unsigned char z80snapshot_page_t[16384];

struct z80snapshot {

  unsigned char A,F,B,C,D,E,H,L,AA,FF,BB,CC,DD,EE,HH,LL,R,I,IFF1,IFF2,Imode,issue;
  unsigned short PC,IX,IY,SP;
  unsigned char type; // bit 0/1: 48K/128K/+3
  unsigned char border; // border color
  unsigned char pager; // content of pagination register in 128K mode
  z80snapshot_page_t page[12];
  unsigned int found_pages; // bit=1: page exists. bit=0: page don't exists.
  unsigned char ay_regs[16];
  unsigned char ay_latch;

};

int save_z80(char *);
int load_z80(char *);
void load_snap(struct z80snapshot *);

#endif
