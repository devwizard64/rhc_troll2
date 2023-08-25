#include <sm64.h>

#include BUILDPATH(data/texture/c.szp.h)

static u16 txt_d_3[] =
{
#include "data/texture/d3.rgba16.h"
};

static u16 txt_d_5[] =
{
#include "data/texture/d5.rgba16.h"
};

static u16 txt_d_9[] =
{
#include "data/texture/d9.rgba16.h"
};

#include "throwback/gfx.c"
#include "teleport/gfx.c"
#include "chest2/gfx.c"

MAP_DATA map_throwback[] =
{
#include "throwback/map.h"
	M_WATER, 1,
	0, 2305, 2305, 5680, 5680, 800,
	M_END,
};

OBJ_DATA obj_throwback[] =
{
	P_OBJ(22, 0, -5120, 0, 6144, 0x40),
	P_OBJ(22, 0, -3720, 5805, -120, 0x11),
	P_OBJ(22, 0, 1536, 8704, -2560, 0),

	P_OBJ(SIGNPOST, 16, 2500, 933, 2500, 173),
	P_OBJ(SIGNPOST, 0, -2880, -2500, -6030, 176),

	P_OBJ(44, 0, -3200, -2510, -6400, 0),

	P_OBJ(14, 0, -74, 4586, -6432, 0),
	P_OBJ(14, 0, -1098, 3356, -6400, 0),
	P_OBJ(14, 0, 950, 3356, -6400, 0),
	P_OBJ(14, 0, -1098, -227, -6400, 0),
	P_OBJ(14, 0, 950, -227, -6400, 0),
	P_OBJ(COIN, 0, -74, 4586, -6432, 0),
	P_OBJ(COIN, 0, -1098, 3356, -6400, 0),
	P_OBJ(COIN, 0, 950, 3356, -6400, 0),
	P_OBJ(COIN, 0, -1098, -227, -6400, 0),
	P_OBJ(COIN, 0, 950, -227, -6400, 0),

	P_OBJ(REDCOIN, 0, 5431, 943, 2554, 0),
	P_OBJ(REDCOIN, 0, -1609, -2460, -4873, 0),
	P_OBJ(REDCOIN, 0, -4370, 5415, -770, 0),
	P_OBJ(REDCOIN, 0, -6800, 6155, -120, 0),
	P_OBJ(REDCOIN, 0, -2944, 4874, -7488, 0),
	P_OBJ(REDCOIN, 0, 1536, 9004, -2560, 0),
	P_OBJ(REDCOIN, 0, 2240, 3850, -7488, 0),
	P_OBJ(REDCOIN, 0, -3328, -2166, -7744, 0),

	P_OBJ(110, 0, -6800, 5405, -120, 0),

	P_OBJ_END,
};

PATH_DATA path_ironball_throwback[] =
{
	0, -4370, 5405, -770,
	1, -4370, 5405, -1070,
	2, -3654, 5319, -977,
	3, -3259, 5205, -627,
	4, -3116, 5105, -271,
	5, -3139, 4977, 61,
	6, -3289, 4912, 418,
	7, -3634, 4816, 763,
	8, -4120, 4705, 877,
	9, -4620, 4605, 898,
	10, -6120, 4005, 894,
	11, -6670, 4005, 893,
	12, -7670, 3005, 893,
	-1,
};

typedef struct water
{
	short _00;
	short *_04;
}
WATER;

short water_throwback_0[] =
{
	1,
	0, 10, 10, -1023, 1024, -1023, 4096, 3226, 4096, 3226, 1024, 0, 120, 0,
};

WATER water_throwback[] =
{
	{0, water_throwback_0},
	{-1, NULL},
};
