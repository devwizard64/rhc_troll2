static u16 txt_retrolift[] =
{
#include "texture.rgba16.h"
};

#include "gfxA.vtx.h"
#include "gfxB.vtx.h"

static Gfx gfx_retrolift_start[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_DECALRGBA, G_CC_DECALRGBA),
	gsDPSetTextureFilter(G_TF_POINT),
	gsSPClearGeometryMode(G_SHADE|G_SHADING_SMOOTH|G_LIGHTING),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, 0, 0, 0, 0, 0, 0),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 0, G_TX_WRAP, G_TX_CLAMP, 3, 3, 0, 0),
	gsDPLoadImageBlock(txt_retrolift, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8),
	gsSPEndDisplayList(),
};

static Gfx gfx_retrolift_end[] =
{
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsSPSetGeometryMode(G_SHADE|G_SHADING_SMOOTH|G_LIGHTING),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsDPSetTextureFilter(G_TF_BILERP),
	gsSPEndDisplayList(),
};

Gfx gfx_retrolift_a[] =
{
	gsSPDisplayList(gfx_retrolift_start),
#include "gfxA.h"
	gsSPBranchList(gfx_retrolift_end),
};

Gfx gfx_retrolift_b[] =
{
	gsSPDisplayList(gfx_retrolift_start),
#include "gfxB.h"
	gsSPBranchList(gfx_retrolift_end),
};
