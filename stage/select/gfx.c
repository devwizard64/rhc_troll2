#include <sm64.h>

#include "file/gfx.c"
#include "tile/gfx.c"
#include "cursor/gfx.c"
#include "print/gfx.c"
#include "msg8/gfx.c"

UNUSED static u64 align_0 = 0;

#include "course/gfx.c"

MAP_DATA map_select[] =
{
#include "map.h"
	M_END,
};
