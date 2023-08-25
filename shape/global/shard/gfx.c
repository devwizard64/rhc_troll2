static Lights1 light_shard_r = gdSPDefLight(0.25, 0xFF, 0x64, 0x64);
static Lights1 light_shard_g = gdSPDefLight(0.25, 0x64, 0xFF, 0x64);
static Lights1 light_shard_b = gdSPDefLight(0.25, 0x64, 0x64, 0xFF);
static Lights1 light_shard_y = gdSPDefLight(0.25, 0xFF, 0xFF, 0x64);

#include "cork.vtx.h"

static u16 txt_shard_cork[] =
{
#include "cork.rgba16.h"
};

static Gfx gfx_shard_cork[] =
{
	gsDPLoadImageBlock(txt_shard_cork, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16),
#include "cork.h"
	gsSPEndDisplayList(),
};

Gfx gfx_shard_cork_s[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_DECALRGBA, G_CC_DECALRGBA),
	gsSPClearGeometryMode(G_CULL_BACK),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_CLAMP, G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
	gsSPDisplayList(gfx_shard_cork),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_CULL_BACK),
	gsSPEndDisplayList(),
};

#include "shard_s.vtx.h"
#include "shard_y.vtx.h"
#include "star_s.vtx.h"
#include "star_y.vtx.h"

static Gfx gfx_star_s[] =
{
	gsSPClearGeometryMode(G_CULL_BACK),
#include "star_s.h"
	gsSPSetGeometryMode(G_CULL_BACK),
	gsSPEndDisplayList(),
};

Gfx gfx_star_sr[] =
{
	gsSPSetLights1N(light_shard_r),
	gsSPDisplayList(gfx_star_s),
	gsSPEndDisplayList(),
};

Gfx gfx_star_sg[] =
{
	gsSPSetLights1N(light_shard_g),
	gsSPDisplayList(gfx_star_s),
	gsSPEndDisplayList(),
};

Gfx gfx_star_sb[] =
{
	gsSPSetLights1N(light_shard_b),
	gsSPDisplayList(gfx_star_s),
	gsSPEndDisplayList(),
};

Gfx gfx_star_sy[] =
{
	gsSPSetLights1N(light_shard_y),
	gsSPDisplayList(gfx_star_s),
	gsSPEndDisplayList(),
};

Gfx gfx_star_y[] =
{
	gsSPClearGeometryMode(G_CULL_BACK|G_LIGHTING),
#include "star_y.h"
	gsSPSetGeometryMode(G_CULL_BACK|G_LIGHTING),
	gsSPEndDisplayList(),
};

Gfx gfx_shard_sr[] =
{
	gsSPSetLights1N(light_shard_r),
	gsSPClearGeometryMode(G_CULL_BACK),
#include "shard_s.h"
	gsSPSetGeometryMode(G_CULL_BACK),
	gsSPEndDisplayList(),
};

Gfx gfx_shard_sg[] =
{
	gsSPSetLights1N(light_shard_g),
	gsSPClearGeometryMode(G_CULL_BACK),
#include "shard_s.h"
	gsSPSetGeometryMode(G_CULL_BACK),
	gsSPEndDisplayList(),
};

Gfx gfx_shard_sb[] =
{
	gsSPSetLights1N(light_shard_b),
	gsSPClearGeometryMode(G_CULL_BACK),
#include "shard_s.h"
	gsSPSetGeometryMode(G_CULL_BACK),
	gsSPEndDisplayList(),
};

Gfx gfx_shard_sy[] =
{
	gsSPSetLights1N(light_shard_y),
	gsSPClearGeometryMode(G_CULL_BACK),
#include "shard_s.h"
	gsSPSetGeometryMode(G_CULL_BACK),
	gsSPEndDisplayList(),
};

Gfx gfx_shard_y[] =
{
	gsSPClearGeometryMode(G_CULL_BACK|G_LIGHTING),
#include "shard_y.h"
	gsSPSetGeometryMode(G_CULL_BACK|G_LIGHTING),
	gsSPEndDisplayList(),
};
