#include "gfx.vtx.h"

static u16 txt_smoke[] =
{
#include "texture.ia16.h"
};

static Gfx gfx_smoke_start[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_MODULATERGBA, G_CC_MODULATERGBA),
	gsSPClearGeometryMode(G_CULL_BACK|G_LIGHTING),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsSPEndDisplayList(),
};

static Gfx gfx_smoke[] =
{
#include "gfx.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_smoke_end[] =
{
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_LIGHTING),
	gsSPEndDisplayList(),
};

Gfx gfx_smoke_s[] =
{
	gsSPDisplayList(gfx_smoke_start),
	gsDPLoadTextureBlock(txt_smoke, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
	gsSPDisplayList(gfx_smoke),
	gsSPDisplayList(gfx_smoke_end),
	gsSPEndDisplayList(),
};
