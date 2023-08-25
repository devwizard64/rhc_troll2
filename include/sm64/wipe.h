#ifndef __SM64_WIPE_H__
#define __SM64_WIPE_H__

typedef struct wipe_arg_fade
{
	u8 r;
	u8 g;
	u8 b;
}
WIPE_ARG_FADE;

typedef struct wipe_arg_window
{
	u8 r;
	u8 g;
	u8 b;
	s16 s_size;
	s16 e_size;
	s16 s_x;
	s16 s_y;
	s16 e_x;
	s16 e_y;
	short ang_vel;
}
WIPE_ARG_WINDOW;

typedef union wipe_arg
{
	WIPE_ARG_FADE fade;
	WIPE_ARG_WINDOW window;
}
WIPE_ARG;

typedef struct wipe
{
	u8 active;
	u8 type;
	u8 frame;
	u8 blank;
	WIPE_ARG arg;
}
WIPE;

extern u8 wipe_80330EC0[2];
extern u16 wipe_80330EC4[2];
extern u8 *txt_wipe[];

extern int wipe_802CCBE8(CHAR index, CHAR type, UCHAR frame, WIPE_ARG *arg);

#endif /* __SM64_WIPE_H__ */
