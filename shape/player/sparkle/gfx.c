#include "gfx.vtx.h"

static u16 txt_sparkle_5[] =
{
#include "5.rgba16.h"
};

static u16 txt_sparkle_4[] =
{
#include "4.rgba16.h"
};

static u16 txt_sparkle_3[] =
{
#include "3.rgba16.h"
};

static u16 txt_sparkle_2[] =
{
#include "2.rgba16.h"
};

static u16 txt_sparkle_1[] =
{
#include "1.rgba16.h"
};

static u16 txt_sparkle_0[] =
{
#include "0.rgba16.h"
};

static Gfx gfx_sparkle[] =
{
	gsDPSetCombineMode(G_CC_DECALRGBA, G_CC_DECALRGBA),
	gsSPTexture(0x8000, 0x8000, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPLoadTextureBlockN(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_WRAP, G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD),
#include "gfx.h"
	gsSPTexture(0x0001, 0x0001, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPEndDisplayList(),
};

Gfx gfx_sparkle_5[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, txt_sparkle_5),
	gsSPBranchList(gfx_sparkle),
};

Gfx gfx_sparkle_4[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, txt_sparkle_4),
	gsSPBranchList(gfx_sparkle),
};

Gfx gfx_sparkle_3[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, txt_sparkle_3),
	gsSPBranchList(gfx_sparkle),
};

Gfx gfx_sparkle_2[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, txt_sparkle_2),
	gsSPBranchList(gfx_sparkle),
};

Gfx gfx_sparkle_1[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, txt_sparkle_1),
	gsSPBranchList(gfx_sparkle),
};

Gfx gfx_sparkle_0[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, txt_sparkle_0),
	gsSPBranchList(gfx_sparkle),
};
