#ifndef __SM64_BACKGROUND_H__
#define __SM64_BACKGROUND_H__

typedef struct struct_803612C0
{
	u16 _00;
	s16 _02;
	s32 _04;
	s32 _08;
	s32 _0C;
}
STRUCT_803612C0;

extern struct struct_803612C0 background_803612C0[2];
extern u16 **background_data[];
extern u8 background_shade[][3];

#endif /* __SM64_BACKGROUND_H__ */
