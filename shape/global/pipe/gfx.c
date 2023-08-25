static Lights1 light_pipe_side = gdSPDefLight(0.25, 0xFF, 0xFF, 0xFF);

#include "side.vtx.h"

static u16 txt_pipe_side[] =
{
#include "side.rgba16.h"
};

static u8 txt_pipe_side_w[] =
{
#include "side_w.i8.h"
};

static Gfx gfx_pipe_side[] =
{
	gsDPSetCombineMode(G_CC_MODULATERGB, G_CC_MODULATERGB),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsSPSetLights1N(light_pipe_side),
#include "side.h"
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPEndDisplayList(),
};

Gfx gfx_pipe_side_s[] =
{
	gsDPPipeSync(),
	gsDPLoadTextureBlock(txt_pipe_side, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_WRAP, G_TX_WRAP, 5, 6, 0, 0),
	gsSPBranchList(gfx_pipe_side),
};

Gfx gfx_pipe_side_w[] =
{
	gsDPPipeSync(),
	gsDPLoadTextureBlock(txt_pipe_side_w, G_IM_FMT_I, G_IM_SIZ_8b, 32, 64, 0, G_TX_WRAP, G_TX_WRAP, 5, 6, 0, 0),
	gsSPBranchList(gfx_pipe_side),
};

static Lights1 light_pipe_top = gdSPDefLight(0.25, 0xFF, 0xFF, 0xFF);
static Lights1 light_pipe_bottom = gdSPDefLight(0.25, 0x00, 0x00, 0x00);

#include "top.vtx.h"
#include "bottom.vtx.h"

static u16 txt_pipe_top[] =
{
#include "top.rgba16.h"
};

static u8 txt_pipe_top_w[] =
{
#include "top_w.i8.h"
};

static Gfx gfx_pipe_end[] =
{
	gsDPSetCombineMode(G_CC_MODULATERGB, G_CC_MODULATERGB),
	gsSPClearGeometryMode(G_SHADING_SMOOTH),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsSPSetLights1N(light_pipe_top),
#include "top.h"
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetLights1N(light_pipe_bottom),
#include "bottom.h"
	gsSPSetGeometryMode(G_SHADING_SMOOTH),
	gsSPEndDisplayList(),
};

Gfx gfx_pipe_end_s[] =
{
	gsDPPipeSync(),
	gsDPLoadTextureBlock(txt_pipe_top, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_WRAP, G_TX_WRAP, 5, 5, 0, 0),
	gsSPBranchList(gfx_pipe_end),
};

Gfx gfx_pipe_end_w[] =
{
	gsDPPipeSync(),
	gsDPLoadTextureBlock(txt_pipe_top_w, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0, G_TX_WRAP, G_TX_WRAP, 5, 5, 0, 0),
	gsSPBranchList(gfx_pipe_end),
};

MAP_DATA map_pipe[] =
{
#include "map.h"
	M_END,
};
