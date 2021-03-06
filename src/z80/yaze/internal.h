/* Header file for the Memory and the Memory Management Unit (MMU).
   Module MEM_MMU.[hc] Copyright (C) 1998/1999 by Andreas Gerlich (agl)

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

#include <limits.h>

#if UCHAR_MAX == 255
typedef unsigned char	BYTE;
#else
#error Need to find an 8-bit type for BYTE
#endif

#if USHRT_MAX == 65535
typedef unsigned short	WORD;
#else
#error Need to find an 16-bit type for WORD
#endif

/* FASTREG needs to be at least 16 bits wide and efficient for the
   host architecture */
#if UINT_MAX >= 65535
typedef unsigned int	FASTREG;
#else
typedef unsigned long	FASTREG;
#endif

/* FASTWORK needs to be wider than 16 bits and efficient for the host
   architecture */
#if UINT_MAX > 65535
typedef unsigned int	FASTWORK;
#else
typedef unsigned long	FASTWORK;
#endif


/*-------------------------------- definitions for memory yaze_space --------*/

#define Z80MEMSIZE 64		/* logical Addressyaze_space of the Z80 */

#ifndef MEMSIZE			/* if MEMSIZE are not given */
 #ifdef MMU
  #define MEMSIZE 16*Z80MEMSIZE	/* default with MMU: MEMSIZE = 8*Z80MEMSIZE */
 #else
  #define MEMSIZE Z80MEMSIZE	/* default without MMU: MEMSIZE = Z80MEMSIZE */
 #endif
#endif

extern BYTE ram[MEMSIZE*1024];	/* RAM which is present */

/*---------------------------------- definitions for MMU tables --------*/

#ifdef MMU

 #ifndef MMUTABLES
  #define MMUTABLES 16			 /* default: 16 MMU page tables */
 #endif

 #ifndef PAGESIZE
  #define PAGESIZE 4			/* Pagesize 4 KByte */
 #endif			     /* if you want to modify then it is also	*/
			     /* nessasary to modify the section		*/
			     /* "central definitions for memory access"	*/

 #define RAMPAGES MEMSIZE/PAGESIZE		/* No. of pages of RAM  */

 #define MMUPAGEPOINTERS Z80MEMSIZE/PAGESIZE	/* No. of Page-Pointers */

 typedef struct {
	BYTE *page[MMUPAGEPOINTERS];	/* page table for Z80 (64KB)	*/
 } pagetab_struct;

 extern pagetab_struct MMUtable[MMUTABLES];/* MMU page tables		    */
 extern pagetab_struct *mmu;		  /* Pointers to one MMU-pagetable */
 extern pagetab_struct *dmmu;		 /* ^ to destination MMU-pagetbl  */
 extern pagetab_struct *mmuget,*mmuput; /* Pointer for get/put		 */
 extern int mmutab;		       /* selected MMU-pagetable	*/

							  /* choose	*/
 #define ChooseMMUtab(mmut)  mmu=&MMUtable[mmutab=mmut]  /* mmutable	*/

 #define PP(cp) (ram + ((cp)<<12))	/* calculate page pointer	*/

#endif


/*----------------------- central definitions for memory access -----------*/

#ifdef MMU
 /* The following macros are nessasary for Access to Memory through a
    MMU-table : */
					/* normale access to Memory: */
 #define RAM(a)		 *( (mmu->page[(((a)&0xffff)>>12)]) + ((a)&0x0fff) )

				/* normale access to Memory with MMUpointer: */
 #define MRAM(xmmu,a)	 *((xmmu->page[(((a)&0xffff)>>12)]) + ((a)&0x0fff) )


					/* yaze_after access make a++ */
 #define RAM_pp(a)	 *( (mmu->page[(((a)&0xffff)>>12)]) + ((a++)&0x0fff) )
				/* with MMUpointer; yaze_after access make a++ */
 #define MRAM_pp(xmmu,a) *((xmmu->page[(((a)&0xffff)>>12)]) + ((a++)&0x0fff) )


					/* yaze_after access make a-- */
 #define RAM_mm(a)	 *( (mmu->page[(((a)&0xffff)>>12)]) + ((a--)&0x0fff) )
				/* with MMUpointer; yaze_after access make a-- */
 #define MRAM_mm(xmmu,a) *((xmmu->page[(((a)&0xffff)>>12)]) + ((a--)&0x0fff) )


					/* bevor access make --a */
 #define mm_RAM(a)	 *( (mmu->page[(((--a)&0xffff)>>12)]) + ((a)&0x0fff) )
					/* bevor access make --a */
 #define mm_MRAM(xmmu,a) *((xmmu->page[(((--a)&0xffff)>>12)]) + ((a)&0x0fff) )

