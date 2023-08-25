#include "marble.vtx.h"
#include "wood.vtx.h"
#include "shade.vtx.h"

static u16 txt_logo_wood[] =
{
#include "wood.rgba16.h"
};

static u16 txt_logo_marble[] =
{
#include "marble.rgba16.h"
};

static Gfx gfx_logo_marble[] =
{
	gsDPLoadImageBlock(txt_logo_marble, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
#include "marble.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_logo_wood[] =
{
	gsDPLoadImageBlock(txt_logo_wood, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
#include "wood.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_logo_shade[] =
{
#include "shade.h"
	gsSPEndDisplayList(),
};

Gfx gfx_logo_s[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_MODULATERGB, G_CC_MODULATERGB),
	gsSPClearGeometryMode(G_LIGHTING),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_WRAP, G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
	gsSPDisplayList(gfx_logo_marble),
	gsSPDisplayList(gfx_logo_wood),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPDisplayList(gfx_logo_shade),
	gsSPSetGeometryMode(G_LIGHTING),
	gsSPEndDisplayList(),
};
