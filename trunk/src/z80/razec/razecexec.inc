/********************************************************************************/
/* RAZE Z80 emulator                                                            */
/* Heavily based on CZ80 emulator by Stephane Dallongueville                    */
/********************************************************************************/

s32 z80_emulate(s32 cycles)
{
#if CZ80_USE_JUMPTABLE
    #include "cz80jmp.inc"
#endif

    u8 *PC;
    s32 CCnt;
    u32 Opcode;

    PC = cpu.PC;
    cpu.CycleToDo = CCnt = cycles;
    cpu.CycleSup = 0;
    cpu.Status |= CZ80_RUNNING;

Cz80_Check_Int:
    /* check for interrupt */
    if (cpu.Status & (zIFF1 | CZ80_HAS_NMI))
    {
        u32 newPC;

        if (cpu.Status & CZ80_HAS_NMI)
        {
            /* NMI */
            cpu.Status &= ~(CZ80_HALTED | CZ80_HAS_NMI);
            zIFF1 = 0;
            newPC = 0x66;
        }
        else
        {
            /* INT */
            cpu.Status &= ~(CZ80_HALTED | CZ80_HAS_INT);
            zIFF= 0;

            /* IM = 1 */
            if (zIM == 1) newPC = 0x38;
            else
            {
                u32 adr;

                Opcode = cpu.Interrupt_Ack(cpu.IntVect) & 0xFF;
                /* IM = 0 */
                if (zIM == 0) goto Cz80_Exec;

                /* IM = 2 */
                adr = Opcode | (zI << 8);
                READ_WORD(adr, newPC)
                CCnt -= 8;
            }
        }

        /* set new PC */
        {
            u32 src = zRealPC;

            PUSH_16(src)
            SET_PC(newPC)
            CCnt -= 11;
        }
    }

    /* if some cycles left */
    if ((CCnt += cpu.CycleSup) > 0)
    {
        cpu.CycleSup = 0;
        if (!(cpu.Status & CZ80_HALTED)) goto Cz80_Exec;

        /* CPU halted */
        CCnt = 0;
    }

Cz80_Exec_Really_End:
    /* no more cycles, end execution */
    cpu.Status &= ~CZ80_RUNNING;
    cpu.PC = PC;

    /* number of executed cycles */
    CCnt = cpu.CycleToDo - CCnt;

    /* update R register */
    zR = (zR + (CCnt >> 2)) & 0x7F;

    return CCnt;

#if CZ80_SIZE_OPT
Cz80_Exec_Check:
    if (CCnt <= 0) goto Cz80_Check_Int;
#endif

Cz80_Exec:
    {
        union16 *data = pzHL;
        Opcode = FETCH_BYTE;
        #include "raze_op.inc"
    }

    return 0;	/* just to avoid compiler warning */
}
