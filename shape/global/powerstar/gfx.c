static Lights1 light_powerstar_star[] =
{
	gdSPDefLight(0.25, 0xFF, 0xFF, 0xFF),
};

static u16 txt_powerstar_star[] =
{
#include "star.rgba16.h"
};

static u16 txt_powerstar_eye[] =
{
#include "eye.rgba16.h"
};

#include "star.vtx.h"

Gfx gfx_powerstar_star_s[] =
{
	gsDPPipeSync(),
	gsDPSetEnvColor(0xFF, 0xFF, 0xFF, 0xFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_DECALRGB_ENV, G_CC_DECALRGB_ENV),
	gsSPSetGeometryMode(G_TEXTURE_GEN),
	gsSPTexture(62*32, 62*32, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsSPSetLights1N(light_powerstar_star[0]),
	gsDPLoadTextureBlock(txt_powerstar_star, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_WRAP, G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
#include "star.h"
	gsSPTexture(62*32, 62*32, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsSPClearGeometryMode(G_TEXTURE_GEN),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPEndDisplayList(),
};

static Lights1 light_powerstar_eyes[] =
{
	gdSPDefLight(0.25, 0xFF, 0xFF, 0xFF),
};

#include "eyes.vtx.h"

Gfx gfx_powerstar_eyes_s[] =
{
	gsDPPipeSync(),
	gsDPSetEnvColor(0xFF, 0xFF, 0xFF, 0xFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_MODULATERGBA_ENVA, G_CC_MODULATERGBA_ENVA),
	gsSPClearGeometryMode(G_SHADING_SMOOTH),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, 0, 0, 0, 0, 0, 0),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsSPSetLights1N(light_powerstar_eyes[0]),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
	gsDPLoadImageBlock(txt_powerstar_eye, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
#include "eyes.h"
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsSPSetGeometryMode(G_SHADING_SMOOTH),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPEndDisplayList(),
};

Gfx gfx_powerstar_end[] =
{
	gsDPPipeSync(),
	gsSPDisplayList(gfx_powerstar_star_s+2),
	gsDPSetEnvColor(0xFF, 0xFF, 0xFF, 0xFF),
	gsDPSetAlphaCompare(G_AC_NONE),
	gsSPEndDisplayList(),
};