#else
 /* ram access without MMU, like Version 1.05/1.06/1.10 */
 #define RAM(a)		 ram[(a)&0xffff]
 #define MRAM(xmmu,a)	 ram[(a)&0xffff]

 #define RAM_pp(a)	 ram[(a++)&0xffff]
 #define MRAM_pp(xmmu,a) ram[(a++)&0xffff]

 #define RAM_mm(a)	 ram[(a--)&0xffff]
 #define MRAM_mm(xmmu,a) ram[(a--)&0xffff]

 #define mm_RAM(a)	 ram[(--a)&0xffff]
 #define mm_MRAM(xmmu,a) ram[(--a)&0xffff]
#endif

/* Some important macros. They are the interface between an access from
   the simz80-/yaze-Modules and the method of the memory access: */

#ifdef YAZE_DIRECT_RAM
#define GetBYTE(a)	RAM(a)
#define GetBYTE_pp(a)	RAM_pp(a)
#define GetBYTE_mm(a)	RAM_mm(a)
#define mm_GetBYTE(a)	mm_RAM(a)
#define PutBYTE(a, v)	RAM(a) = v
#define PutBYTE_pp(a,v)	RAM_pp(a) = v
#define PutBYTE_mm(a,v)	RAM_mm(a) = v
#define GetWORD(a)	(RAM(a) | (RAM((a)+1) << 8))

/* don't work: #define GetWORD_pppp(a)	(RAM_pp(a) + (RAM_pp(a) << 8)) */
/* make once more a try at 18.10.1999/21:45 ... with the following macro:  */
/* works also not #define GetWORD_pppp(a) (RAM_pp(a) | (RAM_pp(a) << 8))  */
/* I dont know what the optimizer do with such macro.
   If someone knows about it - I'am very interessed to that knowledge.
 */

#define PutWORD(a, v)							\
    do { RAM(a) = (BYTE)(v);						\
	 RAM((a)+1) = (v) >> 8;						\
     } while (0)

#else

extern unsigned char RdZ80 (unsigned short Addr);
extern void WrZ80 (unsigned short Addr, unsigned char Value);
#define GetBYTE(a)	RdZ80((a)&0xffff)
#define GetBYTE_pp(a)	RdZ80((a++)&0xffff)
#define GetBYTE_mm(a)	RdZ80((a--)&0xffff)
#define mm_GetBYTE(a)	RdZ80((--a)&0xffff)
#define PutBYTE(a, v)	WrZ80((a)&0xffff,v)
#define PutBYTE_pp(a,v)	WrZ80((a++)&0xffff,v)
#define PutBYTE_mm(a,v)	WrZ80((a--)&0xffff,v)
#define GetWORD(a)	(RdZ80((a)&0xffff) | (RdZ80(((a)&0xffff)+1) << 8))

#define PutWORD(a, v)							\
    do { WrZ80((a)&0xffff,v); \
	 WrZ80(((a)&0xffff)+1,(v>>8)); \
     } while (0)

#endif


/*------------------- Some macros for manipulating Z80-memory : -------*/

#define memcpy_get_z(d,s,n)						\
    do { size_t len = n;						\
	 size_t source = s;						\
         BYTE *p1 = d;							\
         while (len--) *p1++ = GetBYTE_pp(source);			\
    } while (0)


#define memcpy_M_get_z(xm,d,s,n)					\
    do { size_t len = n;						\
	 size_t source = s;						\
	 BYTE *p1 = d;							\
	 while (len--) *p1++ = MRAM_pp(xm,source);			\
    } while (0)


#define memcpy_put_z(d,s,n)						\
    do { size_t len = n;						\
	 size_t dest = d;						\
         BYTE *p1 = s;							\
         while (len--) PutBYTE_pp(dest,*p1++);				\
    } while (0)


#define memcpy_M_put_z(xm,d,s,n)					\
    do { size_t len = n;						\
	 size_t dest = d;						\
         BYTE *p1 = s;							\
	 while (len--) MRAM_pp(xm,dest) = *p1++;			\
    } while (0)


#define memset_M_z(xm,p,v,n)						\
    do { size_t len = n;						\
         while (len--) MRAM_pp(xm,p) = v;				\
    } while (0)


#define memset_z(p,v,n)							\
    do { size_t len = n;						\
         while (len--) PutBYTE_pp(p,v);					\
    } while (0)


/*-------------------- Some macros for unix-memory operations : -------*/

