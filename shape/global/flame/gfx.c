#include "gfx.vtx.h"

static u16 txt_flame_0[] =
{
#include "0.ia16.h"
};

static u16 txt_flame_1[] =
{
#include "1.ia16.h"
};

static u16 txt_flame_2[] =
{
#include "2.ia16.h"
};

static u16 txt_flame_3[] =
{
#include "3.ia16.h"
};

static u16 txt_flame_4[] =
{
#include "4.ia16.h"
};

static u16 txt_flame_5[] =
{
#include "5.ia16.h"
};

static u16 txt_flame_6[] =
{
#include "6.ia16.h"
};

static u16 txt_flame_7[] =
{
#include "7.ia16.h"
};

static Gfx gfx_flame[] =
{
	gsSPClearGeometryMode(G_SHADING_SMOOTH|G_LIGHTING),
	gsDPSetEnvColor(0xFF, 0x32, 0x00, 0xC8),
	gsDPSetCombineMode(G_CC_MODULATERGBA_ENV, G_CC_MODULATERGBA_ENV),
	gsDPLoadTextureBlockN(G_IM_FMT_IA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
#include "gfx.h"
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsSPSetGeometryMode(G_SHADING_SMOOTH|G_LIGHTING),
	gsDPSetEnvColor(0xFF, 0xFF, 0xFF, 0xFF),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPEndDisplayList(),
};

Gfx gfx_flame_0[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, txt_flame_0),
	gsSPBranchList(gfx_flame),
};

Gfx gfx_flame_1[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, txt_flame_1),
	gsSPBranchList(gfx_flame),
};

Gfx gfx_flame_2[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, txt_flame_2),
	gsSPBranchList(gfx_flame),
};

Gfx gfx_flame_3[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, txt_flame_3),
	gsSPBranchList(gfx_flame),
};

Gfx gfx_flame_4[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, txt_flame_4),
	gsSPBranchList(gfx_flame),
};

Gfx gfx_flame_5[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, txt_flame_5),
	gsSPBranchList(gfx_flame),
};

Gfx gfx_flame_6[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, txt_flame_6),
	gsSPBranchList(gfx_flame),
};

Gfx gfx_flame_7[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, txt_flame_7),
	gsSPBranchList(gfx_flame),
};

static Gfx gfx_blueflame[] =
{
	gsSPClearGeometryMode(G_SHADING_SMOOTH|G_LIGHTING),
	gsDPSetEnvColor(0x64, 0x64, 0xFF, 0xFF),
	gsDPSetCombineMode(G_CC_MODULATERGBA_ENV, G_CC_MODULATERGBA_ENV),
	gsDPLoadTextureBlockN(G_IM_FMT_IA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
#include "gfx.h"
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsSPSetGeometryMode(G_SHADING_SMOOTH|G_LIGHTING),
	gsDPSetEnvColor(0xFF, 0xFF, 0xFF, 0xFF),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPEndDisplayList(),
};

Gfx gfx_blueflame_0[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, txt_flame_0),
	gsSPBranchList(gfx_blueflame),
};

Gfx gfx_blueflame_1[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, txt_flame_1),
	gsSPBranchList(gfx_blueflame),
};

Gfx gfx_blueflame_2[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, txt_flame_2),
	gsSPBranchList(gfx_blueflame),
};

Gfx gfx_blueflame_3[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, txt_flame_3),
	gsSPBranchList(gfx_blueflame),
};

Gfx gfx_blueflame_4[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, txt_flame_4),
	gsSPBranchList(gfx_blueflame),
};

Gfx gfx_blueflame_5[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, txt_flame_5),
	gsSPBranchList(gfx_blueflame),
};

Gfx gfx_blueflame_6[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, txt_flame_6),
	gsSPBranchList(gfx_blueflame),
};

Gfx gfx_blueflame_7[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, txt_flame_7),
	gsSPBranchList(gfx_blueflame),
};
