#ifndef Z80INTRF_H
#define Z80INTRF_H

#include<stdio.h>

#ifndef USE_RAZE

#ifdef USE_YAZE

#include "yaze/yaze.h"

#define C_FLAG      0x01       /* 1: Carry/Borrow occured    */

#define _z80_set_AF(VALUE) yaze_af[yaze_af_sel]=VALUE
#define _z80_set_A(VALUE) yaze_af[yaze_af_sel]=(yaze_af[yaze_af_sel]&0xFF)|(VALUE<<8)
#define _z80_set_F(VALUE) yaze_af[yaze_af_sel]=(yaze_af[yaze_af_sel]&0xFF00)|(VALUE)
#define _z80_set_BC(VALUE) yaze_regs[yaze_regs_sel].bc=VALUE
#define _z80_set_B(VALUE) yaze_regs[yaze_regs_sel].bc=(yaze_regs[yaze_regs_sel].bc&0xFF)|(VALUE<<8)
#define _z80_set_C(VALUE) yaze_regs[yaze_regs_sel].bc=(yaze_regs[yaze_regs_sel].bc&0xFF00)|(VALUE)
#define _z80_set_DE(VALUE) yaze_regs[yaze_regs_sel].de=VALUE
#define _z80_set_D(VALUE) yaze_regs[yaze_regs_sel].de=(yaze_regs[yaze_regs_sel].de&0xFF)|(VALUE<<8)
#define _z80_set_E(VALUE) yaze_regs[yaze_regs_sel].de=(yaze_regs[yaze_regs_sel].de&0xFF00)|(VALUE)
#define _z80_set_HL(VALUE) yaze_regs[yaze_regs_sel].hl=VALUE
#define _z80_set_H(VALUE) yaze_regs[yaze_regs_sel].hl=(yaze_regs[yaze_regs_sel].hl&0xFF)|(VALUE<<8)
#define _z80_set_L(VALUE) yaze_regs[yaze_regs_sel].hl=(yaze_regs[yaze_regs_sel].hl&0xFF00)|(VALUE)
#define _z80_set_IX(VALUE) yaze_ix=VALUE
#define _z80_set_IY(VALUE) yaze_iy=VALUE
#define _z80_set_PC(VALUE) yaze_pc=VALUE
#define _z80_set_SP(VALUE) yaze_sp=VALUE
#define _z80_set_AF1(VALUE) yaze_af[1-yaze_af_sel]=VALUE
#define _z80_set_A1(VALUE) yaze_af[1-yaze_af_sel]=(yaze_af[1-yaze_af_sel]&0xFF)|(VALUE<<8)
#define _z80_set_F1(VALUE) yaze_af[1-yaze_af_sel]=(yaze_af[1-yaze_af_sel]&0xFF00)|(VALUE)
#define _z80_set_BC1(VALUE) yaze_regs[1-yaze_regs_sel].bc=VALUE
#define _z80_set_B1(VALUE) yaze_regs[1-yaze_regs_sel].bc=(yaze_regs[1-yaze_regs_sel].bc&0xFF)|(VALUE<<8)
#define _z80_set_C1(VALUE) yaze_regs[1-yaze_regs_sel].bc=(yaze_regs[1-yaze_regs_sel].bc&0xFF00)|(VALUE)
#define _z80_set_DE1(VALUE) yaze_regs[1-yaze_regs_sel].de=VALUE
#define _z80_set_D1(VALUE) yaze_regs[1-yaze_regs_sel].de=(yaze_regs[1-yaze_regs_sel].de&0xFF)|(VALUE<<8)
#define _z80_set_E1(VALUE) yaze_regs[1-yaze_regs_sel].de=(yaze_regs[1-yaze_regs_sel].de&0xFF00)|(VALUE)
#define _z80_set_HL1(VALUE) yaze_regs[1-yaze_regs_sel].hl=VALUE
#define _z80_set_H1(VALUE) yaze_regs[1-yaze_regs_sel].hl=(yaze_regs[1-yaze_regs_sel].hl&0xFF)|(VALUE<<8)
#define _z80_set_L1(VALUE) yaze_regs[1-yaze_regs_sel].hl=(yaze_regs[1-yaze_regs_sel].hl&0xFF00)|(VALUE)
#define _z80_set_IFF(VALUE) yaze_IFF=VALUE
#define _z80_set_I(VALUE) yaze_ir=(yaze_ir&0xFF)|(VALUE<<8)
#define _z80_set_R(VALUE) yaze_ir=(yaze_ir&0xFF00)|(VALUE)

