#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "zx4all.h"
#include "debug.h"
#include "z80intrf.h"
#include "computer.h"
#include "menus.h"
#include "tape.h"

int elcontador=0;
int eltstado=0;
char elbit=0;

/* reads a tape file and updates the readed bit */

void tape_read(int tstados) {
	if(cmpt.tape_file_type == TAP_TAP)
		tape_read_tap(tstados);
	else
		tape_read_tzx(tstados);
	
	if(cmpt.pause)
		return;
	
}

// manages TAP files in REAL_MODE

void tape_read_tap (int tstados) {

	unsigned char value, value2;
	unsigned readed;
		
	if (cmpt.tap_file == NULL)
		return;

	if (!cmpt.pause) {
		if (cmpt.tape_current_mode == TAP_TRASH) {		// initialize a new block						
			gzread (cmpt.tap_file,&value, 1);
			readed=gzread (cmpt.tap_file,&value2, 1);	// read block longitude
			if (readed!=1) {
				rewind_tape(1);
				cmpt.tape_current_mode = TAP_TRASH;
				return;
			}
			cmpt.tape_byte_counter = ((unsigned int) value) + 256 * ((unsigned int) value2);
			gzread (cmpt.tap_file,&(cmpt.tape_byte), 1);
			cmpt.tape_bit = 0x80;
			cmpt.tape_current_mode = TAP_GUIDE;
			cmpt.tape_counter0 = 2168;
			cmpt.tape_counter1 = 2168;
			if (!(0x80 & cmpt.tape_byte))
				cmpt.tape_counter_rep = 3228;	// 4 seconds
			else
				cmpt.tape_counter_rep = 1614;	// 2 seconds
		}

		// if there's a pulse still being reproduce, just reproduce it

		if (cmpt.tape_counter0) 	{
			if (cmpt.tape_counter0 > tstados) {
				cmpt.tape_readed = 0;	// return 0
				cmpt.tape_counter0 -= tstados;	// decrement counter;
				return;
			} else {
				tstados -= cmpt.tape_counter0;
				cmpt.tape_counter0 = 0;
			}
		}

		cmpt.tape_readed = 1;	// return 1
		if (cmpt.tape_counter1) {
			if (cmpt.tape_counter1 > tstados) {
				cmpt.tape_counter1 -= tstados;	// decrement counter;
				return;
			} else {
				tstados -= cmpt.tape_counter1;
				cmpt.tape_counter1 = 0;
				cmpt.tape_readed = 0;	// return 0
			}
		}

		// pulse ended
		
		switch (cmpt.tape_current_mode) {
		case TAP_GUIDE:	// guide tone
			if (cmpt.tape_counter_rep) {	// still into guide tone
				cmpt.tape_counter_rep--;
				cmpt.tape_counter0 = 2168 - tstados;
				cmpt.tape_counter1 = 2168;	// new pulse
				return;
			} else {	// guide tone ended. send sync tone
				cmpt.tape_counter0 = 667 - tstados;
				cmpt.tape_counter1 = 735;	// new pulse
				cmpt.tape_current_mode = TAP_DATA;	// data mode
				cmpt.tape_bit = 0x80;	// from bit0 to bit7
				return;
			}
			break;
		case TAP_DATA:	// data
			if (cmpt.tape_byte & cmpt.tape_bit) {	// next bit is 1
				cmpt.tape_counter0 = 1710 - tstados;
				cmpt.tape_counter1 = 1710;
			} else {
				cmpt.tape_counter0 = 851 - tstados;
				cmpt.tape_counter1 = 852;
			}
			cmpt.tape_bit = ((cmpt.tape_bit >> 1) & 0x7F);	// from bit0 to bit7
			if (!cmpt.tape_bit) {
				cmpt.tape_byte_counter--;
				if (!cmpt.tape_byte_counter) {	// ended the block
					cmpt.tape_current_mode = TAP_PAUSE;	// pause
					cmpt.tape_readed = 0;
					cmpt.tape_counter_rep = 3500000;	// 1 seconds
					return;
				}
				cmpt.tape_bit = 0x80;
				readed=gzread (cmpt.tap_file,&(cmpt.tape_byte), 1);	// read next byte
				if (readed!=1) {
					rewind_tape(0);
					cmpt.tape_current_mode = TAP_STOP;	// stop tape
					return;
				}
			}
			break;
		case TAP_PAUSE:	// pause
			cmpt.tape_readed = 0;
			if (cmpt.tape_counter_rep > tstados) {
				cmpt.tape_counter_rep -= tstados;
			} else {
				cmpt.tape_counter_rep = 0;
				cmpt.tape_current_mode = TAP_TRASH;	// read new block
			}
			return;
			break;
		case TAP_STOP:
			cmpt.tape_current_mode = TAP_TRASH;	// initialize
			cmpt.pause = 1;	// pause it
			break;
		default:
			break;
		}
	}
}

static void tape_read_tzx_eof(void)
{
	rewind_tape(1);
	cmpt.tape_current_bit = 0;
	cmpt.tape_current_mode = TAP_TRASH;		
}

// manages TZX files

