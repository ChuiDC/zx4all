#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "zx4all.h"
#include "sound.h"

/* emulates the AY-3-8912 during TSTADOS tstates */

void play_ay (unsigned int tstados)
{
	if (!cmpt.ay_emul)
		return;
#if defined(USE_LIBAYEMU) && !defined(NOSOUND)
	ayemu_set_regs(&ayemu_ay,cmpt.ay_registers);
#else
	cmpt.tst_ay += tstados;
	cmpt.tst_ay2 += tstados;

	if (cmpt.tst_ay2 > 255) {
		cmpt.tst_ay2 -= 256;
		if ((cmpt.ay_registers[11])
		    || (cmpt.ay_registers[12])) {
			if (cmpt.aych_envel)
				cmpt.aych_envel--;
			else {
				cmpt.aych_envel = (((unsigned int) cmpt.ay_registers[11]) + 256 * ((unsigned int) (cmpt.ay_registers[12])));
				if (cmpt.ay_envel_way & 0x02)	// start cycle?
					switch ((cmpt.
						 ay_registers[13]) & 0x0F)
					{
					case 0:
					case 1:
					case 2:
					case 3:
					case 8:
					case 9:
					case 10:
					case 11:
						cmpt.ay_envel_way = 4;	// cycle started and decrementing
						cmpt.ay_envel_value = 16;
						break;
					default:
						cmpt.ay_envel_way = 5;	// cycle started and incrementing
						cmpt.ay_envel_value = -1;
					}
				if (cmpt.ay_envel_way & 0x04)
				{	// cycle started?
					switch ((cmpt.
						 ay_registers[13]) & 0x0F)
					{
					case 0:
					case 1:
					case 2:
					case 3:
					case 9:
						cmpt.ay_envel_value--;
						if (cmpt.
						    ay_envel_value == 0)
							cmpt.ay_envel_way = 0;	// end
						break;

					case 4:
					case 5:
					case 6:
					case 7:
					case 15:
						cmpt.ay_envel_value++;
						if (cmpt.
						    ay_envel_value == 16)
						{
							cmpt.
								ay_envel_value
								= 0;
							cmpt.ay_envel_way = 0;	// end
						}
						break;

					case 8:
						cmpt.ay_envel_value--;
						if (cmpt.
						    ay_envel_value == -1)
							cmpt.ay_envel_value = 15;	// repeat
						break;

					case 10:
					case 14:
						if (cmpt.
						    ay_envel_way & 0x01)
							cmpt.
								ay_envel_value++;
						else
							cmpt.
								ay_envel_value--;
						if (cmpt.
						    ay_envel_value == 16)
						{
							cmpt.
								ay_envel_value
								= 14;
							cmpt.
								ay_envel_way =
								4;
						}
						if (cmpt.
						    ay_envel_value == -1)
						{
							cmpt.
								ay_envel_value
								= 1;
							cmpt.
								ay_envel_way =
								5;
						}
						break;

					case 11:
						cmpt.ay_envel_value--;
						if (cmpt.
						    ay_envel_value == -1)
						{
							cmpt.
								ay_envel_value
								= 15;
							cmpt.ay_envel_way = 0;	// end
						}
						break;

					case 12:
						cmpt.ay_envel_value++;
						if (cmpt.
						    ay_envel_value == 16)
							cmpt.
								ay_envel_value
								= 0;
						break;

					case 13:
						cmpt.ay_envel_value++;
						if (cmpt.
						    ay_envel_value == 15)
							cmpt.ay_envel_way = 0;	// end
						break;
					}
				}
			}
		}
		else
			cmpt.ay_envel_value = 15;
	}

	while (cmpt.tst_ay >= 16)
	{
		cmpt.tst_ay -= 16;

		if ((cmpt.ay_registers[0])
		    || (cmpt.ay_registers[1]))
		{
			if (cmpt.aych_a)
				cmpt.aych_a--;
			else
			{
				cmpt.ayval_a = 1 - cmpt.ayval_a;
				cmpt.aych_a =
					(((unsigned int) cmpt.
					  ay_registers[0]) +
					 256 *
					 ((unsigned
					   int) ((cmpt.
						  ay_registers[1]) & 0x0F))) /
					2;
			}
		}
		else
			cmpt.ayval_a = 0;

		if ((cmpt.ay_registers[2])
		    || (cmpt.ay_registers[3]))
		{
			if (cmpt.aych_b)
				cmpt.aych_b--;
			else
			{
				cmpt.ayval_b = 1 - cmpt.ayval_b;
				cmpt.aych_b =
					(((unsigned int) cmpt.
					  ay_registers[2]) +
					 256 *
					 ((unsigned
					   int) ((cmpt.
						  ay_registers[3]) & 0x0F))) /
					2;
			}
		}
		else
			cmpt.ayval_b = 0;

		if ((cmpt.ay_registers[4])
		    || (cmpt.ay_registers[5]))
		{
			if (cmpt.aych_c)
				cmpt.aych_c--;
			else
			{
				cmpt.ayval_c = 1 - cmpt.ayval_c;
				cmpt.aych_c =
					(((unsigned int) cmpt.
					  ay_registers[4]) +
					 256 *
					 ((unsigned
					   int) ((cmpt.
						  ay_registers[5]) & 0x0F))) /
					2;
			}
		}
		else
			cmpt.ayval_c = 0;

		if (cmpt.ay_registers[6])
		{
			if (cmpt.aych_n)
				cmpt.aych_n--;
			else
			{
				cmpt.ayval_n = 1 - cmpt.ayval_n;
				cmpt.aych_n =
					((((unsigned int) cmpt.
					   ay_registers[6]) & 0x1F) +
					 (rand () % 3)) / 2;
				if (cmpt.aych_n > 16)
					cmpt.aych_n = 16;
			}
		}
		else
			cmpt.ayval_n = 0;

		if (cmpt.ay_registers[8] & 0x10)
			cmpt.vol_a =
				(unsigned
				 char) ((((unsigned int) cmpt.
					  ay_envel_value)) *
					(unsigned int) cmpt.volume) / 15;
		else
			cmpt.vol_a =
				(unsigned
				 char) ((((unsigned int) (cmpt.
							  ay_registers[8] &
							  0x0F)) *
					 (unsigned int) cmpt.volume) /
					15);

		if (cmpt.ay_registers[10] & 0x10)
			cmpt.vol_c =
				(unsigned
				 char) ((((unsigned int) cmpt.
					  ay_envel_value)) *
					(unsigned int) cmpt.volume) / 15;
		else
			cmpt.vol_c =
				(unsigned
				 char) ((((unsigned int) (cmpt.
							  ay_registers[10] &
							  0x0F)) *
					 (unsigned int) cmpt.volume) /
					15);

		if (cmpt.ay_registers[9] & 0x10)
			cmpt.vol_b =
				(unsigned
				 char) ((((unsigned int) cmpt.
					  ay_envel_value)) *
					(unsigned int) cmpt.volume) / 15;
		else
			cmpt.vol_b =
				(unsigned
				 char) ((((unsigned int) (cmpt.
							  ay_registers[9] &
							  0x0F)) *
					 (unsigned int) cmpt.volume) /
					15);

	}
#endif
}