#define _z80_get_AF() yaze_af[yaze_af_sel]
#define _z80_get_A() yaze_af[yaze_af_sel]>>8
#define _z80_get_F() yaze_af[yaze_af_sel]&0xFF
#define _z80_get_BC() yaze_regs[yaze_regs_sel].bc
#define _z80_get_B() yaze_regs[yaze_regs_sel].bc>>8
#define _z80_get_C() yaze_regs[yaze_regs_sel].bc&0xFF
#define _z80_get_DE() yaze_regs[yaze_regs_sel].de
#define _z80_get_D() yaze_regs[yaze_regs_sel].de>>8
#define _z80_get_E() yaze_regs[yaze_regs_sel].de&0xFF
#define _z80_get_HL() yaze_regs[yaze_regs_sel].hl
#define _z80_get_H() yaze_regs[yaze_regs_sel].hl>>8
#define _z80_get_L() yaze_regs[yaze_regs_sel].hl&0xFF
#define _z80_get_IX() yaze_ix
#define _z80_get_IX_l() yaze_ix&0xFF
#define _z80_get_IX_h() yaze_ix>>8
#define _z80_get_IY() yaze_iy
#define _z80_get_IY_l() yaze_iy&0xFF
#define _z80_get_IY_h() yaze_iy>>8
#define _z80_get_PC() yaze_pc
#define _z80_get_PC_l() yaze_pc&0xFF
#define _z80_get_PC_h() yaze_pc>>8
#define _z80_get_SP() yaze_sp
#define _z80_get_SP_l() yaze_sp&0xFF
#define _z80_get_SP_h() yaze_sp>>8
#define _z80_get_AF1() yaze_af[1-yaze_af_sel]
#define _z80_get_A1() yaze_af[1-yaze_af_sel]>>8
#define _z80_get_F1() yaze_af[1-yaze_af_sel]&0xFF
#define _z80_get_BC1() yaze_regs[1-yaze_regs_sel].bc
#define _z80_get_B1() yaze_regs[1-yaze_regs_sel].bc>>8
#define _z80_get_C1() yaze_regs[1-yaze_regs_sel].bc&0xFF
#define _z80_get_DE1() yaze_regs[1-yaze_regs_sel].de
#define _z80_get_D1() yaze_regs[1-yaze_regs_sel].de>>8
#define _z80_get_E1() yaze_regs[1-yaze_regs_sel].de&0xFF
#define _z80_get_HL1() yaze_regs[1-yaze_regs_sel].hl
#define _z80_get_H1() yaze_regs[1-yaze_regs_sel].hl>>8
#define _z80_get_L1() yaze_regs[1-yaze_regs_sel].hl&0xFF
#define _z80_get_IFF() yaze_IFF
#define _z80_get_I() yaze_ir>>8
#define _z80_get_R() yaze_ir&0xFF
#define _z80_get_R2() 0

#define _z80_get_last_cycles() yaze_tstates
#ifndef DEBUG_Z80
#define _z80_release() yaze_release()
#else
#define _z80_release()
#endif

static __inline__ unsigned _z80_emulate(unsigned ncycles)
{
	yaze_tstates=0;
	return yaze_emulate(ncycles);
}

#define _z80_interrupt(VEC) yaze_int(VEC)
#define _z80_reset() \
{ \
	yaze_af_sel=yaze_regs_sel=0; \
	yaze_pc=yaze_sp=0; \
	yaze_af[0]=yaze_af[1]=0x40; \
	yaze_regs[0].bc=yaze_regs[1].bc=0; \
	yaze_regs[0].de=yaze_regs[1].de=0; \
	yaze_regs[0].hl=yaze_regs[1].hl=0; \
	yaze_IFF=yaze_ir=0; \
	yaze_ix=0xFFFF; \
	yaze_iy=0xFFFF; \
}


#define _z80_resetmapping_fetch()
#define _z80_resetmapping()
#define _z80_init()

#else

#include "Z80/Z80.h"

extern Z80 procesador;

