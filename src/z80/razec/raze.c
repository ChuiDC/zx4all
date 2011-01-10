/********************************************************************************/
/* RAZE Z80 emulator                                                            */
/* Heavily based on CZ80 emulator by Stephane Dallongueville                    */
/********************************************************************************/

#include <stdio.h>
#include <string.h>

#include "razec.h"
#include "raze.inc"

#ifndef INLINE
	#define INLINE
#endif


/*** flag lookup tables ***/

static u8 SZXY[256];            /* zero and sign flags */
static u8 SZXYP[256];           /* zero, sign and parity flags */
static u8 SZXY_BIT[256];        /* zero, sign and parity/overflow (=zero) flags for BIT opcode */
static u8 SZXYHV_inc[256];      /* zero, sign, half carry and overflow flags INC R8 */
static u8 SZXYHV_dec[256];      /* zero, sign, half carry and overflow flags DEC R8 */

/* internal CPU context */
static cz80_struc cpu;

/***************************************/

/* Methods used for memory map management */
#define DIRECT_METHOD  0
#define HANDLED_METHOD 1

/* Flags to select between read and write index tables */
#define READ_MAP  1
#define WRITE_MAP 0


/* Z80 register related (getters/setters) */

static INLINE u32   Cz80_Get_BC(void);
static INLINE u32   Cz80_Get_DE(void);
static INLINE u32   Cz80_Get_HL(void);
static INLINE u32   Cz80_Get_AF(void);

static INLINE u32   Cz80_Get_BC2(void);
static INLINE u32   Cz80_Get_DE2(void);
static INLINE u32   Cz80_Get_HL2(void);
static INLINE u32   Cz80_Get_AF2(void);

static INLINE u32   Cz80_Get_IX(void);
static INLINE u32   Cz80_Get_IY(void);
static INLINE u32   Cz80_Get_SP(void);
static INLINE u32   Cz80_Get_PC(void);

static INLINE u32   Cz80_Get_R(void);
static INLINE u32   Cz80_Get_IFF1(void);
static INLINE u32   Cz80_Get_IFF2(void);
static INLINE u32   Cz80_Get_IM(void);
static INLINE u32   Cz80_Get_I(void);
static INLINE u32   Cz80_Get_IR(void);


static INLINE void  Cz80_Set_BC(u32 value);
static INLINE void  Cz80_Set_DE(u32 value);
static INLINE void  Cz80_Set_HL(u32 value);
static INLINE void  Cz80_Set_AF(u32 value);

static INLINE void  Cz80_Set_BC2(u32 value);
static INLINE void  Cz80_Set_DE2(u32 value);
static INLINE void  Cz80_Set_HL2(u32 value);
static INLINE void  Cz80_Set_AF2(u32 value);

static INLINE void  Cz80_Set_IX(u32 value);
static INLINE void  Cz80_Set_IY(u32 value);
static INLINE void  Cz80_Set_SP(u32 value);
static INLINE void  Cz80_Set_PC(u32 value);

static INLINE void  Cz80_Set_R(u32 value);
static INLINE void  Cz80_Set_IFF1(u32 value);
static INLINE void  Cz80_Set_IFF2(u32 value);
static INLINE void  Cz80_Set_IM(u32 value);
static INLINE void  Cz80_Set_I(u32 value);
static INLINE void Cz80_Set_IR(u32 value);



u32 Cz80_Read_Dummy(const UWORD addr);
void Cz80_Write_Dummy(const UWORD addr, const u32 data);

s32 Cz80_Interrupt_Ack_Dummy(s32 param);

/* Default handler for IN/OUT and RetI */
static UBYTE z80_default_in(UWORD port);
static void z80_default_out(UWORD port, UBYTE value);
static void Cz80_RetI_Dummy();


/*** core main functions ***/

