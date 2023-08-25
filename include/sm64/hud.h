#ifndef __SM64_HUD_H__
#define __SM64_HUD_H__

typedef struct hud
{
	s16 life;
	s16 coin;
	s16 star;
	s16 power;
	s16 key;
	s16 flag;
	u16 timer;
}
HUD;

typedef struct meter
{
	s8 mode;
	s16 x;
	s16 y;
	f32 scale;
}
METER;

extern s16 hud_80361440;
extern METER meter;
extern s32 hud_803325FC;
extern s16 hud_80332600;
extern s16 hud_80332604;
extern s16 hud_80332608;

extern void hud_draw(void);

#endif /* __SM64_HUD_H__ */