#define _z80_set_AF(VALUE) procesador.AF.W=VALUE
#define _z80_set_A(VALUE) procesador.AF.B.h=VALUE
#define _z80_set_F(VALUE) procesador.AF.B.l=VALUE
#define _z80_set_BC(VALUE) procesador.BC.W=VALUE
#define _z80_set_B(VALUE) procesador.BC.B.h=VALUE
#define _z80_set_C(VALUE) procesador.BC.B.l=VALUE
#define _z80_set_DE(VALUE) procesador.DE.W=VALUE
#define _z80_set_D(VALUE) procesador.DE.B.h=VALUE
#define _z80_set_E(VALUE) procesador.DE.B.l=VALUE
#define _z80_set_HL(VALUE) procesador.HL.W=VALUE
#define _z80_set_H(VALUE) procesador.HL.B.h=VALUE
#define _z80_set_L(VALUE) procesador.HL.B.l=VALUE
#define _z80_set_IX(VALUE) procesador.IX.W=VALUE
#define _z80_set_IY(VALUE) procesador.IY.W=VALUE
#define _z80_set_PC(VALUE) procesador.PC.W=VALUE
#define _z80_set_SP(VALUE) procesador.SP.W=VALUE
#define _z80_set_AF1(VALUE) procesador.AF1.W=VALUE
#define _z80_set_A1(VALUE) procesador.AF1.B.h=VALUE
#define _z80_set_F1(VALUE) procesador.AF1.B.l=VALUE
#define _z80_set_BC1(VALUE) procesador.BC1.W=VALUE
#define _z80_set_B1(VALUE) procesador.BC1.B.h=VALUE
#define _z80_set_C1(VALUE) procesador.BC1.B.l=VALUE
#define _z80_set_DE1(VALUE) procesador.DE1.W=VALUE
#define _z80_set_D1(VALUE) procesador.DE1.B.h=VALUE
#define _z80_set_E1(VALUE) procesador.DE1.B.l=VALUE
#define _z80_set_HL1(VALUE) procesador.HL1.W=VALUE
#define _z80_set_H1(VALUE) procesador.HL1.B.h=VALUE
#define _z80_set_L1(VALUE) procesador.HL1.B.l=VALUE
#define _z80_set_IFF(VALUE) procesador.IFF=VALUE
#define _z80_set_I(VALUE) procesador.I=VALUE
#define _z80_set_R(VALUE) procesador.R=VALUE

#define _z80_get_AF() procesador.AF.W
#define _z80_get_A() procesador.AF.B.h
#define _z80_get_F() procesador.AF.B.l
#define _z80_get_BC() procesador.BC.W
#define _z80_get_B() procesador.BC.B.h
#define _z80_get_C() procesador.BC.B.l
#define _z80_get_DE() procesador.DE.W
#define _z80_get_D() procesador.DE.B.h
#define _z80_get_E() procesador.DE.B.l
#define _z80_get_HL() procesador.HL.W
#define _z80_get_H() procesador.HL.B.h
#define _z80_get_L() procesador.HL.B.l
#define _z80_get_IX() procesador.IX.W
#define _z80_get_IX_l() procesador.IX.B.l
#define _z80_get_IX_h() procesador.IX.B.h
#define _z80_get_IY() procesador.IY.W
#define _z80_get_IY_l() procesador.IY.B.l
#define _z80_get_IY_h() procesador.IY.B.h
#define _z80_get_PC() procesador.PC.W
#define _z80_get_PC_l() procesador.PC.B.l
#define _z80_get_PC_h() procesador.PC.B.h
#define _z80_get_SP() procesador.SP.W
#define _z80_get_SP_l() procesador.SP.B.l
#define _z80_get_SP_h() procesador.SP.B.h
#define _z80_get_AF1() procesador.AF1.W
#define _z80_get_A1() procesador.AF1.B.h
#define _z80_get_F1() procesador.AF1.B.l
#define _z80_get_BC1() procesador.BC1.W
#define _z80_get_B1() procesador.BC1.B.h
#define _z80_get_C1() procesador.BC1.B.l
#define _z80_get_DE1() procesador.DE1.W
#define _z80_get_D1() procesador.DE1.B.h
#define _z80_get_E1() procesador.DE1.B.l
#define _z80_get_HL1() procesador.HL1.W
#define _z80_get_H1() procesador.HL1.B.h
#define _z80_get_L1() procesador.HL1.B.l
#define _z80_get_IFF() procesador.IFF
#define _z80_get_I() procesador.I
#define _z80_get_R() procesador.R
#define _z80_get_R2() procesador.R2

