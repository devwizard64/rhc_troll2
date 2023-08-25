#include <sm64.h>

const double scroll_80338160 = 1382.4;

s16 scroll_803612E0;

DALIGN s16 scroll_80330F30 = 1;
DALIGN s16 scroll_80330F34 = 0;
DALIGN s8 scroll_80330F38 = 0;
DALIGN f32 scroll_80330F3C = 0;
DALIGN s32 scroll_80330F40 = 0;

extern u16 txt_scroll_water_0[];
extern u16 txt_scroll_water_1[];
extern u16 txt_scroll_water_2[];
extern u16 txt_scroll_mist[];
extern u16 txt_scroll_lava[];

u16 *txt_scroll[] =
{
	txt_scroll_water_0,
	txt_scroll_mist,
	txt_scroll_water_1,
	txt_scroll_water_2,
	txt_scroll_lava,
	(void *)0x07004018,
	(void *)0x07001000,
	(void *)0x07015F90,
};

extern Gfx gfx_scroll_rgba[];
extern Gfx gfx_scroll_end[];

SCROLL scroll_data_a[] =
{
	{
		0x0801, 6,  8, (void *)0x07028760,
		(void *)0x070286A0, (void *)0x07028718, (void *)0x070287B8,
		0xFF, 0xFF, 0xFF, 0xFF, S_LAYER_XLU_INTER,
	},
	{
		0x0802, 6,  8, (void *)0x070287F0,
		(void *)0x070285F0, (void *)0x07028660, (void *)0x070287B8,
		0xFF, 0xFF, 0xFF, 0xFF, S_LAYER_OPA_INTER,
	},
	{
		0x0803, 6,  6, (void *)0x07028844,
		(void *)0x070286A0, (void *)0x07028718, (void *)0x07028888,
		0xFF, 0xFF, 0xFF, 0xFF, S_LAYER_XLU_INTER,
	},
	{
		0x1601, 0, 15, (void *)0x07011750,
		gfx_scroll_rgba, gfx_scroll_end, (void *)0x070117E8,
		0xFF, 0xFF, 0xFF, 0xB4, S_LAYER_XLU_INTER,
	},
	{
		0x1901, 4,  4, (void *)0x07015AF0,
		gfx_scroll_rgba, gfx_scroll_end, (void *)0x07015BA8,
		0xFF, 0xFF, 0xFF, 0xFF, S_LAYER_OPA_SURF,
	},
	{
		0x1902, 4,  4, (void *)0x07015B1C,
		gfx_scroll_rgba, gfx_scroll_end, (void *)0x07015BA8,
		0xFF, 0xFF, 0xFF, 0xB4, S_LAYER_XLU_SURF,
	},
	{
		0x1903, 4,  9, (void *)0x07015B48,
		gfx_scroll_rgba, gfx_scroll_end, (void *)0x07015BC0,
		0xFF, 0xFF, 0xFF, 0xB4, S_LAYER_XLU_SURF,
	},
	{
		0x2201, 4,  9, (void *)0x070286BC,
		gfx_scroll_rgba, gfx_scroll_end, (void *)0x07028718,
		0xFF, 0xFF, 0xFF, 0xC8, S_LAYER_XLU_SURF,
	},
	{
		0x2202, 4, 16, (void *)0x07028790,
		gfx_scroll_rgba, gfx_scroll_end, (void *)0x07028838,
		0xFF, 0xFF, 0xFF, 0xB4, S_LAYER_XLU_INTER,
	},
	{
		0x2801, 0, 14, (void *)0x0700BED0,
		(void *)0x0700BE10, (void *)0x0700BE88, (void *)0x0700BF60,
		0xFF, 0xFF, 0xFF, 0xB4, S_LAYER_XLU_INTER,
	},
	{
		0x3601, 0,  6, (void *)0x07017134,
		gfx_scroll_rgba, gfx_scroll_end, (void *)0x07017260,
		0xFF, 0xFF, 0xFF, 0xB4, S_LAYER_XLU_SURF,
	},
	{
		0x3602, 0,  6, (void *)0x070171A0,
		gfx_scroll_rgba, gfx_scroll_end, (void *)0x07017260,
		0xFF, 0xFF, 0xFF, 0xB4, S_LAYER_XLU_SURF,
	},
	{
		0x3603, 0,  4, (void *)0x07017174,
		gfx_scroll_rgba, gfx_scroll_end, (void *)0x07017288,
		0xFF, 0xFF, 0xFF, 0xB4, S_LAYER_XLU_INTER,
	},
	{
		0x3604, 0,  4, (void *)0x070171E0,
		gfx_scroll_rgba, gfx_scroll_end, (void *)0x07017288,
		0xFF, 0xFF, 0xFF, 0xB4, S_LAYER_XLU_INTER,
	},
	{
		0x3605, 0,  8, (void *)0x0701720C,
		gfx_scroll_rgba, gfx_scroll_end, (void *)0x070172A0,
		0xFF, 0xFF, 0xFF, 0xB4, S_LAYER_XLU_INTER,
	},
	{0},
};

SCROLL scroll_data_b[] =
{
	{
		0x0801, 5, 12, (void *)0x070127F0,
		(void *)0x070127E0, (void *)0x070127E8, (void *)0x070128B8,
		0xFF, 0xFF, 0xFF, 0xFF, S_LAYER_OPA_SURF,
	},
	{
		0x0802, 5, 16, (void *)0x07012900,
		(void *)0x070127E0, (void *)0x070127E8, (void *)0x07012A08,
		0xFF, 0xFF, 0xFF, 0xFF, S_LAYER_OPA_SURF,
	},
	{
		0x0803, 5, 15, (void *)0x07012A50,
		(void *)0x070127E0, (void *)0x070127E8, (void *)0x07012B48,
		0xFF, 0xFF, 0xFF, 0xFF, S_LAYER_OPA_SURF,
	},
	{
		0x1400, 7, 12, (void *)0x07016840,
		(void *)0x07016790, (void *)0x07016808, (void *)0x070169C8,
		0xFF, 0xFF, 0xFF, 0xFF, S_LAYER_OPA_SURF,
	},
	{
		0x1401, 7, 12, (void *)0x07016904,
		(void *)0x07016790, (void *)0x07016808, (void *)0x070169C8,
		0xFF, 0xFF, 0xFF, 0xFF, S_LAYER_OPA_SURF,
	},
	{0},
};

SCROLL scroll_data_c[] =
{
	{
		0x0801, 5,  8, (void *)0x07004930,
		(void *)0x07004818, (void *)0x07004860, (void *)0x07004A38,
		0xFF, 0xFF, 0xFF, 0xFF, S_LAYER_OPA_SURF,
	},
	{
		0x0802, 6,  8, (void *)0x070049B4,
		(void *)0x07004880, (void *)0x070048F8, (void *)0x07004A38,
		0xFF, 0xFF, 0xFF, 0xFF, S_LAYER_OPA_SURF,
	},
	{0},
};

s8 scroll_803312E8[] = {1, 0, 4, 0, 7, 0, 10, 0};
