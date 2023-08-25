#include <sm64.h>

#include BUILDPATH(data/gfx.szp.h)

static u16 txt_a_8[] =
{
#include "a8.rgba16.h"
};

#include "retro/gfx.c"
#include "retrolift/gfx.c"

MAP_DATA map_retro[] =
{
#include "retro/map.h"
	M_END,
};

OBJ_DATA obj_retro[] =
{
	P_OBJ(SIGNPOST, 0, -6850, 0, -100, 171),
	P_OBJ(66, 0, -50, 2500, 0, 0),
	P_OBJ(37, 0, -5000, -300, 0, 0),
	P_OBJ(37, 0, -4800, -300, 0, 0),
	P_OBJ(37, 0, -4600, -300, 0, 0),
	P_OBJ(37, 0, 1600, 1400, 0, 0),
	P_OBJ(37, 0, 1800, 1400, 0, 0),
	P_OBJ(37, 0, 2000, 1400, 0, 0),
	P_OBJ_END,
};

MAP_DATA map_retrolift_a[] =
{
#include "retrolift/mapA.h"
	M_END,
};

MAP_DATA map_retrolift_b[] =
{
#include "retrolift/mapB.h"
	M_END,
};
