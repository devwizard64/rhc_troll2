#include <sm64.h>

const double math_8038BA90 = 3.141592653589793;

extern void L8037AC74(void);
extern void L8037AD04(void);
extern void L8037ADC0(void);
extern void L8037AE5C(void);
extern void L8037AF18(void);

void (*const math_8038BA98[])(void) =
{
	L8037AC74,
	L8037AD04,
	L8037ADC0,
	L8037AE5C,
	L8037AF18,
};

const float math_8038BAAC = 0.9166667F;
const float math_8038BAB0 = 0.16666667F;
const float math_8038BAB4 = 0.5833333F;
const float math_8038BAB8 = 0.5833333F;
const float math_8038BABC = 0.16666667F;
const float math_8038BAC0 = 0.16666667F;
const float math_8038BAC4 = 0.16666667F;
const float math_8038BAC8 = 0.6666667F;
const float math_8038BACC = 0.16666667F;
const float math_8038BAD0 = 0.16666667F;
const float math_8038BAD4 = 0.16666667F;
const float math_8038BAD8 = 0.16666667F;
const float math_8038BADC = 0.5833333F;
const float math_8038BAE0 = 0.5833333F;
const float math_8038BAE4 = 0.16666667F;
const float math_8038BAE8 = 0.9166667F;

BSPLINE *bspline;
float bspline_phase;
int bspline_mode;

Mtx mtx_1 = gdSPDefMatrix(
		1, 0, 0, 0,
		0, 1, 0, 0,
		0, 0, 1, 0,
		0, 0, 0, 1
	);

VECF vecf_0 = {0, 0, 0};
VECS vecs_0 = {0, 0, 0};
VECF vecf_1 = {1, 1, 1};
VECS vecs_1 = {1, 1, 1};
