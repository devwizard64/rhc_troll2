#ifndef __SM64_SCROLL_H__
#define __SM64_SCROLL_H__

typedef struct scroll
{
	int index;
	int texture;
	int len;
	s16 *data;
	Gfx *start;
	Gfx *end;
	Gfx *draw;
	u8 r;
	u8 g;
	u8 b;
	u8 a;
	int layer;
}
SCROLL;

extern s16 scroll_803612E0;
extern s16 scroll_80330F30;
extern s16 scroll_80330F34;
extern s8 scroll_80330F38;
extern f32 scroll_80330F3C;
extern s32 scroll_80330F40;
extern u16 *txt_scroll[];
extern SCROLL scroll_data_a[];
extern SCROLL scroll_data_b[];
extern SCROLL scroll_data_c[];
extern s8 scroll_803312E8[];

#endif /* __SM64_SCROLL_H__ */
