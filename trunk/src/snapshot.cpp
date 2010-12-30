#include <stdio.h>
#include <string.h>
#include <zlib.h>

#include "zx4all.h"
#include "debug.h"
#include "computer.h"
#include "snapshot.h"
#include "z80intrf.h"


static void uncompress_z80(gzFile fichero,int length,unsigned char *memo) {

  unsigned char byte_loaded,EDfound,counter;
  int position;

  counter=0;
  byte_loaded=0;
  EDfound=0;
  position=0;
   
  do {
    if(counter) {
      memo[position++]=byte_loaded;
      counter--;
      continue;
    } else
      gzread(fichero,&byte_loaded,1);
    
    if(EDfound==2) { // we have two EDs
      counter=byte_loaded;
      gzread(fichero,&byte_loaded,1);
      EDfound=0;
      continue;
    }
    
    if(byte_loaded==0xED) {
      EDfound++;	
    } else {
      if(EDfound==1) { // we found ED xx. We write ED and xx
	memo[position++]=0xED;
	EDfound=0;
      }
      memo[position++]=byte_loaded;
    }
  } while(position<length);

}

int save_z80(char *filename) {

  FILE *fichero;
  unsigned char value,bucle;

  fichero=fopen(filename,"rb");
  if(fichero!=NULL) {
    fclose(fichero);
    return -1; // file already exists
  }

  fichero=fopen(filename,"wb");

  if(fichero==NULL)
    return -2; // can't create file

  fprintf(fichero,"%c%c%c%c%c%c",_z80_get_A(),_z80_get_F(),_z80_get_C(),_z80_get_B(),_z80_get_L(),_z80_get_H()); // AF, BC and HL

  if(cmpt.mode128k==0) // 48K
    fprintf(fichero,"%c%c",_z80_get_PC_l(),_z80_get_PC_h()); // PC
  else
    fprintf(fichero,"%c%c",0,0); // 128K

  fprintf(fichero,"%c%c",_z80_get_SP_l(),_z80_get_SP_h()); // SP

  fprintf(fichero,"%c%c%c",_z80_get_I(),_z80_get_R(),(((_z80_get_R()>>7)&0x01)|((cmpt.border<<1)&0x0E))); // I, R and border color

  fprintf(fichero,"%c%c%c%c%c%c%c%c%c%c%c%c%c%c",_z80_get_E(),_z80_get_D(),_z80_get_C1(),_z80_get_B1(),_z80_get_E1(),_z80_get_D1(),_z80_get_L1(),_z80_get_H1(),_z80_get_A1(),_z80_get_F1(),_z80_get_IY_l(),_z80_get_IY_h(),_z80_get_IX_l(),_z80_get_IX_h());

#ifdef USE_RAZE
  value=z80_get_reg(Z80_REG_IFF1);
#else
  if (procesador.IFF&IFF_1)
    value=1;
  else
    value=0;
#endif

  fprintf(fichero,"%c",value);

#ifdef USE_RAZE
  value=z80_get_reg(Z80_REG_IFF2);
#else
  if (procesador.IFF&IFF_2)
    value=1;
  else
    value=0;
#endif

  fprintf(fichero,"%c",value);

#ifdef USE_RAZE
  value=z80_get_reg(Z80_REG_IM);
#else
  if (procesador.IFF&IFF_IM1)
    value=1;
  else
    if(procesador.IFF&IFF_IM2)
      value=2;
    else
      value=0;
  if(cmpt.issue==2)
    value|=4;
#endif

  fprintf(fichero,"%c",value);

  if(cmpt.mode128k==0) { // 48K
    fwrite((cmpt.memoria+147456),16384,1,fichero); // video memory
    fwrite((cmpt.memoria+98304),32768,1,fichero); // memory pages 2 & 3
    fclose(fichero);
    return 0;
  }

  // 128K

  fprintf(fichero,"%c%c",23,0); // Z80 file v2.01
  fprintf(fichero,"%c%c",_z80_get_PC_l(),_z80_get_PC_h()); // PC
  fprintf(fichero,"%c",3); // hardware mode=3
  fprintf(fichero,"%c",cmpt.mport1); // content of 0x7FFD latch
  fprintf(fichero,"%c%c",0,0); // no If1, no emulation of any kind
  fprintf(fichero,"%c",cmpt.ay_latch); // last selected AY register
  for(bucle=0;bucle<16;bucle++)
    fprintf(fichero,"%c",cmpt.ay_registers[bucle]); // AY registers
  for(bucle=0;bucle<8;bucle++) {
    fprintf(fichero,"%c%c",0,0x40); // length=16384
    fprintf(fichero,"%c",bucle+3); // page number
    fwrite(cmpt.memoria+(16384*bucle)+65536,16384,1,fichero); // store page
  }
  fclose(fichero);
  return 0;
}

