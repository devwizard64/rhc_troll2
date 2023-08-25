static Lights1 light_signpost_post = gdSPDefLight(0.5, 0xFF, 0xFF, 0xFF);

#include "post.vtx.h"

static u16 txt_signpost_wood[] =
{
#include "wood.rgba16.h"
};

static u16 txt_signpost_face[] =
{
#include "face.rgba16.h"
};

static Gfx gfx_signpost_post[] =
{
	gsDPLoadImageBlock(txt_signpost_wood, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_signpost_post),
#include "post.h"
	gsSPEndDisplayList(),
};

Gfx gfx_signpost_post_s[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_MODULATERGB, G_CC_MODULATERGB),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
	gsSPDisplayList(gfx_signpost_post),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPEndDisplayList(),
};

static Lights1 light_signpost_sign = gdSPDefLight(0.5, 0xFF, 0xFF, 0xFF);

#include "sign.vtx.h"
#include "face.vtx.h"

static Gfx gfx_signpost_sign[] =
{
	gsDPLoadImageBlock(txt_signpost_wood, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_signpost_sign),
#include "sign.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_signpost_face[] =
{
	gsDPLoadImageBlock(txt_signpost_face, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
#include "face.h"
	gsSPEndDisplayList(),
};

Gfx gfx_signpost_sign_s[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_MODULATERGB, G_CC_MODULATERGB),
	gsSPClearGeometryMode(G_SHADING_SMOOTH),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
	gsSPDisplayList(gfx_signpost_sign),
	gsSPDisplayList(gfx_signpost_face),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_SHADING_SMOOTH),
	gsSPEndDisplayList(),
};

MAP_DATA map_signpost[] =
{
#include "map.h"
	M_END,
};