#define _z80_get_last_cycles() procesador.TStates
#ifndef DEBUG_Z80
#define _z80_release() Z80_release(&procesador)
#else
#define _z80_release()
#endif

static __inline__ unsigned _z80_emulate(unsigned ncycles)
{
	procesador.TStates=0;
	return ExecZ80_slice(&procesador,ncycles);
}

#define _z80_interrupt(VEC) IntZ80(&procesador,VEC)
#define _z80_reset() \
{ \
	ResetZ80 (&procesador); \
	procesador.SP.W=0; \
	procesador.AF.W=0x40; \
	procesador.IX.W=0xFFFF; \
	procesador.IY.W=0xFFFF; \
}


#define _z80_resetmapping_fetch()
#define _z80_resetmapping()

#define _z80_init() \
{ \
	procesador.Trace=0; \
	procesador.IAutoReset=0; \
	procesador.TrapBadOps=0; \
	procesador.ICount=200; \
	procesador.TStates=0; \
}

#endif
#else

extern unsigned __z80_last_cycles;

#include "raze/raze.h"

#define C_FLAG      0x01       /* 1: Carry/Borrow occured    */

#define _z80_set_AF(VALUE) z80_set_reg(Z80_REG_AF,VALUE)
#define _z80_set_A(VALUE) z80_set_reg( Z80_REG_AF,( (z80_get_reg(Z80_REG_AF)&0xFF)|(VALUE<<8)))
#define _z80_set_F(VALUE) z80_set_reg( Z80_REG_AF,( (z80_get_reg(Z80_REG_AF)&0xFF00)|(VALUE&0xFF)))
#define _z80_set_BC(VALUE) z80_set_reg(Z80_REG_BC,VALUE) 
#define _z80_set_B(VALUE) z80_set_reg( Z80_REG_BC,( (z80_get_reg(Z80_REG_BC)&0xFF)|(VALUE<<8)))
#define _z80_set_C(VALUE) z80_set_reg( Z80_REG_BC,( (z80_get_reg(Z80_REG_BC)&0xFF00)|(VALUE&0xFF)))
#define _z80_set_DE(VALUE) z80_set_reg(Z80_REG_DE,VALUE)
#define _z80_set_D(VALUE) z80_set_reg( Z80_REG_DE,( (z80_get_reg(Z80_REG_DE)&0xFF)|(VALUE<<8)))
#define _z80_set_E(VALUE) z80_set_reg( Z80_REG_DE,( (z80_get_reg(Z80_REG_DE)&0xFF00)|(VALUE&0xFF)))
#define _z80_set_HL(VALUE) z80_set_reg(Z80_REG_HL,VALUE)
#define _z80_set_H(VALUE) z80_set_reg( Z80_REG_HL,( (z80_get_reg(Z80_REG_HL)&0xFF)|(VALUE<<8)))
#define _z80_set_L(VALUE) z80_set_reg( Z80_REG_HL,( (z80_get_reg(Z80_REG_HL)&0xFF00)|(VALUE&0xFF)))
#define _z80_set_IX(VALUE) z80_set_reg(Z80_REG_IX,VALUE)
#define _z80_set_IY(VALUE) z80_set_reg(Z80_REG_IY,VALUE)
#define _z80_set_PC(VALUE) z80_set_reg(Z80_REG_PC,VALUE)
#define _z80_set_SP(VALUE) z80_set_reg(Z80_REG_SP,VALUE)
#define _z80_set_AF1(VALUE) z80_set_reg(Z80_REG_AF2,VALUE)
#define _z80_set_A1(VALUE) z80_set_reg( Z80_REG_AF2,( (z80_get_reg(Z80_REG_AF2)&0xFF)|(VALUE<<8)))
#define _z80_set_F1(VALUE) z80_set_reg( Z80_REG_AF2,( (z80_get_reg(Z80_REG_AF2)&0xFF00)|(VALUE&0xFF)))
#define _z80_set_BC1(VALUE) z80_set_reg(Z80_REG_BC2,VALUE) 
#define _z80_set_B1(VALUE) z80_set_reg( Z80_REG_BC2,( (z80_get_reg(Z80_REG_BC2)&0xFF)|(VALUE<<8)))
#define _z80_set_C1(VALUE) z80_set_reg( Z80_REG_BC2,( (z80_get_reg(Z80_REG_BC2)&0xFF00)|(VALUE&0xFF)))
#define _z80_set_DE1(VALUE) z80_set_reg(Z80_REG_DE2,VALUE)
#define _z80_set_D1(VALUE) z80_set_reg( Z80_REG_DE2,( (z80_get_reg(Z80_REG_DE2)&0xFF)|(VALUE<<8)))
#define _z80_set_E1(VALUE) z80_set_reg( Z80_REG_DE2,( (z80_get_reg(Z80_REG_DE2)&0xFF00)|(VALUE&0xFF)))
#define _z80_set_HL1(VALUE) z80_set_reg(Z80_REG_HL2,VALUE)
#define _z80_set_H1(VALUE) z80_set_reg( Z80_REG_HL2,( (z80_get_reg(Z80_REG_HL2)&0xFF)|(VALUE<<8)))
#define _z80_set_L1(VALUE) z80_set_reg( Z80_REG_HL2,( (z80_get_reg(Z80_REG_HL2)&0xFF00)|(VALUE&0xFF)))
#define _z80_set_IFF(VALUE) z80_set_reg(Z80_REG_IFF1,VALUE) 
#define _z80_set_I(VALUE) z80_set_reg(Z80_REG_IR,(((unsigned short)VALUE)<<8)|(((unsigned short)z80_get_reg(Z80_REG_IR))&0xFF)) 
#define _z80_set_R(VALUE) z80_set_reg(Z80_REG_IR,(((unsigned short)VALUE)&0xFF)|(0xFF00&(((unsigned short)z80_get_reg(Z80_REG_IR))))) 