static unsigned char tempo[64];
static unsigned char tempo2[64];
static unsigned char memo[64*1024];
static struct z80snapshot snap;
static unsigned char byte_read[4]={0,0,0,0};

static int __load_z80(char *filename) {
  unsigned char type,compressed,page;
  gzFile fichero;
  int readed;
  int longitud=0,longitud2,bucle;

  for(bucle=0;bucle<16;bucle++)
    snap.ay_regs[bucle]=0;

  fichero=gzopen(filename,"rb");
  if(!fichero)
    return -1; // error


  gzread(fichero,tempo,30);

  if((tempo[6]==0)&&(tempo[7]==0)) { // extended Z80

    gzread(fichero,tempo2,2); // read the length of the extension
 
    longitud=((int)tempo2[0])+256*((int)tempo2[1]);
    if(longitud>54) {
      gzclose(fichero);
      return -3; // not a supported Z80 file
    }

    gzread(fichero,tempo2+2,longitud);

    type=1; // new type

    if(longitud==23) // z80 ver 2.01
      switch(tempo2[4]) {
      case 0:
      case 1:
	snap.type=0; // 48K
	break;
      case 3:
      case 4:
	snap.type=1; // 128K
	break;
      default:
	gzclose(fichero);
	return -3; // not a supported Z80 file
	break;
      }
    else // z80 ver 3.0x
      switch(tempo2[4]) {
      case 0:
      case 1:
      case 3:
	snap.type=0; // 48K
	break;
      case 4:
      case 5:
      case 6:
	snap.type=1; // 128K
	break;
      default:
	gzclose(fichero);
	return -3; // not a supported Z80 file
	break;
      }      
  } else {
    type=0; // old type
    snap.type=0; // 48k
  }

  if(tempo[29]&0x04)
    snap.issue=2;
  else
    snap.issue=3;

  snap.A=tempo[0];
  snap.F=tempo[1];
  snap.C=tempo[2];
  snap.B=tempo[3];
  snap.L=tempo[4];
  snap.H=tempo[5];
  if(type) {
    snap.PC=((unsigned short)tempo2[2])+256*((unsigned short)tempo2[3]);
    for(bucle=0;bucle<16;bucle++)
      snap.ay_regs[bucle]=tempo2[9+bucle];
    snap.ay_latch=tempo2[8];
  } else
    snap.PC=((unsigned short)tempo[6])+256*((unsigned short)tempo[7]);
  snap.SP=((unsigned short)tempo[8])+256*((unsigned short)tempo[9]);
  snap.I=tempo[10];
  snap.R=(tempo[11]&0x7F);

  if(tempo[12]==255)
    tempo[12]=1;

  if(tempo[12]&0x01)
    snap.R|=0x80;

  snap.border=(tempo[12]>>1)&0x07;

//  if(tempo[12]&30)
  if(tempo[12]&0x20)
    compressed=1;
  else
    compressed=0;

  snap.E=tempo[13];
  snap.D=tempo[14];
  snap.CC=tempo[15];
  snap.BB=tempo[16];
  snap.EE=tempo[17];
  snap.DD=tempo[18];
  snap.LL=tempo[19];
  snap.HH=tempo[20];
  snap.AA=tempo[21];
  snap.FF=tempo[22];
  snap.IY=((unsigned short)tempo[23])+256*((unsigned short)tempo[24]);
  snap.IX=((unsigned short)tempo[25])+256*((unsigned short)tempo[26]);
  if(tempo[27])
    snap.IFF1=1;
  else
    snap.IFF1=0;
  if(tempo[28])
    snap.IFF2=1;
  else
    snap.IFF2=0;
  switch(tempo[29]&0x03) {
  case 0:
    snap.Imode=0;
    break;
  case 1:
    snap.Imode=1;
    break;
  case 2:
    snap.Imode=2;
    break;
  }
  if(tempo[29]&0x04)
    snap.issue=2;
  else
    snap.issue=3;

  if(type)
    snap.pager=tempo2[5];

  if(type) { // extended z80
    if(snap.type==1) { // 128K snapshot

      /*       gzclose(fichero);
	       return -3;*/  // z80 file not yet supported

      while(!gzeof(fichero)) {
	
	readed=gzread(fichero,byte_read,3);
	if(readed!=3)
	  break;
	longitud2=((int)byte_read[0])+256*((int)byte_read[1]);
	switch(byte_read[2]) {
	case 3:
	  page=0;
	  break;
	case 4:
	  page=1;
	  break;
	case 5:
	  page=2;
	  break;
	case 6:
	  page=3;
	  break;
	case 7:
	  page=4;
	  break;
	case 8:
	  page=5;
	  break;
	case 9:
	  page=6;
	  break;
	case 10:
	  page=7;
	  break;
	default:
	  page=11;
	  break;
	}
	if(longitud2==0xFFFF) // uncompressed raw data
	  gzread(fichero,snap.page[page],16384);
	else
	  uncompress_z80(fichero,16384,snap.page[page]);
      }

    } else {

      while(!gzeof(fichero)) {
	
	readed=gzread(fichero,byte_read,3);
	if(readed!=3)
	  break;
	longitud2=((int)byte_read[0])+256*((int)byte_read[1]);
	switch(byte_read[2]) {
	case 8:
	  page=0;
	  break;
	case 4:
	  page=1;
	  break;
	case 5:
	  page=2;
	  break;
	default:
	  page=11;
	  break;
	}
	if(longitud2==0xFFFF) // uncompressed raw data
	  gzread(fichero,snap.page[page],16384);
	else
	  uncompress_z80(fichero,16384,snap.page[page]);

      }
    }
  } else {
    if(compressed) {
      // 48k compressed z80 loader
      
      // we uncompress first the data
      
      uncompress_z80(fichero,49152,memo);
      
      
      memcpy(snap.page[0],memo,16384);
      memcpy(snap.page[1],memo+16384,16384);
      memcpy(snap.page[2],memo+32768,16384);
      
    } else {
      // 48k uncompressed z80 loader
     
      memset(snap.page[0],0,16384);
      gzread(fichero,snap.page[0],16384);
      memset(snap.page[1],0,16384);
      gzread(fichero,snap.page[1],16384);
      memset(snap.page[2],0,16384);
      gzread(fichero,snap.page[2],16384);
    }
  }

  load_snap(&snap);
  gzclose(fichero);
  return 0; // all right
}

