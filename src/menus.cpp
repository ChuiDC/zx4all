#if 0
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <dirent.h>
#include <string.h>
#include <SDL/SDL.h>

#include "zx4all.h"
#include "z80intrf.h"
#include "computer.h"
#include "snapshot.h"
#include "characters.h"
#include "menus.h"
#include "tape.h"

// shows the settings menu

void settings_menu() {

  unsigned char *fbuffer,fin;
  char texto[41];
  int ancho=screen->w;

  fbuffer=(unsigned char*)screen->pixels;

  fin=1;

  texto[0]=0;

  do {
    clean_screen();

    printstring(fbuffer,(unsigned char*)"Current settings",-1,5,31,16,ancho);
    switch(cmpt.mode128k) {
    case 0:
      if(cmpt.issue==2)
	sprintf(texto,"Mode: 48K issue2");
      else
	sprintf(texto,"Mode: 48K issue3");
      break;
    case 1:
      sprintf(texto,"Mode: Sinclair 128K");
      break;
    case 2:
      sprintf(texto,"Mode: Amstrad +2");
      break;
    case 3:
      sprintf(texto,"Mode: Amstrad +2A/+3");
      break;
    }
  
    printstring(fbuffer,(unsigned char *)texto,-1,55,30,16,ancho);

    switch(cmpt.joystick) {
    case 0:
      sprintf(texto,"Joystick emulation: Cursor");
      break;
    case 1:
      sprintf(texto,"Joystick emulation: Kempston");
      break;
    case 2:
      sprintf(texto,"Joystick emulation: Sinclair (1)");
      break;
    case 3:
      sprintf(texto,"Joystick emulation: Sinclair (2)");
      break;
    }
    printstring(fbuffer,(unsigned char *)texto,-1,75,29,16,ancho);      

    if(cmpt.ay_emul)
      sprintf(texto,"AY-3-8912 Emulation: enabled");
    else
      sprintf(texto,"AY-3-8912 Emulation: disabled");

    printstring(fbuffer,(unsigned char *)texto,-1,95,27,16,ancho);

	if(cmpt.mdr_active)
		sprintf(texto,"Interface I Emulation: enabled");
	else
		sprintf(texto,"Interface I Emulation: disabled");
	
    printstring(fbuffer,(unsigned char *)texto,-1,115,28,16,ancho);
	
    printstring(fbuffer,(unsigned char *)"F1:",30,160,28,16,ancho);
    printstring(fbuffer,(unsigned char *)"48K issue2",78,160,31,16,ancho);

    printstring(fbuffer,(unsigned char *)"F2:",350,160,28,16,ancho);
    printstring(fbuffer,(unsigned char *)"48K issue3",398,160,31,16,ancho);

    printstring(fbuffer,(unsigned char *)"F3:",30,200,28,16,ancho);
    printstring(fbuffer,(unsigned char *)"Sinclair 128K",78,200,31,16,ancho);

    printstring(fbuffer,(unsigned char *)"F4:",350,200,28,16,ancho);
    printstring(fbuffer,(unsigned char *)"Amstrad +2",398,200,31,16,ancho);

    printstring(fbuffer,(unsigned char *)"F5:",30,240,28,16,ancho);
    printstring(fbuffer,(unsigned char *)"Amstrad +2A/+3",78,240,31,16,ancho);

    printstring(fbuffer,(unsigned char *)"F6:",350,240,28,16,ancho);
    printstring(fbuffer,(unsigned char *)"AY emulation",398,240,31,16,ancho);

    printstring(fbuffer,(unsigned char *)"F7:",30,280,28,16,ancho);
    printstring(fbuffer,(unsigned char *)"Cursor",78,280,31,16,ancho);

    printstring(fbuffer,(unsigned char *)"F8:",350,280,28,16,ancho);
    printstring(fbuffer,(unsigned char *)"Kempston",398,280,31,16,ancho);

    printstring(fbuffer,(unsigned char *)"F9:",30,320,28,16,ancho);
    printstring(fbuffer,(unsigned char *)"Sinclair (1)",78,320,31,16,ancho);

    printstring(fbuffer,(unsigned char *)"F10:",350,320,28,16,ancho);
    printstring(fbuffer,(unsigned char *)"Sinclair (2)",414,320,31,16,ancho);

    printstring(fbuffer,(unsigned char *)"F11:",30,360,28,16,ancho);
    printstring(fbuffer,(unsigned char *)"Interface I",94,360,31,16,ancho);

    printstring(fbuffer,(unsigned char *)"ESC:",168,400,28,16,ancho);
    printstring(fbuffer,(unsigned char *)"return emulator",232,400,31,16,ancho);

    switch(wait_key()) {
    case SDLK_ESCAPE:
    case SDLK_RETURN:
      fin=0;
      break;

    case SDLK_F1:
      cmpt.issue=2;
      cmpt.mode128k=0;
      cmpt.ay_emul=0;
      ResetComputer();
      break;
    case SDLK_F2:
      cmpt.issue=3;
      cmpt.mode128k=0;
      cmpt.ay_emul=0;
      ResetComputer();
      break;
    case SDLK_F3:
      cmpt.issue=3;
      cmpt.mode128k=1;
      cmpt.ay_emul=1;
      ResetComputer();
      break;
    case SDLK_F4:
      cmpt.issue=3;
      cmpt.mode128k=2;
      cmpt.ay_emul=1;
      ResetComputer();
      break;
    case SDLK_F5:
      cmpt.issue=3;
      cmpt.mode128k=3;
      cmpt.ay_emul=1;
	  cmpt.mdr_active=0;
      ResetComputer();
      break;
    case SDLK_F6:
      cmpt.ay_emul=1-cmpt.ay_emul;
      break;
    case SDLK_F7:
      cmpt.joystick=0;
      break;
    case SDLK_F8:
      cmpt.joystick=1;
      break;
    case SDLK_F9:
      cmpt.joystick=2;
      break;
    case SDLK_F10:
      cmpt.joystick=3;
      break;
	case SDLK_F11:
		if(cmpt.mode128k!=3) {
			cmpt.mdr_active=1-cmpt.mdr_active;
			ResetComputer();
		}
		break;
    }
  } while(fin);

  clean_screen();

}


