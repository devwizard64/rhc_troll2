static Lights1 light_retro[] =
{
	gdSPDefLight(0.25, 0xFF, 0xFF, 0xFF),
};

static u16 txt_retro_ground[] =
{
#include "ground.rgba16.h"
};

static u16 txt_retro_kparrow[] =
{
#include "kparrow.rgba16.h"
};

static u16 txt_retro_kpground[] =
{
#include "kpground.rgba16.h"
};

static u16 txt_retro_kpwall[] =
{
#include "kpwall.rgba16.h"
};

#include "shade.vtx.h"
#include "ground.vtx.h"
#include "lava.vtx.h"

Gfx gfx_retro_opa_surf[] =
{
	gsSPClearGeometryMode(G_LIGHTING),
#include "shade.h"
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_DECALRGBA, G_CC_DECALRGBA),
	gsDPSetTextureFilter(G_TF_POINT),
	gsSPClearGeometryMode(G_SHADE|G_SHADING_SMOOTH),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, 0, 0, 0, 0, 0, 0),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 16, 0, G_TX_WRAP, G_TX_WRAP, 3, 4, 0, 0),
	gsDPLoadImageBlock(txt_retro_ground, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 16),
#include "ground.h"
	gsDPPipeSync(),
	gsDPSetTextureFilter(G_TF_BILERP),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_WRAP, G_TX_WRAP, 5, 5, 0, 0),
	gsDPLoadImageBlock(txt_scroll_lava, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
#include "lava.h"
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsSPSetGeometryMode(G_SHADE|G_SHADING_SMOOTH|G_LIGHTING),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPEndDisplayList(),
};

#include "a8.vtx.h"
#include "kparrow.vtx.h"
#include "kpground.vtx.h"
#include "kpwall.vtx.h"

Gfx gfx_retro_fade[] =
{
	gsDPSetCombineMode(G_CC_MODULATERGB_ENVA, G_CC_MODULATERGB_ENVA),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, 0, 0, 0, 0, 0, 0),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsSPSetLights1N(light_retro[0]),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_WRAP, G_TX_WRAP, 5, 5, 0, 0),
	gsDPLoadImageBlock(txt_a_8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
#include "a8.h"
	gsDPLoadImageBlock(txt_retro_kparrow, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
#include "kparrow.h"
	gsDPLoadImageBlock(txt_retro_kpground, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
#include "kpground.h"
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_WRAP, G_TX_WRAP, 5, 6, 0, 0),
	gsDPLoadImageBlock(txt_retro_kpwall, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
#include "kpwall.h"
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsDPSetEnvColor(0xFF, 0xFF, 0xFF, 0xFF),
	gsSPEndDisplayList(),
};

Gfx gfx_retro_back[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_PRIMITIVE, G_CC_PRIMITIVE),
	gsDPSetRenderMode(G_RM_XLU_SURF, G_RM_XLU_SURF2),
	gsDPFillRectangle(0, BORDER_HT, SCREEN_WD, SCREEN_HT-BORDER_HT),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsDPSetRenderMode(G_RM_OPA_SURF, G_RM_OPA_SURF2),
	gsSPEndDisplayList(),
};