void tape_read_tzx (int tstados) {

	unsigned char value, value2,value3,value4,done;
	unsigned int bucle,bucle2;
	size_t readed=0;

	if ((cmpt.tap_file == NULL)||(cmpt.pause))
		return;

#ifdef DEBUG_TZX
	dbgf("TZX: tape_read_tzx(%i) <- %i\n",tstados,gztell(cmpt.tap_file));
#endif

	if (cmpt.tape_current_mode == TAP_TRASH) {		// initialize a new block
#ifdef DEBUG_TZX
		dbg("TZX: TAP_TRASH"); 
#endif
		done = 0;
		do {
			readed=gzread(cmpt.tap_file,&value,1); // read block ID
			if(readed!=1)
			{
#ifdef DEBUG_TZX
				dbg("TZX: EOF");
#endif
				cmpt.tape_current_mode = TAP_STOP;
				done = 1;
				return;
			}
			else
			{
#ifdef DEBUG_TZX
				dbgf("TZX: readed %.2X CASE\n",value); 
#endif
				switch(value) {
				case 0x10: // classic tape block
					done = 1;
					bucle = 0;
					cmpt.tape_current_bit = 0;
					cmpt.tape_bit0_level = 852;
					cmpt.tape_bit1_level = 1710;
					cmpt.tape_bits_at_end = 8;
					cmpt.tape_block_level = 2168;
					cmpt.tape_sync_level0 = 667;
					cmpt.tape_sync_level1 = 735;
					
					gzread(cmpt.tap_file,&value2,1);
					gzread(cmpt.tap_file,&value3,1); // pause length
					cmpt.tape_pause_at_end = ((unsigned int) value2) + 256 * ((unsigned int) value3);
#ifdef DEBUG_TZX
					dbgf("TZX: readed %.2X %.2X -> tape_pause_at_end = %X\n",value2,value3,cmpt.tape_pause_at_end); 
#endif
					if(cmpt.tape_pause_at_end==0)
						cmpt.tape_pause_at_end=10; // to avoid problems
					cmpt.tape_pause_at_end *= 3500;
					gzread (cmpt.tap_file,&value, 1);
					
					readed=gzread (cmpt.tap_file,&value2, 1);	// read block longitude
					if (readed!=1) {
#ifdef DEBUG_TZX
						dbg("TZX: EOF");
#endif
						rewind_tape(1);
						cmpt.tape_current_bit = 0;
						cmpt.tape_current_mode = TAP_TRASH;						
						for(bucle=0;bucle<10;bucle++)
						{
							gzread(cmpt.tap_file,&value3,1); // jump over the header
#ifdef DEBUG_TZX
							dbgf("TZX: readed %.2X\n",value3); 
#endif
						}
						return;
					}
					cmpt.tape_byte_counter = ((unsigned int) value) + 256 * ((unsigned int) value2);
#ifdef DEBUG_TZX
					dbgf("TZX: readed %.2X %.2X -> tape_byte_counter = %X\n",value,value2,cmpt.tape_byte_counter); 
#endif
					readed=gzread (cmpt.tap_file,&(cmpt.tape_byte), 1);
					if (readed!=1)
					{
						tape_read_tzx_eof();
						return;
					}
#ifdef DEBUG_TZX
					dbgf("TZX: readed tape_byte %X\n",cmpt.tape_byte); 
#endif
					cmpt.tape_bit = 0x80;
					cmpt.tape_current_mode = TAP_GUIDE;
					cmpt.tape_counter0 = 2168;
					cmpt.tape_counter1 = 2168;
					if (!(0x80 & cmpt.tape_byte))
						cmpt.tape_counter_rep = 3228;	// 4 seconds
					else
						cmpt.tape_counter_rep = 1614;	// 2 seconds					
					break;

				case 0x11: // turbo tape block					
					done = 1;
					bucle = 0;
					
					gzread(cmpt.tap_file,&value2,1);
					gzread(cmpt.tap_file,&value3,1);
					cmpt.tape_block_level = ((unsigned int) value2) + 256 * ((unsigned int) value3);
#ifdef DEBUG_TZX
					dbgf("TZX: readed %.2X %.2X -> tape_block_level = %X\n",value2,value3,cmpt.tape_block_level); 
#endif
					gzread(cmpt.tap_file,&value2,1);
					gzread(cmpt.tap_file,&value3,1);
					cmpt.tape_sync_level0 = ((unsigned int) value2) + 256 * ((unsigned int) value3);
#ifdef DEBUG_TZX
					dbgf("TZX: readed %.2X %.2X -> tape_sync_level0 = %X\n",value2,value3,cmpt.tape_sync_level0); 
#endif
					gzread(cmpt.tap_file,&value2,1);
					gzread(cmpt.tap_file,&value3,1);
					cmpt.tape_sync_level1 = ((unsigned int) value2) + 256 * ((unsigned int) value3);
#ifdef DEBUG_TZX
					dbgf("TZX: readed %.2X %.2X -> tape_sync_level1 = %X\n",value2,value3,cmpt.tape_sync_level1); 
#endif
					gzread(cmpt.tap_file,&value2,1);
					gzread(cmpt.tap_file,&value3,1);
					cmpt.tape_bit0_level = ((unsigned int) value2) + 256 * ((unsigned int) value3);
#ifdef DEBUG_TZX
					dbgf("TZX: readed %.2X %.2X -> tape_bit0_level = %X\n",value2,value3,cmpt.tape_bit0_level); 
#endif
					gzread(cmpt.tap_file,&value2,1);
					gzread(cmpt.tap_file,&value3,1);
					cmpt.tape_bit1_level = ((unsigned int) value2) + 256 * ((unsigned int) value3);
#ifdef DEBUG_TZX
					dbgf("TZX: readed %.2X %.2X -> tape_bit1_level = %X\n",value2,value3,cmpt.tape_bit1_level); 
#endif
					gzread(cmpt.tap_file,&value2,1);
					gzread(cmpt.tap_file,&value3,1);
					cmpt.tape_counter_rep = ((unsigned int) value2) + 256 * ((unsigned int) value3);
#ifdef DEBUG_TZX
					dbgf("TZX: readed %.2X %.2X -> tape_counter_rep = %X\n",value2,value3,cmpt.tape_counter_rep); 
#endif
					cmpt.tape_counter_rep /=2;
					gzread(cmpt.tap_file,&value2,1);
					cmpt.tape_bits_at_end = value2;					
#ifdef DEBUG_TZX
					dbgf("TZX: readed %.2X -> tape_bits_at_end = %X\n",value2,cmpt.tape_bits_at_end);
#endif
					
					gzread(cmpt.tap_file,&value2,1);
					gzread(cmpt.tap_file,&value3,1); // pause length
					cmpt.tape_pause_at_end = ((unsigned int) value2) + 256 * ((unsigned int) value3);
#ifdef DEBUG_TZX
					dbgf("TZX: readed %.2X %.2X -> tape_pause_at_end = %X\n",value2,value3,cmpt.tape_pause_at_end); 
#endif
					
			
					if(cmpt.tape_pause_at_end==0)
						cmpt.tape_pause_at_end=10; // to avoid problems
					cmpt.tape_pause_at_end *= 3500;
					
					gzread (cmpt.tap_file,&value, 1);
					gzread (cmpt.tap_file,&value2, 1);
					readed=gzread (cmpt.tap_file,&value3, 1);	// read block longitude
					cmpt.tape_byte_counter = ((unsigned int) value) + 256 * ((unsigned int) value2) + 65536* ((unsigned int) value3);
#ifdef DEBUG_TZX
					dbgf("TZX: readed %.2X %.2X %.2X -> tape_byte_counter = %X\n",value,value2,value3,cmpt.tape_byte_counter); 
#endif
					
					if (readed!=1) {
#ifdef DEBUG_TZX
						dbg("TZX: EOF");
#endif
						rewind_tape(1);
						cmpt.tape_current_bit = 0;
						cmpt.tape_current_mode = TAP_TRASH;
						return;
					}
					
					readed=gzread (cmpt.tap_file,&(cmpt.tape_byte), 1);
					if (readed!=1)
					{
						tape_read_tzx_eof();
						return;
					}
#ifdef DEBUG_TZX
					dbgf("TZX: readed tape_byte %X\n",cmpt.tape_byte);
#endif
					cmpt.tape_bit = 0x80;
					cmpt.tape_current_mode = TAP_GUIDE;
					cmpt.tape_counter0 = cmpt.tape_block_level;
					cmpt.tape_counter1 = cmpt.tape_block_level;
					cmpt.tape_current_bit = 0;
					break;
					
				case 0x12: // pure tone
					done = 1;
					gzread(cmpt.tap_file,&value2,1);
					gzread(cmpt.tap_file,&value3,1); // length of pulse in T-states
					cmpt.tape_block_level = ((unsigned int) value2) + 256 * ((unsigned int) value3);
#ifdef DEBUG_TZX
					dbgf("TZX: readed %.2X %.2X -> tape_block_level = %X\n",value2,value3,cmpt.tape_block_level); 
#endif
					cmpt.tape_counter0 = cmpt.tape_block_level;
					cmpt.tape_counter1 = 0;
					gzread(cmpt.tap_file,&value2,1);
					readed=gzread(cmpt.tap_file,&value3,1); // number of pulses
					cmpt.tape_counter_rep = ((unsigned int) value2) + 256 * ((unsigned int) value3);
					if (readed!=1)
					{
						tape_read_tzx_eof();
						return;
					}
#ifdef DEBUG_TZX
					dbgf("TZX: readed %.2X %.2X -> tape_counter_rep = %X\n",value2,value3,cmpt.tape_counter_rep); 
#endif
					if(cmpt.tape_counter_rep == 0)
						done = 0;
					cmpt.tape_current_mode = TZX_PURE_TONE;
					break;

				case 0x13: // multiple pulses
					done=1;
					readed=gzread(cmpt.tap_file,&value2,1); // number of pulses
					if (readed!=1)
					{
						tape_read_tzx_eof();
						return;
					}
					cmpt.tape_counter_rep = ((unsigned int) value2);
#ifdef DEBUG_TZX
					dbgf("TZX: readed %.2X -> tape_counter_rep = %X\n",value2,cmpt.tape_counter_rep);
#endif
					if(cmpt.tape_counter_rep == 0)
						done = 0;
					else {
						gzread(cmpt.tap_file,&value2,1);
						readed=gzread(cmpt.tap_file,&value3,1); // length of pulse in T-states
						cmpt.tape_counter0 = ((unsigned int) value2) + 256 * ((unsigned int) value3);
						if (readed!=1)
						{
							tape_read_tzx_eof();
							return;
						}
#ifdef DEBUG_TZX
						dbgf("TZX: readed %.2X %.2X -> tape_counter0 = %X\n",value2,value3,cmpt.tape_counter0); 
#endif
						cmpt.tape_counter1 = 0;
						cmpt.tape_current_mode = TZX_SEQ_PULSES;
					}
					break;
				
				case 0x14: // turbo tape block					
					done = 1;
					bucle = 0;
					cmpt.tape_current_bit = 0;
					gzread(cmpt.tap_file,&value2,1);
					gzread(cmpt.tap_file,&value3,1);
					cmpt.tape_bit0_level = ((unsigned int) value2) + 256 * ((unsigned int) value3);
#ifdef DEBUG_TZX
					dbgf("TZX: readed %.2X %.2X -> tape_bit0_level = %X\n",value2,value3,cmpt.tape_bit0_level); 
#endif
					gzread(cmpt.tap_file,&value2,1);
					gzread(cmpt.tap_file,&value3,1);
					cmpt.tape_bit1_level = ((unsigned int) value2) + 256 * ((unsigned int) value3);
#ifdef DEBUG_TZX
					dbgf("TZX: readed %.2X %.2X -> tape_bit1_level = %X\n",value2,value3,cmpt.tape_bit1_level); 
#endif
					gzread(cmpt.tap_file,&value2,1);
					cmpt.tape_bits_at_end = value2;
#ifdef DEBUG_TZX
					dbgf("TZX: readed %.2X -> tape_bits_at_end = %X\n",value2,cmpt.tape_bits_at_end); 
#endif
					gzread(cmpt.tap_file,&value2,1);
					gzread(cmpt.tap_file,&value3,1); // pause length
					cmpt.tape_pause_at_end = ((unsigned int) value2) + 256 * ((unsigned int) value3);
#ifdef DEBUG_TZX
					dbgf("TZX: readed %.2X %.2X -> tape_pause_at_end = %X\n",value2,value3,cmpt.tape_pause_at_end); 
#endif
					/*if(cmpt.tape_pause_at_end==0)
						cmpt.tape_pause_at_end=10;*/ // to avoid problems
					cmpt.tape_pause_at_end *= 3500;
					gzread (cmpt.tap_file,&value, 1);					
					gzread (cmpt.tap_file,&value2, 1);
					readed=gzread (cmpt.tap_file,&value3,1);	// read block longitude
					if (readed!=1) {
#ifdef DEBUG_TZX
						dbg("TZX: EOF");
#endif
						rewind_tape(1);
						cmpt.tape_current_bit = 0;
						cmpt.tape_current_mode = TAP_TRASH;						
						return;
					}
					cmpt.tape_byte_counter = ((unsigned int) value) + 256 * ((unsigned int) value2) + 65536*((unsigned int)value3);					
#ifdef DEBUG_TZX
					dbgf("TZX: readed %.2X %.2X %.2X -> tape_byte_counter = %X\n",value,value2,value3,cmpt.tape_byte_counter); 
#endif
					cmpt.tape_bit = 0x80;
					readed=gzread (cmpt.tap_file,&(cmpt.tape_byte), 1);	// read next byte
					if (readed!=1)
					{
						tape_read_tzx_eof();
						return;
					}
#ifdef DEBUG_TZX
					dbgf("TZX: readed tape_byte %X\n",cmpt.tape_byte);
#endif
					if((cmpt.tape_byte_counter==1)&&(cmpt.tape_bits_at_end!=8)) { // last byte
						for(bucle=cmpt.tape_bits_at_end;bucle<8;bucle++) {
							cmpt.tape_byte=((cmpt.tape_byte>>1)&0x7F);
							cmpt.tape_bit = ((cmpt.tape_bit>>1)&0x7F);
						}
					}
					cmpt.tape_current_mode = TAP_DATA;
					cmpt.tape_counter0 = 0;
					cmpt.tape_counter1 = 0;
					cmpt.tape_counter_rep = 0;					
					break;

				case 0x20: // pause
					done = 1;
					gzread(cmpt.tap_file,&value2,1);
					readed=gzread(cmpt.tap_file,&value3,1); // pause length
					cmpt.tape_counter_rep = ((unsigned int) value2) + 256 * ((unsigned int) value3);
					if (readed!=1)
					{
						tape_read_tzx_eof();
						return;
					}
#ifdef DEBUG_TZX
					dbgf("TZX: readed %.2X %.2X -> tape_counter_rep = %X\n",value2,value3,cmpt.tape_counter_rep); 
#endif
					cmpt.tape_readed = 0;
					cmpt.tape_counter0 = 0;				
					cmpt.tape_counter1 = 0; // 1ms of inversed pulse					
					if(cmpt.tape_counter_rep == 0) {
						cmpt.tape_current_mode = TAP_PAUSE2;	// initialize
						cmpt.tape_byte_counter = 31500;
						break;
					}
					cmpt.tape_counter_rep *= 3500;
					cmpt.tape_current_mode = TAP_PAUSE;									
					break;
					
				case 0x21: // group start
					readed=gzread(cmpt.tap_file,&value2,1);
					bucle2=(unsigned int) value2;
					if (readed!=1)
					{
						tape_read_tzx_eof();
						return;
					}
#ifdef DEBUG_TZX
					dbgf("TZX: readed %.2X -> blucle2 = %X\n",value2,bucle2); 
#endif
					for(bucle=0;bucle<bucle2;bucle++)
					{
						readed=gzread(cmpt.tap_file,&value2,1);
						if (readed!=1)
						{
							tape_read_tzx_eof();
							return;
						}
#ifdef DEBUG_TZX
						dbgf("TZX: readed %.2X\n",value2);
#endif
					}
					break;
					
				case 0x22: // group end
					break;
				
				case 0x24: // loop start
					gzread(cmpt.tap_file,&value2,1);
					readed=gzread(cmpt.tap_file,&value3,1);
					if (readed!=1)
					{
						tape_read_tzx_eof();
						return;
					}
					cmpt.tape_loop_counter = ((unsigned int) value2) + 256 * ((unsigned int) value3);
					cmpt.tape_loop_pos = gztell(cmpt.tap_file);
#ifdef DEBUG_TZX
					dbgf("TZX: readed %.2X %.2X -> tape_loop_counter = %X\n",value2,value3,cmpt.tape_loop_counter); 
					dbgf("TZX: tape_loop_pos = %i\n",cmpt.tape_loop_pos);
#endif
					break;
				
				case 0x25: // loop end
					if(cmpt.tape_loop_counter) {
						cmpt.tape_loop_counter--;
#ifdef DEBUG_TZX
						dbgf("TZX: tape_loop_counter = %i\n",cmpt.tape_loop_counter);
#endif
						gzseek(cmpt.tap_file,cmpt.tape_loop_pos,SEEK_SET);
					}
					break;
				
				case 0x2A: // pause if 48K
					if(cmpt.mode128k==0) {
						cmpt.pause = 1;
						return;
					}
					break;
					
				case 0x30: // text description
					readed=gzread(cmpt.tap_file,&value2,1); // length
					if (readed!=1)
					{
						tape_read_tzx_eof();
						return;
					}
#ifdef DEBUG_TZX
					dbgf("TZX: readed %.2X -> %X\n",value2,((unsigned int)value2)); 
#endif
					for(bucle=0;bucle<((unsigned int)value2);bucle++)
					{
						readed=gzread(cmpt.tap_file,&value3,1);
						if (readed!=1)
						{
							tape_read_tzx_eof();
							return;
						}
#ifdef DEBUG_TZX
						dbgf("TZX: readed %.2X\n",value3);
#endif
					}
					break;
					
				case 0x31: // show text
					gzread(cmpt.tap_file,&value2,1);
					readed=gzread(cmpt.tap_file,&value2,1); // length
					if (readed!=1)
					{
						tape_read_tzx_eof();
						return;
					}
#ifdef DEBUG_TZX
					dbgf("TZX: readed %.2X -> %X\n",value2,((unsigned int)value2)); 
#endif
					for(bucle=0;bucle<((unsigned int)value2);bucle++)
					{
						readed=gzread(cmpt.tap_file,&value3,1);
						if (readed!=1)
						{
							tape_read_tzx_eof();
							return;
						}
#ifdef DEBUG_TZX
						dbgf("TZX: readed %.2X\n",value3);
#endif
					}
					break;
					
				case 0x32: // archive info
					gzread(cmpt.tap_file,&value2,1);
					readed=gzread(cmpt.tap_file,&value3,1); // pause length
					if (readed!=1)
					{
						tape_read_tzx_eof();
						return;
					}
#ifdef DEBUG_TZX
					dbgf("TZX: readed %.2X %.2X -> %X\n",value2,value3,((unsigned int)value2)); 
#endif
					bucle2 = ((unsigned int) value2) + 256 * ((unsigned int) value3);
					for(bucle=0;bucle<bucle2;bucle++)
					{
						readed=gzread(cmpt.tap_file,&value3,1);
						if (readed!=1)
						{
							tape_read_tzx_eof();
							return;
						}
#ifdef DEBUG_TZX
						dbgf("TZX: readed %.2X\n",value3);
#endif
					}
					break;
				
				case 0x33: // hardware info
					readed=gzread(cmpt.tap_file,&value2,1);					
					if (readed!=1)
					{
						tape_read_tzx_eof();
						return;
					}
					bucle2 = ((unsigned int) value2) + 256 * ((unsigned int) value3);
					bucle2 = ((unsigned int) value2) *3;
#ifdef DEBUG_TZX
					dbgf("TZX: readed %.2X -> bucle2 = %X\n",value2,bucle2);
#endif
					for(bucle=0;bucle<bucle2;bucle++)
					{
						readed=gzread(cmpt.tap_file,&value3,1);
						if (readed!=1)
						{
							tape_read_tzx_eof();
							return;
						}
#ifdef DEBUG_TZX
						dbgf("TZX: readed %.2X\n",value3);
#endif
					}
					break;
					
				case 0x34: // emulation info					
					for(bucle=0;bucle<8;bucle++)
					{
						readed=gzread(cmpt.tap_file,&value3,1);
						if (readed!=1)
						{
							tape_read_tzx_eof();
							return;
						}
#ifdef DEBUG_TZX
						dbgf("TZX: readed %.2X\n",value3);
#endif
					}
					break;
					
				case 0x35: // custon info					
					for(bucle=0;bucle<10;bucle++)
					{
						readed=gzread(cmpt.tap_file,&value3,1);
						if (readed!=1)
						{
							tape_read_tzx_eof();
							return;
						}
#ifdef DEBUG_TZX
						dbgf("TZX: readed %.2X\n",value3);
#endif
					}
					gzread(cmpt.tap_file,&value,1);
					gzread(cmpt.tap_file,&value2,1);
					gzread(cmpt.tap_file,&value3,1);
					readed=gzread(cmpt.tap_file,&value4,1);
					if (readed!=1)
					{
						tape_read_tzx_eof();
						return;
					}
					bucle2 = ((unsigned int) value) + 256 * ((unsigned int) value2) + 65536*((unsigned int) value3) + 16777216*((unsigned int) value4);
#ifdef DEBUG_TZX
					dbgf("TZX: readed %.2X %.2X %.2X %.2X -> bucle2 = %X\n",value,value2,value3,value4,bucle2); 
#endif
					cmpt.tape_bit = 0x80;
					for(bucle=0;bucle<bucle2;bucle++)
					{
						readed=gzread(cmpt.tap_file,&value3,1);
						if (readed!=1)
						{
							tape_read_tzx_eof();
							return;
						}
#ifdef DEBUG_TZX
						dbgf("TZX: readed %.2X\n",value3);
#endif
					}
					break;
					
				default: // not supported
#ifdef DEBUG_TZX
					dbg("TZX: Unsuported TZX."); 
#endif
/*
					sprintf((char *)cmpt.osd_text,"Unsuported TZX. Contact FBZX autor. %X",value);
					cmpt.osd_time=200;
*/
					rewind_tape(1); // rewind and stop
					cmpt.tape_current_mode = TAP_TRASH;
					return;					
					break;
				}
			}
		} while (!done);			
	}

#ifdef DEBUG_TZX
	dbgf("TZX: NEXT %i\n",gztell(cmpt.tap_file)); 
#endif
	// if there's a pulse still being reproduce, just reproduce it

	if (cmpt.tape_counter0) 	{
#ifdef DEBUG_TZX
		dbgf("TZX: counter0=%i\n",cmpt.tape_counter0); 
#endif
		if (cmpt.tape_counter0 > tstados) {
			cmpt.tape_readed = cmpt.tape_current_bit;	// return current
			cmpt.tape_counter0 -= tstados;	// decrement counter;
#ifdef DEBUG_TZX
			dbgf("TZX: return current -> tape_readed=%i, tape_counter0=%i\n",cmpt.tape_readed,cmpt.tape_counter0); 
#endif
			return;
		} else {
			tstados -= cmpt.tape_counter0;
			cmpt.tape_counter0 = 0;
#ifdef DEBUG_TZX
			dbgf("TZX: tstados=%i\n",tstados); 
#endif
		}
	}
	
#ifdef DEBUG_TZX
	dbgf("TZX: tape_readed = 1 - %i = %i\n",cmpt.tape_current_bit,(1-cmpt.tape_current_bit)&0xFF); 
#endif
	cmpt.tape_readed = 1 - cmpt.tape_current_bit;	// return oposite current
	if (cmpt.tape_counter1) {		
#ifdef DEBUG_TZX
		dbgf("TZX: counter1=%i\n",cmpt.tape_counter1); 
#endif
		if (cmpt.tape_counter1 > tstados) {
			cmpt.tape_counter1 -= tstados;	// decrement counter;
#ifdef DEBUG_TZX
			dbgf("TZX: decrement counter -> tape_counter1=%i\n",cmpt.tape_counter1); 
#endif
			return;
		} else {
			tstados -= cmpt.tape_counter1;
			cmpt.tape_counter1 = 0;
			cmpt.tape_readed = cmpt.tape_current_bit;	// return current
#ifdef DEBUG_TZX
			dbgf("TZX: return current -> tape_readed=%i\n",cmpt.tape_readed); 
#endif
		}
	}

	// pulse ended

	switch (cmpt.tape_current_mode) {
	case TAP_FINAL_BIT:
#ifdef DEBUG_TZX
		dbg("TZX: TAP_FINAL_BIT"); 
#endif
		cmpt.tape_current_mode = TAP_TRASH;
		break;
	case TAP_GUIDE:	// guide tone
#ifdef DEBUG_TZX
		dbg("TZX: TAP_GUIDE"); 
#endif
		if (cmpt.tape_counter_rep) {	// still into guide tone
			cmpt.tape_counter_rep--;
			cmpt.tape_counter0 = cmpt.tape_block_level - tstados;
			cmpt.tape_counter1 = cmpt.tape_block_level;	// new pulse
			return;
		} else {	// guide tone ended. send sync tone			
			cmpt.tape_counter0 = cmpt.tape_sync_level0 - tstados;
			cmpt.tape_counter1 = cmpt.tape_sync_level0;	// new pulse
			cmpt.tape_current_mode = TAP_DATA;	// data mode
			cmpt.tape_bit = 0x80;	// from bit0 to bit7
			if((cmpt.tape_byte_counter==1)&&(cmpt.tape_bits_at_end!=8)) { // last byte
				for(bucle=cmpt.tape_bits_at_end;bucle<8;bucle++) {
					cmpt.tape_byte=((cmpt.tape_byte>>1)&0x7F);
					cmpt.tape_bit = ((cmpt.tape_bit>>1)&0x7F);
				}
			}
			return;
		}
		break;
	case TAP_DATA:	// data
#ifdef DEBUG_TZX
		dbg("TZX: TAP_DATA"); 
#endif
		if (cmpt.tape_byte & cmpt.tape_bit) {	// next bit is 1
			cmpt.tape_counter0 = cmpt.tape_bit1_level - tstados;
			cmpt.tape_counter1 = cmpt.tape_bit1_level;
		} else {
			cmpt.tape_counter0 = cmpt.tape_bit0_level - tstados;
			cmpt.tape_counter1 = cmpt.tape_bit0_level;
		}
		cmpt.tape_bit = ((cmpt.tape_bit >> 1) & 0x7F);	// from bit0 to bit7
		if (!cmpt.tape_bit) {			
			cmpt.tape_byte_counter--;
			if (!cmpt.tape_byte_counter) {	// ended the block
				if(cmpt.tape_pause_at_end) {					
					cmpt.tape_current_mode = TAP_PAUSE3;	// pause					
					cmpt.tape_counter_rep = cmpt.tape_pause_at_end;
				} else
					cmpt.tape_current_mode = TAP_FINAL_BIT;					
				return;
			}
			cmpt.tape_bit = 0x80;
			readed=gzread (cmpt.tap_file,&(cmpt.tape_byte), 1);	// read next byte
			if (readed!=1) {
#ifdef DEBUG_TZX
				dbg("TZX: EOF"); 
#endif
				rewind_tape (0);
				cmpt.tape_current_bit = 0;				
				cmpt.tape_current_mode = TAP_STOP;	// stop tape
				return;
			}
#ifdef DEBUG_TZX
			dbgf("TZX: readed tape_byte %X\n",cmpt.tape_byte);
#endif
			if((cmpt.tape_byte_counter==1)&&(cmpt.tape_bits_at_end!=8)) { // last byte
				for(bucle=cmpt.tape_bits_at_end;bucle<8;bucle++) {
					cmpt.tape_byte=((cmpt.tape_byte>>1)&0x7F);
					cmpt.tape_bit = ((cmpt.tape_bit>>1)&0x7F);
				}
			}
		}
		break;
		
	case TAP_PAUSE3: // one pulse of 1 ms for ending the bit
#ifdef DEBUG_TZX
		dbg("TZX: TAP_PAUSE3"); 
#endif
		cmpt.tape_counter0 = 3500; // 1 ms
		cmpt.tape_counter1 = 0;		
		cmpt.tape_current_mode = TAP_PAUSE;
		break;
		
	case TAP_PAUSE:	// pause
#ifdef DEBUG_TZX
		dbg("TZX: TAP_PAUSE"); 
#endif
		cmpt.tape_readed = 0;
		cmpt.tape_current_bit = 0;
		if (cmpt.tape_counter_rep > tstados) {
			cmpt.tape_counter_rep -= tstados;
		} else {
			cmpt.tape_counter_rep = 0;
			cmpt.tape_current_mode = TAP_TRASH;	// read new block
		}
		break;
	case TAP_PAUSE2:	// pause and stop
#ifdef DEBUG_TZX
		dbg("TZX: TAP_PAUSE2"); 
#endif
		cmpt.tape_readed = 0;
		cmpt.tape_current_bit = 0;
		if (cmpt.tape_counter_rep > tstados) {
			cmpt.tape_counter_rep -= tstados;
		} else {
			cmpt.tape_counter_rep = 0;
			cmpt.tape_current_mode = TAP_TRASH;	// read new block
			cmpt.pause = 1;
		}
		break;
	case TZX_PURE_TONE:
#ifdef DEBUG_TZX
		dbg("TZX: TAP_PURE_TONE"); 
#endif
		cmpt.tape_counter_rep--;
		cmpt.tape_current_bit = 1 - cmpt.tape_current_bit; // invert current bit
		if (cmpt.tape_counter_rep) {	// still into guide tone			
			cmpt.tape_counter0 = cmpt.tape_block_level - tstados;
			cmpt.tape_counter1 = 0; // new pulse			
		} else
			cmpt.tape_current_mode = TAP_TRASH;	// next ID
		break;
	case TZX_SEQ_PULSES:
#ifdef DEBUG_TZX
		dbg("TZX: TAP_SEQ_PULSES"); 
#endif
		cmpt.tape_current_bit = 1 - cmpt.tape_current_bit; // invert current bit
		cmpt.tape_counter_rep--;
		if(cmpt.tape_counter_rep) {
			gzread(cmpt.tap_file,&value2,1);
			readed=gzread(cmpt.tap_file,&value3,1); // length of pulse in T-states
			if (readed!=1)
			{
				tape_read_tzx_eof();
				return;
			}
			cmpt.tape_counter0 = ((unsigned int) value2) + 256 * ((unsigned int) value3);
#ifdef DEBUG_TZX
			dbgf("TZX: readed %.2X %.2X -> tape_counter0 = %X\n",value2,value3,cmpt.tape_counter0);
#endif
			cmpt.tape_counter1 = 0;
		} else
			cmpt.tape_current_mode = TAP_TRASH;	// next ID		
		break;
			
	case TAP_STOP:
#ifdef DEBUG_TZX
		dbg("TZX: TAP_STOP"); 
#endif
		cmpt.tape_current_bit = 0;
		cmpt.tape_current_mode = TAP_TRASH;	// initialize
		cmpt.pause = 1;	// pause it
		break;
	default:
#ifdef DEBUG_TZX
		dbg("TZX: default?"); 
#endif
		break;
	}
}