#define _z80_get_AF() z80_get_reg(Z80_REG_AF)
#define _z80_get_A() ((z80_get_reg(Z80_REG_AF)>>8)&0xFF)
#define _z80_get_F() (z80_get_reg(Z80_REG_AF)&0xFF)
#define _z80_get_BC() z80_get_reg(Z80_REG_BC)
#define _z80_get_B() ((z80_get_reg(Z80_REG_BC)>>8)&0xFF)
#define _z80_get_C() (z80_get_reg(Z80_REG_BC)&0xFF)
#define _z80_get_DE() z80_get_reg(Z80_REG_DE)
#define _z80_get_D() ((z80_get_reg(Z80_REG_DE)>>8)&0xFF)
#define _z80_get_E() (z80_get_reg(Z80_REG_DE)&0xFF)
#define _z80_get_HL() z80_get_reg(Z80_REG_HL)
#define _z80_get_H() ((z80_get_reg(Z80_REG_HL)>>8)&0xFF)
#define _z80_get_L() (z80_get_reg(Z80_REG_HL)&0xFF)
#define _z80_get_IX() z80_get_reg(Z80_REG_IX)
#define _z80_get_IX_h() ((z80_get_reg(Z80_REG_IX)>>8)&0xFF)
#define _z80_get_IX_l() (z80_get_reg(Z80_REG_IX)&0xFF)
#define _z80_get_IY() z80_get_reg(Z80_REG_IY)
#define _z80_get_IY_h() ((z80_get_reg(Z80_REG_IY)>>8)&0xFF)
#define _z80_get_IY_l() (z80_get_reg(Z80_REG_IY)&0xFF)
#define _z80_get_PC() z80_get_reg(Z80_REG_PC)
#define _z80_get_PC_h() ((z80_get_reg(Z80_REG_PC)>>8)&0xFF)
#define _z80_get_PC_l() (z80_get_reg(Z80_REG_PC)&0xFF)
#define _z80_get_SP() z80_get_reg(Z80_REG_SP)
#define _z80_get_SP_h() ((z80_get_reg(Z80_REG_SP)>>8)&0xFF)
#define _z80_get_SP_l() (z80_get_reg(Z80_REG_SP)&0xFF)
#define _z80_get_AF1() z80_get_reg(Z80_REG_AF2)
#define _z80_get_A1() ((z80_get_reg(Z80_REG_AF2)>>8)&0xFF)
#define _z80_get_F1() (z80_get_reg(Z80_REG_AF2)&0xFF)
#define _z80_get_BC1() z80_get_reg(Z80_REG_BC2)
#define _z80_get_B1() ((z80_get_reg(Z80_REG_BC2)>>8)&0xFF)
#define _z80_get_C1() (z80_get_reg(Z80_REG_BC2)&0xFF)
#define _z80_get_DE1() z80_get_reg(Z80_REG_DE2)
#define _z80_get_D1() ((z80_get_reg(Z80_REG_DE2)>>8)&0xFF)
#define _z80_get_E1() (z80_get_reg(Z80_REG_DE2)&0xFF)
#define _z80_get_HL1() z80_get_reg(Z80_REG_HL2)
#define _z80_get_H1() ((z80_get_reg(Z80_REG_HL2)>>8)&0xFF)
#define _z80_get_L1() (z80_get_reg(Z80_REG_HL2)&0xFF)
#define _z80_get_IFF() z80_get_reg(Z80_REG_IFF1)
#define _z80_get_I() (z80_get_reg(Z80_REG_IR)>>8)
#define _z80_get_R() (z80_get_reg(Z80_REG_IR)&0xFF)
#define _z80_get_R2() 0

