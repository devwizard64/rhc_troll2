#include "l.vtx.h"

static u16 txt_butterfly_wing[] =
{
#include "wing.rgba16.h"
};

#include "r.vtx.h"

Gfx gfx_butterfly_l[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_DECALRGBA, G_CC_DECALRGBA),
	gsSPClearGeometryMode(G_CULL_BACK|G_LIGHTING),
	gsSPTexture(0x8000, 0x8000, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPLoadTextureBlock(txt_butterfly_wing, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
#include "l.h"
	gsSPTexture(0x8000, 0x8000, 1, 1, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_CULL_BACK|G_LIGHTING),
	gsSPEndDisplayList(),
};

Gfx gfx_butterfly_r[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_DECALRGBA, G_CC_DECALRGBA),
	gsSPClearGeometryMode(G_CULL_BACK|G_LIGHTING),
	gsSPTexture(0x8000, 0x8000, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPLoadTextureBlock(txt_butterfly_wing, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
#include "r.h"
	gsSPTexture(0x8000, 0x8000, 1, 1, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_CULL_BACK|G_LIGHTING),
	gsSPEndDisplayList(),
};

static s16 anime_butterfly_0_val[] =
{
	 0x0000,  0x352F,  0x28EE,  0x122D,  0x05EC,  0x0D4E,  0x1D8D,  0x2DCC,
	 0x352F,  0x4B1B,  0x569E,  0x6C00,  0x7784,  0x7093,  0x614F,  0x520B,
	 0x4B1B,
};

static u16 anime_butterfly_0_tbl[] =
{
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     8,     1,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     8,     9,
	    1,     0,     1,     0,     1,     0,
};

static ANIME anime_butterfly_0 =
{
	/* flag     */  ANIME_LOOP|ANIME_XYZ,
	/* waist    */  0,
	/* start    */  7,
	/* end      */  0,
	/* frame    */  8,
	/* joint    */  6,
	anime_butterfly_0_val,
	anime_butterfly_0_tbl,
	0,
};

static s16 anime_butterfly_1_val[] =
{
	 0x0000,  0x3A7B,  0x3A7B,  0x3998,  0x3721,  0x3360,  0x2E9D,  0x2923,
	 0x233A,  0x1D2D,  0x1744,  0x11CA,  0x0D07,  0x0945,  0x06CF,  0x05EC,
	 0x0697,  0x087A,  0x0B63,  0x0F24,  0x138C,  0x186C,  0x1D94,  0x22D3,
	 0x27FB,  0x2CDB,  0x3143,  0x3503,  0x37ED,  0x39CF,  0x3A7B,  0x4637,
	 0x4637,  0x470C,  0x495C,  0x4CE1,  0x5159,  0x567C,  0x5C07,  0x61B4,
	 0x673F,  0x6C63,  0x70DA,  0x7460,  0x76AF,  0x7784,  0x76E3,  0x751F,
	 0x7263,  0x6EDE,  0x6ABC,  0x6629,  0x6154,  0x5C68,  0x5792,  0x52FF,
	 0x4EDD,  0x4B58,  0x489D,  0x46D8,  0x4637,
};

static u16 anime_butterfly_1_tbl[] =
{
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,    30,     1,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,    30,    31,
	    1,     0,     1,     0,     1,     0,
};

static ANIME anime_butterfly_1 =
{
	/* flag     */  ANIME_LOOP|ANIME_XYZ,
	/* waist    */  0,
	/* start    */  7,
	/* end      */  0,
	/* frame    */  30,
	/* joint    */  6,
	anime_butterfly_1_val,
	anime_butterfly_1_tbl,
	0,
};

ANIME *anime_butterfly[] =
{
	&anime_butterfly_0,
	&anime_butterfly_1,
};
