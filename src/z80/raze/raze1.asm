%line 1+1 src/z80/raze/raze.asm



















%line 24+1 src/z80/raze/raze.asm















[bits 32]
[section .bss USE32]





times ($$-$) & ((16)-1) nop
context_start:
_z80_AF resd 1
_z80_BC resd 1
_z80_DE resd 1
_z80_HL resd 1
_z80_IX resd 1
_z80_IY resd 1
_z80_PC resd 1
_z80_SP resd 1
_z80_AF2 resd 1
_z80_BC2 resd 1
_z80_DE2 resd 1
_z80_HL2 resd 1
_z80_IFF1 resb 1
_z80_IFF2 resb 1
_z80_R resd 1
_z80_R2 resd 1
_z80_I resb 1
_z80_flag35 resb 1
_z80_IM resb 1
_z80_IRQVector resb 1
_z80_IRQLine resb 1
_z80_halted resb 1
_z80_Extra_Cycles resd 1
registers_end:

_z80_Fetch resd 256
_z80_Read resd (256*2)
_z80_Write resd (256*2)
_z80_In resd 1
_z80_Out resd 1
_z80_RetI resd 1
_z80_Fetch_Callback resd 1
_read_handlers resd 4*64
_write_handlers resd 4*64
context_end:
resd 1


_z80_ICount resd 1
_z80_Initial_ICount resd 1
_z80_TempICount resd 1
_z80_afterEI resb 1

[section .text USE32]


%line 100+1 src/z80/raze/raze.asm


%line 108+1 src/z80/raze/raze.asm



%line 127+1 src/z80/raze/raze.asm



%line 146+1 src/z80/raze/raze.asm



%line 184+1 src/z80/raze/raze.asm



%line 209+1 src/z80/raze/raze.asm


%line 236+1 src/z80/raze/raze.asm



%line 248+1 src/z80/raze/raze.asm


%line 260+1 src/z80/raze/raze.asm


%line 265+1 src/z80/raze/raze.asm



%line 274+1 src/z80/raze/raze.asm


%line 280+1 src/z80/raze/raze.asm


%line 286+1 src/z80/raze/raze.asm


%line 291+1 src/z80/raze/raze.asm


%line 300+1 src/z80/raze/raze.asm


%line 370+1 src/z80/raze/raze.asm





%line 391+1 src/z80/raze/raze.asm


%line 408+1 src/z80/raze/raze.asm


%line 427+1 src/z80/raze/raze.asm


%line 445+1 src/z80/raze/raze.asm


%line 456+1 src/z80/raze/raze.asm


%line 466+1 src/z80/raze/raze.asm


%line 476+1 src/z80/raze/raze.asm


%line 495+1 src/z80/raze/raze.asm


%line 511+1 src/z80/raze/raze.asm


%line 527+1 src/z80/raze/raze.asm


%line 557+1 src/z80/raze/raze.asm


%line 595+1 src/z80/raze/raze.asm


%line 634+1 src/z80/raze/raze.asm


%line 702+1 src/z80/raze/raze.asm


%line 736+1 src/z80/raze/raze.asm



%line 765+1 src/z80/raze/raze.asm



%line 771+1 src/z80/raze/raze.asm



%line 777+1 src/z80/raze/raze.asm






%line 798+1 src/z80/raze/raze.asm



%line 809+1 src/z80/raze/raze.asm



%line 818+1 src/z80/raze/raze.asm



%line 828+1 src/z80/raze/raze.asm



%line 839+1 src/z80/raze/raze.asm



%line 849+1 src/z80/raze/raze.asm



%line 860+1 src/z80/raze/raze.asm



%line 870+1 src/z80/raze/raze.asm



%line 883+1 src/z80/raze/raze.asm



%line 893+1 src/z80/raze/raze.asm



%line 903+1 src/z80/raze/raze.asm



%line 922+1 src/z80/raze/raze.asm



%line 930+1 src/z80/raze/raze.asm



%line 965+1 src/z80/raze/raze.asm



%line 975+1 src/z80/raze/raze.asm



%line 984+1 src/z80/raze/raze.asm



%line 997+1 src/z80/raze/raze.asm



%line 1010+1 src/z80/raze/raze.asm



%line 1018+1 src/z80/raze/raze.asm



%line 1027+1 src/z80/raze/raze.asm



%line 1049+1 src/z80/raze/raze.asm



%line 1067+1 src/z80/raze/raze.asm



%line 1075+1 src/z80/raze/raze.asm



%line 1091+1 src/z80/raze/raze.asm



%line 1103+1 src/z80/raze/raze.asm



%line 1120+1 src/z80/raze/raze.asm



%line 1153+1 src/z80/raze/raze.asm



%line 1186+1 src/z80/raze/raze.asm



%line 1268+1 src/z80/raze/raze.asm



%line 1323+1 src/z80/raze/raze.asm



%line 1362+1 src/z80/raze/raze.asm



%line 1401+1 src/z80/raze/raze.asm



%line 1476+1 src/z80/raze/raze.asm



%line 1551+1 src/z80/raze/raze.asm



%line 1568+1 src/z80/raze/raze.asm



%line 1586+1 src/z80/raze/raze.asm



%line 1606+1 src/z80/raze/raze.asm



%line 1625+1 src/z80/raze/raze.asm



%line 1640+1 src/z80/raze/raze.asm



%line 1656+1 src/z80/raze/raze.asm



%line 1673+1 src/z80/raze/raze.asm



%line 1691+1 src/z80/raze/raze.asm



%line 1700+1 src/z80/raze/raze.asm



%line 1710+1 src/z80/raze/raze.asm



%line 1721+1 src/z80/raze/raze.asm



%line 1733+1 src/z80/raze/raze.asm



%line 1746+1 src/z80/raze/raze.asm



%line 1762+1 src/z80/raze/raze.asm



%line 1779+1 src/z80/raze/raze.asm



%line 1788+1 src/z80/raze/raze.asm



%line 1797+1 src/z80/raze/raze.asm



%line 1806+1 src/z80/raze/raze.asm



%line 1819+1 src/z80/raze/raze.asm



%line 1828+1 src/z80/raze/raze.asm



%line 1840+1 src/z80/raze/raze.asm



%line 1851+1 src/z80/raze/raze.asm



%line 1863+1 src/z80/raze/raze.asm



%line 1872+1 src/z80/raze/raze.asm



%line 1884+1 src/z80/raze/raze.asm



%line 1895+1 src/z80/raze/raze.asm



%line 1907+1 src/z80/raze/raze.asm



%line 1931+1 src/z80/raze/raze.asm



%line 1955+1 src/z80/raze/raze.asm



%line 1964+1 src/z80/raze/raze.asm



%line 1994+1 src/z80/raze/raze.asm



%line 2022+1 src/z80/raze/raze.asm



%line 2031+1 src/z80/raze/raze.asm



%line 2043+1 src/z80/raze/raze.asm



%line 2054+1 src/z80/raze/raze.asm



%line 2066+1 src/z80/raze/raze.asm



%line 2075+1 src/z80/raze/raze.asm



%line 2087+1 src/z80/raze/raze.asm



%line 2098+1 src/z80/raze/raze.asm



%line 2110+1 src/z80/raze/raze.asm



%line 2119+1 src/z80/raze/raze.asm



%line 2136+1 src/z80/raze/raze.asm



%line 2145+1 src/z80/raze/raze.asm



%line 2162+1 src/z80/raze/raze.asm



%line 2170+1 src/z80/raze/raze.asm



%line 2187+1 src/z80/raze/raze.asm



%line 2208+1 src/z80/raze/raze.asm



%line 2237+1 src/z80/raze/raze.asm



%line 2255+1 src/z80/raze/raze.asm



%line 2280+1 src/z80/raze/raze.asm



%line 2301+1 src/z80/raze/raze.asm



%line 2320+1 src/z80/raze/raze.asm



%line 2338+1 src/z80/raze/raze.asm



%line 2350+1 src/z80/raze/raze.asm



%line 2362+1 src/z80/raze/raze.asm



%line 2383+1 src/z80/raze/raze.asm



%line 2403+1 src/z80/raze/raze.asm



%line 2413+1 src/z80/raze/raze.asm



%line 2423+1 src/z80/raze/raze.asm


%line 2463+1 src/z80/raze/raze.asm


%line 2503+1 src/z80/raze/raze.asm


%line 2572+1 src/z80/raze/raze.asm


%line 2641+1 src/z80/raze/raze.asm


%line 2681+1 src/z80/raze/raze.asm


%line 2721+1 src/z80/raze/raze.asm


%line 2787+1 src/z80/raze/raze.asm


%line 2853+1 src/z80/raze/raze.asm


%line 2875+1 src/z80/raze/raze.asm


%line 2886+1 src/z80/raze/raze.asm


%line 2904+1 src/z80/raze/raze.asm


%line 2915+1 src/z80/raze/raze.asm


%line 2931+1 src/z80/raze/raze.asm


%line 2937+1 src/z80/raze/raze.asm


%line 2946+1 src/z80/raze/raze.asm


%line 2963+1 src/z80/raze/raze.asm


%line 2972+1 src/z80/raze/raze.asm


%line 2979+1 src/z80/raze/raze.asm



%line 1+1 raze.inc
























times ($$-$) & ((4)-1) nop
%line 25+0 raze.inc
op_40:
%line 26+1 raze.inc
 sub dword [_z80_ICount], 4
%line 26+0 raze.inc
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 27+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 28+0 raze.inc
op_41:
%line 29+1 raze.inc
 mov zB, zC
%line 29+0 raze.inc
 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 30+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 31+0 raze.inc
op_42:
%line 32+1 raze.inc
 mov dl, zD
%line 32+0 raze.inc
 mov zB, dl
 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 33+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 34+0 raze.inc
op_43:
%line 35+1 raze.inc
 mov dl, zE
%line 35+0 raze.inc
 mov zB, dl
 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 36+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 37+0 raze.inc
op_44:
%line 38+1 raze.inc
 mov zB, zH
%line 38+0 raze.inc
 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 39+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 40+0 raze.inc
op_45:
%line 41+1 raze.inc
 mov zB, zL
%line 41+0 raze.inc
 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 42+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 43+0 raze.inc
op_47:
%line 44+1 raze.inc
 mov zB, zA
%line 44+0 raze.inc
 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 45+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 46+0 raze.inc
op_48:
%line 47+1 raze.inc
 mov zC, zB
%line 47+0 raze.inc
 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 48+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 49+0 raze.inc
op_49:
%line 50+1 raze.inc
 sub dword [_z80_ICount], 4
%line 50+0 raze.inc
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 51+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 52+0 raze.inc
op_4a:
%line 53+1 raze.inc
 mov dl, zD
%line 53+0 raze.inc
 mov zC, dl
 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 54+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 55+0 raze.inc
op_4b:
%line 56+1 raze.inc
 mov dl, zE
%line 56+0 raze.inc
 mov zC, dl
 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 57+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 58+0 raze.inc
op_4c:
%line 59+1 raze.inc
 mov zC, zH
%line 59+0 raze.inc
 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 60+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 61+0 raze.inc
op_4d:
%line 62+1 raze.inc
 mov zC, zL
%line 62+0 raze.inc
 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 63+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 64+0 raze.inc
op_4f:
%line 65+1 raze.inc
 mov zC, zA
%line 65+0 raze.inc
 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 66+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 67+0 raze.inc
op_50:
%line 68+1 raze.inc
 mov zD, zB
%line 68+0 raze.inc
 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 69+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 70+0 raze.inc
op_51:
%line 71+1 raze.inc
 mov zD, zC
%line 71+0 raze.inc
 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 72+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 73+0 raze.inc
op_52:
%line 74+1 raze.inc
 sub dword [_z80_ICount], 4
%line 74+0 raze.inc
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 75+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 76+0 raze.inc
op_53:
%line 77+1 raze.inc
 mov dl, zE
%line 77+0 raze.inc
 mov zD, dl
 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 78+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 79+0 raze.inc
op_54:
%line 80+1 raze.inc
 mov zD, zH
%line 80+0 raze.inc
 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 81+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 82+0 raze.inc
op_55:
%line 83+1 raze.inc
 mov zD, zL
%line 83+0 raze.inc
 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 84+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 85+0 raze.inc
op_57:
%line 86+1 raze.inc
 mov zD, zA
%line 86+0 raze.inc
 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 87+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 88+0 raze.inc
op_58:
%line 89+1 raze.inc
 mov zE, zB
%line 89+0 raze.inc
 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 90+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 91+0 raze.inc
op_59:
%line 92+1 raze.inc
 mov zE, zC
%line 92+0 raze.inc
 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 93+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 94+0 raze.inc
op_5a:
%line 95+1 raze.inc
 mov dl, zD
%line 95+0 raze.inc
 mov zE, dl
 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 96+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 97+0 raze.inc
op_5b:
%line 98+1 raze.inc
 sub dword [_z80_ICount], 4
%line 98+0 raze.inc
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 99+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 100+0 raze.inc
op_5c:
%line 101+1 raze.inc
 mov zE, zH
%line 101+0 raze.inc
 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 102+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 103+0 raze.inc
op_5d:
%line 104+1 raze.inc
 mov zE, zL
%line 104+0 raze.inc
 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 105+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 106+0 raze.inc
op_5f:
%line 107+1 raze.inc
 mov zE, zA
%line 107+0 raze.inc
 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 108+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 109+0 raze.inc
op_60:
%line 110+1 raze.inc
 mov zH, zB
%line 110+0 raze.inc
 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 111+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 112+0 raze.inc
op_61:
%line 113+1 raze.inc
 mov zH, zC
%line 113+0 raze.inc
 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 114+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 115+0 raze.inc
op_62:
%line 116+1 raze.inc
 mov dl, zD
%line 116+0 raze.inc
 mov zH, dl
 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 117+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 118+0 raze.inc
op_63:
%line 119+1 raze.inc
 mov dl, zE
%line 119+0 raze.inc
 mov zH, dl
 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 120+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 121+0 raze.inc
op_64:
%line 122+1 raze.inc
 sub dword [_z80_ICount], 4
%line 122+0 raze.inc
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 123+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 124+0 raze.inc
op_65:
%line 125+1 raze.inc
 mov zH, zL
%line 125+0 raze.inc
 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 126+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 127+0 raze.inc
op_67:
%line 128+1 raze.inc
 mov zH, zA
%line 128+0 raze.inc
 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 129+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 130+0 raze.inc
op_68:
%line 131+1 raze.inc
 mov zL, zB
%line 131+0 raze.inc
 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 132+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 133+0 raze.inc
op_69:
%line 134+1 raze.inc
 mov zL, zC
%line 134+0 raze.inc
 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 135+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 136+0 raze.inc
op_6a:
%line 137+1 raze.inc
 mov dl, zD
%line 137+0 raze.inc
 mov zL, dl
 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 138+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 139+0 raze.inc
op_6b:
%line 140+1 raze.inc
 mov dl, zE
%line 140+0 raze.inc
 mov zL, dl
 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 141+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 142+0 raze.inc
op_6c:
%line 143+1 raze.inc
 mov zL, zH
%line 143+0 raze.inc
 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 144+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 145+0 raze.inc
op_6d:
%line 146+1 raze.inc
 sub dword [_z80_ICount], 4
%line 146+0 raze.inc
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 147+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 148+0 raze.inc
op_6f:
%line 149+1 raze.inc
 mov zL, zA
%line 149+0 raze.inc
 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 150+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 151+0 raze.inc
op_78:
%line 152+1 raze.inc
 mov zA, zB
%line 152+0 raze.inc
 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 153+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 154+0 raze.inc
op_79:
%line 155+1 raze.inc
 mov zA, zC
%line 155+0 raze.inc
 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 156+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 157+0 raze.inc
op_7a:
%line 158+1 raze.inc
 mov dl, zD
%line 158+0 raze.inc
 mov zA, dl
 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 159+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 160+0 raze.inc
op_7b:
%line 161+1 raze.inc
 mov dl, zE
%line 161+0 raze.inc
 mov zA, dl
 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 162+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 163+0 raze.inc
op_7c:
%line 164+1 raze.inc
 mov zA, zH
%line 164+0 raze.inc
 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 165+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 166+0 raze.inc
op_7d:
%line 167+1 raze.inc
 mov zA, zL
%line 167+0 raze.inc
 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 168+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 169+0 raze.inc
op_7f:
%line 170+1 raze.inc
 sub dword [_z80_ICount], 4
%line 170+0 raze.inc
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 171+1 raze.inc





times ($$-$) & ((4)-1) nop
%line 176+0 raze.inc
dd_44:
%line 177+1 raze.inc
 mov dl, zIXh
%line 177+0 raze.inc
 mov zB, dl
 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 178+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 179+0 raze.inc
dd_45:
%line 180+1 raze.inc
 mov dl, zIXl
%line 180+0 raze.inc
 mov zB, dl
 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 181+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 182+0 raze.inc
fd_44:
%line 183+1 raze.inc
 mov dl, zIYh
%line 183+0 raze.inc
 mov zB, dl
 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 184+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 185+0 raze.inc
fd_45:
%line 186+1 raze.inc
 mov dl, zIYl
%line 186+0 raze.inc
 mov zB, dl
 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 187+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 188+0 raze.inc
dd_4c:
%line 189+1 raze.inc
 mov dl, zIXh
%line 189+0 raze.inc
 mov zC, dl
 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 190+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 191+0 raze.inc
dd_4d:
%line 192+1 raze.inc
 mov dl, zIXl
%line 192+0 raze.inc
 mov zC, dl
 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 193+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 194+0 raze.inc
fd_4c:
%line 195+1 raze.inc
 mov dl, zIYh
%line 195+0 raze.inc
 mov zC, dl
 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 196+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 197+0 raze.inc
fd_4d:
%line 198+1 raze.inc
 mov dl, zIYl
%line 198+0 raze.inc
 mov zC, dl
 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 199+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 200+0 raze.inc
dd_54:
%line 201+1 raze.inc
 mov dl, zIXh
%line 201+0 raze.inc
 mov zD, dl
 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 202+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 203+0 raze.inc
dd_55:
%line 204+1 raze.inc
 mov dl, zIXl
%line 204+0 raze.inc
 mov zD, dl
 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 205+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 206+0 raze.inc
fd_54:
%line 207+1 raze.inc
 mov dl, zIYh
%line 207+0 raze.inc
 mov zD, dl
 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 208+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 209+0 raze.inc
fd_55:
%line 210+1 raze.inc
 mov dl, zIYl
%line 210+0 raze.inc
 mov zD, dl
 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 211+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 212+0 raze.inc
dd_5c:
%line 213+1 raze.inc
 mov dl, zIXh
%line 213+0 raze.inc
 mov zE, dl
 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 214+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 215+0 raze.inc
dd_5d:
%line 216+1 raze.inc
 mov dl, zIXl
%line 216+0 raze.inc
 mov zE, dl
 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 217+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 218+0 raze.inc
fd_5c:
%line 219+1 raze.inc
 mov dl, zIYh
%line 219+0 raze.inc
 mov zE, dl
 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 220+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 221+0 raze.inc
fd_5d:
%line 222+1 raze.inc
 mov dl, zIYl
%line 222+0 raze.inc
 mov zE, dl
 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 223+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 224+0 raze.inc
dd_7c:
%line 225+1 raze.inc
 mov dl, zIXh
%line 225+0 raze.inc
 mov zA, dl
 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 226+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 227+0 raze.inc
dd_7d:
%line 228+1 raze.inc
 mov dl, zIXl
%line 228+0 raze.inc
 mov zA, dl
 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 229+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 230+0 raze.inc
fd_7c:
%line 231+1 raze.inc
 mov dl, zIYh
%line 231+0 raze.inc
 mov zA, dl
 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 232+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 233+0 raze.inc
fd_7d:
%line 234+1 raze.inc
 mov dl, zIYl
%line 234+0 raze.inc
 mov zA, dl
 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 235+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 236+0 raze.inc
dd_60:
%line 237+1 raze.inc
 mov dl, zB
%line 237+0 raze.inc
 mov zIXh, dl
 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 238+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 239+0 raze.inc
dd_61:
%line 240+1 raze.inc
 mov dl, zC
%line 240+0 raze.inc
 mov zIXh, dl
 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 241+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 242+0 raze.inc
dd_62:
%line 243+1 raze.inc
 mov dl, zD
%line 243+0 raze.inc
 mov zIXh, dl
 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 244+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 245+0 raze.inc
dd_63:
%line 246+1 raze.inc
 mov dl, zE
%line 246+0 raze.inc
 mov zIXh, dl
 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 247+1 raze.inc




times ($$-$) & ((4)-1) nop
%line 251+0 raze.inc
dd_65:
%line 252+1 raze.inc
 mov dl, zIXl
%line 252+0 raze.inc
 mov zIXh, dl
 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 253+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 254+0 raze.inc
dd_67:
%line 255+1 raze.inc
 mov dl, zA
%line 255+0 raze.inc
 mov zIXh, dl
 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 256+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 257+0 raze.inc
dd_68:
%line 258+1 raze.inc
 mov dl, zB
%line 258+0 raze.inc
 mov zIXl, dl
 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 259+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 260+0 raze.inc
dd_69:
%line 261+1 raze.inc
 mov dl, zC
%line 261+0 raze.inc
 mov zIXl, dl
 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 262+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 263+0 raze.inc
dd_6a:
%line 264+1 raze.inc
 mov dl, zD
%line 264+0 raze.inc
 mov zIXl, dl
 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 265+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 266+0 raze.inc
dd_6b:
%line 267+1 raze.inc
 mov dl, zE
%line 267+0 raze.inc
 mov zIXl, dl
 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 268+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 269+0 raze.inc
dd_6c:
%line 270+1 raze.inc
 mov dl, zIXh
%line 270+0 raze.inc
 mov zIXl, dl
 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 271+1 raze.inc





times ($$-$) & ((4)-1) nop
%line 276+0 raze.inc
dd_6f:
%line 277+1 raze.inc
 mov dl, zA
%line 277+0 raze.inc
 mov zIXl, dl
 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 278+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 279+0 raze.inc
fd_60:
%line 280+1 raze.inc
 mov dl, zB
%line 280+0 raze.inc
 mov zIYh, dl
 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 281+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 282+0 raze.inc
fd_61:
%line 283+1 raze.inc
 mov dl, zC
%line 283+0 raze.inc
 mov zIYh, dl
 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 284+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 285+0 raze.inc
fd_62:
%line 286+1 raze.inc
 mov dl, zD
%line 286+0 raze.inc
 mov zIYh, dl
 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 287+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 288+0 raze.inc
fd_63:
%line 289+1 raze.inc
 mov dl, zE
%line 289+0 raze.inc
 mov zIYh, dl
 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 290+1 raze.inc





times ($$-$) & ((4)-1) nop
%line 295+0 raze.inc
fd_65:
%line 296+1 raze.inc
 mov dl, zIYl
%line 296+0 raze.inc
 mov zIYh, dl
 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 297+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 298+0 raze.inc
fd_67:
%line 299+1 raze.inc
 mov dl, zA
%line 299+0 raze.inc
 mov zIYh, dl
 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 300+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 301+0 raze.inc
fd_68:
%line 302+1 raze.inc
 mov dl, zB
%line 302+0 raze.inc
 mov zIYl, dl
 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 303+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 304+0 raze.inc
fd_69:
%line 305+1 raze.inc
 mov dl, zC
%line 305+0 raze.inc
 mov zIYl, dl
 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 306+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 307+0 raze.inc
fd_6a:
%line 308+1 raze.inc
 mov dl, zD
%line 308+0 raze.inc
 mov zIYl, dl
 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 309+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 310+0 raze.inc
fd_6b:
%line 311+1 raze.inc
 mov dl, zE
%line 311+0 raze.inc
 mov zIYl, dl
 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 312+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 313+0 raze.inc
fd_6c:
%line 314+1 raze.inc
 mov dl, zIYh
%line 314+0 raze.inc
 mov zIYl, dl
 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 315+1 raze.inc





times ($$-$) & ((4)-1) nop
%line 320+0 raze.inc
fd_6f:
%line 321+1 raze.inc
 mov dl, zA
%line 321+0 raze.inc
 mov zIYl, dl
 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 322+1 raze.inc





times ($$-$) & ((4)-1) nop
%line 327+0 raze.inc
op_06:
%line 328+1 raze.inc
 mov edx, ezPC
%line 328+0 raze.inc
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 mov zB, dl
 sub dword [_z80_ICount], 7
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 329+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 330+0 raze.inc
op_0e:
%line 331+1 raze.inc
 mov edx, ezPC
%line 331+0 raze.inc
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 mov zC, dl
 sub dword [_z80_ICount], 7
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 332+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 333+0 raze.inc
op_16:
%line 334+1 raze.inc
 mov edx, ezPC
%line 334+0 raze.inc
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 mov zD, dl
 sub dword [_z80_ICount], 7
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 335+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 336+0 raze.inc
op_1e:
%line 337+1 raze.inc
 mov edx, ezPC
%line 337+0 raze.inc
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 mov zE, dl
 sub dword [_z80_ICount], 7
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 338+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 339+0 raze.inc
op_26:
%line 340+1 raze.inc
 mov edx, ezPC
%line 340+0 raze.inc
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 mov zH, dl
 sub dword [_z80_ICount], 7
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 341+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 342+0 raze.inc
op_2e:
%line 343+1 raze.inc
 mov edx, ezPC
%line 343+0 raze.inc
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 mov zL, dl
 sub dword [_z80_ICount], 7
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 344+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 345+0 raze.inc
op_3e:
%line 346+1 raze.inc
 mov edx, ezPC
%line 346+0 raze.inc
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 mov zA, dl
 sub dword [_z80_ICount], 7
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 347+1 raze.inc





times ($$-$) & ((4)-1) nop
%line 352+0 raze.inc
dd_26:
%line 353+1 raze.inc
 mov edx, ezPC
%line 353+0 raze.inc
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 mov zIXh, dl
 sub dword [_z80_ICount], 11
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 354+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 355+0 raze.inc
dd_2e:
%line 356+1 raze.inc
 mov edx, ezPC
%line 356+0 raze.inc
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 mov zIXl, dl
 sub dword [_z80_ICount], 11
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 357+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 358+0 raze.inc
fd_26:
%line 359+1 raze.inc
 mov edx, ezPC
%line 359+0 raze.inc
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 mov zIYh, dl
 sub dword [_z80_ICount], 11
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 360+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 361+0 raze.inc
fd_2e:
%line 362+1 raze.inc
 mov edx, ezPC
%line 362+0 raze.inc
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 mov zIYl, dl
 sub dword [_z80_ICount], 11
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 363+1 raze.inc





times ($$-$) & ((4)-1) nop
%line 368+0 raze.inc
op_46:
%line 369+1 raze.inc
 mov edi, ezHL
%line 369+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@747.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@747.finish

..@747.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@747.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 mov zB, dl
 sub dword [_z80_ICount], 7
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 370+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 371+0 raze.inc
op_4e:
%line 372+1 raze.inc
 mov edi, ezHL
%line 372+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@757.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@757.finish

..@757.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@757.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 mov zC, dl
 sub dword [_z80_ICount], 7
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 373+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 374+0 raze.inc
op_56:
%line 375+1 raze.inc
 mov edi, ezHL
%line 375+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@767.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@767.finish

..@767.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@767.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 mov zD, dl
 sub dword [_z80_ICount], 7
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 376+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 377+0 raze.inc
op_5e:
%line 378+1 raze.inc
 mov edi, ezHL
%line 378+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@777.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@777.finish

..@777.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@777.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 mov zE, dl
 sub dword [_z80_ICount], 7
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 379+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 380+0 raze.inc
op_66:
%line 381+1 raze.inc
 mov edi, ezHL
%line 381+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@787.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@787.finish

..@787.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@787.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 mov zH, dl
 sub dword [_z80_ICount], 7
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 382+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 383+0 raze.inc
op_6e:
%line 384+1 raze.inc
 mov edi, ezHL
%line 384+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@797.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@797.finish

..@797.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@797.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 mov zL, dl
 sub dword [_z80_ICount], 7
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 385+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 386+0 raze.inc
op_7e:
%line 387+1 raze.inc
 mov edi, ezHL
%line 387+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@807.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@807.finish

..@807.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@807.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 mov zA, dl
 sub dword [_z80_ICount], 7
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 388+1 raze.inc





times ($$-$) & ((4)-1) nop
%line 393+0 raze.inc
dd_46:
%line 394+1 raze.inc
 mov edx, ezPC
%line 394+0 raze.inc
 shr edx, 8
 mov edx, [_z80_Fetch+edx*4]

 movsx di, [edx+ezPC]
 inc zPC
 xor edx, edx
 add di, zIX
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@818.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@818.finish

..@818.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@818.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 mov zB, dl
 sub dword [_z80_ICount], 19
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 395+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 396+0 raze.inc
fd_46:
%line 397+1 raze.inc
 mov edx, ezPC
%line 397+0 raze.inc
 shr edx, 8
 mov edx, [_z80_Fetch+edx*4]

 movsx di, [edx+ezPC]
 inc zPC
 xor edx, edx
 add di, zIY
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@829.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@829.finish

..@829.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@829.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 mov zB, dl
 sub dword [_z80_ICount], 19
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 398+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 399+0 raze.inc
dd_4e:
%line 400+1 raze.inc
 mov edx, ezPC
%line 400+0 raze.inc
 shr edx, 8
 mov edx, [_z80_Fetch+edx*4]

 movsx di, [edx+ezPC]
 inc zPC
 xor edx, edx
 add di, zIX
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@840.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@840.finish

..@840.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@840.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 mov zC, dl
 sub dword [_z80_ICount], 19
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 401+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 402+0 raze.inc
fd_4e:
%line 403+1 raze.inc
 mov edx, ezPC
%line 403+0 raze.inc
 shr edx, 8
 mov edx, [_z80_Fetch+edx*4]

 movsx di, [edx+ezPC]
 inc zPC
 xor edx, edx
 add di, zIY
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@851.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@851.finish

..@851.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@851.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 mov zC, dl
 sub dword [_z80_ICount], 19
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 404+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 405+0 raze.inc
dd_56:
%line 406+1 raze.inc
 mov edx, ezPC
%line 406+0 raze.inc
 shr edx, 8
 mov edx, [_z80_Fetch+edx*4]

 movsx di, [edx+ezPC]
 inc zPC
 xor edx, edx
 add di, zIX
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@862.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@862.finish

..@862.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@862.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 mov zD, dl
 sub dword [_z80_ICount], 19
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 407+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 408+0 raze.inc
fd_56:
%line 409+1 raze.inc
 mov edx, ezPC
%line 409+0 raze.inc
 shr edx, 8
 mov edx, [_z80_Fetch+edx*4]

 movsx di, [edx+ezPC]
 inc zPC
 xor edx, edx
 add di, zIY
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@873.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@873.finish

..@873.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@873.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 mov zD, dl
 sub dword [_z80_ICount], 19
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 410+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 411+0 raze.inc
dd_5e:
%line 412+1 raze.inc
 mov edx, ezPC
%line 412+0 raze.inc
 shr edx, 8
 mov edx, [_z80_Fetch+edx*4]

 movsx di, [edx+ezPC]
 inc zPC
 xor edx, edx
 add di, zIX
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@884.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@884.finish

..@884.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@884.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 mov zE, dl
 sub dword [_z80_ICount], 19
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 413+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 414+0 raze.inc
fd_5e:
%line 415+1 raze.inc
 mov edx, ezPC
%line 415+0 raze.inc
 shr edx, 8
 mov edx, [_z80_Fetch+edx*4]

 movsx di, [edx+ezPC]
 inc zPC
 xor edx, edx
 add di, zIY
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@895.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@895.finish

..@895.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@895.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 mov zE, dl
 sub dword [_z80_ICount], 19
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 416+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 417+0 raze.inc
dd_66:
%line 418+1 raze.inc
 mov edx, ezPC
%line 418+0 raze.inc
 shr edx, 8
 mov edx, [_z80_Fetch+edx*4]

 movsx di, [edx+ezPC]
 inc zPC
 xor edx, edx
 add di, zIX
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@906.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@906.finish

..@906.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@906.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 mov zH, dl
 sub dword [_z80_ICount], 19
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 419+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 420+0 raze.inc
fd_66:
%line 421+1 raze.inc
 mov edx, ezPC
%line 421+0 raze.inc
 shr edx, 8
 mov edx, [_z80_Fetch+edx*4]

 movsx di, [edx+ezPC]
 inc zPC
 xor edx, edx
 add di, zIY
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@917.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@917.finish

..@917.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@917.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 mov zH, dl
 sub dword [_z80_ICount], 19
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 422+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 423+0 raze.inc
dd_6e:
%line 424+1 raze.inc
 mov edx, ezPC
%line 424+0 raze.inc
 shr edx, 8
 mov edx, [_z80_Fetch+edx*4]

 movsx di, [edx+ezPC]
 inc zPC
 xor edx, edx
 add di, zIX
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@928.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@928.finish

..@928.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@928.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 mov zL, dl
 sub dword [_z80_ICount], 19
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 425+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 426+0 raze.inc
fd_6e:
%line 427+1 raze.inc
 mov edx, ezPC
%line 427+0 raze.inc
 shr edx, 8
 mov edx, [_z80_Fetch+edx*4]

 movsx di, [edx+ezPC]
 inc zPC
 xor edx, edx
 add di, zIY
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@939.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@939.finish

..@939.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@939.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 mov zL, dl
 sub dword [_z80_ICount], 19
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 428+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 429+0 raze.inc
dd_7e:
%line 430+1 raze.inc
 mov edx, ezPC
%line 430+0 raze.inc
 shr edx, 8
 mov edx, [_z80_Fetch+edx*4]

 movsx di, [edx+ezPC]
 inc zPC
 xor edx, edx
 add di, zIX
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@950.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@950.finish

..@950.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@950.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 mov zA, dl
 sub dword [_z80_ICount], 19
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 431+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 432+0 raze.inc
fd_7e:
%line 433+1 raze.inc
 mov edx, ezPC
%line 433+0 raze.inc
 shr edx, 8
 mov edx, [_z80_Fetch+edx*4]

 movsx di, [edx+ezPC]
 inc zPC
 xor edx, edx
 add di, zIY
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@961.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@961.finish

..@961.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@961.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 mov zA, dl
 sub dword [_z80_ICount], 19
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 434+1 raze.inc





times ($$-$) & ((4)-1) nop
%line 439+0 raze.inc
op_70:
%line 440+1 raze.inc
 mov edi, ezHL
%line 440+0 raze.inc
 mov dl, zB
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@971.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@971.finish

..@971.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@971.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx
 sub dword [_z80_ICount], 7
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 441+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 442+0 raze.inc
op_71:
%line 443+1 raze.inc
 mov edi, ezHL
%line 443+0 raze.inc
 mov dl, zC
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@981.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@981.finish

..@981.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@981.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx
 sub dword [_z80_ICount], 7
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 444+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 445+0 raze.inc
op_72:
%line 446+1 raze.inc
 mov edi, ezHL
%line 446+0 raze.inc
 mov dl, zD
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@991.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@991.finish

..@991.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@991.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx
 sub dword [_z80_ICount], 7
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 447+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 448+0 raze.inc
op_73:
%line 449+1 raze.inc
 mov edi, ezHL
%line 449+0 raze.inc
 mov dl, zE
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@1001.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@1001.finish

..@1001.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@1001.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx
 sub dword [_z80_ICount], 7
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 450+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 451+0 raze.inc
op_74:
%line 452+1 raze.inc
 mov edi, ezHL
%line 452+0 raze.inc
 mov dl, zH
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@1011.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@1011.finish

..@1011.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@1011.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx
 sub dword [_z80_ICount], 7
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 453+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 454+0 raze.inc
op_75:
%line 455+1 raze.inc
 mov edi, ezHL
%line 455+0 raze.inc
 mov dl, zL
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@1021.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@1021.finish

..@1021.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@1021.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx
 sub dword [_z80_ICount], 7
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 456+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 457+0 raze.inc
op_77:
%line 458+1 raze.inc
 mov edi, ezHL
%line 458+0 raze.inc
 mov dl, zA
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@1031.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@1031.finish

..@1031.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@1031.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx
 sub dword [_z80_ICount], 7
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 459+1 raze.inc





times ($$-$) & ((4)-1) nop
%line 464+0 raze.inc
dd_70:
%line 465+1 raze.inc
 mov edx, ezPC
%line 465+0 raze.inc
 shr edx, 8
 mov edx, [_z80_Fetch+edx*4]

 movsx di, [edx+ezPC]
 inc zPC
 xor edx, edx
 add di, zIX
 mov dl, zB
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@1042.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@1042.finish

..@1042.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@1042.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx
 sub dword [_z80_ICount], 19
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 466+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 467+0 raze.inc
fd_70:
%line 468+1 raze.inc
 mov edx, ezPC
%line 468+0 raze.inc
 shr edx, 8
 mov edx, [_z80_Fetch+edx*4]

 movsx di, [edx+ezPC]
 inc zPC
 xor edx, edx
 add di, zIY
 mov dl, zB
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@1053.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@1053.finish

..@1053.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@1053.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx
 sub dword [_z80_ICount], 19
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 469+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 470+0 raze.inc
dd_71:
%line 471+1 raze.inc
 mov edx, ezPC
%line 471+0 raze.inc
 shr edx, 8
 mov edx, [_z80_Fetch+edx*4]

 movsx di, [edx+ezPC]
 inc zPC
 xor edx, edx
 add di, zIX
 mov dl, zC
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@1064.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@1064.finish

..@1064.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@1064.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx
 sub dword [_z80_ICount], 19
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 472+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 473+0 raze.inc
fd_71:
%line 474+1 raze.inc
 mov edx, ezPC
%line 474+0 raze.inc
 shr edx, 8
 mov edx, [_z80_Fetch+edx*4]

 movsx di, [edx+ezPC]
 inc zPC
 xor edx, edx
 add di, zIY
 mov dl, zC
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@1075.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@1075.finish

..@1075.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@1075.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx
 sub dword [_z80_ICount], 19
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 475+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 476+0 raze.inc
dd_72:
%line 477+1 raze.inc
 mov edx, ezPC
%line 477+0 raze.inc
 shr edx, 8
 mov edx, [_z80_Fetch+edx*4]

 movsx di, [edx+ezPC]
 inc zPC
 xor edx, edx
 add di, zIX
 mov dl, zD
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@1086.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@1086.finish

..@1086.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@1086.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx
 sub dword [_z80_ICount], 19
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 478+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 479+0 raze.inc
fd_72:
%line 480+1 raze.inc
 mov edx, ezPC
%line 480+0 raze.inc
 shr edx, 8
 mov edx, [_z80_Fetch+edx*4]

 movsx di, [edx+ezPC]
 inc zPC
 xor edx, edx
 add di, zIY
 mov dl, zD
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@1097.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@1097.finish

..@1097.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@1097.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx
 sub dword [_z80_ICount], 19
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 481+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 482+0 raze.inc
dd_73:
%line 483+1 raze.inc
 mov edx, ezPC
%line 483+0 raze.inc
 shr edx, 8
 mov edx, [_z80_Fetch+edx*4]

 movsx di, [edx+ezPC]
 inc zPC
 xor edx, edx
 add di, zIX
 mov dl, zE
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@1108.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@1108.finish

..@1108.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@1108.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx
 sub dword [_z80_ICount], 19
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 484+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 485+0 raze.inc
fd_73:
%line 486+1 raze.inc
 mov edx, ezPC
%line 486+0 raze.inc
 shr edx, 8
 mov edx, [_z80_Fetch+edx*4]

 movsx di, [edx+ezPC]
 inc zPC
 xor edx, edx
 add di, zIY
 mov dl, zE
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@1119.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@1119.finish

..@1119.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@1119.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx
 sub dword [_z80_ICount], 19
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 487+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 488+0 raze.inc
dd_74:
%line 489+1 raze.inc
 mov edx, ezPC
%line 489+0 raze.inc
 shr edx, 8
 mov edx, [_z80_Fetch+edx*4]

 movsx di, [edx+ezPC]
 inc zPC
 xor edx, edx
 add di, zIX
 mov dl, zH
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@1130.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@1130.finish

..@1130.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@1130.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx
 sub dword [_z80_ICount], 19
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 490+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 491+0 raze.inc
fd_74:
%line 492+1 raze.inc
 mov edx, ezPC
%line 492+0 raze.inc
 shr edx, 8
 mov edx, [_z80_Fetch+edx*4]

 movsx di, [edx+ezPC]
 inc zPC
 xor edx, edx
 add di, zIY
 mov dl, zH
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@1141.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@1141.finish

..@1141.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@1141.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx
 sub dword [_z80_ICount], 19
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 493+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 494+0 raze.inc
dd_75:
%line 495+1 raze.inc
 mov edx, ezPC
%line 495+0 raze.inc
 shr edx, 8
 mov edx, [_z80_Fetch+edx*4]

 movsx di, [edx+ezPC]
 inc zPC
 xor edx, edx
 add di, zIX
 mov dl, zL
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@1152.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@1152.finish

..@1152.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@1152.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx
 sub dword [_z80_ICount], 19
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 496+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 497+0 raze.inc
fd_75:
%line 498+1 raze.inc
 mov edx, ezPC
%line 498+0 raze.inc
 shr edx, 8
 mov edx, [_z80_Fetch+edx*4]

 movsx di, [edx+ezPC]
 inc zPC
 xor edx, edx
 add di, zIY
 mov dl, zL
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@1163.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@1163.finish

..@1163.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@1163.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx
 sub dword [_z80_ICount], 19
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 499+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 500+0 raze.inc
dd_77:
%line 501+1 raze.inc
 mov edx, ezPC
%line 501+0 raze.inc
 shr edx, 8
 mov edx, [_z80_Fetch+edx*4]

 movsx di, [edx+ezPC]
 inc zPC
 xor edx, edx
 add di, zIX
 mov dl, zA
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@1174.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@1174.finish

..@1174.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@1174.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx
 sub dword [_z80_ICount], 19
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 502+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 503+0 raze.inc
fd_77:
%line 504+1 raze.inc
 mov edx, ezPC
%line 504+0 raze.inc
 shr edx, 8
 mov edx, [_z80_Fetch+edx*4]

 movsx di, [edx+ezPC]
 inc zPC
 xor edx, edx
 add di, zIY
 mov dl, zA
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@1185.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@1185.finish

..@1185.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@1185.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx
 sub dword [_z80_ICount], 19
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 505+1 raze.inc





times ($$-$) & ((4)-1) nop
%line 510+0 raze.inc
op_36:
%line 511+1 raze.inc
 mov edx, ezPC
%line 511+0 raze.inc
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 mov edi, ezHL
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@1196.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@1196.finish

..@1196.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@1196.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx
 sub dword [_z80_ICount], 10
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 512+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 513+0 raze.inc
dd_36:
%line 514+1 raze.inc
 mov edx, ezPC
%line 514+0 raze.inc
 shr edx, 8
 mov edx, [_z80_Fetch+edx*4]

 movsx di, [edx+ezPC]
 inc zPC
 xor edx, edx
 add di, zIX
 push edi
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 pop edi
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@1208.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@1208.finish

..@1208.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@1208.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx
 sub dword [_z80_ICount], 19
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 515+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 516+0 raze.inc
fd_36:
%line 517+1 raze.inc
 mov edx, ezPC
%line 517+0 raze.inc
 shr edx, 8
 mov edx, [_z80_Fetch+edx*4]

 movsx di, [edx+ezPC]
 inc zPC
 xor edx, edx
 add di, zIY
 push edi
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 pop edi
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@1220.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@1220.finish

..@1220.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@1220.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx
 sub dword [_z80_ICount], 19
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 518+1 raze.inc





times ($$-$) & ((4)-1) nop
%line 523+0 raze.inc
op_0a:
%line 524+1 raze.inc
 mov edi, ezBC
%line 524+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@1230.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@1230.finish

..@1230.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@1230.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 mov zA, dl
 sub dword [_z80_ICount], 7
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 525+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 526+0 raze.inc
op_1a:
%line 527+1 raze.inc
 mov edi, ezDE
%line 527+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@1240.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@1240.finish

..@1240.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@1240.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 mov zA, dl
 sub dword [_z80_ICount], 7
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 528+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 529+0 raze.inc
op_3a:
%line 530+1 raze.inc
 mov [_z80_BC], ezBC
%line 530+0 raze.inc
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC

 mov ecx, ezPC
 shr ecx, 8
 mov edi, [_z80_Fetch+ecx*4]

 mov dh, [edi+ezPC]
 inc zPC
 mov edi, edx
 mov ezBC, [_z80_BC]
 xor edx, edx
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@1251.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@1251.finish

..@1251.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@1251.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 mov zA, dl
 sub dword [_z80_ICount], 13
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 531+1 raze.inc





times ($$-$) & ((4)-1) nop
%line 536+0 raze.inc
op_02:
%line 537+1 raze.inc
 mov edi, ezBC
%line 537+0 raze.inc
 mov dl, zA
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@1261.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@1261.finish

..@1261.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@1261.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx
 sub dword [_z80_ICount], 7
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 538+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 539+0 raze.inc
op_12:
%line 540+1 raze.inc
 mov edi, ezDE
%line 540+0 raze.inc
 mov dl, zA
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@1271.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@1271.finish

..@1271.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@1271.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx
 sub dword [_z80_ICount], 7
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 541+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 542+0 raze.inc
op_32:
%line 543+1 raze.inc
 mov [_z80_BC], ezBC
%line 543+0 raze.inc
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC

 mov ecx, ezPC
 shr ecx, 8
 mov edi, [_z80_Fetch+ecx*4]

 mov dh, [edi+ezPC]
 inc zPC
 mov edi, edx
 mov ezBC, [_z80_BC]
 xor edx, edx
 mov dl, zA
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@1282.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@1282.finish

..@1282.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@1282.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx
 sub dword [_z80_ICount], 13
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 544+1 raze.inc





times ($$-$) & ((4)-1) nop
%line 549+0 raze.inc
ed_57:
%line 550+1 raze.inc
 mov zA, zI
%line 550+0 raze.inc
 and zF, FLAG_C
 mov dl, zF

 test zA, zA
 lahf
 and zF, FLAG_S|FLAG_Z
 or zF, dl
 or zF, [_z80_IFF2]
 sub dword [_z80_ICount], 9
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 551+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 552+0 raze.inc
ed_5f:
%line 553+1 raze.inc
 mov edx, [_z80_R2]
%line 553+0 raze.inc
 and edx, 80h


 and zR, 7fh
 or edx, zR
 mov zA, dl

 mov dl, zF
 and dl, FLAG_C

 test zA, zA
 lahf
 and zF, FLAG_S|FLAG_Z
 or zF, dl
 or zF, [_z80_IFF2]
 sub dword [_z80_ICount], 9
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 554+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 555+0 raze.inc
ed_47:
%line 556+1 raze.inc
 mov zI, zA
%line 556+0 raze.inc
 sub dword [_z80_ICount], 9
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 557+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 558+0 raze.inc
ed_4f:
%line 559+1 raze.inc
 mov dl, zA
%line 559+0 raze.inc
 mov zR, edx
 mov [_z80_R2], edx
 sub dword [_z80_ICount], 9
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 560+1 raze.inc





times ($$-$) & ((4)-1) nop
%line 565+0 raze.inc
op_01:
%line 566+1 raze.inc
 mov [_z80_BC], ezBC
%line 566+0 raze.inc
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC

 mov ecx, ezPC
 shr ecx, 8
 mov edi, [_z80_Fetch+ecx*4]

 mov dh, [edi+ezPC]
 inc zPC
 mov edi, edx
 mov ezBC, [_z80_BC]
 xor edx, edx
 mov ezBC, edi
 sub dword [_z80_ICount], 10
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 567+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 568+0 raze.inc
op_11:
%line 569+1 raze.inc
 mov [_z80_BC], ezBC
%line 569+0 raze.inc
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC

 mov ecx, ezPC
 shr ecx, 8
 mov edi, [_z80_Fetch+ecx*4]

 mov dh, [edi+ezPC]
 inc zPC
 mov edi, edx
 mov ezBC, [_z80_BC]
 xor edx, edx
 mov ezDE, edi
 sub dword [_z80_ICount], 10
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 570+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 571+0 raze.inc
op_21:
%line 572+1 raze.inc
 mov [_z80_BC], ezBC
%line 572+0 raze.inc
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC

 mov ecx, ezPC
 shr ecx, 8
 mov edi, [_z80_Fetch+ecx*4]

 mov dh, [edi+ezPC]
 inc zPC
 mov edi, edx
 mov ezBC, [_z80_BC]
 xor edx, edx
 mov ezHL, edi
 sub dword [_z80_ICount], 10
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 573+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 574+0 raze.inc
op_31:
%line 575+1 raze.inc
 mov [_z80_BC], ezBC
%line 575+0 raze.inc
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC

 mov ecx, ezPC
 shr ecx, 8
 mov edi, [_z80_Fetch+ecx*4]

 mov dh, [edi+ezPC]
 inc zPC
 mov edi, edx
 mov ezBC, [_z80_BC]
 xor edx, edx
 mov ezSP, edi
 sub dword [_z80_ICount], 10
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 576+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 577+0 raze.inc
dd_21:
%line 578+1 raze.inc
 mov [_z80_BC], ezBC
%line 578+0 raze.inc
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC

 mov ecx, ezPC
 shr ecx, 8
 mov edi, [_z80_Fetch+ecx*4]

 mov dh, [edi+ezPC]
 inc zPC
 mov edi, edx
 mov ezBC, [_z80_BC]
 xor edx, edx
 mov ezIX, edi
 sub dword [_z80_ICount], 14
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 579+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 580+0 raze.inc
fd_21:
%line 581+1 raze.inc
 mov [_z80_BC], ezBC
%line 581+0 raze.inc
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC

 mov ecx, ezPC
 shr ecx, 8
 mov edi, [_z80_Fetch+ecx*4]

 mov dh, [edi+ezPC]
 inc zPC
 mov edi, edx
 mov ezBC, [_z80_BC]
 xor edx, edx
 mov ezIY, edi
 sub dword [_z80_ICount], 14
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 582+1 raze.inc





times ($$-$) & ((4)-1) nop
%line 587+0 raze.inc
op_2a:
%line 588+1 raze.inc
 mov [_z80_BC], ezBC
%line 588+0 raze.inc
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC

 mov ecx, ezPC
 shr ecx, 8
 mov edi, [_z80_Fetch+ecx*4]

 mov dh, [edi+ezPC]
 inc zPC
 mov edi, edx
 mov ezBC, [_z80_BC]
 xor edx, edx
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@1369.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@1369.finish

..@1369.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@1369.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 mov lzHL, dl
 inc di
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@1372.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@1372.finish

..@1372.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@1372.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 mov hzHL, dl
 sub dword [_z80_ICount], 16
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 589+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 590+0 raze.inc
ed_4b:
%line 591+1 raze.inc
 mov [_z80_BC], ezBC
%line 591+0 raze.inc
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC

 mov ecx, ezPC
 shr ecx, 8
 mov edi, [_z80_Fetch+ecx*4]

 mov dh, [edi+ezPC]
 inc zPC
 mov edi, edx
 mov ezBC, [_z80_BC]
 xor edx, edx
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@1383.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@1383.finish

..@1383.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@1383.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 mov lzBC, dl
 inc di
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@1386.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@1386.finish

..@1386.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@1386.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 mov hzBC, dl
 sub dword [_z80_ICount], 16
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 592+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 593+0 raze.inc
ed_5b:
%line 594+1 raze.inc
 mov [_z80_BC], ezBC
%line 594+0 raze.inc
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC

 mov ecx, ezPC
 shr ecx, 8
 mov edi, [_z80_Fetch+ecx*4]

 mov dh, [edi+ezPC]
 inc zPC
 mov edi, edx
 mov ezBC, [_z80_BC]
 xor edx, edx
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@1397.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@1397.finish

..@1397.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@1397.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 mov lzDE, dl
 inc di
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@1400.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@1400.finish

..@1400.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@1400.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 mov hzDE, dl
 sub dword [_z80_ICount], 16
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 595+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 596+0 raze.inc
ed_6b:
%line 597+1 raze.inc
 mov [_z80_BC], ezBC
%line 597+0 raze.inc
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC

 mov ecx, ezPC
 shr ecx, 8
 mov edi, [_z80_Fetch+ecx*4]

 mov dh, [edi+ezPC]
 inc zPC
 mov edi, edx
 mov ezBC, [_z80_BC]
 xor edx, edx
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@1411.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@1411.finish

..@1411.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@1411.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 mov lzHL, dl
 inc di
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@1414.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@1414.finish

..@1414.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@1414.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 mov hzHL, dl
 sub dword [_z80_ICount], 16
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 598+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 599+0 raze.inc
ed_7b:
%line 600+1 raze.inc
 mov [_z80_BC], ezBC
%line 600+0 raze.inc
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC

 mov ecx, ezPC
 shr ecx, 8
 mov edi, [_z80_Fetch+ecx*4]

 mov dh, [edi+ezPC]
 inc zPC
 mov edi, edx
 mov ezBC, [_z80_BC]
 xor edx, edx
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@1425.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@1425.finish

..@1425.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@1425.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 mov lzSP, dl
 inc di
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@1428.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@1428.finish

..@1428.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@1428.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 mov hzSP, dl
 sub dword [_z80_ICount], 16
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 601+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 602+0 raze.inc
dd_2a:
%line 603+1 raze.inc
 mov [_z80_BC], ezBC
%line 603+0 raze.inc
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC

 mov ecx, ezPC
 shr ecx, 8
 mov edi, [_z80_Fetch+ecx*4]

 mov dh, [edi+ezPC]
 inc zPC
 mov edi, edx
 mov ezBC, [_z80_BC]
 xor edx, edx
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@1439.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@1439.finish

..@1439.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@1439.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 mov lzIX, dl
 inc di
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@1442.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@1442.finish

..@1442.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@1442.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 mov hzIX, dl
 sub dword [_z80_ICount], 20
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 604+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 605+0 raze.inc
fd_2a:
%line 606+1 raze.inc
 mov [_z80_BC], ezBC
%line 606+0 raze.inc
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC

 mov ecx, ezPC
 shr ecx, 8
 mov edi, [_z80_Fetch+ecx*4]

 mov dh, [edi+ezPC]
 inc zPC
 mov edi, edx
 mov ezBC, [_z80_BC]
 xor edx, edx
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@1453.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@1453.finish

..@1453.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@1453.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 mov lzIY, dl
 inc di
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@1456.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@1456.finish

..@1456.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@1456.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 mov hzIY, dl
 sub dword [_z80_ICount], 20
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 607+1 raze.inc





times ($$-$) & ((4)-1) nop
%line 612+0 raze.inc
op_22:
%line 613+1 raze.inc
 mov [_z80_BC], ezBC
%line 613+0 raze.inc
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC

 mov ecx, ezPC
 shr ecx, 8
 mov edi, [_z80_Fetch+ecx*4]

 mov dh, [edi+ezPC]
 inc zPC
 mov edi, edx
 mov ezBC, [_z80_BC]
 xor edx, edx
 mov dl, lzHL
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@1467.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@1467.finish

..@1467.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@1467.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx
 inc di
 mov dl, hzHL
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@1470.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@1470.finish

..@1470.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@1470.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx
 sub dword [_z80_ICount], 16
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 614+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 615+0 raze.inc
ed_43:
%line 616+1 raze.inc
 mov [_z80_BC], ezBC
%line 616+0 raze.inc
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC

 mov ecx, ezPC
 shr ecx, 8
 mov edi, [_z80_Fetch+ecx*4]

 mov dh, [edi+ezPC]
 inc zPC
 mov edi, edx
 mov ezBC, [_z80_BC]
 xor edx, edx
 mov dl, lzBC
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@1481.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@1481.finish

..@1481.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@1481.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx
 inc di
 mov dl, hzBC
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@1484.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@1484.finish

..@1484.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@1484.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx
 sub dword [_z80_ICount], 16
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 617+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 618+0 raze.inc
ed_53:
%line 619+1 raze.inc
 mov [_z80_BC], ezBC
%line 619+0 raze.inc
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC

 mov ecx, ezPC
 shr ecx, 8
 mov edi, [_z80_Fetch+ecx*4]

 mov dh, [edi+ezPC]
 inc zPC
 mov edi, edx
 mov ezBC, [_z80_BC]
 xor edx, edx
 mov dl, lzDE
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@1495.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@1495.finish

..@1495.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@1495.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx
 inc di
 mov dl, hzDE
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@1498.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@1498.finish

..@1498.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@1498.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx
 sub dword [_z80_ICount], 16
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 620+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 621+0 raze.inc
ed_63:
%line 622+1 raze.inc
 mov [_z80_BC], ezBC
%line 622+0 raze.inc
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC

 mov ecx, ezPC
 shr ecx, 8
 mov edi, [_z80_Fetch+ecx*4]

 mov dh, [edi+ezPC]
 inc zPC
 mov edi, edx
 mov ezBC, [_z80_BC]
 xor edx, edx
 mov dl, lzHL
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@1509.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@1509.finish

..@1509.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@1509.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx
 inc di
 mov dl, hzHL
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@1512.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@1512.finish

..@1512.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@1512.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx
 sub dword [_z80_ICount], 16
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 623+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 624+0 raze.inc
ed_73:
%line 625+1 raze.inc
 mov [_z80_BC], ezBC
%line 625+0 raze.inc
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC

 mov ecx, ezPC
 shr ecx, 8
 mov edi, [_z80_Fetch+ecx*4]

 mov dh, [edi+ezPC]
 inc zPC
 mov edi, edx
 mov ezBC, [_z80_BC]
 xor edx, edx
 mov dl, lzSP
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@1523.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@1523.finish

..@1523.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@1523.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx
 inc di
 mov dl, hzSP
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@1526.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@1526.finish

..@1526.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@1526.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx
 sub dword [_z80_ICount], 16
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 626+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 627+0 raze.inc
dd_22:
%line 628+1 raze.inc
 mov [_z80_BC], ezBC
%line 628+0 raze.inc
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC

 mov ecx, ezPC
 shr ecx, 8
 mov edi, [_z80_Fetch+ecx*4]

 mov dh, [edi+ezPC]
 inc zPC
 mov edi, edx
 mov ezBC, [_z80_BC]
 xor edx, edx
 mov dl, lzIX
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@1537.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@1537.finish

..@1537.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@1537.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx
 inc di
 mov dl, hzIX
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@1540.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@1540.finish

..@1540.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@1540.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx
 sub dword [_z80_ICount], 20
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 629+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 630+0 raze.inc
fd_22:
%line 631+1 raze.inc
 mov [_z80_BC], ezBC
%line 631+0 raze.inc
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC

 mov ecx, ezPC
 shr ecx, 8
 mov edi, [_z80_Fetch+ecx*4]

 mov dh, [edi+ezPC]
 inc zPC
 mov edi, edx
 mov ezBC, [_z80_BC]
 xor edx, edx
 mov dl, lzIY
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@1551.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@1551.finish

..@1551.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@1551.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx
 inc di
 mov dl, hzIY
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@1554.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@1554.finish

..@1554.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@1554.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx
 sub dword [_z80_ICount], 20
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 632+1 raze.inc





times ($$-$) & ((4)-1) nop
%line 637+0 raze.inc
op_f9:
%line 638+1 raze.inc
 mov ezSP, ezHL
%line 638+0 raze.inc
 sub dword [_z80_ICount], 6
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 639+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 640+0 raze.inc
dd_f9:
%line 641+1 raze.inc
 mov edi, ezIX
%line 641+0 raze.inc
 mov ezSP, edi
 sub dword [_z80_ICount], 10
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 642+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 643+0 raze.inc
fd_f9:
%line 644+1 raze.inc
 mov edi, ezIY
%line 644+0 raze.inc
 mov ezSP, edi
 sub dword [_z80_ICount], 10
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 645+1 raze.inc





times ($$-$) & ((4)-1) nop
%line 650+0 raze.inc
op_c5:
%line 651+1 raze.inc
 mov dl, hzBC
%line 651+0 raze.inc
 dec zSP
 mov edi, ezSP
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@1585.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@1585.finish

..@1585.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@1585.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx
 dec zSP
 mov edi, ezSP
 mov dl, lzBC
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@1588.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@1588.finish

..@1588.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@1588.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx
 sub dword [_z80_ICount], 11
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 652+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 653+0 raze.inc
op_d5:
%line 654+1 raze.inc
 mov dl, hzDE
%line 654+0 raze.inc
 dec zSP
 mov edi, ezSP
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@1598.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@1598.finish

..@1598.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@1598.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx
 dec zSP
 mov edi, ezSP
 mov dl, lzDE
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@1601.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@1601.finish

..@1601.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@1601.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx
 sub dword [_z80_ICount], 11
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 655+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 656+0 raze.inc
op_e5:
%line 657+1 raze.inc
 mov dl, hzHL
%line 657+0 raze.inc
 dec zSP
 mov edi, ezSP
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@1611.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@1611.finish

..@1611.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@1611.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx
 dec zSP
 mov edi, ezSP
 mov dl, lzHL
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@1614.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@1614.finish

..@1614.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@1614.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx
 sub dword [_z80_ICount], 11
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 658+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 659+0 raze.inc
op_f5:
%line 660+1 raze.inc
 mov dl, hzAF
%line 660+0 raze.inc
 dec zSP
 mov edi, ezSP
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@1624.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@1624.finish

..@1624.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@1624.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx
 dec zSP
 mov edi, ezSP

 and zF, ~(FLAG_3|FLAG_5)
 mov dl, [_z80_flag35]
 and dl, FLAG_3|FLAG_5
 or zF, dl
 mov dl, lzAF
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@1627.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@1627.finish

..@1627.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@1627.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx
 sub dword [_z80_ICount], 11
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 661+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 662+0 raze.inc
dd_e5:
%line 663+1 raze.inc
 mov dl, hzIX
%line 663+0 raze.inc
 dec zSP
 mov edi, ezSP
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@1637.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@1637.finish

..@1637.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@1637.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx
 dec zSP
 mov edi, ezSP
 mov dl, lzIX
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@1640.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@1640.finish

..@1640.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@1640.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx
 sub dword [_z80_ICount], 15
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 664+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 665+0 raze.inc
fd_e5:
%line 666+1 raze.inc
 mov dl, hzIY
%line 666+0 raze.inc
 dec zSP
 mov edi, ezSP
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@1650.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@1650.finish

..@1650.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@1650.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx
 dec zSP
 mov edi, ezSP
 mov dl, lzIY
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@1653.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@1653.finish

..@1653.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@1653.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx
 sub dword [_z80_ICount], 15
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 667+1 raze.inc





times ($$-$) & ((4)-1) nop
%line 672+0 raze.inc
op_c1:
%line 673+1 raze.inc
 mov edi, ezSP
%line 673+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@1663.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@1663.finish

..@1663.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@1663.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 mov lzBC, dl
 inc zSP
 mov edi, ezSP
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@1666.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@1666.finish

..@1666.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@1666.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 mov hzBC, dl
 inc zSP
 sub dword [_z80_ICount], 14
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 674+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 675+0 raze.inc
op_d1:
%line 676+1 raze.inc
 mov edi, ezSP
%line 676+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@1676.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@1676.finish

..@1676.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@1676.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 mov lzDE, dl
 inc zSP
 mov edi, ezSP
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@1679.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@1679.finish

..@1679.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@1679.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 mov hzDE, dl
 inc zSP
 sub dword [_z80_ICount], 14
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 677+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 678+0 raze.inc
op_e1:
%line 679+1 raze.inc
 mov edi, ezSP
%line 679+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@1689.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@1689.finish

..@1689.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@1689.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 mov lzHL, dl
 inc zSP
 mov edi, ezSP
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@1692.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@1692.finish

..@1692.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@1692.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 mov hzHL, dl
 inc zSP
 sub dword [_z80_ICount], 14
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 680+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 681+0 raze.inc
op_f1:
%line 682+1 raze.inc
 mov edi, ezSP
%line 682+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@1702.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@1702.finish

..@1702.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@1702.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 mov [_z80_flag35], dl
 mov lzAF, dl
 inc zSP
 mov edi, ezSP
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@1705.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@1705.finish

..@1705.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@1705.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 mov hzAF, dl
 inc zSP
 sub dword [_z80_ICount], 14
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 683+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 684+0 raze.inc
dd_e1:
%line 685+1 raze.inc
 mov edi, ezSP
%line 685+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@1715.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@1715.finish

..@1715.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@1715.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 mov lzIX, dl
 inc zSP
 mov edi, ezSP
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@1718.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@1718.finish

..@1718.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@1718.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 mov hzIX, dl
 inc zSP
 sub dword [_z80_ICount], 14
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 686+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 687+0 raze.inc
fd_e1:
%line 688+1 raze.inc
 mov edi, ezSP
%line 688+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@1728.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@1728.finish

..@1728.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@1728.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 mov lzIY, dl
 inc zSP
 mov edi, ezSP
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@1731.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@1731.finish

..@1731.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@1731.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 mov hzIY, dl
 inc zSP
 sub dword [_z80_ICount], 14
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 689+1 raze.inc





times ($$-$) & ((4)-1) nop
%line 694+0 raze.inc
op_eb:
%line 695+1 raze.inc
 xchg ezDE, ezHL
%line 695+0 raze.inc
 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 696+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 697+0 raze.inc
op_08:
%line 698+1 raze.inc

%line 698+0 raze.inc
 and zF, ~(FLAG_3|FLAG_5)
 mov dl, [_z80_flag35]
 and dl, FLAG_3|FLAG_5
 or zF, dl
 xchg ezAF, ezAF2


 mov [_z80_flag35], zF
 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 699+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 700+0 raze.inc
op_d9:
%line 701+1 raze.inc
 mov edi, ezDE
%line 701+0 raze.inc
 xchg ezBC, ezBC2
 xchg ezHL, ezHL2
 xchg edi, ezDE2
 mov ezDE, edi
 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 702+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 703+0 raze.inc
op_e3:
%line 704+1 raze.inc
 mov edi, ezSP
%line 704+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@1762.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@1762.finish

..@1762.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@1762.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xchg dl, lzHL
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@1765.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@1765.finish

..@1765.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@1765.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 inc di
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@1768.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@1768.finish

..@1768.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@1768.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xchg dl, hzHL
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@1771.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@1771.finish

..@1771.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@1771.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 19
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 705+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 706+0 raze.inc
dd_e3:
%line 707+1 raze.inc
 mov edi, ezSP
%line 707+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@1781.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@1781.finish

..@1781.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@1781.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xchg dl, lzIX
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@1784.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@1784.finish

..@1784.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@1784.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 inc di
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@1787.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@1787.finish

..@1787.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@1787.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xchg dl, hzIX
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@1790.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@1790.finish

..@1790.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@1790.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 708+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 709+0 raze.inc
fd_e3:
%line 710+1 raze.inc
 mov edi, ezSP
%line 710+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@1800.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@1800.finish

..@1800.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@1800.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xchg dl, lzIY
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@1803.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@1803.finish

..@1803.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@1803.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 inc di
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@1806.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@1806.finish

..@1806.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@1806.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xchg dl, hzIY
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@1809.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@1809.finish

..@1809.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@1809.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 711+1 raze.inc





times ($$-$) & ((4)-1) nop
%line 716+0 raze.inc
ed_a0:
%line 717+1 raze.inc
 mov edi, ezHL
%line 717+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@1819.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@1819.finish

..@1819.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@1819.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 mov edi, ezDE
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@1822.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@1822.finish

..@1822.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@1822.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx


 and zF, FLAG_S|FLAG_Z|FLAG_C
 inc zHL
 inc zDE
 dec zBC
 jz ..@1818.ldi_zero
 or zF, FLAG_P
..@1818.ldi_zero:
 sub dword [_z80_ICount], 16
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 718+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 719+0 raze.inc
ed_a8:
%line 720+1 raze.inc
 mov edi, ezHL
%line 720+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@1832.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@1832.finish

..@1832.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@1832.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 mov edi, ezDE
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@1835.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@1835.finish

..@1835.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@1835.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx


 and zF, FLAG_S|FLAG_Z|FLAG_C
 dec zHL
 dec zDE
 dec zBC
 jz ..@1831.ldd_zero
 or zF, FLAG_P
..@1831.ldd_zero:
 sub dword [_z80_ICount], 16
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 721+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 722+0 raze.inc
ed_b0:
%line 723+1 raze.inc

%line 723+0 raze.inc
..@1844.ldir_loop:

 mov edi, ezHL
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@1845.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@1845.finish

..@1845.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@1845.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 mov edi, ezDE
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@1848.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@1848.finish

..@1848.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@1848.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 inc zHL
 inc zDE
 dec zBC
 jz ..@1844.ldir_zero

 inc zR
 sub [_z80_ICount], dword 21
 ja near ..@1844.ldir_loop


 and zF, FLAG_S|FLAG_Z|FLAG_C
 or zF, FLAG_P
 sub zPC, 2
 jmp z80_finish


..@1844.ldir_zero:
 and zF, FLAG_S|FLAG_Z|FLAG_C
 sub dword [_z80_ICount], 16
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 724+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 725+0 raze.inc
ed_b8:
%line 726+1 raze.inc
..@1858.lddr_loop:
%line 726+0 raze.inc
 mov edi, ezHL
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@1859.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@1859.finish

..@1859.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@1859.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 mov edi, ezDE
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@1862.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@1862.finish

..@1862.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@1862.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 dec zHL
 dec zDE
 dec zBC
 jz ..@1858.lddr_zero

 inc zR
 sub [_z80_ICount], dword 21
 ja near ..@1858.lddr_loop

 and zF, FLAG_S|FLAG_Z|FLAG_C
 or zF, FLAG_P
 sub zPC, 2
 jmp z80_finish

..@1858.lddr_zero:
 and zF, FLAG_S|FLAG_Z|FLAG_C
 sub dword [_z80_ICount], 16
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 727+1 raze.inc





times ($$-$) & ((4)-1) nop
%line 732+0 raze.inc
ed_a1:
%line 733+1 raze.inc
 mov edi, ezHL
%line 733+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@1873.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@1873.finish

..@1873.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@1873.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]

 and zF, FLAG_C
 mov dh, zF
 cmp zA, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_H|FLAG_N
 or zF, dh

 inc zHL
 dec zBC
 jz ..@1872.cpi_zero
 or zF, FLAG_P
..@1872.cpi_zero:

 xor dh, dh

 sub dword [_z80_ICount], 16
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 734+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 735+0 raze.inc
ed_a9:
%line 736+1 raze.inc
 mov edi, ezHL
%line 736+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@1883.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@1883.finish

..@1883.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@1883.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]

 and zF, FLAG_C
 mov dh, zF
 cmp zA, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_H|FLAG_N
 or zF, dh

 dec zHL
 dec zBC
 jz ..@1882.cpd_zero
 or zF, FLAG_P
..@1882.cpd_zero:

 xor dh, dh

 sub dword [_z80_ICount], 16
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 737+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 738+0 raze.inc
ed_b1:
%line 739+1 raze.inc
 and zF, FLAG_C
%line 739+0 raze.inc
..@1892.cpir_loop:
 mov edi, ezHL
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@1893.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@1893.finish

..@1893.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@1893.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]

 inc zHL
 dec zBC
 jz ..@1892.cpir_end_bc

 inc zR
 cmp zA, dl
 je ..@1892.cpir_end_equal

 sub [_z80_ICount], dword 21
 ja ..@1892.cpir_loop


 mov dh, zF
 cmp zA, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_H|FLAG_N
 or zF, dh

 or zF, FLAG_P
 sub zPC, 2
 xor dh, dh
 jmp z80_finish

..@1892.cpir_end_equal:
 or zF, FLAG_P
..@1892.cpir_end_bc:
 mov dh, zF
 cmp zA, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_H|FLAG_N
 or zF, dh

 xor dh, dh
 sub dword [_z80_ICount], 16
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 740+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 741+0 raze.inc
ed_b9:
%line 742+1 raze.inc
 and zF, FLAG_C
%line 742+0 raze.inc
..@1903.cpdr_loop:
 mov edi, ezHL
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@1904.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@1904.finish

..@1904.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@1904.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]

 dec zHL
 dec zBC
 jz ..@1903.cpdr_end_bc

 inc zR
 cmp zA, dl
 je ..@1903.cpdr_end_equal

 sub [_z80_ICount], dword 21
 ja ..@1903.cpdr_loop


 mov dh, zF
 cmp zA, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_H|FLAG_N
 or zF, dh

 or zF, FLAG_P
 sub zPC, 2
 xor dh, dh
 jmp z80_finish

..@1903.cpdr_end_equal:
 or zF, FLAG_P
..@1903.cpdr_end_bc:
 mov dh, zF
 cmp zA, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_H|FLAG_N
 or zF, dh

 xor dh, dh
 sub dword [_z80_ICount], 16
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 743+1 raze.inc





times ($$-$) & ((4)-1) nop
%line 748+0 raze.inc
op_80:
%line 749+1 raze.inc
 add zA, zB
%line 749+0 raze.inc
 lahf
 jo ..@1915.set_overflow

 and zF, FLAG_S|FLAG_Z|FLAG_H|FLAG_C
 jmp ..@1915.finish

 ..@1915.set_overflow:
 and zF, FLAG_S|FLAG_Z|FLAG_H|FLAG_C
 or zF, FLAG_P
 ..@1915.finish:

 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 750+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 751+0 raze.inc
op_81:
%line 752+1 raze.inc
 add zA, zC
%line 752+0 raze.inc
 lahf
 jo ..@1923.set_overflow

 and zF, FLAG_S|FLAG_Z|FLAG_H|FLAG_C
 jmp ..@1923.finish

 ..@1923.set_overflow:
 and zF, FLAG_S|FLAG_Z|FLAG_H|FLAG_C
 or zF, FLAG_P
 ..@1923.finish:

 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 753+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 754+0 raze.inc
op_82:
%line 755+1 raze.inc
 add zA, zD
%line 755+0 raze.inc
 lahf
 jo ..@1931.set_overflow

 and zF, FLAG_S|FLAG_Z|FLAG_H|FLAG_C
 jmp ..@1931.finish

 ..@1931.set_overflow:
 and zF, FLAG_S|FLAG_Z|FLAG_H|FLAG_C
 or zF, FLAG_P
 ..@1931.finish:

 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 756+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 757+0 raze.inc
op_83:
%line 758+1 raze.inc
 add zA, zE
%line 758+0 raze.inc
 lahf
 jo ..@1939.set_overflow

 and zF, FLAG_S|FLAG_Z|FLAG_H|FLAG_C
 jmp ..@1939.finish

 ..@1939.set_overflow:
 and zF, FLAG_S|FLAG_Z|FLAG_H|FLAG_C
 or zF, FLAG_P
 ..@1939.finish:

 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 759+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 760+0 raze.inc
op_84:
%line 761+1 raze.inc
 add zA, zH
%line 761+0 raze.inc
 lahf
 jo ..@1947.set_overflow

 and zF, FLAG_S|FLAG_Z|FLAG_H|FLAG_C
 jmp ..@1947.finish

 ..@1947.set_overflow:
 and zF, FLAG_S|FLAG_Z|FLAG_H|FLAG_C
 or zF, FLAG_P
 ..@1947.finish:

 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 762+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 763+0 raze.inc
op_85:
%line 764+1 raze.inc
 add zA, zL
%line 764+0 raze.inc
 lahf
 jo ..@1955.set_overflow

 and zF, FLAG_S|FLAG_Z|FLAG_H|FLAG_C
 jmp ..@1955.finish

 ..@1955.set_overflow:
 and zF, FLAG_S|FLAG_Z|FLAG_H|FLAG_C
 or zF, FLAG_P
 ..@1955.finish:

 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 765+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 766+0 raze.inc
op_87:
%line 767+1 raze.inc
 add zA, zA
%line 767+0 raze.inc
 lahf
 jo ..@1963.set_overflow

 and zF, FLAG_S|FLAG_Z|FLAG_H|FLAG_C
 jmp ..@1963.finish

 ..@1963.set_overflow:
 and zF, FLAG_S|FLAG_Z|FLAG_H|FLAG_C
 or zF, FLAG_P
 ..@1963.finish:

 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 768+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 769+0 raze.inc
dd_84:
%line 770+1 raze.inc
 add zA, zIXh
%line 770+0 raze.inc
 lahf
 jo ..@1971.set_overflow

 and zF, FLAG_S|FLAG_Z|FLAG_H|FLAG_C
 jmp ..@1971.finish

 ..@1971.set_overflow:
 and zF, FLAG_S|FLAG_Z|FLAG_H|FLAG_C
 or zF, FLAG_P
 ..@1971.finish:

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 771+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 772+0 raze.inc
dd_85:
%line 773+1 raze.inc
 add zA, zIXl
%line 773+0 raze.inc
 lahf
 jo ..@1979.set_overflow

 and zF, FLAG_S|FLAG_Z|FLAG_H|FLAG_C
 jmp ..@1979.finish

 ..@1979.set_overflow:
 and zF, FLAG_S|FLAG_Z|FLAG_H|FLAG_C
 or zF, FLAG_P
 ..@1979.finish:

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 774+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 775+0 raze.inc
fd_84:
%line 776+1 raze.inc
 add zA, zIYh
%line 776+0 raze.inc
 lahf
 jo ..@1987.set_overflow

 and zF, FLAG_S|FLAG_Z|FLAG_H|FLAG_C
 jmp ..@1987.finish

 ..@1987.set_overflow:
 and zF, FLAG_S|FLAG_Z|FLAG_H|FLAG_C
 or zF, FLAG_P
 ..@1987.finish:

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 777+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 778+0 raze.inc
fd_85:
%line 779+1 raze.inc
 add zA, zIYl
%line 779+0 raze.inc
 lahf
 jo ..@1995.set_overflow

 and zF, FLAG_S|FLAG_Z|FLAG_H|FLAG_C
 jmp ..@1995.finish

 ..@1995.set_overflow:
 and zF, FLAG_S|FLAG_Z|FLAG_H|FLAG_C
 or zF, FLAG_P
 ..@1995.finish:

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 780+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 781+0 raze.inc
op_86:
%line 782+1 raze.inc
 mov edi, ezHL
%line 782+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@2003.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@2003.finish

..@2003.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@2003.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 add zA, dl
 lahf
 jo ..@2006.set_overflow

 and zF, FLAG_S|FLAG_Z|FLAG_H|FLAG_C
 jmp ..@2006.finish

 ..@2006.set_overflow:
 and zF, FLAG_S|FLAG_Z|FLAG_H|FLAG_C
 or zF, FLAG_P
 ..@2006.finish:

 sub dword [_z80_ICount], 7
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 783+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 784+0 raze.inc
op_c6:
%line 785+1 raze.inc
 mov edx, ezPC
%line 785+0 raze.inc
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 add zA, dl
 lahf
 jo ..@2015.set_overflow

 and zF, FLAG_S|FLAG_Z|FLAG_H|FLAG_C
 jmp ..@2015.finish

 ..@2015.set_overflow:
 and zF, FLAG_S|FLAG_Z|FLAG_H|FLAG_C
 or zF, FLAG_P
 ..@2015.finish:

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 786+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 787+0 raze.inc
dd_86:
%line 788+1 raze.inc
 mov edx, ezPC
%line 788+0 raze.inc
 shr edx, 8
 mov edx, [_z80_Fetch+edx*4]

 movsx di, [edx+ezPC]
 inc zPC
 xor edx, edx
 add di, zIX
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@2024.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@2024.finish

..@2024.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@2024.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 add zA, dl
 lahf
 jo ..@2027.set_overflow

 and zF, FLAG_S|FLAG_Z|FLAG_H|FLAG_C
 jmp ..@2027.finish

 ..@2027.set_overflow:
 and zF, FLAG_S|FLAG_Z|FLAG_H|FLAG_C
 or zF, FLAG_P
 ..@2027.finish:

 sub dword [_z80_ICount], 19
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 789+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 790+0 raze.inc
fd_86:
%line 791+1 raze.inc
 mov edx, ezPC
%line 791+0 raze.inc
 shr edx, 8
 mov edx, [_z80_Fetch+edx*4]

 movsx di, [edx+ezPC]
 inc zPC
 xor edx, edx
 add di, zIY
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@2036.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@2036.finish

..@2036.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@2036.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 add zA, dl
 lahf
 jo ..@2039.set_overflow

 and zF, FLAG_S|FLAG_Z|FLAG_H|FLAG_C
 jmp ..@2039.finish

 ..@2039.set_overflow:
 and zF, FLAG_S|FLAG_Z|FLAG_H|FLAG_C
 or zF, FLAG_P
 ..@2039.finish:

 sub dword [_z80_ICount], 19
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 792+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 793+0 raze.inc
op_88:
%line 794+1 raze.inc
 ror zF, 1
%line 794+0 raze.inc
 adc zA, zB
 lahf
 jo ..@2047.set_overflow

 and zF, FLAG_S|FLAG_Z|FLAG_H|FLAG_C
 jmp ..@2047.finish

 ..@2047.set_overflow:
 and zF, FLAG_S|FLAG_Z|FLAG_H|FLAG_C
 or zF, FLAG_P
 ..@2047.finish:

 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 795+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 796+0 raze.inc
op_89:
%line 797+1 raze.inc
 ror zF, 1
%line 797+0 raze.inc
 adc zA, zC
 lahf
 jo ..@2055.set_overflow

 and zF, FLAG_S|FLAG_Z|FLAG_H|FLAG_C
 jmp ..@2055.finish

 ..@2055.set_overflow:
 and zF, FLAG_S|FLAG_Z|FLAG_H|FLAG_C
 or zF, FLAG_P
 ..@2055.finish:

 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 798+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 799+0 raze.inc
op_8a:
%line 800+1 raze.inc
 ror zF, 1
%line 800+0 raze.inc
 adc zA, zD
 lahf
 jo ..@2063.set_overflow

 and zF, FLAG_S|FLAG_Z|FLAG_H|FLAG_C
 jmp ..@2063.finish

 ..@2063.set_overflow:
 and zF, FLAG_S|FLAG_Z|FLAG_H|FLAG_C
 or zF, FLAG_P
 ..@2063.finish:

 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 801+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 802+0 raze.inc
op_8b:
%line 803+1 raze.inc
 ror zF, 1
%line 803+0 raze.inc
 adc zA, zE
 lahf
 jo ..@2071.set_overflow

 and zF, FLAG_S|FLAG_Z|FLAG_H|FLAG_C
 jmp ..@2071.finish

 ..@2071.set_overflow:
 and zF, FLAG_S|FLAG_Z|FLAG_H|FLAG_C
 or zF, FLAG_P
 ..@2071.finish:

 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 804+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 805+0 raze.inc
op_8c:
%line 806+1 raze.inc
 ror zF, 1
%line 806+0 raze.inc
 adc zA, zH
 lahf
 jo ..@2079.set_overflow

 and zF, FLAG_S|FLAG_Z|FLAG_H|FLAG_C
 jmp ..@2079.finish

 ..@2079.set_overflow:
 and zF, FLAG_S|FLAG_Z|FLAG_H|FLAG_C
 or zF, FLAG_P
 ..@2079.finish:

 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 807+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 808+0 raze.inc
op_8d:
%line 809+1 raze.inc
 ror zF, 1
%line 809+0 raze.inc
 adc zA, zL
 lahf
 jo ..@2087.set_overflow

 and zF, FLAG_S|FLAG_Z|FLAG_H|FLAG_C
 jmp ..@2087.finish

 ..@2087.set_overflow:
 and zF, FLAG_S|FLAG_Z|FLAG_H|FLAG_C
 or zF, FLAG_P
 ..@2087.finish:

 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 810+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 811+0 raze.inc
op_8f:
%line 812+1 raze.inc
 ror zF, 1
%line 812+0 raze.inc
 adc zA, zA
 lahf
 jo ..@2095.set_overflow

 and zF, FLAG_S|FLAG_Z|FLAG_H|FLAG_C
 jmp ..@2095.finish

 ..@2095.set_overflow:
 and zF, FLAG_S|FLAG_Z|FLAG_H|FLAG_C
 or zF, FLAG_P
 ..@2095.finish:

 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 813+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 814+0 raze.inc
dd_8c:
%line 815+1 raze.inc
 ror zF, 1
%line 815+0 raze.inc
 adc zA, zIXh
 lahf
 jo ..@2103.set_overflow

 and zF, FLAG_S|FLAG_Z|FLAG_H|FLAG_C
 jmp ..@2103.finish

 ..@2103.set_overflow:
 and zF, FLAG_S|FLAG_Z|FLAG_H|FLAG_C
 or zF, FLAG_P
 ..@2103.finish:

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 816+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 817+0 raze.inc
dd_8d:
%line 818+1 raze.inc
 ror zF, 1
%line 818+0 raze.inc
 adc zA, zIXl
 lahf
 jo ..@2111.set_overflow

 and zF, FLAG_S|FLAG_Z|FLAG_H|FLAG_C
 jmp ..@2111.finish

 ..@2111.set_overflow:
 and zF, FLAG_S|FLAG_Z|FLAG_H|FLAG_C
 or zF, FLAG_P
 ..@2111.finish:

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 819+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 820+0 raze.inc
fd_8c:
%line 821+1 raze.inc
 ror zF, 1
%line 821+0 raze.inc
 adc zA, zIYh
 lahf
 jo ..@2119.set_overflow

 and zF, FLAG_S|FLAG_Z|FLAG_H|FLAG_C
 jmp ..@2119.finish

 ..@2119.set_overflow:
 and zF, FLAG_S|FLAG_Z|FLAG_H|FLAG_C
 or zF, FLAG_P
 ..@2119.finish:

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 822+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 823+0 raze.inc
fd_8d:
%line 824+1 raze.inc
 ror zF, 1
%line 824+0 raze.inc
 adc zA, zIYl
 lahf
 jo ..@2127.set_overflow

 and zF, FLAG_S|FLAG_Z|FLAG_H|FLAG_C
 jmp ..@2127.finish

 ..@2127.set_overflow:
 and zF, FLAG_S|FLAG_Z|FLAG_H|FLAG_C
 or zF, FLAG_P
 ..@2127.finish:

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 825+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 826+0 raze.inc
op_8e:
%line 827+1 raze.inc
 mov edi, ezHL
%line 827+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@2135.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@2135.finish

..@2135.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@2135.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 ror zF, 1
 adc zA, dl
 lahf
 jo ..@2138.set_overflow

 and zF, FLAG_S|FLAG_Z|FLAG_H|FLAG_C
 jmp ..@2138.finish

 ..@2138.set_overflow:
 and zF, FLAG_S|FLAG_Z|FLAG_H|FLAG_C
 or zF, FLAG_P
 ..@2138.finish:

 sub dword [_z80_ICount], 7
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 828+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 829+0 raze.inc
op_ce:
%line 830+1 raze.inc
 mov edx, ezPC
%line 830+0 raze.inc
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 ror zF, 1
 adc zA, dl
 lahf
 jo ..@2147.set_overflow

 and zF, FLAG_S|FLAG_Z|FLAG_H|FLAG_C
 jmp ..@2147.finish

 ..@2147.set_overflow:
 and zF, FLAG_S|FLAG_Z|FLAG_H|FLAG_C
 or zF, FLAG_P
 ..@2147.finish:

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 831+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 832+0 raze.inc
dd_8e:
%line 833+1 raze.inc
 mov edx, ezPC
%line 833+0 raze.inc
 shr edx, 8
 mov edx, [_z80_Fetch+edx*4]

 movsx di, [edx+ezPC]
 inc zPC
 xor edx, edx
 add di, zIX
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@2156.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@2156.finish

..@2156.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@2156.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 ror zF, 1
 adc zA, dl
 lahf
 jo ..@2159.set_overflow

 and zF, FLAG_S|FLAG_Z|FLAG_H|FLAG_C
 jmp ..@2159.finish

 ..@2159.set_overflow:
 and zF, FLAG_S|FLAG_Z|FLAG_H|FLAG_C
 or zF, FLAG_P
 ..@2159.finish:

 sub dword [_z80_ICount], 19
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 834+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 835+0 raze.inc
fd_8e:
%line 836+1 raze.inc
 mov edx, ezPC
%line 836+0 raze.inc
 shr edx, 8
 mov edx, [_z80_Fetch+edx*4]

 movsx di, [edx+ezPC]
 inc zPC
 xor edx, edx
 add di, zIY
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@2168.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@2168.finish

..@2168.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@2168.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 ror zF, 1
 adc zA, dl
 lahf
 jo ..@2171.set_overflow

 and zF, FLAG_S|FLAG_Z|FLAG_H|FLAG_C
 jmp ..@2171.finish

 ..@2171.set_overflow:
 and zF, FLAG_S|FLAG_Z|FLAG_H|FLAG_C
 or zF, FLAG_P
 ..@2171.finish:

 sub dword [_z80_ICount], 19
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 837+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 838+0 raze.inc
op_90:
%line 839+1 raze.inc
 sub zA, zB
%line 839+0 raze.inc
 lahf
 jo ..@2179.set_overflow

 and zF, FLAG_S|FLAG_Z|FLAG_H|FLAG_C|FLAG_N
 jmp ..@2179.finish

 ..@2179.set_overflow:
 or zF, FLAG_P
 ..@2179.finish:

 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 840+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 841+0 raze.inc
op_91:
%line 842+1 raze.inc
 sub zA, zC
%line 842+0 raze.inc
 lahf
 jo ..@2187.set_overflow

 and zF, FLAG_S|FLAG_Z|FLAG_H|FLAG_C|FLAG_N
 jmp ..@2187.finish

 ..@2187.set_overflow:
 or zF, FLAG_P
 ..@2187.finish:

 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 843+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 844+0 raze.inc
op_92:
%line 845+1 raze.inc
 sub zA, zD
%line 845+0 raze.inc
 lahf
 jo ..@2195.set_overflow

 and zF, FLAG_S|FLAG_Z|FLAG_H|FLAG_C|FLAG_N
 jmp ..@2195.finish

 ..@2195.set_overflow:
 or zF, FLAG_P
 ..@2195.finish:

 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 846+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 847+0 raze.inc
op_93:
%line 848+1 raze.inc
 sub zA, zE
%line 848+0 raze.inc
 lahf
 jo ..@2203.set_overflow

 and zF, FLAG_S|FLAG_Z|FLAG_H|FLAG_C|FLAG_N
 jmp ..@2203.finish

 ..@2203.set_overflow:
 or zF, FLAG_P
 ..@2203.finish:

 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 849+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 850+0 raze.inc
op_94:
%line 851+1 raze.inc
 sub zA, zH
%line 851+0 raze.inc
 lahf
 jo ..@2211.set_overflow

 and zF, FLAG_S|FLAG_Z|FLAG_H|FLAG_C|FLAG_N
 jmp ..@2211.finish

 ..@2211.set_overflow:
 or zF, FLAG_P
 ..@2211.finish:

 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 852+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 853+0 raze.inc
op_95:
%line 854+1 raze.inc
 sub zA, zL
%line 854+0 raze.inc
 lahf
 jo ..@2219.set_overflow

 and zF, FLAG_S|FLAG_Z|FLAG_H|FLAG_C|FLAG_N
 jmp ..@2219.finish

 ..@2219.set_overflow:
 or zF, FLAG_P
 ..@2219.finish:

 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 855+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 856+0 raze.inc
op_97:
%line 857+1 raze.inc
 sub zA, zA
%line 857+0 raze.inc
 lahf
 jo ..@2227.set_overflow

 and zF, FLAG_S|FLAG_Z|FLAG_H|FLAG_C|FLAG_N
 jmp ..@2227.finish

 ..@2227.set_overflow:
 or zF, FLAG_P
 ..@2227.finish:

 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 858+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 859+0 raze.inc
dd_94:
%line 860+1 raze.inc
 sub zA, zIXh
%line 860+0 raze.inc
 lahf
 jo ..@2235.set_overflow

 and zF, FLAG_S|FLAG_Z|FLAG_H|FLAG_C|FLAG_N
 jmp ..@2235.finish

 ..@2235.set_overflow:
 or zF, FLAG_P
 ..@2235.finish:

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 861+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 862+0 raze.inc
dd_95:
%line 863+1 raze.inc
 sub zA, zIXl
%line 863+0 raze.inc
 lahf
 jo ..@2243.set_overflow

 and zF, FLAG_S|FLAG_Z|FLAG_H|FLAG_C|FLAG_N
 jmp ..@2243.finish

 ..@2243.set_overflow:
 or zF, FLAG_P
 ..@2243.finish:

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 864+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 865+0 raze.inc
fd_94:
%line 866+1 raze.inc
 sub zA, zIYh
%line 866+0 raze.inc
 lahf
 jo ..@2251.set_overflow

 and zF, FLAG_S|FLAG_Z|FLAG_H|FLAG_C|FLAG_N
 jmp ..@2251.finish

 ..@2251.set_overflow:
 or zF, FLAG_P
 ..@2251.finish:

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 867+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 868+0 raze.inc
fd_95:
%line 869+1 raze.inc
 sub zA, zIYl
%line 869+0 raze.inc
 lahf
 jo ..@2259.set_overflow

 and zF, FLAG_S|FLAG_Z|FLAG_H|FLAG_C|FLAG_N
 jmp ..@2259.finish

 ..@2259.set_overflow:
 or zF, FLAG_P
 ..@2259.finish:

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 870+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 871+0 raze.inc
op_96:
%line 872+1 raze.inc
 mov edi, ezHL
%line 872+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@2267.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@2267.finish

..@2267.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@2267.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 sub zA, dl
 lahf
 jo ..@2270.set_overflow

 and zF, FLAG_S|FLAG_Z|FLAG_H|FLAG_C|FLAG_N
 jmp ..@2270.finish

 ..@2270.set_overflow:
 or zF, FLAG_P
 ..@2270.finish:

 sub dword [_z80_ICount], 7
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 873+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 874+0 raze.inc
op_d6:
%line 875+1 raze.inc
 mov edx, ezPC
%line 875+0 raze.inc
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 sub zA, dl
 lahf
 jo ..@2279.set_overflow

 and zF, FLAG_S|FLAG_Z|FLAG_H|FLAG_C|FLAG_N
 jmp ..@2279.finish

 ..@2279.set_overflow:
 or zF, FLAG_P
 ..@2279.finish:

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 876+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 877+0 raze.inc
dd_96:
%line 878+1 raze.inc
 mov edx, ezPC
%line 878+0 raze.inc
 shr edx, 8
 mov edx, [_z80_Fetch+edx*4]

 movsx di, [edx+ezPC]
 inc zPC
 xor edx, edx
 add di, zIX
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@2288.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@2288.finish

..@2288.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@2288.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 sub zA, dl
 lahf
 jo ..@2291.set_overflow

 and zF, FLAG_S|FLAG_Z|FLAG_H|FLAG_C|FLAG_N
 jmp ..@2291.finish

 ..@2291.set_overflow:
 or zF, FLAG_P
 ..@2291.finish:

 sub dword [_z80_ICount], 19
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 879+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 880+0 raze.inc
fd_96:
%line 881+1 raze.inc
 mov edx, ezPC
%line 881+0 raze.inc
 shr edx, 8
 mov edx, [_z80_Fetch+edx*4]

 movsx di, [edx+ezPC]
 inc zPC
 xor edx, edx
 add di, zIY
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@2300.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@2300.finish

..@2300.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@2300.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 sub zA, dl
 lahf
 jo ..@2303.set_overflow

 and zF, FLAG_S|FLAG_Z|FLAG_H|FLAG_C|FLAG_N
 jmp ..@2303.finish

 ..@2303.set_overflow:
 or zF, FLAG_P
 ..@2303.finish:

 sub dword [_z80_ICount], 19
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 882+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 883+0 raze.inc
op_98:
%line 884+1 raze.inc
 ror zF, 1
%line 884+0 raze.inc
 sbb zA, zB
 lahf
 jo ..@2311.set_overflow

 and zF, FLAG_S|FLAG_Z|FLAG_H|FLAG_C|FLAG_N
 jmp ..@2311.finish

 ..@2311.set_overflow:
 or zF, FLAG_P
 ..@2311.finish:

 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 885+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 886+0 raze.inc
op_99:
%line 887+1 raze.inc
 ror zF, 1
%line 887+0 raze.inc
 sbb zA, zC
 lahf
 jo ..@2319.set_overflow

 and zF, FLAG_S|FLAG_Z|FLAG_H|FLAG_C|FLAG_N
 jmp ..@2319.finish

 ..@2319.set_overflow:
 or zF, FLAG_P
 ..@2319.finish:

 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 888+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 889+0 raze.inc
op_9a:
%line 890+1 raze.inc
 ror zF, 1
%line 890+0 raze.inc
 sbb zA, zD
 lahf
 jo ..@2327.set_overflow

 and zF, FLAG_S|FLAG_Z|FLAG_H|FLAG_C|FLAG_N
 jmp ..@2327.finish

 ..@2327.set_overflow:
 or zF, FLAG_P
 ..@2327.finish:

 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 891+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 892+0 raze.inc
op_9b:
%line 893+1 raze.inc
 ror zF, 1
%line 893+0 raze.inc
 sbb zA, zE
 lahf
 jo ..@2335.set_overflow

 and zF, FLAG_S|FLAG_Z|FLAG_H|FLAG_C|FLAG_N
 jmp ..@2335.finish

 ..@2335.set_overflow:
 or zF, FLAG_P
 ..@2335.finish:

 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 894+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 895+0 raze.inc
op_9c:
%line 896+1 raze.inc
 ror zF, 1
%line 896+0 raze.inc
 sbb zA, zH
 lahf
 jo ..@2343.set_overflow

 and zF, FLAG_S|FLAG_Z|FLAG_H|FLAG_C|FLAG_N
 jmp ..@2343.finish

 ..@2343.set_overflow:
 or zF, FLAG_P
 ..@2343.finish:

 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 897+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 898+0 raze.inc
op_9d:
%line 899+1 raze.inc
 ror zF, 1
%line 899+0 raze.inc
 sbb zA, zL
 lahf
 jo ..@2351.set_overflow

 and zF, FLAG_S|FLAG_Z|FLAG_H|FLAG_C|FLAG_N
 jmp ..@2351.finish

 ..@2351.set_overflow:
 or zF, FLAG_P
 ..@2351.finish:

 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 900+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 901+0 raze.inc
op_9f:
%line 902+1 raze.inc
 ror zF, 1
%line 902+0 raze.inc
 sbb zA, zA
 lahf
 jo ..@2359.set_overflow

 and zF, FLAG_S|FLAG_Z|FLAG_H|FLAG_C|FLAG_N
 jmp ..@2359.finish

 ..@2359.set_overflow:
 or zF, FLAG_P
 ..@2359.finish:

 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 903+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 904+0 raze.inc
dd_9c:
%line 905+1 raze.inc
 ror zF, 1
%line 905+0 raze.inc
 sbb zA, zIXh
 lahf
 jo ..@2367.set_overflow

 and zF, FLAG_S|FLAG_Z|FLAG_H|FLAG_C|FLAG_N
 jmp ..@2367.finish

 ..@2367.set_overflow:
 or zF, FLAG_P
 ..@2367.finish:

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 906+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 907+0 raze.inc
dd_9d:
%line 908+1 raze.inc
 ror zF, 1
%line 908+0 raze.inc
 sbb zA, zIXl
 lahf
 jo ..@2375.set_overflow

 and zF, FLAG_S|FLAG_Z|FLAG_H|FLAG_C|FLAG_N
 jmp ..@2375.finish

 ..@2375.set_overflow:
 or zF, FLAG_P
 ..@2375.finish:

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 909+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 910+0 raze.inc
fd_9c:
%line 911+1 raze.inc
 ror zF, 1
%line 911+0 raze.inc
 sbb zA, zIYh
 lahf
 jo ..@2383.set_overflow

 and zF, FLAG_S|FLAG_Z|FLAG_H|FLAG_C|FLAG_N
 jmp ..@2383.finish

 ..@2383.set_overflow:
 or zF, FLAG_P
 ..@2383.finish:

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 912+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 913+0 raze.inc
fd_9d:
%line 914+1 raze.inc
 ror zF, 1
%line 914+0 raze.inc
 sbb zA, zIYl
 lahf
 jo ..@2391.set_overflow

 and zF, FLAG_S|FLAG_Z|FLAG_H|FLAG_C|FLAG_N
 jmp ..@2391.finish

 ..@2391.set_overflow:
 or zF, FLAG_P
 ..@2391.finish:

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 915+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 916+0 raze.inc
op_9e:
%line 917+1 raze.inc
 mov edi, ezHL
%line 917+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@2399.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@2399.finish

..@2399.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@2399.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 ror zF, 1
 sbb zA, dl
 lahf
 jo ..@2402.set_overflow

 and zF, FLAG_S|FLAG_Z|FLAG_H|FLAG_C|FLAG_N
 jmp ..@2402.finish

 ..@2402.set_overflow:
 or zF, FLAG_P
 ..@2402.finish:

 sub dword [_z80_ICount], 7
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 918+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 919+0 raze.inc
op_de:
%line 920+1 raze.inc
 mov edx, ezPC
%line 920+0 raze.inc
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 ror zF, 1
 sbb zA, dl
 lahf
 jo ..@2411.set_overflow

 and zF, FLAG_S|FLAG_Z|FLAG_H|FLAG_C|FLAG_N
 jmp ..@2411.finish

 ..@2411.set_overflow:
 or zF, FLAG_P
 ..@2411.finish:

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 921+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 922+0 raze.inc
dd_9e:
%line 923+1 raze.inc
 mov edx, ezPC
%line 923+0 raze.inc
 shr edx, 8
 mov edx, [_z80_Fetch+edx*4]

 movsx di, [edx+ezPC]
 inc zPC
 xor edx, edx
 add di, zIX
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@2420.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@2420.finish

..@2420.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@2420.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 ror zF, 1
 sbb zA, dl
 lahf
 jo ..@2423.set_overflow

 and zF, FLAG_S|FLAG_Z|FLAG_H|FLAG_C|FLAG_N
 jmp ..@2423.finish

 ..@2423.set_overflow:
 or zF, FLAG_P
 ..@2423.finish:

 sub dword [_z80_ICount], 19
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 924+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 925+0 raze.inc
fd_9e:
%line 926+1 raze.inc
 mov edx, ezPC
%line 926+0 raze.inc
 shr edx, 8
 mov edx, [_z80_Fetch+edx*4]

 movsx di, [edx+ezPC]
 inc zPC
 xor edx, edx
 add di, zIY
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@2432.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@2432.finish

..@2432.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@2432.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 ror zF, 1
 sbb zA, dl
 lahf
 jo ..@2435.set_overflow

 and zF, FLAG_S|FLAG_Z|FLAG_H|FLAG_C|FLAG_N
 jmp ..@2435.finish

 ..@2435.set_overflow:
 or zF, FLAG_P
 ..@2435.finish:

 sub dword [_z80_ICount], 19
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 927+1 raze.inc





times ($$-$) & ((4)-1) nop
%line 932+0 raze.inc
op_a0:
%line 933+1 raze.inc
 and zA, zB
%line 933+0 raze.inc
 lahf
 and zF, ~(FLAG_N|FLAG_C)
 or zF, FLAG_H

 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 934+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 935+0 raze.inc
op_a1:
%line 936+1 raze.inc
 and zA, zC
%line 936+0 raze.inc
 lahf
 and zF, ~(FLAG_N|FLAG_C)
 or zF, FLAG_H

 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 937+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 938+0 raze.inc
op_a2:
%line 939+1 raze.inc
 and zA, zD
%line 939+0 raze.inc
 lahf
 and zF, ~(FLAG_N|FLAG_C)
 or zF, FLAG_H

 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 940+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 941+0 raze.inc
op_a3:
%line 942+1 raze.inc
 and zA, zE
%line 942+0 raze.inc
 lahf
 and zF, ~(FLAG_N|FLAG_C)
 or zF, FLAG_H

 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 943+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 944+0 raze.inc
op_a4:
%line 945+1 raze.inc
 and zA, zH
%line 945+0 raze.inc
 lahf
 and zF, ~(FLAG_N|FLAG_C)
 or zF, FLAG_H

 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 946+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 947+0 raze.inc
op_a5:
%line 948+1 raze.inc
 and zA, zL
%line 948+0 raze.inc
 lahf
 and zF, ~(FLAG_N|FLAG_C)
 or zF, FLAG_H

 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 949+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 950+0 raze.inc
op_a7:
%line 951+1 raze.inc
 and zA, zA
%line 951+0 raze.inc
 lahf
 and zF, ~(FLAG_N|FLAG_C)
 or zF, FLAG_H

 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 952+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 953+0 raze.inc
dd_a4:
%line 954+1 raze.inc
 and zA, zIXh
%line 954+0 raze.inc
 lahf
 and zF, ~(FLAG_N|FLAG_C)
 or zF, FLAG_H

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 955+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 956+0 raze.inc
dd_a5:
%line 957+1 raze.inc
 and zA, zIXl
%line 957+0 raze.inc
 lahf
 and zF, ~(FLAG_N|FLAG_C)
 or zF, FLAG_H

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 958+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 959+0 raze.inc
fd_a4:
%line 960+1 raze.inc
 and zA, zIYh
%line 960+0 raze.inc
 lahf
 and zF, ~(FLAG_N|FLAG_C)
 or zF, FLAG_H

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 961+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 962+0 raze.inc
fd_a5:
%line 963+1 raze.inc
 and zA, zIYl
%line 963+0 raze.inc
 lahf
 and zF, ~(FLAG_N|FLAG_C)
 or zF, FLAG_H

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 964+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 965+0 raze.inc
op_e6:
%line 966+1 raze.inc
 mov edx, ezPC
%line 966+0 raze.inc
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 and zA, dl
 lahf
 and zF, ~(FLAG_N|FLAG_C)
 or zF, FLAG_H

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 967+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 968+0 raze.inc
op_a6:
%line 969+1 raze.inc
 mov edi, ezHL
%line 969+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@2540.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@2540.finish

..@2540.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@2540.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and zA, dl
 lahf
 and zF, ~(FLAG_N|FLAG_C)
 or zF, FLAG_H

 sub dword [_z80_ICount], 7
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 970+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 971+0 raze.inc
dd_a6:
%line 972+1 raze.inc
 mov edx, ezPC
%line 972+0 raze.inc
 shr edx, 8
 mov edx, [_z80_Fetch+edx*4]

 movsx di, [edx+ezPC]
 inc zPC
 xor edx, edx
 add di, zIX
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@2552.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@2552.finish

..@2552.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@2552.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and zA, dl
 lahf
 and zF, ~(FLAG_N|FLAG_C)
 or zF, FLAG_H

 sub dword [_z80_ICount], 19
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 973+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 974+0 raze.inc
fd_a6:
%line 975+1 raze.inc
 mov edx, ezPC
%line 975+0 raze.inc
 shr edx, 8
 mov edx, [_z80_Fetch+edx*4]

 movsx di, [edx+ezPC]
 inc zPC
 xor edx, edx
 add di, zIY
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@2564.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@2564.finish

..@2564.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@2564.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and zA, dl
 lahf
 and zF, ~(FLAG_N|FLAG_C)
 or zF, FLAG_H

 sub dword [_z80_ICount], 19
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 976+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 977+0 raze.inc
op_a8:
%line 978+1 raze.inc
 xor zA, zB
%line 978+0 raze.inc
 lahf
 and zF, ~(FLAG_N|FLAG_C|FLAG_H)

 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 979+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 980+0 raze.inc
op_a9:
%line 981+1 raze.inc
 xor zA, zC
%line 981+0 raze.inc
 lahf
 and zF, ~(FLAG_N|FLAG_C|FLAG_H)

 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 982+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 983+0 raze.inc
op_aa:
%line 984+1 raze.inc
 xor zA, zD
%line 984+0 raze.inc
 lahf
 and zF, ~(FLAG_N|FLAG_C|FLAG_H)

 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 985+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 986+0 raze.inc
op_ab:
%line 987+1 raze.inc
 xor zA, zE
%line 987+0 raze.inc
 lahf
 and zF, ~(FLAG_N|FLAG_C|FLAG_H)

 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 988+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 989+0 raze.inc
op_ac:
%line 990+1 raze.inc
 xor zA, zH
%line 990+0 raze.inc
 lahf
 and zF, ~(FLAG_N|FLAG_C|FLAG_H)

 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 991+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 992+0 raze.inc
op_ad:
%line 993+1 raze.inc
 xor zA, zL
%line 993+0 raze.inc
 lahf
 and zF, ~(FLAG_N|FLAG_C|FLAG_H)

 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 994+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 995+0 raze.inc
op_af:
%line 996+1 raze.inc
 xor zA, zA
%line 996+0 raze.inc
 lahf
 and zF, ~(FLAG_N|FLAG_C|FLAG_H)

 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 997+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 998+0 raze.inc
dd_ac:
%line 999+1 raze.inc
 xor zA, zIXh
%line 999+0 raze.inc
 lahf
 and zF, ~(FLAG_N|FLAG_C|FLAG_H)

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1000+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1001+0 raze.inc
dd_ad:
%line 1002+1 raze.inc
 xor zA, zIXl
%line 1002+0 raze.inc
 lahf
 and zF, ~(FLAG_N|FLAG_C|FLAG_H)

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1003+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1004+0 raze.inc
fd_ac:
%line 1005+1 raze.inc
 xor zA, zIYh
%line 1005+0 raze.inc
 lahf
 and zF, ~(FLAG_N|FLAG_C|FLAG_H)

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1006+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1007+0 raze.inc
fd_ad:
%line 1008+1 raze.inc
 xor zA, zIYl
%line 1008+0 raze.inc
 lahf
 and zF, ~(FLAG_N|FLAG_C|FLAG_H)

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1009+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1010+0 raze.inc
op_ee:
%line 1011+1 raze.inc
 mov edx, ezPC
%line 1011+0 raze.inc
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 xor zA, dl
 lahf
 and zF, ~(FLAG_N|FLAG_C|FLAG_H)

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1012+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1013+0 raze.inc
op_ae:
%line 1014+1 raze.inc
 mov edi, ezHL
%line 1014+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@2672.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@2672.finish

..@2672.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@2672.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor zA, dl
 lahf
 and zF, ~(FLAG_N|FLAG_C|FLAG_H)

 sub dword [_z80_ICount], 7
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1015+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1016+0 raze.inc
dd_ae:
%line 1017+1 raze.inc
 mov edx, ezPC
%line 1017+0 raze.inc
 shr edx, 8
 mov edx, [_z80_Fetch+edx*4]

 movsx di, [edx+ezPC]
 inc zPC
 xor edx, edx
 add di, zIX
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@2684.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@2684.finish

..@2684.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@2684.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor zA, dl
 lahf
 and zF, ~(FLAG_N|FLAG_C|FLAG_H)

 sub dword [_z80_ICount], 19
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1018+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1019+0 raze.inc
fd_ae:
%line 1020+1 raze.inc
 mov edx, ezPC
%line 1020+0 raze.inc
 shr edx, 8
 mov edx, [_z80_Fetch+edx*4]

 movsx di, [edx+ezPC]
 inc zPC
 xor edx, edx
 add di, zIY
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@2696.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@2696.finish

..@2696.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@2696.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor zA, dl
 lahf
 and zF, ~(FLAG_N|FLAG_C|FLAG_H)

 sub dword [_z80_ICount], 19
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1021+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1022+0 raze.inc
op_b0:
%line 1023+1 raze.inc
 or zA, zB
%line 1023+0 raze.inc
 lahf
 and zF, ~(FLAG_N|FLAG_C|FLAG_H)

 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1024+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1025+0 raze.inc
op_b1:
%line 1026+1 raze.inc
 or zA, zC
%line 1026+0 raze.inc
 lahf
 and zF, ~(FLAG_N|FLAG_C|FLAG_H)

 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1027+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1028+0 raze.inc
op_b2:
%line 1029+1 raze.inc
 or zA, zD
%line 1029+0 raze.inc
 lahf
 and zF, ~(FLAG_N|FLAG_C|FLAG_H)

 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1030+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1031+0 raze.inc
op_b3:
%line 1032+1 raze.inc
 or zA, zE
%line 1032+0 raze.inc
 lahf
 and zF, ~(FLAG_N|FLAG_C|FLAG_H)

 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1033+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1034+0 raze.inc
op_b4:
%line 1035+1 raze.inc
 or zA, zH
%line 1035+0 raze.inc
 lahf
 and zF, ~(FLAG_N|FLAG_C|FLAG_H)

 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1036+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1037+0 raze.inc
op_b5:
%line 1038+1 raze.inc
 or zA, zL
%line 1038+0 raze.inc
 lahf
 and zF, ~(FLAG_N|FLAG_C|FLAG_H)

 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1039+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1040+0 raze.inc
op_b7:
%line 1041+1 raze.inc
 or zA, zA
%line 1041+0 raze.inc
 lahf
 and zF, ~(FLAG_N|FLAG_C|FLAG_H)

 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1042+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1043+0 raze.inc
dd_b4:
%line 1044+1 raze.inc
 or zA, zIXh
%line 1044+0 raze.inc
 lahf
 and zF, ~(FLAG_N|FLAG_C|FLAG_H)

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1045+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1046+0 raze.inc
dd_b5:
%line 1047+1 raze.inc
 or zA, zIXl
%line 1047+0 raze.inc
 lahf
 and zF, ~(FLAG_N|FLAG_C|FLAG_H)

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1048+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1049+0 raze.inc
fd_b4:
%line 1050+1 raze.inc
 or zA, zIYh
%line 1050+0 raze.inc
 lahf
 and zF, ~(FLAG_N|FLAG_C|FLAG_H)

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1051+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1052+0 raze.inc
fd_b5:
%line 1053+1 raze.inc
 or zA, zIYl
%line 1053+0 raze.inc
 lahf
 and zF, ~(FLAG_N|FLAG_C|FLAG_H)

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1054+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1055+0 raze.inc
op_f6:
%line 1056+1 raze.inc
 mov edx, ezPC
%line 1056+0 raze.inc
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 or zA, dl
 lahf
 and zF, ~(FLAG_N|FLAG_C|FLAG_H)

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1057+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1058+0 raze.inc
op_b6:
%line 1059+1 raze.inc
 mov edi, ezHL
%line 1059+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@2804.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@2804.finish

..@2804.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@2804.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 or zA, dl
 lahf
 and zF, ~(FLAG_N|FLAG_C|FLAG_H)

 sub dword [_z80_ICount], 7
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1060+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1061+0 raze.inc
dd_b6:
%line 1062+1 raze.inc
 mov edx, ezPC
%line 1062+0 raze.inc
 shr edx, 8
 mov edx, [_z80_Fetch+edx*4]

 movsx di, [edx+ezPC]
 inc zPC
 xor edx, edx
 add di, zIX
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@2816.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@2816.finish

..@2816.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@2816.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 or zA, dl
 lahf
 and zF, ~(FLAG_N|FLAG_C|FLAG_H)

 sub dword [_z80_ICount], 19
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1063+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1064+0 raze.inc
fd_b6:
%line 1065+1 raze.inc
 mov edx, ezPC
%line 1065+0 raze.inc
 shr edx, 8
 mov edx, [_z80_Fetch+edx*4]

 movsx di, [edx+ezPC]
 inc zPC
 xor edx, edx
 add di, zIY
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@2828.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@2828.finish

..@2828.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@2828.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 or zA, dl
 lahf
 and zF, ~(FLAG_N|FLAG_C|FLAG_H)

 sub dword [_z80_ICount], 19
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1066+1 raze.inc





times ($$-$) & ((4)-1) nop
%line 1071+0 raze.inc
op_b8:
%line 1072+1 raze.inc
 cmp zA, zB
%line 1072+0 raze.inc
 lahf
 jo ..@2839.overflow

 and zF, ~FLAG_P
 or zF, FLAG_N
 jmp ..@2839.finish

..@2839.overflow:
 or zF, FLAG_P|FLAG_N
..@2839.finish:

 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1073+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1074+0 raze.inc
op_b9:
%line 1075+1 raze.inc
 cmp zA, zC
%line 1075+0 raze.inc
 lahf
 jo ..@2847.overflow

 and zF, ~FLAG_P
 or zF, FLAG_N
 jmp ..@2847.finish

..@2847.overflow:
 or zF, FLAG_P|FLAG_N
..@2847.finish:

 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1076+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1077+0 raze.inc
op_ba:
%line 1078+1 raze.inc
 cmp zA, zD
%line 1078+0 raze.inc
 lahf
 jo ..@2855.overflow

 and zF, ~FLAG_P
 or zF, FLAG_N
 jmp ..@2855.finish

..@2855.overflow:
 or zF, FLAG_P|FLAG_N
..@2855.finish:

 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1079+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1080+0 raze.inc
op_bb:
%line 1081+1 raze.inc
 cmp zA, zE
%line 1081+0 raze.inc
 lahf
 jo ..@2863.overflow

 and zF, ~FLAG_P
 or zF, FLAG_N
 jmp ..@2863.finish

..@2863.overflow:
 or zF, FLAG_P|FLAG_N
..@2863.finish:

 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1082+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1083+0 raze.inc
op_bc:
%line 1084+1 raze.inc
 cmp zA, zH
%line 1084+0 raze.inc
 lahf
 jo ..@2871.overflow

 and zF, ~FLAG_P
 or zF, FLAG_N
 jmp ..@2871.finish

..@2871.overflow:
 or zF, FLAG_P|FLAG_N
..@2871.finish:

 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1085+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1086+0 raze.inc
op_bd:
%line 1087+1 raze.inc
 cmp zA, zL
%line 1087+0 raze.inc
 lahf
 jo ..@2879.overflow

 and zF, ~FLAG_P
 or zF, FLAG_N
 jmp ..@2879.finish

..@2879.overflow:
 or zF, FLAG_P|FLAG_N
..@2879.finish:

 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1088+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1089+0 raze.inc
op_bf:
%line 1090+1 raze.inc
 cmp zA, zA
%line 1090+0 raze.inc
 lahf
 jo ..@2887.overflow

 and zF, ~FLAG_P
 or zF, FLAG_N
 jmp ..@2887.finish

..@2887.overflow:
 or zF, FLAG_P|FLAG_N
..@2887.finish:

 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1091+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1092+0 raze.inc
dd_bc:
%line 1093+1 raze.inc
 cmp zA, zIXh
%line 1093+0 raze.inc
 lahf
 jo ..@2895.overflow

 and zF, ~FLAG_P
 or zF, FLAG_N
 jmp ..@2895.finish

..@2895.overflow:
 or zF, FLAG_P|FLAG_N
..@2895.finish:

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1094+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1095+0 raze.inc
dd_bd:
%line 1096+1 raze.inc
 cmp zA, zIXl
%line 1096+0 raze.inc
 lahf
 jo ..@2903.overflow

 and zF, ~FLAG_P
 or zF, FLAG_N
 jmp ..@2903.finish

..@2903.overflow:
 or zF, FLAG_P|FLAG_N
..@2903.finish:

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1097+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1098+0 raze.inc
fd_bc:
%line 1099+1 raze.inc
 cmp zA, zIYh
%line 1099+0 raze.inc
 lahf
 jo ..@2911.overflow

 and zF, ~FLAG_P
 or zF, FLAG_N
 jmp ..@2911.finish

..@2911.overflow:
 or zF, FLAG_P|FLAG_N
..@2911.finish:

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1100+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1101+0 raze.inc
fd_bd:
%line 1102+1 raze.inc
 cmp zA, zIYl
%line 1102+0 raze.inc
 lahf
 jo ..@2919.overflow

 and zF, ~FLAG_P
 or zF, FLAG_N
 jmp ..@2919.finish

..@2919.overflow:
 or zF, FLAG_P|FLAG_N
..@2919.finish:

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1103+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1104+0 raze.inc
op_be:
%line 1105+1 raze.inc
 mov edi, ezHL
%line 1105+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@2927.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@2927.finish

..@2927.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@2927.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 cmp zA, dl
 lahf
 jo ..@2930.overflow

 and zF, ~FLAG_P
 or zF, FLAG_N
 jmp ..@2930.finish

..@2930.overflow:
 or zF, FLAG_P|FLAG_N
..@2930.finish:

 sub dword [_z80_ICount], 7
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1106+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1107+0 raze.inc
op_fe:
%line 1108+1 raze.inc
 mov edx, ezPC
%line 1108+0 raze.inc
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 cmp zA, dl
 lahf
 jo ..@2939.overflow

 and zF, ~FLAG_P
 or zF, FLAG_N
 jmp ..@2939.finish

..@2939.overflow:
 or zF, FLAG_P|FLAG_N
..@2939.finish:

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1109+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1110+0 raze.inc
dd_be:
%line 1111+1 raze.inc
 mov edx, ezPC
%line 1111+0 raze.inc
 shr edx, 8
 mov edx, [_z80_Fetch+edx*4]

 movsx di, [edx+ezPC]
 inc zPC
 xor edx, edx
 add di, zIX
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@2948.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@2948.finish

..@2948.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@2948.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 cmp zA, dl
 lahf
 jo ..@2951.overflow

 and zF, ~FLAG_P
 or zF, FLAG_N
 jmp ..@2951.finish

..@2951.overflow:
 or zF, FLAG_P|FLAG_N
..@2951.finish:

 sub dword [_z80_ICount], 19
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1112+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1113+0 raze.inc
fd_be:
%line 1114+1 raze.inc
 mov edx, ezPC
%line 1114+0 raze.inc
 shr edx, 8
 mov edx, [_z80_Fetch+edx*4]

 movsx di, [edx+ezPC]
 inc zPC
 xor edx, edx
 add di, zIY
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@2960.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@2960.finish

..@2960.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@2960.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 cmp zA, dl
 lahf
 jo ..@2963.overflow

 and zF, ~FLAG_P
 or zF, FLAG_N
 jmp ..@2963.finish

..@2963.overflow:
 or zF, FLAG_P|FLAG_N
..@2963.finish:

 sub dword [_z80_ICount], 19
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1115+1 raze.inc





times ($$-$) & ((4)-1) nop
%line 1120+0 raze.inc
op_04:
%line 1121+1 raze.inc
 and zF, FLAG_C
%line 1121+0 raze.inc
 mov dl, zB
 or zF, [INC_Table+edx]
 inc zB

 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1122+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1123+0 raze.inc
op_0c:
%line 1124+1 raze.inc
 and zF, FLAG_C
%line 1124+0 raze.inc
 mov dl, zC
 or zF, [INC_Table+edx]
 inc zC

 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1125+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1126+0 raze.inc
op_14:
%line 1127+1 raze.inc
 and zF, FLAG_C
%line 1127+0 raze.inc
 mov dl, zD
 or zF, [INC_Table+edx]
 inc zD

 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1128+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1129+0 raze.inc
op_1c:
%line 1130+1 raze.inc
 and zF, FLAG_C
%line 1130+0 raze.inc
 mov dl, zE
 or zF, [INC_Table+edx]
 inc zE

 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1131+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1132+0 raze.inc
op_24:
%line 1133+1 raze.inc
 and zF, FLAG_C
%line 1133+0 raze.inc
 mov dl, zH
 or zF, [INC_Table+edx]
 inc zH

 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1134+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1135+0 raze.inc
op_2c:
%line 1136+1 raze.inc
 and zF, FLAG_C
%line 1136+0 raze.inc
 mov dl, zL
 or zF, [INC_Table+edx]
 inc zL

 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1137+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1138+0 raze.inc
op_3c:
%line 1139+1 raze.inc
 and zF, FLAG_C
%line 1139+0 raze.inc
 mov dl, zA
 or zF, [INC_Table+edx]
 inc zA

 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1140+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1141+0 raze.inc
dd_24:
%line 1142+1 raze.inc
 and zF, FLAG_C
%line 1142+0 raze.inc
 mov dl, zIXh
 or zF, [INC_Table+edx]
 inc zIXh

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1143+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1144+0 raze.inc
dd_2c:
%line 1145+1 raze.inc
 and zF, FLAG_C
%line 1145+0 raze.inc
 mov dl, zIXl
 or zF, [INC_Table+edx]
 inc zIXl

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1146+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1147+0 raze.inc
fd_24:
%line 1148+1 raze.inc
 and zF, FLAG_C
%line 1148+0 raze.inc
 mov dl, zIYh
 or zF, [INC_Table+edx]
 inc zIYh

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1149+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1150+0 raze.inc
fd_2c:
%line 1151+1 raze.inc
 and zF, FLAG_C
%line 1151+0 raze.inc
 mov dl, zIYl
 or zF, [INC_Table+edx]
 inc zIYl

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1152+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1153+0 raze.inc
op_34:
%line 1154+1 raze.inc
 mov edi, ezHL
%line 1154+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@3059.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@3059.finish

..@3059.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@3059.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and zF, FLAG_C
 or zF, [INC_Table+edx]
 inc dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@3063.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@3063.finish

..@3063.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@3063.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 11
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1155+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1156+0 raze.inc
dd_34:
%line 1157+1 raze.inc
 mov edx, ezPC
%line 1157+0 raze.inc
 shr edx, 8
 mov edx, [_z80_Fetch+edx*4]

 movsx di, [edx+ezPC]
 inc zPC
 xor edx, edx
 add di, zIX
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@3074.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@3074.finish

..@3074.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@3074.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and zF, FLAG_C
 or zF, [INC_Table+edx]
 inc dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@3078.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@3078.finish

..@3078.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@3078.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1158+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1159+0 raze.inc
fd_34:
%line 1160+1 raze.inc
 mov edx, ezPC
%line 1160+0 raze.inc
 shr edx, 8
 mov edx, [_z80_Fetch+edx*4]

 movsx di, [edx+ezPC]
 inc zPC
 xor edx, edx
 add di, zIY
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@3089.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@3089.finish

..@3089.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@3089.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and zF, FLAG_C
 or zF, [INC_Table+edx]
 inc dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@3093.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@3093.finish

..@3093.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@3093.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1161+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1162+0 raze.inc
op_05:
%line 1163+1 raze.inc
 and zF, FLAG_C
%line 1163+0 raze.inc
 mov dl, zB
 or zF, [DEC_Table+edx]
 dec zB

 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1164+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1165+0 raze.inc
op_0d:
%line 1166+1 raze.inc
 and zF, FLAG_C
%line 1166+0 raze.inc
 mov dl, zC
 or zF, [DEC_Table+edx]
 dec zC

 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1167+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1168+0 raze.inc
op_15:
%line 1169+1 raze.inc
 and zF, FLAG_C
%line 1169+0 raze.inc
 mov dl, zD
 or zF, [DEC_Table+edx]
 dec zD

 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1170+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1171+0 raze.inc
op_1d:
%line 1172+1 raze.inc
 and zF, FLAG_C
%line 1172+0 raze.inc
 mov dl, zE
 or zF, [DEC_Table+edx]
 dec zE

 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1173+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1174+0 raze.inc
op_25:
%line 1175+1 raze.inc
 and zF, FLAG_C
%line 1175+0 raze.inc
 mov dl, zH
 or zF, [DEC_Table+edx]
 dec zH

 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1176+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1177+0 raze.inc
op_2d:
%line 1178+1 raze.inc
 and zF, FLAG_C
%line 1178+0 raze.inc
 mov dl, zL
 or zF, [DEC_Table+edx]
 dec zL

 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1179+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1180+0 raze.inc
op_3d:
%line 1181+1 raze.inc
 and zF, FLAG_C
%line 1181+0 raze.inc
 mov dl, zA
 or zF, [DEC_Table+edx]
 dec zA

 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1182+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1183+0 raze.inc
dd_25:
%line 1184+1 raze.inc
 and zF, FLAG_C
%line 1184+0 raze.inc
 mov dl, zIXh
 or zF, [DEC_Table+edx]
 dec zIXh

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1185+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1186+0 raze.inc
dd_2d:
%line 1187+1 raze.inc
 and zF, FLAG_C
%line 1187+0 raze.inc
 mov dl, zIXl
 or zF, [DEC_Table+edx]
 dec zIXl

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1188+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1189+0 raze.inc
fd_25:
%line 1190+1 raze.inc
 and zF, FLAG_C
%line 1190+0 raze.inc
 mov dl, zIYh
 or zF, [DEC_Table+edx]
 dec zIYh

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1191+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1192+0 raze.inc
fd_2d:
%line 1193+1 raze.inc
 and zF, FLAG_C
%line 1193+0 raze.inc
 mov dl, zIYl
 or zF, [DEC_Table+edx]
 dec zIYl

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1194+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1195+0 raze.inc
op_35:
%line 1196+1 raze.inc
 mov edi, ezHL
%line 1196+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@3191.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@3191.finish

..@3191.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@3191.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and zF, FLAG_C
 or zF, [DEC_Table+edx]
 dec dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@3195.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@3195.finish

..@3195.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@3195.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 11
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1197+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1198+0 raze.inc
dd_35:
%line 1199+1 raze.inc
 mov edx, ezPC
%line 1199+0 raze.inc
 shr edx, 8
 mov edx, [_z80_Fetch+edx*4]

 movsx di, [edx+ezPC]
 inc zPC
 xor edx, edx
 add di, zIX
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@3206.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@3206.finish

..@3206.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@3206.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and zF, FLAG_C
 or zF, [DEC_Table+edx]
 dec dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@3210.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@3210.finish

..@3210.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@3210.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1200+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1201+0 raze.inc
fd_35:
%line 1202+1 raze.inc
 mov edx, ezPC
%line 1202+0 raze.inc
 shr edx, 8
 mov edx, [_z80_Fetch+edx*4]

 movsx di, [edx+ezPC]
 inc zPC
 xor edx, edx
 add di, zIY
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@3221.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@3221.finish

..@3221.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@3221.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and zF, FLAG_C
 or zF, [DEC_Table+edx]
 dec dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@3225.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@3225.finish

..@3225.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@3225.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1203+1 raze.inc





times ($$-$) & ((4)-1) nop
%line 1208+0 raze.inc
op_09:
%line 1209+1 raze.inc
 mov edi, ezBC
%line 1209+0 raze.inc
 mov edx, ezHL
 and zF, FLAG_S|FLAG_Z|FLAG_P

 add zHL, di
 adc zF, 0

 xor edx, ezHL
 xor edx, edi
 and dh, FLAG_H
 or zF, dh

 xor dh, dh

 sub dword [_z80_ICount], 11
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1210+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1211+0 raze.inc
op_19:
%line 1212+1 raze.inc
 mov edi, ezDE
%line 1212+0 raze.inc
 mov edx, ezHL
 and zF, FLAG_S|FLAG_Z|FLAG_P

 add zHL, di
 adc zF, 0

 xor edx, ezHL
 xor edx, edi
 and dh, FLAG_H
 or zF, dh

 xor dh, dh

 sub dword [_z80_ICount], 11
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1213+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1214+0 raze.inc
op_29:
%line 1215+1 raze.inc
 mov edi, ezHL
%line 1215+0 raze.inc
 mov edx, ezHL
 and zF, FLAG_S|FLAG_Z|FLAG_P

 add zHL, di
 adc zF, 0

 xor edx, ezHL
 xor edx, edi
 and dh, FLAG_H
 or zF, dh

 xor dh, dh

 sub dword [_z80_ICount], 11
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1216+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1217+0 raze.inc
op_39:
%line 1218+1 raze.inc
 mov edi, ezSP
%line 1218+0 raze.inc
 mov edx, ezHL
 and zF, FLAG_S|FLAG_Z|FLAG_P

 add zHL, di
 adc zF, 0

 xor edx, ezHL
 xor edx, edi
 and dh, FLAG_H
 or zF, dh

 xor dh, dh

 sub dword [_z80_ICount], 11
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1219+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1220+0 raze.inc
dd_09:
%line 1221+1 raze.inc
 mov edi, ezBC
%line 1221+0 raze.inc
 mov edx, ezIX
 and zF, FLAG_S|FLAG_Z|FLAG_P

 add zIX, di
 adc zF, 0

 xor edx, ezIX
 xor edx, edi
 and dh, FLAG_H
 or zF, dh

 xor dh, dh

 sub dword [_z80_ICount], 15
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1222+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1223+0 raze.inc
dd_19:
%line 1224+1 raze.inc
 mov edi, ezDE
%line 1224+0 raze.inc
 mov edx, ezIX
 and zF, FLAG_S|FLAG_Z|FLAG_P

 add zIX, di
 adc zF, 0

 xor edx, ezIX
 xor edx, edi
 and dh, FLAG_H
 or zF, dh

 xor dh, dh

 sub dword [_z80_ICount], 15
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1225+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1226+0 raze.inc
dd_29:
%line 1227+1 raze.inc
 mov edi, ezIX
%line 1227+0 raze.inc
 mov edx, ezIX
 and zF, FLAG_S|FLAG_Z|FLAG_P

 add zIX, di
 adc zF, 0

 xor edx, ezIX
 xor edx, edi
 and dh, FLAG_H
 or zF, dh

 xor dh, dh

 sub dword [_z80_ICount], 15
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1228+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1229+0 raze.inc
dd_39:
%line 1230+1 raze.inc
 mov edi, ezSP
%line 1230+0 raze.inc
 mov edx, ezIX
 and zF, FLAG_S|FLAG_Z|FLAG_P

 add zIX, di
 adc zF, 0

 xor edx, ezIX
 xor edx, edi
 and dh, FLAG_H
 or zF, dh

 xor dh, dh

 sub dword [_z80_ICount], 15
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1231+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1232+0 raze.inc
fd_09:
%line 1233+1 raze.inc
 mov edi, ezBC
%line 1233+0 raze.inc
 mov edx, ezIY
 and zF, FLAG_S|FLAG_Z|FLAG_P

 add zIY, di
 adc zF, 0

 xor edx, ezIY
 xor edx, edi
 and dh, FLAG_H
 or zF, dh

 xor dh, dh

 sub dword [_z80_ICount], 15
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1234+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1235+0 raze.inc
fd_19:
%line 1236+1 raze.inc
 mov edi, ezDE
%line 1236+0 raze.inc
 mov edx, ezIY
 and zF, FLAG_S|FLAG_Z|FLAG_P

 add zIY, di
 adc zF, 0

 xor edx, ezIY
 xor edx, edi
 and dh, FLAG_H
 or zF, dh

 xor dh, dh

 sub dword [_z80_ICount], 15
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1237+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1238+0 raze.inc
fd_29:
%line 1239+1 raze.inc
 mov edi, ezIY
%line 1239+0 raze.inc
 mov edx, ezIY
 and zF, FLAG_S|FLAG_Z|FLAG_P

 add zIY, di
 adc zF, 0

 xor edx, ezIY
 xor edx, edi
 and dh, FLAG_H
 or zF, dh

 xor dh, dh

 sub dword [_z80_ICount], 15
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1240+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1241+0 raze.inc
fd_39:
%line 1242+1 raze.inc
 mov edi, ezSP
%line 1242+0 raze.inc
 mov edx, ezIY
 and zF, FLAG_S|FLAG_Z|FLAG_P

 add zIY, di
 adc zF, 0

 xor edx, ezIY
 xor edx, edi
 and dh, FLAG_H
 or zF, dh

 xor dh, dh

 sub dword [_z80_ICount], 15
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1243+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1244+0 raze.inc
ed_4a:
%line 1245+1 raze.inc
 mov edi, ezBC
%line 1245+0 raze.inc
 mov edx, ezHL
 ror zF, 1
 adc zHL, zBC
 lahf
 jo ..@3331.overflow

 and zF, ~(FLAG_N|FLAG_H|FLAG_P)
 jmp ..@3331.finish

..@3331.overflow:
 and zF, ~(FLAG_N|FLAG_H)
 or zF, FLAG_P
..@3331.finish:

 xor edx, ezHL
 xor edx, edi
 and dh, FLAG_H
 or zF, dh

 xor dh, dh

 sub dword [_z80_ICount], 15
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1246+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1247+0 raze.inc
ed_5a:
%line 1248+1 raze.inc
 mov edi, ezDE
%line 1248+0 raze.inc
 mov edx, ezHL
 ror zF, 1
 adc zHL, zDE
 lahf
 jo ..@3339.overflow

 and zF, ~(FLAG_N|FLAG_H|FLAG_P)
 jmp ..@3339.finish

..@3339.overflow:
 and zF, ~(FLAG_N|FLAG_H)
 or zF, FLAG_P
..@3339.finish:

 xor edx, ezHL
 xor edx, edi
 and dh, FLAG_H
 or zF, dh

 xor dh, dh

 sub dword [_z80_ICount], 15
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1249+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1250+0 raze.inc
ed_6a:
%line 1251+1 raze.inc
 mov edi, ezHL
%line 1251+0 raze.inc
 mov edx, ezHL
 ror zF, 1
 adc zHL, zHL
 lahf
 jo ..@3347.overflow

 and zF, ~(FLAG_N|FLAG_H|FLAG_P)
 jmp ..@3347.finish

..@3347.overflow:
 and zF, ~(FLAG_N|FLAG_H)
 or zF, FLAG_P
..@3347.finish:

 xor edx, ezHL
 xor edx, edi
 and dh, FLAG_H
 or zF, dh

 xor dh, dh

 sub dword [_z80_ICount], 15
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1252+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1253+0 raze.inc
ed_7a:
%line 1254+1 raze.inc
 mov edi, ezSP
%line 1254+0 raze.inc
 mov edx, ezHL
 ror zF, 1
 adc zHL, zSP
 lahf
 jo ..@3355.overflow

 and zF, ~(FLAG_N|FLAG_H|FLAG_P)
 jmp ..@3355.finish

..@3355.overflow:
 and zF, ~(FLAG_N|FLAG_H)
 or zF, FLAG_P
..@3355.finish:

 xor edx, ezHL
 xor edx, edi
 and dh, FLAG_H
 or zF, dh

 xor dh, dh

 sub dword [_z80_ICount], 15
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1255+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1256+0 raze.inc
ed_42:
%line 1257+1 raze.inc
 mov edi, ezBC
%line 1257+0 raze.inc
 mov edx, ezHL
 ror zF, 1
 sbb zHL, zBC
 lahf
 jo ..@3363.overflow

 and zF, ~(FLAG_P|FLAG_H)
 or zF, FLAG_N
 jmp ..@3363.finish

..@3363.overflow:
 or zF, FLAG_N|FLAG_P
 and zF, ~FLAG_H
..@3363.finish:

 xor edx, ezHL
 xor edx, edi
 and dh, FLAG_H
 or zF, dh

 xor dh, dh

 sub dword [_z80_ICount], 15
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1258+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1259+0 raze.inc
ed_52:
%line 1260+1 raze.inc
 mov edi, ezDE
%line 1260+0 raze.inc
 mov edx, ezHL
 ror zF, 1
 sbb zHL, zDE
 lahf
 jo ..@3371.overflow

 and zF, ~(FLAG_P|FLAG_H)
 or zF, FLAG_N
 jmp ..@3371.finish

..@3371.overflow:
 or zF, FLAG_N|FLAG_P
 and zF, ~FLAG_H
..@3371.finish:

 xor edx, ezHL
 xor edx, edi
 and dh, FLAG_H
 or zF, dh

 xor dh, dh

 sub dword [_z80_ICount], 15
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1261+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1262+0 raze.inc
ed_62:
%line 1263+1 raze.inc
 mov edi, ezHL
%line 1263+0 raze.inc
 mov edx, ezHL
 ror zF, 1
 sbb zHL, zHL
 lahf
 jo ..@3379.overflow

 and zF, ~(FLAG_P|FLAG_H)
 or zF, FLAG_N
 jmp ..@3379.finish

..@3379.overflow:
 or zF, FLAG_N|FLAG_P
 and zF, ~FLAG_H
..@3379.finish:

 xor edx, ezHL
 xor edx, edi
 and dh, FLAG_H
 or zF, dh

 xor dh, dh

 sub dword [_z80_ICount], 15
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1264+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1265+0 raze.inc
ed_72:
%line 1266+1 raze.inc
 mov edi, ezSP
%line 1266+0 raze.inc
 mov edx, ezHL
 ror zF, 1
 sbb zHL, zSP
 lahf
 jo ..@3387.overflow

 and zF, ~(FLAG_P|FLAG_H)
 or zF, FLAG_N
 jmp ..@3387.finish

..@3387.overflow:
 or zF, FLAG_N|FLAG_P
 and zF, ~FLAG_H
..@3387.finish:

 xor edx, ezHL
 xor edx, edi
 and dh, FLAG_H
 or zF, dh

 xor dh, dh

 sub dword [_z80_ICount], 15
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1267+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1268+0 raze.inc
op_03:
%line 1269+1 raze.inc
 inc zBC
%line 1269+0 raze.inc

 sub dword [_z80_ICount], 6
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1270+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1271+0 raze.inc
op_13:
%line 1272+1 raze.inc
 inc zDE
%line 1272+0 raze.inc

 sub dword [_z80_ICount], 6
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1273+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1274+0 raze.inc
op_23:
%line 1275+1 raze.inc
 inc zHL
%line 1275+0 raze.inc

 sub dword [_z80_ICount], 6
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1276+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1277+0 raze.inc
op_33:
%line 1278+1 raze.inc
 inc zSP
%line 1278+0 raze.inc

 sub dword [_z80_ICount], 6
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1279+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1280+0 raze.inc
dd_23:
%line 1281+1 raze.inc
 inc zIX
%line 1281+0 raze.inc

 sub dword [_z80_ICount], 10
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1282+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1283+0 raze.inc
fd_23:
%line 1284+1 raze.inc
 inc zIY
%line 1284+0 raze.inc

 sub dword [_z80_ICount], 10
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1285+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1286+0 raze.inc
op_0b:
%line 1287+1 raze.inc
 dec zBC
%line 1287+0 raze.inc

 sub dword [_z80_ICount], 6
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1288+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1289+0 raze.inc
op_1b:
%line 1290+1 raze.inc
 dec zDE
%line 1290+0 raze.inc

 sub dword [_z80_ICount], 6
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1291+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1292+0 raze.inc
op_2b:
%line 1293+1 raze.inc
 dec zHL
%line 1293+0 raze.inc

 sub dword [_z80_ICount], 6
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1294+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1295+0 raze.inc
op_3b:
%line 1296+1 raze.inc
 dec zSP
%line 1296+0 raze.inc

 sub dword [_z80_ICount], 6
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1297+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1298+0 raze.inc
dd_2b:
%line 1299+1 raze.inc
 dec zIX
%line 1299+0 raze.inc

 sub dword [_z80_ICount], 10
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1300+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1301+0 raze.inc
fd_2b:
%line 1302+1 raze.inc
 dec zIY
%line 1302+0 raze.inc

 sub dword [_z80_ICount], 10
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1303+1 raze.inc





times ($$-$) & ((4)-1) nop
%line 1308+0 raze.inc
op_07:
%line 1309+1 raze.inc
 and zF, FLAG_S|FLAG_Z|FLAG_P
%line 1309+0 raze.inc
 rol zA, 1
 adc zF, 0

 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1310+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1311+0 raze.inc
op_0f:
%line 1312+1 raze.inc
 and zF, FLAG_S|FLAG_Z|FLAG_P
%line 1312+0 raze.inc
 ror zA, 1
 adc zF, 0

 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1313+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1314+0 raze.inc
op_17:
%line 1315+1 raze.inc
 mov dl, zF
%line 1315+0 raze.inc
 and dl, FLAG_S|FLAG_Z|FLAG_P
 sahf
 rcl zA, 1
 adc dl, 0
 mov zF, dl

 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1316+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1317+0 raze.inc
op_1f:
%line 1318+1 raze.inc
 mov dl, zF
%line 1318+0 raze.inc
 and dl, FLAG_S|FLAG_Z|FLAG_P
 sahf
 rcr zA, 1
 adc dl, 0
 mov zF, dl

 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1319+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1320+0 raze.inc
cb_00:
%line 1321+1 raze.inc
 mov dl, zB
%line 1321+0 raze.inc

 rol dl, 1

 adc dh, dh
 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 mov zB, dl
 xor dh, dh

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1322+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1323+0 raze.inc
cb_01:
%line 1324+1 raze.inc
 mov dl, zC
%line 1324+0 raze.inc

 rol dl, 1

 adc dh, dh
 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 mov zC, dl
 xor dh, dh

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1325+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1326+0 raze.inc
cb_02:
%line 1327+1 raze.inc
 mov dl, zD
%line 1327+0 raze.inc

 rol dl, 1

 adc dh, dh
 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 mov zD, dl
 xor dh, dh

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1328+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1329+0 raze.inc
cb_03:
%line 1330+1 raze.inc
 mov dl, zE
%line 1330+0 raze.inc

 rol dl, 1

 adc dh, dh
 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 mov zE, dl
 xor dh, dh

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1331+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1332+0 raze.inc
cb_04:
%line 1333+1 raze.inc
 mov dl, zH
%line 1333+0 raze.inc

 rol dl, 1

 adc dh, dh
 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 mov zH, dl
 xor dh, dh

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1334+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1335+0 raze.inc
cb_05:
%line 1336+1 raze.inc
 mov dl, zL
%line 1336+0 raze.inc

 rol dl, 1

 adc dh, dh
 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 mov zL, dl
 xor dh, dh

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1337+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1338+0 raze.inc
cb_07:
%line 1339+1 raze.inc
 mov dl, zA
%line 1339+0 raze.inc

 rol dl, 1

 adc dh, dh
 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 mov zA, dl
 xor dh, dh

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1340+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1341+0 raze.inc
cb_06:
%line 1342+1 raze.inc
 mov edi, ezHL
%line 1342+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@3567.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@3567.finish

..@3567.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@3567.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]

 rol dl, 1

 adc dh, dh
 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 xor dh, dh
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@3571.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@3571.finish

..@3571.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@3571.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 15
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1343+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1344+0 raze.inc
ddcb_00:
%line 1345+1 raze.inc
 mov [_z80_AF], ezAF
%line 1345+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@3581.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@3581.finish

..@3581.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@3581.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]

 rol dl, 1

 adc dh, dh
 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 xor dh, dh
 mov zB, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@3585.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@3585.finish

..@3585.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@3585.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1346+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1347+0 raze.inc
ddcb_01:
%line 1348+1 raze.inc
 mov [_z80_AF], ezAF
%line 1348+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@3595.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@3595.finish

..@3595.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@3595.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]

 rol dl, 1

 adc dh, dh
 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 xor dh, dh
 mov zC, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@3599.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@3599.finish

..@3599.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@3599.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1349+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1350+0 raze.inc
ddcb_02:
%line 1351+1 raze.inc
 mov [_z80_AF], ezAF
%line 1351+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@3609.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@3609.finish

..@3609.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@3609.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]

 rol dl, 1

 adc dh, dh
 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 xor dh, dh
 mov zD, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@3613.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@3613.finish

..@3613.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@3613.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1352+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1353+0 raze.inc
ddcb_03:
%line 1354+1 raze.inc
 mov [_z80_AF], ezAF
%line 1354+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@3623.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@3623.finish

..@3623.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@3623.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]

 rol dl, 1

 adc dh, dh
 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 xor dh, dh
 mov zE, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@3627.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@3627.finish

..@3627.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@3627.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1355+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1356+0 raze.inc
ddcb_04:
%line 1357+1 raze.inc
 mov [_z80_AF], ezAF
%line 1357+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@3637.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@3637.finish

..@3637.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@3637.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]

 rol dl, 1

 adc dh, dh
 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 xor dh, dh
 mov zH, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@3641.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@3641.finish

..@3641.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@3641.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1358+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1359+0 raze.inc
ddcb_05:
%line 1360+1 raze.inc
 mov [_z80_AF], ezAF
%line 1360+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@3651.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@3651.finish

..@3651.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@3651.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]

 rol dl, 1

 adc dh, dh
 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 xor dh, dh
 mov zL, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@3655.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@3655.finish

..@3655.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@3655.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1361+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1362+0 raze.inc
ddcb_06:
%line 1363+1 raze.inc
 mov [_z80_AF], ezAF
%line 1363+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@3665.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@3665.finish

..@3665.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@3665.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]

 rol dl, 1

 adc dh, dh
 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 xor dh, dh
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@3669.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@3669.finish

..@3669.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@3669.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1364+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1365+0 raze.inc
ddcb_07:
%line 1366+1 raze.inc
 mov [_z80_AF], ezAF
%line 1366+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@3679.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@3679.finish

..@3679.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@3679.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]

 rol dl, 1

 adc dh, dh
 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 xor dh, dh
 mov zA, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@3683.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@3683.finish

..@3683.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@3683.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1367+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1368+0 raze.inc
cb_08:
%line 1369+1 raze.inc
 mov dl, zB
%line 1369+0 raze.inc

 ror dl, 1

 adc dh, dh
 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 mov zB, dl
 xor dh, dh

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1370+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1371+0 raze.inc
cb_09:
%line 1372+1 raze.inc
 mov dl, zC
%line 1372+0 raze.inc

 ror dl, 1

 adc dh, dh
 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 mov zC, dl
 xor dh, dh

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1373+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1374+0 raze.inc
cb_0a:
%line 1375+1 raze.inc
 mov dl, zD
%line 1375+0 raze.inc

 ror dl, 1

 adc dh, dh
 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 mov zD, dl
 xor dh, dh

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1376+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1377+0 raze.inc
cb_0b:
%line 1378+1 raze.inc
 mov dl, zE
%line 1378+0 raze.inc

 ror dl, 1

 adc dh, dh
 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 mov zE, dl
 xor dh, dh

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1379+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1380+0 raze.inc
cb_0c:
%line 1381+1 raze.inc
 mov dl, zH
%line 1381+0 raze.inc

 ror dl, 1

 adc dh, dh
 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 mov zH, dl
 xor dh, dh

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1382+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1383+0 raze.inc
cb_0d:
%line 1384+1 raze.inc
 mov dl, zL
%line 1384+0 raze.inc

 ror dl, 1

 adc dh, dh
 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 mov zL, dl
 xor dh, dh

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1385+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1386+0 raze.inc
cb_0f:
%line 1387+1 raze.inc
 mov dl, zA
%line 1387+0 raze.inc

 ror dl, 1

 adc dh, dh
 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 mov zA, dl
 xor dh, dh

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1388+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1389+0 raze.inc
cb_0e:
%line 1390+1 raze.inc
 mov edi, ezHL
%line 1390+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@3749.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@3749.finish

..@3749.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@3749.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]

 ror dl, 1

 adc dh, dh
 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 xor dh, dh
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@3753.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@3753.finish

..@3753.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@3753.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 15
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1391+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1392+0 raze.inc
ddcb_08:
%line 1393+1 raze.inc
 mov [_z80_AF], ezAF
%line 1393+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@3763.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@3763.finish

..@3763.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@3763.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]

 ror dl, 1

 adc dh, dh
 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 xor dh, dh
 mov zB, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@3767.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@3767.finish

..@3767.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@3767.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1394+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1395+0 raze.inc
ddcb_09:
%line 1396+1 raze.inc
 mov [_z80_AF], ezAF
%line 1396+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@3777.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@3777.finish

..@3777.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@3777.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]

 ror dl, 1

 adc dh, dh
 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 xor dh, dh
 mov zC, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@3781.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@3781.finish

..@3781.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@3781.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1397+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1398+0 raze.inc
ddcb_0a:
%line 1399+1 raze.inc
 mov [_z80_AF], ezAF
%line 1399+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@3791.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@3791.finish

..@3791.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@3791.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]

 ror dl, 1

 adc dh, dh
 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 xor dh, dh
 mov zD, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@3795.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@3795.finish

..@3795.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@3795.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1400+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1401+0 raze.inc
ddcb_0b:
%line 1402+1 raze.inc
 mov [_z80_AF], ezAF
%line 1402+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@3805.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@3805.finish

..@3805.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@3805.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]

 ror dl, 1

 adc dh, dh
 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 xor dh, dh
 mov zE, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@3809.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@3809.finish

..@3809.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@3809.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1403+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1404+0 raze.inc
ddcb_0c:
%line 1405+1 raze.inc
 mov [_z80_AF], ezAF
%line 1405+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@3819.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@3819.finish

..@3819.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@3819.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]

 ror dl, 1

 adc dh, dh
 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 xor dh, dh
 mov zH, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@3823.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@3823.finish

..@3823.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@3823.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1406+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1407+0 raze.inc
ddcb_0d:
%line 1408+1 raze.inc
 mov [_z80_AF], ezAF
%line 1408+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@3833.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@3833.finish

..@3833.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@3833.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]

 ror dl, 1

 adc dh, dh
 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 xor dh, dh
 mov zL, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@3837.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@3837.finish

..@3837.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@3837.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1409+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1410+0 raze.inc
ddcb_0e:
%line 1411+1 raze.inc
 mov [_z80_AF], ezAF
%line 1411+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@3847.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@3847.finish

..@3847.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@3847.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]

 ror dl, 1

 adc dh, dh
 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 xor dh, dh
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@3851.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@3851.finish

..@3851.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@3851.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1412+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1413+0 raze.inc
ddcb_0f:
%line 1414+1 raze.inc
 mov [_z80_AF], ezAF
%line 1414+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@3861.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@3861.finish

..@3861.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@3861.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]

 ror dl, 1

 adc dh, dh
 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 xor dh, dh
 mov zA, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@3865.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@3865.finish

..@3865.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@3865.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1415+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1416+0 raze.inc
cb_10:
%line 1417+1 raze.inc
 mov dl, zB
%line 1417+0 raze.inc

 sahf
 rcl dl, 1

 adc dh, dh
 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 mov zB, dl
 xor dh, dh

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1418+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1419+0 raze.inc
cb_11:
%line 1420+1 raze.inc
 mov dl, zC
%line 1420+0 raze.inc

 sahf
 rcl dl, 1

 adc dh, dh
 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 mov zC, dl
 xor dh, dh

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1421+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1422+0 raze.inc
cb_12:
%line 1423+1 raze.inc
 mov dl, zD
%line 1423+0 raze.inc

 sahf
 rcl dl, 1

 adc dh, dh
 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 mov zD, dl
 xor dh, dh

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1424+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1425+0 raze.inc
cb_13:
%line 1426+1 raze.inc
 mov dl, zE
%line 1426+0 raze.inc

 sahf
 rcl dl, 1

 adc dh, dh
 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 mov zE, dl
 xor dh, dh

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1427+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1428+0 raze.inc
cb_14:
%line 1429+1 raze.inc
 mov dl, zH
%line 1429+0 raze.inc

 sahf
 rcl dl, 1

 adc dh, dh
 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 mov zH, dl
 xor dh, dh

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1430+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1431+0 raze.inc
cb_15:
%line 1432+1 raze.inc
 mov dl, zL
%line 1432+0 raze.inc

 sahf
 rcl dl, 1

 adc dh, dh
 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 mov zL, dl
 xor dh, dh

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1433+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1434+0 raze.inc
cb_17:
%line 1435+1 raze.inc
 mov dl, zA
%line 1435+0 raze.inc

 sahf
 rcl dl, 1

 adc dh, dh
 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 mov zA, dl
 xor dh, dh

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1436+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1437+0 raze.inc
cb_16:
%line 1438+1 raze.inc
 mov edi, ezHL
%line 1438+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@3931.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@3931.finish

..@3931.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@3931.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]

 sahf
 rcl dl, 1

 adc dh, dh
 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 xor dh, dh
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@3935.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@3935.finish

..@3935.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@3935.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 15
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1439+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1440+0 raze.inc
ddcb_10:
%line 1441+1 raze.inc
 mov [_z80_AF], ezAF
%line 1441+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@3945.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@3945.finish

..@3945.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@3945.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]

 sahf
 rcl dl, 1

 adc dh, dh
 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 xor dh, dh
 mov zB, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@3949.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@3949.finish

..@3949.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@3949.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1442+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1443+0 raze.inc
ddcb_11:
%line 1444+1 raze.inc
 mov [_z80_AF], ezAF
%line 1444+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@3959.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@3959.finish

..@3959.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@3959.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]

 sahf
 rcl dl, 1

 adc dh, dh
 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 xor dh, dh
 mov zC, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@3963.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@3963.finish

..@3963.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@3963.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1445+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1446+0 raze.inc
ddcb_12:
%line 1447+1 raze.inc
 mov [_z80_AF], ezAF
%line 1447+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@3973.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@3973.finish

..@3973.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@3973.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]

 sahf
 rcl dl, 1

 adc dh, dh
 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 xor dh, dh
 mov zD, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@3977.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@3977.finish

..@3977.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@3977.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1448+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1449+0 raze.inc
ddcb_13:
%line 1450+1 raze.inc
 mov [_z80_AF], ezAF
%line 1450+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@3987.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@3987.finish

..@3987.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@3987.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]

 sahf
 rcl dl, 1

 adc dh, dh
 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 xor dh, dh
 mov zE, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@3991.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@3991.finish

..@3991.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@3991.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1451+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1452+0 raze.inc
ddcb_14:
%line 1453+1 raze.inc
 mov [_z80_AF], ezAF
%line 1453+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@4001.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@4001.finish

..@4001.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@4001.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]

 sahf
 rcl dl, 1

 adc dh, dh
 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 xor dh, dh
 mov zH, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@4005.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@4005.finish

..@4005.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@4005.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1454+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1455+0 raze.inc
ddcb_15:
%line 1456+1 raze.inc
 mov [_z80_AF], ezAF
%line 1456+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@4015.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@4015.finish

..@4015.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@4015.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]

 sahf
 rcl dl, 1

 adc dh, dh
 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 xor dh, dh
 mov zL, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@4019.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@4019.finish

..@4019.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@4019.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1457+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1458+0 raze.inc
ddcb_16:
%line 1459+1 raze.inc
 mov [_z80_AF], ezAF
%line 1459+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@4029.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@4029.finish

..@4029.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@4029.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]

 sahf
 rcl dl, 1

 adc dh, dh
 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 xor dh, dh
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@4033.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@4033.finish

..@4033.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@4033.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1460+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1461+0 raze.inc
ddcb_17:
%line 1462+1 raze.inc
 mov [_z80_AF], ezAF
%line 1462+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@4043.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@4043.finish

..@4043.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@4043.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]

 sahf
 rcl dl, 1

 adc dh, dh
 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 xor dh, dh
 mov zA, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@4047.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@4047.finish

..@4047.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@4047.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1463+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1464+0 raze.inc
cb_18:
%line 1465+1 raze.inc
 mov dl, zB
%line 1465+0 raze.inc

 sahf
 rcr dl, 1

 adc dh, dh
 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 mov zB, dl
 xor dh, dh

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1466+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1467+0 raze.inc
cb_19:
%line 1468+1 raze.inc
 mov dl, zC
%line 1468+0 raze.inc

 sahf
 rcr dl, 1

 adc dh, dh
 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 mov zC, dl
 xor dh, dh

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1469+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1470+0 raze.inc
cb_1a:
%line 1471+1 raze.inc
 mov dl, zD
%line 1471+0 raze.inc

 sahf
 rcr dl, 1

 adc dh, dh
 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 mov zD, dl
 xor dh, dh

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1472+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1473+0 raze.inc
cb_1b:
%line 1474+1 raze.inc
 mov dl, zE
%line 1474+0 raze.inc

 sahf
 rcr dl, 1

 adc dh, dh
 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 mov zE, dl
 xor dh, dh

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1475+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1476+0 raze.inc
cb_1c:
%line 1477+1 raze.inc
 mov dl, zH
%line 1477+0 raze.inc

 sahf
 rcr dl, 1

 adc dh, dh
 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 mov zH, dl
 xor dh, dh

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1478+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1479+0 raze.inc
cb_1d:
%line 1480+1 raze.inc
 mov dl, zL
%line 1480+0 raze.inc

 sahf
 rcr dl, 1

 adc dh, dh
 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 mov zL, dl
 xor dh, dh

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1481+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1482+0 raze.inc
cb_1f:
%line 1483+1 raze.inc
 mov dl, zA
%line 1483+0 raze.inc

 sahf
 rcr dl, 1

 adc dh, dh
 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 mov zA, dl
 xor dh, dh

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1484+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1485+0 raze.inc
cb_1e:
%line 1486+1 raze.inc
 mov edi, ezHL
%line 1486+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@4113.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@4113.finish

..@4113.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@4113.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]

 sahf
 rcr dl, 1

 adc dh, dh
 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 xor dh, dh
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@4117.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@4117.finish

..@4117.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@4117.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 15
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1487+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1488+0 raze.inc
ddcb_18:
%line 1489+1 raze.inc
 mov [_z80_AF], ezAF
%line 1489+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@4127.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@4127.finish

..@4127.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@4127.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]

 sahf
 rcr dl, 1

 adc dh, dh
 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 xor dh, dh
 mov zB, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@4131.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@4131.finish

..@4131.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@4131.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1490+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1491+0 raze.inc
ddcb_19:
%line 1492+1 raze.inc
 mov [_z80_AF], ezAF
%line 1492+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@4141.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@4141.finish

..@4141.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@4141.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]

 sahf
 rcr dl, 1

 adc dh, dh
 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 xor dh, dh
 mov zC, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@4145.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@4145.finish

..@4145.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@4145.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1493+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1494+0 raze.inc
ddcb_1a:
%line 1495+1 raze.inc
 mov [_z80_AF], ezAF
%line 1495+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@4155.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@4155.finish

..@4155.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@4155.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]

 sahf
 rcr dl, 1

 adc dh, dh
 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 xor dh, dh
 mov zD, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@4159.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@4159.finish

..@4159.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@4159.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1496+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1497+0 raze.inc
ddcb_1b:
%line 1498+1 raze.inc
 mov [_z80_AF], ezAF
%line 1498+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@4169.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@4169.finish

..@4169.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@4169.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]

 sahf
 rcr dl, 1

 adc dh, dh
 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 xor dh, dh
 mov zE, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@4173.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@4173.finish

..@4173.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@4173.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1499+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1500+0 raze.inc
ddcb_1c:
%line 1501+1 raze.inc
 mov [_z80_AF], ezAF
%line 1501+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@4183.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@4183.finish

..@4183.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@4183.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]

 sahf
 rcr dl, 1

 adc dh, dh
 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 xor dh, dh
 mov zH, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@4187.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@4187.finish

..@4187.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@4187.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1502+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1503+0 raze.inc
ddcb_1d:
%line 1504+1 raze.inc
 mov [_z80_AF], ezAF
%line 1504+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@4197.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@4197.finish

..@4197.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@4197.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]

 sahf
 rcr dl, 1

 adc dh, dh
 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 xor dh, dh
 mov zL, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@4201.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@4201.finish

..@4201.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@4201.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1505+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1506+0 raze.inc
ddcb_1e:
%line 1507+1 raze.inc
 mov [_z80_AF], ezAF
%line 1507+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@4211.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@4211.finish

..@4211.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@4211.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]

 sahf
 rcr dl, 1

 adc dh, dh
 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 xor dh, dh
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@4215.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@4215.finish

..@4215.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@4215.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1508+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1509+0 raze.inc
ddcb_1f:
%line 1510+1 raze.inc
 mov [_z80_AF], ezAF
%line 1510+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@4225.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@4225.finish

..@4225.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@4225.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]

 sahf
 rcr dl, 1

 adc dh, dh
 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 xor dh, dh
 mov zA, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@4229.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@4229.finish

..@4229.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@4229.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1511+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1512+0 raze.inc
cb_20:
%line 1513+1 raze.inc
 mov dl, zB
%line 1513+0 raze.inc

 add dl, dl
 adc dh, dh

 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 mov zB, dl
 xor dh, dh

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1514+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1515+0 raze.inc
cb_21:
%line 1516+1 raze.inc
 mov dl, zC
%line 1516+0 raze.inc

 add dl, dl
 adc dh, dh

 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 mov zC, dl
 xor dh, dh

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1517+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1518+0 raze.inc
cb_22:
%line 1519+1 raze.inc
 mov dl, zD
%line 1519+0 raze.inc

 add dl, dl
 adc dh, dh

 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 mov zD, dl
 xor dh, dh

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1520+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1521+0 raze.inc
cb_23:
%line 1522+1 raze.inc
 mov dl, zE
%line 1522+0 raze.inc

 add dl, dl
 adc dh, dh

 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 mov zE, dl
 xor dh, dh

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1523+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1524+0 raze.inc
cb_24:
%line 1525+1 raze.inc
 mov dl, zH
%line 1525+0 raze.inc

 add dl, dl
 adc dh, dh

 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 mov zH, dl
 xor dh, dh

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1526+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1527+0 raze.inc
cb_25:
%line 1528+1 raze.inc
 mov dl, zL
%line 1528+0 raze.inc

 add dl, dl
 adc dh, dh

 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 mov zL, dl
 xor dh, dh

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1529+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1530+0 raze.inc
cb_27:
%line 1531+1 raze.inc
 mov dl, zA
%line 1531+0 raze.inc

 add dl, dl
 adc dh, dh

 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 mov zA, dl
 xor dh, dh

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1532+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1533+0 raze.inc
cb_26:
%line 1534+1 raze.inc
 mov edi, ezHL
%line 1534+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@4295.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@4295.finish

..@4295.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@4295.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]

 add dl, dl
 adc dh, dh

 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 xor dh, dh
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@4299.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@4299.finish

..@4299.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@4299.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 15
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1535+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1536+0 raze.inc
ddcb_20:
%line 1537+1 raze.inc
 mov [_z80_AF], ezAF
%line 1537+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@4309.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@4309.finish

..@4309.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@4309.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]

 add dl, dl
 adc dh, dh

 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 xor dh, dh
 mov zB, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@4313.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@4313.finish

..@4313.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@4313.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1538+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1539+0 raze.inc
ddcb_21:
%line 1540+1 raze.inc
 mov [_z80_AF], ezAF
%line 1540+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@4323.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@4323.finish

..@4323.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@4323.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]

 add dl, dl
 adc dh, dh

 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 xor dh, dh
 mov zC, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@4327.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@4327.finish

..@4327.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@4327.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1541+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1542+0 raze.inc
ddcb_22:
%line 1543+1 raze.inc
 mov [_z80_AF], ezAF
%line 1543+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@4337.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@4337.finish

..@4337.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@4337.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]

 add dl, dl
 adc dh, dh

 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 xor dh, dh
 mov zD, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@4341.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@4341.finish

..@4341.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@4341.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1544+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1545+0 raze.inc
ddcb_23:
%line 1546+1 raze.inc
 mov [_z80_AF], ezAF
%line 1546+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@4351.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@4351.finish

..@4351.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@4351.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]

 add dl, dl
 adc dh, dh

 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 xor dh, dh
 mov zE, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@4355.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@4355.finish

..@4355.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@4355.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1547+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1548+0 raze.inc
ddcb_24:
%line 1549+1 raze.inc
 mov [_z80_AF], ezAF
%line 1549+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@4365.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@4365.finish

..@4365.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@4365.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]

 add dl, dl
 adc dh, dh

 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 xor dh, dh
 mov zH, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@4369.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@4369.finish

..@4369.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@4369.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1550+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1551+0 raze.inc
ddcb_25:
%line 1552+1 raze.inc
 mov [_z80_AF], ezAF
%line 1552+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@4379.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@4379.finish

..@4379.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@4379.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]

 add dl, dl
 adc dh, dh

 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 xor dh, dh
 mov zL, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@4383.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@4383.finish

..@4383.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@4383.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1553+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1554+0 raze.inc
ddcb_26:
%line 1555+1 raze.inc
 mov [_z80_AF], ezAF
%line 1555+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@4393.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@4393.finish

..@4393.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@4393.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]

 add dl, dl
 adc dh, dh

 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 xor dh, dh
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@4397.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@4397.finish

..@4397.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@4397.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1556+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1557+0 raze.inc
ddcb_27:
%line 1558+1 raze.inc
 mov [_z80_AF], ezAF
%line 1558+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@4407.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@4407.finish

..@4407.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@4407.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]

 add dl, dl
 adc dh, dh

 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 xor dh, dh
 mov zA, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@4411.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@4411.finish

..@4411.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@4411.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1559+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1560+0 raze.inc
cb_28:
%line 1561+1 raze.inc
 mov dl, zB
%line 1561+0 raze.inc

 sar dl, 1
 adc dh, dh

 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 mov zB, dl
 xor dh, dh

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1562+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1563+0 raze.inc
cb_29:
%line 1564+1 raze.inc
 mov dl, zC
%line 1564+0 raze.inc

 sar dl, 1
 adc dh, dh

 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 mov zC, dl
 xor dh, dh

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1565+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1566+0 raze.inc
cb_2a:
%line 1567+1 raze.inc
 mov dl, zD
%line 1567+0 raze.inc

 sar dl, 1
 adc dh, dh

 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 mov zD, dl
 xor dh, dh

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1568+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1569+0 raze.inc
cb_2b:
%line 1570+1 raze.inc
 mov dl, zE
%line 1570+0 raze.inc

 sar dl, 1
 adc dh, dh

 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 mov zE, dl
 xor dh, dh

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1571+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1572+0 raze.inc
cb_2c:
%line 1573+1 raze.inc
 mov dl, zH
%line 1573+0 raze.inc

 sar dl, 1
 adc dh, dh

 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 mov zH, dl
 xor dh, dh

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1574+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1575+0 raze.inc
cb_2d:
%line 1576+1 raze.inc
 mov dl, zL
%line 1576+0 raze.inc

 sar dl, 1
 adc dh, dh

 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 mov zL, dl
 xor dh, dh

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1577+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1578+0 raze.inc
cb_2f:
%line 1579+1 raze.inc
 mov dl, zA
%line 1579+0 raze.inc

 sar dl, 1
 adc dh, dh

 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 mov zA, dl
 xor dh, dh

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1580+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1581+0 raze.inc
cb_2e:
%line 1582+1 raze.inc
 mov edi, ezHL
%line 1582+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@4477.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@4477.finish

..@4477.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@4477.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]

 sar dl, 1
 adc dh, dh

 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 xor dh, dh
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@4481.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@4481.finish

..@4481.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@4481.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 15
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1583+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1584+0 raze.inc
ddcb_28:
%line 1585+1 raze.inc
 mov [_z80_AF], ezAF
%line 1585+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@4491.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@4491.finish

..@4491.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@4491.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]

 sar dl, 1
 adc dh, dh

 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 xor dh, dh
 mov zB, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@4495.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@4495.finish

..@4495.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@4495.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1586+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1587+0 raze.inc
ddcb_29:
%line 1588+1 raze.inc
 mov [_z80_AF], ezAF
%line 1588+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@4505.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@4505.finish

..@4505.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@4505.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]

 sar dl, 1
 adc dh, dh

 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 xor dh, dh
 mov zC, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@4509.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@4509.finish

..@4509.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@4509.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1589+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1590+0 raze.inc
ddcb_2a:
%line 1591+1 raze.inc
 mov [_z80_AF], ezAF
%line 1591+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@4519.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@4519.finish

..@4519.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@4519.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]

 sar dl, 1
 adc dh, dh

 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 xor dh, dh
 mov zD, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@4523.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@4523.finish

..@4523.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@4523.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1592+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1593+0 raze.inc
ddcb_2b:
%line 1594+1 raze.inc
 mov [_z80_AF], ezAF
%line 1594+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@4533.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@4533.finish

..@4533.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@4533.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]

 sar dl, 1
 adc dh, dh

 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 xor dh, dh
 mov zE, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@4537.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@4537.finish

..@4537.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@4537.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1595+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1596+0 raze.inc
ddcb_2c:
%line 1597+1 raze.inc
 mov [_z80_AF], ezAF
%line 1597+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@4547.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@4547.finish

..@4547.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@4547.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]

 sar dl, 1
 adc dh, dh

 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 xor dh, dh
 mov zH, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@4551.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@4551.finish

..@4551.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@4551.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1598+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1599+0 raze.inc
ddcb_2d:
%line 1600+1 raze.inc
 mov [_z80_AF], ezAF
%line 1600+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@4561.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@4561.finish

..@4561.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@4561.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]

 sar dl, 1
 adc dh, dh

 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 xor dh, dh
 mov zL, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@4565.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@4565.finish

..@4565.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@4565.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1601+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1602+0 raze.inc
ddcb_2e:
%line 1603+1 raze.inc
 mov [_z80_AF], ezAF
%line 1603+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@4575.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@4575.finish

..@4575.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@4575.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]

 sar dl, 1
 adc dh, dh

 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 xor dh, dh
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@4579.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@4579.finish

..@4579.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@4579.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1604+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1605+0 raze.inc
ddcb_2f:
%line 1606+1 raze.inc
 mov [_z80_AF], ezAF
%line 1606+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@4589.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@4589.finish

..@4589.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@4589.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]

 sar dl, 1
 adc dh, dh

 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 xor dh, dh
 mov zA, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@4593.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@4593.finish

..@4593.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@4593.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1607+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1608+0 raze.inc
cb_30:
%line 1609+1 raze.inc
 mov dl, zB
%line 1609+0 raze.inc

 add dl, dl
 adc dh, dh
 inc dl

 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 mov zB, dl
 xor dh, dh

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1610+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1611+0 raze.inc
cb_31:
%line 1612+1 raze.inc
 mov dl, zC
%line 1612+0 raze.inc

 add dl, dl
 adc dh, dh
 inc dl

 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 mov zC, dl
 xor dh, dh

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1613+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1614+0 raze.inc
cb_32:
%line 1615+1 raze.inc
 mov dl, zD
%line 1615+0 raze.inc

 add dl, dl
 adc dh, dh
 inc dl

 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 mov zD, dl
 xor dh, dh

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1616+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1617+0 raze.inc
cb_33:
%line 1618+1 raze.inc
 mov dl, zE
%line 1618+0 raze.inc

 add dl, dl
 adc dh, dh
 inc dl

 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 mov zE, dl
 xor dh, dh

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1619+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1620+0 raze.inc
cb_34:
%line 1621+1 raze.inc
 mov dl, zH
%line 1621+0 raze.inc

 add dl, dl
 adc dh, dh
 inc dl

 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 mov zH, dl
 xor dh, dh

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1622+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1623+0 raze.inc
cb_35:
%line 1624+1 raze.inc
 mov dl, zL
%line 1624+0 raze.inc

 add dl, dl
 adc dh, dh
 inc dl

 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 mov zL, dl
 xor dh, dh

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1625+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1626+0 raze.inc
cb_37:
%line 1627+1 raze.inc
 mov dl, zA
%line 1627+0 raze.inc

 add dl, dl
 adc dh, dh
 inc dl

 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 mov zA, dl
 xor dh, dh

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1628+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1629+0 raze.inc
cb_36:
%line 1630+1 raze.inc
 mov edi, ezHL
%line 1630+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@4659.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@4659.finish

..@4659.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@4659.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]

 add dl, dl
 adc dh, dh
 inc dl

 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 xor dh, dh
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@4663.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@4663.finish

..@4663.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@4663.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 15
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1631+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1632+0 raze.inc
ddcb_30:
%line 1633+1 raze.inc
 mov [_z80_AF], ezAF
%line 1633+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@4673.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@4673.finish

..@4673.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@4673.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]

 add dl, dl
 adc dh, dh
 inc dl

 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 xor dh, dh
 mov zB, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@4677.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@4677.finish

..@4677.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@4677.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1634+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1635+0 raze.inc
ddcb_31:
%line 1636+1 raze.inc
 mov [_z80_AF], ezAF
%line 1636+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@4687.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@4687.finish

..@4687.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@4687.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]

 add dl, dl
 adc dh, dh
 inc dl

 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 xor dh, dh
 mov zC, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@4691.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@4691.finish

..@4691.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@4691.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1637+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1638+0 raze.inc
ddcb_32:
%line 1639+1 raze.inc
 mov [_z80_AF], ezAF
%line 1639+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@4701.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@4701.finish

..@4701.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@4701.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]

 add dl, dl
 adc dh, dh
 inc dl

 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 xor dh, dh
 mov zD, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@4705.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@4705.finish

..@4705.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@4705.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1640+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1641+0 raze.inc
ddcb_33:
%line 1642+1 raze.inc
 mov [_z80_AF], ezAF
%line 1642+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@4715.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@4715.finish

..@4715.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@4715.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]

 add dl, dl
 adc dh, dh
 inc dl

 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 xor dh, dh
 mov zE, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@4719.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@4719.finish

..@4719.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@4719.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1643+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1644+0 raze.inc
ddcb_34:
%line 1645+1 raze.inc
 mov [_z80_AF], ezAF
%line 1645+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@4729.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@4729.finish

..@4729.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@4729.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]

 add dl, dl
 adc dh, dh
 inc dl

 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 xor dh, dh
 mov zH, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@4733.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@4733.finish

..@4733.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@4733.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1646+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1647+0 raze.inc
ddcb_35:
%line 1648+1 raze.inc
 mov [_z80_AF], ezAF
%line 1648+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@4743.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@4743.finish

..@4743.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@4743.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]

 add dl, dl
 adc dh, dh
 inc dl

 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 xor dh, dh
 mov zL, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@4747.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@4747.finish

..@4747.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@4747.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1649+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1650+0 raze.inc
ddcb_36:
%line 1651+1 raze.inc
 mov [_z80_AF], ezAF
%line 1651+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@4757.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@4757.finish

..@4757.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@4757.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]

 add dl, dl
 adc dh, dh
 inc dl

 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 xor dh, dh
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@4761.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@4761.finish

..@4761.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@4761.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1652+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1653+0 raze.inc
ddcb_37:
%line 1654+1 raze.inc
 mov [_z80_AF], ezAF
%line 1654+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@4771.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@4771.finish

..@4771.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@4771.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]

 add dl, dl
 adc dh, dh
 inc dl

 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 xor dh, dh
 mov zA, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@4775.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@4775.finish

..@4775.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@4775.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1655+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1656+0 raze.inc
cb_38:
%line 1657+1 raze.inc
 mov dl, zB
%line 1657+0 raze.inc

 shr dl, 1
 adc dh, dh

 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 mov zB, dl
 xor dh, dh

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1658+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1659+0 raze.inc
cb_39:
%line 1660+1 raze.inc
 mov dl, zC
%line 1660+0 raze.inc

 shr dl, 1
 adc dh, dh

 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 mov zC, dl
 xor dh, dh

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1661+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1662+0 raze.inc
cb_3a:
%line 1663+1 raze.inc
 mov dl, zD
%line 1663+0 raze.inc

 shr dl, 1
 adc dh, dh

 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 mov zD, dl
 xor dh, dh

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1664+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1665+0 raze.inc
cb_3b:
%line 1666+1 raze.inc
 mov dl, zE
%line 1666+0 raze.inc

 shr dl, 1
 adc dh, dh

 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 mov zE, dl
 xor dh, dh

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1667+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1668+0 raze.inc
cb_3c:
%line 1669+1 raze.inc
 mov dl, zH
%line 1669+0 raze.inc

 shr dl, 1
 adc dh, dh

 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 mov zH, dl
 xor dh, dh

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1670+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1671+0 raze.inc
cb_3d:
%line 1672+1 raze.inc
 mov dl, zL
%line 1672+0 raze.inc

 shr dl, 1
 adc dh, dh

 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 mov zL, dl
 xor dh, dh

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1673+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1674+0 raze.inc
cb_3f:
%line 1675+1 raze.inc
 mov dl, zA
%line 1675+0 raze.inc

 shr dl, 1
 adc dh, dh

 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 mov zA, dl
 xor dh, dh

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1676+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1677+0 raze.inc
cb_3e:
%line 1678+1 raze.inc
 mov edi, ezHL
%line 1678+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@4841.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@4841.finish

..@4841.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@4841.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]

 shr dl, 1
 adc dh, dh

 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 xor dh, dh
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@4845.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@4845.finish

..@4845.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@4845.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 15
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1679+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1680+0 raze.inc
ddcb_38:
%line 1681+1 raze.inc
 mov [_z80_AF], ezAF
%line 1681+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@4855.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@4855.finish

..@4855.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@4855.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]

 shr dl, 1
 adc dh, dh

 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 xor dh, dh
 mov zB, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@4859.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@4859.finish

..@4859.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@4859.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1682+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1683+0 raze.inc
ddcb_39:
%line 1684+1 raze.inc
 mov [_z80_AF], ezAF
%line 1684+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@4869.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@4869.finish

..@4869.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@4869.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]

 shr dl, 1
 adc dh, dh

 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 xor dh, dh
 mov zC, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@4873.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@4873.finish

..@4873.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@4873.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1685+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1686+0 raze.inc
ddcb_3a:
%line 1687+1 raze.inc
 mov [_z80_AF], ezAF
%line 1687+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@4883.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@4883.finish

..@4883.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@4883.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]

 shr dl, 1
 adc dh, dh

 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 xor dh, dh
 mov zD, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@4887.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@4887.finish

..@4887.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@4887.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1688+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1689+0 raze.inc
ddcb_3b:
%line 1690+1 raze.inc
 mov [_z80_AF], ezAF
%line 1690+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@4897.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@4897.finish

..@4897.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@4897.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]

 shr dl, 1
 adc dh, dh

 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 xor dh, dh
 mov zE, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@4901.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@4901.finish

..@4901.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@4901.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1691+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1692+0 raze.inc
ddcb_3c:
%line 1693+1 raze.inc
 mov [_z80_AF], ezAF
%line 1693+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@4911.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@4911.finish

..@4911.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@4911.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]

 shr dl, 1
 adc dh, dh

 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 xor dh, dh
 mov zH, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@4915.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@4915.finish

..@4915.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@4915.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1694+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1695+0 raze.inc
ddcb_3d:
%line 1696+1 raze.inc
 mov [_z80_AF], ezAF
%line 1696+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@4925.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@4925.finish

..@4925.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@4925.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]

 shr dl, 1
 adc dh, dh

 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 xor dh, dh
 mov zL, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@4929.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@4929.finish

..@4929.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@4929.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1697+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1698+0 raze.inc
ddcb_3e:
%line 1699+1 raze.inc
 mov [_z80_AF], ezAF
%line 1699+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@4939.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@4939.finish

..@4939.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@4939.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]

 shr dl, 1
 adc dh, dh

 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 xor dh, dh
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@4943.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@4943.finish

..@4943.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@4943.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1700+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1701+0 raze.inc
ddcb_3f:
%line 1702+1 raze.inc
 mov [_z80_AF], ezAF
%line 1702+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@4953.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@4953.finish

..@4953.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@4953.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]

 shr dl, 1
 adc dh, dh

 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 xor dh, dh
 mov zA, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@4957.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@4957.finish

..@4957.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@4957.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1703+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1704+0 raze.inc
ed_67:
%line 1705+1 raze.inc
 mov edi, ezHL
%line 1705+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@4967.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@4967.finish

..@4967.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@4967.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 mov dh, zA
 and zF, FLAG_C
 ror dx, 4
 shr dh, 4
 and zA, 0f0h
 or zA, dh
 mov dh, zF
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@4970.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@4970.finish

..@4970.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@4970.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 18
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1706+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1707+0 raze.inc
ed_6f:
%line 1708+1 raze.inc
 mov edi, ezHL
%line 1708+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@4980.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@4980.finish

..@4980.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@4980.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 mov dh, zA
 and zF, FLAG_C
 shl dh, 4
 rol dx, 4
 and zA, 0f0h
 or zA, dh
 mov dh, zF
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@4983.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@4983.finish

..@4983.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@4983.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 18
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1709+1 raze.inc





times ($$-$) & ((4)-1) nop
%line 1714+0 raze.inc
cb_40:
%line 1715+1 raze.inc
 and zF, FLAG_C
%line 1715+0 raze.inc
 test zB, (1 << 0)

 jz ..@4993.bit_is_clear
 or zF, FLAG_H
 jmp ..@4993.finish

..@4993.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@4993.finish:

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1716+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1717+0 raze.inc
cb_41:
%line 1718+1 raze.inc
 and zF, FLAG_C
%line 1718+0 raze.inc
 test zC, (1 << 0)

 jz ..@5001.bit_is_clear
 or zF, FLAG_H
 jmp ..@5001.finish

..@5001.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5001.finish:

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1719+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1720+0 raze.inc
cb_42:
%line 1721+1 raze.inc
 and zF, FLAG_C
%line 1721+0 raze.inc
 test zD, (1 << 0)

 jz ..@5009.bit_is_clear
 or zF, FLAG_H
 jmp ..@5009.finish

..@5009.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5009.finish:

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1722+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1723+0 raze.inc
cb_43:
%line 1724+1 raze.inc
 and zF, FLAG_C
%line 1724+0 raze.inc
 test zE, (1 << 0)

 jz ..@5017.bit_is_clear
 or zF, FLAG_H
 jmp ..@5017.finish

..@5017.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5017.finish:

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1725+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1726+0 raze.inc
cb_44:
%line 1727+1 raze.inc
 and zF, FLAG_C
%line 1727+0 raze.inc
 test zH, (1 << 0)

 jz ..@5025.bit_is_clear
 or zF, FLAG_H
 jmp ..@5025.finish

..@5025.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5025.finish:

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1728+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1729+0 raze.inc
cb_45:
%line 1730+1 raze.inc
 and zF, FLAG_C
%line 1730+0 raze.inc
 test zL, (1 << 0)

 jz ..@5033.bit_is_clear
 or zF, FLAG_H
 jmp ..@5033.finish

..@5033.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5033.finish:

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1731+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1732+0 raze.inc
cb_47:
%line 1733+1 raze.inc
 and zF, FLAG_C
%line 1733+0 raze.inc
 test zA, (1 << 0)

 jz ..@5041.bit_is_clear
 or zF, FLAG_H
 jmp ..@5041.finish

..@5041.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5041.finish:

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1734+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1735+0 raze.inc
cb_46:
%line 1736+1 raze.inc
 and zF, FLAG_C
%line 1736+0 raze.inc
 mov edi, ezHL
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@5049.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@5049.finish

..@5049.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@5049.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]

 test dl, (1 << 0)






 jz ..@5048.bit_is_clear
 or zF, FLAG_H
 jmp ..@5048.finish

..@5048.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5048.finish:

 sub dword [_z80_ICount], 12
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1737+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1738+0 raze.inc
ddcb_40:
%line 1739+1 raze.inc

%line 1739+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@5059.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@5059.finish

..@5059.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@5059.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and zF, FLAG_C
 test dl, (1 << 0)

 jz ..@5058.bit_is_clear
 or zF, FLAG_H
 jmp ..@5058.finish

..@5058.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5058.finish:

 sub dword [_z80_ICount], 20
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1740+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1741+0 raze.inc
ddcb_41:
%line 1742+1 raze.inc

%line 1742+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@5069.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@5069.finish

..@5069.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@5069.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and zF, FLAG_C
 test dl, (1 << 0)

 jz ..@5068.bit_is_clear
 or zF, FLAG_H
 jmp ..@5068.finish

..@5068.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5068.finish:

 sub dword [_z80_ICount], 20
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1743+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1744+0 raze.inc
ddcb_42:
%line 1745+1 raze.inc

%line 1745+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@5079.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@5079.finish

..@5079.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@5079.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and zF, FLAG_C
 test dl, (1 << 0)

 jz ..@5078.bit_is_clear
 or zF, FLAG_H
 jmp ..@5078.finish

..@5078.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5078.finish:

 sub dword [_z80_ICount], 20
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1746+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1747+0 raze.inc
ddcb_43:
%line 1748+1 raze.inc

%line 1748+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@5089.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@5089.finish

..@5089.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@5089.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and zF, FLAG_C
 test dl, (1 << 0)

 jz ..@5088.bit_is_clear
 or zF, FLAG_H
 jmp ..@5088.finish

..@5088.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5088.finish:

 sub dword [_z80_ICount], 20
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1749+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1750+0 raze.inc
ddcb_44:
%line 1751+1 raze.inc

%line 1751+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@5099.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@5099.finish

..@5099.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@5099.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and zF, FLAG_C
 test dl, (1 << 0)

 jz ..@5098.bit_is_clear
 or zF, FLAG_H
 jmp ..@5098.finish

..@5098.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5098.finish:

 sub dword [_z80_ICount], 20
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1752+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1753+0 raze.inc
ddcb_45:
%line 1754+1 raze.inc

%line 1754+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@5109.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@5109.finish

..@5109.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@5109.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and zF, FLAG_C
 test dl, (1 << 0)

 jz ..@5108.bit_is_clear
 or zF, FLAG_H
 jmp ..@5108.finish

..@5108.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5108.finish:

 sub dword [_z80_ICount], 20
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1755+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1756+0 raze.inc
ddcb_46:
%line 1757+1 raze.inc

%line 1757+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@5119.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@5119.finish

..@5119.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@5119.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and zF, FLAG_C
 test dl, (1 << 0)

 jz ..@5118.bit_is_clear
 or zF, FLAG_H
 jmp ..@5118.finish

..@5118.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5118.finish:

 sub dword [_z80_ICount], 20
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1758+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1759+0 raze.inc
ddcb_47:
%line 1760+1 raze.inc

%line 1760+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@5129.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@5129.finish

..@5129.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@5129.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and zF, FLAG_C
 test dl, (1 << 0)

 jz ..@5128.bit_is_clear
 or zF, FLAG_H
 jmp ..@5128.finish

..@5128.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5128.finish:

 sub dword [_z80_ICount], 20
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1761+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1762+0 raze.inc
cb_48:
%line 1763+1 raze.inc
 and zF, FLAG_C
%line 1763+0 raze.inc
 test zB, (1 << 1)

 jz ..@5139.bit_is_clear
 or zF, FLAG_H
 jmp ..@5139.finish

..@5139.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5139.finish:

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1764+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1765+0 raze.inc
cb_49:
%line 1766+1 raze.inc
 and zF, FLAG_C
%line 1766+0 raze.inc
 test zC, (1 << 1)

 jz ..@5147.bit_is_clear
 or zF, FLAG_H
 jmp ..@5147.finish

..@5147.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5147.finish:

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1767+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1768+0 raze.inc
cb_4a:
%line 1769+1 raze.inc
 and zF, FLAG_C
%line 1769+0 raze.inc
 test zD, (1 << 1)

 jz ..@5155.bit_is_clear
 or zF, FLAG_H
 jmp ..@5155.finish

..@5155.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5155.finish:

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1770+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1771+0 raze.inc
cb_4b:
%line 1772+1 raze.inc
 and zF, FLAG_C
%line 1772+0 raze.inc
 test zE, (1 << 1)

 jz ..@5163.bit_is_clear
 or zF, FLAG_H
 jmp ..@5163.finish

..@5163.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5163.finish:

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1773+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1774+0 raze.inc
cb_4c:
%line 1775+1 raze.inc
 and zF, FLAG_C
%line 1775+0 raze.inc
 test zH, (1 << 1)

 jz ..@5171.bit_is_clear
 or zF, FLAG_H
 jmp ..@5171.finish

..@5171.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5171.finish:

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1776+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1777+0 raze.inc
cb_4d:
%line 1778+1 raze.inc
 and zF, FLAG_C
%line 1778+0 raze.inc
 test zL, (1 << 1)

 jz ..@5179.bit_is_clear
 or zF, FLAG_H
 jmp ..@5179.finish

..@5179.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5179.finish:

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1779+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1780+0 raze.inc
cb_4f:
%line 1781+1 raze.inc
 and zF, FLAG_C
%line 1781+0 raze.inc
 test zA, (1 << 1)

 jz ..@5187.bit_is_clear
 or zF, FLAG_H
 jmp ..@5187.finish

..@5187.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5187.finish:

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1782+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1783+0 raze.inc
cb_4e:
%line 1784+1 raze.inc
 and zF, FLAG_C
%line 1784+0 raze.inc
 mov edi, ezHL
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@5195.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@5195.finish

..@5195.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@5195.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]

 test dl, (1 << 1)






 jz ..@5194.bit_is_clear
 or zF, FLAG_H
 jmp ..@5194.finish

..@5194.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5194.finish:

 sub dword [_z80_ICount], 12
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1785+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1786+0 raze.inc
ddcb_48:
%line 1787+1 raze.inc

%line 1787+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@5205.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@5205.finish

..@5205.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@5205.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and zF, FLAG_C
 test dl, (1 << 1)

 jz ..@5204.bit_is_clear
 or zF, FLAG_H
 jmp ..@5204.finish

..@5204.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5204.finish:

 sub dword [_z80_ICount], 20
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1788+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1789+0 raze.inc
ddcb_49:
%line 1790+1 raze.inc

%line 1790+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@5215.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@5215.finish

..@5215.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@5215.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and zF, FLAG_C
 test dl, (1 << 1)

 jz ..@5214.bit_is_clear
 or zF, FLAG_H
 jmp ..@5214.finish

..@5214.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5214.finish:

 sub dword [_z80_ICount], 20
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1791+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1792+0 raze.inc
ddcb_4a:
%line 1793+1 raze.inc

%line 1793+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@5225.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@5225.finish

..@5225.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@5225.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and zF, FLAG_C
 test dl, (1 << 1)

 jz ..@5224.bit_is_clear
 or zF, FLAG_H
 jmp ..@5224.finish

..@5224.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5224.finish:

 sub dword [_z80_ICount], 20
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1794+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1795+0 raze.inc
ddcb_4b:
%line 1796+1 raze.inc

%line 1796+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@5235.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@5235.finish

..@5235.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@5235.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and zF, FLAG_C
 test dl, (1 << 1)

 jz ..@5234.bit_is_clear
 or zF, FLAG_H
 jmp ..@5234.finish

..@5234.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5234.finish:

 sub dword [_z80_ICount], 20
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1797+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1798+0 raze.inc
ddcb_4c:
%line 1799+1 raze.inc

%line 1799+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@5245.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@5245.finish

..@5245.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@5245.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and zF, FLAG_C
 test dl, (1 << 1)

 jz ..@5244.bit_is_clear
 or zF, FLAG_H
 jmp ..@5244.finish

..@5244.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5244.finish:

 sub dword [_z80_ICount], 20
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1800+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1801+0 raze.inc
ddcb_4d:
%line 1802+1 raze.inc

%line 1802+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@5255.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@5255.finish

..@5255.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@5255.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and zF, FLAG_C
 test dl, (1 << 1)

 jz ..@5254.bit_is_clear
 or zF, FLAG_H
 jmp ..@5254.finish

..@5254.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5254.finish:

 sub dword [_z80_ICount], 20
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1803+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1804+0 raze.inc
ddcb_4e:
%line 1805+1 raze.inc

%line 1805+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@5265.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@5265.finish

..@5265.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@5265.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and zF, FLAG_C
 test dl, (1 << 1)

 jz ..@5264.bit_is_clear
 or zF, FLAG_H
 jmp ..@5264.finish

..@5264.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5264.finish:

 sub dword [_z80_ICount], 20
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1806+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1807+0 raze.inc
ddcb_4f:
%line 1808+1 raze.inc

%line 1808+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@5275.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@5275.finish

..@5275.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@5275.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and zF, FLAG_C
 test dl, (1 << 1)

 jz ..@5274.bit_is_clear
 or zF, FLAG_H
 jmp ..@5274.finish

..@5274.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5274.finish:

 sub dword [_z80_ICount], 20
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1809+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1810+0 raze.inc
cb_50:
%line 1811+1 raze.inc
 and zF, FLAG_C
%line 1811+0 raze.inc
 test zB, (1 << 2)

 jz ..@5285.bit_is_clear
 or zF, FLAG_H
 jmp ..@5285.finish

..@5285.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5285.finish:

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1812+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1813+0 raze.inc
cb_51:
%line 1814+1 raze.inc
 and zF, FLAG_C
%line 1814+0 raze.inc
 test zC, (1 << 2)

 jz ..@5293.bit_is_clear
 or zF, FLAG_H
 jmp ..@5293.finish

..@5293.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5293.finish:

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1815+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1816+0 raze.inc
cb_52:
%line 1817+1 raze.inc
 and zF, FLAG_C
%line 1817+0 raze.inc
 test zD, (1 << 2)

 jz ..@5301.bit_is_clear
 or zF, FLAG_H
 jmp ..@5301.finish

..@5301.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5301.finish:

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1818+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1819+0 raze.inc
cb_53:
%line 1820+1 raze.inc
 and zF, FLAG_C
%line 1820+0 raze.inc
 test zE, (1 << 2)

 jz ..@5309.bit_is_clear
 or zF, FLAG_H
 jmp ..@5309.finish

..@5309.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5309.finish:

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1821+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1822+0 raze.inc
cb_54:
%line 1823+1 raze.inc
 and zF, FLAG_C
%line 1823+0 raze.inc
 test zH, (1 << 2)

 jz ..@5317.bit_is_clear
 or zF, FLAG_H
 jmp ..@5317.finish

..@5317.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5317.finish:

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1824+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1825+0 raze.inc
cb_55:
%line 1826+1 raze.inc
 and zF, FLAG_C
%line 1826+0 raze.inc
 test zL, (1 << 2)

 jz ..@5325.bit_is_clear
 or zF, FLAG_H
 jmp ..@5325.finish

..@5325.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5325.finish:

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1827+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1828+0 raze.inc
cb_57:
%line 1829+1 raze.inc
 and zF, FLAG_C
%line 1829+0 raze.inc
 test zA, (1 << 2)

 jz ..@5333.bit_is_clear
 or zF, FLAG_H
 jmp ..@5333.finish

..@5333.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5333.finish:

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1830+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1831+0 raze.inc
cb_56:
%line 1832+1 raze.inc
 and zF, FLAG_C
%line 1832+0 raze.inc
 mov edi, ezHL
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@5341.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@5341.finish

..@5341.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@5341.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]

 test dl, (1 << 2)






 jz ..@5340.bit_is_clear
 or zF, FLAG_H
 jmp ..@5340.finish

..@5340.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5340.finish:

 sub dword [_z80_ICount], 12
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1833+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1834+0 raze.inc
ddcb_50:
%line 1835+1 raze.inc

%line 1835+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@5351.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@5351.finish

..@5351.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@5351.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and zF, FLAG_C
 test dl, (1 << 2)

 jz ..@5350.bit_is_clear
 or zF, FLAG_H
 jmp ..@5350.finish

..@5350.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5350.finish:

 sub dword [_z80_ICount], 20
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1836+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1837+0 raze.inc
ddcb_51:
%line 1838+1 raze.inc

%line 1838+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@5361.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@5361.finish

..@5361.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@5361.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and zF, FLAG_C
 test dl, (1 << 2)

 jz ..@5360.bit_is_clear
 or zF, FLAG_H
 jmp ..@5360.finish

..@5360.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5360.finish:

 sub dword [_z80_ICount], 20
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1839+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1840+0 raze.inc
ddcb_52:
%line 1841+1 raze.inc

%line 1841+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@5371.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@5371.finish

..@5371.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@5371.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and zF, FLAG_C
 test dl, (1 << 2)

 jz ..@5370.bit_is_clear
 or zF, FLAG_H
 jmp ..@5370.finish

..@5370.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5370.finish:

 sub dword [_z80_ICount], 20
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1842+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1843+0 raze.inc
ddcb_53:
%line 1844+1 raze.inc

%line 1844+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@5381.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@5381.finish

..@5381.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@5381.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and zF, FLAG_C
 test dl, (1 << 2)

 jz ..@5380.bit_is_clear
 or zF, FLAG_H
 jmp ..@5380.finish

..@5380.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5380.finish:

 sub dword [_z80_ICount], 20
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1845+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1846+0 raze.inc
ddcb_54:
%line 1847+1 raze.inc

%line 1847+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@5391.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@5391.finish

..@5391.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@5391.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and zF, FLAG_C
 test dl, (1 << 2)

 jz ..@5390.bit_is_clear
 or zF, FLAG_H
 jmp ..@5390.finish

..@5390.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5390.finish:

 sub dword [_z80_ICount], 20
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1848+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1849+0 raze.inc
ddcb_55:
%line 1850+1 raze.inc

%line 1850+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@5401.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@5401.finish

..@5401.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@5401.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and zF, FLAG_C
 test dl, (1 << 2)

 jz ..@5400.bit_is_clear
 or zF, FLAG_H
 jmp ..@5400.finish

..@5400.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5400.finish:

 sub dword [_z80_ICount], 20
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1851+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1852+0 raze.inc
ddcb_56:
%line 1853+1 raze.inc

%line 1853+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@5411.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@5411.finish

..@5411.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@5411.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and zF, FLAG_C
 test dl, (1 << 2)

 jz ..@5410.bit_is_clear
 or zF, FLAG_H
 jmp ..@5410.finish

..@5410.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5410.finish:

 sub dword [_z80_ICount], 20
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1854+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1855+0 raze.inc
ddcb_57:
%line 1856+1 raze.inc

%line 1856+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@5421.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@5421.finish

..@5421.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@5421.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and zF, FLAG_C
 test dl, (1 << 2)

 jz ..@5420.bit_is_clear
 or zF, FLAG_H
 jmp ..@5420.finish

..@5420.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5420.finish:

 sub dword [_z80_ICount], 20
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1857+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1858+0 raze.inc
cb_58:
%line 1859+1 raze.inc
 and zF, FLAG_C
%line 1859+0 raze.inc
 test zB, (1 << 3)

 jz ..@5431.bit_is_clear
 or zF, FLAG_H
 jmp ..@5431.finish

..@5431.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5431.finish:

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1860+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1861+0 raze.inc
cb_59:
%line 1862+1 raze.inc
 and zF, FLAG_C
%line 1862+0 raze.inc
 test zC, (1 << 3)

 jz ..@5439.bit_is_clear
 or zF, FLAG_H
 jmp ..@5439.finish

..@5439.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5439.finish:

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1863+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1864+0 raze.inc
cb_5a:
%line 1865+1 raze.inc
 and zF, FLAG_C
%line 1865+0 raze.inc
 test zD, (1 << 3)

 jz ..@5447.bit_is_clear
 or zF, FLAG_H
 jmp ..@5447.finish

..@5447.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5447.finish:

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1866+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1867+0 raze.inc
cb_5b:
%line 1868+1 raze.inc
 and zF, FLAG_C
%line 1868+0 raze.inc
 test zE, (1 << 3)

 jz ..@5455.bit_is_clear
 or zF, FLAG_H
 jmp ..@5455.finish

..@5455.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5455.finish:

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1869+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1870+0 raze.inc
cb_5c:
%line 1871+1 raze.inc
 and zF, FLAG_C
%line 1871+0 raze.inc
 test zH, (1 << 3)

 jz ..@5463.bit_is_clear
 or zF, FLAG_H
 jmp ..@5463.finish

..@5463.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5463.finish:

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1872+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1873+0 raze.inc
cb_5d:
%line 1874+1 raze.inc
 and zF, FLAG_C
%line 1874+0 raze.inc
 test zL, (1 << 3)

 jz ..@5471.bit_is_clear
 or zF, FLAG_H
 jmp ..@5471.finish

..@5471.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5471.finish:

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1875+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1876+0 raze.inc
cb_5f:
%line 1877+1 raze.inc
 and zF, FLAG_C
%line 1877+0 raze.inc
 test zA, (1 << 3)

 jz ..@5479.bit_is_clear
 or zF, FLAG_H
 jmp ..@5479.finish

..@5479.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5479.finish:

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1878+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1879+0 raze.inc
cb_5e:
%line 1880+1 raze.inc
 and zF, FLAG_C
%line 1880+0 raze.inc
 mov edi, ezHL
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@5487.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@5487.finish

..@5487.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@5487.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]

 test dl, (1 << 3)






 jz ..@5486.bit_is_clear
 or zF, FLAG_H
 jmp ..@5486.finish

..@5486.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5486.finish:

 sub dword [_z80_ICount], 12
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1881+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1882+0 raze.inc
ddcb_58:
%line 1883+1 raze.inc

%line 1883+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@5497.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@5497.finish

..@5497.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@5497.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and zF, FLAG_C
 test dl, (1 << 3)

 jz ..@5496.bit_is_clear
 or zF, FLAG_H
 jmp ..@5496.finish

..@5496.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5496.finish:

 sub dword [_z80_ICount], 20
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1884+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1885+0 raze.inc
ddcb_59:
%line 1886+1 raze.inc

%line 1886+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@5507.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@5507.finish

..@5507.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@5507.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and zF, FLAG_C
 test dl, (1 << 3)

 jz ..@5506.bit_is_clear
 or zF, FLAG_H
 jmp ..@5506.finish

..@5506.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5506.finish:

 sub dword [_z80_ICount], 20
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1887+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1888+0 raze.inc
ddcb_5a:
%line 1889+1 raze.inc

%line 1889+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@5517.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@5517.finish

..@5517.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@5517.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and zF, FLAG_C
 test dl, (1 << 3)

 jz ..@5516.bit_is_clear
 or zF, FLAG_H
 jmp ..@5516.finish

..@5516.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5516.finish:

 sub dword [_z80_ICount], 20
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1890+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1891+0 raze.inc
ddcb_5b:
%line 1892+1 raze.inc

%line 1892+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@5527.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@5527.finish

..@5527.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@5527.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and zF, FLAG_C
 test dl, (1 << 3)

 jz ..@5526.bit_is_clear
 or zF, FLAG_H
 jmp ..@5526.finish

..@5526.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5526.finish:

 sub dword [_z80_ICount], 20
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1893+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1894+0 raze.inc
ddcb_5c:
%line 1895+1 raze.inc

%line 1895+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@5537.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@5537.finish

..@5537.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@5537.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and zF, FLAG_C
 test dl, (1 << 3)

 jz ..@5536.bit_is_clear
 or zF, FLAG_H
 jmp ..@5536.finish

..@5536.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5536.finish:

 sub dword [_z80_ICount], 20
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1896+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1897+0 raze.inc
ddcb_5d:
%line 1898+1 raze.inc

%line 1898+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@5547.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@5547.finish

..@5547.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@5547.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and zF, FLAG_C
 test dl, (1 << 3)

 jz ..@5546.bit_is_clear
 or zF, FLAG_H
 jmp ..@5546.finish

..@5546.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5546.finish:

 sub dword [_z80_ICount], 20
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1899+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1900+0 raze.inc
ddcb_5e:
%line 1901+1 raze.inc

%line 1901+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@5557.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@5557.finish

..@5557.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@5557.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and zF, FLAG_C
 test dl, (1 << 3)

 jz ..@5556.bit_is_clear
 or zF, FLAG_H
 jmp ..@5556.finish

..@5556.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5556.finish:

 sub dword [_z80_ICount], 20
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1902+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1903+0 raze.inc
ddcb_5f:
%line 1904+1 raze.inc

%line 1904+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@5567.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@5567.finish

..@5567.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@5567.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and zF, FLAG_C
 test dl, (1 << 3)

 jz ..@5566.bit_is_clear
 or zF, FLAG_H
 jmp ..@5566.finish

..@5566.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5566.finish:

 sub dword [_z80_ICount], 20
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1905+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1906+0 raze.inc
cb_60:
%line 1907+1 raze.inc
 and zF, FLAG_C
%line 1907+0 raze.inc
 test zB, (1 << 4)

 jz ..@5577.bit_is_clear
 or zF, FLAG_H
 jmp ..@5577.finish

..@5577.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5577.finish:

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1908+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1909+0 raze.inc
cb_61:
%line 1910+1 raze.inc
 and zF, FLAG_C
%line 1910+0 raze.inc
 test zC, (1 << 4)

 jz ..@5585.bit_is_clear
 or zF, FLAG_H
 jmp ..@5585.finish

..@5585.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5585.finish:

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1911+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1912+0 raze.inc
cb_62:
%line 1913+1 raze.inc
 and zF, FLAG_C
%line 1913+0 raze.inc
 test zD, (1 << 4)

 jz ..@5593.bit_is_clear
 or zF, FLAG_H
 jmp ..@5593.finish

..@5593.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5593.finish:

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1914+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1915+0 raze.inc
cb_63:
%line 1916+1 raze.inc
 and zF, FLAG_C
%line 1916+0 raze.inc
 test zE, (1 << 4)

 jz ..@5601.bit_is_clear
 or zF, FLAG_H
 jmp ..@5601.finish

..@5601.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5601.finish:

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1917+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1918+0 raze.inc
cb_64:
%line 1919+1 raze.inc
 and zF, FLAG_C
%line 1919+0 raze.inc
 test zH, (1 << 4)

 jz ..@5609.bit_is_clear
 or zF, FLAG_H
 jmp ..@5609.finish

..@5609.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5609.finish:

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1920+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1921+0 raze.inc
cb_65:
%line 1922+1 raze.inc
 and zF, FLAG_C
%line 1922+0 raze.inc
 test zL, (1 << 4)

 jz ..@5617.bit_is_clear
 or zF, FLAG_H
 jmp ..@5617.finish

..@5617.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5617.finish:

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1923+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1924+0 raze.inc
cb_67:
%line 1925+1 raze.inc
 and zF, FLAG_C
%line 1925+0 raze.inc
 test zA, (1 << 4)

 jz ..@5625.bit_is_clear
 or zF, FLAG_H
 jmp ..@5625.finish

..@5625.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5625.finish:

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1926+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1927+0 raze.inc
cb_66:
%line 1928+1 raze.inc
 and zF, FLAG_C
%line 1928+0 raze.inc
 mov edi, ezHL
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@5633.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@5633.finish

..@5633.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@5633.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]

 test dl, (1 << 4)






 jz ..@5632.bit_is_clear
 or zF, FLAG_H
 jmp ..@5632.finish

..@5632.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5632.finish:

 sub dword [_z80_ICount], 12
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1929+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1930+0 raze.inc
ddcb_60:
%line 1931+1 raze.inc

%line 1931+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@5643.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@5643.finish

..@5643.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@5643.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and zF, FLAG_C
 test dl, (1 << 4)

 jz ..@5642.bit_is_clear
 or zF, FLAG_H
 jmp ..@5642.finish

..@5642.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5642.finish:

 sub dword [_z80_ICount], 20
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1932+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1933+0 raze.inc
ddcb_61:
%line 1934+1 raze.inc

%line 1934+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@5653.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@5653.finish

..@5653.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@5653.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and zF, FLAG_C
 test dl, (1 << 4)

 jz ..@5652.bit_is_clear
 or zF, FLAG_H
 jmp ..@5652.finish

..@5652.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5652.finish:

 sub dword [_z80_ICount], 20
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1935+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1936+0 raze.inc
ddcb_62:
%line 1937+1 raze.inc

%line 1937+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@5663.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@5663.finish

..@5663.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@5663.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and zF, FLAG_C
 test dl, (1 << 4)

 jz ..@5662.bit_is_clear
 or zF, FLAG_H
 jmp ..@5662.finish

..@5662.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5662.finish:

 sub dword [_z80_ICount], 20
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1938+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1939+0 raze.inc
ddcb_63:
%line 1940+1 raze.inc

%line 1940+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@5673.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@5673.finish

..@5673.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@5673.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and zF, FLAG_C
 test dl, (1 << 4)

 jz ..@5672.bit_is_clear
 or zF, FLAG_H
 jmp ..@5672.finish

..@5672.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5672.finish:

 sub dword [_z80_ICount], 20
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1941+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1942+0 raze.inc
ddcb_64:
%line 1943+1 raze.inc

%line 1943+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@5683.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@5683.finish

..@5683.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@5683.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and zF, FLAG_C
 test dl, (1 << 4)

 jz ..@5682.bit_is_clear
 or zF, FLAG_H
 jmp ..@5682.finish

..@5682.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5682.finish:

 sub dword [_z80_ICount], 20
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1944+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1945+0 raze.inc
ddcb_65:
%line 1946+1 raze.inc

%line 1946+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@5693.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@5693.finish

..@5693.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@5693.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and zF, FLAG_C
 test dl, (1 << 4)

 jz ..@5692.bit_is_clear
 or zF, FLAG_H
 jmp ..@5692.finish

..@5692.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5692.finish:

 sub dword [_z80_ICount], 20
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1947+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1948+0 raze.inc
ddcb_66:
%line 1949+1 raze.inc

%line 1949+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@5703.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@5703.finish

..@5703.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@5703.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and zF, FLAG_C
 test dl, (1 << 4)

 jz ..@5702.bit_is_clear
 or zF, FLAG_H
 jmp ..@5702.finish

..@5702.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5702.finish:

 sub dword [_z80_ICount], 20
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1950+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1951+0 raze.inc
ddcb_67:
%line 1952+1 raze.inc

%line 1952+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@5713.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@5713.finish

..@5713.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@5713.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and zF, FLAG_C
 test dl, (1 << 4)

 jz ..@5712.bit_is_clear
 or zF, FLAG_H
 jmp ..@5712.finish

..@5712.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5712.finish:

 sub dword [_z80_ICount], 20
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1953+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1954+0 raze.inc
cb_68:
%line 1955+1 raze.inc
 and zF, FLAG_C
%line 1955+0 raze.inc
 test zB, (1 << 5)

 jz ..@5723.bit_is_clear
 or zF, FLAG_H
 jmp ..@5723.finish

..@5723.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5723.finish:

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1956+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1957+0 raze.inc
cb_69:
%line 1958+1 raze.inc
 and zF, FLAG_C
%line 1958+0 raze.inc
 test zC, (1 << 5)

 jz ..@5731.bit_is_clear
 or zF, FLAG_H
 jmp ..@5731.finish

..@5731.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5731.finish:

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1959+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1960+0 raze.inc
cb_6a:
%line 1961+1 raze.inc
 and zF, FLAG_C
%line 1961+0 raze.inc
 test zD, (1 << 5)

 jz ..@5739.bit_is_clear
 or zF, FLAG_H
 jmp ..@5739.finish

..@5739.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5739.finish:

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1962+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1963+0 raze.inc
cb_6b:
%line 1964+1 raze.inc
 and zF, FLAG_C
%line 1964+0 raze.inc
 test zE, (1 << 5)

 jz ..@5747.bit_is_clear
 or zF, FLAG_H
 jmp ..@5747.finish

..@5747.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5747.finish:

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1965+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1966+0 raze.inc
cb_6c:
%line 1967+1 raze.inc
 and zF, FLAG_C
%line 1967+0 raze.inc
 test zH, (1 << 5)

 jz ..@5755.bit_is_clear
 or zF, FLAG_H
 jmp ..@5755.finish

..@5755.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5755.finish:

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1968+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1969+0 raze.inc
cb_6d:
%line 1970+1 raze.inc
 and zF, FLAG_C
%line 1970+0 raze.inc
 test zL, (1 << 5)

 jz ..@5763.bit_is_clear
 or zF, FLAG_H
 jmp ..@5763.finish

..@5763.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5763.finish:

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1971+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1972+0 raze.inc
cb_6f:
%line 1973+1 raze.inc
 and zF, FLAG_C
%line 1973+0 raze.inc
 test zA, (1 << 5)

 jz ..@5771.bit_is_clear
 or zF, FLAG_H
 jmp ..@5771.finish

..@5771.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5771.finish:

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1974+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1975+0 raze.inc
cb_6e:
%line 1976+1 raze.inc
 and zF, FLAG_C
%line 1976+0 raze.inc
 mov edi, ezHL
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@5779.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@5779.finish

..@5779.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@5779.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]

 test dl, (1 << 5)






 jz ..@5778.bit_is_clear
 or zF, FLAG_H
 jmp ..@5778.finish

..@5778.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5778.finish:

 sub dword [_z80_ICount], 12
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1977+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1978+0 raze.inc
ddcb_68:
%line 1979+1 raze.inc

%line 1979+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@5789.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@5789.finish

..@5789.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@5789.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and zF, FLAG_C
 test dl, (1 << 5)

 jz ..@5788.bit_is_clear
 or zF, FLAG_H
 jmp ..@5788.finish

..@5788.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5788.finish:

 sub dword [_z80_ICount], 20
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1980+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1981+0 raze.inc
ddcb_69:
%line 1982+1 raze.inc

%line 1982+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@5799.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@5799.finish

..@5799.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@5799.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and zF, FLAG_C
 test dl, (1 << 5)

 jz ..@5798.bit_is_clear
 or zF, FLAG_H
 jmp ..@5798.finish

..@5798.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5798.finish:

 sub dword [_z80_ICount], 20
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1983+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1984+0 raze.inc
ddcb_6a:
%line 1985+1 raze.inc

%line 1985+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@5809.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@5809.finish

..@5809.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@5809.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and zF, FLAG_C
 test dl, (1 << 5)

 jz ..@5808.bit_is_clear
 or zF, FLAG_H
 jmp ..@5808.finish

..@5808.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5808.finish:

 sub dword [_z80_ICount], 20
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1986+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1987+0 raze.inc
ddcb_6b:
%line 1988+1 raze.inc

%line 1988+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@5819.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@5819.finish

..@5819.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@5819.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and zF, FLAG_C
 test dl, (1 << 5)

 jz ..@5818.bit_is_clear
 or zF, FLAG_H
 jmp ..@5818.finish

..@5818.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5818.finish:

 sub dword [_z80_ICount], 20
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1989+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1990+0 raze.inc
ddcb_6c:
%line 1991+1 raze.inc

%line 1991+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@5829.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@5829.finish

..@5829.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@5829.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and zF, FLAG_C
 test dl, (1 << 5)

 jz ..@5828.bit_is_clear
 or zF, FLAG_H
 jmp ..@5828.finish

..@5828.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5828.finish:

 sub dword [_z80_ICount], 20
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1992+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1993+0 raze.inc
ddcb_6d:
%line 1994+1 raze.inc

%line 1994+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@5839.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@5839.finish

..@5839.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@5839.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and zF, FLAG_C
 test dl, (1 << 5)

 jz ..@5838.bit_is_clear
 or zF, FLAG_H
 jmp ..@5838.finish

..@5838.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5838.finish:

 sub dword [_z80_ICount], 20
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1995+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1996+0 raze.inc
ddcb_6e:
%line 1997+1 raze.inc

%line 1997+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@5849.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@5849.finish

..@5849.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@5849.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and zF, FLAG_C
 test dl, (1 << 5)

 jz ..@5848.bit_is_clear
 or zF, FLAG_H
 jmp ..@5848.finish

..@5848.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5848.finish:

 sub dword [_z80_ICount], 20
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 1998+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 1999+0 raze.inc
ddcb_6f:
%line 2000+1 raze.inc

%line 2000+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@5859.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@5859.finish

..@5859.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@5859.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and zF, FLAG_C
 test dl, (1 << 5)

 jz ..@5858.bit_is_clear
 or zF, FLAG_H
 jmp ..@5858.finish

..@5858.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5858.finish:

 sub dword [_z80_ICount], 20
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2001+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2002+0 raze.inc
cb_70:
%line 2003+1 raze.inc
 and zF, FLAG_C
%line 2003+0 raze.inc
 test zB, (1 << 6)

 jz ..@5869.bit_is_clear
 or zF, FLAG_H
 jmp ..@5869.finish

..@5869.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5869.finish:

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2004+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2005+0 raze.inc
cb_71:
%line 2006+1 raze.inc
 and zF, FLAG_C
%line 2006+0 raze.inc
 test zC, (1 << 6)

 jz ..@5877.bit_is_clear
 or zF, FLAG_H
 jmp ..@5877.finish

..@5877.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5877.finish:

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2007+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2008+0 raze.inc
cb_72:
%line 2009+1 raze.inc
 and zF, FLAG_C
%line 2009+0 raze.inc
 test zD, (1 << 6)

 jz ..@5885.bit_is_clear
 or zF, FLAG_H
 jmp ..@5885.finish

..@5885.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5885.finish:

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2010+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2011+0 raze.inc
cb_73:
%line 2012+1 raze.inc
 and zF, FLAG_C
%line 2012+0 raze.inc
 test zE, (1 << 6)

 jz ..@5893.bit_is_clear
 or zF, FLAG_H
 jmp ..@5893.finish

..@5893.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5893.finish:

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2013+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2014+0 raze.inc
cb_74:
%line 2015+1 raze.inc
 and zF, FLAG_C
%line 2015+0 raze.inc
 test zH, (1 << 6)

 jz ..@5901.bit_is_clear
 or zF, FLAG_H
 jmp ..@5901.finish

..@5901.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5901.finish:

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2016+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2017+0 raze.inc
cb_75:
%line 2018+1 raze.inc
 and zF, FLAG_C
%line 2018+0 raze.inc
 test zL, (1 << 6)

 jz ..@5909.bit_is_clear
 or zF, FLAG_H
 jmp ..@5909.finish

..@5909.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5909.finish:

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2019+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2020+0 raze.inc
cb_77:
%line 2021+1 raze.inc
 and zF, FLAG_C
%line 2021+0 raze.inc
 test zA, (1 << 6)

 jz ..@5917.bit_is_clear
 or zF, FLAG_H
 jmp ..@5917.finish

..@5917.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5917.finish:

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2022+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2023+0 raze.inc
cb_76:
%line 2024+1 raze.inc
 and zF, FLAG_C
%line 2024+0 raze.inc
 mov edi, ezHL
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@5925.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@5925.finish

..@5925.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@5925.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]

 test dl, (1 << 6)






 jz ..@5924.bit_is_clear
 or zF, FLAG_H
 jmp ..@5924.finish

..@5924.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5924.finish:

 sub dword [_z80_ICount], 12
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2025+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2026+0 raze.inc
ddcb_70:
%line 2027+1 raze.inc

%line 2027+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@5935.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@5935.finish

..@5935.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@5935.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and zF, FLAG_C
 test dl, (1 << 6)

 jz ..@5934.bit_is_clear
 or zF, FLAG_H
 jmp ..@5934.finish

..@5934.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5934.finish:

 sub dword [_z80_ICount], 20
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2028+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2029+0 raze.inc
ddcb_71:
%line 2030+1 raze.inc

%line 2030+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@5945.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@5945.finish

..@5945.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@5945.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and zF, FLAG_C
 test dl, (1 << 6)

 jz ..@5944.bit_is_clear
 or zF, FLAG_H
 jmp ..@5944.finish

..@5944.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5944.finish:

 sub dword [_z80_ICount], 20
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2031+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2032+0 raze.inc
ddcb_72:
%line 2033+1 raze.inc

%line 2033+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@5955.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@5955.finish

..@5955.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@5955.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and zF, FLAG_C
 test dl, (1 << 6)

 jz ..@5954.bit_is_clear
 or zF, FLAG_H
 jmp ..@5954.finish

..@5954.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5954.finish:

 sub dword [_z80_ICount], 20
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2034+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2035+0 raze.inc
ddcb_73:
%line 2036+1 raze.inc

%line 2036+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@5965.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@5965.finish

..@5965.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@5965.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and zF, FLAG_C
 test dl, (1 << 6)

 jz ..@5964.bit_is_clear
 or zF, FLAG_H
 jmp ..@5964.finish

..@5964.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5964.finish:

 sub dword [_z80_ICount], 20
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2037+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2038+0 raze.inc
ddcb_74:
%line 2039+1 raze.inc

%line 2039+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@5975.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@5975.finish

..@5975.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@5975.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and zF, FLAG_C
 test dl, (1 << 6)

 jz ..@5974.bit_is_clear
 or zF, FLAG_H
 jmp ..@5974.finish

..@5974.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5974.finish:

 sub dword [_z80_ICount], 20
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2040+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2041+0 raze.inc
ddcb_75:
%line 2042+1 raze.inc

%line 2042+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@5985.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@5985.finish

..@5985.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@5985.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and zF, FLAG_C
 test dl, (1 << 6)

 jz ..@5984.bit_is_clear
 or zF, FLAG_H
 jmp ..@5984.finish

..@5984.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5984.finish:

 sub dword [_z80_ICount], 20
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2043+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2044+0 raze.inc
ddcb_76:
%line 2045+1 raze.inc

%line 2045+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@5995.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@5995.finish

..@5995.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@5995.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and zF, FLAG_C
 test dl, (1 << 6)

 jz ..@5994.bit_is_clear
 or zF, FLAG_H
 jmp ..@5994.finish

..@5994.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@5994.finish:

 sub dword [_z80_ICount], 20
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2046+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2047+0 raze.inc
ddcb_77:
%line 2048+1 raze.inc

%line 2048+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@6005.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@6005.finish

..@6005.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@6005.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and zF, FLAG_C
 test dl, (1 << 6)

 jz ..@6004.bit_is_clear
 or zF, FLAG_H
 jmp ..@6004.finish

..@6004.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@6004.finish:

 sub dword [_z80_ICount], 20
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2049+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2050+0 raze.inc
cb_78:
%line 2051+1 raze.inc
 and zF, FLAG_C
%line 2051+0 raze.inc
 test zB, (1 << 7)

 jz ..@6015.bit_is_clear
 or zF, FLAG_H|FLAG_S
 jmp ..@6015.finish

..@6015.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@6015.finish:

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2052+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2053+0 raze.inc
cb_79:
%line 2054+1 raze.inc
 and zF, FLAG_C
%line 2054+0 raze.inc
 test zC, (1 << 7)

 jz ..@6023.bit_is_clear
 or zF, FLAG_H|FLAG_S
 jmp ..@6023.finish

..@6023.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@6023.finish:

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2055+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2056+0 raze.inc
cb_7a:
%line 2057+1 raze.inc
 and zF, FLAG_C
%line 2057+0 raze.inc
 test zD, (1 << 7)

 jz ..@6031.bit_is_clear
 or zF, FLAG_H|FLAG_S
 jmp ..@6031.finish

..@6031.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@6031.finish:

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2058+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2059+0 raze.inc
cb_7b:
%line 2060+1 raze.inc
 and zF, FLAG_C
%line 2060+0 raze.inc
 test zE, (1 << 7)

 jz ..@6039.bit_is_clear
 or zF, FLAG_H|FLAG_S
 jmp ..@6039.finish

..@6039.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@6039.finish:

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2061+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2062+0 raze.inc
cb_7c:
%line 2063+1 raze.inc
 and zF, FLAG_C
%line 2063+0 raze.inc
 test zH, (1 << 7)

 jz ..@6047.bit_is_clear
 or zF, FLAG_H|FLAG_S
 jmp ..@6047.finish

..@6047.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@6047.finish:

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2064+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2065+0 raze.inc
cb_7d:
%line 2066+1 raze.inc
 and zF, FLAG_C
%line 2066+0 raze.inc
 test zL, (1 << 7)

 jz ..@6055.bit_is_clear
 or zF, FLAG_H|FLAG_S
 jmp ..@6055.finish

..@6055.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@6055.finish:

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2067+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2068+0 raze.inc
cb_7f:
%line 2069+1 raze.inc
 and zF, FLAG_C
%line 2069+0 raze.inc
 test zA, (1 << 7)

 jz ..@6063.bit_is_clear
 or zF, FLAG_H|FLAG_S
 jmp ..@6063.finish

..@6063.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@6063.finish:

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2070+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2071+0 raze.inc
cb_7e:
%line 2072+1 raze.inc
 and zF, FLAG_C
%line 2072+0 raze.inc
 mov edi, ezHL
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@6071.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@6071.finish

..@6071.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@6071.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]

 test dl, (1 << 7)






 jz ..@6070.bit_is_clear
 or zF, FLAG_H|FLAG_S
 jmp ..@6070.finish

..@6070.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@6070.finish:

 sub dword [_z80_ICount], 12
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2073+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2074+0 raze.inc
ddcb_78:
%line 2075+1 raze.inc

%line 2075+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@6081.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@6081.finish

..@6081.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@6081.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and zF, FLAG_C
 test dl, (1 << 7)

 jz ..@6080.bit_is_clear
 or zF, FLAG_H|FLAG_S
 jmp ..@6080.finish

..@6080.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@6080.finish:

 sub dword [_z80_ICount], 20
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2076+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2077+0 raze.inc
ddcb_79:
%line 2078+1 raze.inc

%line 2078+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@6091.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@6091.finish

..@6091.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@6091.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and zF, FLAG_C
 test dl, (1 << 7)

 jz ..@6090.bit_is_clear
 or zF, FLAG_H|FLAG_S
 jmp ..@6090.finish

..@6090.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@6090.finish:

 sub dword [_z80_ICount], 20
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2079+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2080+0 raze.inc
ddcb_7a:
%line 2081+1 raze.inc

%line 2081+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@6101.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@6101.finish

..@6101.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@6101.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and zF, FLAG_C
 test dl, (1 << 7)

 jz ..@6100.bit_is_clear
 or zF, FLAG_H|FLAG_S
 jmp ..@6100.finish

..@6100.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@6100.finish:

 sub dword [_z80_ICount], 20
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2082+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2083+0 raze.inc
ddcb_7b:
%line 2084+1 raze.inc

%line 2084+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@6111.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@6111.finish

..@6111.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@6111.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and zF, FLAG_C
 test dl, (1 << 7)

 jz ..@6110.bit_is_clear
 or zF, FLAG_H|FLAG_S
 jmp ..@6110.finish

..@6110.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@6110.finish:

 sub dword [_z80_ICount], 20
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2085+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2086+0 raze.inc
ddcb_7c:
%line 2087+1 raze.inc

%line 2087+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@6121.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@6121.finish

..@6121.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@6121.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and zF, FLAG_C
 test dl, (1 << 7)

 jz ..@6120.bit_is_clear
 or zF, FLAG_H|FLAG_S
 jmp ..@6120.finish

..@6120.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@6120.finish:

 sub dword [_z80_ICount], 20
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2088+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2089+0 raze.inc
ddcb_7d:
%line 2090+1 raze.inc

%line 2090+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@6131.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@6131.finish

..@6131.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@6131.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and zF, FLAG_C
 test dl, (1 << 7)

 jz ..@6130.bit_is_clear
 or zF, FLAG_H|FLAG_S
 jmp ..@6130.finish

..@6130.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@6130.finish:

 sub dword [_z80_ICount], 20
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2091+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2092+0 raze.inc
ddcb_7e:
%line 2093+1 raze.inc

%line 2093+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@6141.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@6141.finish

..@6141.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@6141.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and zF, FLAG_C
 test dl, (1 << 7)

 jz ..@6140.bit_is_clear
 or zF, FLAG_H|FLAG_S
 jmp ..@6140.finish

..@6140.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@6140.finish:

 sub dword [_z80_ICount], 20
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2094+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2095+0 raze.inc
ddcb_7f:
%line 2096+1 raze.inc

%line 2096+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@6151.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@6151.finish

..@6151.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@6151.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and zF, FLAG_C
 test dl, (1 << 7)

 jz ..@6150.bit_is_clear
 or zF, FLAG_H|FLAG_S
 jmp ..@6150.finish

..@6150.bit_is_clear:
 or zF, FLAG_H|FLAG_Z|FLAG_P
..@6150.finish:

 sub dword [_z80_ICount], 20
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2097+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2098+0 raze.inc
cb_80:
%line 2099+1 raze.inc
 and zB, ~(1 << 0)
%line 2099+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2100+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2101+0 raze.inc
cb_81:
%line 2102+1 raze.inc
 and zC, ~(1 << 0)
%line 2102+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2103+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2104+0 raze.inc
cb_82:
%line 2105+1 raze.inc
 and zD, ~(1 << 0)
%line 2105+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2106+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2107+0 raze.inc
cb_83:
%line 2108+1 raze.inc
 and zE, ~(1 << 0)
%line 2108+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2109+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2110+0 raze.inc
cb_84:
%line 2111+1 raze.inc
 and zH, ~(1 << 0)
%line 2111+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2112+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2113+0 raze.inc
cb_85:
%line 2114+1 raze.inc
 and zL, ~(1 << 0)
%line 2114+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2115+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2116+0 raze.inc
cb_87:
%line 2117+1 raze.inc
 and zA, ~(1 << 0)
%line 2117+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2118+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2119+0 raze.inc
cb_86:
%line 2120+1 raze.inc
 mov edi, ezHL
%line 2120+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@6217.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@6217.finish

..@6217.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@6217.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and dl, ~(1 << 0)
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@6221.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@6221.finish

..@6221.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@6221.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 15
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2121+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2122+0 raze.inc
ddcb_80:
%line 2123+1 raze.inc
 mov [_z80_AF], ezAF
%line 2123+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@6231.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@6231.finish

..@6231.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@6231.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and dl, ~(1 << 0)
 mov zB, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@6235.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@6235.finish

..@6235.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@6235.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2124+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2125+0 raze.inc
ddcb_81:
%line 2126+1 raze.inc
 mov [_z80_AF], ezAF
%line 2126+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@6245.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@6245.finish

..@6245.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@6245.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and dl, ~(1 << 0)
 mov zC, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@6249.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@6249.finish

..@6249.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@6249.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2127+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2128+0 raze.inc
ddcb_82:
%line 2129+1 raze.inc
 mov [_z80_AF], ezAF
%line 2129+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@6259.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@6259.finish

..@6259.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@6259.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and dl, ~(1 << 0)
 mov zD, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@6263.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@6263.finish

..@6263.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@6263.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2130+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2131+0 raze.inc
ddcb_83:
%line 2132+1 raze.inc
 mov [_z80_AF], ezAF
%line 2132+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@6273.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@6273.finish

..@6273.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@6273.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and dl, ~(1 << 0)
 mov zE, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@6277.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@6277.finish

..@6277.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@6277.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2133+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2134+0 raze.inc
ddcb_84:
%line 2135+1 raze.inc
 mov [_z80_AF], ezAF
%line 2135+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@6287.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@6287.finish

..@6287.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@6287.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and dl, ~(1 << 0)
 mov zH, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@6291.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@6291.finish

..@6291.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@6291.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2136+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2137+0 raze.inc
ddcb_85:
%line 2138+1 raze.inc
 mov [_z80_AF], ezAF
%line 2138+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@6301.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@6301.finish

..@6301.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@6301.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and dl, ~(1 << 0)
 mov zL, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@6305.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@6305.finish

..@6305.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@6305.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2139+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2140+0 raze.inc
ddcb_86:
%line 2141+1 raze.inc
 mov [_z80_AF], ezAF
%line 2141+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@6315.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@6315.finish

..@6315.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@6315.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and dl, ~(1 << 0)
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@6319.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@6319.finish

..@6319.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@6319.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2142+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2143+0 raze.inc
ddcb_87:
%line 2144+1 raze.inc
 mov [_z80_AF], ezAF
%line 2144+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@6329.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@6329.finish

..@6329.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@6329.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and dl, ~(1 << 0)
 mov zA, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@6333.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@6333.finish

..@6333.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@6333.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2145+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2146+0 raze.inc
cb_88:
%line 2147+1 raze.inc
 and zB, ~(1 << 1)
%line 2147+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2148+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2149+0 raze.inc
cb_89:
%line 2150+1 raze.inc
 and zC, ~(1 << 1)
%line 2150+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2151+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2152+0 raze.inc
cb_8a:
%line 2153+1 raze.inc
 and zD, ~(1 << 1)
%line 2153+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2154+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2155+0 raze.inc
cb_8b:
%line 2156+1 raze.inc
 and zE, ~(1 << 1)
%line 2156+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2157+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2158+0 raze.inc
cb_8c:
%line 2159+1 raze.inc
 and zH, ~(1 << 1)
%line 2159+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2160+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2161+0 raze.inc
cb_8d:
%line 2162+1 raze.inc
 and zL, ~(1 << 1)
%line 2162+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2163+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2164+0 raze.inc
cb_8f:
%line 2165+1 raze.inc
 and zA, ~(1 << 1)
%line 2165+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2166+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2167+0 raze.inc
cb_8e:
%line 2168+1 raze.inc
 mov edi, ezHL
%line 2168+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@6399.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@6399.finish

..@6399.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@6399.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and dl, ~(1 << 1)
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@6403.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@6403.finish

..@6403.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@6403.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 15
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2169+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2170+0 raze.inc
ddcb_88:
%line 2171+1 raze.inc
 mov [_z80_AF], ezAF
%line 2171+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@6413.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@6413.finish

..@6413.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@6413.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and dl, ~(1 << 1)
 mov zB, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@6417.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@6417.finish

..@6417.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@6417.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2172+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2173+0 raze.inc
ddcb_89:
%line 2174+1 raze.inc
 mov [_z80_AF], ezAF
%line 2174+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@6427.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@6427.finish

..@6427.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@6427.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and dl, ~(1 << 1)
 mov zC, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@6431.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@6431.finish

..@6431.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@6431.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2175+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2176+0 raze.inc
ddcb_8a:
%line 2177+1 raze.inc
 mov [_z80_AF], ezAF
%line 2177+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@6441.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@6441.finish

..@6441.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@6441.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and dl, ~(1 << 1)
 mov zD, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@6445.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@6445.finish

..@6445.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@6445.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2178+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2179+0 raze.inc
ddcb_8b:
%line 2180+1 raze.inc
 mov [_z80_AF], ezAF
%line 2180+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@6455.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@6455.finish

..@6455.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@6455.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and dl, ~(1 << 1)
 mov zE, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@6459.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@6459.finish

..@6459.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@6459.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2181+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2182+0 raze.inc
ddcb_8c:
%line 2183+1 raze.inc
 mov [_z80_AF], ezAF
%line 2183+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@6469.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@6469.finish

..@6469.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@6469.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and dl, ~(1 << 1)
 mov zH, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@6473.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@6473.finish

..@6473.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@6473.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2184+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2185+0 raze.inc
ddcb_8d:
%line 2186+1 raze.inc
 mov [_z80_AF], ezAF
%line 2186+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@6483.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@6483.finish

..@6483.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@6483.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and dl, ~(1 << 1)
 mov zL, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@6487.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@6487.finish

..@6487.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@6487.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2187+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2188+0 raze.inc
ddcb_8e:
%line 2189+1 raze.inc
 mov [_z80_AF], ezAF
%line 2189+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@6497.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@6497.finish

..@6497.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@6497.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and dl, ~(1 << 1)
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@6501.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@6501.finish

..@6501.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@6501.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2190+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2191+0 raze.inc
ddcb_8f:
%line 2192+1 raze.inc
 mov [_z80_AF], ezAF
%line 2192+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@6511.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@6511.finish

..@6511.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@6511.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and dl, ~(1 << 1)
 mov zA, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@6515.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@6515.finish

..@6515.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@6515.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2193+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2194+0 raze.inc
cb_90:
%line 2195+1 raze.inc
 and zB, ~(1 << 2)
%line 2195+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2196+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2197+0 raze.inc
cb_91:
%line 2198+1 raze.inc
 and zC, ~(1 << 2)
%line 2198+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2199+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2200+0 raze.inc
cb_92:
%line 2201+1 raze.inc
 and zD, ~(1 << 2)
%line 2201+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2202+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2203+0 raze.inc
cb_93:
%line 2204+1 raze.inc
 and zE, ~(1 << 2)
%line 2204+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2205+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2206+0 raze.inc
cb_94:
%line 2207+1 raze.inc
 and zH, ~(1 << 2)
%line 2207+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2208+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2209+0 raze.inc
cb_95:
%line 2210+1 raze.inc
 and zL, ~(1 << 2)
%line 2210+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2211+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2212+0 raze.inc
cb_97:
%line 2213+1 raze.inc
 and zA, ~(1 << 2)
%line 2213+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2214+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2215+0 raze.inc
cb_96:
%line 2216+1 raze.inc
 mov edi, ezHL
%line 2216+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@6581.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@6581.finish

..@6581.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@6581.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and dl, ~(1 << 2)
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@6585.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@6585.finish

..@6585.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@6585.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 15
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2217+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2218+0 raze.inc
ddcb_90:
%line 2219+1 raze.inc
 mov [_z80_AF], ezAF
%line 2219+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@6595.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@6595.finish

..@6595.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@6595.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and dl, ~(1 << 2)
 mov zB, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@6599.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@6599.finish

..@6599.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@6599.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2220+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2221+0 raze.inc
ddcb_91:
%line 2222+1 raze.inc
 mov [_z80_AF], ezAF
%line 2222+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@6609.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@6609.finish

..@6609.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@6609.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and dl, ~(1 << 2)
 mov zC, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@6613.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@6613.finish

..@6613.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@6613.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2223+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2224+0 raze.inc
ddcb_92:
%line 2225+1 raze.inc
 mov [_z80_AF], ezAF
%line 2225+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@6623.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@6623.finish

..@6623.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@6623.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and dl, ~(1 << 2)
 mov zD, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@6627.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@6627.finish

..@6627.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@6627.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2226+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2227+0 raze.inc
ddcb_93:
%line 2228+1 raze.inc
 mov [_z80_AF], ezAF
%line 2228+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@6637.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@6637.finish

..@6637.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@6637.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and dl, ~(1 << 2)
 mov zE, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@6641.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@6641.finish

..@6641.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@6641.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2229+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2230+0 raze.inc
ddcb_94:
%line 2231+1 raze.inc
 mov [_z80_AF], ezAF
%line 2231+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@6651.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@6651.finish

..@6651.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@6651.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and dl, ~(1 << 2)
 mov zH, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@6655.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@6655.finish

..@6655.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@6655.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2232+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2233+0 raze.inc
ddcb_95:
%line 2234+1 raze.inc
 mov [_z80_AF], ezAF
%line 2234+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@6665.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@6665.finish

..@6665.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@6665.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and dl, ~(1 << 2)
 mov zL, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@6669.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@6669.finish

..@6669.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@6669.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2235+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2236+0 raze.inc
ddcb_96:
%line 2237+1 raze.inc
 mov [_z80_AF], ezAF
%line 2237+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@6679.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@6679.finish

..@6679.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@6679.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and dl, ~(1 << 2)
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@6683.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@6683.finish

..@6683.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@6683.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2238+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2239+0 raze.inc
ddcb_97:
%line 2240+1 raze.inc
 mov [_z80_AF], ezAF
%line 2240+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@6693.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@6693.finish

..@6693.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@6693.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and dl, ~(1 << 2)
 mov zA, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@6697.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@6697.finish

..@6697.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@6697.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2241+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2242+0 raze.inc
cb_98:
%line 2243+1 raze.inc
 and zB, ~(1 << 3)
%line 2243+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2244+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2245+0 raze.inc
cb_99:
%line 2246+1 raze.inc
 and zC, ~(1 << 3)
%line 2246+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2247+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2248+0 raze.inc
cb_9a:
%line 2249+1 raze.inc
 and zD, ~(1 << 3)
%line 2249+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2250+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2251+0 raze.inc
cb_9b:
%line 2252+1 raze.inc
 and zE, ~(1 << 3)
%line 2252+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2253+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2254+0 raze.inc
cb_9c:
%line 2255+1 raze.inc
 and zH, ~(1 << 3)
%line 2255+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2256+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2257+0 raze.inc
cb_9d:
%line 2258+1 raze.inc
 and zL, ~(1 << 3)
%line 2258+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2259+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2260+0 raze.inc
cb_9f:
%line 2261+1 raze.inc
 and zA, ~(1 << 3)
%line 2261+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2262+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2263+0 raze.inc
cb_9e:
%line 2264+1 raze.inc
 mov edi, ezHL
%line 2264+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@6763.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@6763.finish

..@6763.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@6763.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and dl, ~(1 << 3)
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@6767.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@6767.finish

..@6767.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@6767.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 15
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2265+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2266+0 raze.inc
ddcb_98:
%line 2267+1 raze.inc
 mov [_z80_AF], ezAF
%line 2267+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@6777.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@6777.finish

..@6777.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@6777.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and dl, ~(1 << 3)
 mov zB, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@6781.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@6781.finish

..@6781.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@6781.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2268+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2269+0 raze.inc
ddcb_99:
%line 2270+1 raze.inc
 mov [_z80_AF], ezAF
%line 2270+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@6791.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@6791.finish

..@6791.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@6791.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and dl, ~(1 << 3)
 mov zC, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@6795.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@6795.finish

..@6795.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@6795.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2271+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2272+0 raze.inc
ddcb_9a:
%line 2273+1 raze.inc
 mov [_z80_AF], ezAF
%line 2273+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@6805.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@6805.finish

..@6805.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@6805.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and dl, ~(1 << 3)
 mov zD, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@6809.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@6809.finish

..@6809.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@6809.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2274+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2275+0 raze.inc
ddcb_9b:
%line 2276+1 raze.inc
 mov [_z80_AF], ezAF
%line 2276+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@6819.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@6819.finish

..@6819.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@6819.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and dl, ~(1 << 3)
 mov zE, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@6823.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@6823.finish

..@6823.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@6823.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2277+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2278+0 raze.inc
ddcb_9c:
%line 2279+1 raze.inc
 mov [_z80_AF], ezAF
%line 2279+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@6833.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@6833.finish

..@6833.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@6833.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and dl, ~(1 << 3)
 mov zH, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@6837.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@6837.finish

..@6837.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@6837.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2280+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2281+0 raze.inc
ddcb_9d:
%line 2282+1 raze.inc
 mov [_z80_AF], ezAF
%line 2282+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@6847.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@6847.finish

..@6847.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@6847.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and dl, ~(1 << 3)
 mov zL, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@6851.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@6851.finish

..@6851.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@6851.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2283+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2284+0 raze.inc
ddcb_9e:
%line 2285+1 raze.inc
 mov [_z80_AF], ezAF
%line 2285+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@6861.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@6861.finish

..@6861.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@6861.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and dl, ~(1 << 3)
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@6865.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@6865.finish

..@6865.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@6865.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2286+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2287+0 raze.inc
ddcb_9f:
%line 2288+1 raze.inc
 mov [_z80_AF], ezAF
%line 2288+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@6875.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@6875.finish

..@6875.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@6875.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and dl, ~(1 << 3)
 mov zA, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@6879.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@6879.finish

..@6879.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@6879.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2289+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2290+0 raze.inc
cb_a0:
%line 2291+1 raze.inc
 and zB, ~(1 << 4)
%line 2291+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2292+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2293+0 raze.inc
cb_a1:
%line 2294+1 raze.inc
 and zC, ~(1 << 4)
%line 2294+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2295+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2296+0 raze.inc
cb_a2:
%line 2297+1 raze.inc
 and zD, ~(1 << 4)
%line 2297+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2298+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2299+0 raze.inc
cb_a3:
%line 2300+1 raze.inc
 and zE, ~(1 << 4)
%line 2300+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2301+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2302+0 raze.inc
cb_a4:
%line 2303+1 raze.inc
 and zH, ~(1 << 4)
%line 2303+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2304+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2305+0 raze.inc
cb_a5:
%line 2306+1 raze.inc
 and zL, ~(1 << 4)
%line 2306+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2307+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2308+0 raze.inc
cb_a7:
%line 2309+1 raze.inc
 and zA, ~(1 << 4)
%line 2309+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2310+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2311+0 raze.inc
cb_a6:
%line 2312+1 raze.inc
 mov edi, ezHL
%line 2312+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@6945.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@6945.finish

..@6945.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@6945.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and dl, ~(1 << 4)
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@6949.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@6949.finish

..@6949.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@6949.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 15
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2313+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2314+0 raze.inc
ddcb_a0:
%line 2315+1 raze.inc
 mov [_z80_AF], ezAF
%line 2315+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@6959.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@6959.finish

..@6959.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@6959.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and dl, ~(1 << 4)
 mov zB, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@6963.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@6963.finish

..@6963.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@6963.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2316+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2317+0 raze.inc
ddcb_a1:
%line 2318+1 raze.inc
 mov [_z80_AF], ezAF
%line 2318+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@6973.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@6973.finish

..@6973.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@6973.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and dl, ~(1 << 4)
 mov zC, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@6977.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@6977.finish

..@6977.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@6977.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2319+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2320+0 raze.inc
ddcb_a2:
%line 2321+1 raze.inc
 mov [_z80_AF], ezAF
%line 2321+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@6987.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@6987.finish

..@6987.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@6987.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and dl, ~(1 << 4)
 mov zD, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@6991.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@6991.finish

..@6991.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@6991.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2322+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2323+0 raze.inc
ddcb_a3:
%line 2324+1 raze.inc
 mov [_z80_AF], ezAF
%line 2324+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@7001.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@7001.finish

..@7001.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@7001.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and dl, ~(1 << 4)
 mov zE, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@7005.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@7005.finish

..@7005.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@7005.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2325+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2326+0 raze.inc
ddcb_a4:
%line 2327+1 raze.inc
 mov [_z80_AF], ezAF
%line 2327+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@7015.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@7015.finish

..@7015.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@7015.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and dl, ~(1 << 4)
 mov zH, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@7019.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@7019.finish

..@7019.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@7019.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2328+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2329+0 raze.inc
ddcb_a5:
%line 2330+1 raze.inc
 mov [_z80_AF], ezAF
%line 2330+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@7029.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@7029.finish

..@7029.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@7029.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and dl, ~(1 << 4)
 mov zL, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@7033.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@7033.finish

..@7033.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@7033.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2331+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2332+0 raze.inc
ddcb_a6:
%line 2333+1 raze.inc
 mov [_z80_AF], ezAF
%line 2333+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@7043.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@7043.finish

..@7043.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@7043.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and dl, ~(1 << 4)
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@7047.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@7047.finish

..@7047.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@7047.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2334+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2335+0 raze.inc
ddcb_a7:
%line 2336+1 raze.inc
 mov [_z80_AF], ezAF
%line 2336+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@7057.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@7057.finish

..@7057.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@7057.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and dl, ~(1 << 4)
 mov zA, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@7061.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@7061.finish

..@7061.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@7061.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2337+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2338+0 raze.inc
cb_a8:
%line 2339+1 raze.inc
 and zB, ~(1 << 5)
%line 2339+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2340+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2341+0 raze.inc
cb_a9:
%line 2342+1 raze.inc
 and zC, ~(1 << 5)
%line 2342+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2343+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2344+0 raze.inc
cb_aa:
%line 2345+1 raze.inc
 and zD, ~(1 << 5)
%line 2345+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2346+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2347+0 raze.inc
cb_ab:
%line 2348+1 raze.inc
 and zE, ~(1 << 5)
%line 2348+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2349+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2350+0 raze.inc
cb_ac:
%line 2351+1 raze.inc
 and zH, ~(1 << 5)
%line 2351+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2352+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2353+0 raze.inc
cb_ad:
%line 2354+1 raze.inc
 and zL, ~(1 << 5)
%line 2354+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2355+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2356+0 raze.inc
cb_af:
%line 2357+1 raze.inc
 and zA, ~(1 << 5)
%line 2357+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2358+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2359+0 raze.inc
cb_ae:
%line 2360+1 raze.inc
 mov edi, ezHL
%line 2360+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@7127.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@7127.finish

..@7127.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@7127.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and dl, ~(1 << 5)
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@7131.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@7131.finish

..@7131.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@7131.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 15
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2361+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2362+0 raze.inc
ddcb_a8:
%line 2363+1 raze.inc
 mov [_z80_AF], ezAF
%line 2363+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@7141.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@7141.finish

..@7141.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@7141.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and dl, ~(1 << 5)
 mov zB, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@7145.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@7145.finish

..@7145.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@7145.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2364+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2365+0 raze.inc
ddcb_a9:
%line 2366+1 raze.inc
 mov [_z80_AF], ezAF
%line 2366+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@7155.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@7155.finish

..@7155.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@7155.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and dl, ~(1 << 5)
 mov zC, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@7159.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@7159.finish

..@7159.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@7159.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2367+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2368+0 raze.inc
ddcb_aa:
%line 2369+1 raze.inc
 mov [_z80_AF], ezAF
%line 2369+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@7169.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@7169.finish

..@7169.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@7169.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and dl, ~(1 << 5)
 mov zD, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@7173.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@7173.finish

..@7173.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@7173.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2370+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2371+0 raze.inc
ddcb_ab:
%line 2372+1 raze.inc
 mov [_z80_AF], ezAF
%line 2372+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@7183.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@7183.finish

..@7183.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@7183.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and dl, ~(1 << 5)
 mov zE, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@7187.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@7187.finish

..@7187.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@7187.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2373+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2374+0 raze.inc
ddcb_ac:
%line 2375+1 raze.inc
 mov [_z80_AF], ezAF
%line 2375+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@7197.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@7197.finish

..@7197.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@7197.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and dl, ~(1 << 5)
 mov zH, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@7201.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@7201.finish

..@7201.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@7201.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2376+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2377+0 raze.inc
ddcb_ad:
%line 2378+1 raze.inc
 mov [_z80_AF], ezAF
%line 2378+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@7211.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@7211.finish

..@7211.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@7211.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and dl, ~(1 << 5)
 mov zL, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@7215.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@7215.finish

..@7215.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@7215.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2379+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2380+0 raze.inc
ddcb_ae:
%line 2381+1 raze.inc
 mov [_z80_AF], ezAF
%line 2381+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@7225.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@7225.finish

..@7225.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@7225.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and dl, ~(1 << 5)
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@7229.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@7229.finish

..@7229.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@7229.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2382+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2383+0 raze.inc
ddcb_af:
%line 2384+1 raze.inc
 mov [_z80_AF], ezAF
%line 2384+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@7239.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@7239.finish

..@7239.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@7239.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and dl, ~(1 << 5)
 mov zA, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@7243.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@7243.finish

..@7243.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@7243.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2385+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2386+0 raze.inc
cb_b0:
%line 2387+1 raze.inc
 and zB, ~(1 << 6)
%line 2387+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2388+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2389+0 raze.inc
cb_b1:
%line 2390+1 raze.inc
 and zC, ~(1 << 6)
%line 2390+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2391+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2392+0 raze.inc
cb_b2:
%line 2393+1 raze.inc
 and zD, ~(1 << 6)
%line 2393+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2394+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2395+0 raze.inc
cb_b3:
%line 2396+1 raze.inc
 and zE, ~(1 << 6)
%line 2396+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2397+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2398+0 raze.inc
cb_b4:
%line 2399+1 raze.inc
 and zH, ~(1 << 6)
%line 2399+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2400+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2401+0 raze.inc
cb_b5:
%line 2402+1 raze.inc
 and zL, ~(1 << 6)
%line 2402+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2403+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2404+0 raze.inc
cb_b7:
%line 2405+1 raze.inc
 and zA, ~(1 << 6)
%line 2405+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2406+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2407+0 raze.inc
cb_b6:
%line 2408+1 raze.inc
 mov edi, ezHL
%line 2408+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@7309.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@7309.finish

..@7309.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@7309.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and dl, ~(1 << 6)
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@7313.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@7313.finish

..@7313.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@7313.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 15
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2409+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2410+0 raze.inc
ddcb_b0:
%line 2411+1 raze.inc
 mov [_z80_AF], ezAF
%line 2411+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@7323.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@7323.finish

..@7323.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@7323.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and dl, ~(1 << 6)
 mov zB, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@7327.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@7327.finish

..@7327.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@7327.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2412+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2413+0 raze.inc
ddcb_b1:
%line 2414+1 raze.inc
 mov [_z80_AF], ezAF
%line 2414+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@7337.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@7337.finish

..@7337.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@7337.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and dl, ~(1 << 6)
 mov zC, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@7341.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@7341.finish

..@7341.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@7341.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2415+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2416+0 raze.inc
ddcb_b2:
%line 2417+1 raze.inc
 mov [_z80_AF], ezAF
%line 2417+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@7351.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@7351.finish

..@7351.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@7351.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and dl, ~(1 << 6)
 mov zD, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@7355.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@7355.finish

..@7355.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@7355.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2418+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2419+0 raze.inc
ddcb_b3:
%line 2420+1 raze.inc
 mov [_z80_AF], ezAF
%line 2420+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@7365.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@7365.finish

..@7365.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@7365.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and dl, ~(1 << 6)
 mov zE, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@7369.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@7369.finish

..@7369.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@7369.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2421+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2422+0 raze.inc
ddcb_b4:
%line 2423+1 raze.inc
 mov [_z80_AF], ezAF
%line 2423+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@7379.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@7379.finish

..@7379.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@7379.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and dl, ~(1 << 6)
 mov zH, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@7383.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@7383.finish

..@7383.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@7383.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2424+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2425+0 raze.inc
ddcb_b5:
%line 2426+1 raze.inc
 mov [_z80_AF], ezAF
%line 2426+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@7393.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@7393.finish

..@7393.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@7393.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and dl, ~(1 << 6)
 mov zL, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@7397.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@7397.finish

..@7397.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@7397.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2427+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2428+0 raze.inc
ddcb_b6:
%line 2429+1 raze.inc
 mov [_z80_AF], ezAF
%line 2429+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@7407.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@7407.finish

..@7407.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@7407.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and dl, ~(1 << 6)
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@7411.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@7411.finish

..@7411.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@7411.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2430+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2431+0 raze.inc
ddcb_b7:
%line 2432+1 raze.inc
 mov [_z80_AF], ezAF
%line 2432+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@7421.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@7421.finish

..@7421.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@7421.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and dl, ~(1 << 6)
 mov zA, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@7425.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@7425.finish

..@7425.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@7425.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2433+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2434+0 raze.inc
cb_b8:
%line 2435+1 raze.inc
 and zB, ~(1 << 7)
%line 2435+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2436+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2437+0 raze.inc
cb_b9:
%line 2438+1 raze.inc
 and zC, ~(1 << 7)
%line 2438+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2439+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2440+0 raze.inc
cb_ba:
%line 2441+1 raze.inc
 and zD, ~(1 << 7)
%line 2441+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2442+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2443+0 raze.inc
cb_bb:
%line 2444+1 raze.inc
 and zE, ~(1 << 7)
%line 2444+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2445+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2446+0 raze.inc
cb_bc:
%line 2447+1 raze.inc
 and zH, ~(1 << 7)
%line 2447+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2448+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2449+0 raze.inc
cb_bd:
%line 2450+1 raze.inc
 and zL, ~(1 << 7)
%line 2450+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2451+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2452+0 raze.inc
cb_bf:
%line 2453+1 raze.inc
 and zA, ~(1 << 7)
%line 2453+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2454+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2455+0 raze.inc
cb_be:
%line 2456+1 raze.inc
 mov edi, ezHL
%line 2456+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@7491.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@7491.finish

..@7491.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@7491.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and dl, ~(1 << 7)
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@7495.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@7495.finish

..@7495.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@7495.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 15
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2457+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2458+0 raze.inc
ddcb_b8:
%line 2459+1 raze.inc
 mov [_z80_AF], ezAF
%line 2459+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@7505.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@7505.finish

..@7505.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@7505.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and dl, ~(1 << 7)
 mov zB, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@7509.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@7509.finish

..@7509.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@7509.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2460+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2461+0 raze.inc
ddcb_b9:
%line 2462+1 raze.inc
 mov [_z80_AF], ezAF
%line 2462+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@7519.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@7519.finish

..@7519.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@7519.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and dl, ~(1 << 7)
 mov zC, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@7523.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@7523.finish

..@7523.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@7523.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2463+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2464+0 raze.inc
ddcb_ba:
%line 2465+1 raze.inc
 mov [_z80_AF], ezAF
%line 2465+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@7533.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@7533.finish

..@7533.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@7533.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and dl, ~(1 << 7)
 mov zD, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@7537.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@7537.finish

..@7537.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@7537.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2466+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2467+0 raze.inc
ddcb_bb:
%line 2468+1 raze.inc
 mov [_z80_AF], ezAF
%line 2468+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@7547.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@7547.finish

..@7547.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@7547.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and dl, ~(1 << 7)
 mov zE, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@7551.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@7551.finish

..@7551.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@7551.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2469+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2470+0 raze.inc
ddcb_bc:
%line 2471+1 raze.inc
 mov [_z80_AF], ezAF
%line 2471+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@7561.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@7561.finish

..@7561.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@7561.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and dl, ~(1 << 7)
 mov zH, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@7565.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@7565.finish

..@7565.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@7565.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2472+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2473+0 raze.inc
ddcb_bd:
%line 2474+1 raze.inc
 mov [_z80_AF], ezAF
%line 2474+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@7575.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@7575.finish

..@7575.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@7575.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and dl, ~(1 << 7)
 mov zL, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@7579.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@7579.finish

..@7579.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@7579.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2475+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2476+0 raze.inc
ddcb_be:
%line 2477+1 raze.inc
 mov [_z80_AF], ezAF
%line 2477+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@7589.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@7589.finish

..@7589.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@7589.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and dl, ~(1 << 7)
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@7593.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@7593.finish

..@7593.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@7593.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2478+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2479+0 raze.inc
ddcb_bf:
%line 2480+1 raze.inc
 mov [_z80_AF], ezAF
%line 2480+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@7603.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@7603.finish

..@7603.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@7603.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 and dl, ~(1 << 7)
 mov zA, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@7607.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@7607.finish

..@7607.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@7607.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2481+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2482+0 raze.inc
cb_c0:
%line 2483+1 raze.inc
 or zB, (1 << 0)
%line 2483+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2484+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2485+0 raze.inc
cb_c1:
%line 2486+1 raze.inc
 or zC, (1 << 0)
%line 2486+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2487+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2488+0 raze.inc
cb_c2:
%line 2489+1 raze.inc
 or zD, (1 << 0)
%line 2489+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2490+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2491+0 raze.inc
cb_c3:
%line 2492+1 raze.inc
 or zE, (1 << 0)
%line 2492+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2493+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2494+0 raze.inc
cb_c4:
%line 2495+1 raze.inc
 or zH, (1 << 0)
%line 2495+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2496+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2497+0 raze.inc
cb_c5:
%line 2498+1 raze.inc
 or zL, (1 << 0)
%line 2498+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2499+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2500+0 raze.inc
cb_c7:
%line 2501+1 raze.inc
 or zA, (1 << 0)
%line 2501+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2502+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2503+0 raze.inc
cb_c6:
%line 2504+1 raze.inc
 mov edi, ezHL
%line 2504+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@7673.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@7673.finish

..@7673.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@7673.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 or dl, (1 << 0)
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@7677.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@7677.finish

..@7677.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@7677.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 15
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2505+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2506+0 raze.inc
ddcb_c0:
%line 2507+1 raze.inc
 mov [_z80_AF], ezAF
%line 2507+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@7687.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@7687.finish

..@7687.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@7687.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 or dl, (1 << 0)
 mov zB, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@7691.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@7691.finish

..@7691.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@7691.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2508+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2509+0 raze.inc
ddcb_c1:
%line 2510+1 raze.inc
 mov [_z80_AF], ezAF
%line 2510+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@7701.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@7701.finish

..@7701.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@7701.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 or dl, (1 << 0)
 mov zC, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@7705.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@7705.finish

..@7705.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@7705.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2511+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2512+0 raze.inc
ddcb_c2:
%line 2513+1 raze.inc
 mov [_z80_AF], ezAF
%line 2513+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@7715.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@7715.finish

..@7715.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@7715.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 or dl, (1 << 0)
 mov zD, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@7719.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@7719.finish

..@7719.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@7719.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2514+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2515+0 raze.inc
ddcb_c3:
%line 2516+1 raze.inc
 mov [_z80_AF], ezAF
%line 2516+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@7729.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@7729.finish

..@7729.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@7729.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 or dl, (1 << 0)
 mov zE, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@7733.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@7733.finish

..@7733.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@7733.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2517+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2518+0 raze.inc
ddcb_c4:
%line 2519+1 raze.inc
 mov [_z80_AF], ezAF
%line 2519+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@7743.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@7743.finish

..@7743.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@7743.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 or dl, (1 << 0)
 mov zH, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@7747.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@7747.finish

..@7747.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@7747.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2520+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2521+0 raze.inc
ddcb_c5:
%line 2522+1 raze.inc
 mov [_z80_AF], ezAF
%line 2522+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@7757.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@7757.finish

..@7757.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@7757.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 or dl, (1 << 0)
 mov zL, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@7761.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@7761.finish

..@7761.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@7761.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2523+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2524+0 raze.inc
ddcb_c6:
%line 2525+1 raze.inc
 mov [_z80_AF], ezAF
%line 2525+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@7771.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@7771.finish

..@7771.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@7771.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 or dl, (1 << 0)
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@7775.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@7775.finish

..@7775.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@7775.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2526+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2527+0 raze.inc
ddcb_c7:
%line 2528+1 raze.inc
 mov [_z80_AF], ezAF
%line 2528+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@7785.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@7785.finish

..@7785.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@7785.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 or dl, (1 << 0)
 mov zA, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@7789.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@7789.finish

..@7789.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@7789.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2529+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2530+0 raze.inc
cb_c8:
%line 2531+1 raze.inc
 or zB, (1 << 1)
%line 2531+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2532+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2533+0 raze.inc
cb_c9:
%line 2534+1 raze.inc
 or zC, (1 << 1)
%line 2534+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2535+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2536+0 raze.inc
cb_ca:
%line 2537+1 raze.inc
 or zD, (1 << 1)
%line 2537+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2538+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2539+0 raze.inc
cb_cb:
%line 2540+1 raze.inc
 or zE, (1 << 1)
%line 2540+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2541+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2542+0 raze.inc
cb_cc:
%line 2543+1 raze.inc
 or zH, (1 << 1)
%line 2543+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2544+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2545+0 raze.inc
cb_cd:
%line 2546+1 raze.inc
 or zL, (1 << 1)
%line 2546+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2547+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2548+0 raze.inc
cb_cf:
%line 2549+1 raze.inc
 or zA, (1 << 1)
%line 2549+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2550+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2551+0 raze.inc
cb_ce:
%line 2552+1 raze.inc
 mov edi, ezHL
%line 2552+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@7855.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@7855.finish

..@7855.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@7855.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 or dl, (1 << 1)
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@7859.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@7859.finish

..@7859.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@7859.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 15
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2553+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2554+0 raze.inc
ddcb_c8:
%line 2555+1 raze.inc
 mov [_z80_AF], ezAF
%line 2555+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@7869.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@7869.finish

..@7869.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@7869.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 or dl, (1 << 1)
 mov zB, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@7873.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@7873.finish

..@7873.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@7873.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2556+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2557+0 raze.inc
ddcb_c9:
%line 2558+1 raze.inc
 mov [_z80_AF], ezAF
%line 2558+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@7883.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@7883.finish

..@7883.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@7883.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 or dl, (1 << 1)
 mov zC, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@7887.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@7887.finish

..@7887.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@7887.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2559+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2560+0 raze.inc
ddcb_ca:
%line 2561+1 raze.inc
 mov [_z80_AF], ezAF
%line 2561+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@7897.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@7897.finish

..@7897.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@7897.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 or dl, (1 << 1)
 mov zD, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@7901.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@7901.finish

..@7901.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@7901.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2562+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2563+0 raze.inc
ddcb_cb:
%line 2564+1 raze.inc
 mov [_z80_AF], ezAF
%line 2564+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@7911.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@7911.finish

..@7911.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@7911.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 or dl, (1 << 1)
 mov zE, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@7915.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@7915.finish

..@7915.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@7915.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2565+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2566+0 raze.inc
ddcb_cc:
%line 2567+1 raze.inc
 mov [_z80_AF], ezAF
%line 2567+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@7925.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@7925.finish

..@7925.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@7925.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 or dl, (1 << 1)
 mov zH, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@7929.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@7929.finish

..@7929.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@7929.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2568+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2569+0 raze.inc
ddcb_cd:
%line 2570+1 raze.inc
 mov [_z80_AF], ezAF
%line 2570+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@7939.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@7939.finish

..@7939.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@7939.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 or dl, (1 << 1)
 mov zL, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@7943.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@7943.finish

..@7943.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@7943.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2571+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2572+0 raze.inc
ddcb_ce:
%line 2573+1 raze.inc
 mov [_z80_AF], ezAF
%line 2573+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@7953.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@7953.finish

..@7953.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@7953.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 or dl, (1 << 1)
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@7957.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@7957.finish

..@7957.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@7957.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2574+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2575+0 raze.inc
ddcb_cf:
%line 2576+1 raze.inc
 mov [_z80_AF], ezAF
%line 2576+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@7967.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@7967.finish

..@7967.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@7967.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 or dl, (1 << 1)
 mov zA, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@7971.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@7971.finish

..@7971.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@7971.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2577+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2578+0 raze.inc
cb_d0:
%line 2579+1 raze.inc
 or zB, (1 << 2)
%line 2579+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2580+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2581+0 raze.inc
cb_d1:
%line 2582+1 raze.inc
 or zC, (1 << 2)
%line 2582+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2583+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2584+0 raze.inc
cb_d2:
%line 2585+1 raze.inc
 or zD, (1 << 2)
%line 2585+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2586+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2587+0 raze.inc
cb_d3:
%line 2588+1 raze.inc
 or zE, (1 << 2)
%line 2588+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2589+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2590+0 raze.inc
cb_d4:
%line 2591+1 raze.inc
 or zH, (1 << 2)
%line 2591+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2592+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2593+0 raze.inc
cb_d5:
%line 2594+1 raze.inc
 or zL, (1 << 2)
%line 2594+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2595+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2596+0 raze.inc
cb_d7:
%line 2597+1 raze.inc
 or zA, (1 << 2)
%line 2597+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2598+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2599+0 raze.inc
cb_d6:
%line 2600+1 raze.inc
 mov edi, ezHL
%line 2600+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@8037.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@8037.finish

..@8037.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@8037.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 or dl, (1 << 2)
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@8041.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@8041.finish

..@8041.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@8041.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 15
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2601+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2602+0 raze.inc
ddcb_d0:
%line 2603+1 raze.inc
 mov [_z80_AF], ezAF
%line 2603+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@8051.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@8051.finish

..@8051.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@8051.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 or dl, (1 << 2)
 mov zB, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@8055.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@8055.finish

..@8055.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@8055.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2604+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2605+0 raze.inc
ddcb_d1:
%line 2606+1 raze.inc
 mov [_z80_AF], ezAF
%line 2606+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@8065.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@8065.finish

..@8065.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@8065.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 or dl, (1 << 2)
 mov zC, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@8069.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@8069.finish

..@8069.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@8069.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2607+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2608+0 raze.inc
ddcb_d2:
%line 2609+1 raze.inc
 mov [_z80_AF], ezAF
%line 2609+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@8079.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@8079.finish

..@8079.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@8079.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 or dl, (1 << 2)
 mov zD, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@8083.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@8083.finish

..@8083.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@8083.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2610+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2611+0 raze.inc
ddcb_d3:
%line 2612+1 raze.inc
 mov [_z80_AF], ezAF
%line 2612+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@8093.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@8093.finish

..@8093.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@8093.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 or dl, (1 << 2)
 mov zE, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@8097.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@8097.finish

..@8097.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@8097.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2613+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2614+0 raze.inc
ddcb_d4:
%line 2615+1 raze.inc
 mov [_z80_AF], ezAF
%line 2615+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@8107.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@8107.finish

..@8107.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@8107.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 or dl, (1 << 2)
 mov zH, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@8111.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@8111.finish

..@8111.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@8111.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2616+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2617+0 raze.inc
ddcb_d5:
%line 2618+1 raze.inc
 mov [_z80_AF], ezAF
%line 2618+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@8121.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@8121.finish

..@8121.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@8121.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 or dl, (1 << 2)
 mov zL, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@8125.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@8125.finish

..@8125.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@8125.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2619+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2620+0 raze.inc
ddcb_d6:
%line 2621+1 raze.inc
 mov [_z80_AF], ezAF
%line 2621+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@8135.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@8135.finish

..@8135.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@8135.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 or dl, (1 << 2)
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@8139.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@8139.finish

..@8139.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@8139.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2622+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2623+0 raze.inc
ddcb_d7:
%line 2624+1 raze.inc
 mov [_z80_AF], ezAF
%line 2624+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@8149.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@8149.finish

..@8149.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@8149.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 or dl, (1 << 2)
 mov zA, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@8153.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@8153.finish

..@8153.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@8153.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2625+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2626+0 raze.inc
cb_d8:
%line 2627+1 raze.inc
 or zB, (1 << 3)
%line 2627+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2628+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2629+0 raze.inc
cb_d9:
%line 2630+1 raze.inc
 or zC, (1 << 3)
%line 2630+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2631+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2632+0 raze.inc
cb_da:
%line 2633+1 raze.inc
 or zD, (1 << 3)
%line 2633+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2634+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2635+0 raze.inc
cb_db:
%line 2636+1 raze.inc
 or zE, (1 << 3)
%line 2636+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2637+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2638+0 raze.inc
cb_dc:
%line 2639+1 raze.inc
 or zH, (1 << 3)
%line 2639+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2640+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2641+0 raze.inc
cb_dd:
%line 2642+1 raze.inc
 or zL, (1 << 3)
%line 2642+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2643+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2644+0 raze.inc
cb_df:
%line 2645+1 raze.inc
 or zA, (1 << 3)
%line 2645+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2646+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2647+0 raze.inc
cb_de:
%line 2648+1 raze.inc
 mov edi, ezHL
%line 2648+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@8219.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@8219.finish

..@8219.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@8219.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 or dl, (1 << 3)
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@8223.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@8223.finish

..@8223.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@8223.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 15
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2649+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2650+0 raze.inc
ddcb_d8:
%line 2651+1 raze.inc
 mov [_z80_AF], ezAF
%line 2651+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@8233.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@8233.finish

..@8233.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@8233.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 or dl, (1 << 3)
 mov zB, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@8237.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@8237.finish

..@8237.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@8237.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2652+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2653+0 raze.inc
ddcb_d9:
%line 2654+1 raze.inc
 mov [_z80_AF], ezAF
%line 2654+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@8247.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@8247.finish

..@8247.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@8247.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 or dl, (1 << 3)
 mov zC, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@8251.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@8251.finish

..@8251.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@8251.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2655+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2656+0 raze.inc
ddcb_da:
%line 2657+1 raze.inc
 mov [_z80_AF], ezAF
%line 2657+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@8261.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@8261.finish

..@8261.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@8261.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 or dl, (1 << 3)
 mov zD, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@8265.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@8265.finish

..@8265.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@8265.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2658+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2659+0 raze.inc
ddcb_db:
%line 2660+1 raze.inc
 mov [_z80_AF], ezAF
%line 2660+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@8275.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@8275.finish

..@8275.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@8275.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 or dl, (1 << 3)
 mov zE, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@8279.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@8279.finish

..@8279.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@8279.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2661+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2662+0 raze.inc
ddcb_dc:
%line 2663+1 raze.inc
 mov [_z80_AF], ezAF
%line 2663+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@8289.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@8289.finish

..@8289.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@8289.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 or dl, (1 << 3)
 mov zH, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@8293.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@8293.finish

..@8293.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@8293.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2664+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2665+0 raze.inc
ddcb_dd:
%line 2666+1 raze.inc
 mov [_z80_AF], ezAF
%line 2666+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@8303.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@8303.finish

..@8303.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@8303.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 or dl, (1 << 3)
 mov zL, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@8307.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@8307.finish

..@8307.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@8307.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2667+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2668+0 raze.inc
ddcb_de:
%line 2669+1 raze.inc
 mov [_z80_AF], ezAF
%line 2669+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@8317.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@8317.finish

..@8317.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@8317.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 or dl, (1 << 3)
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@8321.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@8321.finish

..@8321.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@8321.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2670+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2671+0 raze.inc
ddcb_df:
%line 2672+1 raze.inc
 mov [_z80_AF], ezAF
%line 2672+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@8331.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@8331.finish

..@8331.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@8331.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 or dl, (1 << 3)
 mov zA, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@8335.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@8335.finish

..@8335.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@8335.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2673+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2674+0 raze.inc
cb_e0:
%line 2675+1 raze.inc
 or zB, (1 << 4)
%line 2675+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2676+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2677+0 raze.inc
cb_e1:
%line 2678+1 raze.inc
 or zC, (1 << 4)
%line 2678+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2679+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2680+0 raze.inc
cb_e2:
%line 2681+1 raze.inc
 or zD, (1 << 4)
%line 2681+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2682+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2683+0 raze.inc
cb_e3:
%line 2684+1 raze.inc
 or zE, (1 << 4)
%line 2684+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2685+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2686+0 raze.inc
cb_e4:
%line 2687+1 raze.inc
 or zH, (1 << 4)
%line 2687+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2688+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2689+0 raze.inc
cb_e5:
%line 2690+1 raze.inc
 or zL, (1 << 4)
%line 2690+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2691+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2692+0 raze.inc
cb_e7:
%line 2693+1 raze.inc
 or zA, (1 << 4)
%line 2693+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2694+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2695+0 raze.inc
cb_e6:
%line 2696+1 raze.inc
 mov edi, ezHL
%line 2696+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@8401.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@8401.finish

..@8401.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@8401.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 or dl, (1 << 4)
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@8405.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@8405.finish

..@8405.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@8405.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 15
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2697+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2698+0 raze.inc
ddcb_e0:
%line 2699+1 raze.inc
 mov [_z80_AF], ezAF
%line 2699+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@8415.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@8415.finish

..@8415.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@8415.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 or dl, (1 << 4)
 mov zB, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@8419.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@8419.finish

..@8419.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@8419.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2700+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2701+0 raze.inc
ddcb_e1:
%line 2702+1 raze.inc
 mov [_z80_AF], ezAF
%line 2702+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@8429.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@8429.finish

..@8429.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@8429.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 or dl, (1 << 4)
 mov zC, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@8433.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@8433.finish

..@8433.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@8433.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2703+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2704+0 raze.inc
ddcb_e2:
%line 2705+1 raze.inc
 mov [_z80_AF], ezAF
%line 2705+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@8443.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@8443.finish

..@8443.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@8443.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 or dl, (1 << 4)
 mov zD, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@8447.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@8447.finish

..@8447.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@8447.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2706+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2707+0 raze.inc
ddcb_e3:
%line 2708+1 raze.inc
 mov [_z80_AF], ezAF
%line 2708+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@8457.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@8457.finish

..@8457.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@8457.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 or dl, (1 << 4)
 mov zE, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@8461.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@8461.finish

..@8461.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@8461.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2709+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2710+0 raze.inc
ddcb_e4:
%line 2711+1 raze.inc
 mov [_z80_AF], ezAF
%line 2711+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@8471.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@8471.finish

..@8471.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@8471.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 or dl, (1 << 4)
 mov zH, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@8475.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@8475.finish

..@8475.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@8475.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2712+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2713+0 raze.inc
ddcb_e5:
%line 2714+1 raze.inc
 mov [_z80_AF], ezAF
%line 2714+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@8485.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@8485.finish

..@8485.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@8485.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 or dl, (1 << 4)
 mov zL, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@8489.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@8489.finish

..@8489.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@8489.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2715+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2716+0 raze.inc
ddcb_e6:
%line 2717+1 raze.inc
 mov [_z80_AF], ezAF
%line 2717+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@8499.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@8499.finish

..@8499.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@8499.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 or dl, (1 << 4)
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@8503.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@8503.finish

..@8503.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@8503.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2718+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2719+0 raze.inc
ddcb_e7:
%line 2720+1 raze.inc
 mov [_z80_AF], ezAF
%line 2720+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@8513.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@8513.finish

..@8513.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@8513.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 or dl, (1 << 4)
 mov zA, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@8517.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@8517.finish

..@8517.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@8517.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2721+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2722+0 raze.inc
cb_e8:
%line 2723+1 raze.inc
 or zB, (1 << 5)
%line 2723+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2724+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2725+0 raze.inc
cb_e9:
%line 2726+1 raze.inc
 or zC, (1 << 5)
%line 2726+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2727+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2728+0 raze.inc
cb_ea:
%line 2729+1 raze.inc
 or zD, (1 << 5)
%line 2729+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2730+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2731+0 raze.inc
cb_eb:
%line 2732+1 raze.inc
 or zE, (1 << 5)
%line 2732+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2733+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2734+0 raze.inc
cb_ec:
%line 2735+1 raze.inc
 or zH, (1 << 5)
%line 2735+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2736+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2737+0 raze.inc
cb_ed:
%line 2738+1 raze.inc
 or zL, (1 << 5)
%line 2738+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2739+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2740+0 raze.inc
cb_ef:
%line 2741+1 raze.inc
 or zA, (1 << 5)
%line 2741+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2742+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2743+0 raze.inc
cb_ee:
%line 2744+1 raze.inc
 mov edi, ezHL
%line 2744+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@8583.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@8583.finish

..@8583.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@8583.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 or dl, (1 << 5)
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@8587.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@8587.finish

..@8587.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@8587.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 15
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2745+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2746+0 raze.inc
ddcb_e8:
%line 2747+1 raze.inc
 mov [_z80_AF], ezAF
%line 2747+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@8597.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@8597.finish

..@8597.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@8597.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 or dl, (1 << 5)
 mov zB, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@8601.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@8601.finish

..@8601.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@8601.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2748+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2749+0 raze.inc
ddcb_e9:
%line 2750+1 raze.inc
 mov [_z80_AF], ezAF
%line 2750+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@8611.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@8611.finish

..@8611.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@8611.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 or dl, (1 << 5)
 mov zC, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@8615.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@8615.finish

..@8615.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@8615.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2751+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2752+0 raze.inc
ddcb_ea:
%line 2753+1 raze.inc
 mov [_z80_AF], ezAF
%line 2753+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@8625.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@8625.finish

..@8625.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@8625.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 or dl, (1 << 5)
 mov zD, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@8629.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@8629.finish

..@8629.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@8629.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2754+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2755+0 raze.inc
ddcb_eb:
%line 2756+1 raze.inc
 mov [_z80_AF], ezAF
%line 2756+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@8639.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@8639.finish

..@8639.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@8639.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 or dl, (1 << 5)
 mov zE, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@8643.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@8643.finish

..@8643.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@8643.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2757+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2758+0 raze.inc
ddcb_ec:
%line 2759+1 raze.inc
 mov [_z80_AF], ezAF
%line 2759+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@8653.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@8653.finish

..@8653.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@8653.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 or dl, (1 << 5)
 mov zH, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@8657.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@8657.finish

..@8657.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@8657.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2760+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2761+0 raze.inc
ddcb_ed:
%line 2762+1 raze.inc
 mov [_z80_AF], ezAF
%line 2762+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@8667.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@8667.finish

..@8667.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@8667.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 or dl, (1 << 5)
 mov zL, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@8671.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@8671.finish

..@8671.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@8671.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2763+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2764+0 raze.inc
ddcb_ee:
%line 2765+1 raze.inc
 mov [_z80_AF], ezAF
%line 2765+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@8681.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@8681.finish

..@8681.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@8681.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 or dl, (1 << 5)
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@8685.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@8685.finish

..@8685.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@8685.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2766+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2767+0 raze.inc
ddcb_ef:
%line 2768+1 raze.inc
 mov [_z80_AF], ezAF
%line 2768+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@8695.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@8695.finish

..@8695.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@8695.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 or dl, (1 << 5)
 mov zA, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@8699.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@8699.finish

..@8699.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@8699.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2769+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2770+0 raze.inc
cb_f0:
%line 2771+1 raze.inc
 or zB, (1 << 6)
%line 2771+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2772+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2773+0 raze.inc
cb_f1:
%line 2774+1 raze.inc
 or zC, (1 << 6)
%line 2774+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2775+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2776+0 raze.inc
cb_f2:
%line 2777+1 raze.inc
 or zD, (1 << 6)
%line 2777+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2778+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2779+0 raze.inc
cb_f3:
%line 2780+1 raze.inc
 or zE, (1 << 6)
%line 2780+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2781+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2782+0 raze.inc
cb_f4:
%line 2783+1 raze.inc
 or zH, (1 << 6)
%line 2783+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2784+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2785+0 raze.inc
cb_f5:
%line 2786+1 raze.inc
 or zL, (1 << 6)
%line 2786+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2787+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2788+0 raze.inc
cb_f7:
%line 2789+1 raze.inc
 or zA, (1 << 6)
%line 2789+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2790+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2791+0 raze.inc
cb_f6:
%line 2792+1 raze.inc
 mov edi, ezHL
%line 2792+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@8765.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@8765.finish

..@8765.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@8765.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 or dl, (1 << 6)
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@8769.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@8769.finish

..@8769.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@8769.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 15
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2793+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2794+0 raze.inc
ddcb_f0:
%line 2795+1 raze.inc
 mov [_z80_AF], ezAF
%line 2795+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@8779.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@8779.finish

..@8779.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@8779.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 or dl, (1 << 6)
 mov zB, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@8783.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@8783.finish

..@8783.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@8783.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2796+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2797+0 raze.inc
ddcb_f1:
%line 2798+1 raze.inc
 mov [_z80_AF], ezAF
%line 2798+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@8793.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@8793.finish

..@8793.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@8793.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 or dl, (1 << 6)
 mov zC, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@8797.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@8797.finish

..@8797.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@8797.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2799+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2800+0 raze.inc
ddcb_f2:
%line 2801+1 raze.inc
 mov [_z80_AF], ezAF
%line 2801+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@8807.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@8807.finish

..@8807.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@8807.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 or dl, (1 << 6)
 mov zD, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@8811.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@8811.finish

..@8811.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@8811.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2802+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2803+0 raze.inc
ddcb_f3:
%line 2804+1 raze.inc
 mov [_z80_AF], ezAF
%line 2804+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@8821.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@8821.finish

..@8821.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@8821.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 or dl, (1 << 6)
 mov zE, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@8825.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@8825.finish

..@8825.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@8825.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2805+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2806+0 raze.inc
ddcb_f4:
%line 2807+1 raze.inc
 mov [_z80_AF], ezAF
%line 2807+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@8835.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@8835.finish

..@8835.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@8835.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 or dl, (1 << 6)
 mov zH, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@8839.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@8839.finish

..@8839.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@8839.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2808+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2809+0 raze.inc
ddcb_f5:
%line 2810+1 raze.inc
 mov [_z80_AF], ezAF
%line 2810+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@8849.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@8849.finish

..@8849.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@8849.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 or dl, (1 << 6)
 mov zL, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@8853.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@8853.finish

..@8853.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@8853.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2811+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2812+0 raze.inc
ddcb_f6:
%line 2813+1 raze.inc
 mov [_z80_AF], ezAF
%line 2813+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@8863.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@8863.finish

..@8863.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@8863.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 or dl, (1 << 6)
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@8867.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@8867.finish

..@8867.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@8867.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2814+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2815+0 raze.inc
ddcb_f7:
%line 2816+1 raze.inc
 mov [_z80_AF], ezAF
%line 2816+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@8877.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@8877.finish

..@8877.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@8877.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 or dl, (1 << 6)
 mov zA, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@8881.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@8881.finish

..@8881.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@8881.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2817+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2818+0 raze.inc
cb_f8:
%line 2819+1 raze.inc
 or zB, (1 << 7)
%line 2819+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2820+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2821+0 raze.inc
cb_f9:
%line 2822+1 raze.inc
 or zC, (1 << 7)
%line 2822+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2823+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2824+0 raze.inc
cb_fa:
%line 2825+1 raze.inc
 or zD, (1 << 7)
%line 2825+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2826+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2827+0 raze.inc
cb_fb:
%line 2828+1 raze.inc
 or zE, (1 << 7)
%line 2828+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2829+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2830+0 raze.inc
cb_fc:
%line 2831+1 raze.inc
 or zH, (1 << 7)
%line 2831+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2832+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2833+0 raze.inc
cb_fd:
%line 2834+1 raze.inc
 or zL, (1 << 7)
%line 2834+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2835+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2836+0 raze.inc
cb_ff:
%line 2837+1 raze.inc
 or zA, (1 << 7)
%line 2837+0 raze.inc

 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2838+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2839+0 raze.inc
cb_fe:
%line 2840+1 raze.inc
 mov edi, ezHL
%line 2840+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@8947.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@8947.finish

..@8947.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@8947.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 or dl, (1 << 7)
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@8951.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@8951.finish

..@8951.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@8951.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 15
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2841+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2842+0 raze.inc
ddcb_f8:
%line 2843+1 raze.inc
 mov [_z80_AF], ezAF
%line 2843+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@8961.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@8961.finish

..@8961.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@8961.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 or dl, (1 << 7)
 mov zB, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@8965.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@8965.finish

..@8965.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@8965.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2844+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2845+0 raze.inc
ddcb_f9:
%line 2846+1 raze.inc
 mov [_z80_AF], ezAF
%line 2846+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@8975.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@8975.finish

..@8975.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@8975.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 or dl, (1 << 7)
 mov zC, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@8979.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@8979.finish

..@8979.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@8979.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2847+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2848+0 raze.inc
ddcb_fa:
%line 2849+1 raze.inc
 mov [_z80_AF], ezAF
%line 2849+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@8989.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@8989.finish

..@8989.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@8989.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 or dl, (1 << 7)
 mov zD, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@8993.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@8993.finish

..@8993.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@8993.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2850+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2851+0 raze.inc
ddcb_fb:
%line 2852+1 raze.inc
 mov [_z80_AF], ezAF
%line 2852+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@9003.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@9003.finish

..@9003.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@9003.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 or dl, (1 << 7)
 mov zE, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@9007.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@9007.finish

..@9007.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@9007.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2853+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2854+0 raze.inc
ddcb_fc:
%line 2855+1 raze.inc
 mov [_z80_AF], ezAF
%line 2855+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@9017.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@9017.finish

..@9017.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@9017.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 or dl, (1 << 7)
 mov zH, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@9021.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@9021.finish

..@9021.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@9021.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2856+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2857+0 raze.inc
ddcb_fd:
%line 2858+1 raze.inc
 mov [_z80_AF], ezAF
%line 2858+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@9031.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@9031.finish

..@9031.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@9031.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 or dl, (1 << 7)
 mov zL, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@9035.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@9035.finish

..@9035.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@9035.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2859+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2860+0 raze.inc
ddcb_fe:
%line 2861+1 raze.inc
 mov [_z80_AF], ezAF
%line 2861+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@9045.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@9045.finish

..@9045.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@9045.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 or dl, (1 << 7)
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@9049.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@9049.finish

..@9049.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@9049.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2862+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2863+0 raze.inc
ddcb_ff:
%line 2864+1 raze.inc
 mov [_z80_AF], ezAF
%line 2864+0 raze.inc
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@9059.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@9059.finish

..@9059.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@9059.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 or dl, (1 << 7)
 mov zA, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@9063.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@9063.finish

..@9063.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@9063.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 sub dword [_z80_ICount], 23
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2865+1 raze.inc





times ($$-$) & ((4)-1) nop
%line 2870+0 raze.inc
op_c3:
%line 2871+1 raze.inc
 mov [_z80_BC], ezBC
%line 2871+0 raze.inc
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC

 mov ecx, ezPC
 shr ecx, 8
 mov edi, [_z80_Fetch+ecx*4]

 mov dh, [edi+ezPC]
 inc zPC
 mov edi, edx
 mov ezBC, [_z80_BC]
 xor edx, edx
 mov ezPC, edi
 sub dword [_z80_ICount], 10
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2872+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2873+0 raze.inc
op_da:
%line 2874+1 raze.inc
 test zF, FLAG_C
%line 2874+0 raze.inc
 jz near ..@9080.dont_take_jump
 mov [_z80_BC], ezBC
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC

 mov ecx, ezPC
 shr ecx, 8
 mov edi, [_z80_Fetch+ecx*4]

 mov dh, [edi+ezPC]
 inc zPC
 mov edi, edx
 mov ezBC, [_z80_BC]
 xor edx, edx
 mov ezPC, edi
 sub dword [_z80_ICount], 10
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]

times ($$-$) & ((4)-1) nop
..@9080.dont_take_jump:
 add zPC, 2
 sub dword [_z80_ICount], 10
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2875+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2876+0 raze.inc
op_d2:
%line 2877+1 raze.inc
 test zF, FLAG_C
%line 2877+0 raze.inc
 jnz near ..@9093.dont_take_jump
 mov [_z80_BC], ezBC
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC

 mov ecx, ezPC
 shr ecx, 8
 mov edi, [_z80_Fetch+ecx*4]

 mov dh, [edi+ezPC]
 inc zPC
 mov edi, edx
 mov ezBC, [_z80_BC]
 xor edx, edx
 mov ezPC, edi
 sub dword [_z80_ICount], 10
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]

times ($$-$) & ((4)-1) nop
..@9093.dont_take_jump:
 add zPC, 2
 sub dword [_z80_ICount], 10
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2878+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2879+0 raze.inc
op_ca:
%line 2880+1 raze.inc
 test zF, FLAG_Z
%line 2880+0 raze.inc
 jz near ..@9106.dont_take_jump
 mov [_z80_BC], ezBC
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC

 mov ecx, ezPC
 shr ecx, 8
 mov edi, [_z80_Fetch+ecx*4]

 mov dh, [edi+ezPC]
 inc zPC
 mov edi, edx
 mov ezBC, [_z80_BC]
 xor edx, edx
 mov ezPC, edi
 sub dword [_z80_ICount], 10
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]

times ($$-$) & ((4)-1) nop
..@9106.dont_take_jump:
 add zPC, 2
 sub dword [_z80_ICount], 10
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2881+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2882+0 raze.inc
op_c2:
%line 2883+1 raze.inc
 test zF, FLAG_Z
%line 2883+0 raze.inc
 jnz near ..@9119.dont_take_jump
 mov [_z80_BC], ezBC
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC

 mov ecx, ezPC
 shr ecx, 8
 mov edi, [_z80_Fetch+ecx*4]

 mov dh, [edi+ezPC]
 inc zPC
 mov edi, edx
 mov ezBC, [_z80_BC]
 xor edx, edx
 mov ezPC, edi
 sub dword [_z80_ICount], 10
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]

times ($$-$) & ((4)-1) nop
..@9119.dont_take_jump:
 add zPC, 2
 sub dword [_z80_ICount], 10
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2884+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2885+0 raze.inc
op_ea:
%line 2886+1 raze.inc
 test zF, FLAG_P
%line 2886+0 raze.inc
 jz near ..@9132.dont_take_jump
 mov [_z80_BC], ezBC
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC

 mov ecx, ezPC
 shr ecx, 8
 mov edi, [_z80_Fetch+ecx*4]

 mov dh, [edi+ezPC]
 inc zPC
 mov edi, edx
 mov ezBC, [_z80_BC]
 xor edx, edx
 mov ezPC, edi
 sub dword [_z80_ICount], 10
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]

times ($$-$) & ((4)-1) nop
..@9132.dont_take_jump:
 add zPC, 2
 sub dword [_z80_ICount], 10
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2887+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2888+0 raze.inc
op_e2:
%line 2889+1 raze.inc
 test zF, FLAG_P
%line 2889+0 raze.inc
 jnz near ..@9145.dont_take_jump
 mov [_z80_BC], ezBC
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC

 mov ecx, ezPC
 shr ecx, 8
 mov edi, [_z80_Fetch+ecx*4]

 mov dh, [edi+ezPC]
 inc zPC
 mov edi, edx
 mov ezBC, [_z80_BC]
 xor edx, edx
 mov ezPC, edi
 sub dword [_z80_ICount], 10
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]

times ($$-$) & ((4)-1) nop
..@9145.dont_take_jump:
 add zPC, 2
 sub dword [_z80_ICount], 10
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2890+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2891+0 raze.inc
op_fa:
%line 2892+1 raze.inc
 test zF, FLAG_S
%line 2892+0 raze.inc
 jz near ..@9158.dont_take_jump
 mov [_z80_BC], ezBC
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC

 mov ecx, ezPC
 shr ecx, 8
 mov edi, [_z80_Fetch+ecx*4]

 mov dh, [edi+ezPC]
 inc zPC
 mov edi, edx
 mov ezBC, [_z80_BC]
 xor edx, edx
 mov ezPC, edi
 sub dword [_z80_ICount], 10
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]

times ($$-$) & ((4)-1) nop
..@9158.dont_take_jump:
 add zPC, 2
 sub dword [_z80_ICount], 10
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2893+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2894+0 raze.inc
op_f2:
%line 2895+1 raze.inc
 test zF, FLAG_S
%line 2895+0 raze.inc
 jnz near ..@9171.dont_take_jump
 mov [_z80_BC], ezBC
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC

 mov ecx, ezPC
 shr ecx, 8
 mov edi, [_z80_Fetch+ecx*4]

 mov dh, [edi+ezPC]
 inc zPC
 mov edi, edx
 mov ezBC, [_z80_BC]
 xor edx, edx
 mov ezPC, edi
 sub dword [_z80_ICount], 10
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]

times ($$-$) & ((4)-1) nop
..@9171.dont_take_jump:
 add zPC, 2
 sub dword [_z80_ICount], 10
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2896+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2897+0 raze.inc
op_18:
%line 2898+1 raze.inc
 mov edx, ezPC
%line 2898+0 raze.inc
 shr edx, 8
 mov edx, [_z80_Fetch+edx*4]

 movsx di, [edx+ezPC]
 inc zPC
 xor edx, edx
 add zPC, di
 sub dword [_z80_ICount], 12
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2899+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2900+0 raze.inc
op_38:
%line 2901+1 raze.inc
 test zF, FLAG_C
%line 2901+0 raze.inc
 jz near ..@9192.dont_take_jump
 mov edx, ezPC
 shr edx, 8
 mov edx, [_z80_Fetch+edx*4]

 movsx di, [edx+ezPC]
 inc zPC
 xor edx, edx
 add zPC, di
 sub dword [_z80_ICount], 12
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]

times ($$-$) & ((4)-1) nop
..@9192.dont_take_jump:
 inc zPC
 sub dword [_z80_ICount], 7
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2902+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2903+0 raze.inc
op_30:
%line 2904+1 raze.inc
 test zF, FLAG_C
%line 2904+0 raze.inc
 jnz near ..@9205.dont_take_jump
 mov edx, ezPC
 shr edx, 8
 mov edx, [_z80_Fetch+edx*4]

 movsx di, [edx+ezPC]
 inc zPC
 xor edx, edx
 add zPC, di
 sub dword [_z80_ICount], 12
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]

times ($$-$) & ((4)-1) nop
..@9205.dont_take_jump:
 inc zPC
 sub dword [_z80_ICount], 7
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2905+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2906+0 raze.inc
op_28:
%line 2907+1 raze.inc
 test zF, FLAG_Z
%line 2907+0 raze.inc
 jz near ..@9218.dont_take_jump
 mov edx, ezPC
 shr edx, 8
 mov edx, [_z80_Fetch+edx*4]

 movsx di, [edx+ezPC]
 inc zPC
 xor edx, edx
 add zPC, di
 sub dword [_z80_ICount], 12
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]

times ($$-$) & ((4)-1) nop
..@9218.dont_take_jump:
 inc zPC
 sub dword [_z80_ICount], 7
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2908+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2909+0 raze.inc
op_20:
%line 2910+1 raze.inc
 test zF, FLAG_Z
%line 2910+0 raze.inc
 jnz near ..@9231.dont_take_jump
 mov edx, ezPC
 shr edx, 8
 mov edx, [_z80_Fetch+edx*4]

 movsx di, [edx+ezPC]
 inc zPC
 xor edx, edx
 add zPC, di
 sub dword [_z80_ICount], 12
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]

times ($$-$) & ((4)-1) nop
..@9231.dont_take_jump:
 inc zPC
 sub dword [_z80_ICount], 7
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2911+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2912+0 raze.inc
op_e9:
%line 2913+1 raze.inc
 mov ezPC, ezHL
%line 2913+0 raze.inc
 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2914+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2915+0 raze.inc
dd_e9:
%line 2916+1 raze.inc
 mov ezPC, ezIX
%line 2916+0 raze.inc
 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2917+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2918+0 raze.inc
fd_e9:
%line 2919+1 raze.inc
 mov ezPC, ezIY
%line 2919+0 raze.inc
 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2920+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2921+0 raze.inc
op_10:
%line 2922+1 raze.inc
 dec zB
%line 2922+0 raze.inc
 jz near ..@9265.dont_take_jump
 mov edx, ezPC
 shr edx, 8
 mov edx, [_z80_Fetch+edx*4]

 movsx di, [edx+ezPC]
 inc zPC
 xor edx, edx
 add zPC, di
 sub dword [_z80_ICount], 13
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]

times ($$-$) & ((4)-1) nop
..@9265.dont_take_jump:
 inc zPC
 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2923+1 raze.inc





times ($$-$) & ((4)-1) nop
%line 2928+0 raze.inc
op_cd:
%line 2929+1 raze.inc
 mov [_z80_BC], ezBC
%line 2929+0 raze.inc
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC

 mov ecx, ezPC
 shr ecx, 8
 mov edi, [_z80_Fetch+ecx*4]

 mov dh, [edi+ezPC]
 inc zPC
 mov edi, edx
 mov ezBC, [_z80_BC]
 xor edx, edx
 mov edx, ezPC
 dec zSP
 push edi

 xchg dl, dh
 mov edi, ezSP
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@9280.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@9280.finish

..@9280.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@9280.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx
 dec zSP
 mov edx, ezPC
 mov edi, ezSP
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@9283.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@9283.finish

..@9283.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@9283.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 pop ezPC
 sub dword [_z80_ICount], 17
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2930+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2931+0 raze.inc
op_c4:
%line 2932+1 raze.inc
 test zF, FLAG_Z
%line 2932+0 raze.inc
 jnz near ..@9292.dont_take_jump
 mov [_z80_BC], ezBC
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC

 mov ecx, ezPC
 shr ecx, 8
 mov edi, [_z80_Fetch+ecx*4]

 mov dh, [edi+ezPC]
 inc zPC
 mov edi, edx
 mov ezBC, [_z80_BC]
 xor edx, edx
 mov edx, ezPC
 push edi

 dec zSP
 xchg dl, dh
 mov edi, ezSP
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@9294.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@9294.finish

..@9294.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@9294.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx
 dec zSP
 mov edx, ezPC
 mov edi, ezSP
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@9297.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@9297.finish

..@9297.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@9297.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 pop ezPC
 sub dword [_z80_ICount], 10
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]

times ($$-$) & ((4)-1) nop
..@9292.dont_take_jump:
 add zPC, 2
 sub dword [_z80_ICount], 10
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2933+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2934+0 raze.inc
op_cc:
%line 2935+1 raze.inc
 test zF, FLAG_Z
%line 2935+0 raze.inc
 jz near ..@9311.dont_take_jump
 mov [_z80_BC], ezBC
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC

 mov ecx, ezPC
 shr ecx, 8
 mov edi, [_z80_Fetch+ecx*4]

 mov dh, [edi+ezPC]
 inc zPC
 mov edi, edx
 mov ezBC, [_z80_BC]
 xor edx, edx
 mov edx, ezPC
 push edi

 dec zSP
 xchg dl, dh
 mov edi, ezSP
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@9313.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@9313.finish

..@9313.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@9313.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx
 dec zSP
 mov edx, ezPC
 mov edi, ezSP
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@9316.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@9316.finish

..@9316.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@9316.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 pop ezPC
 sub dword [_z80_ICount], 10
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]

times ($$-$) & ((4)-1) nop
..@9311.dont_take_jump:
 add zPC, 2
 sub dword [_z80_ICount], 10
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2936+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2937+0 raze.inc
op_d4:
%line 2938+1 raze.inc
 test zF, FLAG_C
%line 2938+0 raze.inc
 jnz near ..@9330.dont_take_jump
 mov [_z80_BC], ezBC
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC

 mov ecx, ezPC
 shr ecx, 8
 mov edi, [_z80_Fetch+ecx*4]

 mov dh, [edi+ezPC]
 inc zPC
 mov edi, edx
 mov ezBC, [_z80_BC]
 xor edx, edx
 mov edx, ezPC
 push edi

 dec zSP
 xchg dl, dh
 mov edi, ezSP
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@9332.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@9332.finish

..@9332.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@9332.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx
 dec zSP
 mov edx, ezPC
 mov edi, ezSP
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@9335.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@9335.finish

..@9335.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@9335.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 pop ezPC
 sub dword [_z80_ICount], 10
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]

times ($$-$) & ((4)-1) nop
..@9330.dont_take_jump:
 add zPC, 2
 sub dword [_z80_ICount], 10
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2939+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2940+0 raze.inc
op_dc:
%line 2941+1 raze.inc
 test zF, FLAG_C
%line 2941+0 raze.inc
 jz near ..@9349.dont_take_jump
 mov [_z80_BC], ezBC
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC

 mov ecx, ezPC
 shr ecx, 8
 mov edi, [_z80_Fetch+ecx*4]

 mov dh, [edi+ezPC]
 inc zPC
 mov edi, edx
 mov ezBC, [_z80_BC]
 xor edx, edx
 mov edx, ezPC
 push edi

 dec zSP
 xchg dl, dh
 mov edi, ezSP
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@9351.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@9351.finish

..@9351.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@9351.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx
 dec zSP
 mov edx, ezPC
 mov edi, ezSP
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@9354.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@9354.finish

..@9354.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@9354.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 pop ezPC
 sub dword [_z80_ICount], 10
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]

times ($$-$) & ((4)-1) nop
..@9349.dont_take_jump:
 add zPC, 2
 sub dword [_z80_ICount], 10
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2942+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2943+0 raze.inc
op_e4:
%line 2944+1 raze.inc
 test zF, FLAG_P
%line 2944+0 raze.inc
 jnz near ..@9368.dont_take_jump
 mov [_z80_BC], ezBC
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC

 mov ecx, ezPC
 shr ecx, 8
 mov edi, [_z80_Fetch+ecx*4]

 mov dh, [edi+ezPC]
 inc zPC
 mov edi, edx
 mov ezBC, [_z80_BC]
 xor edx, edx
 mov edx, ezPC
 push edi

 dec zSP
 xchg dl, dh
 mov edi, ezSP
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@9370.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@9370.finish

..@9370.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@9370.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx
 dec zSP
 mov edx, ezPC
 mov edi, ezSP
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@9373.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@9373.finish

..@9373.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@9373.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 pop ezPC
 sub dword [_z80_ICount], 10
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]

times ($$-$) & ((4)-1) nop
..@9368.dont_take_jump:
 add zPC, 2
 sub dword [_z80_ICount], 10
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2945+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2946+0 raze.inc
op_ec:
%line 2947+1 raze.inc
 test zF, FLAG_P
%line 2947+0 raze.inc
 jz near ..@9387.dont_take_jump
 mov [_z80_BC], ezBC
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC

 mov ecx, ezPC
 shr ecx, 8
 mov edi, [_z80_Fetch+ecx*4]

 mov dh, [edi+ezPC]
 inc zPC
 mov edi, edx
 mov ezBC, [_z80_BC]
 xor edx, edx
 mov edx, ezPC
 push edi

 dec zSP
 xchg dl, dh
 mov edi, ezSP
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@9389.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@9389.finish

..@9389.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@9389.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx
 dec zSP
 mov edx, ezPC
 mov edi, ezSP
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@9392.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@9392.finish

..@9392.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@9392.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 pop ezPC
 sub dword [_z80_ICount], 10
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]

times ($$-$) & ((4)-1) nop
..@9387.dont_take_jump:
 add zPC, 2
 sub dword [_z80_ICount], 10
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2948+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2949+0 raze.inc
op_f4:
%line 2950+1 raze.inc
 test zF, FLAG_S
%line 2950+0 raze.inc
 jnz near ..@9406.dont_take_jump
 mov [_z80_BC], ezBC
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC

 mov ecx, ezPC
 shr ecx, 8
 mov edi, [_z80_Fetch+ecx*4]

 mov dh, [edi+ezPC]
 inc zPC
 mov edi, edx
 mov ezBC, [_z80_BC]
 xor edx, edx
 mov edx, ezPC
 push edi

 dec zSP
 xchg dl, dh
 mov edi, ezSP
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@9408.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@9408.finish

..@9408.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@9408.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx
 dec zSP
 mov edx, ezPC
 mov edi, ezSP
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@9411.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@9411.finish

..@9411.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@9411.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 pop ezPC
 sub dword [_z80_ICount], 10
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]

times ($$-$) & ((4)-1) nop
..@9406.dont_take_jump:
 add zPC, 2
 sub dword [_z80_ICount], 10
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2951+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2952+0 raze.inc
op_fc:
%line 2953+1 raze.inc
 test zF, FLAG_S
%line 2953+0 raze.inc
 jz near ..@9425.dont_take_jump
 mov [_z80_BC], ezBC
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC

 mov ecx, ezPC
 shr ecx, 8
 mov edi, [_z80_Fetch+ecx*4]

 mov dh, [edi+ezPC]
 inc zPC
 mov edi, edx
 mov ezBC, [_z80_BC]
 xor edx, edx
 mov edx, ezPC
 push edi

 dec zSP
 xchg dl, dh
 mov edi, ezSP
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@9427.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@9427.finish

..@9427.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@9427.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx
 dec zSP
 mov edx, ezPC
 mov edi, ezSP
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@9430.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@9430.finish

..@9430.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@9430.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 pop ezPC
 sub dword [_z80_ICount], 10
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]

times ($$-$) & ((4)-1) nop
..@9425.dont_take_jump:
 add zPC, 2
 sub dword [_z80_ICount], 10
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2954+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2955+0 raze.inc
op_c9:
%line 2956+1 raze.inc
 mov edi, ezSP
%line 2956+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@9445.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@9445.finish

..@9445.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@9445.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 inc zSP
 mov ezPC, edx
 mov edi, ezSP
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@9448.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@9448.finish

..@9448.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@9448.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xchg dl, dh
 or ezPC, edx
 inc zSP

 xor dh, dh
 sub dword [_z80_ICount], 10
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2957+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2958+0 raze.inc
op_c0:
%line 2959+1 raze.inc
 test zF, FLAG_Z
%line 2959+0 raze.inc
 jnz near ..@9457.dont_take_jump
 mov edi, ezSP
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@9458.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@9458.finish

..@9458.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@9458.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 inc zSP
 mov ezPC, edx
 mov edi, ezSP
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@9461.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@9461.finish

..@9461.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@9461.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xchg dl, dh
 or ezPC, edx
 inc zSP

 xor dh, dh
 sub dword [_z80_ICount], 5
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]

times ($$-$) & ((4)-1) nop
..@9457.dont_take_jump:
 sub dword [_z80_ICount], 5
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2960+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2961+0 raze.inc
op_c8:
%line 2962+1 raze.inc
 test zF, FLAG_Z
%line 2962+0 raze.inc
 jz near ..@9475.dont_take_jump
 mov edi, ezSP
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@9476.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@9476.finish

..@9476.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@9476.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 inc zSP
 mov ezPC, edx
 mov edi, ezSP
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@9479.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@9479.finish

..@9479.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@9479.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xchg dl, dh
 or ezPC, edx
 inc zSP

 xor dh, dh
 sub dword [_z80_ICount], 5
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]

times ($$-$) & ((4)-1) nop
..@9475.dont_take_jump:
 sub dword [_z80_ICount], 5
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2963+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2964+0 raze.inc
op_d0:
%line 2965+1 raze.inc
 test zF, FLAG_C
%line 2965+0 raze.inc
 jnz near ..@9493.dont_take_jump
 mov edi, ezSP
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@9494.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@9494.finish

..@9494.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@9494.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 inc zSP
 mov ezPC, edx
 mov edi, ezSP
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@9497.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@9497.finish

..@9497.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@9497.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xchg dl, dh
 or ezPC, edx
 inc zSP

 xor dh, dh
 sub dword [_z80_ICount], 5
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]

times ($$-$) & ((4)-1) nop
..@9493.dont_take_jump:
 sub dword [_z80_ICount], 5
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2966+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2967+0 raze.inc
op_d8:
%line 2968+1 raze.inc
 test zF, FLAG_C
%line 2968+0 raze.inc
 jz near ..@9511.dont_take_jump
 mov edi, ezSP
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@9512.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@9512.finish

..@9512.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@9512.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 inc zSP
 mov ezPC, edx
 mov edi, ezSP
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@9515.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@9515.finish

..@9515.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@9515.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xchg dl, dh
 or ezPC, edx
 inc zSP

 xor dh, dh
 sub dword [_z80_ICount], 5
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]

times ($$-$) & ((4)-1) nop
..@9511.dont_take_jump:
 sub dword [_z80_ICount], 5
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2969+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2970+0 raze.inc
op_e0:
%line 2971+1 raze.inc
 test zF, FLAG_P
%line 2971+0 raze.inc
 jnz near ..@9529.dont_take_jump
 mov edi, ezSP
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@9530.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@9530.finish

..@9530.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@9530.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 inc zSP
 mov ezPC, edx
 mov edi, ezSP
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@9533.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@9533.finish

..@9533.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@9533.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xchg dl, dh
 or ezPC, edx
 inc zSP

 xor dh, dh
 sub dword [_z80_ICount], 5
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]

times ($$-$) & ((4)-1) nop
..@9529.dont_take_jump:
 sub dword [_z80_ICount], 5
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2972+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2973+0 raze.inc
op_e8:
%line 2974+1 raze.inc
 test zF, FLAG_P
%line 2974+0 raze.inc
 jz near ..@9547.dont_take_jump
 mov edi, ezSP
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@9548.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@9548.finish

..@9548.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@9548.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 inc zSP
 mov ezPC, edx
 mov edi, ezSP
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@9551.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@9551.finish

..@9551.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@9551.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xchg dl, dh
 or ezPC, edx
 inc zSP

 xor dh, dh
 sub dword [_z80_ICount], 5
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]

times ($$-$) & ((4)-1) nop
..@9547.dont_take_jump:
 sub dword [_z80_ICount], 5
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2975+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2976+0 raze.inc
op_f0:
%line 2977+1 raze.inc
 test zF, FLAG_S
%line 2977+0 raze.inc
 jnz near ..@9565.dont_take_jump
 mov edi, ezSP
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@9566.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@9566.finish

..@9566.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@9566.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 inc zSP
 mov ezPC, edx
 mov edi, ezSP
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@9569.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@9569.finish

..@9569.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@9569.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xchg dl, dh
 or ezPC, edx
 inc zSP

 xor dh, dh
 sub dword [_z80_ICount], 5
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]

times ($$-$) & ((4)-1) nop
..@9565.dont_take_jump:
 sub dword [_z80_ICount], 5
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2978+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2979+0 raze.inc
op_f8:
%line 2980+1 raze.inc
 test zF, FLAG_S
%line 2980+0 raze.inc
 jz near ..@9583.dont_take_jump
 mov edi, ezSP
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@9584.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@9584.finish

..@9584.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@9584.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 inc zSP
 mov ezPC, edx
 mov edi, ezSP
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@9587.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@9587.finish

..@9587.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@9587.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xchg dl, dh
 or ezPC, edx
 inc zSP

 xor dh, dh
 sub dword [_z80_ICount], 5
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]

times ($$-$) & ((4)-1) nop
..@9583.dont_take_jump:
 sub dword [_z80_ICount], 5
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2981+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2982+0 raze.inc
ed_4d:
%line 2983+1 raze.inc
 mov edi, ezSP
%line 2983+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@9602.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@9602.finish

..@9602.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@9602.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 mov ezPC, edx
 inc zSP
 mov edi, ezSP
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@9605.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@9605.finish

..@9605.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@9605.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xchg dl, dh
 or ezPC, edx
 inc zSP

 mov dl, [_z80_IFF2]
 mov [_z80_IFF1], dl
 call [_z80_RetI]

 sub dword [_z80_ICount], 14
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2984+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2985+0 raze.inc
ed_45:
%line 2986+1 raze.inc
 mov edi, ezSP
%line 2986+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@9615.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@9615.finish

..@9615.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@9615.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 mov ezPC, edx
 inc zSP
 mov edi, ezSP
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@9618.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@9618.finish

..@9618.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@9618.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xchg dl, dh
 or ezPC, edx
 inc zSP

 mov dl, [_z80_IFF2]
 mov [_z80_IFF1], dl
 sub dword [_z80_ICount], 14
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2987+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2988+0 raze.inc
ed_5d:
%line 2989+1 raze.inc
 mov edi, ezSP
%line 2989+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@9628.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@9628.finish

..@9628.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@9628.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 mov ezPC, edx
 inc zSP
 mov edi, ezSP
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@9631.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@9631.finish

..@9631.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@9631.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xchg dl, dh
 or ezPC, edx
 inc zSP

 mov dl, [_z80_IFF2]
 mov [_z80_IFF1], dl
 sub dword [_z80_ICount], 14
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2990+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2991+0 raze.inc
ed_55:
%line 2992+1 raze.inc
 mov edi, ezSP
%line 2992+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@9641.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@9641.finish

..@9641.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@9641.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 mov ezPC, edx
 inc zSP
 mov edi, ezSP
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@9644.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@9644.finish

..@9644.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@9644.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xchg dl, dh
 or ezPC, edx
 inc zSP

 mov dl, [_z80_IFF2]
 mov [_z80_IFF1], dl
 sub dword [_z80_ICount], 14
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2993+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2994+0 raze.inc
ed_6d:
%line 2995+1 raze.inc
 mov edi, ezSP
%line 2995+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@9654.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@9654.finish

..@9654.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@9654.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 mov ezPC, edx
 inc zSP
 mov edi, ezSP
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@9657.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@9657.finish

..@9657.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@9657.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xchg dl, dh
 or ezPC, edx
 inc zSP

 mov dl, [_z80_IFF2]
 mov [_z80_IFF1], dl
 sub dword [_z80_ICount], 14
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2996+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 2997+0 raze.inc
ed_65:
%line 2998+1 raze.inc
 mov edi, ezSP
%line 2998+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@9667.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@9667.finish

..@9667.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@9667.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 mov ezPC, edx
 inc zSP
 mov edi, ezSP
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@9670.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@9670.finish

..@9670.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@9670.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xchg dl, dh
 or ezPC, edx
 inc zSP

 mov dl, [_z80_IFF2]
 mov [_z80_IFF1], dl
 sub dword [_z80_ICount], 14
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 2999+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 3000+0 raze.inc
ed_7d:
%line 3001+1 raze.inc
 mov edi, ezSP
%line 3001+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@9680.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@9680.finish

..@9680.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@9680.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 mov ezPC, edx
 inc zSP
 mov edi, ezSP
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@9683.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@9683.finish

..@9683.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@9683.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xchg dl, dh
 or ezPC, edx
 inc zSP

 mov dl, [_z80_IFF2]
 mov [_z80_IFF1], dl
 sub dword [_z80_ICount], 14
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 3002+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 3003+0 raze.inc
ed_75:
%line 3004+1 raze.inc
 mov edi, ezSP
%line 3004+0 raze.inc
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@9693.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@9693.finish

..@9693.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@9693.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 mov ezPC, edx
 inc zSP
 mov edi, ezSP
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@9696.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@9696.finish

..@9696.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@9696.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xchg dl, dh
 or ezPC, edx
 inc zSP

 mov dl, [_z80_IFF2]
 mov [_z80_IFF1], dl
 sub dword [_z80_ICount], 14
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 3005+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 3006+0 raze.inc
op_c7:
%line 3007+1 raze.inc
 dec zSP
%line 3007+0 raze.inc
 mov edx, ezPC
 xchg dl, dh
 mov edi, ezSP
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@9706.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@9706.finish

..@9706.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@9706.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx
 dec zSP
 mov edx, ezPC
 mov edi, ezSP
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@9709.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@9709.finish

..@9709.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@9709.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 mov ezPC, 0h
 sub dword [_z80_ICount], 11
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 3008+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 3009+0 raze.inc
op_cf:
%line 3010+1 raze.inc
 dec zSP
%line 3010+0 raze.inc
 mov edx, ezPC
 xchg dl, dh
 mov edi, ezSP
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@9719.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@9719.finish

..@9719.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@9719.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx
 dec zSP
 mov edx, ezPC
 mov edi, ezSP
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@9722.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@9722.finish

..@9722.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@9722.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 mov ezPC, 8h
 sub dword [_z80_ICount], 11
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 3011+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 3012+0 raze.inc
op_d7:
%line 3013+1 raze.inc
 dec zSP
%line 3013+0 raze.inc
 mov edx, ezPC
 xchg dl, dh
 mov edi, ezSP
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@9732.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@9732.finish

..@9732.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@9732.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx
 dec zSP
 mov edx, ezPC
 mov edi, ezSP
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@9735.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@9735.finish

..@9735.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@9735.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 mov ezPC, 10h
 sub dword [_z80_ICount], 11
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 3014+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 3015+0 raze.inc
op_df:
%line 3016+1 raze.inc
 dec zSP
%line 3016+0 raze.inc
 mov edx, ezPC
 xchg dl, dh
 mov edi, ezSP
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@9745.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@9745.finish

..@9745.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@9745.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx
 dec zSP
 mov edx, ezPC
 mov edi, ezSP
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@9748.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@9748.finish

..@9748.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@9748.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 mov ezPC, 18h
 sub dword [_z80_ICount], 11
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 3017+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 3018+0 raze.inc
op_e7:
%line 3019+1 raze.inc
 dec zSP
%line 3019+0 raze.inc
 mov edx, ezPC
 xchg dl, dh
 mov edi, ezSP
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@9758.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@9758.finish

..@9758.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@9758.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx
 dec zSP
 mov edx, ezPC
 mov edi, ezSP
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@9761.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@9761.finish

..@9761.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@9761.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 mov ezPC, 20h
 sub dword [_z80_ICount], 11
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 3020+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 3021+0 raze.inc
op_ef:
%line 3022+1 raze.inc
 dec zSP
%line 3022+0 raze.inc
 mov edx, ezPC
 xchg dl, dh
 mov edi, ezSP
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@9771.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@9771.finish

..@9771.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@9771.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx
 dec zSP
 mov edx, ezPC
 mov edi, ezSP
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@9774.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@9774.finish

..@9774.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@9774.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 mov ezPC, 28h
 sub dword [_z80_ICount], 11
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 3023+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 3024+0 raze.inc
op_f7:
%line 3025+1 raze.inc
 dec zSP
%line 3025+0 raze.inc
 mov edx, ezPC
 xchg dl, dh
 mov edi, ezSP
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@9784.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@9784.finish

..@9784.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@9784.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx
 dec zSP
 mov edx, ezPC
 mov edi, ezSP
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@9787.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@9787.finish

..@9787.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@9787.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 mov ezPC, 30h
 sub dword [_z80_ICount], 11
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 3026+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 3027+0 raze.inc
op_ff:
%line 3028+1 raze.inc
 dec zSP
%line 3028+0 raze.inc
 mov edx, ezPC
 xchg dl, dh
 mov edi, ezSP
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@9797.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@9797.finish

..@9797.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@9797.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx
 dec zSP
 mov edx, ezPC
 mov edi, ezSP
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@9800.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@9800.finish

..@9800.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@9800.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 mov ezPC, 38h
 sub dword [_z80_ICount], 11
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 3029+1 raze.inc





times ($$-$) & ((4)-1) nop
%line 3034+0 raze.inc
op_d3:
%line 3035+1 raze.inc
 mov edx, ezPC
%line 3035+0 raze.inc
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 mov dh, zA
 mov edi, edx
 mov dl, zA
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor dh, dh
 push edx
 push edi
 call [_z80_Out]
 add esp, 8
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx
 sub dword [_z80_ICount], 11
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 3036+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 3037+0 raze.inc
op_db:
%line 3038+1 raze.inc
 mov edx, ezPC
%line 3038+0 raze.inc
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 mov dh, zA
 mov edi, edx
 push edi
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 call [_z80_In]
 xor edx, edx
 add esp, 4
 mov dl, al
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 mov zA, dl
 sub dword [_z80_ICount], 11
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 3039+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 3040+0 raze.inc
ed_40:
%line 3041+1 raze.inc
 mov edi, ezBC
%line 3041+0 raze.inc
 push edi
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 call [_z80_In]
 xor edx, edx
 add esp, 4
 mov dl, al
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 mov dh, zF
 and dh, FLAG_C
 mov zB, dl
 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 xor dh, dh

 sub dword [_z80_ICount], 12
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 3042+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 3043+0 raze.inc
ed_48:
%line 3044+1 raze.inc
 mov edi, ezBC
%line 3044+0 raze.inc
 push edi
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 call [_z80_In]
 xor edx, edx
 add esp, 4
 mov dl, al
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 mov dh, zF
 and dh, FLAG_C
 mov zC, dl
 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 xor dh, dh

 sub dword [_z80_ICount], 12
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 3045+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 3046+0 raze.inc
ed_50:
%line 3047+1 raze.inc
 mov edi, ezBC
%line 3047+0 raze.inc
 push edi
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 call [_z80_In]
 xor edx, edx
 add esp, 4
 mov dl, al
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 mov dh, zF
 and dh, FLAG_C
 mov zD, dl
 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 xor dh, dh

 sub dword [_z80_ICount], 12
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 3048+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 3049+0 raze.inc
ed_58:
%line 3050+1 raze.inc
 mov edi, ezBC
%line 3050+0 raze.inc
 push edi
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 call [_z80_In]
 xor edx, edx
 add esp, 4
 mov dl, al
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 mov dh, zF
 and dh, FLAG_C
 mov zE, dl
 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 xor dh, dh

 sub dword [_z80_ICount], 12
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 3051+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 3052+0 raze.inc
ed_60:
%line 3053+1 raze.inc
 mov edi, ezBC
%line 3053+0 raze.inc
 push edi
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 call [_z80_In]
 xor edx, edx
 add esp, 4
 mov dl, al
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 mov dh, zF
 and dh, FLAG_C
 mov zH, dl
 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 xor dh, dh

 sub dword [_z80_ICount], 12
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 3054+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 3055+0 raze.inc
ed_68:
%line 3056+1 raze.inc
 mov edi, ezBC
%line 3056+0 raze.inc
 push edi
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 call [_z80_In]
 xor edx, edx
 add esp, 4
 mov dl, al
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 mov dh, zF
 and dh, FLAG_C
 mov zL, dl
 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 xor dh, dh

 sub dword [_z80_ICount], 12
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 3057+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 3058+0 raze.inc
ed_70:
%line 3059+1 raze.inc
 mov edi, ezBC
%line 3059+0 raze.inc
 push edi
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 call [_z80_In]
 xor edx, edx
 add esp, 4
 mov dl, al
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 mov dh, zF
 and dh, FLAG_C
 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 xor dh, dh

 sub dword [_z80_ICount], 12
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 3060+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 3061+0 raze.inc
ed_78:
%line 3062+1 raze.inc
 mov edi, ezBC
%line 3062+0 raze.inc
 push edi
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 call [_z80_In]
 xor edx, edx
 add esp, 4
 mov dl, al
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 mov dh, zF
 and dh, FLAG_C
 mov zA, dl
 test dl, dl
 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, dh
 xor dh, dh

 sub dword [_z80_ICount], 12
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 3063+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 3064+0 raze.inc
ed_41:
%line 3065+1 raze.inc
 mov edi, ezBC
%line 3065+0 raze.inc
 mov dl, zB
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor dh, dh
 push edx
 push edi
 call [_z80_Out]
 add esp, 8
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx
 sub dword [_z80_ICount], 12
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 3066+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 3067+0 raze.inc
ed_49:
%line 3068+1 raze.inc
 mov edi, ezBC
%line 3068+0 raze.inc
 mov dl, zC
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor dh, dh
 push edx
 push edi
 call [_z80_Out]
 add esp, 8
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx
 sub dword [_z80_ICount], 12
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 3069+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 3070+0 raze.inc
ed_51:
%line 3071+1 raze.inc
 mov edi, ezBC
%line 3071+0 raze.inc
 mov dl, zD
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor dh, dh
 push edx
 push edi
 call [_z80_Out]
 add esp, 8
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx
 sub dword [_z80_ICount], 12
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 3072+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 3073+0 raze.inc
ed_59:
%line 3074+1 raze.inc
 mov edi, ezBC
%line 3074+0 raze.inc
 mov dl, zE
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor dh, dh
 push edx
 push edi
 call [_z80_Out]
 add esp, 8
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx
 sub dword [_z80_ICount], 12
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 3075+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 3076+0 raze.inc
ed_61:
%line 3077+1 raze.inc
 mov edi, ezBC
%line 3077+0 raze.inc
 mov dl, zH
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor dh, dh
 push edx
 push edi
 call [_z80_Out]
 add esp, 8
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx
 sub dword [_z80_ICount], 12
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 3078+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 3079+0 raze.inc
ed_69:
%line 3080+1 raze.inc
 mov edi, ezBC
%line 3080+0 raze.inc
 mov dl, zL
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor dh, dh
 push edx
 push edi
 call [_z80_Out]
 add esp, 8
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx
 sub dword [_z80_ICount], 12
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 3081+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 3082+0 raze.inc
ed_71:
%line 3083+1 raze.inc
 mov edi, ezBC
%line 3083+0 raze.inc
 xor dl, dl
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor dh, dh
 push edx
 push edi
 call [_z80_Out]
 add esp, 8
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx
 sub dword [_z80_ICount], 12
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 3084+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 3085+0 raze.inc
ed_79:
%line 3086+1 raze.inc
 mov edi, ezBC
%line 3086+0 raze.inc
 mov dl, zA
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor dh, dh
 push edx
 push edi
 call [_z80_Out]
 add esp, 8
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx
 sub dword [_z80_ICount], 12
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 3087+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 3088+0 raze.inc
ed_a2:
%line 3089+1 raze.inc

%line 3089+0 raze.inc
 movzx edi, zC

 push edi
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 call [_z80_In]
 xor edx, edx
 add esp, 4
 mov dl, al
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 mov edi, ezHL
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@9995.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@9995.finish

..@9995.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@9995.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 inc zHL
 dec zB

 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P


 sub dword [_z80_ICount], 16
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 3090+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 3091+0 raze.inc
ed_aa:
%line 3092+1 raze.inc

%line 3092+0 raze.inc
 movzx edi, zC

 push edi
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 call [_z80_In]
 xor edx, edx
 add esp, 4
 mov dl, al
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 mov edi, ezHL
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@10008.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@10008.finish

..@10008.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@10008.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 dec zHL
 dec zB

 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P


 sub dword [_z80_ICount], 16
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 3093+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 3094+0 raze.inc
ed_b2:
%line 3095+1 raze.inc

%line 3095+0 raze.inc
..@10017.inir_loop:
 movzx edi, zC

 push edi
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 call [_z80_In]
 xor edx, edx
 add esp, 4
 mov dl, al
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 mov edi, ezHL
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@10021.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@10021.finish

..@10021.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@10021.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 inc zHL
 dec zB
 jz ..@10017.inir_zero

 sub [_z80_ICount], dword 21
 ja near ..@10017.inir_loop



 mov zF, zB
 and zF, FLAG_S


 sub zPC, 2
 jmp z80_finish


..@10017.inir_zero:
 mov zF, FLAG_Z|FLAG_P


 sub dword [_z80_ICount], 16
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 3096+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 3097+0 raze.inc
ed_ba:
%line 3098+1 raze.inc

%line 3098+0 raze.inc
..@10031.indr_loop:
 movzx edi, zC

 push edi
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 call [_z80_In]
 xor edx, edx
 add esp, 4
 mov dl, al
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 mov edi, ezHL
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@10035.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@10035.finish

..@10035.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@10035.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 dec zHL
 dec zB
 jz ..@10031.indr_zero

 sub [_z80_ICount], dword 21
 ja near ..@10031.indr_loop



 mov zF, zB
 and zF, FLAG_S


 sub zPC, 2
 jmp z80_finish


..@10031.indr_zero:
 mov zF, FLAG_Z|FLAG_P


 sub dword [_z80_ICount], 16
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 3099+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 3100+0 raze.inc
ed_a3:
%line 3101+1 raze.inc

%line 3101+0 raze.inc
 mov edi, ezHL

 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@10046.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@10046.finish

..@10046.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@10046.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 movzx edi, zC
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor dh, dh
 push edx
 push edi
 call [_z80_Out]
 add esp, 8
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 inc zHL
 dec zB

 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P


 sub dword [_z80_ICount], 16
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 3102+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 3103+0 raze.inc
ed_ab:
%line 3104+1 raze.inc

%line 3104+0 raze.inc
 mov edi, ezHL

 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@10059.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@10059.finish

..@10059.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@10059.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 movzx edi, zC
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor dh, dh
 push edx
 push edi
 call [_z80_Out]
 add esp, 8
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 dec zHL
 dec zB

 lahf
 and zF, FLAG_S|FLAG_Z|FLAG_P


 sub dword [_z80_ICount], 16
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 3105+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 3106+0 raze.inc
ed_b3:
%line 3107+1 raze.inc
..@10071.otir_loop:
%line 3107+0 raze.inc
 mov edi, ezHL
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@10072.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@10072.finish

..@10072.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@10072.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 movzx edi, zC
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor dh, dh
 push edx
 push edi
 call [_z80_Out]
 add esp, 8
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 inc zHL
 dec zB
 jz ..@10071.otir_zero

 inc zR
 sub [_z80_ICount], dword 21
 ja near ..@10071.otir_loop



 mov zF, zB
 and zF, FLAG_S

 sub zPC, 2
 jmp z80_finish

..@10071.otir_zero:
 mov zF, FLAG_Z|FLAG_P
 sub dword [_z80_ICount], 16
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 3108+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 3109+0 raze.inc
ed_bb:
%line 3110+1 raze.inc
..@10085.otdr_loop:
%line 3110+0 raze.inc
 mov edi, ezHL
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@10086.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@10086.finish

..@10086.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@10086.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 movzx edi, zC
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor dh, dh
 push edx
 push edi
 call [_z80_Out]
 add esp, 8
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 dec zHL
 dec zB
 jz ..@10085.otdr_zero

 inc zR
 sub [_z80_ICount], dword 21
 ja near ..@10085.otdr_loop



 mov zF, zB
 and zF, FLAG_S

 sub zPC, 2
 jmp z80_finish

..@10085.otdr_zero:
 mov zF, FLAG_Z|FLAG_P
 sub dword [_z80_ICount], 16
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 3111+1 raze.inc





times ($$-$) & ((4)-1) nop
%line 3116+0 raze.inc
op_27:
%line 3117+1 raze.inc
 test zF, FLAG_H
%line 3117+0 raze.inc
 jnz ..@10099.daa_h_set
 and eax, 03ffh
 mov ax, [DAA_Table + eax*2]
 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]

..@10099.daa_h_set:
 and eax, 03ffh
 mov ax, [DAA_Table + eax*2 + 4*512]
 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 3118+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 3119+0 raze.inc
op_2f:
%line 3120+1 raze.inc
 not zA
%line 3120+0 raze.inc
 or zF, FLAG_H|FLAG_N
 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 3121+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 3122+0 raze.inc
ed_44:
%line 3123+1 raze.inc
 neg zA
%line 3123+0 raze.inc
 lahf
 jo ..@10116.neg_overflow
 and zF, ~FLAG_P
 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]

..@10116.neg_overflow:
 or zF, FLAG_P
 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 3124+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 3125+0 raze.inc
ed_4c:
%line 3126+1 raze.inc
 neg zA
%line 3126+0 raze.inc
 lahf
 jo ..@10126.neg_overflow
 and zF, ~FLAG_P
 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]

..@10126.neg_overflow:
 or zF, FLAG_P
 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 3127+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 3128+0 raze.inc
ed_54:
%line 3129+1 raze.inc
 neg zA
%line 3129+0 raze.inc
 lahf
 jo ..@10136.neg_overflow
 and zF, ~FLAG_P
 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]

..@10136.neg_overflow:
 or zF, FLAG_P
 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 3130+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 3131+0 raze.inc
ed_5c:
%line 3132+1 raze.inc
 neg zA
%line 3132+0 raze.inc
 lahf
 jo ..@10146.neg_overflow
 and zF, ~FLAG_P
 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]

..@10146.neg_overflow:
 or zF, FLAG_P
 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 3133+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 3134+0 raze.inc
ed_64:
%line 3135+1 raze.inc
 neg zA
%line 3135+0 raze.inc
 lahf
 jo ..@10156.neg_overflow
 and zF, ~FLAG_P
 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]

..@10156.neg_overflow:
 or zF, FLAG_P
 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 3136+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 3137+0 raze.inc
ed_6c:
%line 3138+1 raze.inc
 neg zA
%line 3138+0 raze.inc
 lahf
 jo ..@10166.neg_overflow
 and zF, ~FLAG_P
 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]

..@10166.neg_overflow:
 or zF, FLAG_P
 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 3139+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 3140+0 raze.inc
ed_74:
%line 3141+1 raze.inc
 neg zA
%line 3141+0 raze.inc
 lahf
 jo ..@10176.neg_overflow
 and zF, ~FLAG_P
 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]

..@10176.neg_overflow:
 or zF, FLAG_P
 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 3142+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 3143+0 raze.inc
ed_7c:
%line 3144+1 raze.inc
 neg zA
%line 3144+0 raze.inc
 lahf
 jo ..@10186.neg_overflow
 and zF, ~FLAG_P
 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]

..@10186.neg_overflow:
 or zF, FLAG_P
 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 3145+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 3146+0 raze.inc
op_3f:
%line 3147+1 raze.inc
 test zF, FLAG_C
%line 3147+0 raze.inc
 jz ..@10196.set_carry
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, FLAG_H
 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]

..@10196.set_carry:
 and zF, FLAG_S|FLAG_Z|FLAG_P
 or zF, FLAG_C
 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 3148+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 3149+0 raze.inc
op_37:
%line 3150+1 raze.inc
 and zF, FLAG_S|FLAG_Z|FLAG_P
%line 3150+0 raze.inc
 or zF, FLAG_C
 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 3151+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 3152+0 raze.inc
op_00:
%line 3153+1 raze.inc
 sub dword [_z80_ICount], 4
%line 3153+0 raze.inc
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 3154+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 3155+0 raze.inc
op_76:
%line 3156+1 raze.inc
mov [_z80_TempICount], dword 0
%line 3156+0 raze.inc
 and [_z80_ICount], dword 3
 sub [_z80_ICount], dword 4
 mov [_z80_halted], byte 1
 jmp z80_finish
%line 3157+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 3158+0 raze.inc
op_fb:
%line 3159+1 raze.inc
 mov dl, FLAG_P
%line 3159+0 raze.inc
 mov [_z80_IFF1], dl
 mov [_z80_IFF2], dl



 mov [_z80_afterEI], byte 1
 push eax
 mov eax, [_z80_ICount]
 mov [_z80_TempICount], eax
 mov [_z80_ICount], dword 1
 pop eax
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 3160+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 3161+0 raze.inc
op_f3:
%line 3162+1 raze.inc
 xor edx, edx
%line 3162+0 raze.inc
 mov [_z80_IFF1], dl
 mov [_z80_IFF2], dl
 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 3163+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 3164+0 raze.inc
ed_46:
%line 3165+1 raze.inc
 mov [_z80_IM], byte 0
%line 3165+0 raze.inc
 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 3166+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 3167+0 raze.inc
ed_66:
%line 3168+1 raze.inc
 mov [_z80_IM], byte 0
%line 3168+0 raze.inc
 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 3169+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 3170+0 raze.inc
ed_56:
%line 3171+1 raze.inc
 mov [_z80_IM], byte 1
%line 3171+0 raze.inc
 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 3172+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 3173+0 raze.inc
ed_76:
%line 3174+1 raze.inc
 mov [_z80_IM], byte 1
%line 3174+0 raze.inc
 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 3175+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 3176+0 raze.inc
ed_4e:
%line 3177+1 raze.inc
 mov [_z80_IM], byte 1
%line 3177+0 raze.inc
 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 3178+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 3179+0 raze.inc
ed_6e:
%line 3180+1 raze.inc
 mov [_z80_IM], byte 1
%line 3180+0 raze.inc
 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 3181+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 3182+0 raze.inc
ed_5e:
%line 3183+1 raze.inc
 mov [_z80_IM], byte 2
%line 3183+0 raze.inc
 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 3184+1 raze.inc

times ($$-$) & ((4)-1) nop
%line 3185+0 raze.inc
ed_7e:
%line 3186+1 raze.inc
 mov [_z80_IM], byte 2
%line 3186+0 raze.inc
 sub dword [_z80_ICount], 8
 jbe near z80_finish
 inc zR
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 3187+1 raze.inc



%line 2983+1 src/z80/raze/raze.asm





times ($$-$) & ((4)-1) nop
%line 2988+0 src/z80/raze/raze.asm
op_cb:
%line 2990+1 src/z80/raze/raze.asm
 inc zR

 mov edx, ezPC
%line 2992+0 src/z80/raze/raze.asm
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
%line 2993+1 src/z80/raze/raze.asm
 jmp [CBTable+edx*4]

times ($$-$) & ((4)-1) nop
%line 2995+0 src/z80/raze/raze.asm
op_ed:
%line 2997+1 src/z80/raze/raze.asm
 inc zR

 mov edx, ezPC
%line 2999+0 src/z80/raze/raze.asm
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
%line 3000+1 src/z80/raze/raze.asm
 jmp [EDTable+edx*4]

times ($$-$) & ((4)-1) nop
%line 3002+0 src/z80/raze/raze.asm
op_dd:
%line 3004+1 src/z80/raze/raze.asm
 inc zR

 mov edx, ezPC
%line 3006+0 src/z80/raze/raze.asm
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
%line 3007+1 src/z80/raze/raze.asm
 jmp [DDTable+edx*4]

times ($$-$) & ((4)-1) nop
%line 3009+0 src/z80/raze/raze.asm
op_fd:
%line 3011+1 src/z80/raze/raze.asm
 inc zR

 mov edx, ezPC
%line 3013+0 src/z80/raze/raze.asm
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
%line 3014+1 src/z80/raze/raze.asm
 jmp [FDTable+edx*4]

times ($$-$) & ((4)-1) nop
%line 3016+0 src/z80/raze/raze.asm
dd_cb:
%line 3018+1 src/z80/raze/raze.asm
 inc zR

 mov edx, ezPC
%line 3020+0 src/z80/raze/raze.asm
 shr edx, 8
 mov edx, [_z80_Fetch+edx*4]

 movsx di, [edx+ezPC]
 inc zPC
 xor edx, edx
%line 3021+1 src/z80/raze/raze.asm
 add di, zIX
 push edi
 mov edx, ezPC
%line 3023+0 src/z80/raze/raze.asm
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
%line 3024+1 src/z80/raze/raze.asm
 pop edi
 jmp [DDCBTable+edx*4]

times ($$-$) & ((4)-1) nop
%line 3027+0 src/z80/raze/raze.asm
fd_cb:
%line 3029+1 src/z80/raze/raze.asm
 inc zR

 mov edx, ezPC
%line 3031+0 src/z80/raze/raze.asm
 shr edx, 8
 mov edx, [_z80_Fetch+edx*4]

 movsx di, [edx+ezPC]
 inc zPC
 xor edx, edx
%line 3032+1 src/z80/raze/raze.asm
 add di, zIY
 push edi
 mov edx, ezPC
%line 3034+0 src/z80/raze/raze.asm
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
%line 3035+1 src/z80/raze/raze.asm
 pop edi
 jmp [DDCBTable+edx*4]

times ($$-$) & ((4)-1) nop
%line 3038+0 src/z80/raze/raze.asm
ed_xx:
%line 3040+1 src/z80/raze/raze.asm
 inc zR

 sub dword [_z80_ICount], 8
%line 3042+0 src/z80/raze/raze.asm
 jbe near z80_finish
%line 3043+1 src/z80/raze/raze.asm
 inc zR
%line 3043+0 src/z80/raze/raze.asm
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 3044+1 src/z80/raze/raze.asm

times ($$-$) & ((4)-1) nop
%line 3045+0 src/z80/raze/raze.asm
dd_xx:
%line 3046+1 src/z80/raze/raze.asm
 dec zPC
 sub dword [_z80_ICount], 4
%line 3047+0 src/z80/raze/raze.asm
 jbe near z80_finish
%line 3048+1 src/z80/raze/raze.asm
 inc zR
%line 3048+0 src/z80/raze/raze.asm
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 3049+1 src/z80/raze/raze.asm

times ($$-$) & ((4)-1) nop
%line 3050+0 src/z80/raze/raze.asm
fd_xx:
%line 3051+1 src/z80/raze/raze.asm
 dec zPC
 sub dword [_z80_ICount], 0
%line 3052+0 src/z80/raze/raze.asm
 jbe near z80_finish
%line 3053+1 src/z80/raze/raze.asm
 inc zR
%line 3053+0 src/z80/raze/raze.asm
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 3054+1 src/z80/raze/raze.asm


z80_finish:
 cmp [_z80_afterEI], byte 1
 jne near really_finish
 push eax
 mov eax, [_z80_TempICount]
 mov [_z80_ICount], eax
 mov [_z80_afterEI], byte 0
 pop eax
 cmp [_z80_IRQLine], byte 0
%line 3064+0 src/z80/raze/raze.asm
 je near ..@10336.finish
 cmp [_z80_IFF1], byte 0
 je near ..@10336.finish

 mov [_z80_IRQLine], byte 0


 mov [_z80_IFF1], byte 0
 mov [_z80_IFF2], byte 0
 inc zR

 mov [_z80_halted], byte 0

 mov edx, ezPC
 dec zSP

 xchg dl, dh
 mov edi, ezSP
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@10337.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@10337.finish

..@10337.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@10337.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx
 dec zSP
 mov edx, ezPC
 mov edi, ezSP
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@10340.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@10340.finish

..@10340.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@10340.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 cmp [_z80_IM], byte 0
 jne ..@10336.not_im0

 mov dl, [_z80_IRQVector]
 sub dl, 0c7h
 movzx ezPC, dl
 jmp ..@10336.finish

..@10336.not_im0:
 cmp [_z80_IM], byte 1
 jne ..@10336.not_im1

 mov ezPC, 38h
 jmp ..@10336.finish

..@10336.not_im1:

 mov dl, [_z80_IRQVector]
 mov dh, zI
 mov edi, edx
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@10343.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@10343.finish

..@10343.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@10343.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 inc di
 mov ezPC, edx
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@10346.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@10346.finish

..@10346.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@10346.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xchg dl, dh
 or ezPC, edx
 xor dh, dh
..@10336.finish:
%line 3065+1 src/z80/raze/raze.asm
 sub dword [_z80_ICount], 4
 jbe near z80_finish
 inc zR
%line 3067+0 src/z80/raze/raze.asm
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 3068+1 src/z80/raze/raze.asm

really_finish:

 and zF, ~(FLAG_3|FLAG_5)
 mov dl, [_z80_flag35]
 and dl, FLAG_3|FLAG_5
 or zF, dl

 mov [_z80_AF], ezAF
 mov [_z80_HL], ezHL
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 pop ebp
 pop edi
 pop esi
 pop ebx
 mov eax, [_z80_Initial_ICount]
 sub eax, [_z80_ICount]
 ret

z80_default_in:
z80_default_read:
 mov eax, 0ffh
 ret

z80_default_out:
z80_default_write:
z80_default_reti:
z80_default_fetch_callback:
 ret



read_dispatcher:
 mov eax, [esp+4]
 mov edx, _read_handlers
rd_find:
 add edx, 16
 cmp [edx-16], eax
 ja rd_find
 cmp [edx-12], eax
 jb rd_find

 cmp [edx-8], dword 1
 je rd_handler

 add eax, [edx-4]
 movzx eax, byte [eax]
 ret

rd_handler:
 jmp [edx-4]



write_dispatcher:
 mov eax, [esp+4]
 mov edx, _write_handlers
wd_find:
 add edx, 16
 cmp [edx-16], eax
 ja wd_find
 cmp [edx-12], eax
 jb wd_find

 cmp [edx-8], dword 1
 je wd_handler

 add eax, [edx-4]
 mov ecx, [esp+8]
 mov [eax], cl
 ret

wd_handler:
 jmp [edx-4]





[global z80_emulate]
z80_emulate:
%line 3155+1 src/z80/raze/raze.asm
 mov eax, [esp+4]
 push ebx
 push esi
 push edi
 push ebp

%line 3164+1 src/z80/raze/raze.asm
 mov [_z80_ICount], eax
 mov [_z80_Initial_ICount], eax
 xor edx, edx
 xor edi, edi
%line 3171+1 src/z80/raze/raze.asm
 mov [_z80_afterEI], dl
 mov ezAF, [_z80_AF]
 mov ezHL, [_z80_HL]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 mov [_z80_flag35], zF
 cmp [_z80_halted], byte 0
 je not_halted
 and [_z80_ICount], dword 3
 sub [_z80_ICount], dword 4
 jmp z80_finish
not_halted:
 inc zR
%line 3184+0 src/z80/raze/raze.asm
 mov edx, ezPC
 shr edx, 8
 mov edi, [_z80_Fetch+edx*4]

 mov dl, [edi+ezPC]
 inc zPC
 xor edi, edi
 jmp [OpTable+edx*4]
%line 3185+1 src/z80/raze/raze.asm




[global z80_reset]
z80_reset:
%line 3195+1 src/z80/raze/raze.asm
 push edi
 xor eax, eax
 mov edi, context_start
 mov ecx, (registers_end - context_start)
 rep stosb
 pop edi
 mov [_z80_IX], word 0ffffh
 mov [_z80_IY], word 0ffffh
 mov [_z80_AF], word 04000h
 ret







[global z80_raise_IRQ]
z80_raise_IRQ:
%line 3218+1 src/z80/raze/raze.asm

 mov [_z80_IRQLine], byte 1
 mov eax, [esp+4]
 mov [_z80_IRQVector], al

 xor edx, edx
 push ebx
 push esi
 push edi
 push ebp
 mov ezAF, [_z80_AF]
%line 3228+0 src/z80/raze/raze.asm
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
%line 3229+1 src/z80/raze/raze.asm

 cmp [_z80_IRQLine], byte 0
%line 3230+0 src/z80/raze/raze.asm
 je near ..@10358.finish
 cmp [_z80_IFF1], byte 0
 je near ..@10358.finish

 mov [_z80_IRQLine], byte 0


 mov [_z80_IFF1], byte 0
 mov [_z80_IFF2], byte 0
 inc zR

 mov [_z80_halted], byte 0

 mov edx, ezPC
 dec zSP

 xchg dl, dh
 mov edi, ezSP
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@10359.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@10359.finish

..@10359.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@10359.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx
 dec zSP
 mov edx, ezPC
 mov edi, ezSP
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@10362.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@10362.finish

..@10362.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@10362.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx

 cmp [_z80_IM], byte 0
 jne ..@10358.not_im0

 mov dl, [_z80_IRQVector]
 sub dl, 0c7h
 movzx ezPC, dl
 jmp ..@10358.finish

..@10358.not_im0:
 cmp [_z80_IM], byte 1
 jne ..@10358.not_im1

 mov ezPC, 38h
 jmp ..@10358.finish

..@10358.not_im1:

 mov dl, [_z80_IRQVector]
 mov dh, zI
 mov edi, edx
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@10365.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@10365.finish

..@10365.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@10365.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 inc di
 mov ezPC, edx
 mov [_z80_AF], ezAF
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Read+edx*8]

 test ecx, ecx
 jnz ..@10368.handler

 mov ecx, [_z80_Read+edx*8+4]
 mov dl, [ecx+edi]
 jmp ..@10368.finish

..@10368.handler:
 push edi
 call ecx
 xor edx, edx
 add esp, 4
 mov dl, al
..@10368.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xchg dl, dh
 or ezPC, edx
 xor dh, dh
..@10358.finish:
%line 3231+1 src/z80/raze/raze.asm

 mov [_z80_AF], ezAF
%line 3232+0 src/z80/raze/raze.asm
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
%line 3233+1 src/z80/raze/raze.asm
 pop ebp
 pop edi
 pop esi
 pop ebx
 ret




[global z80_lower_IRQ]
z80_lower_IRQ:
%line 3248+1 src/z80/raze/raze.asm
 mov [_z80_IRQLine], byte 0
 ret






[global z80_cause_NMI]
z80_cause_NMI:
%line 3262+1 src/z80/raze/raze.asm

 xor edx, edx
 push ebx
 push esi
 push edi
 push ebp
 mov ezAF, [_z80_AF]
%line 3268+0 src/z80/raze/raze.asm
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
%line 3269+1 src/z80/raze/raze.asm


 mov [_z80_IFF1], byte 0


%line 3278+1 src/z80/raze/raze.asm
 inc zR


 mov [_z80_halted], byte 0

 mov edx, ezPC
 dec zSP

 xchg dl, dh
 mov edi, ezSP
 mov [_z80_AF], ezAF
%line 3288+0 src/z80/raze/raze.asm
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@10375.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@10375.finish

..@10375.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@10375.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx
%line 3289+1 src/z80/raze/raze.asm
 dec zSP
 mov edx, ezPC
 mov edi, ezSP
 mov [_z80_AF], ezAF
%line 3292+0 src/z80/raze/raze.asm
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
 xor eax, eax
 mov al, dl

 mov edx, edi
 shr edx, 8
 mov ecx, [_z80_Write+edx*8]

 test ecx, ecx
 jnz ..@10378.handler

 mov ecx, [_z80_Write+edx*8+4]
 mov [ecx+edi], al
 jmp ..@10378.finish

..@10378.handler:
 push eax
 push edi
 call ecx
 add esp, 8
..@10378.finish:
 mov ezAF, [_z80_AF]
 mov ezBC, [_z80_BC]
 mov ezPC, [_z80_PC]
 mov zR, [_z80_R]
 xor edx, edx
%line 3293+1 src/z80/raze/raze.asm

 mov ezPC, 66h

 mov [_z80_AF], ezAF
%line 3296+0 src/z80/raze/raze.asm
 mov [_z80_BC], ezBC
 mov [_z80_PC], ezPC
 mov [_z80_R], zR
%line 3297+1 src/z80/raze/raze.asm
 pop ebp
 pop edi
 pop esi
 pop ebx
 ret




[global z80_get_context_size]
z80_get_context_size:
%line 3312+1 src/z80/raze/raze.asm

 mov eax, (context_end - context_start) + 4
 ret





[global z80_set_context]
z80_set_context:
%line 3326+1 src/z80/raze/raze.asm

 push esi
 push edi
 mov ecx, (context_end - context_start) / 4
 mov esi, [esp+12]
 mov edi, context_start
 rep movsd
 pop edi
 pop esi
 ret




[global z80_get_context]
z80_get_context:
%line 3346+1 src/z80/raze/raze.asm

 push esi
 push edi
 mov ecx, (context_end - context_start) / 4
 mov edi, [esp+12]
 mov esi, context_start
 rep movsd
 pop edi
 pop esi
 ret




[global z80_get_cycles_elapsed]
z80_get_cycles_elapsed:
%line 3366+1 src/z80/raze/raze.asm

 mov eax, [_z80_Initial_ICount]
 sub eax, [_z80_ICount]
 cmp [_z80_afterEI], byte 0
 je z80_gcd_fin
 sub eax, [_z80_TempICount]
z80_gcd_fin:
 ret






[global z80_stop_emulating]
z80_stop_emulating:
%line 3386+1 src/z80/raze/raze.asm

 mov eax, [_z80_ICount]
 sub [_z80_Initial_ICount], eax
 cmp [_z80_afterEI], byte 0
 je z80_se_fin
 mov ecx, [_z80_TempICount]
 sub [_z80_Initial_ICount], ecx
z80_se_fin:
 mov [_z80_ICount], dword 0
 mov [_z80_TempICount], dword 0
 ret







[global z80_skip_idle]
z80_skip_idle:
%line 3410+1 src/z80/raze/raze.asm

 mov [_z80_ICount], dword 0
 mov [_z80_TempICount], dword 0
 ret




[global z80_do_wait_states]
z80_do_wait_states:
%line 3424+1 src/z80/raze/raze.asm

 add [_z80_Initial_ICount], eax
 ret




[global z80_get_reg]
z80_get_reg:
%line 3437+1 src/z80/raze/raze.asm

 mov ecx, [esp+4]
 cmp ecx, Z80_REG_HL2
 mov eax, [context_start + ecx*4]
 jbe getreg_simple

 cmp ecx, Z80_REG_IFF1
 mov al, [_z80_IFF1]
 je getreg_boolean

 cmp ecx, Z80_REG_IFF2
 mov al, [_z80_IFF2]
 je getreg_boolean

 cmp ecx, Z80_REG_IRQLine
 mov al, [_z80_IRQLine]
 je getreg_boolean

 cmp ecx, Z80_REG_Halted
 mov al, [_z80_halted]
 je getreg_boolean

 cmp ecx, Z80_REG_IM
 movzx eax, byte [_z80_IM]
 je getreg_finish

 cmp ecx, Z80_REG_IRQVector
 movzx eax, byte [_z80_IRQVector]
 je getreg_finish


 mov eax, [_z80_R]
 and eax, 7fh
 mov edx, [_z80_R2]
 and edx, 80h
 or eax, edx
 mov ah, byte [_z80_I]
 ret

getreg_simple:
 cmp ecx, Z80_REG_AF
 je getreg_swap
 cmp ecx, Z80_REG_AF2
 je getreg_swap
getreg_finish:
 ret
getreg_swap:
 xchg al, ah
 ret

getreg_boolean:
 and eax, 0ffh
 jz getreg_finish
 mov al, 1
 ret




[global z80_set_reg]
z80_set_reg:
%line 3502+1 src/z80/raze/raze.asm

 mov ecx, [esp+4]
 mov eax, [esp+8]
 and eax, 0ffffh
 cmp ecx, Z80_REG_HL2
 jbe setreg_simple

 cmp ecx, Z80_REG_IFF1
 lea edx, [_z80_IFF1]
 jbe setreg_boolean

 cmp ecx, Z80_REG_IFF2
 lea edx, [_z80_IFF2]
 jbe setreg_boolean

 cmp ecx, Z80_REG_IRQLine
 lea edx, [_z80_IRQLine]
 je setreg_boolean

 cmp ecx, Z80_REG_Halted
 lea edx, [_z80_halted]
 je setreg_boolean

 cmp ecx, Z80_REG_IM
 lea edx, [_z80_IM]
 je setreg_value

 cmp ecx, Z80_REG_IRQVector
 lea edx, [_z80_IRQVector]
 je setreg_value


 mov [_z80_I], ah
 mov [_z80_R2], eax
 mov [_z80_R], eax
 ret

setreg_simple:
 cmp ecx, Z80_REG_AF
 je setreg_swap
 cmp ecx, Z80_REG_AF2
 je setreg_swap
setreg_finish:
 mov [context_start + ecx*4], eax
 ret
setreg_swap:
 xchg al, ah
 mov [context_start + ecx*4], eax
 ret

setreg_boolean:
 test eax, eax
 jz setreg_value
 mov al, FLAG_P

setreg_value:
 mov [edx], al
 ret




[global z80_init_memmap]
z80_init_memmap:
%line 3570+1 src/z80/raze/raze.asm

 mov [_z80_In], dword z80_default_in
 mov [_z80_Out], dword z80_default_out
 mov [_z80_RetI], dword z80_default_reti
 mov [_z80_Fetch_Callback], dword z80_default_fetch_callback

 push edi
 mov eax, -1
 mov ecx, 64*4
 mov edi, _read_handlers
 rep stosd
 mov ecx, 64*4
 mov edi, _write_handlers
 rep stosd


 mov edi, _z80_Read
 mov ecx, 100h
clear_read:
 mov [edi], dword z80_default_read
 add edi, 8
 loop clear_read


 mov edi, _z80_Write
 mov ecx, 100h
clear_write:
 mov [edi], dword z80_default_write
 add edi, 8
 loop clear_write

 pop edi
 ret




[global z80_end_memmap]
z80_end_memmap:
%line 3613+1 src/z80/raze/raze.asm


 mov edx, _read_handlers
er_find:
 add edx, 16
 cmp [edx-16], dword (-1)
 jne er_find
 sub edx, 16


 mov [edx], dword 0
 mov [edx+4], dword 0ffffh
 mov [edx+8], dword 0
 mov [edx+12], dword z80_default_read


 mov edx, _write_handlers
ew_find:
 add edx, 16
 cmp [edx-16], dword (-1)
 jne ew_find
 sub edx, 16


 mov [edx], dword 0
 mov [edx+4], dword 0ffffh
 mov [edx+8], dword 0
 mov [edx+12], dword z80_default_write
 ret






[global z80_map_fetch]
z80_map_fetch:
%line 3654+1 src/z80/raze/raze.asm

 push ebx
 mov eax, [esp+8]
 mov ebx, [esp+12]
 mov ecx, [esp+16]
 and eax, 0ffffh
 and ebx, 0ffffh
 sub ecx, eax

mf_loop:

 mov edx, eax
 shr edx, 8

 cmp eax, ebx
 ja mf_finish

 mov [_z80_Fetch+edx*4], ecx
 add eax, 0100h
 jmp mf_loop

mf_finish:
 pop ebx
 ret






[global z80_map_read]
z80_map_read:
%line 3690+1 src/z80/raze/raze.asm

 push ebx
 mov eax, [esp+8]
 mov ebx, [esp+12]
 mov ecx, [esp+16]
 and eax, 0ffffh
 and ebx, 0ffffh
 sub ecx, eax

mr_loop:

 mov edx, eax
 shr edx, 8

 cmp eax, ebx
 ja mr_finish

 mov [_z80_Read+edx*8], dword 0
 mov [_z80_Read+edx*8+4], ecx
 add eax, 0100h
 jmp mr_loop

mr_finish:
 pop ebx
 ret






[global z80_map_write]
z80_map_write:
%line 3727+1 src/z80/raze/raze.asm

 push ebx
 mov eax, [esp+8]
 mov ebx, [esp+12]
 mov ecx, [esp+16]
 and eax, 0ffffh
 and ebx, 0ffffh
 sub ecx, eax

mw_loop:

 mov edx, eax
 shr edx, 8

 cmp eax, ebx
 ja mw_finish

 mov [_z80_Write+edx*8], dword 0
 mov [_z80_Write+edx*8+4], ecx
 add eax, 0100h
 jmp mw_loop

mw_finish:
 pop ebx
 ret







[global z80_add_read]
z80_add_read:
%line 3765+1 src/z80/raze/raze.asm

 push ebx
 mov eax, [esp+8]
 mov ebx, [esp+12]
 mov ecx, [esp+20]
 and eax, 0ffffh
 and ebx, 0ffffh


 mov edx, _read_handlers
ar_find:
 add edx, 16
 cmp [edx-16], dword (-1)
 jne ar_find
 sub edx, 16


 mov [edx], eax
 mov [edx+4], ebx
 mov eax, [esp+16]
 mov [edx+8], eax

 mov eax, ecx
 push ebx
 mov ebx, [esp+12]
 and ebx, 0ffffh
 cmp [esp+20], dword 1
 je ar_dont_adjust
 sub eax, ebx
ar_dont_adjust:
 mov [edx+12], eax

 mov eax, ebx
 pop ebx


 test al, al
 jz ar_start_done


 mov edx, eax
 shr edx, 8
 mov [_z80_Read+edx*8], dword read_dispatcher
 xor al, al
 add eax, 0100h

ar_start_done:

 cmp bl, 0ffh
 je ar_end_done


 mov edx, ebx
 shr edx, 8
 mov [_z80_Read+edx*8], dword read_dispatcher
 mov bl, 0ffh
 sub ebx, 0100h

ar_end_done:

 sub ecx, eax
ar_loop:

 mov edx, eax
 shr edx, 8

 cmp eax, ebx
 jg ar_finish

 cmp [esp+16], dword 0
 je ar_put_direct

 push ecx
 mov ecx, [esp+24]
 mov [_z80_Read+edx*8], ecx
 pop ecx
 add eax, 0100h
 jmp ar_loop

ar_put_direct:
 mov [_z80_Read+edx*8], dword 0
 mov [_z80_Read+edx*8+4], ecx
 add eax, 0100h
 jmp ar_loop

ar_finish:
 pop ebx
 ret







[global z80_add_write]
z80_add_write:
%line 3866+1 src/z80/raze/raze.asm

 push ebx
 mov eax, [esp+8]
 mov ebx, [esp+12]
 mov ecx, [esp+20]
 and eax, 0ffffh
 and ebx, 0ffffh


 mov edx, _write_handlers
aw_find:
 add edx, 16
 cmp [edx-16], dword (-1)
 jne aw_find
 sub edx, 16


 mov [edx], eax
 mov [edx+4], ebx
 mov eax, [esp+16]
 mov [edx+8], eax

 mov eax, ecx
 push ebx
 mov ebx, [esp+12]
 and ebx, 0ffffh
 cmp [esp+20], dword 1
 je aw_dont_adjust
 sub eax, ebx
aw_dont_adjust:
 mov [edx+12], eax

 mov eax, ebx
 pop ebx


 test al, al
 jz aw_start_done


 mov edx, eax
 shr edx, 8
 mov [_z80_Write+edx*8], dword write_dispatcher
 xor al, al
 add eax, 0100h

aw_start_done:

 cmp bl, 0ffh
 je aw_end_done


 mov edx, ebx
 shr edx, 8
 mov [_z80_Write+edx*8], dword write_dispatcher
 mov bl, 0ffh
 sub ebx, 0100h

aw_end_done:

 sub ecx, eax
aw_loop:

 mov edx, eax
 shr edx, 8

 cmp eax, ebx
 jg aw_finish

 cmp [esp+16], dword 0
 je aw_put_direct

 push ecx
 mov ecx, [esp+24]
 mov [_z80_Write+edx*8], ecx
 pop ecx
 add eax, 0100h
 jmp aw_loop

aw_put_direct:
 mov [_z80_Write+edx*8], dword 0
 mov [_z80_Write+edx*8+4], ecx
 add eax, 0100h
 jmp aw_loop

aw_finish:
 pop ebx
 ret




[global z80_set_in]
z80_set_in:
%line 3964+1 src/z80/raze/raze.asm

 mov eax, [esp+4]
 mov [_z80_In], eax
 ret




[global z80_set_out]
z80_set_out:
%line 3978+1 src/z80/raze/raze.asm

 mov eax, [esp+4]
 mov [_z80_Out], eax
 ret




[global z80_set_reti]
z80_set_reti:
%line 3992+1 src/z80/raze/raze.asm

 mov eax, [esp+4]
 mov [_z80_RetI], eax
 ret




[global z80_set_fetch_callback]
z80_set_fetch_callback:
%line 4006+1 src/z80/raze/raze.asm

 mov eax, [esp+4]
 mov [_z80_Fetch_Callback], eax
 ret



OpTable:
 dd op_00, op_01, op_02, op_03, op_04, op_05, op_06, op_07
 dd op_08, op_09, op_0a, op_0b, op_0c, op_0d, op_0e, op_0f
 dd op_10, op_11, op_12, op_13, op_14, op_15, op_16, op_17
 dd op_18, op_19, op_1a, op_1b, op_1c, op_1d, op_1e, op_1f
 dd op_20, op_21, op_22, op_23, op_24, op_25, op_26, op_27
 dd op_28, op_29, op_2a, op_2b, op_2c, op_2d, op_2e, op_2f
 dd op_30, op_31, op_32, op_33, op_34, op_35, op_36, op_37
 dd op_38, op_39, op_3a, op_3b, op_3c, op_3d, op_3e, op_3f
 dd op_40, op_41, op_42, op_43, op_44, op_45, op_46, op_47
 dd op_48, op_49, op_4a, op_4b, op_4c, op_4d, op_4e, op_4f
 dd op_50, op_51, op_52, op_53, op_54, op_55, op_56, op_57
 dd op_58, op_59, op_5a, op_5b, op_5c, op_5d, op_5e, op_5f
 dd op_60, op_61, op_62, op_63, op_64, op_65, op_66, op_67
 dd op_68, op_69, op_6a, op_6b, op_6c, op_6d, op_6e, op_6f
 dd op_70, op_71, op_72, op_73, op_74, op_75, op_76, op_77
 dd op_78, op_79, op_7a, op_7b, op_7c, op_7d, op_7e, op_7f
 dd op_80, op_81, op_82, op_83, op_84, op_85, op_86, op_87
 dd op_88, op_89, op_8a, op_8b, op_8c, op_8d, op_8e, op_8f
 dd op_90, op_91, op_92, op_93, op_94, op_95, op_96, op_97
 dd op_98, op_99, op_9a, op_9b, op_9c, op_9d, op_9e, op_9f
 dd op_a0, op_a1, op_a2, op_a3, op_a4, op_a5, op_a6, op_a7
 dd op_a8, op_a9, op_aa, op_ab, op_ac, op_ad, op_ae, op_af
 dd op_b0, op_b1, op_b2, op_b3, op_b4, op_b5, op_b6, op_b7
 dd op_b8, op_b9, op_ba, op_bb, op_bc, op_bd, op_be, op_bf
 dd op_c0, op_c1, op_c2, op_c3, op_c4, op_c5, op_c6, op_c7
 dd op_c8, op_c9, op_ca, op_cb, op_cc, op_cd, op_ce, op_cf
 dd op_d0, op_d1, op_d2, op_d3, op_d4, op_d5, op_d6, op_d7
 dd op_d8, op_d9, op_da, op_db, op_dc, op_dd, op_de, op_df
 dd op_e0, op_e1, op_e2, op_e3, op_e4, op_e5, op_e6, op_e7
 dd op_e8, op_e9, op_ea, op_eb, op_ec, op_ed, op_ee, op_ef
 dd op_f0, op_f1, op_f2, op_f3, op_f4, op_f5, op_f6, op_f7
 dd op_f8, op_f9, op_fa, op_fb, op_fc, op_fd, op_fe, op_ff

CBTable:
 dd cb_00, cb_01, cb_02, cb_03, cb_04, cb_05, cb_06, cb_07
 dd cb_08, cb_09, cb_0a, cb_0b, cb_0c, cb_0d, cb_0e, cb_0f
 dd cb_10, cb_11, cb_12, cb_13, cb_14, cb_15, cb_16, cb_17
 dd cb_18, cb_19, cb_1a, cb_1b, cb_1c, cb_1d, cb_1e, cb_1f
 dd cb_20, cb_21, cb_22, cb_23, cb_24, cb_25, cb_26, cb_27
 dd cb_28, cb_29, cb_2a, cb_2b, cb_2c, cb_2d, cb_2e, cb_2f
 dd cb_30, cb_31, cb_32, cb_33, cb_34, cb_35, cb_36, cb_37
 dd cb_38, cb_39, cb_3a, cb_3b, cb_3c, cb_3d, cb_3e, cb_3f
 dd cb_40, cb_41, cb_42, cb_43, cb_44, cb_45, cb_46, cb_47
 dd cb_48, cb_49, cb_4a, cb_4b, cb_4c, cb_4d, cb_4e, cb_4f
 dd cb_50, cb_51, cb_52, cb_53, cb_54, cb_55, cb_56, cb_57
 dd cb_58, cb_59, cb_5a, cb_5b, cb_5c, cb_5d, cb_5e, cb_5f
 dd cb_60, cb_61, cb_62, cb_63, cb_64, cb_65, cb_66, cb_67
 dd cb_68, cb_69, cb_6a, cb_6b, cb_6c, cb_6d, cb_6e, cb_6f
 dd cb_70, cb_71, cb_72, cb_73, cb_74, cb_75, cb_76, cb_77
 dd cb_78, cb_79, cb_7a, cb_7b, cb_7c, cb_7d, cb_7e, cb_7f
 dd cb_80, cb_81, cb_82, cb_83, cb_84, cb_85, cb_86, cb_87
 dd cb_88, cb_89, cb_8a, cb_8b, cb_8c, cb_8d, cb_8e, cb_8f
 dd cb_90, cb_91, cb_92, cb_93, cb_94, cb_95, cb_96, cb_97
 dd cb_98, cb_99, cb_9a, cb_9b, cb_9c, cb_9d, cb_9e, cb_9f
 dd cb_a0, cb_a1, cb_a2, cb_a3, cb_a4, cb_a5, cb_a6, cb_a7
 dd cb_a8, cb_a9, cb_aa, cb_ab, cb_ac, cb_ad, cb_ae, cb_af
 dd cb_b0, cb_b1, cb_b2, cb_b3, cb_b4, cb_b5, cb_b6, cb_b7
 dd cb_b8, cb_b9, cb_ba, cb_bb, cb_bc, cb_bd, cb_be, cb_bf
 dd cb_c0, cb_c1, cb_c2, cb_c3, cb_c4, cb_c5, cb_c6, cb_c7
 dd cb_c8, cb_c9, cb_ca, cb_cb, cb_cc, cb_cd, cb_ce, cb_cf
 dd cb_d0, cb_d1, cb_d2, cb_d3, cb_d4, cb_d5, cb_d6, cb_d7
 dd cb_d8, cb_d9, cb_da, cb_db, cb_dc, cb_dd, cb_de, cb_df
 dd cb_e0, cb_e1, cb_e2, cb_e3, cb_e4, cb_e5, cb_e6, cb_e7
 dd cb_e8, cb_e9, cb_ea, cb_eb, cb_ec, cb_ed, cb_ee, cb_ef
 dd cb_f0, cb_f1, cb_f2, cb_f3, cb_f4, cb_f5, cb_f6, cb_f7
 dd cb_f8, cb_f9, cb_fa, cb_fb, cb_fc, cb_fd, cb_fe, cb_ff

EDTable:
 dd ed_xx, ed_xx, ed_xx, ed_xx, ed_xx, ed_xx, ed_xx, ed_xx
 dd ed_xx, ed_xx, ed_xx, ed_xx, ed_xx, ed_xx, ed_xx, ed_xx
 dd ed_xx, ed_xx, ed_xx, ed_xx, ed_xx, ed_xx, ed_xx, ed_xx
 dd ed_xx, ed_xx, ed_xx, ed_xx, ed_xx, ed_xx, ed_xx, ed_xx
 dd ed_xx, ed_xx, ed_xx, ed_xx, ed_xx, ed_xx, ed_xx, ed_xx
 dd ed_xx, ed_xx, ed_xx, ed_xx, ed_xx, ed_xx, ed_xx, ed_xx
 dd ed_xx, ed_xx, ed_xx, ed_xx, ed_xx, ed_xx, ed_xx, ed_xx
 dd ed_xx, ed_xx, ed_xx, ed_xx, ed_xx, ed_xx, ed_xx, ed_xx
 dd ed_40, ed_41, ed_42, ed_43, ed_44, ed_45, ed_46, ed_47
 dd ed_48, ed_49, ed_4a, ed_4b, ed_4c, ed_4d, ed_4e, ed_4f
 dd ed_50, ed_51, ed_52, ed_53, ed_54, ed_55, ed_56, ed_57
 dd ed_58, ed_59, ed_5a, ed_5b, ed_5c, ed_5d, ed_5e, ed_5f
 dd ed_60, ed_61, ed_62, ed_63, ed_64, ed_65, ed_66, ed_67
 dd ed_68, ed_69, ed_6a, ed_6b, ed_6c, ed_6d, ed_6e, ed_6f
 dd ed_70, ed_71, ed_72, ed_73, ed_74, ed_75, ed_76, ed_xx
 dd ed_78, ed_79, ed_7a, ed_7b, ed_7c, ed_7d, ed_7e, ed_xx
 dd ed_xx, ed_xx, ed_xx, ed_xx, ed_xx, ed_xx, ed_xx, ed_xx
 dd ed_xx, ed_xx, ed_xx, ed_xx, ed_xx, ed_xx, ed_xx, ed_xx
 dd ed_xx, ed_xx, ed_xx, ed_xx, ed_xx, ed_xx, ed_xx, ed_xx
 dd ed_xx, ed_xx, ed_xx, ed_xx, ed_xx, ed_xx, ed_xx, ed_xx
 dd ed_a0, ed_a1, ed_a2, ed_a3, ed_xx, ed_xx, ed_xx, ed_xx
 dd ed_a8, ed_a9, ed_aa, ed_ab, ed_xx, ed_xx, ed_xx, ed_xx
 dd ed_b0, ed_b1, ed_b2, ed_b3, ed_xx, ed_xx, ed_xx, ed_xx
 dd ed_b8, ed_b9, ed_ba, ed_bb, ed_xx, ed_xx, ed_xx, ed_xx
 dd ed_xx, ed_xx, ed_xx, ed_xx, ed_xx, ed_xx, ed_xx, ed_xx
 dd ed_xx, ed_xx, ed_xx, ed_xx, ed_xx, ed_xx, ed_xx, ed_xx
 dd ed_xx, ed_xx, ed_xx, ed_xx, ed_xx, ed_xx, ed_xx, ed_xx
 dd ed_xx, ed_xx, ed_xx, ed_xx, ed_xx, ed_xx, ed_xx, ed_xx
 dd ed_xx, ed_xx, ed_xx, ed_xx, ed_xx, ed_xx, ed_xx, ed_xx
 dd ed_xx, ed_xx, ed_xx, ed_xx, ed_xx, ed_xx, ed_xx, ed_xx
 dd ed_xx, ed_xx, ed_xx, ed_xx, ed_xx, ed_xx, ed_xx, ed_xx
 dd ed_xx, ed_xx, ed_xx, ed_xx, ed_xx, ed_xx, ed_xx, ed_xx

DDTable:
 dd dd_xx, dd_xx, dd_xx, dd_xx, dd_xx, dd_xx, dd_xx, dd_xx
 dd dd_xx, dd_09, dd_xx, dd_xx, dd_xx, dd_xx, dd_xx, dd_xx
 dd dd_xx, dd_xx, dd_xx, dd_xx, dd_xx, dd_xx, dd_xx, dd_xx
 dd dd_xx, dd_19, dd_xx, dd_xx, dd_xx, dd_xx, dd_xx, dd_xx
 dd dd_xx, dd_21, dd_22, dd_23, dd_24, dd_25, dd_26, dd_xx
 dd dd_xx, dd_29, dd_2a, dd_2b, dd_2c, dd_2d, dd_2e, dd_xx
 dd dd_xx, dd_xx, dd_xx, dd_xx, dd_34, dd_35, dd_36, dd_xx
 dd dd_xx, dd_39, dd_xx, dd_xx, dd_xx, dd_xx, dd_xx, dd_xx
 dd dd_xx, dd_xx, dd_xx, dd_xx, dd_44, dd_45, dd_46, dd_xx
 dd dd_xx, dd_xx, dd_xx, dd_xx, dd_4c, dd_4d, dd_4e, dd_xx
 dd dd_xx, dd_xx, dd_xx, dd_xx, dd_54, dd_55, dd_56, dd_xx
 dd dd_xx, dd_xx, dd_xx, dd_xx, dd_5c, dd_5d, dd_5e, dd_xx
 dd dd_60, dd_61, dd_62, dd_63, dd_xx, dd_65, dd_66, dd_67
 dd dd_68, dd_69, dd_6a, dd_6b, dd_6c, dd_xx, dd_6e, dd_6f
 dd dd_70, dd_71, dd_72, dd_73, dd_74, dd_75, dd_xx, dd_77
 dd dd_xx, dd_xx, dd_xx, dd_xx, dd_7c, dd_7d, dd_7e, dd_xx
 dd dd_xx, dd_xx, dd_xx, dd_xx, dd_84, dd_85, dd_86, dd_xx
 dd dd_xx, dd_xx, dd_xx, dd_xx, dd_8c, dd_8d, dd_8e, dd_xx
 dd dd_xx, dd_xx, dd_xx, dd_xx, dd_94, dd_95, dd_96, dd_xx
 dd dd_xx, dd_xx, dd_xx, dd_xx, dd_9c, dd_9d, dd_9e, dd_xx
 dd dd_xx, dd_xx, dd_xx, dd_xx, dd_a4, dd_a5, dd_a6, dd_xx
 dd dd_xx, dd_xx, dd_xx, dd_xx, dd_ac, dd_ad, dd_ae, dd_xx
 dd dd_xx, dd_xx, dd_xx, dd_xx, dd_b4, dd_b5, dd_b6, dd_xx
 dd dd_xx, dd_xx, dd_xx, dd_xx, dd_bc, dd_bd, dd_be, dd_xx
 dd dd_xx, dd_xx, dd_xx, dd_xx, dd_xx, dd_xx, dd_xx, dd_xx
 dd dd_xx, dd_xx, dd_xx, dd_cb, dd_xx, dd_xx, dd_xx, dd_xx
 dd dd_xx, dd_xx, dd_xx, dd_xx, dd_xx, dd_xx, dd_xx, dd_xx
 dd dd_xx, dd_xx, dd_xx, dd_xx, dd_xx, dd_xx, dd_xx, dd_xx
 dd dd_xx, dd_e1, dd_xx, dd_e3, dd_xx, dd_e5, dd_xx, dd_xx
 dd dd_xx, dd_e9, dd_xx, dd_xx, dd_xx, dd_xx, dd_xx, dd_xx
 dd dd_xx, dd_xx, dd_xx, dd_xx, dd_xx, dd_xx, dd_xx, dd_xx
 dd dd_xx, dd_f9, dd_xx, dd_xx, dd_xx, dd_xx, dd_xx, dd_xx

FDTable:
 dd fd_xx, fd_xx, fd_xx, fd_xx, fd_xx, fd_xx, fd_xx, fd_xx
 dd fd_xx, fd_09, fd_xx, fd_xx, fd_xx, fd_xx, fd_xx, fd_xx
 dd fd_xx, fd_xx, fd_xx, fd_xx, fd_xx, fd_xx, fd_xx, fd_xx
 dd fd_xx, fd_19, fd_xx, fd_xx, fd_xx, fd_xx, fd_xx, fd_xx
 dd fd_xx, fd_21, fd_22, fd_23, fd_24, fd_25, fd_26, fd_xx
 dd fd_xx, fd_29, fd_2a, fd_2b, fd_2c, fd_2d, fd_2e, fd_xx
 dd fd_xx, fd_xx, fd_xx, fd_xx, fd_34, fd_35, fd_36, fd_xx
 dd fd_xx, fd_39, fd_xx, fd_xx, fd_xx, fd_xx, fd_xx, fd_xx
 dd fd_xx, fd_xx, fd_xx, fd_xx, fd_44, fd_45, fd_46, fd_xx
 dd fd_xx, fd_xx, fd_xx, fd_xx, fd_4c, fd_4d, fd_4e, fd_xx
 dd fd_xx, fd_xx, fd_xx, fd_xx, fd_54, fd_55, fd_56, fd_xx
 dd fd_xx, fd_xx, fd_xx, fd_xx, fd_5c, fd_5d, fd_5e, fd_xx
 dd fd_60, fd_61, fd_62, fd_63, fd_xx, fd_65, fd_66, fd_67
 dd fd_68, fd_69, fd_6a, fd_6b, fd_6c, fd_xx, fd_6e, fd_6f
 dd fd_70, fd_71, fd_72, fd_73, fd_74, fd_75, fd_xx, fd_77
 dd fd_xx, fd_xx, fd_xx, fd_xx, fd_7c, fd_7d, fd_7e, fd_xx
 dd fd_xx, fd_xx, fd_xx, fd_xx, fd_84, fd_85, fd_86, fd_xx
 dd fd_xx, fd_xx, fd_xx, fd_xx, fd_8c, fd_8d, fd_8e, fd_xx
 dd fd_xx, fd_xx, fd_xx, fd_xx, fd_94, fd_95, fd_96, fd_xx
 dd fd_xx, fd_xx, fd_xx, fd_xx, fd_9c, fd_9d, fd_9e, fd_xx
 dd fd_xx, fd_xx, fd_xx, fd_xx, fd_a4, fd_a5, fd_a6, fd_xx
 dd fd_xx, fd_xx, fd_xx, fd_xx, fd_ac, fd_ad, fd_ae, fd_xx
 dd fd_xx, fd_xx, fd_xx, fd_xx, fd_b4, fd_b5, fd_b6, fd_xx
 dd fd_xx, fd_xx, fd_xx, fd_xx, fd_bc, fd_bd, fd_be, fd_xx
 dd fd_xx, fd_xx, fd_xx, fd_xx, fd_xx, fd_xx, fd_xx, fd_xx
 dd fd_xx, fd_xx, fd_xx, fd_cb, fd_xx, fd_xx, fd_xx, fd_xx
 dd fd_xx, fd_xx, fd_xx, fd_xx, fd_xx, fd_xx, fd_xx, fd_xx
 dd fd_xx, fd_xx, fd_xx, fd_xx, fd_xx, fd_xx, fd_xx, fd_xx
 dd fd_xx, fd_e1, fd_xx, fd_e3, fd_xx, fd_e5, fd_xx, fd_xx
 dd fd_xx, fd_e9, fd_xx, fd_xx, fd_xx, fd_xx, fd_xx, fd_xx
 dd fd_xx, fd_xx, fd_xx, fd_xx, fd_xx, fd_xx, fd_xx, fd_xx
 dd fd_xx, fd_f9, fd_xx, fd_xx, fd_xx, fd_xx, fd_xx, fd_xx

DDCBTable:
 dd ddcb_00, ddcb_01, ddcb_02, ddcb_03, ddcb_04, ddcb_05, ddcb_06, ddcb_07
 dd ddcb_08, ddcb_09, ddcb_0a, ddcb_0b, ddcb_0c, ddcb_0d, ddcb_0e, ddcb_0f
 dd ddcb_10, ddcb_11, ddcb_12, ddcb_13, ddcb_14, ddcb_15, ddcb_16, ddcb_17
 dd ddcb_18, ddcb_19, ddcb_1a, ddcb_1b, ddcb_1c, ddcb_1d, ddcb_1e, ddcb_1f
 dd ddcb_20, ddcb_21, ddcb_22, ddcb_23, ddcb_24, ddcb_25, ddcb_26, ddcb_27
 dd ddcb_28, ddcb_29, ddcb_2a, ddcb_2b, ddcb_2c, ddcb_2d, ddcb_2e, ddcb_2f
 dd ddcb_30, ddcb_31, ddcb_32, ddcb_33, ddcb_34, ddcb_35, ddcb_36, ddcb_37
 dd ddcb_38, ddcb_39, ddcb_3a, ddcb_3b, ddcb_3c, ddcb_3d, ddcb_3e, ddcb_3f
 dd ddcb_40, ddcb_41, ddcb_42, ddcb_43, ddcb_44, ddcb_45, ddcb_46, ddcb_47
 dd ddcb_48, ddcb_49, ddcb_4a, ddcb_4b, ddcb_4c, ddcb_4d, ddcb_4e, ddcb_4f
 dd ddcb_50, ddcb_51, ddcb_52, ddcb_53, ddcb_54, ddcb_55, ddcb_56, ddcb_57
 dd ddcb_58, ddcb_59, ddcb_5a, ddcb_5b, ddcb_5c, ddcb_5d, ddcb_5e, ddcb_5f
 dd ddcb_60, ddcb_61, ddcb_62, ddcb_63, ddcb_64, ddcb_65, ddcb_66, ddcb_67
 dd ddcb_68, ddcb_69, ddcb_6a, ddcb_6b, ddcb_6c, ddcb_6d, ddcb_6e, ddcb_6f
 dd ddcb_70, ddcb_71, ddcb_72, ddcb_73, ddcb_74, ddcb_75, ddcb_76, ddcb_77
 dd ddcb_78, ddcb_79, ddcb_7a, ddcb_7b, ddcb_7c, ddcb_7d, ddcb_7e, ddcb_7f
 dd ddcb_80, ddcb_81, ddcb_82, ddcb_83, ddcb_84, ddcb_85, ddcb_86, ddcb_87
 dd ddcb_88, ddcb_89, ddcb_8a, ddcb_8b, ddcb_8c, ddcb_8d, ddcb_8e, ddcb_8f
 dd ddcb_90, ddcb_91, ddcb_92, ddcb_93, ddcb_94, ddcb_95, ddcb_96, ddcb_97
 dd ddcb_98, ddcb_99, ddcb_9a, ddcb_9b, ddcb_9c, ddcb_9d, ddcb_9e, ddcb_9f
 dd ddcb_a0, ddcb_a1, ddcb_a2, ddcb_a3, ddcb_a4, ddcb_a5, ddcb_a6, ddcb_a7
 dd ddcb_a8, ddcb_a9, ddcb_aa, ddcb_ab, ddcb_ac, ddcb_ad, ddcb_ae, ddcb_af
 dd ddcb_b0, ddcb_b1, ddcb_b2, ddcb_b3, ddcb_b4, ddcb_b5, ddcb_b6, ddcb_b7
 dd ddcb_b8, ddcb_b9, ddcb_ba, ddcb_bb, ddcb_bc, ddcb_bd, ddcb_be, ddcb_bf
 dd ddcb_c0, ddcb_c1, ddcb_c2, ddcb_c3, ddcb_c4, ddcb_c5, ddcb_c6, ddcb_c7
 dd ddcb_c8, ddcb_c9, ddcb_ca, ddcb_cb, ddcb_cc, ddcb_cd, ddcb_ce, ddcb_cf
 dd ddcb_d0, ddcb_d1, ddcb_d2, ddcb_d3, ddcb_d4, ddcb_d5, ddcb_d6, ddcb_d7
 dd ddcb_d8, ddcb_d9, ddcb_da, ddcb_db, ddcb_dc, ddcb_dd, ddcb_de, ddcb_df
 dd ddcb_e0, ddcb_e1, ddcb_e2, ddcb_e3, ddcb_e4, ddcb_e5, ddcb_e6, ddcb_e7
 dd ddcb_e8, ddcb_e9, ddcb_ea, ddcb_eb, ddcb_ec, ddcb_ed, ddcb_ee, ddcb_ef
 dd ddcb_f0, ddcb_f1, ddcb_f2, ddcb_f3, ddcb_f4, ddcb_f5, ddcb_f6, ddcb_f7
 dd ddcb_f8, ddcb_f9, ddcb_fa, ddcb_fb, ddcb_fc, ddcb_fd, ddcb_fe, ddcb_ff




INC_Table:
DB 0,0,0,0,0,0,0,8,8,8,8,8,8,8,8,16,0,0,0,0
DB 0,0,0,8,8,8,8,8,8,8,8,48,32,32,32,32,32,32,32,40
DB 40,40,40,40,40,40,40,48,32,32,32,32,32,32,32,40,40,40,40,40
DB 40,40,40,16,0,0,0,0,0,0,0,8,8,8,8,8,8,8,8,16
DB 0,0,0,0,0,0,0,8,8,8,8,8,8,8,8,48,32,32,32,32
DB 32,32,32,40,40,40,40,40,40,40,40,48,32,32,32,32,32,32,32,40
DB 40,40,40,40,40,40,40,148,128,128,128,128,128,128,128,136,136,136,136,136
DB 136,136,136,144,128,128,128,128,128,128,128,136,136,136,136,136,136,136,136,176
DB 160,160,160,160,160,160,160,168,168,168,168,168,168,168,168,176,160,160,160,160
DB 160,160,160,168,168,168,168,168,168,168,168,144,128,128,128,128,128,128,128,136
DB 136,136,136,136,136,136,136,144,128,128,128,128,128,128,128,136,136,136,136,136
DB 136,136,136,176,160,160,160,160,160,160,160,168,168,168,168,168,168,168,168,176
DB 160,160,160,160,160,160,160,168,168,168,168,168,168,168,168,80

DEC_Table:
DB 186,66,2,2,2,2,2,2,2,10,10,10,10,10,10,10,26,2,2,2
DB 2,2,2,2,2,10,10,10,10,10,10,10,26,34,34,34,34,34,34,34
DB 34,42,42,42,42,42,42,42,58,34,34,34,34,34,34,34,34,42,42,42
DB 42,42,42,42,58,2,2,2,2,2,2,2,2,10,10,10,10,10,10,10
DB 26,2,2,2,2,2,2,2,2,10,10,10,10,10,10,10,26,34,34,34
DB 34,34,34,34,34,42,42,42,42,42,42,42,58,34,34,34,34,34,34,34
DB 34,42,42,42,42,42,42,42,62,130,130,130,130,130,130,130,130,138,138,138
DB 138,138,138,138,154,130,130,130,130,130,130,130,130,138,138,138,138,138,138,138
DB 154,162,162,162,162,162,162,162,162,170,170,170,170,170,170,170,186,162,162,162
DB 162,162,162,162,162,170,170,170,170,170,170,170,186,130,130,130,130,130,130,130
DB 130,138,138,138,138,138,138,138,154,130,130,130,130,130,130,130,130,138,138,138
DB 138,138,138,138,154,162,162,162,162,162,162,162,162,170,170,170,170,170,170,170
DB 186,162,162,162,162,162,162,162,162,170,170,170,170,170,170,170


DAA_Table:
DW 04400h, 00001h, 00002h, 00403h, 00004h, 00405h, 00406h, 00007h
DW 00808h, 00C09h, 01010h, 01411h, 01412h, 01013h, 01414h, 01015h
DW 00010h, 00411h, 00412h, 00013h, 00414h, 00015h, 00016h, 00417h
DW 00C18h, 00819h, 03020h, 03421h, 03422h, 03023h, 03424h, 03025h
DW 02020h, 02421h, 02422h, 02023h, 02424h, 02025h, 02026h, 02427h
DW 02C28h, 02829h, 03430h, 03031h, 03032h, 03433h, 03034h, 03435h
DW 02430h, 02031h, 02032h, 02433h, 02034h, 02435h, 02436h, 02037h
DW 02838h, 02C39h, 01040h, 01441h, 01442h, 01043h, 01444h, 01045h
DW 00040h, 00441h, 00442h, 00043h, 00444h, 00045h, 00046h, 00447h
DW 00C48h, 00849h, 01450h, 01051h, 01052h, 01453h, 01054h, 01455h
DW 00450h, 00051h, 00052h, 00453h, 00054h, 00455h, 00456h, 00057h
DW 00858h, 00C59h, 03460h, 03061h, 03062h, 03463h, 03064h, 03465h
DW 02460h, 02061h, 02062h, 02463h, 02064h, 02465h, 02466h, 02067h
DW 02868h, 02C69h, 03070h, 03471h, 03472h, 03073h, 03474h, 03075h
DW 02070h, 02471h, 02472h, 02073h, 02474h, 02075h, 02076h, 02477h
DW 02C78h, 02879h, 09080h, 09481h, 09482h, 09083h, 09484h, 09085h
DW 08080h, 08481h, 08482h, 08083h, 08484h, 08085h, 08086h, 08487h
DW 08C88h, 08889h, 09490h, 09091h, 09092h, 09493h, 09094h, 09495h
DW 08490h, 08091h, 08092h, 08493h, 08094h, 08495h, 08496h, 08097h
DW 08898h, 08C99h, 05500h, 01101h, 01102h, 01503h, 01104h, 01505h
DW 04500h, 00101h, 00102h, 00503h, 00104h, 00505h, 00506h, 00107h
DW 00908h, 00D09h, 01110h, 01511h, 01512h, 01113h, 01514h, 01115h
DW 00110h, 00511h, 00512h, 00113h, 00514h, 00115h, 00116h, 00517h
DW 00D18h, 00919h, 03120h, 03521h, 03522h, 03123h, 03524h, 03125h
DW 02120h, 02521h, 02522h, 02123h, 02524h, 02125h, 02126h, 02527h
DW 02D28h, 02929h, 03530h, 03131h, 03132h, 03533h, 03134h, 03535h
DW 02530h, 02131h, 02132h, 02533h, 02134h, 02535h, 02536h, 02137h
DW 02938h, 02D39h, 01140h, 01541h, 01542h, 01143h, 01544h, 01145h
DW 00140h, 00541h, 00542h, 00143h, 00544h, 00145h, 00146h, 00547h
DW 00D48h, 00949h, 01550h, 01151h, 01152h, 01553h, 01154h, 01555h
DW 00550h, 00151h, 00152h, 00553h, 00154h, 00555h, 00556h, 00157h
DW 00958h, 00D59h, 03560h, 03161h, 03162h, 03563h, 03164h, 03565h
DW 02560h, 02161h, 02162h, 02563h, 02164h, 02565h, 02566h, 02167h
DW 02968h, 02D69h, 03170h, 03571h, 03572h, 03173h, 03574h, 03175h
DW 02170h, 02571h, 02572h, 02173h, 02574h, 02175h, 02176h, 02577h
DW 02D78h, 02979h, 09180h, 09581h, 09582h, 09183h, 09584h, 09185h
DW 08180h, 08581h, 08582h, 08183h, 08584h, 08185h, 08186h, 08587h
DW 08D88h, 08989h, 09590h, 09191h, 09192h, 09593h, 09194h, 09595h
DW 08590h, 08191h, 08192h, 08593h, 08194h, 08595h, 08596h, 08197h
DW 08998h, 08D99h, 0B5A0h, 0B1A1h, 0B1A2h, 0B5A3h, 0B1A4h, 0B5A5h
DW 0A5A0h, 0A1A1h, 0A1A2h, 0A5A3h, 0A1A4h, 0A5A5h, 0A5A6h, 0A1A7h
DW 0A9A8h, 0ADA9h, 0B1B0h, 0B5B1h, 0B5B2h, 0B1B3h, 0B5B4h, 0B1B5h
DW 0A1B0h, 0A5B1h, 0A5B2h, 0A1B3h, 0A5B4h, 0A1B5h, 0A1B6h, 0A5B7h
DW 0ADB8h, 0A9B9h, 095C0h, 091C1h, 091C2h, 095C3h, 091C4h, 095C5h
DW 085C0h, 081C1h, 081C2h, 085C3h, 081C4h, 085C5h, 085C6h, 081C7h
DW 089C8h, 08DC9h, 091D0h, 095D1h, 095D2h, 091D3h, 095D4h, 091D5h
DW 081D0h, 085D1h, 085D2h, 081D3h, 085D4h, 081D5h, 081D6h, 085D7h
DW 08DD8h, 089D9h, 0B1E0h, 0B5E1h, 0B5E2h, 0B1E3h, 0B5E4h, 0B1E5h
DW 0A1E0h, 0A5E1h, 0A5E2h, 0A1E3h, 0A5E4h, 0A1E5h, 0A1E6h, 0A5E7h
DW 0ADE8h, 0A9E9h, 0B5F0h, 0B1F1h, 0B1F2h, 0B5F3h, 0B1F4h, 0B5F5h
DW 0A5F0h, 0A1F1h, 0A1F2h, 0A5F3h, 0A1F4h, 0A5F5h, 0A5F6h, 0A1F7h
DW 0A9F8h, 0ADF9h, 05500h, 01101h, 01102h, 01503h, 01104h, 01505h
DW 04500h, 00101h, 00102h, 00503h, 00104h, 00505h, 00506h, 00107h
DW 00908h, 00D09h, 01110h, 01511h, 01512h, 01113h, 01514h, 01115h
DW 00110h, 00511h, 00512h, 00113h, 00514h, 00115h, 00116h, 00517h
DW 00D18h, 00919h, 03120h, 03521h, 03522h, 03123h, 03524h, 03125h
DW 02120h, 02521h, 02522h, 02123h, 02524h, 02125h, 02126h, 02527h
DW 02D28h, 02929h, 03530h, 03131h, 03132h, 03533h, 03134h, 03535h
DW 02530h, 02131h, 02132h, 02533h, 02134h, 02535h, 02536h, 02137h
DW 02938h, 02D39h, 01140h, 01541h, 01542h, 01143h, 01544h, 01145h
DW 00140h, 00541h, 00542h, 00143h, 00544h, 00145h, 00146h, 00547h
DW 00D48h, 00949h, 01550h, 01151h, 01152h, 01553h, 01154h, 01555h
DW 00550h, 00151h, 00152h, 00553h, 00154h, 00555h, 00556h, 00157h
DW 00958h, 00D59h, 03560h, 03161h, 03162h, 03563h, 03164h, 03565h
DW 04600h, 00201h, 00202h, 00603h, 00204h, 00605h, 00606h, 00207h
DW 00A08h, 00E09h, 00204h, 00605h, 00606h, 00207h, 00A08h, 00E09h
DW 00210h, 00611h, 00612h, 00213h, 00614h, 00215h, 00216h, 00617h
DW 00E18h, 00A19h, 00614h, 00215h, 00216h, 00617h, 00E18h, 00A19h
DW 02220h, 02621h, 02622h, 02223h, 02624h, 02225h, 02226h, 02627h
DW 02E28h, 02A29h, 02624h, 02225h, 02226h, 02627h, 02E28h, 02A29h
DW 02630h, 02231h, 02232h, 02633h, 02234h, 02635h, 02636h, 02237h
DW 02A38h, 02E39h, 02234h, 02635h, 02636h, 02237h, 02A38h, 02E39h
DW 00240h, 00641h, 00642h, 00243h, 00644h, 00245h, 00246h, 00647h
DW 00E48h, 00A49h, 00644h, 00245h, 00246h, 00647h, 00E48h, 00A49h
DW 00650h, 00251h, 00252h, 00653h, 00254h, 00655h, 00656h, 00257h
DW 00A58h, 00E59h, 00254h, 00655h, 00656h, 00257h, 00A58h, 00E59h
DW 02660h, 02261h, 02262h, 02663h, 02264h, 02665h, 02666h, 02267h
DW 02A68h, 02E69h, 02264h, 02665h, 02666h, 02267h, 02A68h, 02E69h
DW 02270h, 02671h, 02672h, 02273h, 02674h, 02275h, 02276h, 02677h
DW 02E78h, 02A79h, 02674h, 02275h, 02276h, 02677h, 02E78h, 02A79h
DW 08280h, 08681h, 08682h, 08283h, 08684h, 08285h, 08286h, 08687h
DW 08E88h, 08A89h, 08684h, 08285h, 08286h, 08687h, 08E88h, 08A89h
DW 08690h, 08291h, 08292h, 08693h, 08294h, 08695h, 08696h, 08297h
DW 08A98h, 08E99h, 02334h, 02735h, 02736h, 02337h, 02B38h, 02F39h
DW 00340h, 00741h, 00742h, 00343h, 00744h, 00345h, 00346h, 00747h
DW 00F48h, 00B49h, 00744h, 00345h, 00346h, 00747h, 00F48h, 00B49h
DW 00750h, 00351h, 00352h, 00753h, 00354h, 00755h, 00756h, 00357h
DW 00B58h, 00F59h, 00354h, 00755h, 00756h, 00357h, 00B58h, 00F59h
DW 02760h, 02361h, 02362h, 02763h, 02364h, 02765h, 02766h, 02367h
DW 02B68h, 02F69h, 02364h, 02765h, 02766h, 02367h, 02B68h, 02F69h
DW 02370h, 02771h, 02772h, 02373h, 02774h, 02375h, 02376h, 02777h
DW 02F78h, 02B79h, 02774h, 02375h, 02376h, 02777h, 02F78h, 02B79h
DW 08380h, 08781h, 08782h, 08383h, 08784h, 08385h, 08386h, 08787h
DW 08F88h, 08B89h, 08784h, 08385h, 08386h, 08787h, 08F88h, 08B89h
DW 08790h, 08391h, 08392h, 08793h, 08394h, 08795h, 08796h, 08397h
DW 08B98h, 08F99h, 08394h, 08795h, 08796h, 08397h, 08B98h, 08F99h
DW 0A7A0h, 0A3A1h, 0A3A2h, 0A7A3h, 0A3A4h, 0A7A5h, 0A7A6h, 0A3A7h
DW 0ABA8h, 0AFA9h, 0A3A4h, 0A7A5h, 0A7A6h, 0A3A7h, 0ABA8h, 0AFA9h
DW 0A3B0h, 0A7B1h, 0A7B2h, 0A3B3h, 0A7B4h, 0A3B5h, 0A3B6h, 0A7B7h
DW 0AFB8h, 0ABB9h, 0A7B4h, 0A3B5h, 0A3B6h, 0A7B7h, 0AFB8h, 0ABB9h
DW 087C0h, 083C1h, 083C2h, 087C3h, 083C4h, 087C5h, 087C6h, 083C7h
DW 08BC8h, 08FC9h, 083C4h, 087C5h, 087C6h, 083C7h, 08BC8h, 08FC9h
DW 083D0h, 087D1h, 087D2h, 083D3h, 087D4h, 083D5h, 083D6h, 087D7h
DW 08FD8h, 08BD9h, 087D4h, 083D5h, 083D6h, 087D7h, 08FD8h, 08BD9h
DW 0A3E0h, 0A7E1h, 0A7E2h, 0A3E3h, 0A7E4h, 0A3E5h, 0A3E6h, 0A7E7h
DW 0AFE8h, 0ABE9h, 0A7E4h, 0A3E5h, 0A3E6h, 0A7E7h, 0AFE8h, 0ABE9h
DW 0A7F0h, 0A3F1h, 0A3F2h, 0A7F3h, 0A3F4h, 0A7F5h, 0A7F6h, 0A3F7h
DW 0ABF8h, 0AFF9h, 0A3F4h, 0A7F5h, 0A7F6h, 0A3F7h, 0ABF8h, 0AFF9h
DW 04700h, 00301h, 00302h, 00703h, 00304h, 00705h, 00706h, 00307h
DW 00B08h, 00F09h, 00304h, 00705h, 00706h, 00307h, 00B08h, 00F09h
DW 00310h, 00711h, 00712h, 00313h, 00714h, 00315h, 00316h, 00717h
DW 00F18h, 00B19h, 00714h, 00315h, 00316h, 00717h, 00F18h, 00B19h
DW 02320h, 02721h, 02722h, 02323h, 02724h, 02325h, 02326h, 02727h
DW 02F28h, 02B29h, 02724h, 02325h, 02326h, 02727h, 02F28h, 02B29h
DW 02730h, 02331h, 02332h, 02733h, 02334h, 02735h, 02736h, 02337h
DW 02B38h, 02F39h, 02334h, 02735h, 02736h, 02337h, 02B38h, 02F39h
DW 00340h, 00741h, 00742h, 00343h, 00744h, 00345h, 00346h, 00747h
DW 00F48h, 00B49h, 00744h, 00345h, 00346h, 00747h, 00F48h, 00B49h
DW 00750h, 00351h, 00352h, 00753h, 00354h, 00755h, 00756h, 00357h
DW 00B58h, 00F59h, 00354h, 00755h, 00756h, 00357h, 00B58h, 00F59h
DW 02760h, 02361h, 02362h, 02763h, 02364h, 02765h, 02766h, 02367h
DW 02B68h, 02F69h, 02364h, 02765h, 02766h, 02367h, 02B68h, 02F69h
DW 02370h, 02771h, 02772h, 02373h, 02774h, 02375h, 02376h, 02777h
DW 02F78h, 02B79h, 02774h, 02375h, 02376h, 02777h, 02F78h, 02B79h
DW 08380h, 08781h, 08782h, 08383h, 08784h, 08385h, 08386h, 08787h
DW 08F88h, 08B89h, 08784h, 08385h, 08386h, 08787h, 08F88h, 08B89h
DW 08790h, 08391h, 08392h, 08793h, 08394h, 08795h, 08796h, 08397h
DW 08B98h, 08F99h, 08394h, 08795h, 08796h, 08397h, 08B98h, 08F99h
DW 00406h, 00007h, 00808h, 00C09h, 00C0Ah, 0080Bh, 00C0Ch, 0080Dh
DW 0080Eh, 00C0Fh, 01010h, 01411h, 01412h, 01013h, 01414h, 01015h
DW 00016h, 00417h, 00C18h, 00819h, 0081Ah, 00C1Bh, 0081Ch, 00C1Dh
DW 00C1Eh, 0081Fh, 03020h, 03421h, 03422h, 03023h, 03424h, 03025h
DW 02026h, 02427h, 02C28h, 02829h, 0282Ah, 02C2Bh, 0282Ch, 02C2Dh
DW 02C2Eh, 0282Fh, 03430h, 03031h, 03032h, 03433h, 03034h, 03435h
DW 02436h, 02037h, 02838h, 02C39h, 02C3Ah, 0283Bh, 02C3Ch, 0283Dh
DW 0283Eh, 02C3Fh, 01040h, 01441h, 01442h, 01043h, 01444h, 01045h
DW 00046h, 00447h, 00C48h, 00849h, 0084Ah, 00C4Bh, 0084Ch, 00C4Dh
DW 00C4Eh, 0084Fh, 01450h, 01051h, 01052h, 01453h, 01054h, 01455h
DW 00456h, 00057h, 00858h, 00C59h, 00C5Ah, 0085Bh, 00C5Ch, 0085Dh
DW 0085Eh, 00C5Fh, 03460h, 03061h, 03062h, 03463h, 03064h, 03465h
DW 02466h, 02067h, 02868h, 02C69h, 02C6Ah, 0286Bh, 02C6Ch, 0286Dh
DW 0286Eh, 02C6Fh, 03070h, 03471h, 03472h, 03073h, 03474h, 03075h
DW 02076h, 02477h, 02C78h, 02879h, 0287Ah, 02C7Bh, 0287Ch, 02C7Dh
DW 02C7Eh, 0287Fh, 09080h, 09481h, 09482h, 09083h, 09484h, 09085h
DW 08086h, 08487h, 08C88h, 08889h, 0888Ah, 08C8Bh, 0888Ch, 08C8Dh
DW 08C8Eh, 0888Fh, 09490h, 09091h, 09092h, 09493h, 09094h, 09495h
DW 08496h, 08097h, 08898h, 08C99h, 08C9Ah, 0889Bh, 08C9Ch, 0889Dh
DW 0889Eh, 08C9Fh, 05500h, 01101h, 01102h, 01503h, 01104h, 01505h
DW 00506h, 00107h, 00908h, 00D09h, 00D0Ah, 0090Bh, 00D0Ch, 0090Dh
DW 0090Eh, 00D0Fh, 01110h, 01511h, 01512h, 01113h, 01514h, 01115h
DW 00116h, 00517h, 00D18h, 00919h, 0091Ah, 00D1Bh, 0091Ch, 00D1Dh
DW 00D1Eh, 0091Fh, 03120h, 03521h, 03522h, 03123h, 03524h, 03125h
DW 02126h, 02527h, 02D28h, 02929h, 0292Ah, 02D2Bh, 0292Ch, 02D2Dh
DW 02D2Eh, 0292Fh, 03530h, 03131h, 03132h, 03533h, 03134h, 03535h
DW 02536h, 02137h, 02938h, 02D39h, 02D3Ah, 0293Bh, 02D3Ch, 0293Dh
DW 0293Eh, 02D3Fh, 01140h, 01541h, 01542h, 01143h, 01544h, 01145h
DW 00146h, 00547h, 00D48h, 00949h, 0094Ah, 00D4Bh, 0094Ch, 00D4Dh
DW 00D4Eh, 0094Fh, 01550h, 01151h, 01152h, 01553h, 01154h, 01555h
DW 00556h, 00157h, 00958h, 00D59h, 00D5Ah, 0095Bh, 00D5Ch, 0095Dh
DW 0095Eh, 00D5Fh, 03560h, 03161h, 03162h, 03563h, 03164h, 03565h
DW 02566h, 02167h, 02968h, 02D69h, 02D6Ah, 0296Bh, 02D6Ch, 0296Dh
DW 0296Eh, 02D6Fh, 03170h, 03571h, 03572h, 03173h, 03574h, 03175h
DW 02176h, 02577h, 02D78h, 02979h, 0297Ah, 02D7Bh, 0297Ch, 02D7Dh
DW 02D7Eh, 0297Fh, 09180h, 09581h, 09582h, 09183h, 09584h, 09185h
DW 08186h, 08587h, 08D88h, 08989h, 0898Ah, 08D8Bh, 0898Ch, 08D8Dh
DW 08D8Eh, 0898Fh, 09590h, 09191h, 09192h, 09593h, 09194h, 09595h
DW 08596h, 08197h, 08998h, 08D99h, 08D9Ah, 0899Bh, 08D9Ch, 0899Dh
DW 0899Eh, 08D9Fh, 0B5A0h, 0B1A1h, 0B1A2h, 0B5A3h, 0B1A4h, 0B5A5h
DW 0A5A6h, 0A1A7h, 0A9A8h, 0ADA9h, 0ADAAh, 0A9ABh, 0ADACh, 0A9ADh
DW 0A9AEh, 0ADAFh, 0B1B0h, 0B5B1h, 0B5B2h, 0B1B3h, 0B5B4h, 0B1B5h
DW 0A1B6h, 0A5B7h, 0ADB8h, 0A9B9h, 0A9BAh, 0ADBBh, 0A9BCh, 0ADBDh
DW 0ADBEh, 0A9BFh, 095C0h, 091C1h, 091C2h, 095C3h, 091C4h, 095C5h
DW 085C6h, 081C7h, 089C8h, 08DC9h, 08DCAh, 089CBh, 08DCCh, 089CDh
DW 089CEh, 08DCFh, 091D0h, 095D1h, 095D2h, 091D3h, 095D4h, 091D5h
DW 081D6h, 085D7h, 08DD8h, 089D9h, 089DAh, 08DDBh, 089DCh, 08DDDh
DW 08DDEh, 089DFh, 0B1E0h, 0B5E1h, 0B5E2h, 0B1E3h, 0B5E4h, 0B1E5h
DW 0A1E6h, 0A5E7h, 0ADE8h, 0A9E9h, 0A9EAh, 0ADEBh, 0A9ECh, 0ADEDh
DW 0ADEEh, 0A9EFh, 0B5F0h, 0B1F1h, 0B1F2h, 0B5F3h, 0B1F4h, 0B5F5h
DW 0A5F6h, 0A1F7h, 0A9F8h, 0ADF9h, 0ADFAh, 0A9FBh, 0ADFCh, 0A9FDh
DW 0A9FEh, 0ADFFh, 05500h, 01101h, 01102h, 01503h, 01104h, 01505h
DW 00506h, 00107h, 00908h, 00D09h, 00D0Ah, 0090Bh, 00D0Ch, 0090Dh
DW 0090Eh, 00D0Fh, 01110h, 01511h, 01512h, 01113h, 01514h, 01115h
DW 00116h, 00517h, 00D18h, 00919h, 0091Ah, 00D1Bh, 0091Ch, 00D1Dh
DW 00D1Eh, 0091Fh, 03120h, 03521h, 03522h, 03123h, 03524h, 03125h
DW 02126h, 02527h, 02D28h, 02929h, 0292Ah, 02D2Bh, 0292Ch, 02D2Dh
DW 02D2Eh, 0292Fh, 03530h, 03131h, 03132h, 03533h, 03134h, 03535h
DW 02536h, 02137h, 02938h, 02D39h, 02D3Ah, 0293Bh, 02D3Ch, 0293Dh
DW 0293Eh, 02D3Fh, 01140h, 01541h, 01542h, 01143h, 01544h, 01145h
DW 00146h, 00547h, 00D48h, 00949h, 0094Ah, 00D4Bh, 0094Ch, 00D4Dh
DW 00D4Eh, 0094Fh, 01550h, 01151h, 01152h, 01553h, 01154h, 01555h
DW 00556h, 00157h, 00958h, 00D59h, 00D5Ah, 0095Bh, 00D5Ch, 0095Dh
DW 0095Eh, 00D5Fh, 03560h, 03161h, 03162h, 03563h, 03164h, 03565h
DW 0BEFAh, 0BAFBh, 0BEFCh, 0BAFDh, 0BAFEh, 0BEFFh, 04600h, 00201h
DW 00202h, 00603h, 00204h, 00605h, 00606h, 00207h, 00A08h, 00E09h
DW 01E0Ah, 01A0Bh, 01E0Ch, 01A0Dh, 01A0Eh, 01E0Fh, 00210h, 00611h
DW 00612h, 00213h, 00614h, 00215h, 00216h, 00617h, 00E18h, 00A19h
DW 01A1Ah, 01E1Bh, 01A1Ch, 01E1Dh, 01E1Eh, 01A1Fh, 02220h, 02621h
DW 02622h, 02223h, 02624h, 02225h, 02226h, 02627h, 02E28h, 02A29h
DW 03A2Ah, 03E2Bh, 03A2Ch, 03E2Dh, 03E2Eh, 03A2Fh, 02630h, 02231h
DW 02232h, 02633h, 02234h, 02635h, 02636h, 02237h, 02A38h, 02E39h
DW 03E3Ah, 03A3Bh, 03E3Ch, 03A3Dh, 03A3Eh, 03E3Fh, 00240h, 00641h
DW 00642h, 00243h, 00644h, 00245h, 00246h, 00647h, 00E48h, 00A49h
DW 01A4Ah, 01E4Bh, 01A4Ch, 01E4Dh, 01E4Eh, 01A4Fh, 00650h, 00251h
DW 00252h, 00653h, 00254h, 00655h, 00656h, 00257h, 00A58h, 00E59h
DW 01E5Ah, 01A5Bh, 01E5Ch, 01A5Dh, 01A5Eh, 01E5Fh, 02660h, 02261h
DW 02262h, 02663h, 02264h, 02665h, 02666h, 02267h, 02A68h, 02E69h
DW 03E6Ah, 03A6Bh, 03E6Ch, 03A6Dh, 03A6Eh, 03E6Fh, 02270h, 02671h
DW 02672h, 02273h, 02674h, 02275h, 02276h, 02677h, 02E78h, 02A79h
DW 03A7Ah, 03E7Bh, 03A7Ch, 03E7Dh, 03E7Eh, 03A7Fh, 08280h, 08681h
DW 08682h, 08283h, 08684h, 08285h, 08286h, 08687h, 08E88h, 08A89h
DW 09A8Ah, 09E8Bh, 09A8Ch, 09E8Dh, 09E8Eh, 09A8Fh, 08690h, 08291h
DW 08292h, 08693h, 02334h, 02735h, 02736h, 02337h, 02B38h, 02F39h
DW 03F3Ah, 03B3Bh, 03F3Ch, 03B3Dh, 03B3Eh, 03F3Fh, 00340h, 00741h
DW 00742h, 00343h, 00744h, 00345h, 00346h, 00747h, 00F48h, 00B49h
DW 01B4Ah, 01F4Bh, 01B4Ch, 01F4Dh, 01F4Eh, 01B4Fh, 00750h, 00351h
DW 00352h, 00753h, 00354h, 00755h, 00756h, 00357h, 00B58h, 00F59h
DW 01F5Ah, 01B5Bh, 01F5Ch, 01B5Dh, 01B5Eh, 01F5Fh, 02760h, 02361h
DW 02362h, 02763h, 02364h, 02765h, 02766h, 02367h, 02B68h, 02F69h
DW 03F6Ah, 03B6Bh, 03F6Ch, 03B6Dh, 03B6Eh, 03F6Fh, 02370h, 02771h
DW 02772h, 02373h, 02774h, 02375h, 02376h, 02777h, 02F78h, 02B79h
DW 03B7Ah, 03F7Bh, 03B7Ch, 03F7Dh, 03F7Eh, 03B7Fh, 08380h, 08781h
DW 08782h, 08383h, 08784h, 08385h, 08386h, 08787h, 08F88h, 08B89h
DW 09B8Ah, 09F8Bh, 09B8Ch, 09F8Dh, 09F8Eh, 09B8Fh, 08790h, 08391h
DW 08392h, 08793h, 08394h, 08795h, 08796h, 08397h, 08B98h, 08F99h
DW 09F9Ah, 09B9Bh, 09F9Ch, 09B9Dh, 09B9Eh, 09F9Fh, 0A7A0h, 0A3A1h
DW 0A3A2h, 0A7A3h, 0A3A4h, 0A7A5h, 0A7A6h, 0A3A7h, 0ABA8h, 0AFA9h
DW 0BFAAh, 0BBABh, 0BFACh, 0BBADh, 0BBAEh, 0BFAFh, 0A3B0h, 0A7B1h
DW 0A7B2h, 0A3B3h, 0A7B4h, 0A3B5h, 0A3B6h, 0A7B7h, 0AFB8h, 0ABB9h
DW 0BBBAh, 0BFBBh, 0BBBCh, 0BFBDh, 0BFBEh, 0BBBFh, 087C0h, 083C1h
DW 083C2h, 087C3h, 083C4h, 087C5h, 087C6h, 083C7h, 08BC8h, 08FC9h
DW 09FCAh, 09BCBh, 09FCCh, 09BCDh, 09BCEh, 09FCFh, 083D0h, 087D1h
DW 087D2h, 083D3h, 087D4h, 083D5h, 083D6h, 087D7h, 08FD8h, 08BD9h
DW 09BDAh, 09FDBh, 09BDCh, 09FDDh, 09FDEh, 09BDFh, 0A3E0h, 0A7E1h
DW 0A7E2h, 0A3E3h, 0A7E4h, 0A3E5h, 0A3E6h, 0A7E7h, 0AFE8h, 0ABE9h
DW 0BBEAh, 0BFEBh, 0BBECh, 0BFEDh, 0BFEEh, 0BBEFh, 0A7F0h, 0A3F1h
DW 0A3F2h, 0A7F3h, 0A3F4h, 0A7F5h, 0A7F6h, 0A3F7h, 0ABF8h, 0AFF9h
DW 0BFFAh, 0BBFBh, 0BFFCh, 0BBFDh, 0BBFEh, 0BFFFh, 04700h, 00301h
DW 00302h, 00703h, 00304h, 00705h, 00706h, 00307h, 00B08h, 00F09h
DW 01F0Ah, 01B0Bh, 01F0Ch, 01B0Dh, 01B0Eh, 01F0Fh, 00310h, 00711h
DW 00712h, 00313h, 00714h, 00315h, 00316h, 00717h, 00F18h, 00B19h
DW 01B1Ah, 01F1Bh, 01B1Ch, 01F1Dh, 01F1Eh, 01B1Fh, 02320h, 02721h
DW 02722h, 02323h, 02724h, 02325h, 02326h, 02727h, 02F28h, 02B29h
DW 03B2Ah, 03F2Bh, 03B2Ch, 03F2Dh, 03F2Eh, 03B2Fh, 02730h, 02331h
DW 02332h, 02733h, 02334h, 02735h, 02736h, 02337h, 02B38h, 02F39h
DW 03F3Ah, 03B3Bh, 03F3Ch, 03B3Dh, 03B3Eh, 03F3Fh, 00340h, 00741h
DW 00742h, 00343h, 00744h, 00345h, 00346h, 00747h, 00F48h, 00B49h
DW 01B4Ah, 01F4Bh, 01B4Ch, 01F4Dh, 01F4Eh, 01B4Fh, 00750h, 00351h
DW 00352h, 00753h, 00354h, 00755h, 00756h, 00357h, 00B58h, 00F59h
DW 01F5Ah, 01B5Bh, 01F5Ch, 01B5Dh, 01B5Eh, 01F5Fh, 02760h, 02361h
DW 02362h, 02763h, 02364h, 02765h, 02766h, 02367h, 02B68h, 02F69h
DW 03F6Ah, 03B6Bh, 03F6Ch, 03B6Dh, 03B6Eh, 03F6Fh, 02370h, 02771h
DW 02772h, 02373h, 02774h, 02375h, 02376h, 02777h, 02F78h, 02B79h
DW 03B7Ah, 03F7Bh, 03B7Ch, 03F7Dh, 03F7Eh, 03B7Fh, 08380h, 08781h
DW 08782h, 08383h, 08784h, 08385h, 08386h, 08787h, 08F88h, 08B89h
DW 09B8Ah, 09F8Bh, 09B8Ch, 09F8Dh, 09F8Eh, 09B8Fh, 08790h, 08391h
DW 08392h, 08793h, 08394h, 08795h, 08796h, 08397h, 08B98h, 08F99h

NEG_Table:
DB 0,66,255,187,254,187,253,187,252,187,251,187,250,187,249,187,248,187,247,179
DB 246,179,245,179,244,179,243,179,242,179,241,179,240,163,239,187,238,187,237,187
DB 236,187,235,187,234,187,233,187,232,187,231,179,230,179,229,179,228,179,227,179
DB 226,179,225,179,224,163,223,155,222,155,221,155,220,155,219,155,218,155,217,155
DB 216,155,215,147,214,147,213,147,212,147,211,147,210,147,209,147,208,131,207,155
DB 206,155,205,155,204,155,203,155,202,155,201,155,200,155,199,147,198,147,197,147
DB 196,147,195,147,194,147,193,147,192,131,191,187,190,187,189,187,188,187,187,187
DB 186,187,185,187,184,187,183,179,182,179,181,179,180,179,179,179,178,179,177,179
DB 176,163,175,187,174,187,173,187,172,187,171,187,170,187,169,187,168,187,167,179
DB 166,179,165,179,164,179,163,179,162,179,161,179,160,163,159,155,158,155,157,155
DB 156,155,155,155,154,155,153,155,152,155,151,147,150,147,149,147,148,147,147,147
DB 146,147,145,147,144,131,143,155,142,155,141,155,140,155,139,155,138,155,137,155
DB 136,155,135,147,134,147,133,147,132,147,131,147,130,147,129,147,128,135,127,59
DB 126,59,125,59,124,59,123,59,122,59,121,59,120,59,119,51,118,51,117,51
DB 116,51,115,51,114,51,113,51,112,35,111,59,110,59,109,59,108,59,107,59
DB 106,59,105,59,104,59,103,51,102,51,101,51,100,51,99,51,98,51,97,51
DB 96,35,95,27,94,27,93,27,92,27,91,27,90,27,89,27,88,27,87,19
DB 86,19,85,19,84,19,83,19,82,19,81,19,80,3,79,27,78,27,77,27
DB 76,27,75,27,74,27,73,27,72,27,71,19,70,19,69,19,68,19,67,19
DB 66,19,65,19,64,3,63,59,62,59,61,59,60,59,59,59,58,59,57,59
DB 56,59,55,51,54,51,53,51,52,51,51,51,50,51,49,51,48,35,47,59
DB 46,59,45,59,44,59,43,59,42,59,41,59,40,59,39,51,38,51,37,51
DB 36,51,35,51,34,51,33,51,32,35,31,27,30,27,29,27,28,27,27,27
DB 26,27,25,27,24,27,23,19,22,19,21,19,20,19,19,19,18,19,17,19
DB 16,3,15,27,14,27,13,27,12,27,11,27,10,27,9,27,8,27,7,19
DB 6,19,5,19,4,19,3,19,2,19,1,19