// shows the help menu

void help_menu() {

  unsigned char *fbuffer,fin;
  int ancho=screen->w;

  fbuffer=(unsigned char *)screen->pixels;

  clean_screen();

  printstring(fbuffer,(unsigned char *)"FBZX (1.3)",-1,10,31,16,ancho);
  printstring(fbuffer,(unsigned char *)"Available keys",-1,40,30,16,ancho);
  printstring(fbuffer,(unsigned char *)"Shift:Caps Shift    Ctrl:Symbol Shift",-1,95,27,16,ancho);

  printstring(fbuffer,(unsigned char *)"F1:",14,160,28,16,ancho);
  printstring(fbuffer,(unsigned char *)"this help",62,160,31,16,ancho);

  printstring(fbuffer,(unsigned char *)"F2:",336,160,28,16,ancho);
  printstring(fbuffer,(unsigned char *)"manage snapshots",382,160,31,16,ancho);

  printstring(fbuffer,(unsigned char *)"F3:",14,200,28,16,ancho);
  printstring(fbuffer,(unsigned char *)"manage TAP/TZX",62,200,31,16,ancho);

  printstring(fbuffer,(unsigned char *)"F4:",336,200,28,16,ancho);
  printstring(fbuffer,(unsigned char *)"change settings",382,200,31,16,ancho);

  printstring(fbuffer,(unsigned char *)"F5:",14,240,28,16,ancho);
  printstring(fbuffer,(unsigned char *)"stop TAPE",62,240,31,16,ancho);

  printstring(fbuffer,(unsigned char *)"F6:",336,240,28,16,ancho);
  printstring(fbuffer,(unsigned char *)"play TAPE",382,240,31,16,ancho);

  printstring(fbuffer,(unsigned char *)"F7:",14,280,28,16,ancho);
  printstring(fbuffer,(unsigned char *)"manage MICRODRIVE",62,280,31,16,ancho);

  printstring(fbuffer,(unsigned char *)"F10:",336,320,28,16,ancho);
  printstring(fbuffer,(unsigned char *)"reset spectrum",398,320,31,16,ancho);

  printstring(fbuffer,(unsigned char *)"F11:",14,360,28,16,ancho);
  printstring(fbuffer,(unsigned char *)"volume low",78,360,31,16,ancho);

  printstring(fbuffer,(unsigned char *)"F12:",336,360,28,16,ancho);
  printstring(fbuffer,(unsigned char *)"F12:volume up",398,360,31,16,ancho);

  printstring(fbuffer,(unsigned char *)"ESC:",184,400,28,16,ancho);
  printstring(fbuffer,(unsigned char *)"exit emulator",248,400,31,16,ancho);

  fin=1;
  do {

    switch(wait_key()) {
    case SDLK_ESCAPE: // to exit the help
      fin=0;
      break;

    default:
      break;
    }      

  } while(fin);

  clean_screen();

}


// shows the SNAPSHOTS menu

void snapshots_menu() {

	unsigned char *fbuffer,fin;
	int ancho=screen->w;

	fbuffer=(unsigned char *)screen->pixels;

	clean_screen();

	printstring(fbuffer,(unsigned char *)"SNAPSHOTS",-1,10,31,16,ancho);

	printstring(fbuffer,(unsigned char *)"F1:",14,100,28,16,ancho);
	printstring(fbuffer,(unsigned char *)"load a Z80 snapshot",62,100,31,16,ancho);


	if(cmpt.mode128k!=3) { // not in +3 mode
		printstring(fbuffer,(unsigned char *)"F2:",14,160,28,16,ancho);
		printstring(fbuffer,(unsigned char *)"make a Z80 snapshot",62,160,31,16,ancho);
	} else {
		printstring(fbuffer,(unsigned char *)"Can't make snapshots in +3 mode",14,160,31,16,ancho);
	}

	printstring(fbuffer,(unsigned char *)"ESC:",170,400,28,16,ancho);
	printstring(fbuffer,(unsigned char *)"return emulator",234,400,31,16,ancho);

	fin=1;
	do {
		switch(wait_key()) {
		case SDLK_ESCAPE: // to exit the help
			fin=0;
		break;
		case SDLK_F1:
			fin=0;
			load_z80file();
		break;
		case SDLK_F2:
			fin=0;
			if(cmpt.mode128k!=3) // not in +3 mode
				save_z80file();
		break;
		default:
		break;
		}      
	} while(fin);

	clean_screen();
}


// shows the TAPs menu

void taps_menu() {

	unsigned char *fbuffer,fin;
	int ancho=screen->w;

	fbuffer=(unsigned char *)screen->pixels;
	
	fin=1;
	do {
	  	clean_screen();

		printstring(fbuffer,(unsigned char *)"TAP/TZX files",-1,10,31,16,ancho);

		printstring(fbuffer,(unsigned char *)"F1:",14,50,28,16,ancho);
		printstring(fbuffer,(unsigned char *)"select a TAP/TZX file",62,50,31,16,ancho);


		printstring(fbuffer,(unsigned char *)"F2:",14,90,28,16,ancho);
		printstring(fbuffer,(unsigned char *)"rewind TAP/TZX file",62,90,31,16,ancho);

		printstring(fbuffer,(unsigned char *)"F3:",14,130,28,16,ancho);
		printstring(fbuffer,(unsigned char *)"fast/normal speed",62,130,31,16,ancho);

		printstring(fbuffer,(unsigned char *)"F4:",14,170,28,16,ancho);
		printstring(fbuffer,(unsigned char *)"write protection",62,170,31,16,ancho);
		
		printstring(fbuffer,(unsigned char *)"F5:",14,210,28,16,ancho);
		printstring(fbuffer,(unsigned char *)"create TAP file",62,210,31,16,ancho);
				
		printstring(fbuffer,(unsigned char *)"ESC:",14,250,28,16,ancho);
		printstring(fbuffer,(unsigned char *)"return emulator",78,250,31,16,ancho);

		printstring(fbuffer,(unsigned char *)"Current TAP/TZX file is:",-1,300,28,16,ancho);
		printstring(fbuffer,cmpt.current_tap,-1,320,28,16,ancho);

		if(cmpt.tape_fast_load)
			printstring(fbuffer,(unsigned char *)"Fast load enabled  ",10,420,30,16,ancho);
		else
			printstring(fbuffer,(unsigned char *)"Fast load disabled ",10,420,30,16,ancho);
		
		if(cmpt.tape_write)
			printstring(fbuffer,(unsigned char *)"Write enabled  ",390,420,30,16,ancho);
		else
			printstring(fbuffer,(unsigned char *)"Write disabled ",390,420,30,16,ancho);
    
		switch(wait_key()) {
		case SDLK_ESCAPE: // to exit the help
			fin=0;
		break;

		case SDLK_F1:
			cmpt.pause=1;
			select_tapfile();
		break;
		case SDLK_F2:
			fin=0;
			cmpt.pause=1;
			if(cmpt.tap_file!=NULL) {
				cmpt.tape_current_mode=TAP_TRASH;
				rewind_tape(cmpt.tap_file,1);		
			}
		break;
		case SDLK_F3:
			cmpt.pause=1;
			cmpt.tape_fast_load=1-cmpt.tape_fast_load;
			if(cmpt.tap_file!=NULL) {
				cmpt.tape_current_mode=TAP_TRASH;
				rewind_tape(cmpt.tap_file,1);
			}
		break;
		case SDLK_F4:
			cmpt.tape_write=1-cmpt.tape_write;
		break;
		case SDLK_F5:
			create_tapfile();
		break;
		default:
		break;
		}      

	} while(fin);

	clean_screen();
}

