#include <sm64.h>

static u8 txt_jugem_face2_ul[] =
{
#include "ul.ci4.h"
};

static u8 txt_jugem_face2_ur[] =
{
#include "ur.ci4.h"
};

static u8 txt_jugem_face2_ll[] =
{
#include "ll.ci4.h"
};

static u8 txt_jugem_face2_lr[] =
{
#include "lr.ci4.h"
};

static u16 pal_jugem_face2[] =
{
#include "pal.rgba16.h"
};

static Vtx vtx_jugem_face2[] =
{
	{{{   160,      0,   -160}, 0, {    16,   2016}, {0x00, 0x00, 0x00, 0x00}}},
	{{{   160,      0,      0}, 0, {  2016,   2016}, {0x00, 0x00, 0x00, 0x00}}},
	{{{   160,   -160,      0}, 0, {  2016,     16}, {0x00, 0x00, 0x00, 0x00}}},
	{{{   160,   -160,   -160}, 0, {    16,     16}, {0x00, 0x00, 0x00, 0x00}}},
	{{{   160,      0,      0}, 0, {    16,   2016}, {0x00, 0x00, 0x00, 0x00}}},
	{{{   160,      0,    160}, 0, {  2016,   2016}, {0x00, 0x00, 0x00, 0x00}}},
	{{{   160,   -160,    160}, 0, {  2016,     16}, {0x00, 0x00, 0x00, 0x00}}},
	{{{   160,   -160,      0}, 0, {    16,     16}, {0x00, 0x00, 0x00, 0x00}}},
	{{{   160,    160,   -160}, 0, {    16,   2016}, {0x00, 0x00, 0x00, 0x00}}},
	{{{   160,    160,      0}, 0, {  2016,   2016}, {0x00, 0x00, 0x00, 0x00}}},
	{{{   160,      0,      0}, 0, {  2016,     16}, {0x00, 0x00, 0x00, 0x00}}},
	{{{   160,      0,   -160}, 0, {    16,     16}, {0x00, 0x00, 0x00, 0x00}}},
	{{{   160,    160,      0}, 0, {    16,   2016}, {0x00, 0x00, 0x00, 0x00}}},
	{{{   160,    160,    160}, 0, {  2016,   2016}, {0x00, 0x00, 0x00, 0x00}}},
	{{{   160,      0,    160}, 0, {  2016,     16}, {0x00, 0x00, 0x00, 0x00}}},
	{{{   160,      0,      0}, 0, {    16,     16}, {0x00, 0x00, 0x00, 0x00}}},
};

Gfx gfx_jugem_face2[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_DECALRGBA, G_CC_DECALRGBA),
	gsDPSetTextureLUT(G_TT_RGBA16),

	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, pal_jugem_face2),
	gsDPTileSync(),
	gsDPSetTile(0, 0, 0, 256, G_TX_LOADTILE, 0 , 0, 0, 0, 0, 0, 0),
	gsDPLoadSync(),
	gsDPLoadTLUTCmd(G_TX_LOADTILE, 15),

	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, 0, 0, 0, 0, 0, 0),
	gsDPSetTile(G_IM_FMT_CI, G_IM_SIZ_4b, (((64)>>1)+7)>>3, 0, G_TX_RENDERTILE, 0, G_TX_CLAMP, 6, 0, G_TX_CLAMP, 6, 0),
	gsDPSetTileSize(G_TX_RENDERTILE, 0, 0, ((64)-1) << G_TEXTURE_IMAGE_FRAC, ((64)-1) << G_TEXTURE_IMAGE_FRAC),

	gsSPClearGeometryMode(G_LIGHTING),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsSPVertex(vtx_jugem_face2, 16, 0),

	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, txt_jugem_face2_ul),
	gsDPLoadSync(),
	gsDPLoadBlock(G_TX_LOADTILE, 0, 0, (((64)*(64)+3)>>2)-1, CALC_DXT_4b(64)),
	gsSP2Triangles( 0,  1,  2, 0,  0,  2,  3, 0),

	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, txt_jugem_face2_ur),
	gsDPLoadSync(),
	gsDPLoadBlock(G_TX_LOADTILE, 0, 0, (((64)*(64)+3)>>2)-1, CALC_DXT_4b(64)),
	gsSP2Triangles( 4,  5,  6, 0,  4,  6,  7, 0),

	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, txt_jugem_face2_ll),
	gsDPLoadSync(),
	gsDPLoadBlock(G_TX_LOADTILE, 0, 0, (((64)*(64)+3)>>2)-1, CALC_DXT_4b(64)),
	gsSP2Triangles( 8,  9, 10, 0,  8, 10, 11, 0),

	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, txt_jugem_face2_lr),
	gsDPLoadSync(),
	gsDPLoadBlock(G_TX_LOADTILE, 0, 0, (((64)*(64)+3)>>2)-1, CALC_DXT_4b(64)),
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),

	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsSPSetGeometryMode(G_LIGHTING),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsDPSetTextureLUT(G_TT_NONE),
	gsSPEndDisplayList(),
};