/* Not anymore global as RAZE API does not provide it */
static void Cz80_Init(void)
{
    u32 i, j, p;

	/* TODO: comprobar */
    memset(&cpu, 0, (u32)(&(cpu.Fetch)) - (u32)(&cpu));


    /* flags tables initialisation */
    for (i = 0; i < 256; i++)
    {
        SZXY[i] = i & (CZ80_SF | CZ80_YF | CZ80_XF);
        if (!i) SZXY[i] |= CZ80_ZF;

        SZXY_BIT[i] = i & (CZ80_SF | CZ80_YF | CZ80_XF);
        if (!i) SZXY_BIT[i] |= CZ80_ZF | CZ80_PF;

        for (j = 0, p = 0; j < 8; j++) if (i & (1 << j)) p++;
        SZXYP[i] = SZXY[i];
        if (!(p & 1)) SZXYP[i] |= CZ80_PF;

        SZXYHV_inc[i] = SZXY[i];
        if(i == 0x80) SZXYHV_inc[i] |= CZ80_VF;
        if((i & 0x0F) == 0x00) SZXYHV_inc[i] |= CZ80_HF;

        SZXYHV_dec[i] = SZXY[i] | CZ80_NF;
        if (i == 0x7F) SZXYHV_dec[i] |= CZ80_VF;
        if ((i & 0x0F) == 0x0F) SZXYHV_dec[i] |= CZ80_HF;
    }


#if 0
    z80_map_fetch(0x0000, 0xFFFF, (u32) NULL);
#endif

    Cz80_Set_ReadB(Cz80_Read_Dummy);
    Cz80_Set_WriteB(Cz80_Write_Dummy);

    cpu.Interrupt_Ack = Cz80_Interrupt_Ack_Dummy;
    cpu.RetI = Cz80_RetI_Dummy;	/* This is also done in z80_init_memmap */
    cpu.IN_Port = (CZ80_READ *)z80_default_in;
    cpu.OUT_Port = (CZ80_WRITE *)z80_default_out;
}

/* Resets the Z80 */
void z80_reset(void)
{
#ifdef RAZEC_DEBUG
	printf("RAZE RESET z80...");
	fflush(stdout);
#endif

	/* This is a straight change in order to execute Cz80_Init at the very beginning */
	/* since RAZE API does not provide it and must be executed before anything else */
	/* memset(&cpu, 0, (u32)(&(cpu.CycleSup)) - (u32)(&(cpu.BC))); */
	Cz80_Init();

    Cz80_Set_PC(0);
    zIX = 0xFFFF;
    zIY = 0xFFFF;
#ifdef RAZEC_DEBUG
    zF = CZ80_ZF;
#else
    zSP = 0xFFFF;
    zFA = 0xFFFF;
#endif

#ifdef RAZEC_DEBUG
	printf("done!");
	fflush(stdout);
#endif
}

/* Returns the size of the context, in bytes */
s32 z80_get_context_size(void)
{
	/* Warning: This returns the size of the CZ80 CPU structure, not the RAZE one */
	return sizeof(cz80_struc);
}

/* Copy the given context to the current Z80 */
void z80_set_context(void *context)
{
	z80_context *ctxt = (z80_context *)context;

	/* Copy the full set of Z80 registers */
	Cz80_Set_AF(ctxt->z80_AF);
	Cz80_Set_BC(ctxt->z80_BC);
	Cz80_Set_DE(ctxt->z80_DE);
	Cz80_Set_HL(ctxt->z80_HL);
	Cz80_Set_IX(ctxt->z80_IX);
	Cz80_Set_IY(ctxt->z80_IY);
	Cz80_Set_PC(ctxt->z80_PC);
	Cz80_Set_SP(ctxt->z80_SP);
	Cz80_Set_AF2(ctxt->z80_AF2);
	Cz80_Set_BC2(ctxt->z80_BC2);
	Cz80_Set_DE2(ctxt->z80_DE2);
	Cz80_Set_HL2(ctxt->z80_HL2);
	Cz80_Set_IFF1(ctxt->z80_IFF1);
	Cz80_Set_IFF2(ctxt->z80_IFF2);
	Cz80_Set_R(ctxt->z80_R);
	Cz80_Set_I(ctxt->z80_I);

	/* TODO: the rest of registers */
}

/* Copy the current Z80 to the given context */
void z80_get_context(void *context)
{
	z80_context *ctxt = (z80_context *)context;

	/* Retrieve the full set of Z80 registers */
	ctxt->z80_AF = Cz80_Get_AF();
	ctxt->z80_BC = Cz80_Get_BC();
	ctxt->z80_DE = Cz80_Get_DE();
	ctxt->z80_HL = Cz80_Get_HL();
	ctxt->z80_IX = Cz80_Get_IX();
	ctxt->z80_IY = Cz80_Get_IY();
	ctxt->z80_PC = Cz80_Get_PC();
	ctxt->z80_SP = Cz80_Get_SP();
	ctxt->z80_AF2 = Cz80_Get_AF2();
	ctxt->z80_BC2 = Cz80_Get_BC2();
	ctxt->z80_DE2 = Cz80_Get_DE2();
	ctxt->z80_HL2 = Cz80_Get_HL2();
	ctxt->z80_IFF1 = Cz80_Get_IFF1();
	ctxt->z80_IFF2 = Cz80_Get_IFF2();
	ctxt->z80_R = Cz80_Get_R();
	ctxt->z80_I = Cz80_Get_I();

	/* TODO: the rest of registers */
}

