#include <sm64.h>

const double shadow_80338060 = 65535;
const double shadow_80338068 = 360;
const double shadow_80338070 = 600;
const double shadow_80338078 = 600;
const double shadow_80338080 = 600;
const double shadow_80338088 = 600;
const double shadow_80338090 = 600;
const double shadow_80338098 = -10000;
const double shadow_803380A0 = -10000;
const double shadow_803380A8 = 90;
const double shadow_803380B0 = 3.141592653589793;
const double shadow_803380B8 = 180;
const double shadow_803380C0 = 3.141592653589793;
const double shadow_803380C8 = 180;
const double shadow_803380D0 = -3000;
const float shadow_803380D8 = -3062;
const double shadow_803380E0 = 3400;
const float shadow_803380E8 = 3492;
const double shadow_803380F0 = -10000;
const double shadow_803380F8 = -10000;
const double shadow_80338100 = -10000;

extern void L802CF41C(void);
extern void L802CF444(void);
extern void L802CF46C(void);
extern void L802CF494(void);
extern void L802CF4C4(void);
extern void L802CF4F4(void);
extern void L802CF550(void);

void (*const shadow_80338108[])(void) =
{
	L802CF41C,
	L802CF444,
	L802CF46C,
	L802CF550,
	L802CF550,
	L802CF550,
	L802CF550,
	L802CF550,
	L802CF550,
	L802CF550,
	L802CF494,
	L802CF4C4,
	L802CF4F4,
};

s8 shadow_803612B0;
s16 shadow_803612B2;
s8 shadow_803612B4;
s8 shadow_803612B5;

SHADOW_RECT shadow_rect_data[] =
{
	{360, 230, TRUE},
	{200, 180, TRUE},
};
