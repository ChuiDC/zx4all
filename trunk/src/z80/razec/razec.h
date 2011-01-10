/********************************************************************************/
/* RAZE Z80 emulator                                                            */
/* Heavily based on CZ80 emulator by Stephane Dallongueville                    */
/********************************************************************************/

#ifndef _CZ80_H_
#define _CZ80_H_

#ifdef __cplusplus
extern "C" {
#endif


/******************************/
/* Compiler dependant defines */
/******************************/
/* Fix this as you need it */

#ifndef u8
#define u8              unsigned char
#endif

#ifndef s8
#define s8              char
#endif

#ifndef u16
#define u16             unsigned short
#endif

#ifndef s16
#define s16             short
#endif

#ifndef u32
#define u32             unsigned int
#endif

#ifndef s32
#define s32             int
#endif

#ifndef UBYTE
  #define UBYTE unsigned char
#endif
#ifndef UWORD
  #define UWORD unsigned short
#endif


/*************************************/
/* Z80 core Structures & definitions */
/*************************************/

#define CZ80_FETCH_BITS         8   /* [4-12]  default = 8 */
#define CZ80_READ_BITS          8   /* [4-12]  default = 8 */
#define CZ80_WRITE_BITS         8   /* [4-12]  default = 8 */

#define CZ80_FETCH_SFT          (16 - CZ80_FETCH_BITS)
#define CZ80_FETCH_BANK         (1 << CZ80_FETCH_BITS)

#define CZ80_READ_SFT           (16 - CZ80_READ_BITS)
#define CZ80_READ_BANK         (1 << CZ80_READ_BITS)
#define CZ80_WRITE_SFT          (16 - CZ80_WRITE_BITS)
#define CZ80_WRITE_BANK         (1 << CZ80_WRITE_BITS)

#ifndef CZ80_BIG_ENDIAN
#define CZ80_LITTLE_ENDIAN      1
#endif
#define CZ80_USE_JUMPTABLE      0
#define CZ80_SIZE_OPT           0
#define CZ80_USE_WORD_HANDLER   0
#define CZ80_EXACT              1
#define CZ80_DEBUG              0


#define CZ80_SF_SFT     7
#define CZ80_ZF_SFT     6
#define CZ80_YF_SFT     5
#define CZ80_HF_SFT     4
#define CZ80_XF_SFT     3
#define CZ80_PF_SFT     2
#define CZ80_VF_SFT     2
#define CZ80_NF_SFT     1
#define CZ80_CF_SFT     0

#define CZ80_SF         (1 << CZ80_SF_SFT)
#define CZ80_ZF         (1 << CZ80_ZF_SFT)
#define CZ80_YF         (1 << CZ80_YF_SFT)
#define CZ80_HF         (1 << CZ80_HF_SFT)
#define CZ80_XF         (1 << CZ80_XF_SFT)
#define CZ80_PF         (1 << CZ80_PF_SFT)
#define CZ80_VF         (1 << CZ80_VF_SFT)
#define CZ80_NF         (1 << CZ80_NF_SFT)
#define CZ80_CF         (1 << CZ80_CF_SFT)

#define CZ80_IFF_SFT    CZ80_PF_SFT
#define CZ80_IFF        CZ80_PF

#define CZ80_HAS_INT    CZ80_IFF
#define CZ80_HAS_NMI    0x08

#define CZ80_RUNNING    0x10
#define CZ80_HALTED     0x20
#define CZ80_FAULTED    0x80
#define CZ80_DISABLE    0x40


typedef u32  CZ80_READ(const UWORD addr);
typedef void CZ80_WRITE(const UWORD addr, const u32 data);

typedef void CZ80_RETI_CALLBACK();
typedef s32  CZ80_INT_CALLBACK(s32 param);


/******************************************************************************/
/* RAZE stuff                                                                 */
/******************************************************************************/


/* Z80 registers */
typedef enum {
  Z80_REG_AF=0,
  Z80_REG_BC,
  Z80_REG_DE,
  Z80_REG_HL,
  Z80_REG_IX,
  Z80_REG_IY,
  Z80_REG_PC,
  Z80_REG_SP,
  Z80_REG_AF2,
  Z80_REG_BC2,
  Z80_REG_DE2,
  Z80_REG_HL2,
  Z80_REG_IFF1,        /* boolean - 1 or 0 */
  Z80_REG_IFF2,        /* boolean - 1 or 0 */
  Z80_REG_IR,
  Z80_REG_IM,          /* 0, 1, or 2 */
  Z80_REG_IRQVector,   /* 0x00 to 0xff */
  Z80_REG_IRQLine,     /* boolean - 1 or 0 */
  Z80_REG_Halted       /* boolean - 1 or 0 */
} z80_register;

typedef struct
{
	u32 z80_AF;
	u32 z80_BC;
	u32 z80_DE;
	u32 z80_HL;
	u32 z80_IX;
	u32 z80_IY;
	u32 z80_PC;
	u32 z80_SP;
	u32 z80_AF2;
	u32 z80_BC2;
	u32 z80_DE2;
	u32 z80_HL2;
	u8 z80_IFF1;
	u8 z80_IFF2;
	u32 z80_R;
	u32 z80_R2;
	u8 z80_I;
	u8 z80_flag35;
	u8 z80_IM;
	u8 z80_IRQVector;
	u8 z80_IRQLine;
	u8 z80_halted;
	u32 z80_Extra_Cycles;
	u32 z80_Fetch[256];
	u32 z80_Read[256*2];
	u32 z80_Write[256*2];
	u32 z80_In;
	u32 z80_Out;
	u32 z80_Reti;
	u32 z80_Fetch_Callback;
} z80_context;

/******************************************************************************/

typedef union
{
    u8 B;
    s8 SB;
} union8;

typedef union
{
	struct
	{
#if CZ80_LITTLE_ENDIAN
		u8 L;
		u8 H;
#else
		u8 H;
		u8 L;
#endif
	} B;
	struct
	{
#if CZ80_LITTLE_ENDIAN
		s8 L;
		s8 H;
#else
		s8 H;
		s8 L;
#endif
	} SB;
	u16 W;
	s16 SW;
} union16;

typedef struct
{
    union
    {
        u8      r8[8];
        union16 r16[4];
        struct
        {
            union16 BC;         /* 32 bytes aligned */
            union16 DE;
            union16 HL;
            union16 FA;
        };
    };

    union16 IX;
    union16 IY;
    union16 SP;
    u8      *PC;

    union16 BC2;
    union16 DE2;
    union16 HL2;
    union16 FA2;

	union16 R;
	union16 IFF;

	u8 I;
	u8 IM;
	u8 IntVect;
	u8 Status;

	u32 BasePC;
	u32 CycleIO;

	u32 CycleToDo;     /* 32 bytes aligned */
	u32 CycleSup;

	CZ80_READ *Read_Byte;
	CZ80_WRITE *Write_Byte;
#if CZ80_USE_WORD_HANDLER
	CZ80_READ *Read_Word;
	CZ80_WRITE *Write_Word;
#endif

	CZ80_READ *IN_Port;
	CZ80_WRITE *OUT_Port;

	CZ80_RETI_CALLBACK *RetI;
	CZ80_INT_CALLBACK *Interrupt_Ack;
	void *Fetch_Callback;

	u8 *Fetch[CZ80_FETCH_BANK];

	u8 *Read[CZ80_READ_BANK*2];
	u8 *Write[CZ80_WRITE_BANK*2];
} cz80_struc;


/*************************/
/* Public Z80 functions  */
/*************************/

/* Z80 main functions */
void  z80_reset(void);
int   z80_emulate(int cycles);
void  z80_raise_IRQ(UBYTE vector);
void  z80_lower_IRQ(void);
void  z80_cause_NMI(void);

void z80_map_fetch(UWORD start, UWORD end, UBYTE *memory);
void    Cz80_Set_ReadB(CZ80_READ *Func);
void    Cz80_Set_WriteB(CZ80_WRITE *Func);
#if CZ80_USE_WORD_HANDLER
void    Cz80_Set_ReadW(CZ80_READ *Func);
void    Cz80_Set_WriteW(CZ80_WRITE *Func);
#endif

void    Cz80_Set_INPort(CZ80_READ *Func);
void    Cz80_Set_OUTPort(CZ80_WRITE *Func);

void    Cz80_Set_IRQ_Callback(CZ80_INT_CALLBACK *Func);
void    Cz80_Set_RETI_Callback(CZ80_RETI_CALLBACK *Func);

u32     Cz80_Read_Byte(const UWORD addr);
u32     Cz80_Read_Word(const UWORD addr);
void    Cz80_Write_Byte(const UWORD addr, const u32 data);
void    Cz80_Write_Word(const UWORD addr, const u32 data);

s32     Cz80_Exec(s32 cycles);

void    Cz80_Set_IRQ(s32 vector);
void    Cz80_Set_NMI(void);
void    Cz80_Clear_IRQ(void);
void    Cz80_Clear_NMI(void);

s32     Cz80_Get_CycleToDo(void);
s32     Cz80_Get_CycleRemaining(void);
s32     Cz80_Get_CycleDone(void);
void    Cz80_End_Execute(void);
void    Cz80_Waste_Cycle(s32 cycle);

#ifdef __cplusplus
};
#endif

#endif  /* _CZ80_H_ */