/* Return the value of the specified register */
UWORD z80_get_reg(z80_register reg)
{
	switch(reg)
	{
		case Z80_REG_AF: return Cz80_Get_AF(); break;
		case Z80_REG_BC: return Cz80_Get_BC(); break;
		case Z80_REG_DE: return Cz80_Get_DE(); break;
		case Z80_REG_HL: return Cz80_Get_HL(); break;
		case Z80_REG_IX: return Cz80_Get_IX(); break;
		case Z80_REG_IY: return Cz80_Get_IY(); break;
		case Z80_REG_PC: return Cz80_Get_PC(); break;
		case Z80_REG_SP: return Cz80_Get_SP(); break;
		case Z80_REG_AF2: return Cz80_Get_AF2(); break;
		case Z80_REG_BC2: return Cz80_Get_BC2(); break;
		case Z80_REG_DE2: return Cz80_Get_DE2(); break;
		case Z80_REG_HL2: return Cz80_Get_HL2(); break;
		case Z80_REG_IFF1: return Cz80_Get_IFF1(); break;
		case Z80_REG_IFF2: return Cz80_Get_IFF2(); break;
		case Z80_REG_IR: return Cz80_Get_IR(); break;
		case Z80_REG_IM: return Cz80_Get_IM(); break;
		/* TODO */
		case Z80_REG_IRQVector: return cpu.IntVect; break;
		case Z80_REG_IRQLine: break;
		case Z80_REG_Halted: break;
	}

	return 0;	/* Removes compiler warning */
}

/* Set the specified register to a new value */
void z80_set_reg(z80_register reg, UWORD value)
{
	switch(reg)
	{
		case Z80_REG_AF: Cz80_Set_AF(value); break;
		case Z80_REG_BC: Cz80_Set_BC(value); break;
		case Z80_REG_DE: Cz80_Set_DE(value); break;
		case Z80_REG_HL: Cz80_Set_HL(value); break;
		case Z80_REG_IX: Cz80_Set_IX(value); break;
		case Z80_REG_IY: Cz80_Set_IY(value); break;
		case Z80_REG_PC: Cz80_Set_PC(value); break;
		case Z80_REG_SP: Cz80_Set_SP(value); break;
		case Z80_REG_AF2: Cz80_Set_AF2(value); break;
		case Z80_REG_BC2: Cz80_Set_BC2(value); break;
		case Z80_REG_DE2: Cz80_Set_DE2(value); break;
		case Z80_REG_HL2: Cz80_Set_HL2(value); break;
		case Z80_REG_IFF1: Cz80_Set_IFF1(value); break;
		case Z80_REG_IFF2: Cz80_Set_IFF2(value); break;
		case Z80_REG_IR: Cz80_Set_IR(value); break;
		case Z80_REG_IM: Cz80_Set_IM(value); break;
		/* TODO */
		case Z80_REG_IRQVector: cpu.IntVect = value & 0xFF; break;
		case Z80_REG_IRQLine: break;
		case Z80_REG_Halted: break;
	}
}


#include "razecexec.inc"


/* Causes an interrupt with the given vector.                                 */
/* In IM 0, the vector has to be an RST opcode.                               */
/* If interrupts are disabled, the interrupt will still happen as long as     */
/* the IRQ line stays raised.                                                 */
void z80_raise_IRQ(UBYTE vector)
{
    cpu.IntVect = vector;
    cpu.Status |= CZ80_HAS_INT;
    cpu.CycleSup = cpu.CycleIO;
    cpu.CycleIO = 0;
}

/* Causes a non-maskable interrupt.                                           */
/* This will always be accepted.                                              */
/* There is no raise/lower functions, as the NMI is edge-triggered.           */
void z80_cause_NMI(void)
{
    cpu.Status |= CZ80_HAS_NMI;
    cpu.CycleSup = cpu.CycleIO;
    cpu.CycleIO = 0;
}


/* Lowers the IRQ line */
void z80_lower_IRQ(void)
{
    cpu.Status &= ~CZ80_HAS_INT;
}

