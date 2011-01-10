/********************************************************************************/
/* RAZE Z80 emulator                                                            */
/* Heavily based on CZ80 emulator by Stephane Dallongueville                    */
/********************************************************************************/

/* use zR8 for B/C/D/E/H/L registers only */
/* use zR16 for BC/DE/HL registers only */

#if CZ80_LITTLE_ENDIAN
#define zR8(A)          cpu.r8[(A) ^ 1]
#else
#define zR8(A)          cpu.r8[(A)]
#endif
#define zR16(A)         cpu.r16[A].W
#define pzR16(A)        &(cpu.r16[A])

#define pzFA            &(cpu.FA)
#define zFA             cpu.FA.W
#define zlFA            cpu.FA.B.L
#define zhFA            cpu.FA.B.H
#define zA              zlFA
#define zF              zhFA

#define pzBC            &(cpu.BC)
#define zBC             cpu.BC.W
#define zlBC            cpu.BC.B.L
#define zhBC            cpu.BC.B.H
#define zB              zhBC
#define zC              zlBC

#define pzDE            &(cpu.DE)
#define zDE             cpu.DE.W
#define zlDE            cpu.DE.B.L
#define zhDE            cpu.DE.B.H
#define zD              zhDE
#define zE              zlDE

#define pzHL            &(cpu.HL)
#define zHL             cpu.HL.W
#define zlHL            cpu.HL.B.L
#define zhHL            cpu.HL.B.H
#define zH              zhHL
#define zL              zlHL

#define zFA2            cpu.FA2.W
#define zlFA2           cpu.FA2.B.L
#define zhFA2           cpu.FA2.B.H
#define zA2             zlFA2
#define zF2             zhFA2

#define zBC2            cpu.BC2.W
#define zDE2            cpu.DE2.W
#define zHL2            cpu.HL2.W

#define pzIX            &(cpu.IX)
#define zIX             cpu.IX.W
#define zlIX            cpu.IX.B.L
#define zhIX            cpu.IX.B.H

#define pzIY            &(cpu.IY)
#define zIY             cpu.IY.W
#define zlIY            cpu.IY.B.L
#define zhIY            cpu.IY.B.H

#define pzSP            &(cpu.SP)
#define zSP             cpu.SP.W
#define zlSP            cpu.SP.B.L
#define zhSP            cpu.SP.B.H

#define zPC             PC
#define zRealPC         ((u32)(PC) - cpu.BasePC)

#define zI              cpu.I
#define zIM             cpu.IM

#define zwR             cpu.R.W
#define zR1             cpu.R.B.L
#define zR2             cpu.R.B.H
#define zR              zR1

#define zIFF            cpu.IFF.W
#define zIFF1           cpu.IFF.B.L
#define zIFF2           cpu.IFF.B.H


#if CZ80_USE_JUMPTABLE
#define _SSOP(A,B) A##B
#define OP(A) _SSOP(OP,A)
#define OPCB(A) _SSOP(OPCB,A)
#define OPED(A) _SSOP(OPED,A)
#define OPXY(A) _SSOP(OPXY,A)
#define OPXYCB(A) _SSOP(OPXYCB,A)
#else
#define OP(A) case A
#define OPCB(A) case A
#define OPED(A) case A
#define OPXY(A) case A
#define OPXYCB(A) case A
#endif

#define GET_BYTE                \
    (*zPC)

#define GET_BYTE_S              \
    ((s8)(*zPC))

// #if CZ80_LITTLE_ENDIAN
#if 1
#define GET_WORD                \
    (zPC[0] | (zPC[1] << 8))
#else
#define GET_WORD                \
    (zPC[1] | (zPC[0] << 8))
#endif

#define FETCH_BYTE              \
    (*zPC++)

#define FETCH_BYTE_S            \
    ((s8)(*zPC++))

#define FETCH_WORD(A)           \
    A = GET_WORD;               \
    zPC += 2;

#if CZ80_SIZE_OPT
    #define RET(A)              \
        CCnt -= A;              \
        goto Cz80_Exec_Check;
#else
    #define RET(A)              \
        if ((CCnt -= A) <= 0) goto Cz80_Check_Int;  \
        goto Cz80_Exec;
#endif

#define SET_PC(A)               \
    cpu.BasePC = (u32) cpu.Fetch[(A) >> CZ80_FETCH_SFT];  \
    zPC = (u8*)((A) + cpu.BasePC);

#define PRE_IO                  \
    cpu.CycleIO = CCnt;

#define POST_IO                 \
    CCnt = cpu.CycleIO;

#define READ_BYTE(A, D)                 \
    D = cpu.Read_Byte(A);

#if CZ80_USE_WORD_HANDLER
#define READ_WORD(A, D)                 \
    D = cpu.Read_Word(A);
#elif CZ80_LITTLE_ENDIAN
#define READ_WORD(A, D)                 \
    D = cpu.Read_Byte(A) | (cpu.Read_Byte((A) + 1) << 8);
#else
#define READ_WORD(A, D)                 \
    D = cpu.Read_Byte(A) | (cpu.Read_Byte((A) + 1) << 8);
/*    D = (cpu.Read_Byte(A) << 8) | cpu.Read_Byte((A) + 1); */
#endif

#define READSX_BYTE(A, D)               \
    D = (s8)cpu.Read_Byte(A);

#define WRITE_BYTE(A, D)                \
    cpu.Write_Byte(A, D);

#if CZ80_USE_WORD_HANDLER
#define WRITE_WORD(A, D)                \
    cpu.Write_Word(A, D);
#elif CZ80_LITTLE_ENDIAN
#define WRITE_WORD(A, D)                \
    cpu.Write_Byte(A, D);              \
    cpu.Write_Byte((A) + 1, (D) >> 8);
#else
#define WRITE_WORD(A, D)                \
    cpu.Write_Byte(A, D);              \
    cpu.Write_Byte((A) + 1, (D) >> 8);
#endif

#define PUSH_16(A)          \
    {                       \
        u32 sp;             \
                            \
        zSP -= 2;           \
        sp = zSP;           \
        WRITE_WORD(sp, A);  \
    }

#define POP_16(A)           \
    {                       \
        u32 sp;             \
                            \
        sp = zSP;           \
        READ_WORD(sp, A)    \
        zSP = sp + 2;       \
    }

#define IN(A, D)            \
    D = cpu.IN_Port(A);

#define OUT(A, D)           \
    cpu.OUT_Port(A, D);
