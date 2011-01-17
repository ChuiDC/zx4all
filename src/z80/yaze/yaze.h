/* Header file for the instruction set simulator.
   Copyright (C) 1995  Frank D. Cringle.
   Modifications for MMU and CP/M 3.1 Copyright (C) 2000/2003 by Andreas Gerlich
   

This file is part of yaze-ag - yet another Z80 emulator by ag.

Yaze-ag is free software; you can redistribute it and/or modify it under
the terms of the GNU General Public License as published by the Free
Software Foundation; either version 2 of the License, or (at your
option) any later version.

This program is distributed in the hope that it will be useful, but
WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA. */

/* SEE limits and BYTE-, unsigned short- and FASTREG - defintions im MEM_MMU.h */

/* two sets of accumulator / flags */
extern unsigned short yaze_af[2];
extern int yaze_af_sel;

/* two sets of 16-bit registers */
extern struct yaze_ddregs {
	unsigned short bc;
	unsigned short de;
	unsigned short hl;
} yaze_regs[2];
extern int yaze_regs_sel;

extern unsigned short yaze_ir;
extern unsigned short yaze_ix;
extern unsigned short yaze_iy;
extern unsigned short yaze_sp;
extern unsigned short yaze_pc;
extern unsigned short yaze_IFF;

/* see definitions for memory in mem_mmu.h */

#ifdef DEBUG_YAZE
extern volatile int yaze_stop;
#endif
extern unsigned yaze_tstates;

extern unsigned yaze_emulate(unsigned ncycles);
void yaze_release(void);
void yaze_int(unsigned vec);
