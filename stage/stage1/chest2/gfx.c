static Lights1 light_chest2_06013F90[] =
{
	gdSPDefLight(0.25, 0xFF, 0xFF, 0xFF),
};

static u16 txt_chest2_0[] =
{
#include "0.rgba16.h"
};

static u16 txt_chest2_1[] =
{
#include "1.rgba16.h"
};

static u16 txt_chest2_2[] =
{
#include "2.rgba16.h"
};

static u16 txt_chest2_3[] =
{
#include "3.rgba16.h"
};

#include "0.vtx.h"
#include "1.vtx.h"
#include "2.vtx.h"
#include "3.vtx.h"

static Gfx gfx_chest2_06016D58[] =
{
	gsDPLoadImageBlock(txt_chest2_0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_chest2_06013F90[0]),
#include "0.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_chest2_06016DA0[] =
{
	gsDPLoadImageBlock(txt_chest2_2, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
#include "1.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_chest2_06016E18[] =
{
	gsDPLoadImageBlock(txt_chest2_1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
#include "2.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_chest2_06016EE0[] =
{
	gsDPLoadImageBlock(txt_chest2_3, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32),
#include "3.h"
	gsSPEndDisplayList(),
};

Gfx gfx_chest2_06016F90[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_MODULATERGB, G_CC_MODULATERGB),
	gsSPClearGeometryMode(G_SHADING_SMOOTH),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, 0, 0, 0, 0, 0, 0),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_WRAP, G_TX_WRAP, 5, 5, 0, 0),
	gsSPDisplayList(gfx_chest2_06016D58),
	gsSPDisplayList(gfx_chest2_06016DA0),
	gsSPDisplayList(gfx_chest2_06016E18),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_WRAP, G_TX_WRAP, 6, 5, 0, 0),
	gsSPDisplayList(gfx_chest2_06016EE0),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_SHADING_SMOOTH),
	gsSPEndDisplayList(),
};

#include "4.vtx.h"
#include "5.vtx.h"
#include "6.vtx.h"

static Gfx gfx_chest2_06017680[] =
{
	gsDPLoadImageBlock(txt_chest2_1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_chest2_06013F90[0]),
#include "4.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_chest2_06017790[] =
{
	gsDPLoadImageBlock(txt_chest2_2, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
#include "5.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_chest2_06017810[] =
{
	gsDPLoadImageBlock(txt_chest2_3, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32),
#include "6.h"
	gsSPEndDisplayList(),
};

Gfx gfx_chest2_060178C0[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_MODULATERGB, G_CC_MODULATERGB),
	gsSPClearGeometryMode(G_SHADING_SMOOTH),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, 0, 0, 0, 0, 0, 0),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_WRAP, G_TX_WRAP, 5, 5, 0, 0),
	gsSPDisplayList(gfx_chest2_06017680),
	gsSPDisplayList(gfx_chest2_06017790),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_WRAP, G_TX_WRAP, 6, 5, 0, 0),
	gsSPDisplayList(gfx_chest2_06017810),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_SHADING_SMOOTH),
	gsSPEndDisplayList(),
};
