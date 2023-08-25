#ifndef __SM64_SHADOW_H__
#define __SM64_SHADOW_H__

typedef struct shadow_rect
{
	float sx;
	float sz;
	s8 y_scale;
}
SHADOW_RECT;

extern s8 shadow_803612B0;
extern s16 shadow_803612B2;
extern s8 shadow_803612B4;
extern s8 shadow_803612B5;
extern SHADOW_RECT shadow_rect_data[];

extern Gfx *shadow_802CF34C(
	float x,
	float y,
	float z,
	int size,
	int alpha,
	int type
);

#endif /* __SM64_SHADOW_H__ */
