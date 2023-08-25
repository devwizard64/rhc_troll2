#include "gfx.vtx.h"

static Gfx gfx_number_start[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_DECALRGBA, G_CC_DECALRGBA),
	gsSPClearGeometryMode(G_LIGHTING),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
	gsSPTexture(0x8000, 0x8000, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_CLAMP, G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
	gsSPEndDisplayList(),
};

static Gfx gfx_number_end[] =
{
#include "gfx.h"
	gsSPTexture(0x8000, 0x8000, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_LIGHTING),
	gsSPEndDisplayList(),
};

Gfx gfx_number_0[] =
{
	gsSPDisplayList(gfx_number_start),
	gsDPLoadImageBlock(txt_dprint_0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16),
	gsSPDisplayList(gfx_number_end),
	gsSPEndDisplayList(),
};

Gfx gfx_number_1[] =
{
	gsSPDisplayList(gfx_number_start),
	gsDPLoadImageBlock(txt_dprint_1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16),
	gsSPDisplayList(gfx_number_end),
	gsSPEndDisplayList(),
};

Gfx gfx_number_2[] =
{
	gsSPDisplayList(gfx_number_start),
	gsDPLoadImageBlock(txt_dprint_2, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16),
	gsSPDisplayList(gfx_number_end),
	gsSPEndDisplayList(),
};

Gfx gfx_number_3[] =
{
	gsSPDisplayList(gfx_number_start),
	gsDPLoadImageBlock(txt_dprint_3, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16),
	gsSPDisplayList(gfx_number_end),
	gsSPEndDisplayList(),
};

Gfx gfx_number_4[] =
{
	gsSPDisplayList(gfx_number_start),
	gsDPLoadImageBlock(txt_dprint_4, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16),
	gsSPDisplayList(gfx_number_end),
	gsSPEndDisplayList(),
};

Gfx gfx_number_5[] =
{
	gsSPDisplayList(gfx_number_start),
	gsDPLoadImageBlock(txt_dprint_5, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16),
	gsSPDisplayList(gfx_number_end),
	gsSPEndDisplayList(),
};

Gfx gfx_number_6[] =
{
	gsSPDisplayList(gfx_number_start),
	gsDPLoadImageBlock(txt_dprint_6, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16),
	gsSPDisplayList(gfx_number_end),
	gsSPEndDisplayList(),
};

Gfx gfx_number_7[] =
{
	gsSPDisplayList(gfx_number_start),
	gsDPLoadImageBlock(txt_dprint_7, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16),
	gsSPDisplayList(gfx_number_end),
	gsSPEndDisplayList(),
};

Gfx gfx_number_8[] =
{
	gsSPDisplayList(gfx_number_start),
	gsDPLoadImageBlock(txt_dprint_8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16),
	gsSPDisplayList(gfx_number_end),
	gsSPEndDisplayList(),
};

Gfx gfx_number_9[] =
{
	gsSPDisplayList(gfx_number_start),
	gsDPLoadImageBlock(txt_dprint_9, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16),
	gsSPDisplayList(gfx_number_end),
	gsSPEndDisplayList(),
};