#define _z80_resetmapping_fetch() \
{ \
	z80_map_fetch(0x0000, 0x3fff,(unsigned char*)cmpt.block0); \
	z80_map_fetch(0x4000, 0x7fff,(unsigned char*)(((unsigned)cmpt.block1)+0x4000)); \
	z80_map_fetch(0x8000, 0xbfff,(unsigned char*)(((unsigned)cmpt.block2)+0x8000));  \
	z80_map_fetch(0xc000, 0xffff,(unsigned char*)(((unsigned)cmpt.block3)+0xc000)); \
}

#define _z80_resetmapping() \
{ \
	_z80_resetmapping_fetch() \
	z80_add_read(0x0000, 0xffff, Z80_MAP_HANDLED, (void *)&RdZ80); \
	z80_add_write(0x0000, 0xffff, Z80_MAP_HANDLED, (void *)&WrZ80); \
} \


#define _z80_init() \
{ \
	z80_init_memmap(); \
	_z80_resetmapping(); \
	z80_end_memmap(); \
	z80_set_in(&InZ80); \
	z80_set_out(&OutZ80); \
	z80_set_reg(Z80_REG_IM,0); \
	z80_reset(); \
	__z80_last_cycles=0; \
	z80_set_reg(Z80_REG_IM,0); \
}
	

#define _z80_get_last_cycles() __z80_last_cycles

static __inline__ void _z80_interrupt(int vec)
{
	unsigned h=z80_get_reg(Z80_REG_Halted);
	unsigned i=z80_get_reg(Z80_REG_IFF1);
	if ((h)&&(!(i&1)))
		z80_set_reg(Z80_REG_IFF1,i|1);
	 z80_raise_IRQ(vec); 
//	 z80_lower_IRQ(); 
}

#define _z80_reset() z80_reset()

#ifndef DEBUG_Z80
#define _z80_release() /* z80_stop_emulating() */
#else
#define _z80_release()
#endif

static __inline__ unsigned _z80_emulate(unsigned ncycles)
{
	__z80_last_cycles=z80_emulate(ncycles);
	return z80_get_reg(Z80_REG_PC);
}
	

#endif


static __inline__ void _z80_dump_registers(void)
{
	printf(" AF:  0x%04X    AF2: 0x%04X\n",_z80_get_AF(),_z80_get_AF1());
	printf(" BC:  0x%04X    BC2: 0x%04X\n",_z80_get_BC(),_z80_get_BC1());
	printf(" DE:  0x%04X    DE2: 0x%04X\n",_z80_get_DE(),_z80_get_DE1());
	printf(" HL:  0x%04X    HL2: 0x%04X\n",_z80_get_HL(),_z80_get_HL1());
	printf(" IX:  0x%04X\n",_z80_get_IX());
	printf(" IY:  0x%04X\n",_z80_get_IY());
	printf(" PC:  0x%04X\n",_z80_get_PC());
}

#endif