#ifdef BSD
#if defined(sun)
#include <memory.h>
#include <string.h>
#endif
#ifndef strchr
#define strchr index
#endif
#ifndef strrchr
#define strrchr rindex
#endif
#define memclr(p,n)     bzero(p,n)
#define memcpy(t,f,n)   bcopy(f,t,n)
#define memcmp(p1,p2,n) bcmp(p1,p2,n)
#define memset(p,v,n)                                                   \
    do { size_t len = n;                                                \
         char *p1 = p;                                                  \
         while (len--) *p1++ = v;                                       \
    } while (0)
#else
#include <string.h>
#define memclr(p,n)     (void) memset(p,0,n)
#endif


/*-------------------------------------------- prototyping -------------*/
void initMEM();
void initMMU();
void loadMMU();
void printMMU();

#include "yaze.h"

#define FLAG_C	1
#define FLAG_N	2
#define FLAG_P	4
#define FLAG_H	16
#define FLAG_Z	64
#define FLAG_S	128

#define SETFLAG(f,c)	AF = (c) ? AF | FLAG_ ## f : AF & ~FLAG_ ## f
#define TSTFLAG(f)	((AF & FLAG_ ## f) != 0)

#define ldig(x)		((x) & 0xf)
#define hdig(x)		(((x)>>4)&0xf)
#define lreg(x)		((x)&0xff)
#define hreg(x)		(((x)>>8)&0xff)

#define Setlreg(x, v)	x = (((x)&0xff00) | ((v)&0xff))
#define Sethreg(x, v)	x = (((x)&0xff) | (((v)&0xff) << 8))

/* SEE functions for manipulating of memory in mem_mmu.h 
      line RAM, GetBYTE, GetWORD, PutBYTE, PutWORD, .... 
*/

#ifndef BIOS
extern unsigned char InZ80 (unsigned short Port);
extern void OutZ80 (unsigned short Port, unsigned char Value);
#define Input(port) InZ80(port)
#define Output(port, value) OutZ80(port,value)
#else
/* Define these as macros or functions if you really want to simulate I/O */
#define Input(port)	0
#define Output(port, value)
#endif

static unsigned char Cycles[256] =
{
   4,10, 7, 6, 4, 4, 7, 4, 4,11, 7, 6, 4, 4, 7, 4,
   8,10, 7, 6, 4, 4, 7, 4,12,11, 7, 6, 4, 4, 7, 4,
   7,10,16, 6, 4, 4, 7, 4, 7,11,16, 6, 4, 4, 7, 4,
   7,10,13, 6,11,11,10, 4, 7,11,13, 6, 4, 4, 7, 4,
   4, 4, 4, 4, 4, 4, 7, 4, 4, 4, 4, 4, 4, 4, 7, 4,
   4, 4, 4, 4, 4, 4, 7, 4, 4, 4, 4, 4, 4, 4, 7, 4,
   4, 4, 4, 4, 4, 4, 7, 4, 4, 4, 4, 4, 4, 4, 7, 4,
   7, 7, 7, 7, 7, 7, 4, 7, 4, 4, 4, 4, 4, 4, 7, 4,
   4, 4, 4, 4, 4, 4, 7, 4, 4, 4, 4, 4, 4, 4, 7, 4,
   4, 4, 4, 4, 4, 4, 7, 4, 4, 4, 4, 4, 4, 4, 7, 4,
   4, 4, 4, 4, 4, 4, 7, 4, 4, 4, 4, 4, 4, 4, 7, 4,
   4, 4, 4, 4, 4, 4, 7, 4, 4, 4, 4, 4, 4, 4, 7, 4,
   5,10,10,10,10,11, 7,11, 5,10,10, 0,10,17, 7,11,
   5,10,10,11,10,11, 7,11, 5, 4,10,11,10, 0, 7,11,
   5,10,10,19,10,11, 7,11, 5, 4,10, 4,10, 0, 7,11,
   5,10,10, 4,10,11, 7,11, 5, 6,10, 4,10, 0, 7,11 
};

static unsigned char CyclesCB[256] =
{
   8, 8, 8, 8, 8, 8,15, 8, 8, 8, 8, 8, 8, 8,15, 8,
   8, 8, 8, 8, 8, 8,15, 8, 8, 8, 8, 8, 8, 8,15, 8,
   8, 8, 8, 8, 8, 8,15, 8, 8, 8, 8, 8, 8, 8,15, 8,
   8, 8, 8, 8, 8, 8,15, 8, 8, 8, 8, 8, 8, 8,15, 8,
   8, 8, 8, 8, 8, 8,12, 8, 8, 8, 8, 8, 8, 8,12, 8,
   8, 8, 8, 8, 8, 8,12, 8, 8, 8, 8, 8, 8, 8,12, 8,
   8, 8, 8, 8, 8, 8,12, 8, 8, 8, 8, 8, 8, 8,12, 8,
   8, 8, 8, 8, 8, 8,12, 8, 8, 8, 8, 8, 8, 8,12, 8,
   8, 8, 8, 8, 8, 8,15, 8, 8, 8, 8, 8, 8, 8,15, 8,
   8, 8, 8, 8, 8, 8,15, 8, 8, 8, 8, 8, 8, 8,15, 8,
   8, 8, 8, 8, 8, 8,15, 8, 8, 8, 8, 8, 8, 8,15, 8,
   8, 8, 8, 8, 8, 8,15, 8, 8, 8, 8, 8, 8, 8,15, 8,
   8, 8, 8, 8, 8, 8,15, 8, 8, 8, 8, 8, 8, 8,15, 8,
   8, 8, 8, 8, 8, 8,15, 8, 8, 8, 8, 8, 8, 8,15, 8,
   8, 8, 8, 8, 8, 8,15, 8, 8, 8, 8, 8, 8, 8,15, 8,
   8, 8, 8, 8, 8, 8,15, 8, 8, 8, 8, 8, 8, 8,15, 8 
};