// shows a menu to allow user to choose a tape file

void select_tapfile() {

	unsigned char *videomem,*filename;
	int ancho,retorno;
	unsigned char char_id[11];

  videomem=(unsigned char *)screen->pixels;
  ancho=screen->w;

  clean_screen();

  if(cmpt.tap_file!=NULL)
    rewind_tape(cmpt.tap_file,1);
  cmpt.tape_current_bit=0;
  cmpt.tape_current_mode=TAP_TRASH;

  printstring(videomem,(unsigned char *)"Choose the TAPE file to load",-1,32,29,16,ancho);

  filename=(unsigned char *)select_file(path_taps,1);

  if(filename==NULL) { // Aborted
    clean_screen();
    return;
  }

  if(cmpt.tap_file!=NULL)
    fclose(cmpt.tap_file);
  cmpt.tap_file=fopen((const char *)filename,"r+"); // read and write
  cmpt.tape_write = 0; // by default, can't record
  if(cmpt.tap_file==NULL)
    retorno=-1;
  else
    retorno=0;

  clean_screen();

  strcpy((char *)cmpt.current_tap,(const char*)filename);

  free(filename);
  
  switch(retorno) {
  case 0: // all right
    break;
  case -1:
    printstring(videomem,(unsigned char *)"Error: Can't load that file",-1,232,26,16,ancho);
    printstring(videomem,(unsigned char *)"Press any key",-1,248,26,16,ancho);
    cmpt.current_tap[0]=0;
    wait_key();
    break;
  }
  
  fread(char_id,10,1,cmpt.tap_file); // read the (maybe) TZX header
  if((!strncmp((const char *)char_id,"ZXTape!",7)) && (char_id[7]==0x1A)&&(char_id[8]==1)) {
	  cmpt.tape_file_type = TAP_TZX;
	  rewind_tape(cmpt.tap_file,1);	  
  } else {
	  cmpt.tape_file_type = TAP_TAP;
	  rewind_tape(cmpt.tap_file,1);
  }
  
  clean_screen();
}

