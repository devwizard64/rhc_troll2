static Lights1 light_mario_blue = gdSPDefLight(0.5, 0x00, 0x00, 0xFF);
static Lights1 light_mario_red = gdSPDefLight(0.5, 0xFF, 0x00, 0x00);
static Lights1 light_mario_white = gdSPDefLight(0.5, 0xFF, 0xFF, 0xFF);
static Lights1 light_mario_shoe = gdSPDefLight(0.5, 0x72, 0x1C, 0x0E);
static Lights1 light_mario_skin = gdSPDefLight(0.5, 0xFE, 0xC1, 0x79);
static Lights1 light_mario_hair = gdSPDefLight(0.5, 0x73, 0x06, 0x00);

static u16 txt_mario_metal[] =
{
#include "metal.rgba16.h"
};

static u16 txt_mario_button[] =
{
#include "button.rgba16.h"
};

static u16 txt_mario_logo[] =
{
#include "logo.rgba16.h"
};

static u16 txt_mario_sideburn[] =
{
#include "sideburn.rgba16.h"
};

static u16 txt_mario_moustache[] =
{
#include "moustache.rgba16.h"
};

static u16 txt_mario_eye_open[] =
{
#include "eye_open.rgba16.h"
};

static u16 txt_mario_eye_half[] =
{
#include "eye_half.rgba16.h"
};

static u16 txt_mario_eye_closed[] =
{
#include "eye_closed.rgba16.h"
#include "eye_closed.rgba16.h"
#include "eye_closed.rgba16.h"
};

static u16 txt_mario_eye_left[] =
{
#include "eye_left.rgba16.h"
};

static u16 txt_mario_eye_right[] =
{
#include "eye_right.rgba16.h"
};

static u16 txt_mario_eye_up[] =
{
#include "eye_up.rgba16.h"
};

static u16 txt_mario_eye_down[] =
{
#include "eye_down.rgba16.h"
};

static u16 txt_mario_eye_dead[] =
{
#include "eye_dead.rgba16.h"
};

static u16 txt_mario_wing_l[] =
{
#include "wing_l.rgba16.h"
};

static u16 txt_mario_wing_r[] =
{
#include "wing_r.rgba16.h"
};

static u16 txt_mario_metal_wing_l[] =
{
#include "metal_wing_l.rgba16.h"
};

static u16 txt_mario_metal_wing_r[] =
{
#include "metal_wing_r.rgba16.h"
};

#include "h_waist.vtx.h"

static Gfx gfx_mario_h_waist[] =
{
#include "h_waist.h"
	gsSPEndDisplayList(),
};

