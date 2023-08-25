#include <sm64.h>

const double background_80338140 = 115200;
const double background_80338148 = 360;
const double background_80338150 = 65535;
const double background_80338158 = 90;

struct struct_803612C0 background_803612C0[2];

extern u16 *bg_c[];
extern u16 *bg_h[];
extern u16 *bg_d[];
extern u16 *bg_a[];
extern u16 *bg_b[];
extern u16 *bg_e[];
extern u16 *bg_f[];
extern u16 *bg_g[];
extern u16 *bg_i[];
extern u16 *bg_j[];

u16 **background_data[] =
{
	bg_a,
	bg_d,
	bg_e,
	bg_f,
	bg_b,
	bg_g,
	bg_h,
	bg_i,
	bg_c,
	bg_j,
};

u8 background_shade[][3] =
{
	{0x50, 0x64, 0x5A},
	{0xFF, 0xFF, 0xFF},
};
