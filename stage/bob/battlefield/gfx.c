static Lights1 light_battlefield_smooth = gdSPDefLight(0.4, 0xFF, 0xFF, 0xFF);

#include "0.vtx.h"
#include "1.vtx.h"
#include "2.vtx.h"

static Gfx gfx_battlefield_0[] =
{
	gsDPLoadImageBlock(txt_c_11, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_battlefield_smooth),
#include "0.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_battlefield_1[] =
{
	gsDPLoadImageBlock(txt_c_18, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
#include "1.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_battlefield_2[] =
{
	gsDPLoadImageBlock(txt_c_12, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
#include "2.h"
	gsSPEndDisplayList(),
};

Gfx gfx_battlefield_smooth[] =
{
	gsDPPipeSync(),
	gsDPSetCycleType(G_CYC_2CYCLE),
	gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
	gsDPSetDepthSource(G_ZS_PIXEL),
	gsDPSetFogColor(0xA0, 0xA0, 0xA0, 0xFF),
	gsSPFogPosition(980, 1000),
	gsSPSetGeometryMode(G_FOG),
	gsDPSetCombineMode(G_CC_MODULATERGB, G_CC_PASS2),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_WRAP, G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
	gsSPDisplayList(gfx_battlefield_0),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
	gsSPDisplayList(gfx_battlefield_1),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_WRAP, G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
	gsSPDisplayList(gfx_battlefield_2),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCycleType(G_CYC_1CYCLE),
	gsDPSetRenderMode(G_RM_AA_ZB_OPA_SURF, G_RM_NOOP2),
	gsSPClearGeometryMode(G_FOG),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPEndDisplayList(),
};

static Lights1 light_battlefield_flat = gdSPDefLight(0.4, 0xFF, 0xFF, 0xFF);

#include "3.vtx.h"
#include "4.vtx.h"
#include "5.vtx.h"
#include "6.vtx.h"
#include "7.vtx.h"
#include "8.vtx.h"
#include "9.vtx.h"
#include "10.vtx.h"
#include "11.vtx.h"
#include "12.vtx.h"

static Gfx gfx_battlefield_3[] =
{
	gsDPLoadImageBlock(txt_c_7, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_battlefield_flat),
#include "3.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_battlefield_4[] =
{
	gsDPLoadImageBlock(txt_c_4, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
#include "4.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_battlefield_5[] =
{
	gsDPLoadImageBlock(txt_c_3, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
#include "5.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_battlefield_6[] =
{
	gsDPLoadImageBlock(txt_c_10, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
#include "6.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_battlefield_7[] =
{
	gsDPLoadImageBlock(txt_c_9, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
#include "7.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_battlefield_8[] =
{
	gsDPLoadImageBlock(txt_c_6, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
#include "8.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_battlefield_9[] =
{
	gsDPLoadImageBlock(txt_bob_2, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
#include "9.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_battlefield_10[] =
{
	gsDPLoadImageBlock(txt_bob_3, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
#include "10.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_battlefield_11[] =
{
	gsDPLoadImageBlock(txt_bob_1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
#include "11.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_battlefield_12[] =
{
	gsDPLoadImageBlock(txt_c_12, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
#include "12.h"
	gsSPEndDisplayList(),
};

Gfx gfx_battlefield_flat[] =
{
	gsDPPipeSync(),
	gsDPSetCycleType(G_CYC_2CYCLE),
	gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
	gsDPSetDepthSource(G_ZS_PIXEL),
	gsDPSetFogColor(0xA0, 0xA0, 0xA0, 0xFF),
	gsSPFogPosition(980, 1000),
	gsSPSetGeometryMode(G_FOG),
	gsDPSetCombineMode(G_CC_MODULATERGB, G_CC_PASS2),
	gsSPClearGeometryMode(G_SHADING_SMOOTH),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_WRAP, G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
	gsSPDisplayList(gfx_battlefield_3),
	gsSPDisplayList(gfx_battlefield_4),
	gsSPDisplayList(gfx_battlefield_5),
	gsSPDisplayList(gfx_battlefield_6),
	gsSPDisplayList(gfx_battlefield_7),
	gsSPDisplayList(gfx_battlefield_8),
	gsSPDisplayList(gfx_battlefield_9),
	gsSPDisplayList(gfx_battlefield_10),
	gsSPDisplayList(gfx_battlefield_11),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_WRAP, G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
	gsSPDisplayList(gfx_battlefield_12),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCycleType(G_CYC_1CYCLE),
	gsDPSetRenderMode(G_RM_AA_ZB_OPA_SURF, G_RM_NOOP2),
	gsSPClearGeometryMode(G_FOG),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_SHADING_SMOOTH),
	gsSPEndDisplayList(),
};

#include "13.vtx.h"

static Gfx gfx_battlefield_13[] =
{
	gsDPLoadImageBlock(txt_c_21, G_IM_FMT_IA, G_IM_SIZ_16b, 32, 32),
#include "13.h"
	gsSPEndDisplayList(),
};

Gfx gfx_battlefield_xlu_decal[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_MODULATERGBA, G_CC_MODULATERGBA),
	gsSPClearGeometryMode(G_LIGHTING),
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_IA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
	gsSPDisplayList(gfx_battlefield_13),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_LIGHTING),
	gsSPEndDisplayList(),
};

#include "14.vtx.h"
#include "15.vtx.h"

static Gfx gfx_battlefield_14[] =
{
	gsDPLoadImageBlock(txt_c_16, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
#include "14.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_battlefield_15[] =
{
	gsDPLoadImageBlock(txt_bob_0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
#include "15.h"
	gsSPEndDisplayList(),
};

Gfx gfx_battlefield_tex_edge[] =
{
	gsDPPipeSync(),
	gsDPSetCycleType(G_CYC_2CYCLE),
	gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
	gsDPSetDepthSource(G_ZS_PIXEL),
	gsDPSetFogColor(0xA0, 0xA0, 0xA0, 0xFF),
	gsSPFogPosition(980, 1000),
	gsSPSetGeometryMode(G_FOG),
	gsDPSetCombineMode(G_CC_DECALRGBA, G_CC_PASS2),
	gsSPClearGeometryMode(G_CULL_BACK|G_LIGHTING),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_WRAP, G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
	gsSPDisplayList(gfx_battlefield_14),
	gsSPDisplayList(gfx_battlefield_15),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCycleType(G_CYC_1CYCLE),
	gsDPSetRenderMode(G_RM_AA_ZB_TEX_EDGE, G_RM_NOOP2),
	gsSPClearGeometryMode(G_FOG),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_CULL_BACK|G_LIGHTING),
	gsSPEndDisplayList(),
};

static Lights1 light_battlefield_shade_h = gdSPDefLight(0.2, 0xFF, 0xFF, 0xFF);
static Lights1 light_battlefield_shade_l = gdSPDefLight(0.2, 0x64, 0x64, 0x64);

#include "16.vtx.h"
#include "17.vtx.h"
#include "18.vtx.h"
#include "19.vtx.h"
#include "20.vtx.h"
#include "21.vtx.h"
#include "22.vtx.h"

static Gfx gfx_battlefield_16_17[] =
{
	gsDPLoadImageBlock(txt_c_17, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_battlefield_shade_h),
#include "16.h"
	gsSPSetLights1N(light_battlefield_shade_l),
#include "17.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_battlefield_18[] =
{
	gsDPLoadImageBlock(txt_c_11, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_battlefield_shade_h),
#include "18.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_battlefield_19[] =
{
	gsDPLoadImageBlock(txt_c_18, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
#include "19.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_battlefield_20[] =
{
	gsDPLoadImageBlock(txt_bob_4, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
#include "20.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_battlefield_21[] =
{
	gsDPLoadImageBlock(txt_c_19, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
#include "21.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_battlefield_22[] =
{
	gsDPLoadImageBlock(txt_c_12, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
#include "22.h"
	gsSPEndDisplayList(),
};

Gfx gfx_battlefield_shade[] =
{
	gsDPPipeSync(),
	gsDPSetCycleType(G_CYC_2CYCLE),
	gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
	gsDPSetDepthSource(G_ZS_PIXEL),
	gsDPSetFogColor(0xA0, 0xA0, 0xA0, 0xFF),
	gsSPFogPosition(980, 1000),
	gsSPSetGeometryMode(G_FOG),
	gsDPSetCombineMode(G_CC_MODULATERGB, G_CC_PASS2),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_WRAP, G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
	gsSPDisplayList(gfx_battlefield_16_17),
	gsSPDisplayList(gfx_battlefield_18),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
	gsSPDisplayList(gfx_battlefield_19),
	gsSPDisplayList(gfx_battlefield_20),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_WRAP, G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
	gsSPDisplayList(gfx_battlefield_21),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_WRAP, G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
	gsSPDisplayList(gfx_battlefield_22),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCycleType(G_CYC_1CYCLE),
	gsDPSetRenderMode(G_RM_AA_ZB_OPA_SURF, G_RM_NOOP2),
	gsSPClearGeometryMode(G_FOG),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPEndDisplayList(),
};

static Lights1 light_battlefield_23 = gdSPDefLight(0.2, 0xFF, 0xFF, 0xFF);

#include "23.vtx.h"

static Gfx gfx_battlefield_23[] =
{
	gsDPLoadImageBlock(txt_c_17, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_battlefield_23),
#include "23.h"
	gsSPEndDisplayList(),
};

Gfx gfx_battlefield_23_s[] =
{
	gsDPPipeSync(),
	gsDPSetCycleType(G_CYC_2CYCLE),
	gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
	gsDPSetDepthSource(G_ZS_PIXEL),
	gsDPSetFogColor(0xA0, 0xA0, 0xA0, 0xFF),
	gsSPFogPosition(980, 1000),
	gsSPSetGeometryMode(G_FOG),
	gsDPSetCombineMode(G_CC_MODULATERGB, G_CC_PASS2),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_WRAP, G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
	gsSPDisplayList(gfx_battlefield_23),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCycleType(G_CYC_1CYCLE),
	gsDPSetRenderMode(G_RM_AA_ZB_OPA_SURF, G_RM_NOOP2),
	gsSPClearGeometryMode(G_FOG),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPEndDisplayList(),
};