static unsigned char CyclesED[256] =
{
   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
  12,12,15,20, 8,14, 8, 9,12,12,15,20, 0,14, 0, 9,
  12,12,15,20, 0, 0, 8, 9,12,12,15,20, 0, 0, 8, 9,
  12,12,15,20, 0, 0, 0,18,12,12,15,20, 0, 0, 0,18,
  12, 0,15,20, 0, 0, 0, 0,12,12,15,20, 0, 0, 0, 0,
   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
  16,16,16,16, 0, 0, 0, 0,16,16,16,16, 0, 0, 0, 0,
   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
};

static unsigned char CyclesXX[256] =
{
   0, 0, 0, 0, 0, 0, 0, 0, 0,15, 0, 0, 0, 0, 0, 0,
   0, 0, 0, 0, 0, 0, 0, 0, 0,15, 0, 0, 0, 0, 0, 0,
   0,14,20,10, 9, 9, 9, 0, 0,15,20,10, 9, 9, 9, 0,
   0, 0, 0, 0,23,23,19, 0, 0,15, 0, 0, 0, 0, 0, 0,
   0, 0, 0, 0, 9, 9,19, 0, 0, 0, 0, 0, 9, 9,19, 0,
   0, 0, 0, 0, 9, 9,19, 0, 0, 0, 0, 0, 9, 9,19, 0,
   9, 9, 9, 9, 9, 9,19, 9, 9, 9, 9, 9, 9, 9,19, 9,
  19,19,19,19,19,19,19,19, 0, 0, 0, 0, 9, 9,19, 0,
   0, 0, 0, 0, 9, 9,19, 0, 0, 0, 0, 0, 9, 9,19, 0,
   0, 0, 0, 0, 9, 9,19, 0, 0, 0, 0, 0, 9, 9,19, 0,
   0, 0, 0, 0, 9, 9,19, 0, 0, 0, 0, 0, 9, 9,19, 0,
   0, 0, 0, 0, 9, 9,19, 0, 0, 0, 0, 0, 9, 9,19, 0,
   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
   0,14, 0,23, 0,15, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0,
   0, 0, 0, 0, 0, 0, 0, 0, 0,10, 0, 0, 0, 0, 0, 0
};

static unsigned char CyclesXXCB[256] =
{
   0, 0, 0, 0, 0, 0,23, 0, 0, 0, 0, 0, 0, 0,23, 0,
   0, 0, 0, 0, 0, 0,23, 0, 0, 0, 0, 0, 0, 0,23, 0,
   0, 0, 0, 0, 0, 0,23, 0, 0, 0, 0, 0, 0, 0,23, 0,
   0, 0, 0, 0, 0, 0,23, 0, 0, 0, 0, 0, 0, 0,23, 0,
  20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,
  20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,
  20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,
  20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,
   0, 0, 0, 0, 0, 0,23, 0, 0, 0, 0, 0, 0, 0,23, 0,
   0, 0, 0, 0, 0, 0,23, 0, 0, 0, 0, 0, 0, 0,23, 0,
   0, 0, 0, 0, 0, 0,23, 0, 0, 0, 0, 0, 0, 0,23, 0,
   0, 0, 0, 0, 0, 0,23, 0, 0, 0, 0, 0, 0, 0,23, 0,
   0, 0, 0, 0, 0, 0,23, 0, 0, 0, 0, 0, 0, 0,23, 0,
   0, 0, 0, 0, 0, 0,23, 0, 0, 0, 0, 0, 0, 0,23, 0,
   0, 0, 0, 0, 0, 0,23, 0, 0, 0, 0, 0, 0, 0,23, 0,
   0, 0, 0, 0, 0, 0,23, 0, 0, 0, 0, 0, 0, 0,23, 0
};

