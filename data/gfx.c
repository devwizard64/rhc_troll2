#include <sm64.h>

#include "gfx/dprint/texture.c"
#include "gfx/staff/texture.c"
#include "gfx/message/texture.c"
#include "gfx/camera/texture.c"
#include "gfx/dprint/table.c"
#include "gfx/message/table.c"
#include "gfx/staff/table.c"
#include "gfx/camera/table.c"

#include "select.h"
#include "en_us.h"
#include "course.h"
#include "level.h"

UNUSED static u64 align_0 = 0;

#include "gfx/dprint/gfx.c"
#include "gfx/message/gfx.c"
#include "gfx/number/gfx.c"
#include "gfx/shadow/texture.c"
#include "gfx/wipe/texture.c"
#include "gfx/scroll/texture.c"

UNUSED static Lights1 light_unused = gdSPDefLights1(
		0x40, 0x40, 0x40, 0xFF, 0xFF, 0xFF, 40, 40, 40
	);

static Mtx mtx_identity = gdSPDefMatrix(
		1, 0, 0, 0,
		0, 1, 0, 0,
		0, 0, 1, 0,
		0, 0, 0, 1
	);

static Mtx mtx_ortho = gdSPDefMatrix(
		0.0062408447265625, 0, 0, 0,
		0, 0.008331298828125, 0, 0,
		0, 0, -1, 0,
		-1, -1, -1, 1
	);

Gfx gfx_quad0[] =
{
	gsSP2Triangles( 0,  1,  2, 0,  0,  2,  3, 0),
	gsSPEndDisplayList(),
};

Gfx gfx_quad1[] =
{
	gsSP2Triangles( 4,  5,  6, 0,  4,  6,  7, 0),
	gsSPEndDisplayList(),
};

#include "gfx/shadow/gfx.c"
#include "gfx/wipe/gfx.c"
#include "gfx/background/gfx.c"
#include "gfx/scroll/gfx.c"
#include "gfx/minimap/gfx.c"
#include "gfx/wave/gfx.c"

#include "gfx/error/gfx.c"
#include "gfx/hypercam/gfx.c"
#include "gfx/wincursor/gfx.c"
