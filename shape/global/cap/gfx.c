static Lights1 light_cap_hair = gdSPDefLight(0.5, 0x73, 0x06, 0x00);
static Lights1 light_cap_white = gdSPDefLight(0.5, 0xFF, 0xFF, 0xFF);
static Lights1 light_cap_red = gdSPDefLight(0.5, 0xFF, 0x00, 0x00);

static u16 txt_cap_metal[] =
{
#include "metal.rgba16.h"
};

static u16 txt_cap_logo[] =
{
#include "logo.rgba16.h"
};

static u16 txt_cap_wing_l[] =
{
#include "wing_l.rgba16.h"
};

static u16 txt_cap_wing_r[] =
{
#include "wing_r.rgba16.h"
};

static u16 txt_cap_metal_wing_l[] =
{
#include "metal_wing_l.rgba16.h"
};

static u16 txt_cap_metal_wing_r[] =
{
#include "metal_wing_r.rgba16.h"
};

#include "cap0.vtx.h"
#include "cap1.vtx.h"
#include "cap2.vtx.h"

static Gfx gfx_cap0[] =
{
#include "cap0.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_cap1[] =
{
#include "cap1.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_cap2[] =
{
#include "cap2.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_cap12_s[] =
{
	gsSPDisplayList(gfx_cap1),
	gsSPSetLights1N(light_cap_hair),
	gsSPDisplayList(gfx_cap2),
	gsSPEndDisplayList(),
};

#include "wings_l.vtx.h"
#include "wings_r.vtx.h"

static Gfx gfx_wings_l[] =
{
#include "wings_l.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_wings_r[] =
{
#include "wings_r.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_wings_start[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_DECALRGBA, G_CC_DECALRGBA),
	gsSPClearGeometryMode(G_CULL_BACK|G_LIGHTING),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
	gsSPEndDisplayList(),
};

static Gfx gfx_wings_end[] =
{
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_CULL_BACK|G_LIGHTING),
	gsSPEndDisplayList(),
};

Gfx gfx_cap_s[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_BLENDRGB_ENVA, G_CC_BLENDRGB_ENVA),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
	gsDPLoadImageBlock(txt_cap_logo, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_cap_red),
	gsSPDisplayList(gfx_cap0),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE_ENV, G_CC_SHADE_ENV),
	gsSPDisplayList(gfx_cap12_s),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsDPSetAlphaCompare(G_AC_NONE),
	gsDPSetEnvColor(0xFF, 0xFF, 0xFF, 0xFF),
	gsSPEndDisplayList(),
};

Gfx gfx_cap_e[] =
{
	gsDPPipeSync(),
	gsSPSetGeometryMode(G_TEXTURE_GEN),
	gsDPSetCombineMode(G_CC_MODULATERGB_ENVA, G_CC_MODULATERGB_ENVA),
	gsDPLoadTextureBlock(txt_cap_metal, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_WRAP, G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
	gsSPTexture(62*64, 62*32, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsSPSetLights1N(light_cap_white),
	gsSPDisplayList(gfx_cap0),
	gsSPDisplayList(gfx_cap1),
	gsSPDisplayList(gfx_cap2),
	gsDPPipeSync(),
	gsSPClearGeometryMode(G_TEXTURE_GEN),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPTexture(62*64, 62*32, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPSetAlphaCompare(G_AC_NONE),
	gsDPSetEnvColor(0xFF, 0xFF, 0xFF, 0xFF),
	gsSPEndDisplayList(),
};

Gfx gfx_cap_wings_s[] =
{
	gsSPDisplayList(gfx_wings_start),
	gsDPLoadImageBlock(txt_cap_wing_l, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
	gsSPDisplayList(gfx_wings_l),
	gsDPLoadImageBlock(txt_cap_wing_r, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
	gsSPDisplayList(gfx_wings_r),
	gsSPDisplayList(gfx_wings_end),
	gsSPEndDisplayList(),
};

Gfx gfx_cap_wings_e[] =
{
	gsSPDisplayList(gfx_wings_start),
	gsDPLoadImageBlock(txt_cap_metal_wing_l, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
	gsSPDisplayList(gfx_wings_l),
	gsDPLoadImageBlock(txt_cap_metal_wing_r, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
	gsSPDisplayList(gfx_wings_r),
	gsSPDisplayList(gfx_wings_end),
	gsSPEndDisplayList(),
};

Gfx gfx_wingcap_s[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_BLENDRGB_ENVA, G_CC_BLENDRGB_ENVA),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
	gsDPLoadImageBlock(txt_cap_logo, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_cap_red),
	gsSPDisplayList(gfx_cap0),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE_ENV, G_CC_SHADE_ENV),
	gsSPDisplayList(gfx_cap12_s),
	gsDPPipeSync(),
	gsSPClearGeometryMode(G_CULL_BACK|G_LIGHTING),
	gsDPSetCombineMode(G_CC_DECALRGBA_ENV, G_CC_DECALRGBA_ENV),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
	gsDPLoadImageBlock(txt_cap_wing_l, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
	gsSPDisplayList(gfx_wings_l),
	gsDPLoadImageBlock(txt_cap_wing_r, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
	gsSPDisplayList(gfx_wings_r),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_CULL_BACK|G_LIGHTING),
	gsDPSetAlphaCompare(G_AC_NONE),
	gsDPSetEnvColor(0xFF, 0xFF, 0xFF, 0xFF),
	gsSPEndDisplayList(),
};

Gfx gfx_wingcap_e[] =
{
	gsDPPipeSync(),
	gsSPSetGeometryMode(G_TEXTURE_GEN),
	gsDPSetCombineMode(G_CC_MODULATERGB_ENVA, G_CC_MODULATERGB_ENVA),
	gsDPLoadTextureBlock(txt_cap_metal, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_WRAP, G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
	gsSPTexture(62*64, 62*32, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsSPSetLights1N(light_cap_white),
	gsSPDisplayList(gfx_cap0),
	gsSPDisplayList(gfx_cap1),
	gsSPDisplayList(gfx_cap2),
	gsSPTexture(62*64, 62*32, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsSPClearGeometryMode(G_CULL_BACK|G_LIGHTING|G_TEXTURE_GEN),
	gsDPSetCombineMode(G_CC_DECALRGBA_ENV, G_CC_DECALRGBA_ENV),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
	gsDPLoadImageBlock(txt_cap_metal_wing_l, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
	gsSPDisplayList(gfx_wings_l),
	gsDPLoadImageBlock(txt_cap_metal_wing_r, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
	gsSPDisplayList(gfx_wings_r),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_CULL_BACK|G_LIGHTING),
	gsDPSetAlphaCompare(G_AC_NONE),
	gsDPSetEnvColor(0xFF, 0xFF, 0xFF, 0xFF),
	gsSPEndDisplayList(),
};