int load_sna(char *filename)
{
//printf("load_sna('%s')\n",filename);
	int len;
  	gzFile fichero=gzopen(filename,"rb");
	if (!fichero)
		return -1;
	gzseek (fichero, 0, SEEK_END);
	len=gztell(fichero);
//printf("LEN=%i\n",len);
	gzseek (fichero, 0, SEEK_SET);
	gzread (fichero,tempo, 27);
	snap.I=tempo[0];
	snap.L=tempo[9];
	snap.H=tempo[10];
	snap.E=tempo[11];
	snap.D=tempo[12];
	snap.C=tempo[13];
	snap.B=tempo[14];
	snap.F=tempo[15];
	snap.A=tempo[16];
	snap.SP=((unsigned short)tempo[23])+256*((unsigned short)tempo[24]);
	snap.IY=((unsigned short)tempo[15])+256*((unsigned short)tempo[16]);
	snap.IX=((unsigned short)tempo[17])+256*((unsigned short)tempo[18]);
	snap.IFF1=snap.IFF2=(tempo[19] & 0x04) >> 2;
	snap.Imode=tempo[25];
	snap.R=(tempo[20]&0x7F);
	gzread (fichero,memo, 0x4000 * 3);
	if (len <= 49179)
	{
		snap.type=0;
		snap.PC=((unsigned short)memo[snap.SP-16384])+256*((unsigned short)memo[snap.SP-16384+1]);
		snap.SP+=2;
		memcpy(snap.page[0],memo,0x4000);
		memcpy(snap.page[1],memo+0x4000,0x4000);
		memcpy(snap.page[2],memo+0x8000,0x4000);
	}
	else
	{
		snap.type=1;
		gzread(fichero,tempo2,4);
		snap.PC=((unsigned short)tempo2[0])+256*((unsigned short)tempo2[1]);
//printf("PC=%X, SP=%X\n",snap.PC,snap.SP);
		snap.pager=tempo2[3]&0x7;
//printf("PAGER=%i\n",snap.pager);
		memcpy(snap.page[5],memo,0x4000);
		memcpy(snap.page[2],memo+0x4000,0x4000);
		memcpy(snap.page[snap.pager],memo+0x8000,0x4000);

		if (snap.pager!=0)
			gzread (fichero,snap.page[0], 0x4000);
		if (snap.pager!=1)
			gzread (fichero,snap.page[1], 0x4000);
		if (snap.pager!=3)
			gzread (fichero,snap.page[3], 0x4000);
		if (snap.pager!=4)
			gzread (fichero,snap.page[4], 0x4000);
		if (snap.pager!=6)
			gzread (fichero,snap.page[6], 0x4000);
		if (snap.pager!=7)
			gzread (fichero,snap.page[7], 0x4000);
	}

	load_snap(&snap);
	gzclose(fichero);
	return 0;
}