/******************************************************************************/
/* int z80_get_cycles_elapsed(void)                                           */
/* Returns the number of cycles emulated since z80_emulate was called.        */
/******************************************************************************/
s32 z80_get_cycles_elapsed(void)
{
    if (!(cpu.Status & CZ80_RUNNING)) return 0;

    return (cpu.CycleToDo - (cpu.CycleIO + cpu.CycleSup));
}

/******************************************************************************/
/* void z80_stop_emulating(void)                                              */
/* Stops the emulation dead. (waits for the current instruction to finish     */
/* first though).                                                             */
/* The return value from z80_execute will obviously be lower than expected.   */
/******************************************************************************/
void z80_stop_emulating(void)
{
    cpu.CycleToDo -= cpu.CycleIO + cpu.CycleSup;
    cpu.CycleIO = cpu.CycleSup = 0;
}

/*** Read / Write dummy functions ***/

u32 Cz80_Read_Dummy(const UWORD addr)
{
	const u32 block = addr >> CZ80_READ_SFT;

	if (cpu.Read[block * 2] != NULL)
	{
		u8 *(*handler)(u32);
		/* Call the handler */
		handler = (u8* (*)(u32))cpu.Read[block * 2];
		return (u32)handler(addr);
	}
	else
	{
		u8 *ptr = cpu.Read[(block * 2) + 1];
		/* Go direct */
		return ptr[addr];
	}
}

void Cz80_Write_Dummy(const UWORD addr, const u32 data)
{
	const u32 block = addr >> CZ80_WRITE_SFT;

	if (cpu.Write[block * 2] != NULL)
	{
		void (*handler)(u32, u32);
		/* Call the handler */
		handler = (void (*)(u32, u32))cpu.Write[block * 2];
		handler(addr, data);
	}
	else
	{
		u8 *ptr = cpu.Write[(block * 2) + 1];
		/* Go direct */
		ptr[addr] = data & 0xff;
	}
}

s32 Cz80_Interrupt_Ack_Dummy(s32 param)
{
    /* return vector */
    return -1;
}

static void Cz80_RetI_Dummy()
{
}

/* Default handler for IN/OUT and fetch callback */
static UBYTE z80_default_in(UWORD port)
{
	return 0xff;
}

static void z80_default_out(UWORD port, UBYTE value)
{
}

#if 0
/* Default fetch callback */
static void z80_default_fetch_callback(UWORD pc)
{
}
#endif

/*** Read / Write core functions ***/

u32 Cz80_Read_Byte(const UWORD addr)
{
    return cpu.Read_Byte(addr);
}

u32 Cz80_Read_Word(const UWORD addr)
{
#if CZ80_USE_WORD_HANDLER
    return cpu.Read_Word(addr);
#elif CZ80_LITTLE_ENDIAN
    return cpu.Read_Byte(addr) | (cpu.Read_Byte(addr + 1) << 8);
#else
    return (cpu.Read_Byte(addr) << 8) | cpu.Read_Byte(addr + 1);
#endif
}

void Cz80_Write_Byte(const UWORD addr, const u32 data)
{
    cpu.Write_Byte(addr, data);
}

void Cz80_Write_Word(const UWORD addr, const u32 data)
{
#if CZ80_USE_WORD_HANDLER
    cpu.Write_Word(addr, data);
#elif CZ80_LITTLE_ENDIAN
    cpu.Write_Byte(addr, data & 0xFF);
    cpu.Write_Byte(addr + 1, data >> 8);
#else
    cpu.Write_Byte(addr, data >> 8);
    cpu.Write_Byte(addr + 1, data & 0xFF);
#endif
}


/***************************************/
/*** Z80 I/O functions API functions ***/
/***************************************/

/* Reset the current memory map */
void z80_init_memmap(void)
{
	int i;

	/* Read handlers */
	for(i=0;i<CZ80_READ_BANK*2;i+=2)
		cpu.Read[i] = (u8*)Cz80_Read_Dummy;

	/* Write handlers */
	for(i=0;i<CZ80_WRITE_BANK*2;i+=2)
		cpu.Write[i] = (u8*)Cz80_Write_Dummy;

    cpu.RetI = Cz80_RetI_Dummy;
}

/* Finishes the current memory map */
void z80_end_memmap(void)
{
	/* It looks like there is no need to put any code in here */
}

