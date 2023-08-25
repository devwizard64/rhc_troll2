static Lights1 light_chamber[] =
{
	gdSPDefLight(0.375, 0xFF, 0xFF, 0xFF),
};

#include "wall.vtx.h"
#include "ground.vtx.h"
#include "roof.vtx.h"

Gfx gfx_chamber_opa_surf[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_MODULATERGB, G_CC_MODULATERGB),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, 0, 0, 0, 0, 0, 0),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsSPSetLights1N(light_chamber[0]),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_WRAP, G_TX_WRAP, 5, 5, 0, 0),
	gsDPLoadImageBlock(txt_l_3, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
#include "wall.h"
	gsDPLoadImageBlock(txt_l_5, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
#include "ground.h"
	gsDPLoadImageBlock(txt_l_16, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
#include "roof.h"
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPEndDisplayList(),
};