void rewind_tape(unsigned char pause) {

	int thebucle;
	unsigned char value;
	
	gzrewind (cmpt.tap_file);
	if(cmpt.tape_file_type==TAP_TZX)
		for(thebucle=0;thebucle<10;thebucle++)
			gzread(cmpt.tap_file,&value,1); // jump over the header
	cmpt.pause=pause;
}

unsigned char file_empty(void) {
	
	long position,position2;
	
	position=gztell(cmpt.tap_file);
	gzseek(cmpt.tap_file,0,SEEK_END); // set the pointer at end
	position2=gztell(cmpt.tap_file);
	gzseek(cmpt.tap_file,position,SEEK_SET); // return the pointer to the original place
	if(position2==0)
		return 1; // empty file
	else
		return 0;	
}

void save_file(void) {

	long position;
	unsigned char x_or,salir;
	unsigned char dato;
	int longitud;
			
	position=gztell(cmpt.tap_file); // store current position
	gzseek(cmpt.tap_file,0,SEEK_END); // put position at end
	x_or=0;
	
	longitud=(int)_z80_get_DE();
	longitud+=2;
	
	dato=(unsigned char)(longitud%256);
	gzwrite(cmpt.tap_file,&dato,1);
	dato=(unsigned char)(longitud/256);
	gzwrite(cmpt.tap_file,&dato,1);

	dato=_z80_get_A();
	gzwrite(cmpt.tap_file,&dato,1);

	x_or^=_z80_get_A();

	salir = 0;
	do {
		if (_z80_get_DE() == 0)
			salir = 2;
		if (!salir) {
			dato=RdZ80(_z80_get_IX()); // read data
			gzwrite(cmpt.tap_file,&dato,1);
			x_or^=dato;
			_z80_set_IX(_z80_get_IX()+1);
		}
	} while (!salir);
	gzwrite(cmpt.tap_file,&x_or,1);
	_z80_set_IX(_z80_get_IX()+2);
	gzseek(cmpt.tap_file,position,SEEK_SET); // put position at end
	
	if(cmpt.tape_fast_load==1) //if we want fast load, we assume we want fast save too
		cmpt.other_ret = 1;	// next instruction must be RET
	
	return;
}