/* Set read/write memory map tables */
/* Used by memory mapping functions */
static void z80_set_rw(UWORD start, UWORD end, s32 method, void *data, s32 offset, u8 *rw_table[])
{
    u32 i, j;
    u8 *direct = NULL, *handled = NULL;

	/* */
    i = start >> offset;
    j = end >> offset;

	/* Set the appropiate pointer */
	if (method)
	{
		handled = (u8*)data;
	}
	else
	{
		direct = (u8*)data - (i << offset);
	}

	/* Fill the index table */
    while (i <= j)
	{
		rw_table[i*2] = handled;
		rw_table[(i*2)+1] = direct;
		i++;
	}
}

/* Set the given area for op-code fetching                                    */
/* start/end = the area it covers                                             */
/* memory = the ROM/RAM to read from                                          */
void z80_map_fetch(UWORD start, UWORD end, UBYTE *memory)
{
    u32 i, j;

#ifdef RAZEC_DEBUG
	printf("Setting fetch. St=0x%04X - End:0x%04X - mem: 0x%04X\n",start,end,memory);
#endif

	start &= 0xFFFF;
	end &= 0xFFFF;

    i = start >> CZ80_FETCH_SFT;
    j = end >> CZ80_FETCH_SFT;
    memory -= i << CZ80_FETCH_SFT;

    while (i <= j)
    {
#ifdef RAZEC_DEBUG
		printf("Setting bank %d... -> 0x%08X\n",i,memory);
		fflush(stdout);
#endif
		cpu.Fetch[i++] = memory;
	}
}

/* Moves a Z80_MAP_MAPPED area to use a different region of memory            */
/* start/end = the area it covers (must be page-aligned)                      */
/* memory = the ROM/RAM to read from                                          */
void z80_map_read(UWORD start, UWORD end, UBYTE *memory)
{
	z80_set_rw(start, end, DIRECT_METHOD, memory, CZ80_READ_SFT, cpu.Read);
}

/* Moves a Z80_MAP_MAPPED area to use a different region of memory            */
/* start/end = the area it covers (must be page-aligned)                      */
/* memory = the ROM/RAM to read from                                          */
void z80_map_write(UWORD start, UWORD end, UBYTE *memory)
{
	z80_set_rw(start, end, DIRECT_METHOD, memory, CZ80_WRITE_SFT, cpu.Write);
}

/* Add a READ memory handler to the memory map                                */
/* start/end = the area it covers                                             */
/* method = 0 for direct, 1 for handled                                       */
/* data = RAM for direct, handler for handled                                 */
void z80_add_read(UWORD start, UWORD end, int method, void *data)
{
	z80_set_rw(start, end, method, data ,CZ80_READ_SFT, cpu.Read);
}

/* Add a WRITE memory handler to the memory map                               */
/* start/end = the area it covers                                             */
/* method = 0 for direct, 1 for handled                                       */
/* data = RAM for direct, handler for handled                                 */
void z80_add_write(UWORD start, UWORD end, int method, void *data)
{
	z80_set_rw(start, end, method, data, CZ80_WRITE_SFT, cpu.Write);
}

/* Set the IN port handler to the given function */
void z80_set_in(UBYTE (*handler)(UWORD port))
{
	cpu.IN_Port = (CZ80_READ *)handler;
}

/* Set the OUT port handler to the given function */
void z80_set_out(void (*handler)(UWORD port, UBYTE value))
{
	cpu.OUT_Port = (CZ80_WRITE *)handler;
}

/* Set the RETI handler to the given function */
void z80_set_reti(void (*handler)(void))
{
	cpu.RetI = (CZ80_RETI_CALLBACK *)handler;
}

/* Set the fetch callback to the given function */
void z80_set_fetch_callback(void (*handler)(UWORD pc))
{
	cpu.Fetch_Callback = (void *)handler;
}


/*** setting core functions ***/

void Cz80_Set_ReadB(CZ80_READ *Func)
{
    cpu.Read_Byte = Func;
}

void Cz80_Set_WriteB(CZ80_WRITE *Func)
{
    cpu.Write_Byte = Func;
}

void Cz80_Set_ReadW(CZ80_READ *Func)
{
#if CZ80_USE_WORD_HANDLER
    cpu.Read_Word = Func;
#endif
}

void Cz80_Set_WriteW(CZ80_WRITE *Func)
{
#if CZ80_USE_WORD_HANDLER
    cpu.Write_Word = Func;
#endif
}

void Cz80_Set_INPort(CZ80_READ *Func)
{
    cpu.IN_Port = Func;
}