int load_z80(char *filename) {
	if (filename)
	{
		int len=strlen(filename);
		if (len>3)
		{
			char *ext=filename+(len-3);
			if (!strcasecmp("SNA",ext))
				return(load_sna(filename));
		}
		if (len>6)
		{
			char *ext=filename+(len-6);
			if (!strcasecmp("SNA.GZ",ext))
				return(load_sna(filename));
		}
		return __load_z80(filename);
	}
	return -1234;
}


void load_snap(struct z80snapshot *snap) {

  int bucle;

  switch(snap->type) {
  case 0: // 48k
    cmpt.mode128k=0; // 48K mode
    cmpt.issue=snap->issue;
    ResetComputer();
    break;
  case 1: // 128k
    cmpt.mode128k=1; //2; // +2 mode
    cmpt.issue=3;
    ResetComputer();
//    printf("Pager: %X\n",snap->pager);
    OutZ80(0x7FFD,snap->pager);
    break;
  default:
    break;
  }

  _z80_set_A(snap->A);
#ifdef MASCARA_AF
  _z80_set_F(snap->F&MASCARA_AF);
#else
  _z80_set_F(snap->F);
#endif
  _z80_set_B(snap->B);
  _z80_set_C(snap->C);
  _z80_set_D(snap->D);
  _z80_set_E(snap->E);
  _z80_set_H(snap->H);
  _z80_set_L(snap->L);
  _z80_set_A1(snap->AA);
  _z80_set_F1(snap->FF);
  _z80_set_B1(snap->BB);
  _z80_set_C1(snap->CC);
  _z80_set_D1(snap->DD);
  _z80_set_E1(snap->EE);
  _z80_set_H1(snap->HH);
  _z80_set_L1(snap->LL);
  _z80_set_IX(snap->IX);
  _z80_set_IY(snap->IY);
  _z80_set_SP(snap->SP);
  _z80_set_PC(snap->PC);
  _z80_set_I(snap->I);
  _z80_set_R(snap->R&0x7F);

#ifdef USE_RAZE
  z80_set_reg(Z80_REG_IFF1,snap->IFF1);
  z80_set_reg(Z80_REG_IFF2,snap->IFF2);
  z80_set_reg(Z80_REG_IM,snap->Imode);
  if (snap->IFF1)
	  z80_set_reg(Z80_REG_IRQLine,1);
#else
  if(snap->IFF1)
    procesador.IFF|=(IFF_1|IFF_EI);
  if(snap->IFF2)
    procesador.IFF|=IFF_2;

  switch(snap->Imode) {
  case 0:
    procesador.IFF&=~(IFF_IM1|IFF_IM2);
    break;
  case 1:
    procesador.IFF=(procesador.IFF&~IFF_IM2)|IFF_IM1;
    break;
  case 2:
    procesador.IFF=(procesador.IFF&~IFF_IM1)|IFF_IM2;
    break;
  }
#endif
  cmpt.border=snap->border+16;

  switch(snap->type) {
  case 0: // 48K

    for(bucle=0;bucle<16384;bucle++) {
      cmpt.memoria[bucle+147456]=snap->page[0][bucle];
      cmpt.memoria[bucle+98304]=snap->page[1][bucle];
      cmpt.memoria[bucle+114688]=snap->page[2][bucle];
    }
    
    cmpt.ay_emul=0;
    break;
  case 1: // 128K

    for(bucle=0;bucle<16384;bucle++) {
      cmpt.memoria[bucle+65536]=snap->page[0][bucle];
      cmpt.memoria[bucle+81920]=snap->page[1][bucle];
      cmpt.memoria[bucle+98304]=snap->page[2][bucle];
      cmpt.memoria[bucle+114688]=snap->page[3][bucle];
      cmpt.memoria[bucle+131072]=snap->page[4][bucle];
      cmpt.memoria[bucle+147456]=snap->page[5][bucle];
      cmpt.memoria[bucle+163840]=snap->page[6][bucle];
      cmpt.memoria[bucle+180224]=snap->page[7][bucle];
    }
    cmpt.ay_emul=-1;
    for(bucle=0;bucle<16;bucle++)
      cmpt.ay_registers[bucle]=snap->ay_regs[bucle];
    cmpt.ay_latch=snap->ay_latch;
    break;
  default:
    break;
  }
  setChanges();
}
