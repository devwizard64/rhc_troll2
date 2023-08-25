static u8 txt_B_biank_liv_si4[] =
{
#include "B_biank_liv_si4.i4.h"
};

static u8 txt_B_mokume_brown[] =
{
#include "B_mokume_brown.ci4.h"
};

static u8 txt_B_mokume_whiteS[] =
{
#include "B_mokume_whiteS.ci4.h"
};

static u16 pal_B_mokume_brown[] =
{
#include "B_mokume_brown.rgba16.h"
};

static u16 pal_B_mokume_whiteS[] =
{
#include "B_mokume_whiteS.rgba16.h"
};

static Lights1 light_throwback[] =
{
	gdSPDefLight(0.4, 0xFF, 0xFF, 0xFF),
};

#include "shade.vtx.h"
#include "c4.vtx.h"
#include "c11.vtx.h"
#include "c17.vtx.h"
#include "c18.vtx.h"
#include "d3.vtx.h"
#include "d5.vtx.h"
#include "d9.vtx.h"
#include "B_biank_liv_si4.vtx.h"
#include "B_mokume_brown.vtx.h"
#include "B_mokume_whiteS.vtx.h"

Gfx gfx_throwback_opa_surf[] =
{
	gsSPClearGeometryMode(G_LIGHTING),
#include "shade.h"
	gsSPSetGeometryMode(G_LIGHTING),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_MODULATERGB, G_CC_MODULATERGB),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, 0, 0, 0, 0, 0, 0),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsSPSetLights1N(light_throwback[0]),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_WRAP, G_TX_WRAP, 5, 5, 0, 0),
	gsDPLoadImageBlock(txt_c_4, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
#include "c4.h"
	gsDPLoadImageBlock(txt_c_11, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
#include "c11.h"
	gsDPLoadImageBlock(txt_c_17, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
#include "c17.h"
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_WRAP, 5, 5, 0, 0),
	gsDPLoadImageBlock(txt_c_18, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
#include "c18.h"
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_WRAP, G_TX_WRAP, 6, 5, 0, 0),
	gsDPLoadImageBlock(txt_d_3, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32),
#include "d3.h"
	gsDPLoadImageBlock(txt_d_5, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32),
#include "d5.h"
	gsDPLoadImageBlock(txt_d_9, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32),
#include "d9.h"
	gsDPPipeSync(),
	gsDPSetTextureLUT(G_TT_RGBA16),
	gsDPLoadTLUT_pal16(0, pal_B_mokume_brown),
	gsDPLoadTextureBlock_4b(txt_B_mokume_brown, G_IM_FMT_CI, 64, 64, 0, G_TX_WRAP, G_TX_WRAP, 6, 6, 0, 0),
#include "B_mokume_brown.h"
	gsDPLoadTLUT_pal16(0, pal_B_mokume_whiteS),
	gsDPLoadTextureBlock_4b(txt_B_mokume_whiteS, G_IM_FMT_CI, 64, 64, 0, G_TX_WRAP, G_TX_WRAP, 6, 6, 0, 0),
#include "B_mokume_whiteS.h"
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsDPSetTextureLUT(G_TT_NONE),
	gsSPEndDisplayList(),
};

Gfx gfx_throwback_xlu_surf[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADEDECALA, G_CC_SHADEDECALA),
	gsSPSetLights1N(light_throwback[0]),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPLoadTextureBlock_4b(txt_B_biank_liv_si4, G_IM_FMT_I, 64, 64, 0, G_TX_WRAP, G_TX_WRAP, 6, 6, 0, 0),
#include "B_biank_liv_si4.h"
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPEndDisplayList(),
};