void fastload_block (void) {

	unsigned int longitud;
	unsigned char value[65536], salir,empty,flag_found;	
	unsigned int veces;
	unsigned readed;

	cmpt.other_ret = 1;	// next instruction must be RET

	if (!(_z80_get_F() & C_FLAG)) { // if Carry=0, is VERIFY, so return OK
		_z80_set_F(_z80_get_F() | C_FLAG);	 // verify OK
		_z80_set_IX(_z80_get_IX() + _z80_get_DE());
		_z80_set_DE(0);
		return;
	}

	empty=file_empty();

	
	if ((cmpt.tap_file == NULL)||(empty)) {
		_z80_set_F(_z80_get_F() & (~C_FLAG));	// Load error
		_z80_set_IX(_z80_get_IX() + _z80_get_DE());
		_z80_set_DE(0);
/*
		if(empty)
			sprintf ((char *)cmpt.osd_text, "Tape file empty");
		else
			sprintf ((char *)cmpt.osd_text, "No tape selected");
		cmpt.osd_time = 100;
*/
		return;
	}

	veces=0;

	flag_found=0;
	do {
		readed=gzread (cmpt.tap_file,value, 2);	// read length of current block
		if (readed!=2)	{			// end of file?
			veces++; // one more time rewinded
/*
			sprintf ((char *)cmpt.osd_text, "Tape rewind");			
			cmpt.osd_time = 100;
*/
			gzrewind (cmpt.tap_file);	// again
			gzread (cmpt.tap_file,value, 2);	// read length of current block
		}
		longitud = ((unsigned int) value[0]) + 256 * ((unsigned int) value[1]);
		gzread (cmpt.tap_file,value, 1);	// read flag byte
		longitud--;
		if (value[0] != _z80_get_A()) { // different flag
			gzread (cmpt.tap_file,value, longitud);	// jump to the next block
			if (veces==3) { // tape rewinded three times? Block with that flag not found.
/*
				sprintf((char *)cmpt.osd_text,"Block with right flag not found");
				cmpt.osd_time = 100;
*/
				_z80_set_F(_z80_get_F() & (~C_FLAG));	// Load error
				return;
			}
		} else
			flag_found = 1;
	} while(flag_found == 0);

	salir = 0;
	do {
		if (longitud == 0)
			salir = 1;
		if (_z80_get_DE() == 0)
			salir = 2;
		if (!salir) {
			gzread (cmpt.tap_file,value, 1);	// read byte
			WrZ80 (_z80_get_IX(), (unsigned char) value[0]);	// store the byte
			_z80_set_IX(_z80_get_IX()+1);
			_z80_set_DE(_z80_get_DE()-1);
			longitud--;
		}
	}
	while (!salir);

	clean_screen ();

	if (salir == 1) { // system wants to load more bytes that the existent
		_z80_set_F(_z80_get_F() & (~C_FLAG));	// Load error
		return;
	}

	if ((salir == 2) && (longitud != 1)) { // there are more bytes to load
		_z80_set_F(_z80_get_F() & (~C_FLAG));	// Load error
		if (longitud > 1)
			gzread (cmpt.tap_file,value, longitud);	// jump to the next block
		return;
	}

	gzread (cmpt.tap_file,value, 1);	// jump over the checksum
	_z80_set_F(_z80_get_F() | C_FLAG);	// Load OK
	return;

}

