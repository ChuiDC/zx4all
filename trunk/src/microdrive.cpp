#include <stdio.h>

#include "zx4all.h"
#include "microdrive.h"
#include "computer.h"
#include "debug.h"

unsigned char basura;

void microdrive_init() {

	int bucle;
	
	basura = 0;
	
	cmpt.mdr_active = 1;
	cmpt.mdr_paged = 0;
	
	for(bucle=0;bucle<137922;bucle++)
		cmpt.mdr_cartridge[bucle]=0xFF; // cartridge erased
	cmpt.mdr_cartridge[137922]=0; // but not write-protected

	cmpt.mdr_tapehead=0;
	cmpt.mdr_drive=0; // no motor on
	cmpt.mdr_old_STATUS=0x00; // default -> no down edge
	cmpt.mdr_modified=0; // not modified
	cmpt.mdr_current_mdr[0]=0; // no cartridge
	
}

void microdrive_reset() {
	
	cmpt.mdr_gap = 15;
	cmpt.mdr_nogap = 15;
	cmpt.mdr_tapehead = 0; // head is at start position	
	
}

void microdrive_emulate(int tstados) {
	// still nothing to do here
	
}

unsigned char microdrive_in(unsigned short Port) {
#ifdef DEBUG_MEMORY
	dbgf("microdrive_in(0x%.4X)",Port);
#endif

	unsigned char retorno;

	/* allow access to the port only if motor 1 is ON and there's a file open */
	
	if(((Port|0xFFE7)==0xFFE7)&&(cmpt.mdr_drive==0x01)&&(cmpt.mdr_current_mdr[0])) {
		if(cmpt.mdr_bytes<cmpt.mdr_maxbytes) {
			retorno=cmpt.mdr_cartridge[cmpt.mdr_tapehead];
			basura=retorno;
			increment_head();
		} else {
			retorno = basura;			
		}
		cmpt.mdr_bytes++;
#ifdef DEBUG_MEMORY
		dbgf(" = 0x%.2X\n",retorno);
#endif
		return (retorno);
	}
	
	if((Port|0xFFE7)==0xFFEF) {
		if((cmpt.mdr_drive==0x01)&&(cmpt.mdr_current_mdr[0])) { // motor 1 ON and file selected
			if(cmpt.mdr_gap) {
				retorno=0xFE; // GAP and SYNC high
				cmpt.mdr_gap--;
			} else {
				retorno=0xF8; // GAP and SYNC low
				if(cmpt.mdr_nogap)
					cmpt.mdr_nogap--;
				else {
					cmpt.mdr_gap=15;
					cmpt.mdr_nogap=15;
				}
			}
			if(!cmpt.mdr_cartridge[137922]) // if write protected
				retorno|=0x01; // active bit
		} else // motor 1 OFF
			retorno=0xFF;

		microdrive_restart();
#ifdef DEBUG_MEMORY
		dbgf(" = 0x%.2X\n",retorno);
#endif
		return (retorno);
	}

	if ((Port|0xFFE7)==0xFFF7) 
		microdrive_restart();		
#ifdef DEBUG_MEMORY
	dbg(" = 0xFF");
#endif
	return(0xFF);
	
}

void microdrive_out(unsigned short Port,unsigned char Value) {
#ifdef DEBUG_MEMORY
	dbgf("microdrive_out(0x%.4X,0x%.2X)\n",Port,Value);
#endif

	/* allow access to the port only if motor 1 is ON and there's a file open */
	
	if(((Port|0xFFE7)==0xFFE7)&&(cmpt.mdr_drive==0x01)&&(cmpt.mdr_current_mdr[0])) {
		if((cmpt.mdr_bytes>11)&&(cmpt.mdr_bytes<(cmpt.mdr_maxbytes+12))) {
			cmpt.mdr_cartridge[cmpt.mdr_tapehead]=(unsigned int) Value;			
			increment_head();
			cmpt.mdr_modified=1;
		}
		cmpt.mdr_bytes++;
		return;
	}
	
	if((Port|0xFFE7)==0xFFEF) {
		if(((Value&0x02)==0)&&((cmpt.mdr_old_STATUS&0x02)==2)) { // edge down-> new bit for motor ON
			cmpt.mdr_drive=((cmpt.mdr_drive<<1)&0xFE); // rotate one drive
			if(!(Value&0x01)) // if COM DATA is 0, we add a 1 bit to mdr_drive
				cmpt.mdr_drive|=0x01;
			
			if(cmpt.mdr_modified) { // if the cartridge has been modified, we store it in hard disk
				cmpt.mdr_file=fopen((const char*)cmpt.mdr_current_mdr,"wb"); // create for write				
				if(cmpt.mdr_file!=NULL) {
					fwrite(cmpt.mdr_cartridge,137923,1,cmpt.mdr_file); // save cartridge
					fclose(cmpt.mdr_file);
					cmpt.mdr_file=NULL;
					cmpt.mdr_modified=0;
				}
			}
		}
		cmpt.mdr_old_STATUS=Value;
		microdrive_restart();
		return;
	}

	if ((Port|0xFFE7)==0xFFF7) {
		microdrive_restart();
		return;
	}
}

void increment_head() { // gets the tape head to the next byte
	
	cmpt.mdr_tapehead++;
	if(cmpt.mdr_tapehead>137921)
		cmpt.mdr_tapehead=0;	
}

void microdrive_restart() { // there's an access to a port. Reset counters and relocate the head

	//printf("Inicializado\n");
	
	while(((cmpt.mdr_tapehead%543)!=0)&&((cmpt.mdr_tapehead%543)!=15))
		increment_head(); // put head in the start of a block
	
	cmpt.mdr_bytes = 0; // reset current number of bytes written
	if((cmpt.mdr_tapehead%543)==0)
		cmpt.mdr_maxbytes = 15; // up to 15 bytes for header blocks
	else
		cmpt.mdr_maxbytes = 528; // up to 528 bytes for data blocks		
	
}