/* Creates the sound buffer during the TSTADOS tstate that the Z80 used to
   execute last instruction */

void play_sound (unsigned int tstados) {

	int bucle;
	int value;
#ifdef SOUND_IOCTL
	unsigned char sample_v;
#endif

	cmpt.tstados_counter_sound += tstados;
#if defined(USE_LIBAYEMU) && !defined(NOSOUND)
	{
		unsigned sz=(cmpt.tstados_counter_sound/cmpt.tst_sample)+1;
		if ((sz+cmpt.sound_cuantity) > cmpt.buffer_len)
			sz=(sz+cmpt.sound_cuantity)-cmpt.buffer_len;
		if (cmpt.ay_emul)
			ayemu_gen_sound(&ayemu_ay,cmpt.current_buffer,4+(cmpt.format?sz<<1:sz));
		else
			memset(cmpt.current_buffer,cmpt.sign,cmpt.format?sz<<1:sz);
	}
#endif
	while (cmpt.tstados_counter_sound >= cmpt.tst_sample)	{

		cmpt.tstados_counter_sound -= cmpt.tst_sample;

#ifdef SOUND_IOCTL
		for (bucle = 0; bucle < cmpt.increment; bucle++) {
			sample_v = cmpt.sample1b[bucle];
#endif
			if ((cmpt.sound_bit)
#ifdef SOUND_IOCTL
				       	&& (sample_v)

#endif
			){
				cmpt.sound_current_value+=(cmpt.tst_sample/8);
				if(cmpt.sound_current_value>cmpt.volume)
					cmpt.sound_current_value = cmpt.volume;
			} else {
				if(cmpt.sound_current_value>=(cmpt.tst_sample/8))
					cmpt.sound_current_value-=((cmpt.tst_sample)/8);
				else
					cmpt.sound_current_value = 0;
			}
			value = cmpt.sound_current_value;
#if !defined(USE_LIBAYEMU) || defined(NOSOUND)
			if (cmpt.ay_emul) {	// if emulation is ON, emulate it
				if ((cmpt.ayval_a)
#ifdef SOUND_IOCTL
				    && (sample_v)
#endif
				    && (!(cmpt.ay_registers[7] & 0x01)))
					value += (int) cmpt.vol_a;
				if ((cmpt.ayval_b)
#ifdef SOUND_IOCTL
				    && (sample_v)
#endif
				    && (!(cmpt.ay_registers[7] & 0x02)))
					value += (int) cmpt.vol_b;
				if ((cmpt.ayval_c)
#ifdef SOUND_IOCTL
				    && (sample_v)
#endif
				    && (!(cmpt.ay_registers[7] & 0x04)))
					value += (int) cmpt.vol_c;
				if ((cmpt.ayval_n)
#ifdef SOUND_IOCTL
				    && (sample_v)
#endif
				    && (!(cmpt.ay_registers[7] & 0x08)))
					value += (int) cmpt.vol_a;
				if ((cmpt.ayval_n)
#ifdef SOUND_IOCTL
				    && (sample_v)
#endif
				    && (!(cmpt.ay_registers[7] & 0x10)))
					value += (int) cmpt.vol_b;
				if ((cmpt.ayval_n)
#ifdef SOUND_IOCTL
				    && (sample_v)
#endif
				    && (!(cmpt.ay_registers[7] & 0x20)))
					value += (int) cmpt.vol_c;
			}
#endif
			if (value > 255)
				value = 255;
			if (!cmpt.format)
#if defined(USE_LIBAYEMU) && !defined(NOSOUND)
				*cmpt.current_buffer++ =(char)((char)(value+(*cmpt.current_buffer))- (unsigned int)cmpt.sign);
#else
				*cmpt.current_buffer++ = (char)(value - (unsigned int)cmpt.sign);
#endif
			else
			{
				register unsigned short *bb=(unsigned short *)cmpt.current_buffer;
#if defined(USE_LIBAYEMU) && !defined(NOSOUND)
				*bb++=*bb+(((unsigned short)((char)value-(unsigned int)cmpt.sign))<<8);
#else
				*bb++=((unsigned short)((char)value-(unsigned int)cmpt.sign))<<8;
#endif
				cmpt.current_buffer=(unsigned char *)bb;
			}
#ifdef SOUND_IOCTL
		}
#endif
		cmpt.sound_cuantity++;

		if (cmpt.sound_cuantity == cmpt.buffer_len) {		// buffer filled
			sound_play();
			cmpt.sound_cuantity = 0;
#if defined(USE_LIBAYEMU) && !defined(NOSOUND)
			{
				unsigned sz=(cmpt.tstados_counter_sound/cmpt.tst_sample)+1;
				if ((sz+cmpt.sound_cuantity) > cmpt.buffer_len)
				sz=(sz+cmpt.sound_cuantity)-cmpt.buffer_len;
				if (cmpt.ay_emul)
					ayemu_gen_sound(&ayemu_ay,cmpt.current_buffer,4+(cmpt.format?sz<<1:sz));
				else
					memset(cmpt.current_buffer,cmpt.sign,cmpt.format?sz<<1:sz);
			}
#endif
		}
	}
}