static long init_pos=0;
static long end_pos=0;

int tape_select(char *fname)
{
	unsigned char char_id[16];

	if (!strncmp(fname,(char *)cmpt.current_tap,2048))
		return 1;
	if(cmpt.tap_file!=NULL)
		rewind_tape(1);
	cmpt.tape_current_bit=0;
	cmpt.tape_current_mode=TAP_TRASH;
	if(cmpt.tap_file!=NULL)
		gzclose(cmpt.tap_file);
	cmpt.tap_file=gzopen((const char *)fname,"rb");
	cmpt.tape_write = 0;
	if(cmpt.tap_file==NULL)
		return 0;
	strncpy((char *)cmpt.current_tap,(const char*)fname,2048);
	gzread(cmpt.tap_file,char_id,10);
	if((!strncmp((const char *)char_id,"ZXTape!",7)) && (char_id[7]==0x1A)&&(char_id[8]==1)) 
		cmpt.tape_file_type = TAP_TZX;
	else
		cmpt.tape_file_type = TAP_TAP;
	rewind_tape(1);
	cmpt.pause=1;
	cmpt.tape_fast_load=0;
	init_pos=gztell(cmpt.tap_file);
/*
	gzseek(cmpt.tap_file,0,SEEK_END);
	end_pos=gztell(cmpt.tap_file);
	gzseek(cmpt.tap_file,init_pos,SEEK_SET);
*/
init_pos=0;
end_pos=10;
	return 1;
}