void create_tapfile() {

	unsigned char *videomem;
	int ancho,retorno,longitud;
	unsigned char nombre[35],nombre2[37];

	videomem=(unsigned char *)screen->pixels;
	ancho=screen->w;

	clean_screen();

	printstring(videomem,(unsigned char *)"Choose a name for the TAP file",-1,32,30,16,ancho);
	printstring(videomem,(unsigned char *)"(up to 30 characters)",-1,52,30,16,ancho);

	printstring(videomem,(unsigned char *)"TAP file will be saved in:",-1,132,28,16,ancho);
	printstring(videomem,(unsigned char *)path_taps,0,152,28,16,ancho);

	nombre[0]=127;
	nombre[1]=0;
	longitud=0;
	retorno=0;

	do {
		sprintf((char *)nombre2," %s ",nombre);
		printstring(videomem,nombre2,-1,84,31,16,ancho);
		switch(wait_key()) {
		case SDLK_BACKSPACE:
			if(longitud>0) {
				nombre[longitud]=0;
				longitud--;
				nombre[longitud]=127;
			}
		break;
		case SDLK_ESCAPE:
			retorno=2;
		break;
		case SDLK_RETURN:
			retorno=1;
		break;
		case SDLK_a:
			if(longitud<30) {
				nombre[longitud++]='a';
				nombre[longitud]=127;
				nombre[longitud+1]=0;
			}
		break;
		case SDLK_b:
			if(longitud<30) {
				nombre[longitud++]='b';
				nombre[longitud]=127;
				nombre[longitud+1]=0;
			}
		break;
    case SDLK_c:
      if(longitud<30) {
	nombre[longitud++]='c';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
    case SDLK_d:
      if(longitud<30) {
	nombre[longitud++]='d';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
    case SDLK_e:
      if(longitud<30) {
	nombre[longitud++]='e';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
    case SDLK_f:
      if(longitud<30) {
	nombre[longitud++]='f';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
    case SDLK_g:
      if(longitud<30) {
	nombre[longitud++]='g';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
    case SDLK_h:
      if(longitud<30) {
	nombre[longitud++]='h';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
    case SDLK_i:
      if(longitud<30) {
	nombre[longitud++]='i';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
    case SDLK_j:
      if(longitud<30) {
	nombre[longitud++]='j';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
    case SDLK_k:
      if(longitud<30) {
	nombre[longitud++]='k';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
    case SDLK_l:
      if(longitud<30) {
	nombre[longitud++]='l';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
    case SDLK_m:
      if(longitud<30) {
	nombre[longitud++]='m';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
    case SDLK_n:
      if(longitud<30) {
	nombre[longitud++]='n';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
    case SDLK_o:
      if(longitud<30) {
	nombre[longitud++]='o';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
    case SDLK_p:
      if(longitud<30) {
	nombre[longitud++]='p';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
    case SDLK_q:
      if(longitud<30) {
	nombre[longitud++]='q';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
    case SDLK_r:
      if(longitud<30) {
	nombre[longitud++]='r';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
    case SDLK_s:
      if(longitud<30) {
	nombre[longitud++]='s';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
    case SDLK_t:
      if(longitud<30) {
	nombre[longitud++]='t';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
    case SDLK_u:
      if(longitud<30) {
	nombre[longitud++]='u';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
    case SDLK_v:
      if(longitud<30) {
	nombre[longitud++]='v';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
    case SDLK_w:
      if(longitud<30) {
	nombre[longitud++]='w';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
    case SDLK_x:
      if(longitud<30) {
	nombre[longitud++]='x';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
    case SDLK_y:
      if(longitud<30) {
	nombre[longitud++]='y';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
    case SDLK_z:
      if(longitud<30) {
	nombre[longitud++]='z';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
    case SDLK_0:
      if(longitud<30) {
	nombre[longitud++]='0';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
    case SDLK_1:
      if(longitud<30) {
	nombre[longitud++]='1';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
    case SDLK_2:
      if(longitud<30) {
	nombre[longitud++]='2';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
    case SDLK_3:
      if(longitud<30) {
	nombre[longitud++]='3';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
    case SDLK_4:
      if(longitud<30) {
	nombre[longitud++]='4';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
    case SDLK_5:
      if(longitud<30) {
	nombre[longitud++]='5';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
    case SDLK_6:
      if(longitud<30) {
	nombre[longitud++]='6';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
    case SDLK_7:
      if(longitud<30) {
	nombre[longitud++]='7';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
		case SDLK_8:
			if(longitud<30) {
				nombre[longitud++]='8';
				nombre[longitud]=127;
		  		nombre[longitud+1]=0;
			}
		break;
		case SDLK_9:
			if(longitud<30) {
				nombre[longitud++]='9';
				nombre[longitud]=127;
		  		nombre[longitud+1]=0;
			}
		break;
		case SDLK_MINUS:
			if(longitud<30) {
				nombre[longitud++]='-';
		  		nombre[longitud]=127;
		  		nombre[longitud+1]=0;
			}
		break;
		}
	} while(!retorno);

	clean_screen();

	nombre[longitud]=0; // erase cursor

	if(retorno==2) // abort
		return;

	longitud=strlen(path_taps);
	if((path_snaps[longitud-1]!='/')&&(longitud>1))
		sprintf((char *)nombre2,"%s/%s.tap",path_taps,nombre); // name
	else
		sprintf((char *)nombre2,"%s%s.tap",path_taps,nombre);
	if(cmpt.tap_file!=NULL)
		fclose(cmpt.tap_file);
	
	cmpt.tap_file=fopen((char *)nombre2,"r"); // test if it exists
	if(cmpt.tap_file==NULL)
		retorno=0;
	else
		retorno=-1;
	
	if(!retorno) {
		cmpt.tap_file=fopen((char *)nombre2,"a+"); // create for read and write
		if(cmpt.tap_file==NULL)
			retorno=-2;
		else
			retorno=0;
	}
	cmpt.tape_write=1; // allow to write
	strcpy((char *)cmpt.current_tap,(const char *)nombre2);
	cmpt.tape_file_type = TAP_TAP;
	switch(retorno) {
	case 0:
	break;
	case -1:
		printstring(videomem,(unsigned char *)"File already exists",-1,80,26,16,ancho);
		cmpt.current_tap[0]=0;
		wait_key();
	break;
	case -2:
		printstring(videomem,(unsigned char *)"Can't create file",-1,80,26,16,ancho);
		cmpt.current_tap[0]=0;
		wait_key();
	break;
	}
	clean_screen();
}

// shows the microdrive menu

void microdrive_menu() {

	unsigned char *fbuffer,fin;
	int ancho=screen->w;

	fbuffer=(unsigned char *)screen->pixels;
	
	fin=1;
	do {
	  	clean_screen();

		printstring(fbuffer,(unsigned char *)"MICRODRIVE files",-1,10,31,16,ancho);

		printstring(fbuffer,(unsigned char *)"F1:",14,50,28,16,ancho);
		printstring(fbuffer,(unsigned char *)"select a MDR file",62,50,31,16,ancho);

		printstring(fbuffer,(unsigned char *)"F2:",14,90,28,16,ancho);
		printstring(fbuffer,(unsigned char *)"create a MDR file",62,90,31,16,ancho);

		printstring(fbuffer,(unsigned char *)"F3:",14,130,28,16,ancho);
		printstring(fbuffer,(unsigned char *)"write protection",62,130,31,16,ancho);
				
		printstring(fbuffer,(unsigned char *)"ESC:",14,170,28,16,ancho);
		printstring(fbuffer,(unsigned char *)"return emulator",78,170,31,16,ancho);

		printstring(fbuffer,(unsigned char *)"Current MDR file is:",-1,300,28,16,ancho);
		printstring(fbuffer,(unsigned char *)cmpt.mdr_current_mdr,-1,320,28,16,ancho);

		if(!cmpt.mdr_cartridge[137922])
			printstring(fbuffer,(unsigned char *)"  Write enabled  ",-1,420,30,16,ancho);
		else
			printstring(fbuffer,(unsigned char *)" Write disabled ",-1,420,30,16,ancho);
    
		switch(wait_key()) {
		case SDLK_ESCAPE: // to exit the help
			fin=0;
			break;

		case SDLK_F1:			
			select_mdrfile();
			break;
		case SDLK_F2:
			create_mdrfile();
			break;
		case SDLK_F3:
			if(cmpt.mdr_cartridge[137922])
				cmpt.mdr_cartridge[137922]=0;
			else
				cmpt.mdr_cartridge[137922]=1;
			cmpt.mdr_file=fopen((char *)cmpt.mdr_current_mdr,"wb"); // create for write
			if(cmpt.mdr_file!=NULL) {				
				fwrite(cmpt.mdr_cartridge,137923,1,cmpt.mdr_file); // save cartridge
				fclose(cmpt.mdr_file);
				cmpt.mdr_file=NULL;
				cmpt.mdr_modified=0;
			}			
			break;		
		default:
		break;
		}      

	} while(fin);

	clean_screen();
}

// shows a menu to allow user to choose a microdrive file

void select_mdrfile() {

	unsigned char *videomem,*filename;
	int ancho,retorno;
	// unsigned char char_id[11];

  videomem=(unsigned char *)screen->pixels;
  ancho=screen->w;

  clean_screen();

  printstring(videomem,(unsigned char *)"Choose the MICRODRIVE file to load",-1,32,29,16,ancho);

  filename=(unsigned char *)select_file(path_mdrs,2); // MDR files

  if(filename==NULL) { // Aborted
    clean_screen();
    return;
  }

  cmpt.mdr_file=fopen((char *)filename,"rb"); // read  
  if(cmpt.mdr_file==NULL)
    retorno=-1;
  else {
    retorno=0;
	fread(cmpt.mdr_cartridge,137923,1,cmpt.mdr_file); // read the cartridge in memory
	cmpt.mdr_modified=0; // not modified
	fclose(cmpt.mdr_file);
	cmpt.mdr_tapehead=0;
  }

  clean_screen();

  strcpy((char *)cmpt.mdr_current_mdr,(const char *)filename);

  free(filename);
  
  switch(retorno) {
  case 0: // all right
    break;
  case -1:
    printstring(videomem,(unsigned char *)"Error: Can't load that file",-1,232,26,16,ancho);
    printstring(videomem,(unsigned char *)"Press any key",-1,248,26,16,ancho);
    cmpt.mdr_current_mdr[0]=0;
    wait_key();
    break;
  }

  clean_screen();
}

void create_mdrfile() {

	unsigned char *videomem;
	int ancho,retorno,longitud,bucle;
	unsigned char nombre[35],nombre2[37];

	videomem=(unsigned char *)screen->pixels;
	ancho=screen->w;

	clean_screen();

	printstring(videomem,(unsigned char *)"Choose a name for the MDR file",-1,32,30,16,ancho);
	printstring(videomem,(unsigned char *)"(up to 30 characters)",-1,52,30,16,ancho);

	printstring(videomem,(unsigned char *)"MDR file will be saved in:",-1,132,28,16,ancho);
	printstring(videomem,(unsigned char *)path_mdrs,0,152,28,16,ancho);

	nombre[0]=127;
	nombre[1]=0;
	longitud=0;
	retorno=0;

	do {
		sprintf((char *)nombre2," %s ",(const char *)nombre);
		printstring(videomem,(unsigned char *)nombre2,-1,84,31,16,ancho);
		switch(wait_key()) {
		case SDLK_BACKSPACE:
			if(longitud>0) {
				nombre[longitud]=0;
				longitud--;
				nombre[longitud]=127;
			}
		break;
		case SDLK_ESCAPE:
			retorno=2;
		break;
		case SDLK_RETURN:
			retorno=1;
		break;
		case SDLK_a:
			if(longitud<30) {
				nombre[longitud++]='a';
				nombre[longitud]=127;
				nombre[longitud+1]=0;
			}
		break;
		case SDLK_b:
			if(longitud<30) {
				nombre[longitud++]='b';
				nombre[longitud]=127;
				nombre[longitud+1]=0;
			}
		break;
    case SDLK_c:
      if(longitud<30) {
	nombre[longitud++]='c';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
    case SDLK_d:
      if(longitud<30) {
	nombre[longitud++]='d';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
    case SDLK_e:
      if(longitud<30) {
	nombre[longitud++]='e';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
    case SDLK_f:
      if(longitud<30) {
	nombre[longitud++]='f';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
    case SDLK_g:
      if(longitud<30) {
	nombre[longitud++]='g';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
    case SDLK_h:
      if(longitud<30) {
	nombre[longitud++]='h';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
    case SDLK_i:
      if(longitud<30) {
	nombre[longitud++]='i';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
    case SDLK_j:
      if(longitud<30) {
	nombre[longitud++]='j';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
    case SDLK_k:
      if(longitud<30) {
	nombre[longitud++]='k';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
    case SDLK_l:
      if(longitud<30) {
	nombre[longitud++]='l';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
    case SDLK_m:
      if(longitud<30) {
	nombre[longitud++]='m';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
    case SDLK_n:
      if(longitud<30) {
	nombre[longitud++]='n';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
    case SDLK_o:
      if(longitud<30) {
	nombre[longitud++]='o';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
    case SDLK_p:
      if(longitud<30) {
	nombre[longitud++]='p';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
    case SDLK_q:
      if(longitud<30) {
	nombre[longitud++]='q';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
    case SDLK_r:
      if(longitud<30) {
	nombre[longitud++]='r';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
    case SDLK_s:
      if(longitud<30) {
	nombre[longitud++]='s';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
    case SDLK_t:
      if(longitud<30) {
	nombre[longitud++]='t';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
    case SDLK_u:
      if(longitud<30) {
	nombre[longitud++]='u';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
    case SDLK_v:
      if(longitud<30) {
	nombre[longitud++]='v';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
    case SDLK_w:
      if(longitud<30) {
	nombre[longitud++]='w';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
    case SDLK_x:
      if(longitud<30) {
	nombre[longitud++]='x';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
    case SDLK_y:
      if(longitud<30) {
	nombre[longitud++]='y';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
    case SDLK_z:
      if(longitud<30) {
	nombre[longitud++]='z';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
    case SDLK_0:
      if(longitud<30) {
	nombre[longitud++]='0';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
    case SDLK_1:
      if(longitud<30) {
	nombre[longitud++]='1';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
    case SDLK_2:
      if(longitud<30) {
	nombre[longitud++]='2';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
    case SDLK_3:
      if(longitud<30) {
	nombre[longitud++]='3';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
    case SDLK_4:
      if(longitud<30) {
	nombre[longitud++]='4';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
    case SDLK_5:
      if(longitud<30) {
	nombre[longitud++]='5';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
    case SDLK_6:
      if(longitud<30) {
	nombre[longitud++]='6';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
    case SDLK_7:
      if(longitud<30) {
	nombre[longitud++]='7';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
		case SDLK_8:
			if(longitud<30) {
				nombre[longitud++]='8';
				nombre[longitud]=127;
		  		nombre[longitud+1]=0;
			}
		break;
		case SDLK_9:
			if(longitud<30) {
				nombre[longitud++]='9';
				nombre[longitud]=127;
		  		nombre[longitud+1]=0;
			}
		break;
		case SDLK_MINUS:
			if(longitud<30) {
				nombre[longitud++]='-';
		  		nombre[longitud]=127;
		  		nombre[longitud+1]=0;
			}
		break;
		}
	} while(!retorno);

	clean_screen();

	nombre[longitud]=0; // erase cursor

	if(retorno==2) // abort
		return;

	longitud=strlen(path_mdrs);
	if((path_mdrs[longitud-1]!='/')&&(longitud>1))
		sprintf((char *)nombre2,"%s/%s.mdr",path_mdrs,nombre); // name
	else
		sprintf((char *)nombre2,"%s%s.mdr",path_mdrs,nombre);
		
	cmpt.mdr_file=fopen((char *)nombre2,"r"); // test if it exists
	if(cmpt.mdr_file==NULL)
		retorno=0;
	else
		retorno=-1;
	
	if(!retorno) {
		cmpt.mdr_file=fopen((char *)nombre2,"wb"); // create for write
		if(cmpt.mdr_file==NULL)
			retorno=-2;
		else {
			for(bucle=0;bucle<137921;bucle++)
				cmpt.mdr_cartridge[bucle]=0xFF; // erase cartridge
			cmpt.mdr_cartridge[137922]=0;
			fwrite(cmpt.mdr_cartridge,137923,1,cmpt.mdr_file); // save cartridge
			fclose(cmpt.mdr_file);
			cmpt.mdr_file=NULL;
			cmpt.mdr_modified=0;
			retorno=0;
		}
	}	
	strcpy((char *)cmpt.mdr_current_mdr,(const char *)nombre2);	
	switch(retorno) {
	case 0:
	break;
	case -1:
		printstring(videomem,(unsigned char *)"File already exists",-1,80,26,16,ancho);
		cmpt.mdr_current_mdr[0]=0;
		wait_key();
	break;
	case -2:
		printstring(videomem,(unsigned char *)"Can't create file",-1,80,26,16,ancho);
		cmpt.mdr_current_mdr[0]=0;
		wait_key();
	break;
	}
	clean_screen();
}


// shows a menu to allow user to save a snapshot file

void save_z80file() {

  unsigned char *videomem;
  int ancho,retorno,longitud;
  unsigned char nombre[35],nombre2[37];

  videomem=(unsigned char *)screen->pixels;
  ancho=screen->w;

  clean_screen();

  printstring(videomem,(unsigned char *)"Choose a name for the snapshot",-1,32,30,16,ancho);
  printstring(videomem,(unsigned char *)"(up to 30 characters)",-1,52,30,16,ancho);

  printstring(videomem,(unsigned char *)"Snapshot will be saved in:",-1,132,28,16,ancho);
  printstring(videomem,(unsigned char *)path_snaps,0,152,28,16,ancho);

  nombre[0]=127;
  nombre[1]=0;
  longitud=0;
  retorno=0;

  do {
    sprintf((char *)nombre2," %s ",nombre);
    printstring(videomem,(unsigned char *)nombre2,-1,84,31,16,ancho);
    switch(wait_key()) {
    case SDLK_BACKSPACE:
      if(longitud>0) {
	nombre[longitud]=0;
	longitud--;
	nombre[longitud]=127;
      }
      break;
    case SDLK_ESCAPE:
      retorno=2;
      break;
    case SDLK_RETURN:
      retorno=1;
      break;
    case SDLK_a:
      if(longitud<30) {
	nombre[longitud++]='a';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
    case SDLK_b:
      if(longitud<30) {
	nombre[longitud++]='b';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
    case SDLK_c:
      if(longitud<30) {
	nombre[longitud++]='c';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
    case SDLK_d:
      if(longitud<30) {
	nombre[longitud++]='d';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
    case SDLK_e:
      if(longitud<30) {
	nombre[longitud++]='e';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
    case SDLK_f:
      if(longitud<30) {
	nombre[longitud++]='f';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
    case SDLK_g:
      if(longitud<30) {
	nombre[longitud++]='g';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
    case SDLK_h:
      if(longitud<30) {
	nombre[longitud++]='h';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
    case SDLK_i:
      if(longitud<30) {
	nombre[longitud++]='i';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
    case SDLK_j:
      if(longitud<30) {
	nombre[longitud++]='j';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
    case SDLK_k:
      if(longitud<30) {
	nombre[longitud++]='k';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
    case SDLK_l:
      if(longitud<30) {
	nombre[longitud++]='l';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
    case SDLK_m:
      if(longitud<30) {
	nombre[longitud++]='m';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
    case SDLK_n:
      if(longitud<30) {
	nombre[longitud++]='n';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
    case SDLK_o:
      if(longitud<30) {
	nombre[longitud++]='o';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
    case SDLK_p:
      if(longitud<30) {
	nombre[longitud++]='p';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
    case SDLK_q:
      if(longitud<30) {
	nombre[longitud++]='q';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
    case SDLK_r:
      if(longitud<30) {
	nombre[longitud++]='r';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
    case SDLK_s:
      if(longitud<30) {
	nombre[longitud++]='s';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
    case SDLK_t:
      if(longitud<30) {
	nombre[longitud++]='t';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
    case SDLK_u:
      if(longitud<30) {
	nombre[longitud++]='u';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
    case SDLK_v:
      if(longitud<30) {
	nombre[longitud++]='v';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
    case SDLK_w:
      if(longitud<30) {
	nombre[longitud++]='w';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
    case SDLK_x:
      if(longitud<30) {
	nombre[longitud++]='x';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
    case SDLK_y:
      if(longitud<30) {
	nombre[longitud++]='y';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
    case SDLK_z:
      if(longitud<30) {
	nombre[longitud++]='z';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
    case SDLK_0:
      if(longitud<30) {
	nombre[longitud++]='0';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
    case SDLK_1:
      if(longitud<30) {
	nombre[longitud++]='1';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
    case SDLK_2:
      if(longitud<30) {
	nombre[longitud++]='2';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
    case SDLK_3:
      if(longitud<30) {
	nombre[longitud++]='3';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
    case SDLK_4:
      if(longitud<30) {
	nombre[longitud++]='4';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
    case SDLK_5:
      if(longitud<30) {
	nombre[longitud++]='5';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
    case SDLK_6:
      if(longitud<30) {
	nombre[longitud++]='6';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
    case SDLK_7:
      if(longitud<30) {
	nombre[longitud++]='7';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
    case SDLK_8:
      if(longitud<30) {
	nombre[longitud++]='8';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
    case SDLK_9:
      if(longitud<30) {
	nombre[longitud++]='9';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
    case SDLK_MINUS:
      if(longitud<30) {
	nombre[longitud++]='-';
	nombre[longitud]=127;
	nombre[longitud+1]=0;
      }
      break;
    }
  } while(!retorno);

  clean_screen();

  nombre[longitud]=0; // erase cursor

  if(retorno==2) // abort
    return;

  longitud=strlen(path_snaps);
  if((path_snaps[longitud-1]!='/')&&(longitud>1))
    sprintf((char *)nombre2,"%s/%s.z80",path_snaps,nombre); // name
  else
    sprintf((char *)nombre2,"%s%s.z80",path_snaps,nombre);
  retorno=save_z80((char *)nombre2);
  switch(retorno) {
  case 0:    
    break;
  case -1:
    printstring(videomem,(unsigned char *)"File already exists",-1,80,26,16,ancho);
    wait_key();
    break;
  case -2:
    printstring(videomem,(unsigned char *)"Can't create file",-1,80,26,16,ancho);
    wait_key();
    break;
  }
  clean_screen();
}

// shows a menu to allow user to load a snapshot file

void load_z80file() {


  unsigned char *videomem,*filename;
  int ancho,retorno;

  videomem=(unsigned char *)screen->pixels;
  ancho=screen->w;

  clean_screen();

  printstring(videomem,(unsigned char *)"Choose the snapshot file to load",-1,32,29,16,ancho);

  filename=(unsigned char *)select_file(path_snaps,0);

  if(filename==NULL) { // Aborted
    clean_screen();
    return;
  }

  retorno=load_z80((char *)filename);
  free(filename);
  clean_screen();

  switch(retorno) {
  case 0: // all right
    break;
  case -1:
    printstring(videomem,(unsigned char *)"Error: Can't load that file",-1,232,26,16,ancho);
    printstring(videomem,(unsigned char *)"Press any key",-1,248,26,16,ancho);
    wait_key();
    break;
  case -2:
  case -3:
    printstring(videomem,(unsigned char *)"Error: unsuported snap file",-1,232,26,16,ancho);
    printstring(videomem,(unsigned char *)"Press any key",-1,248,26,16,ancho);
    wait_key();
    break;
  }
  clean_screen();
}




/* fills a FICHERO chained list with all the files and directories contained in PATH.
   If KIND is 0, it returns only Snapshots, if is 1, it returns only TAPE files, and 
	if is 2, it returns only MDR files */

struct fichero *read_directory(char *cpath,char kind) {

	struct fichero *listhead,*listend;
	struct dirent *entry;
	DIR *directory;
	struct stat estado;
	unsigned char path[2049],fichero[2049],extension[5],found;
	int bucle,length;  

	if((kind!=0)&&(kind!=1)&&(kind!=2))
		printf("Error!!!!\n");
	
	strcpy((char *)path,(const char *)cpath);
	if('/'!=(char)path[strlen((char *)path)-1])
		strcat((char *)path,"/"); // add the final / to the path    

	listhead=(struct fichero *)malloc(sizeof(struct fichero));
	strcpy(listhead->nombre,"..");
	listhead->tipo=2;
	listhead->next=NULL;
	listend=listhead;

	directory=opendir((char *)path);
	if(directory==NULL)
		return(listhead); // can't access the directory
  
	do {
		entry=readdir(directory);
		if((NULL!=entry)&&(strcmp(entry->d_name,"."))&&(strcmp(entry->d_name,".."))) {
			strcpy((char *)fichero,(const char *)path);
			strcat((char *)fichero,entry->d_name);
			stat((char *)fichero,&estado);			
			found=0; // by default is not a valid file...
			length=strlen(entry->d_name);			
			if(length>3) {
				extension[4]=0;
				for(bucle=0;bucle<4;bucle++)
					extension[bucle]=entry->d_name[length-4+bucle]; // copy the 4 last chars of the file (the extension)
				switch(kind) {
				case 0:
					if(!strcasecmp((char *)extension,".z80"))
						found=1; // is a .z80 file
				break;
				case 1:
					if((!strcasecmp((char *)extension,".tap"))||(!strcasecmp((char *)extension,".tzx")))
						found=1; // is a .tap file
				break;
				case 2:
					if(!strcasecmp((char *)extension,".mdr"))
						found=1; // is a .mdr file
				break;
				default:
				break;
				}
			} else
				found=0;			
			if(((found)||(S_ISDIR(estado.st_mode)))&&('.'!=entry->d_name[0])) { // is a directory. We must add it				
				listend->next=(struct fichero *)malloc(sizeof(struct fichero));      
				listend=listend->next;
				listend->next=NULL;
				strcpy((char *)listend->nombrepath,(const char *)fichero);
				strcpy(listend->nombre,entry->d_name);
				if(S_ISDIR(estado.st_mode))
					listend->tipo=1; // a directory
				else
					listend->tipo=0; // a file
			}
		}
	} while(entry!=NULL);
	closedir(directory);
	return(listhead);
}

// deletes a filelist tree, freeing the memory used by it

void delete_filelist(struct fichero *filelist) {

  struct fichero *fl1,*fl2;

  fl1=fl2=filelist;

  while(fl1!=NULL) {
    fl2=fl1->next;
    free(fl1);
    fl1=fl2;
  }
}


/* allows user to choose a file from PATH. If KIND=0, only snapshots. If KIND=1, only
   TAPE files */

char *select_file(char *path,char kind) {

  struct fichero *filelist,*fl2;
  unsigned char *pantalla,*pantalla2,fin,read,*salida;
  int bucle,ancho,numitems,selected,from,longitud;

  salida=(unsigned char *)malloc(2049);
  salida[0]=0;

  ancho=screen->w;

  // paints the rectangle

  pantalla=(unsigned char *)(((unsigned)screen->pixels)+(ancho*70)+10);
  pantalla2=(unsigned char *)(((unsigned)screen->pixels)+(ancho*460)+10);
  for(bucle=10;bucle<630;bucle++) {
    *(pantalla++)=28;
    *(pantalla2++)=28;
  }
  pantalla=(unsigned char *)(((unsigned)screen->pixels)+(ancho*70)+10);
  pantalla2=(unsigned char *)(((unsigned)screen->pixels)+(ancho*70)+630);
  for(bucle=70;bucle<460;bucle++) {
    *pantalla=28;
    *pantalla2=28;
    pantalla+=ancho;
    pantalla2+=ancho;
  }

  fin=1;
  read=1;
  selected=0;
  from=0;
  numitems=0;

  filelist=NULL;

  do {

    if(read) {
      filelist=read_directory(path,kind);
      read=0;

      fl2=filelist;
      numitems=0;
      while(fl2!=NULL) { // counts the number of items
	fl2=fl2->next;
	numitems++;
      }
      selected=0;
      from=0;
    }

    print_files(filelist,from,selected);

    switch(wait_key()) {
    case SDLK_ESCAPE: // to exit the help
      fin=0;
      break;

    case SDLK_UP:
      if(selected>0) {
	selected--;
	if(selected<from)
	  from--;
      }
      break;
    case SDLK_DOWN:
      if(selected<(numitems-1)) {
	selected++;
	if(selected>(from+23)) // 23 is the total of items that can be displayed
	  from++;
      }
      break;

    case SDLK_PAGEUP:
      for(bucle=0;bucle<15;bucle++)
	if(selected>0) {
	  selected--;
	  if(selected<from)
	    from--;
	}
      break;

    case SDLK_PAGEDOWN:
      for(bucle=0;bucle<15;bucle++)
	if(selected<(numitems-1)) {
	  selected++;
	  if(selected>(from+23)) // 23 is the total of items that can be displayed
	    from++;
	}
      break;

    case SDLK_RETURN:
      fl2=filelist;
      if(selected!=0)
	for(bucle=0;bucle<selected;bucle++)
	  fl2=fl2->next;
      switch(fl2->tipo) {
      case 0: // select file
	strcpy((char *)salida,(const char *)fl2->nombrepath);
	delete_filelist(filelist);
	return((char *)salida); // ends returning the filename
      case 1: // change directory
	strcpy((char *)path,(const char *)fl2->nombrepath); // new path_taps is namepath
	delete_filelist(filelist); // frees the memory
	read=1; // and redisplay all the files
	break;
      case 2: // upper directory
	longitud=strlen((char *)path);
	if(longitud<2) // there's no upper directory
	  break;
	if('/'==path[longitud-1]) { // is the char ended in '/' ?
	  path[longitud-1]=0; // eliminated
	  longitud--;
	}
	while('/'!=path[longitud-1]) {
	  longitud--;
	  path[longitud]=0;
	}
	if(longitud>2) { // it's not the upper directory
	  longitud--;
	  path[longitud]=0; // delete the final '/'
	}
	read=1;
	break;
      default:
	break;
      }

    default:
      break;
    }
  } while(fin);

  delete_filelist(filelist);
  return(NULL);

}

void clean_screen() {

  int bucle;
  unsigned buffer;

  buffer=(unsigned)screen->pixels;

  for(bucle=0;bucle<screen->h;bucle++,buffer+=screen->pitch)
	memset((void *)buffer,16,screen->w);

}

// waits for a keystroke and returns its value

unsigned int wait_key() {

  char fin;
  unsigned int temporal_io=0;
  SDL_Event evento;

  fin=1;

  do {
    SDL_Flip(cmpt.screen);
    if(!SDL_WaitEvent(&evento))
      continue;
    
    if(evento.type!=SDL_KEYUP)
      continue;

    fin=0;
    
    temporal_io=(unsigned int)evento.key.keysym.sym;
  } while(fin);

  return (temporal_io);
}

// shows the files from the number FROM, and marks the file number MARK

void print_files(struct fichero *filelist,int from,int mark) {

  struct fichero *fl2;
  int bucle,numitems,ancho,pos;
  char ink1,ink2;
  unsigned char spaces[39]="                                      ";
  unsigned char namefile[2089];
  unsigned char *videomem;

  videomem=(unsigned char *)screen->pixels;
  ancho=screen->w;

  fl2=filelist;
  numitems=0;

  while(fl2!=NULL) { // counts the number of items
    fl2=fl2->next;
    numitems++;
  }

  ink1=ink2=0;

  fl2=filelist;
  pos=72;
  for(bucle=0;bucle<numitems;bucle++) {
    if(bucle>=from) {
      strcpy((char *)namefile,(const char *)fl2->nombre);
      strcat((char *)namefile,(const char *)spaces);
      namefile[36]=0; // we print up to 36 chars
      switch(fl2->tipo) {
      case 0: // file
	ink1=31;
	ink2=16;
	break;
      case 1: // directory
	ink1=28;
	ink2=20;
	break;
      case 2: // parent directory
	ink1=26;
	ink2=18;
	break;
      }
      if(bucle==mark)
	printstring(videomem,(unsigned char *)namefile,-1,pos,ink2,31,ancho);
      else
	printstring(videomem,(unsigned char *)namefile,-1,pos,ink1,16,ancho);
      pos+=16;
    }
    if((pos+16)>460)
      break; // reached bottom part of the rectangle
    fl2=fl2->next;
  }
  while((pos+16<460)) {
    printstring(videomem,(unsigned char *)spaces,-1,pos,16,16,ancho);
    pos+=16;
  }
}
#endif
