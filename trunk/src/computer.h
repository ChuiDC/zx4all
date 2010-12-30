#ifndef COMPUTER_H
#define COMPUTER_H

#include <SDL/SDL.h>
#include <SDL/SDL_thread.h>

#include <zlib.h>

// #define MUT

#define OSS

extern char salir;

enum tapmodes {TAP_GUIDE, TAP_DATA, TAP_PAUSE, TAP_TRASH, TAP_STOP, TAP_PAUSE2, TZX_PURE_TONE,
	TZX_SEQ_PULSES, TAP_FINAL_BIT, TAP_PAUSE3};
enum taptypes {TAP_TAP, TAP_TZX};

struct computer {

  unsigned int temporal_io;

  // screen private global variables
  SDL_Surface *screen;
  unsigned char *screenbuffer;
  unsigned int screen_width;
  unsigned int translate[6144],translate2[6144];

  int contador_flash;

  unsigned int *p_translt,*p_translt2;
  void *pixel; // current address
  char border,flash;
  int currline,currpix;

  int tstados_counter; // counts tstates leaved to the next call
  int pixancho,pixalto; // maximum pixel value for width and height
  unsigned char screen_snow; // 0-> no emulate snow; 1-> emulate snow

  // keyboard private global variables

  unsigned char s8,s9,s10,s11,s12,s13,s14,s15;
  unsigned char k8,k9,k10,k11,k12,k13,k14,k15;
  unsigned char readed;

  // kempston joystick private global variables

  unsigned char js,jk;

  // sound global variables

  int tst_sample; // number of tstates per sample
  int freq; // frequency for reproduction
  int format; // 0: 8 bits, 1: 16 bits LSB, 2: 16 bits MSB
  signed char sign; // 0: unsigned; 1: signed
  int channels; // number of channels
  int buffer_len; // sound buffer length (in samples)
  int increment; // cuantity to add to jump to the next sample
  unsigned char volume; // volume
  unsigned char sample1[4]; // buffer with precalculated sample 1 (for buzzer)
  unsigned char sample1b[4]; // buffer with prec. sample 1 (for AY-3-8912)
  unsigned char sample0[4]; // buffer with precalculated sample 0
  unsigned char sound_bit;
  unsigned int tstados_counter_sound;
  unsigned char *current_buffer;
  unsigned char num_buff;
  unsigned int sound_cuantity; // counter for the buffer
  unsigned char ay_registers[16]; // registers for the AY emulation
  unsigned int aych_a,aych_b,aych_c,aych_n,aych_envel; // counters for AY emulation
  unsigned char ayval_a,ayval_b,ayval_c,ayval_n;
  unsigned char ay_emul; // 0: no AY emulation; 1: AY emulation
  unsigned char vol_a,vol_b,vol_c;
  unsigned int tst_ay;
  unsigned int tst_ay2;
  unsigned int ay_latch;
  char ay_envel_value;
  unsigned char ay_envel_way;
  unsigned char sound_current_value;

  // bus global variables

  unsigned char bus_counter;
  unsigned char bus_value;
  unsigned char issue; // 2= 48K issue 2, 3= 48K issue 3
  unsigned char mode128k; // 0=48K, 1=128K, 2=+2, 3=+3
  unsigned char joystick; // 0=cursor, 1=kempston, 2=sinclair1, 3=sinclair2
  unsigned char port254;


  // tape global variables

  enum tapmodes tape_current_mode;
  unsigned char pause; // 1=tape stop
  enum taptypes tape_file_type;
  unsigned int tape_counter0;
  unsigned int tape_counter1;
  unsigned int tape_counter_rep;
  unsigned char tape_byte;
  unsigned char tape_bit;
  unsigned char tape_readed;
  unsigned int tape_byte_counter;
  unsigned int tape_pause_at_end;
  gzFile tap_file;
  unsigned char tape_fast_load; // 0 normal load; 1 fast load
  unsigned char current_tap[2049];
  
  unsigned char tape_current_bit;
  unsigned int tape_block_level;
  unsigned int tape_sync_level0;
  unsigned int tape_sync_level1;
  unsigned int tape_bit0_level;
  unsigned int tape_bit1_level;
  unsigned char tape_bits_at_end;
  unsigned int tape_loop_counter;
  long tape_loop_pos;
  
  unsigned char tape_write; // 0 can't write; 1 can write
  
  // Microdrive global variables
  FILE *mdr_file;                  // Current microdrive file
  unsigned char mdr_current_mdr[2049]; // current path and name for microdrive file
  unsigned char mdr_active;  // 0: not installed; 1: installed
  unsigned char mdr_paged;  // 0: not pagined; 1: pagined
  unsigned int mdr_tapehead; // current position in the tape
  unsigned int mdr_bytes;      // number of bytes read or written in this transfer
  unsigned int mdr_maxbytes; // maximum number of bytes to read or write in this transfer
  unsigned int mdr_gap;         // TSTATEs remaining for GAP end
  unsigned int mdr_nogap;      // TSTATEs remaining for next GAP
  unsigned char mdr_cartridge[137923]; // current cartridge
  unsigned char mdr_drive; // current drive
  unsigned char mdr_old_STATUS; // to detect an edge in COM CLK
  unsigned char mdr_modified; // if a sector is stored, this change to know that it must be stored in the file
  
  // pagination global variables

  unsigned char mport1,mport2; // ports for memory management (128K and +3)
  unsigned int video_offset; // 0 for page 5, and 32768 for page 7
  unsigned char *block0,*block1,*block2,*block3; // pointers for memory access (one for each 16K block).

  // public

  unsigned char memoria[196608]; // memory (12 pages of 16K each one). 4 for ROM, and 8 for RAM
  unsigned char shadowrom[8192]; // space for Interface I's ROMs
  unsigned char interr;
  unsigned char mustlock;
  unsigned char other_ret; // 0=no change; 1=memory returns RET (201)

};

void computer_init();
void register_screen(SDL_Surface *);
void show_screen(int);
void read_keyboard(void);
void fill_audio(void *udata,Uint8 *,int);
void set_volume(unsigned char);
void play_sound(unsigned int);
void emulate(int);
void ResetComputer(void);
unsigned char bus_empty(void);
void set_memory_pointers(void);
void play_ay(unsigned int);

void WrZ80 (unsigned short Addr, unsigned char Value);
unsigned char RdZ80 (unsigned short Addr);
void OutZ80 (unsigned short Port, unsigned char Value);
unsigned char InZ80 (unsigned short Port);

#endif
