#include <sm64.h>

extern void L802768A8(void);
extern void L802768B8(void);
extern void L802768C8(void);
extern void L802768D8(void);
extern void L802768E8(void);

void (*const pl_callback_80336F40[])(void) =
{
	L802768A8,
	L802768B8,
	L802768C8,
	L802768D8,
	L802768E8,
};

const float pl_callback_80336F54 = 3.4F;
const float pl_callback_80336F58 = 1700;
const double pl_callback_80336F60 = 4331.53;
const double pl_callback_80336F68 = 4331.53;

BALIGN SHAPE_OBJECT shape_object_mirror;
BALIGN PL_SHAPE pl_shape_data[2];

s8 pl_callback_8032DD50[] = {1, 2, 1, 0, 1, 2, 1, 0};

s8 pl_callback_8032DD58[] =
{
	10, 12, 16, 24, 10, 10,
	10, 14, 20, 30, 10, 10,
	10, 16, 20, 26, 26, 20,
};

DALIGN s16 pl_callback_8032DD6C = 0;
