static Lights1 light_shadowstar = gdSPDefLight(0.1, 0x1E, 0x32, 0xE6);

#include "star.vtx.h"

static Gfx gfx_shadowstar[] =
{
	gsSPSetLights1N(light_shadowstar),
#include "star.h"
	gsSPEndDisplayList(),
};

Gfx gfx_shadowstar_s[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE_ENV, G_CC_SHADE_ENV),
	gsDPSetEnvColor(0xFF, 0xFF, 0xFF, 0x78),
	gsSPDisplayList(gfx_shadowstar),
	gsDPSetEnvColor(0xFF, 0xFF, 0xFF, 0xFF),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPEndDisplayList(),
};
