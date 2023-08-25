static Lights1 light_file = gdSPDefLight(0.25, 0xFF, 0xFF, 0xFF);

static u16 txt_file_light[] =
{
#include "light.rgba16.h"
};

static u16 txt_file_shade[] =
{
#include "shade.rgba16.h"
};

static u16 txt_file_mario[] =
{
#include "mario.rgba16.h"
};

static u16 txt_file_new[] =
{
#include "new.rgba16.h"
};

#include "edge.vtx.h"
#include "face.vtx.h"

static Gfx gfx_file_start[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_MODULATERGB, G_CC_MODULATERGB),
	gsSPClearGeometryMode(G_SHADING_SMOOTH),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_WRAP, G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
	gsSPEndDisplayList(),
};

static Gfx gfx_file_edge[] =
{
	gsSPSetLights1N(light_file),
#include "edge.h"
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_WRAP, G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
	gsSPEndDisplayList(),
};

static Gfx gfx_file_face[] =
{
#include "face.h"
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_SHADING_SMOOTH),
	gsSPEndDisplayList(),
};

#include "back.vtx.h"

static Gfx gfx_file_back_start[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_MODULATERGB, G_CC_MODULATERGB),
	gsSPClearGeometryMode(G_SHADING_SMOOTH),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_WRAP, G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
	gsSPEndDisplayList(),
};

static Gfx gfx_file_back_end[] =
{
	gsSPSetLights1N(light_file),
#include "back.h"
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_SHADING_SMOOTH),
	gsSPEndDisplayList(),
};

Gfx gfx_file_mario[] =
{
	gsSPDisplayList(gfx_file_start),
	gsDPLoadImageBlock(txt_file_light, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_file_edge),
	gsDPLoadImageBlock(txt_file_mario, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32),
	gsSPDisplayList(gfx_file_face),
	gsSPEndDisplayList(),
};

Gfx gfx_file_new[] =
{
	gsSPDisplayList(gfx_file_start),
	gsDPLoadImageBlock(txt_file_light, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_file_edge),
	gsDPLoadImageBlock(txt_file_new, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32),
	gsSPDisplayList(gfx_file_face),
	gsSPEndDisplayList(),
};

Gfx gfx_file_back[] =
{
	gsSPDisplayList(gfx_file_back_start),
	gsDPLoadImageBlock(txt_file_shade, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_file_back_end),
	gsSPEndDisplayList(),
};

Gfx gfx_file_back_s[] =
{
	gsDPPipeSync(),
	gsSPClearGeometryMode(G_SHADING_SMOOTH),
	gsSPSetLights1N(light_file),
	gsSPVertex(vtx_file_back, 4, 0),
	gsSP2Triangles( 0,  1,  2, 0,  1,  3,  2, 0),
	gsDPPipeSync(),
	gsSPSetGeometryMode(G_SHADING_SMOOTH),
	gsSPEndDisplayList(),
};