long getpos_tape(void)
{
/*
long pos=cmpt.tape_counter0+cmpt.tape_counter1;
if (end_pos<pos)
	end_pos=pos;
printf("cnt0=%i, cnt1=%i, end=%i, pos=%i\n",cmpt.tape_counter0,cmpt.tape_counter1,end_pos,pos);
return end_pos-pos;
*/
/*
	long ret;
	if (!cmpt.tap_file) return 0;
	ret=gztell(cmpt.tap_file);
	if (ret<init_pos)
		return 0;
	if (ret>end_pos)
		return end_pos;
	return ret-init_pos;
*/ return 0;
}

long getpos_permil_tape(void)
{
/*
	long ret;
	double pos=(double)getpos_tape(cmpt.tap_file);
	pos*=1000.0;
	pos/=(double)end_pos;
	ret=pos;
	if (ret<0) ret=0;
	else if (ret>=1000)
		ret=999;
	return ret;
*/ return 0;
}

void tape_reset(char *fname)
{
	if (fname && fname[0])
	{
		int fast=cmpt.tape_fast_load;
		if (fast)
			load_rom_loading (cmpt.mode128k);
		if (!strncmp(fname,(char *)cmpt.current_tap,2048))
		{
			cmpt.tape_current_mode = TAP_TRASH;
			rewind_tape(0);
		}
		else
			tape_select(fname);
		if (fast)
			cmpt.pause = 0;
		else
			cmpt.pause = 1;
		cmpt.tape_fast_load=fast;
	}
	else
	{
		if (cmpt.tap_file)
			gzclose(cmpt.tap_file);
		cmpt.tap_file=NULL;
		cmpt.current_tap[0]=0;
		cmpt.tape_current_mode = TAP_STOP;
		cmpt.pause = 1;
	}
}
