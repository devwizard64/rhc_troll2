#ifndef __SM64_WAVE_H__
#define __SM64_WAVE_H__

typedef struct wave
{
	s16 _00;
	s8 _02;
	s8 _03;
	s8 _04;
	s8 _05;
	s8 _06;
	s8 _07;
}
WAVE;

extern s16 wave_80361300;
extern f32 wave_80361304;
extern f32 wave_80361308;
extern f32 wave_8036130C;
extern s16 *wave_80361310;
extern f32 *wave_80361314;
extern WAVE *wave_80361318;
extern s8 wave_8036131C;
extern void *wave_80331300[];
extern void *wave_80331308[];
extern void *wave_80331344[];
extern void **wave_8033134C[];
extern s16 wave_80331358;
extern s16 wave_8033135C;

#endif /* __SM64_WAVE_H__ */