void Cz80_Set_OUTPort(CZ80_WRITE *Func)
{
    cpu.OUT_Port = Func;
}

void Cz80_Set_IRQ_Callback(CZ80_INT_CALLBACK *Func)
{
    cpu.Interrupt_Ack = Func;
}

void Cz80_Set_RETI_Callback(CZ80_RETI_CALLBACK *Func)
{
    cpu.RetI = Func;
}

/*** externals main functions ***/

static INLINE u32 Cz80_Get_BC(void)
{
    return zBC;
}

static INLINE u32 Cz80_Get_DE(void)
{
    return zDE;
}

static INLINE u32 Cz80_Get_HL(void)
{
    return zHL;
}

static INLINE u32 Cz80_Get_AF(void)
{
    return (zF | (zA << 8));
}

static INLINE u32 Cz80_Get_BC2(void)
{
    return zBC2;
}

static INLINE u32 Cz80_Get_DE2(void)
{
    return zDE2;
}

static INLINE u32 Cz80_Get_HL2(void)
{
    return zHL2;
}

static INLINE u32 Cz80_Get_AF2(void)
{
    return (zF2 | (zA2 << 8));
}

static INLINE u32 Cz80_Get_IX(void)
{
    return zIX;
}

static INLINE u32 Cz80_Get_IY(void)
{
    return zIY;
}

static INLINE u32 Cz80_Get_SP(void)
{
    return zSP;
}

static INLINE u32 Cz80_Get_PC(void)
{
    u8* PC = cpu.PC;
    return zRealPC;
}

static INLINE u32 Cz80_Get_R(void)
{
    return zR;
}

static INLINE u32 Cz80_Get_IFF1(void)
{
	/* TODO */
    u32 value = 0;

    if (zIFF1 & CZ80_IFF) value |= 1;
    if (zIFF2 & CZ80_IFF) value |= 2;
    return value;
}

static INLINE u32 Cz80_Get_IFF2(void)
{
	/* TODO */
    u32 value = 0;

    if (zIFF1 & CZ80_IFF) value |= 1;
    if (zIFF2 & CZ80_IFF) value |= 2;
    return value;
}

static INLINE u32 Cz80_Get_IM(void)
{
    return zIM;
}

static INLINE u32 Cz80_Get_I(void)
{
    return zI;
}

static INLINE u32 Cz80_Get_IR(void)
{
	return (Cz80_Get_I() << 8) | Cz80_Get_R();
}

static INLINE void Cz80_Set_BC(u32 value)
{
    zBC = value;
}

static INLINE void Cz80_Set_DE(u32 value)
{
    zDE = value;
}

static INLINE void Cz80_Set_HL(u32 value)
{
    zHL = value;
}

static INLINE void Cz80_Set_AF(u32 val)
{
    zF = val;
    zA = val >> 8;
}

static INLINE void Cz80_Set_BC2(u32 value)
{
    zBC2 = value;
}

static INLINE void Cz80_Set_DE2(u32 value)
{
    zDE2 = value;
}

static INLINE void Cz80_Set_HL2(u32 value)
{
    zHL2 = value;
}

static INLINE void Cz80_Set_AF2(u32 val)
{
    zF2 = val;
    zA2 = val >> 8;
}

static INLINE void Cz80_Set_IX(u32 value)
{
    zIX = value;
}

static INLINE void Cz80_Set_IY(u32 value)
{
    zIY = value;
}

static INLINE void Cz80_Set_SP(u32 value)
{
    zSP = value;
}

static INLINE void Cz80_Set_PC(u32 val)
{
    cpu.BasePC = (u32) cpu.Fetch[val >> CZ80_FETCH_SFT];
    cpu.PC = (u8*)(val + cpu.BasePC);
}

static INLINE void Cz80_Set_R(u32 value)
{
    zR = value & 0xFF;
    zR2 = value & 0x80;
}

static INLINE void Cz80_Set_IFF1(u32 value)
{
    if (value & 1) zIFF1 = CZ80_IFF;
}

static INLINE void Cz80_Set_IFF2(u32 value)
{
    if (value & 1) zIFF2 = CZ80_IFF;
}

static INLINE void Cz80_Set_IM(u32 value)
{
    zIM = value & 3;
}

static INLINE void Cz80_Set_I(u32 value)
{
    zI = value & 0xFF;
}

static INLINE void Cz80_Set_IR(u32 value)
{
    Cz80_Set_I(value >> 8);
    Cz80_Set_R(value & 0xFF);
}
