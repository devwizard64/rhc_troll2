#include "gfx.vtx.h"

static u16 txt_explosion_0[] =
{
#include "0.rgba16.h"
};

static u16 txt_explosion_1[] =
{
#include "1.rgba16.h"
};

static u16 txt_explosion_2[] =
{
#include "2.rgba16.h"
};

static u16 txt_explosion_3[] =
{
#include "3.rgba16.h"
};

static u16 txt_explosion_4[] =
{
#include "4.rgba16.h"
};

static u16 txt_explosion_5[] =
{
#include "5.rgba16.h"
};

static u16 txt_explosion_6[] =
{
#include "6.rgba16.h"
};

static Gfx gfx_explosion[] =
{
	gsDPSetCombineMode(G_CC_DECALRGBA_ENV, G_CC_DECALRGBA_ENV),
	gsDPSetEnvColor(0xFF, 0xFF, 0xFF, 0x96),
	gsSPClearGeometryMode(G_LIGHTING),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPLoadTextureBlockN(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
#include "gfx.h"
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsSPSetGeometryMode(G_LIGHTING),
	gsDPSetEnvColor(0xFF, 0xFF, 0xFF, 0xFF),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPEndDisplayList(),
};

Gfx gfx_explosion_0[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, txt_explosion_0),
	gsSPBranchList(gfx_explosion),
};

Gfx gfx_explosion_1[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, txt_explosion_1),
	gsSPBranchList(gfx_explosion),
};

Gfx gfx_explosion_2[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, txt_explosion_2),
	gsSPBranchList(gfx_explosion),
};

Gfx gfx_explosion_3[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, txt_explosion_3),
	gsSPBranchList(gfx_explosion),
};

Gfx gfx_explosion_4[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, txt_explosion_4),
	gsSPBranchList(gfx_explosion),
};

Gfx gfx_explosion_5[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, txt_explosion_5),
	gsSPBranchList(gfx_explosion),
};

Gfx gfx_explosion_6[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, txt_explosion_6),
	gsSPBranchList(gfx_explosion),
};
