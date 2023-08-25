#include <sm64.h>

const double wipe_80338000 = 255;
const double wipe_80338008 = 255;

extern void L802CCC28(void);
extern void L802CCC48(void);
extern void L802CCC68(void);
extern void L802CCC90(void);
extern void L802CCCB8(void);
extern void L802CCCE0(void);
extern void L802CCD08(void);
extern void L802CCD34(void);
extern void L802CCD60(void);
extern void L802CCD88(void);
extern void L802CCDB0(void);

void (*const wipe_80338010[])(void) =
{
	L802CCC28,
	L802CCC48,
	L802CCDB0,
	L802CCDB0,
	L802CCDB0,
	L802CCDB0,
	L802CCDB0,
	L802CCDB0,
	L802CCC68,
	L802CCC90,
	L802CCCB8,
	L802CCCE0,
	L802CCDB0,
	L802CCDB0,
	L802CCDB0,
	L802CCDB0,
	L802CCD08,
	L802CCD34,
	L802CCD60,
	L802CCD88,
};

u8 wipe_80330EC0[2] = {0};
u16 wipe_80330EC4[2] = {0};

extern u8 txt_wipe_star[];
extern u8 txt_wipe_circle[];
extern u8 txt_wipe_mario[];
extern u8 txt_wipe_bowser[];

u8 *txt_wipe[] =
{
	txt_wipe_star,
	txt_wipe_circle,
	txt_wipe_mario,
	txt_wipe_bowser,
};