Gfx gfx_mario_h_waist_s[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE_ENV, G_CC_SHADE_ENV),
	gsSPSetLights1N(light_mario_blue),
	gsSPDisplayList(gfx_mario_h_waist),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_h_waist_e[] =
{
	gsDPPipeSync(),
	gsSPSetGeometryMode(G_TEXTURE_GEN),
	gsDPSetCombineMode(G_CC_DECALRGB_ENV, G_CC_DECALRGB_ENV),
	gsDPLoadTextureBlock(txt_mario_metal, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_WRAP, G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
	gsSPTexture(62*64, 62*32, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsSPSetLights1N(light_mario_white),
	gsSPDisplayList(gfx_mario_h_waist),
	gsSPEndDisplayList(),
};

#include "h_uarmL.vtx.h"

Gfx gfx_mario_h_uarmL[] =
{
#include "h_uarmL.h"
	gsSPEndDisplayList(),
};

Gfx gfx_mario_h_uarmL_s[] =
{
	gsSPSetLights1N(light_mario_red),
	gsSPDisplayList(gfx_mario_h_uarmL),
	gsSPEndDisplayList(),
};

#include "h_larmL.vtx.h"

Gfx gfx_mario_h_larmL[] =
{
#include "h_larmL.h"
	gsSPEndDisplayList(),
};

#include "h_fistL.vtx.h"

Gfx gfx_mario_h_fistL[] =
{
#include "h_fistL.h"
	gsSPEndDisplayList(),
};

Gfx gfx_mario_h_fistL_s[] =
{
	gsSPSetLights1N(light_mario_white),
	gsSPDisplayList(gfx_mario_h_fistL),
	gsSPEndDisplayList(),
};

#include "h_uarmR.vtx.h"

Gfx gfx_mario_h_uarmR[] =
{
#include "h_uarmR.h"
	gsSPEndDisplayList(),
};

Gfx gfx_mario_h_uarmR_s[] =
{
	gsSPSetLights1N(light_mario_red),
	gsSPDisplayList(gfx_mario_h_uarmR),
	gsSPEndDisplayList(),
};

#include "h_larmR.vtx.h"

Gfx gfx_mario_h_larmR[] =
{
#include "h_larmR.h"
	gsSPEndDisplayList(),
};

#include "h_fistR.vtx.h"

static Gfx gfx_mario_h_fistR[] =
{
#include "h_fistR.h"
	gsSPEndDisplayList(),
};

Gfx gfx_mario_h_fistR_s[] =
{
	gsSPSetLights1N(light_mario_white),
	gsSPDisplayList(gfx_mario_h_fistR),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_h_fistR_e[] =
{
	gsSPDisplayList(gfx_mario_h_fistR),
	gsDPPipeSync(),
	gsSPClearGeometryMode(G_TEXTURE_GEN),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPTexture(62*64, 62*32, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsSPEndDisplayList(),
};

#include "h_thighL.vtx.h"

static Gfx gfx_mario_h_thighL[] =
{
#include "h_thighL.h"
	gsSPEndDisplayList(),
};

Gfx gfx_mario_h_thighL_s[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE_ENV, G_CC_SHADE_ENV),
	gsSPSetLights1N(light_mario_blue),
	gsSPDisplayList(gfx_mario_h_thighL),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_h_thighL_e[] =
{
	gsDPPipeSync(),
	gsSPSetGeometryMode(G_TEXTURE_GEN),
	gsDPSetCombineMode(G_CC_DECALRGB_ENV, G_CC_DECALRGB_ENV),
	gsDPLoadTextureBlock(txt_mario_metal, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_WRAP, G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
	gsSPTexture(62*64, 62*32, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsSPSetLights1N(light_mario_white),
	gsSPDisplayList(gfx_mario_h_thighL),
	gsSPEndDisplayList(),
};

#include "h_shinL.vtx.h"

Gfx gfx_mario_h_shinL[] =
{
#include "h_shinL.h"
	gsSPEndDisplayList(),
};

#include "h_shoeL.vtx.h"

Gfx gfx_mario_h_shoeL[] =
{
#include "h_shoeL.h"
	gsSPEndDisplayList(),
};

Gfx gfx_mario_h_shoeL_s[] =
{
	gsSPSetLights1N(light_mario_shoe),
	gsSPDisplayList(gfx_mario_h_shoeL),
	gsSPEndDisplayList(),
};

#include "h_thighR.vtx.h"

Gfx gfx_mario_h_thighR[] =
{
#include "h_thighR.h"
	gsSPEndDisplayList(),
};

Gfx gfx_mario_h_thighR_s[] =
{
	gsSPSetLights1N(light_mario_blue),
	gsSPDisplayList(gfx_mario_h_thighR),
	gsSPEndDisplayList(),
};

#include "h_shinR.vtx.h"

Gfx gfx_mario_h_shinR[] =
{
#include "h_shinR.h"
	gsSPEndDisplayList(),
};

#include "h_shoeR.vtx.h"

static Gfx gfx_mario_h_shoeR[] =
{
#include "h_shoeR.h"
	gsSPEndDisplayList(),
};

Gfx gfx_mario_h_shoeR_s[] =
{
	gsSPSetLights1N(light_mario_shoe),
	gsSPDisplayList(gfx_mario_h_shoeR),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsDPSetEnvColor(0xFF, 0xFF, 0xFF, 0xFF),
	gsDPSetAlphaCompare(G_AC_NONE),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_h_shoeR_e[] =
{
	gsSPDisplayList(gfx_mario_h_shoeR),
	gsDPPipeSync(),
	gsSPClearGeometryMode(G_TEXTURE_GEN),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPTexture(62*64, 62*32, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPSetEnvColor(0xFF, 0xFF, 0xFF, 0xFF),
	gsDPSetAlphaCompare(G_AC_NONE),
	gsSPEndDisplayList(),
};

#include "h_torso0.vtx.h"
#include "h_torso2.vtx.h"
#include "h_torso1.vtx.h"

static Gfx gfx_mario_h_torso0[] =
{
#include "h_torso0.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_mario_h_torso1[] =
{
#include "h_torso1.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_mario_h_torso2[] =
{
#include "h_torso2.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_mario_h_torso12_s[] =
{
	gsSPDisplayList(gfx_mario_h_torso1),
	gsSPSetLights1N(light_mario_red),
	gsSPDisplayList(gfx_mario_h_torso2),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_h_torso_s[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_BLENDRGB_ENVA, G_CC_BLENDRGB_ENVA),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
	gsDPLoadImageBlock(txt_mario_button, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_h_torso0),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE_ENV, G_CC_SHADE_ENV),
	gsSPDisplayList(gfx_mario_h_torso12_s),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_h_torso[] =
{
	gsSPDisplayList(gfx_mario_h_torso0),
	gsSPDisplayList(gfx_mario_h_torso1),
	gsSPDisplayList(gfx_mario_h_torso2),
	gsSPEndDisplayList(),
};

#include "h_cap0.vtx.h"
#include "h_cap1.vtx.h"
#include "h_cap2.vtx.h"
#include "h_cap3.vtx.h"
#include "h_cap5.vtx.h"
#include "h_cap4.vtx.h"
#include "h_cap6.vtx.h"

static Gfx gfx_mario_h_cap0[] =
{
#include "h_cap0.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_mario_h_cap1[] =
{
#include "h_cap1.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_mario_h_cap2[] =
{
#include "h_cap2.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_mario_h_cap3[] =
{
#include "h_cap3.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_mario_h_cap4[] =
{
#include "h_cap4.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_mario_h_cap5[] =
{
#include "h_cap5.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_mario_h_cap6[] =
{
#include "h_cap6.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_mario_h_cap456_s[] =
{
	gsSPDisplayList(gfx_mario_h_cap4),
	gsSPSetLights1N(light_mario_red),
	gsSPDisplayList(gfx_mario_h_cap5),
	gsSPSetLights1N(light_mario_hair),
	gsSPDisplayList(gfx_mario_h_cap6),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_h_cap_open[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_BLENDRGB_ENVA, G_CC_BLENDRGB_ENVA),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
	gsDPLoadImageBlock(txt_mario_logo, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_h_cap0),
	gsDPLoadImageBlock(txt_mario_eye_open, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_mario_skin),
	gsSPDisplayList(gfx_mario_h_cap1),
	gsDPLoadImageBlock(txt_mario_sideburn, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_h_cap2),
	gsDPLoadImageBlock(txt_mario_moustache, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_h_cap3),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE_ENV, G_CC_SHADE_ENV),
	gsSPDisplayList(gfx_mario_h_cap456_s),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_h_cap_half[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_BLENDRGB_ENVA, G_CC_BLENDRGB_ENVA),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
	gsDPLoadImageBlock(txt_mario_logo, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_h_cap0),
	gsDPLoadImageBlock(txt_mario_eye_half, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_mario_skin),
	gsSPDisplayList(gfx_mario_h_cap1),
	gsDPLoadImageBlock(txt_mario_sideburn, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_h_cap2),
	gsDPLoadImageBlock(txt_mario_moustache, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_h_cap3),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE_ENV, G_CC_SHADE_ENV),
	gsSPDisplayList(gfx_mario_h_cap456_s),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_h_cap_closed[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_BLENDRGB_ENVA, G_CC_BLENDRGB_ENVA),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
	gsDPLoadImageBlock(txt_mario_logo, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_h_cap0),
	gsDPLoadImageBlock(txt_mario_eye_closed, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_mario_skin),
	gsSPDisplayList(gfx_mario_h_cap1),
	gsDPLoadImageBlock(txt_mario_sideburn, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_h_cap2),
	gsDPLoadImageBlock(txt_mario_moustache, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_h_cap3),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE_ENV, G_CC_SHADE_ENV),
	gsSPDisplayList(gfx_mario_h_cap456_s),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_h_cap_left[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_BLENDRGB_ENVA, G_CC_BLENDRGB_ENVA),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
	gsDPLoadImageBlock(txt_mario_logo, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_h_cap0),
	gsDPLoadImageBlock(txt_mario_eye_left, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_mario_skin),
	gsSPDisplayList(gfx_mario_h_cap1),
	gsDPLoadImageBlock(txt_mario_sideburn, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_h_cap2),
	gsDPLoadImageBlock(txt_mario_moustache, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_h_cap3),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE_ENV, G_CC_SHADE_ENV),
	gsSPDisplayList(gfx_mario_h_cap456_s),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_h_cap_right[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_BLENDRGB_ENVA, G_CC_BLENDRGB_ENVA),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
	gsDPLoadImageBlock(txt_mario_logo, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_h_cap0),
	gsDPLoadImageBlock(txt_mario_eye_right, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_mario_skin),
	gsSPDisplayList(gfx_mario_h_cap1),
	gsDPLoadImageBlock(txt_mario_sideburn, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_h_cap2),
	gsDPLoadImageBlock(txt_mario_moustache, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_h_cap3),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE_ENV, G_CC_SHADE_ENV),
	gsSPDisplayList(gfx_mario_h_cap456_s),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_h_cap_up[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_BLENDRGB_ENVA, G_CC_BLENDRGB_ENVA),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
	gsDPLoadImageBlock(txt_mario_logo, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_h_cap0),
	gsDPLoadImageBlock(txt_mario_eye_up, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_mario_skin),
	gsSPDisplayList(gfx_mario_h_cap1),
	gsDPLoadImageBlock(txt_mario_sideburn, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_h_cap2),
	gsDPLoadImageBlock(txt_mario_moustache, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_h_cap3),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE_ENV, G_CC_SHADE_ENV),
	gsSPDisplayList(gfx_mario_h_cap456_s),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_h_cap_down[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_BLENDRGB_ENVA, G_CC_BLENDRGB_ENVA),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
	gsDPLoadImageBlock(txt_mario_logo, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_h_cap0),
	gsDPLoadImageBlock(txt_mario_eye_down, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_mario_skin),
	gsSPDisplayList(gfx_mario_h_cap1),
	gsDPLoadImageBlock(txt_mario_sideburn, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_h_cap2),
	gsDPLoadImageBlock(txt_mario_moustache, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_h_cap3),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE_ENV, G_CC_SHADE_ENV),
	gsSPDisplayList(gfx_mario_h_cap456_s),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_h_cap_dead[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_BLENDRGB_ENVA, G_CC_BLENDRGB_ENVA),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
	gsDPLoadImageBlock(txt_mario_logo, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_h_cap0),
	gsDPLoadImageBlock(txt_mario_eye_dead, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_mario_skin),
	gsSPDisplayList(gfx_mario_h_cap1),
	gsDPLoadImageBlock(txt_mario_sideburn, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_h_cap2),
	gsDPLoadImageBlock(txt_mario_moustache, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_h_cap3),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE_ENV, G_CC_SHADE_ENV),
	gsSPDisplayList(gfx_mario_h_cap456_s),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_h_cap[] =
{
	gsSPDisplayList(gfx_mario_h_cap0),
	gsSPDisplayList(gfx_mario_h_cap1),
	gsSPDisplayList(gfx_mario_h_cap2),
	gsSPDisplayList(gfx_mario_h_cap3),
	gsSPDisplayList(gfx_mario_h_cap4),
	gsSPDisplayList(gfx_mario_h_cap5),
	gsSPDisplayList(gfx_mario_h_cap6),
	gsSPEndDisplayList(),
};

UNUSED static Lights1 light_mario_skin_old = gdSPDefLight(0.25, 0xFE, 0xC1, 0x79);
UNUSED static Lights1 light_mario_hair_old = gdSPDefLight(0.25, 0x73, 0x06, 0x00);

#include "h_hair0.vtx.h"
#include "h_hair2.vtx.h"
#include "h_hair1.vtx.h"
#include "h_hair3a.vtx.h"
#include "h_hair4.vtx.h"
#include "h_hair3b.vtx.h"

static Gfx gfx_mario_h_hair0[] =
{
#include "h_hair0.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_mario_h_hair1[] =
{
#include "h_hair1.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_mario_h_hair2[] =
{
#include "h_hair2.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_mario_h_hair3[] =
{
#include "h_hair3a.h"
#include "h_hair3b.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_mario_h_hair4[] =
{
#include "h_hair4.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_mario_h_hair34_s[] =
{
	gsSPDisplayList(gfx_mario_h_hair3),
	gsSPSetLights1N(light_mario_hair),
	gsSPDisplayList(gfx_mario_h_hair4),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_h_hair_open[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_BLENDRGB_ENVA, G_CC_BLENDRGB_ENVA),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
	gsDPLoadImageBlock(txt_mario_eye_open, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_mario_skin),
	gsSPDisplayList(gfx_mario_h_hair0),
	gsDPLoadImageBlock(txt_mario_moustache, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_h_hair1),
	gsDPLoadImageBlock(txt_mario_sideburn, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_h_hair2),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE_ENV, G_CC_SHADE_ENV),
	gsSPDisplayList(gfx_mario_h_hair34_s),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_h_hair_half[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_BLENDRGB_ENVA, G_CC_BLENDRGB_ENVA),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
	gsDPLoadImageBlock(txt_mario_eye_half, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_mario_skin),
	gsSPDisplayList(gfx_mario_h_hair0),
	gsDPLoadImageBlock(txt_mario_moustache, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_h_hair1),
	gsDPLoadImageBlock(txt_mario_sideburn, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_h_hair2),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE_ENV, G_CC_SHADE_ENV),
	gsSPDisplayList(gfx_mario_h_hair34_s),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_h_hair_closed[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_BLENDRGB_ENVA, G_CC_BLENDRGB_ENVA),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
	gsDPLoadImageBlock(txt_mario_eye_closed, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_mario_skin),
	gsSPDisplayList(gfx_mario_h_hair0),
	gsDPLoadImageBlock(txt_mario_moustache, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_h_hair1),
	gsDPLoadImageBlock(txt_mario_sideburn, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_h_hair2),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE_ENV, G_CC_SHADE_ENV),
	gsSPDisplayList(gfx_mario_h_hair34_s),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_h_hair_left[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_BLENDRGB_ENVA, G_CC_BLENDRGB_ENVA),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
	gsDPLoadImageBlock(txt_mario_eye_left, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_mario_skin),
	gsSPDisplayList(gfx_mario_h_hair0),
	gsDPLoadImageBlock(txt_mario_moustache, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_h_hair1),
	gsDPLoadImageBlock(txt_mario_sideburn, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_h_hair2),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE_ENV, G_CC_SHADE_ENV),
	gsSPDisplayList(gfx_mario_h_hair34_s),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_h_hair_right[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_BLENDRGB_ENVA, G_CC_BLENDRGB_ENVA),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
	gsDPLoadImageBlock(txt_mario_eye_right, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_mario_skin),
	gsSPDisplayList(gfx_mario_h_hair0),
	gsDPLoadImageBlock(txt_mario_moustache, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_h_hair1),
	gsDPLoadImageBlock(txt_mario_sideburn, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_h_hair2),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE_ENV, G_CC_SHADE_ENV),
	gsSPDisplayList(gfx_mario_h_hair34_s),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_h_hair_up[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_BLENDRGB_ENVA, G_CC_BLENDRGB_ENVA),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
	gsDPLoadImageBlock(txt_mario_eye_up, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_mario_skin),
	gsSPDisplayList(gfx_mario_h_hair0),
	gsDPLoadImageBlock(txt_mario_moustache, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_h_hair1),
	gsDPLoadImageBlock(txt_mario_sideburn, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_h_hair2),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE_ENV, G_CC_SHADE_ENV),
	gsSPDisplayList(gfx_mario_h_hair34_s),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_h_hair_down[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_BLENDRGB_ENVA, G_CC_BLENDRGB_ENVA),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
	gsDPLoadImageBlock(txt_mario_eye_down, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_mario_skin),
	gsSPDisplayList(gfx_mario_h_hair0),
	gsDPLoadImageBlock(txt_mario_moustache, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_h_hair1),
	gsDPLoadImageBlock(txt_mario_sideburn, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_h_hair2),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE_ENV, G_CC_SHADE_ENV),
	gsSPDisplayList(gfx_mario_h_hair34_s),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_h_hair_dead[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_BLENDRGB_ENVA, G_CC_BLENDRGB_ENVA),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
	gsDPLoadImageBlock(txt_mario_eye_dead, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_mario_skin),
	gsSPDisplayList(gfx_mario_h_hair0),
	gsDPLoadImageBlock(txt_mario_moustache, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_h_hair1),
	gsDPLoadImageBlock(txt_mario_sideburn, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_h_hair2),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE_ENV, G_CC_SHADE_ENV),
	gsSPDisplayList(gfx_mario_h_hair34_s),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_h_hair[] =
{
	gsSPDisplayList(gfx_mario_h_hair0),
	gsSPDisplayList(gfx_mario_h_hair1),
	gsSPDisplayList(gfx_mario_h_hair2),
	gsSPDisplayList(gfx_mario_h_hair3),
	gsSPDisplayList(gfx_mario_h_hair4),
	gsSPEndDisplayList(),
};

#include "m_waist.vtx.h"

static Gfx gfx_mario_m_waist[] =
{
#include "m_waist.h"
	gsSPEndDisplayList(),
};

Gfx gfx_mario_m_waist_s[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE_ENV, G_CC_SHADE_ENV),
	gsSPSetLights1N(light_mario_blue),
	gsSPDisplayList(gfx_mario_m_waist),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_m_waist_e[] =
{
	gsDPPipeSync(),
	gsSPSetGeometryMode(G_TEXTURE_GEN),
	gsDPSetCombineMode(G_CC_DECALRGB_ENV, G_CC_DECALRGB_ENV),
	gsDPLoadTextureBlock(txt_mario_metal, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_WRAP, G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
	gsSPTexture(62*64, 62*32, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsSPSetLights1N(light_mario_white),
	gsSPDisplayList(gfx_mario_m_waist),
	gsSPEndDisplayList(),
};

#include "m_uarmL.vtx.h"

Gfx gfx_mario_m_uarmL[] =
{
#include "m_uarmL.h"
	gsSPEndDisplayList(),
};

Gfx gfx_mario_m_uarmL_s[] =
{
	gsSPSetLights1N(light_mario_red),
	gsSPDisplayList(gfx_mario_m_uarmL),
	gsSPEndDisplayList(),
};

#include "m_larmL.vtx.h"

Gfx gfx_mario_m_larmL[] =
{
#include "m_larmL.h"
	gsSPEndDisplayList(),
};

#include "m_fistL.vtx.h"

Gfx gfx_mario_m_fistL[] =
{
#include "m_fistL.h"
	gsSPEndDisplayList(),
};

Gfx gfx_mario_m_fistL_s[] =
{
	gsSPSetLights1N(light_mario_white),
	gsSPDisplayList(gfx_mario_m_fistL),
	gsSPEndDisplayList(),
};

#include "m_uarmR.vtx.h"

Gfx gfx_mario_m_uarmR[] =
{
#include "m_uarmR.h"
	gsSPEndDisplayList(),
};

Gfx gfx_mario_m_uarmR_s[] =
{
	gsSPSetLights1N(light_mario_red),
	gsSPDisplayList(gfx_mario_m_uarmR),
	gsSPEndDisplayList(),
};

#include "m_larmR.vtx.h"

Gfx gfx_mario_m_larmR[] =
{
#include "m_larmR.h"
	gsSPEndDisplayList(),
};

#include "m_fistR.vtx.h"

Gfx gfx_mario_m_fistR[] =
{
#include "m_fistR.h"
	gsSPEndDisplayList(),
};

Gfx gfx_mario_m_fistR_s[] =
{
	gsSPSetLights1N(light_mario_white),
	gsSPDisplayList(gfx_mario_m_fistR),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_m_fistR_e[] =
{
	gsSPDisplayList(gfx_mario_m_fistR),
	gsDPPipeSync(),
	gsSPClearGeometryMode(G_TEXTURE_GEN),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPTexture(62*64, 62*32, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsSPEndDisplayList(),
};

#include "m_thighL.vtx.h"

static Gfx gfx_mario_m_thighL[] =
{
#include "m_thighL.h"
	gsSPEndDisplayList(),
};

Gfx gfx_mario_m_thighL_s[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE_ENV, G_CC_SHADE_ENV),
	gsSPSetLights1N(light_mario_blue),
	gsSPDisplayList(gfx_mario_m_thighL),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_m_thighL_e[] =
{
	gsDPPipeSync(),
	gsSPSetGeometryMode(G_TEXTURE_GEN),
	gsDPSetCombineMode(G_CC_DECALRGB_ENV, G_CC_DECALRGB_ENV),
	gsDPLoadTextureBlock(txt_mario_metal, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_WRAP, G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
	gsSPTexture(62*64, 62*32, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsSPSetLights1N(light_mario_white),
	gsSPDisplayList(gfx_mario_m_thighL),
	gsSPEndDisplayList(),
};

#include "m_shinL.vtx.h"

Gfx gfx_mario_m_shinL[] =
{
#include "m_shinL.h"
	gsSPEndDisplayList(),
};

#include "m_shoeL.vtx.h"

Gfx gfx_mario_m_shoeL[] =
{
#include "m_shoeL.h"
	gsSPEndDisplayList(),
};

Gfx gfx_mario_m_shoeL_s[] =
{
	gsSPSetLights1N(light_mario_shoe),
	gsSPDisplayList(gfx_mario_m_shoeL),
	gsSPEndDisplayList(),
};

#include "m_thighR.vtx.h"

Gfx gfx_mario_m_thighR[] =
{
#include "m_thighR.h"
	gsSPEndDisplayList(),
};

Gfx gfx_mario_m_thighR_s[] =
{
	gsSPSetLights1N(light_mario_blue),
	gsSPDisplayList(gfx_mario_m_thighR),
	gsSPEndDisplayList(),
};

#include "m_shinR.vtx.h"

Gfx gfx_mario_m_shinR[] =
{
#include "m_shinR.h"
	gsSPEndDisplayList(),
};

#include "m_shoeR.vtx.h"

static Gfx gfx_mario_m_shoeR[] =
{
#include "m_shoeR.h"
	gsSPEndDisplayList(),
};

Gfx gfx_mario_m_shoeR_s[] =
{
	gsSPSetLights1N(light_mario_shoe),
	gsSPDisplayList(gfx_mario_m_shoeR),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsDPSetEnvColor(0xFF, 0xFF, 0xFF, 0xFF),
	gsDPSetAlphaCompare(G_AC_NONE),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_m_shoeR_e[] =
{
	gsSPDisplayList(gfx_mario_m_shoeR),
	gsDPPipeSync(),
	gsSPClearGeometryMode(G_TEXTURE_GEN),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPTexture(62*64, 62*32, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPSetEnvColor(0xFF, 0xFF, 0xFF, 0xFF),
	gsDPSetAlphaCompare(G_AC_NONE),
	gsSPEndDisplayList(),
};

#include "m_torso0.vtx.h"
#include "m_torso2.vtx.h"
#include "m_torso1.vtx.h"

static Gfx gfx_mario_m_torso0[] =
{
#include "m_torso0.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_mario_m_torso1[] =
{
#include "m_torso1.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_mario_m_torso2[] =
{
#include "m_torso2.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_mario_m_torso12_s[] =
{
	gsSPDisplayList(gfx_mario_m_torso1),
	gsSPSetLights1N(light_mario_red),
	gsSPDisplayList(gfx_mario_m_torso2),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_m_torso_s[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_BLENDRGB_ENVA, G_CC_BLENDRGB_ENVA),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
	gsDPLoadImageBlock(txt_mario_button, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_m_torso0),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE_ENV, G_CC_SHADE_ENV),
	gsSPDisplayList(gfx_mario_m_torso12_s),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_m_torso_e[] =
{
	gsSPDisplayList(gfx_mario_m_torso0),
	gsSPDisplayList(gfx_mario_m_torso1),
	gsSPDisplayList(gfx_mario_m_torso2),
	gsSPEndDisplayList(),
};

#include "l_waist.vtx.h"

static Gfx gfx_mario_l_waist[] =
{
#include "l_waist.h"
	gsSPEndDisplayList(),
};

Gfx gfx_mario_l_waist_s[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE_ENV, G_CC_SHADE_ENV),
	gsSPSetLights1N(light_mario_blue),
	gsSPDisplayList(gfx_mario_l_waist),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_l_waist_e[] =
{
	gsDPPipeSync(),
	gsSPSetGeometryMode(G_TEXTURE_GEN),
	gsDPSetCombineMode(G_CC_DECALRGB_ENV, G_CC_DECALRGB_ENV),
	gsDPLoadTextureBlock(txt_mario_metal, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_WRAP, G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
	gsSPTexture(62*64, 62*32, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsSPSetLights1N(light_mario_white),
	gsSPDisplayList(gfx_mario_l_waist),
	gsSPEndDisplayList(),
};

#include "l_uarmL.vtx.h"

Gfx gfx_mario_l_uarmL[] =
{
#include "l_uarmL.h"
	gsSPEndDisplayList(),
};

Gfx gfx_mario_l_uarmL_s[] =
{
	gsSPSetLights1N(light_mario_red),
	gsSPDisplayList(gfx_mario_l_uarmL),
	gsSPEndDisplayList(),
};

#include "l_larmL.vtx.h"

Gfx gfx_mario_l_larmL[] =
{
#include "l_larmL.h"
	gsSPEndDisplayList(),
};

#include "l_fistL.vtx.h"

Gfx gfx_mario_l_fistL[] =
{
#include "l_fistL.h"
	gsSPEndDisplayList(),
};

Gfx gfx_mario_l_fistL_s[] =
{
	gsSPSetLights1N(light_mario_white),
	gsSPDisplayList(gfx_mario_l_fistL),
	gsSPEndDisplayList(),
};

#include "l_uarmR.vtx.h"

Gfx gfx_mario_l_uarmR[] =
{
#include "l_uarmR.h"
	gsSPEndDisplayList(),
};

Gfx gfx_mario_l_uarmR_s[] =
{
	gsSPSetLights1N(light_mario_red),
	gsSPDisplayList(gfx_mario_l_uarmR),
	gsSPEndDisplayList(),
};

#include "l_larmR.vtx.h"

Gfx gfx_mario_l_larmR[] =
{
#include "l_larmR.h"
	gsSPEndDisplayList(),
};

#include "l_fistR.vtx.h"

static Gfx gfx_mario_l_fistR[] =
{
#include "l_fistR.h"
	gsSPEndDisplayList(),
};

Gfx gfx_mario_l_fistR_s[] =
{
	gsSPSetLights1N(light_mario_white),
	gsSPDisplayList(gfx_mario_l_fistR),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_l_fistR_e[] =
{
	gsSPDisplayList(gfx_mario_l_fistR),
	gsDPPipeSync(),
	gsSPClearGeometryMode(G_TEXTURE_GEN),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPTexture(62*64, 62*32, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsSPEndDisplayList(),
};

#include "l_thighL.vtx.h"

static Gfx gfx_mario_l_thighL[] =
{
#include "l_thighL.h"
	gsSPEndDisplayList(),
};

Gfx gfx_mario_l_thighL_s[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE_ENV, G_CC_SHADE_ENV),
	gsSPSetLights1N(light_mario_blue),
	gsSPDisplayList(gfx_mario_l_thighL),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_l_thighL_e[] =
{
	gsDPPipeSync(),
	gsSPSetGeometryMode(G_TEXTURE_GEN),
	gsDPSetCombineMode(G_CC_DECALRGB_ENV, G_CC_DECALRGB_ENV),
	gsDPLoadTextureBlock(txt_mario_metal, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_WRAP, G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
	gsSPTexture(62*64, 62*32, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsSPSetLights1N(light_mario_white),
	gsSPDisplayList(gfx_mario_l_thighL),
	gsSPEndDisplayList(),
};

#include "l_shinL.vtx.h"

Gfx gfx_mario_l_shinL[] =
{
#include "l_shinL.h"
	gsSPEndDisplayList(),
};

#include "l_shoeL.vtx.h"

Gfx gfx_mario_l_shoeL[] =
{
#include "l_shoeL.h"
	gsSPEndDisplayList(),
};

Gfx gfx_mario_l_shoeL_s[] =
{
	gsSPSetLights1N(light_mario_shoe),
	gsSPDisplayList(gfx_mario_l_shoeL),
	gsSPEndDisplayList(),
};

#include "l_thighR.vtx.h"

Gfx gfx_mario_l_thighR[] =
{
#include "l_thighR.h"
	gsSPEndDisplayList(),
};

Gfx gfx_mario_l_thighR_s[] =
{
	gsSPSetLights1N(light_mario_blue),
	gsSPDisplayList(gfx_mario_l_thighR),
	gsSPEndDisplayList(),
};

#include "l_shinR.vtx.h"

Gfx gfx_mario_l_shinR[] =
{
#include "l_shinR.h"
	gsSPEndDisplayList(),
};

#include "l_shoeR.vtx.h"

static Gfx gfx_mario_l_shoeR[] =
{
#include "l_shoeR.h"
	gsSPEndDisplayList(),
};

Gfx gfx_mario_l_shoeR_s[] =
{
	gsSPSetLights1N(light_mario_shoe),
	gsSPDisplayList(gfx_mario_l_shoeR),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsDPSetEnvColor(0xFF, 0xFF, 0xFF, 0xFF),
	gsDPSetAlphaCompare(G_AC_NONE),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_l_shoeR_e[] =
{
	gsSPDisplayList(gfx_mario_l_shoeR),
	gsDPPipeSync(),
	gsSPClearGeometryMode(G_TEXTURE_GEN),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPTexture(62*64, 62*32, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPSetEnvColor(0xFF, 0xFF, 0xFF, 0xFF),
	gsDPSetAlphaCompare(G_AC_NONE),
	gsSPEndDisplayList(),
};

#include "l_torso0.vtx.h"
#include "l_torso1.vtx.h"
#include "l_torso2.vtx.h"

static Gfx gfx_mario_l_torso0[] =
{
#include "l_torso0.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_mario_l_torso1[] =
{
#include "l_torso1.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_mario_l_torso2[] =
{
#include "l_torso2.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_mario_l_torso12_s[] =
{
	gsSPDisplayList(gfx_mario_l_torso1),
	gsSPSetLights1N(light_mario_red),
	gsSPDisplayList(gfx_mario_l_torso2),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_l_torso_s[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_BLENDRGB_ENVA, G_CC_BLENDRGB_ENVA),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
	gsDPLoadImageBlock(txt_mario_button, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_l_torso0),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE_ENV, G_CC_SHADE_ENV),
	gsSPDisplayList(gfx_mario_l_torso12_s),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_l_torso_e[] =
{
	gsSPDisplayList(gfx_mario_l_torso0),
	gsSPDisplayList(gfx_mario_l_torso1),
	gsSPDisplayList(gfx_mario_l_torso2),
	gsSPEndDisplayList(),
};

#include "l_cap0.vtx.h"
#include "l_cap1.vtx.h"
#include "l_cap2.vtx.h"
#include "l_cap4.vtx.h"
#include "l_cap3.vtx.h"
#include "l_cap5.vtx.h"

static Gfx gfx_mario_l_cap0[] =
{
#include "l_cap0.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_mario_l_cap1[] =
{
#include "l_cap1.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_mario_l_cap2[] =
{
#include "l_cap2.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_mario_l_cap3[] =
{
#include "l_cap3.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_mario_l_cap4[] =
{
#include "l_cap4.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_mario_l_cap5[] =
{
#include "l_cap5.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_mario_l_cap345_s[] =
{
	gsSPDisplayList(gfx_mario_l_cap3),
	gsSPSetLights1N(light_mario_red),
	gsSPDisplayList(gfx_mario_l_cap4),
	gsSPSetLights1N(light_mario_hair),
	gsSPDisplayList(gfx_mario_l_cap5),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_l_cap_open[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_BLENDRGB_ENVA, G_CC_BLENDRGB_ENVA),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
	gsDPLoadImageBlock(txt_mario_logo, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_l_cap0),
	gsDPLoadImageBlock(txt_mario_eye_open, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_mario_skin),
	gsSPDisplayList(gfx_mario_l_cap1),
	gsDPLoadImageBlock(txt_mario_moustache, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_l_cap2),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE_ENV, G_CC_SHADE_ENV),
	gsSPDisplayList(gfx_mario_l_cap345_s),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_l_cap_half[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_BLENDRGB_ENVA, G_CC_BLENDRGB_ENVA),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
	gsDPLoadImageBlock(txt_mario_logo, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_l_cap0),
	gsDPLoadImageBlock(txt_mario_eye_half, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_mario_skin),
	gsSPDisplayList(gfx_mario_l_cap1),
	gsDPLoadImageBlock(txt_mario_moustache, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_l_cap2),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE_ENV, G_CC_SHADE_ENV),
	gsSPDisplayList(gfx_mario_l_cap345_s),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_l_cap_closed[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_BLENDRGB_ENVA, G_CC_BLENDRGB_ENVA),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
	gsDPLoadImageBlock(txt_mario_logo, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_l_cap0),
	gsDPLoadImageBlock(txt_mario_eye_closed, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_mario_skin),
	gsSPDisplayList(gfx_mario_l_cap1),
	gsDPLoadImageBlock(txt_mario_moustache, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_l_cap2),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE_ENV, G_CC_SHADE_ENV),
	gsSPDisplayList(gfx_mario_l_cap345_s),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_l_cap_left[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_BLENDRGB_ENVA, G_CC_BLENDRGB_ENVA),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
	gsDPLoadImageBlock(txt_mario_logo, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_l_cap0),
	gsDPLoadImageBlock(txt_mario_eye_left, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_mario_skin),
	gsSPDisplayList(gfx_mario_l_cap1),
	gsDPLoadImageBlock(txt_mario_moustache, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_l_cap2),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE_ENV, G_CC_SHADE_ENV),
	gsSPDisplayList(gfx_mario_l_cap345_s),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_l_cap_right[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_BLENDRGB_ENVA, G_CC_BLENDRGB_ENVA),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
	gsDPLoadImageBlock(txt_mario_logo, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_l_cap0),
	gsDPLoadImageBlock(txt_mario_eye_right, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_mario_skin),
	gsSPDisplayList(gfx_mario_l_cap1),
	gsDPLoadImageBlock(txt_mario_moustache, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_l_cap2),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE_ENV, G_CC_SHADE_ENV),
	gsSPDisplayList(gfx_mario_l_cap345_s),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_l_cap_up[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_BLENDRGB_ENVA, G_CC_BLENDRGB_ENVA),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
	gsDPLoadImageBlock(txt_mario_logo, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_l_cap0),
	gsDPLoadImageBlock(txt_mario_eye_up, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_mario_skin),
	gsSPDisplayList(gfx_mario_l_cap1),
	gsDPLoadImageBlock(txt_mario_moustache, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_l_cap2),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE_ENV, G_CC_SHADE_ENV),
	gsSPDisplayList(gfx_mario_l_cap345_s),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_l_cap_down[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_BLENDRGB_ENVA, G_CC_BLENDRGB_ENVA),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
	gsDPLoadImageBlock(txt_mario_logo, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_l_cap0),
	gsDPLoadImageBlock(txt_mario_eye_down, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_mario_skin),
	gsSPDisplayList(gfx_mario_l_cap1),
	gsDPLoadImageBlock(txt_mario_moustache, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_l_cap2),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE_ENV, G_CC_SHADE_ENV),
	gsSPDisplayList(gfx_mario_l_cap345_s),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_l_cap_dead[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_BLENDRGB_ENVA, G_CC_BLENDRGB_ENVA),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
	gsDPLoadImageBlock(txt_mario_logo, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_l_cap0),
	gsDPLoadImageBlock(txt_mario_eye_dead, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_mario_skin),
	gsSPDisplayList(gfx_mario_l_cap1),
	gsDPLoadImageBlock(txt_mario_moustache, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_l_cap2),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE_ENV, G_CC_SHADE_ENV),
	gsSPDisplayList(gfx_mario_l_cap345_s),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_l_cap[] =
{
	gsSPDisplayList(gfx_mario_l_cap0),
	gsSPDisplayList(gfx_mario_l_cap1),
	gsSPDisplayList(gfx_mario_l_cap2),
	gsSPDisplayList(gfx_mario_l_cap3),
	gsSPDisplayList(gfx_mario_l_cap4),
	gsSPDisplayList(gfx_mario_l_cap5),
	gsSPEndDisplayList(),
};

#include "l_hair0.vtx.h"
#include "l_hair1.vtx.h"
#include "l_hair2.vtx.h"
#include "l_hair3.vtx.h"

static Gfx gfx_mario_l_hair0[] =
{
#include "l_hair0.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_mario_l_hair1[] =
{
#include "l_hair1.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_mario_l_hair2[] =
{
#include "l_hair2.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_mario_l_hair3[] =
{
#include "l_hair3.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_mario_l_hair23_s[] =
{
	gsSPDisplayList(gfx_mario_l_hair2),
	gsSPSetLights1N(light_mario_hair),
	gsSPDisplayList(gfx_mario_l_hair3),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_l_hair_open[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_BLENDRGB_ENVA, G_CC_BLENDRGB_ENVA),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
	gsDPLoadImageBlock(txt_mario_eye_open, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_mario_skin),
	gsSPDisplayList(gfx_mario_l_hair0),
	gsDPLoadImageBlock(txt_mario_moustache, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_l_hair1),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE_ENV, G_CC_SHADE_ENV),
	gsSPDisplayList(gfx_mario_l_hair23_s),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_l_hair_half[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_BLENDRGB_ENVA, G_CC_BLENDRGB_ENVA),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
	gsDPLoadImageBlock(txt_mario_eye_half, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_mario_skin),
	gsSPDisplayList(gfx_mario_l_hair0),
	gsDPLoadImageBlock(txt_mario_moustache, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_l_hair1),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE_ENV, G_CC_SHADE_ENV),
	gsSPDisplayList(gfx_mario_l_hair23_s),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_l_hair_closed[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_BLENDRGB_ENVA, G_CC_BLENDRGB_ENVA),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
	gsDPLoadImageBlock(txt_mario_eye_closed, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_mario_skin),
	gsSPDisplayList(gfx_mario_l_hair0),
	gsDPLoadImageBlock(txt_mario_moustache, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_l_hair1),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE_ENV, G_CC_SHADE_ENV),
	gsSPDisplayList(gfx_mario_l_hair23_s),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_l_hair_left[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_BLENDRGB_ENVA, G_CC_BLENDRGB_ENVA),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
	gsDPLoadImageBlock(txt_mario_eye_left, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_mario_skin),
	gsSPDisplayList(gfx_mario_l_hair0),
	gsDPLoadImageBlock(txt_mario_moustache, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_l_hair1),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE_ENV, G_CC_SHADE_ENV),
	gsSPDisplayList(gfx_mario_l_hair23_s),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_l_hair_right[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_BLENDRGB_ENVA, G_CC_BLENDRGB_ENVA),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
	gsDPLoadImageBlock(txt_mario_eye_right, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_mario_skin),
	gsSPDisplayList(gfx_mario_l_hair0),
	gsDPLoadImageBlock(txt_mario_moustache, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_l_hair1),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE_ENV, G_CC_SHADE_ENV),
	gsSPDisplayList(gfx_mario_l_hair23_s),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_l_hair_up[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_BLENDRGB_ENVA, G_CC_BLENDRGB_ENVA),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
	gsDPLoadImageBlock(txt_mario_eye_up, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_mario_skin),
	gsSPDisplayList(gfx_mario_l_hair0),
	gsDPLoadImageBlock(txt_mario_moustache, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_l_hair1),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE_ENV, G_CC_SHADE_ENV),
	gsSPDisplayList(gfx_mario_l_hair23_s),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_l_hair_down[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_BLENDRGB_ENVA, G_CC_BLENDRGB_ENVA),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
	gsDPLoadImageBlock(txt_mario_eye_down, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_mario_skin),
	gsSPDisplayList(gfx_mario_l_hair0),
	gsDPLoadImageBlock(txt_mario_moustache, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_l_hair1),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE_ENV, G_CC_SHADE_ENV),
	gsSPDisplayList(gfx_mario_l_hair23_s),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_l_hair_dead[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_BLENDRGB_ENVA, G_CC_BLENDRGB_ENVA),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
	gsDPLoadImageBlock(txt_mario_eye_dead, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_mario_skin),
	gsSPDisplayList(gfx_mario_l_hair0),
	gsDPLoadImageBlock(txt_mario_moustache, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_l_hair1),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE_ENV, G_CC_SHADE_ENV),
	gsSPDisplayList(gfx_mario_l_hair23_s),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_l_hair[] =
{
	gsSPDisplayList(gfx_mario_l_hair0),
	gsSPDisplayList(gfx_mario_l_hair1),
	gsSPDisplayList(gfx_mario_l_hair2),
	gsSPDisplayList(gfx_mario_l_hair3),
	gsSPEndDisplayList(),
};

#include "handL.vtx.h"

Gfx gfx_mario_handL[] =
{
#include "handL.h"
	gsSPEndDisplayList(),
};

Gfx gfx_mario_handL_s[] =
{
	gsSPSetLights1N(light_mario_white),
	gsSPDisplayList(gfx_mario_handL),
	gsSPEndDisplayList(),
};

#include "handR.vtx.h"

static Gfx gfx_mario_handR[] =
{
#include "handR.h"
	gsSPEndDisplayList(),
};

Gfx gfx_mario_handR_s[] =
{
	gsSPSetLights1N(light_mario_white),
	gsSPDisplayList(gfx_mario_handR),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_handR_e[] =
{
	gsSPDisplayList(gfx_mario_handR),
	gsDPPipeSync(),
	gsSPClearGeometryMode(G_TEXTURE_GEN),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPTexture(62*64, 62*32, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsSPEndDisplayList(),
};

#include "capR0.vtx.h"
#include "capR2.vtx.h"
#include "capR1.vtx.h"
#include "capR3.vtx.h"

static Gfx gfx_mario_capR0[] =
{
#include "capR0.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_mario_capR1[] =
{
#include "capR1.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_mario_capR2[] =
{
#include "capR2.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_mario_capR3[] =
{
#include "capR3.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_mario_capR123_s[] =
{
	gsSPDisplayList(gfx_mario_capR1),
	gsSPSetLights1N(light_mario_white),
	gsSPDisplayList(gfx_mario_capR2),
	gsSPSetLights1N(light_mario_hair),
	gsSPDisplayList(gfx_mario_capR3),
	gsSPEndDisplayList(),
};

#include "wingsR_l.vtx.h"
#include "wingsR_r.vtx.h"

static Gfx gfx_mario_wingsR_l[] =
{
#include "wingsR_l.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_mario_wingsR_r[] =
{
#include "wingsR_r.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_mario_wingsR_start[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_MODULATERGBA_ENVA, G_CC_MODULATERGBA_ENVA),
	gsSPClearGeometryMode(G_SHADING_SMOOTH|G_CULL_BACK),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsSPSetLights1N(light_mario_white),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
	gsSPEndDisplayList(),
};

static Gfx gfx_mario_wingsR_end[] =
{
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsSPSetGeometryMode(G_SHADING_SMOOTH|G_CULL_BACK),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_capR_s[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_BLENDRGB_ENVA, G_CC_BLENDRGB_ENVA),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
	gsDPLoadImageBlock(txt_mario_logo, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_capR0),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE_ENV, G_CC_SHADE_ENV),
	gsSPDisplayList(gfx_mario_capR123_s),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_wingsR_s[] =
{
	gsSPDisplayList(gfx_mario_wingsR_start),
	gsDPLoadImageBlock(txt_mario_wing_l, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
	gsSPDisplayList(gfx_mario_wingsR_l),
	gsDPLoadImageBlock(txt_mario_wing_r, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
	gsSPDisplayList(gfx_mario_wingsR_r),
	gsSPDisplayList(gfx_mario_wingsR_end),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_capR_e[] =
{
	gsSPDisplayList(gfx_mario_capR0),
	gsSPDisplayList(gfx_mario_capR1),
	gsSPDisplayList(gfx_mario_capR2),
	gsSPDisplayList(gfx_mario_capR3),
	gsDPPipeSync(),
	gsSPClearGeometryMode(G_TEXTURE_GEN),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPTexture(62*64, 62*32, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_wingsR_e[] =
{
	gsSPDisplayList(gfx_mario_wingsR_start),
	gsDPLoadImageBlock(txt_mario_metal_wing_l, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
	gsSPDisplayList(gfx_mario_wingsR_l),
	gsDPLoadImageBlock(txt_mario_metal_wing_r, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
	gsSPDisplayList(gfx_mario_wingsR_r),
	gsSPDisplayList(gfx_mario_wingsR_end),
	gsSPEndDisplayList(),
};

#include "peaceR.vtx.h"

Gfx gfx_mario_peaceR[] =
{
#include "peaceR.h"
	gsSPEndDisplayList(),
};

Gfx gfx_mario_peaceR_s[] =
{
	gsSPSetLights1N(light_mario_white),
	gsSPDisplayList(gfx_mario_peaceR),
	gsSPEndDisplayList(),
};

#include "cap0.vtx.h"
#include "cap1.vtx.h"
#include "cap2.vtx.h"

static Gfx gfx_mario_cap0[] =
{
#include "cap0.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_mario_cap1[] =
{
#include "cap1.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_mario_cap2[] =
{
#include "cap2.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_mario_cap12_s[] =
{
	gsSPDisplayList(gfx_mario_cap1),
	gsSPSetLights1N(light_mario_hair),
	gsSPDisplayList(gfx_mario_cap2),
	gsSPEndDisplayList(),
};

#include "wings_l.vtx.h"
#include "wings_r.vtx.h"

static Gfx gfx_mario_wings_l[] =
{
#include "wings_l.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_mario_wings_r[] =
{
#include "wings_r.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_mario_wings_start[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_MODULATERGBA, G_CC_MODULATERGBA),
	gsSPClearGeometryMode(G_SHADING_SMOOTH|G_CULL_BACK),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
	gsSPSetLights1N(light_mario_white),
	gsSPEndDisplayList(),
};

static Gfx gfx_mario_wings_end[] =
{
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_SHADING_SMOOTH|G_CULL_BACK),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_cap_s[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_BLENDRGBA, G_CC_BLENDRGBA),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
	gsDPLoadImageBlock(txt_mario_logo, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_mario_red),
	gsSPDisplayList(gfx_mario_cap0),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPDisplayList(gfx_mario_cap12_s),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_cap_e[] =
{
	gsDPPipeSync(),
	gsSPSetGeometryMode(G_TEXTURE_GEN),
	gsDPSetCombineMode(G_CC_MODULATERGB, G_CC_MODULATERGB),
	gsDPLoadTextureBlock(txt_mario_metal, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_WRAP, G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
	gsSPTexture(62*64, 62*32, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsSPSetLights1N(light_mario_white),
	gsSPDisplayList(gfx_mario_cap0),
	gsSPDisplayList(gfx_mario_cap1),
	gsSPDisplayList(gfx_mario_cap2),
	gsDPPipeSync(),
	gsSPClearGeometryMode(G_TEXTURE_GEN),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPTexture(62*64, 62*32, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_wings_s[] =
{
	gsSPDisplayList(gfx_mario_wings_start),
	gsDPLoadImageBlock(txt_mario_wing_l, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
	gsSPDisplayList(gfx_mario_wings_l),
	gsDPLoadImageBlock(txt_mario_wing_r, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
	gsSPDisplayList(gfx_mario_wings_r),
	gsSPDisplayList(gfx_mario_wings_end),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_wings_e[] =
{
	gsSPDisplayList(gfx_mario_wings_start),
	gsDPLoadImageBlock(txt_mario_metal_wing_l, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
	gsSPDisplayList(gfx_mario_wings_l),
	gsDPLoadImageBlock(txt_mario_metal_wing_r, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
	gsSPDisplayList(gfx_mario_wings_r),
	gsSPDisplayList(gfx_mario_wings_end),
	gsSPEndDisplayList(),
};

#include "wing_l.vtx.h"
#include "wing_r.vtx.h"

static Gfx gfx_mario_wing_l[] =
{
#include "wing_l.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_mario_wing_r[] =
{
#include "wing_r.h"
	gsSPEndDisplayList(),
};

Gfx gfx_mario_wing_so[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_DECALRGBA, G_CC_DECALRGBA),
	gsSPClearGeometryMode(G_SHADING_SMOOTH|G_CULL_BACK),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
	gsSPSetLights1N(light_mario_white),
	gsDPLoadImageBlock(txt_mario_wing_l, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
	gsSPDisplayList(gfx_mario_wing_l),
	gsDPLoadImageBlock(txt_mario_wing_r, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
	gsSPDisplayList(gfx_mario_wing_r),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_SHADING_SMOOTH|G_CULL_BACK),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_wing_sx[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_DECALRGBA_ENV, G_CC_DECALRGBA_ENV),
	gsSPClearGeometryMode(G_SHADING_SMOOTH|G_CULL_BACK),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
	gsSPSetLights1N(light_mario_white),
	gsDPLoadImageBlock(txt_mario_wing_l, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
	gsSPDisplayList(gfx_mario_wing_l),
	gsDPLoadImageBlock(txt_mario_wing_r, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
	gsSPDisplayList(gfx_mario_wing_r),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE_ENV, G_CC_SHADE_ENV),
	gsSPSetGeometryMode(G_SHADING_SMOOTH|G_CULL_BACK),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_wing_eo[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_DECALRGBA, G_CC_DECALRGBA),
	gsSPClearGeometryMode(G_SHADING_SMOOTH|G_CULL_BACK),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
	gsSPSetLights1N(light_mario_white),
	gsDPLoadImageBlock(txt_mario_metal_wing_l, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
	gsSPDisplayList(gfx_mario_wing_l),
	gsDPLoadImageBlock(txt_mario_metal_wing_r, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
	gsSPDisplayList(gfx_mario_wing_r),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_SHADING_SMOOTH|G_CULL_BACK),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_wing_ex[] =
{
	gsDPPipeSync(),
	gsSPClearGeometryMode(G_TEXTURE_GEN),
	gsSPTexture(62*64, 62*32, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPSetCombineMode(G_CC_DECALRGBA_ENV, G_CC_DECALRGBA_ENV),
	gsSPClearGeometryMode(G_SHADING_SMOOTH|G_CULL_BACK),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
	gsDPLoadImageBlock(txt_mario_metal_wing_l, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
	gsSPDisplayList(gfx_mario_wing_l),
	gsDPLoadImageBlock(txt_mario_metal_wing_r, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
	gsSPDisplayList(gfx_mario_wing_r),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsSPSetGeometryMode(G_SHADING_SMOOTH|G_CULL_BACK|G_TEXTURE_GEN),
	gsDPSetCombineMode(G_CC_DECALRGB_ENV, G_CC_DECALRGB_ENV),
	gsDPLoadTextureBlock(txt_mario_metal, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_WRAP, G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
	gsSPTexture(62*64, 62*32, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsSPEndDisplayList(),
};
