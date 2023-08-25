static u16 txt_teleport[] =
{
#include "texture.rgba16.h"
};

#include "gfx.vtx.h"

Gfx gfx_teleport[] =
{
	gsDPSetCombineMode(G_CC_DECALRGBA, G_CC_DECALRGBA),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, 0, 0, 0, 0, 0, 0),
	gsSPClearGeometryMode(G_LIGHTING),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, (((32)*2)+7)>>3, 0, 0, 0, G_TX_WRAP, 0, 0, G_TX_WRAP, 5, 0),
	gsDPSetTextureImage(G_IM_FMT_I, G_IM_SIZ_16b, 1, txt_teleport),
	gsDPLoadSync(),
	gsDPLoadBlock(G_TX_LOADTILE, 0, 0, (32)*(32)-1, CALC_DXT(32, 2)),
#include "gfx.h"
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsSPSetGeometryMode(G_LIGHTING),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPEndDisplayList(),
};
