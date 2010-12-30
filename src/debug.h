#include <SDL.h>

#ifndef DEBUG_ZX4ALL_H
#define DEBUG_ZX4ALL_H

#ifdef DEBUG_ZX4ALL

#ifdef USE_MASCARA_AF
#ifndef MASCARA_AF
#define MASCARA_AF 0xFFD7
#endif
extern int pushaf_found;
#else
#ifndef MASCARA_AF
#define MASCARA_AF 0xFFFF
#endif
#endif

unsigned char debugZ80(int interactive);
#ifdef DEBUG_Z80_STATS
void debugZ80_GetStatitics(void);
void debugZ80_PrintStatitics(void);
#else
#define debugZ80_GetStatitics()
#define debugZ80_PrintStatitics()
#endif

#ifdef DEBUG_ZX4ALL_FFLUSH
#define ZX4ALL_FFLUSH fflush(stdout);
#else
#define ZX4ALL_FFLUSH
#endif

extern int DEBUG_AHORA;

#define dbg(TEXTO) \
	if (DEBUG_AHORA) \
	{ \
		puts(TEXTO); \
		ZX4ALL_FFLUSH \
	}


#define dbgf(FORMATO, RESTO...) \
	if (DEBUG_AHORA) \
	{ \
		printf (FORMATO , ## RESTO); \
		ZX4ALL_FFLUSH \
	}


static __inline__ void dbgsum(char *str, void *buff, unsigned len)
{
	if (DEBUG_AHORA)
	{
		unsigned char *p=(unsigned char *)buff;
		unsigned i,ret=0;
		for(i=0;i<len;i++,p++)
			ret+=(*p)*i;
		printf("%s : 0x%X\n",str,ret);
#ifdef DEBUG_ZX4ALL_FFLUSH
		fflush(stdout);
#endif
	}
}


#else

#define dbg(TEXTO)
#define dbgf(FORMATO, RESTO...)
#define debsum(STR)
#define debugZ80(A)

#endif



#ifndef PROFILER_ZX4ALL

#define zx4all_prof_start(A)
#define zx4all_prof_end(A)

#else

#define ZX4ALL_PROFILER_MAX 256

extern unsigned long long zx4all_prof_initial[ZX4ALL_PROFILER_MAX];
extern unsigned long long zx4all_prof_sum[ZX4ALL_PROFILER_MAX];
extern unsigned long long zx4all_prof_executed[ZX4ALL_PROFILER_MAX];

static __inline__ void zx4all_prof_start(unsigned a)
{
	zx4all_prof_executed[a]++;
#ifndef DREAMCAST
	zx4all_prof_initial[a]=SDL_GetTicks();
#else
	zx4all_prof_initial[a]=timer_us_gettime64();
#endif
}


static __inline__ void zx4all_prof_end(unsigned a)
{
#ifndef DREAMCAST
	zx4all_prof_sum[a]+=SDL_GetTicks()-zx4all_prof_initial[a];
#else
	extern unsigned zx4all_prof_total;
	int i;
	for(i=0;i<zx4all_prof_total;i++)
		zx4all_prof_initial[i]+=6;
	zx4all_prof_sum[a]+=timer_us_gettime64()-zx4all_prof_initial[a]+2;
#endif
}

void zx4all_prof_init(void);
void zx4all_prof_add(char *msg);
void zx4all_prof_show(void);

#endif


#endif


