static Lights1 light_tile = gdSPDefLight(0.25, 0xFF, 0xFF, 0xFF);

static u16 txt_tile_erase[] =
{
#include "erase.rgba16.h"
};

static u16 txt_tile_copy[] =
{
#include "copy.rgba16.h"
};

static u16 txt_tile_main[] =
{
#include "main.rgba16.h"
};

static u16 txt_tile_score[] =
{
#include "score.rgba16.h"
};

static u16 txt_tile_sound[] =
{
#include "sound.rgba16.h"
};

#include "gfx.vtx.h"

static Gfx gfx_tile[] =
{
	gsSPSetLights1N(light_tile),
#include "gfx.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_tile_start[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_MODULATERGB, G_CC_MODULATERGB),
	gsSPClearGeometryMode(G_SHADING_SMOOTH),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_WRAP, G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
	gsSPEndDisplayList(),
};

static Gfx gfx_tile_end[] =
{
	gsSPDisplayList(gfx_tile),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_SHADING_SMOOTH),
	gsSPEndDisplayList(),
};

Gfx gfx_tile_erase[] =
{
	gsSPDisplayList(gfx_tile_start),
	gsDPLoadImageBlock(txt_tile_erase, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_tile_end),
	gsSPEndDisplayList(),
};

Gfx gfx_tile_copy[] =
{
	gsSPDisplayList(gfx_tile_start),
	gsDPLoadImageBlock(txt_tile_copy, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_tile_end),
	gsSPEndDisplayList(),
};

Gfx gfx_tile_main[] =
{
	gsSPDisplayList(gfx_tile_start),
	gsDPLoadImageBlock(txt_tile_main, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_tile_end),
	gsSPEndDisplayList(),
};

Gfx gfx_tile_score[] =
{
	gsSPDisplayList(gfx_tile_start),
	gsDPLoadImageBlock(txt_tile_score, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_tile_end),
	gsSPEndDisplayList(),
};

Gfx gfx_tile_sound[] =
{
	gsSPDisplayList(gfx_tile_start),
	gsDPLoadImageBlock(txt_tile_sound, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_tile_end),
	gsSPEndDisplayList(),
};

Gfx gfx_tile_button[] =
{
	gsSPDisplayList(gfx_tile_start),
	gsDPLoadImageBlock(txt_file_light, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_tile_end),
	gsSPEndDisplayList(),
};
