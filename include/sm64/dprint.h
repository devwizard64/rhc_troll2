#ifndef __SM64_DPRINT_H__
#define __SM64_DPRINT_H__

typedef struct dprint
{
	s32 x;
	s32 y;
	s16 len;
	char str[50];
}
DPRINT;

extern DPRINT *dprint_table[50];
extern s16 dprint_index;

extern void dprintf(int x, int y, const char *fmt, int value);
extern void dprint(int x, int y, const char *str);
extern void dprintc(int x, int y, const char *str);
extern void dprint_draw(void);

#endif /* __SM64_DPRINT_H__ */
