#include "gfx.vtx.h"

static u16 txt_dust_0[] =
{
#include "0.ia16.h"
};

static u16 txt_dust_1[] =
{
#include "1.ia16.h"
};

static u16 txt_dust_2[] =
{
#include "2.ia16.h"
};

static u16 txt_dust_3[] =
{
#include "3.ia16.h"
};

static u16 txt_dust_4[] =
{
#include "4.ia16.h"
};

static u16 txt_dust_5[] =
{
#include "5.ia16.h"
};

static u16 txt_dust_6[] =
{
#include "6.ia16.h"
};

static Gfx gfx_dust[] =
{
	gsSPClearGeometryMode(G_LIGHTING),
	gsDPSetCombineMode(G_CC_MODULATERGBA, G_CC_MODULATERGBA),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPLoadTextureBlockN(G_IM_FMT_IA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
#include "gfx.h"
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_LIGHTING),
	gsSPEndDisplayList(),
};

Gfx gfx_dust_0[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, txt_dust_0),
	gsSPBranchList(gfx_dust),
};

Gfx gfx_dust_1[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, txt_dust_1),
	gsSPBranchList(gfx_dust),
};

Gfx gfx_dust_2[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, txt_dust_2),
	gsSPBranchList(gfx_dust),
};

Gfx gfx_dust_3[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, txt_dust_3),
	gsSPBranchList(gfx_dust),
};

Gfx gfx_dust_4[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, txt_dust_4),
	gsSPBranchList(gfx_dust),
};

Gfx gfx_dust_5[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, txt_dust_5),
	gsSPBranchList(gfx_dust),
};

Gfx gfx_dust_6[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, txt_dust_6),
	gsSPBranchList(gfx_dust),
};
