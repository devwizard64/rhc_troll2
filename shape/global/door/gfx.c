static Lights1 light_door_panel = gdSPDefLight(0.25, 0xFF, 0xFF, 0xFF);
static Lights1 light_door_knob = gdSPDefLight(0.25, 0xFF, 0xFF, 0x00);

static u16 txt_door_a_face[] =
{
#include "a_face.rgba16.h"
};

static u16 txt_door_a_side[] =
{
#include "a_side.rgba16.h"
};

static u16 txt_door_b_face[] =
{
#include "b_face.rgba16.h"
};

static u16 txt_door_b_side[] =
{
#include "b_side.rgba16.h"
};

static u16 txt_door_d_face[] =
{
#include "d_face.rgba16.h"
};

static u16 txt_door_d_side[] =
{
#include "d_side.rgba16.h"
};

static u16 txt_door_e_face[] =
{
#include "e_face.rgba16.h"
};

static u16 txt_door_e_side[] =
{
#include "e_side.rgba16.h"
};

static u16 txt_door_f_face[] =
{
#include "f_face.rgba16.h"
};

static u16 txt_door_f_side[] =
{
#include "f_side.rgba16.h"
};

static u16 txt_door_star[] =
{
#include "star.rgba16.h"
};

static u16 txt_door_star1[] =
{
#include "star1.rgba16.h"
};

static u16 txt_door_star2[] =
{
#include "star2.rgba16.h"
};

static u16 txt_door_star3[] =
{
#include "star3.rgba16.h"
};

static u16 txt_door_keyhole[] =
{
#include "keyhole.rgba16.h"
};

#include "a_h_side.vtx.h"
#include "a_h_face.vtx.h"
#include "a_h_knob_f.vtx.h"
#include "a_h_knob_b.vtx.h"

static Gfx gfx_door_a_h_panel[] =
{
	gsDPLoadImageBlock(txt_door_a_side, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
	gsSPSetLights1N(light_door_panel),
#include "a_h_side.h"
	gsDPLoadImageBlock(txt_door_a_face, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
#include "a_h_face.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_door_a_h_knob_f[] =
{
	gsSPSetLights1N(light_door_knob),
#include "a_h_knob_f.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_door_a_h_knob_b[] =
{
	gsSPSetLights1N(light_door_knob),
#include "a_h_knob_b.h"
	gsSPEndDisplayList(),
};

Gfx gfx_door_a_h[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_MODULATERGB, G_CC_MODULATERGB),
	gsSPClearGeometryMode(G_SHADING_SMOOTH),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_WRAP, G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
	gsSPDisplayList(gfx_door_a_h_panel),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_SHADING_SMOOTH),
	gsSPDisplayList(gfx_door_a_h_knob_f),
	gsSPDisplayList(gfx_door_a_h_knob_b),
	gsSPEndDisplayList(),
};

Gfx gfx_door_a_h_x[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_MODULATERGB, G_CC_MODULATERGB),
	gsSPClearGeometryMode(G_SHADING_SMOOTH),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_WRAP, G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
	gsSPDisplayList(gfx_door_a_h_panel),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_SHADING_SMOOTH),
	gsSPDisplayList(gfx_door_a_h_knob_f),
	gsSPEndDisplayList(),
};

#include "a_l_face.vtx.h"

static Vtx vtx_door_a_l_knob[] =
{
	{{{   492,    468,   -152}, 0, {     0,      0}, {   0,    0, -127, 0xFF}}},
	{{{   546,    412,   -152}, 0, {     0,      0}, {   0,    0, -127, 0xFF}}},
	{{{   492,    357,   -152}, 0, {     0,      0}, {   0,    0, -127, 0xFF}}},
	{{{   437,    412,   -152}, 0, {     0,      0}, {   0,    0, -127, 0xFF}}},
	{{{   492,    468,    153}, 0, {     0,      0}, {   0,    0,  127, 0xFF}}},
	{{{   492,    357,    153}, 0, {     0,      0}, {   0,    0,  127, 0xFF}}},
	{{{   546,    412,    153}, 0, {     0,      0}, {   0,    0,  127, 0xFF}}},
	{{{   437,    412,    153}, 0, {     0,      0}, {   0,    0,  127, 0xFF}}},
};

static Gfx gfx_door_a_l_panel[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_MODULATERGB, G_CC_MODULATERGB),
	gsSPClearGeometryMode(G_SHADING_SMOOTH),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_WRAP, G_TX_WRAP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
	gsDPLoadImageBlock(txt_door_a_face, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
	gsSPSetLights1N(light_door_panel),
#include "a_l_face.h"
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetLights1N(light_door_knob),
	gsSPVertex(vtx_door_a_l_knob, 8, 0),
	gsSP2Triangles( 4,  5,  6, 0,  4,  7,  5, 0),
	gsSPSetGeometryMode(G_SHADING_SMOOTH),
	gsSPEndDisplayList(),
};

Gfx gfx_door_a_l[] =
{
	gsSPDisplayList(gfx_door_a_l_panel),
	gsSP2Triangles( 0,  1,  2, 0,  0,  2,  3, 0),
	gsSPSetGeometryMode(G_SHADING_SMOOTH),
	gsSPEndDisplayList(),
};

Gfx gfx_door_a_l_x[] =
{
	gsSPDisplayList(gfx_door_a_l_panel),
	gsSPSetGeometryMode(G_SHADING_SMOOTH),
	gsSPEndDisplayList(),
};

static Vtx vtx_door_star_h[] =
{
	{{{   441,    850,     64}, 0, {   992,      0}, {   0,    0,  127, 0xFF}}},
	{{{   141,    850,     64}, 0, {     0,      0}, {   0,    0,  127, 0xFF}}},
	{{{   141,    550,     64}, 0, {     0,    992}, {   0,    0,  127, 0xFF}}},
	{{{   441,    550,     64}, 0, {   992,    992}, {   0,    0,  127, 0xFF}}},
};

static Vtx vtx_door_star_l[] =
{
	{{{   441,    850,     59}, 0, {   992,      0}, {   0,    0,  127, 0xFF}}},
	{{{   141,    850,     59}, 0, {     0,      0}, {   0,    0,  127, 0xFF}}},
	{{{   141,    550,     59}, 0, {     0,    992}, {   0,    0,  127, 0xFF}}},
	{{{   441,    550,     59}, 0, {   992,    992}, {   0,    0,  127, 0xFF}}},
};

static Gfx gfx_door_star_start[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_MODULATERGBA, G_CC_MODULATERGBA),
	gsSPClearGeometryMode(G_SHADING_SMOOTH),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
	gsSPSetLights1N(light_door_panel),
	gsSPEndDisplayList(),
};

static Gfx gfx_door_star_end[] =
{
	gsSP2Triangles( 0,  1,  2, 0,  0,  2,  3, 0),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_SHADING_SMOOTH),
	gsSPEndDisplayList(),
};

Gfx gfx_door_star_h[] =
{
	gsSPDisplayList(gfx_door_star_start),
	gsDPLoadImageBlock(txt_door_star, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPVertex(vtx_door_star_h, 4, 0),
	gsSPBranchList(gfx_door_star_end),
};

Gfx gfx_door_star_l[] =
{
	gsSPDisplayList(gfx_door_star_start),
	gsDPLoadImageBlock(txt_door_star, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPVertex(vtx_door_star_l, 4, 0),
	gsSPBranchList(gfx_door_star_end),
};

Gfx gfx_door_star1_h[] =
{
	gsSPDisplayList(gfx_door_star_start),
	gsDPLoadImageBlock(txt_door_star1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPVertex(vtx_door_star_h, 4, 0),
	gsSPBranchList(gfx_door_star_end),
};

Gfx gfx_door_star1_l[] =
{
	gsSPDisplayList(gfx_door_star_start),
	gsDPLoadImageBlock(txt_door_star1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPVertex(vtx_door_star_l, 4, 0),
	gsSPBranchList(gfx_door_star_end),
};

Gfx gfx_door_star2_h[] =
{
	gsSPDisplayList(gfx_door_star_start),
	gsDPLoadImageBlock(txt_door_star2, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPVertex(vtx_door_star_h, 4, 0),
	gsSPBranchList(gfx_door_star_end),
};

Gfx gfx_door_star2_l[] =
{
	gsSPDisplayList(gfx_door_star_start),
	gsDPLoadImageBlock(txt_door_star2, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPVertex(vtx_door_star_l, 4, 0),
	gsSPBranchList(gfx_door_star_end),
};

Gfx gfx_door_star3_h[] =
{
	gsSPDisplayList(gfx_door_star_start),
	gsDPLoadImageBlock(txt_door_star3, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPVertex(vtx_door_star_h, 4, 0),
	gsSPBranchList(gfx_door_star_end),
};

Gfx gfx_door_star3_l[] =
{
	gsSPDisplayList(gfx_door_star_start),
	gsDPLoadImageBlock(txt_door_star3, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPVertex(vtx_door_star_l, 4, 0),
	gsSPBranchList(gfx_door_star_end),
};

static Vtx vtx_door_keyhole_h[] =
{
	{{{   595,    916,     59}, 0, {   478,      0}, {   0,    0,  127, 0xFF}}},
	{{{   405,    544,     59}, 0, {     0,    992}, {   0,    0,  127, 0xFF}}},
	{{{   595,    544,     59}, 0, {   478,    992}, {   0,    0,  127, 0xFF}}},
	{{{   405,    916,     59}, 0, {     0,      0}, {   0,    0,  127, 0xFF}}},
	{{{   595,    544,    -58}, 0, {   478,    992}, {   0,    0, -127, 0xFF}}},
	{{{   405,    544,    -58}, 0, {     0,    992}, {   0,    0, -127, 0xFF}}},
	{{{   405,    916,    -58}, 0, {     0,      0}, {   0,    0, -127, 0xFF}}},
	{{{   595,    916,    -58}, 0, {   478,      0}, {   0,    0, -127, 0xFF}}},
};

static Vtx vtx_door_keyhole_l[] =
{
	{{{   595,    916,     64}, 0, {   480,      0}, {   0,    0,  127, 0xFF}}},
	{{{   405,    544,     64}, 0, {     0,    992}, {   0,    0,  127, 0xFF}}},
	{{{   595,    544,     64}, 0, {   480,    992}, {   0,    0,  127, 0xFF}}},
	{{{   405,    916,     64}, 0, {     0,      0}, {   0,    0,  127, 0xFF}}},
	{{{   595,    544,    -63}, 0, {   480,    992}, {   0,    0, -127, 0xFF}}},
	{{{   405,    544,    -63}, 0, {     0,    992}, {   0,    0, -127, 0xFF}}},
	{{{   405,    916,    -63}, 0, {     0,      0}, {   0,    0, -127, 0xFF}}},
	{{{   595,    916,    -63}, 0, {   480,      0}, {   0,    0, -127, 0xFF}}},
};

static Gfx gfx_door_keyhole_start[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_MODULATERGB, G_CC_MODULATERGB),
	gsSPClearGeometryMode(G_SHADING_SMOOTH),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 4, 5, G_TX_NOLOD, G_TX_NOLOD),
	gsDPLoadImageBlock(txt_door_keyhole, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32),
	gsSPSetLights1N(light_door_panel),
	gsSPEndDisplayList(),
};

static Gfx gfx_door_keyhole_end[] =
{
	gsSP2Triangles( 0,  1,  2, 0,  0,  3,  1, 0),
	gsSP2Triangles( 4,  5,  6, 0,  4,  6,  7, 0),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_SHADING_SMOOTH),
	gsSPEndDisplayList(),
};

Gfx gfx_door_keyhole_h[] =
{
	gsSPDisplayList(gfx_door_keyhole_start),
	gsSPVertex(vtx_door_keyhole_h, 8, 0),
	gsSPBranchList(gfx_door_keyhole_end),
};

Gfx gfx_door_keyhole_l[] =
{
	gsSPDisplayList(gfx_door_keyhole_start),
	gsSPVertex(vtx_door_keyhole_l, 8, 0),
	gsSPBranchList(gfx_door_keyhole_end),
};

#include "h_side.vtx.h"
#include "h_face.vtx.h"
#include "h_knob.vtx.h"

static Gfx gfx_door_h_knob[] =
{
#include "h_knob.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_door_h_side[] =
{
	gsSPSetLights1N(light_door_panel),
#include "h_side.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_door_h_face[] =
{
#include "h_face.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_door_h_start[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_MODULATERGB, G_CC_MODULATERGB),
	gsSPClearGeometryMode(G_SHADING_SMOOTH),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsSPEndDisplayList(),
};

Gfx gfx_door_b_h[] =
{
	gsSPDisplayList(gfx_door_h_start),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_WRAP, G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
	gsDPLoadImageBlock(txt_door_b_side, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_door_h_side),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
	gsDPLoadImageBlock(txt_door_b_face, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
	gsSPDisplayList(gfx_door_h_face),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_SHADING_SMOOTH),
	gsSPSetLights1N(light_door_knob),
	gsSPBranchList(gfx_door_h_knob),
};

Gfx gfx_door_c_h[] =
{
	gsSPDisplayList(gfx_door_h_start),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_WRAP, G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
	gsDPLoadImageBlock(txt_door_b_side, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_door_h_side),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
	gsDPLoadImageBlock(txt_door_b_face, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
	gsSPDisplayList(gfx_door_h_face),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_SHADING_SMOOTH),
	gsSPSetLights1N(light_door_knob),
	gsSPBranchList(gfx_door_h_knob),
};

Gfx gfx_door_d_h[] =
{
	gsSPDisplayList(gfx_door_h_start),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_WRAP, G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
	gsDPLoadImageBlock(txt_door_d_side, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_door_h_side),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
	gsDPLoadImageBlock(txt_door_d_face, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
	gsSPDisplayList(gfx_door_h_face),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_SHADING_SMOOTH),
	gsSPSetLights1N(light_door_knob),
	gsSPBranchList(gfx_door_h_knob),
};

Gfx gfx_door_e_h[] =
{
	gsSPDisplayList(gfx_door_h_start),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_WRAP, G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
	gsDPLoadImageBlock(txt_door_e_side, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_door_h_side),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
	gsDPLoadImageBlock(txt_door_e_face, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
	gsSPDisplayList(gfx_door_h_face),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_SHADING_SMOOTH),
	gsSPSetLights1N(light_door_knob),
	gsSPBranchList(gfx_door_h_knob),
};

Gfx gfx_door_f_h[] =
{
	gsSPDisplayList(gfx_door_h_start),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_WRAP, G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
	gsDPLoadImageBlock(txt_door_f_side, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_door_h_side),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
	gsDPLoadImageBlock(txt_door_f_face, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
	gsSPDisplayList(gfx_door_h_face),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_SHADING_SMOOTH),
	gsSPSetLights1N(light_door_knob),
	gsSPBranchList(gfx_door_h_knob),
};

#include "l_panel.vtx.h"
#include "l_knob.vtx.h"

static Gfx gfx_door_l_panel[] =
{
	gsSPSetLights1N(light_door_panel),
#include "l_panel.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_door_l_knob[] =
{
#include "l_knob.h"
	gsSPSetGeometryMode(G_SHADING_SMOOTH),
	gsSPEndDisplayList(),
};

static Gfx gfx_door_l_start[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_MODULATERGB, G_CC_MODULATERGB),
	gsSPClearGeometryMode(G_SHADING_SMOOTH),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsSPEndDisplayList(),
};

Gfx gfx_door_b_l[] =
{
	gsSPDisplayList(gfx_door_l_start),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
	gsDPLoadImageBlock(txt_door_b_face, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
	gsSPDisplayList(gfx_door_l_panel),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetLights1N(light_door_knob),
	gsSPBranchList(gfx_door_l_knob),
};

Gfx gfx_door_c_l[] =
{
	gsSPDisplayList(gfx_door_l_start),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
	gsDPLoadImageBlock(txt_door_b_face, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
	gsSPDisplayList(gfx_door_l_panel),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetLights1N(light_door_knob),
	gsSPBranchList(gfx_door_l_knob),
};

Gfx gfx_door_d_l[] =
{
	gsSPDisplayList(gfx_door_l_start),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
	gsDPLoadImageBlock(txt_door_d_face, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
	gsSPDisplayList(gfx_door_l_panel),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetLights1N(light_door_knob),
	gsSPBranchList(gfx_door_l_knob),
};

Gfx gfx_door_e_l[] =
{
	gsSPDisplayList(gfx_door_l_start),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
	gsDPLoadImageBlock(txt_door_e_face, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
	gsSPDisplayList(gfx_door_l_panel),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetLights1N(light_door_knob),
	gsSPBranchList(gfx_door_l_knob),
};

Gfx gfx_door_f_l[] =
{
	gsSPDisplayList(gfx_door_l_start),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
	gsDPLoadImageBlock(txt_door_f_face, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
	gsSPDisplayList(gfx_door_l_panel),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetLights1N(light_door_knob),
	gsSPBranchList(gfx_door_l_knob),
};

static s16 anime_door_0_val[] =
{
	 0x0000, -0x012C,
};

static u16 anime_door_0_tbl[] =
{
	    1,     1,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
};

static ANIME anime_door_0 =
{
	/* flag     */  ANIME_LOOP|ANIME_XYZ,
	/* waist    */  0,
	/* start    */  0,
	/* end      */  0,
	/* frame    */  80,
	/* joint    */  4,
	anime_door_0_val,
	anime_door_0_tbl,
	0,
};

static s16 anime_door_1_val[] =
{
	 0x0000, -0x012C,  0x0000,  0x0000,  0x0000,  0x0000,  0x0000,  0x0000,
	 0x0000,  0x0000,  0x0000,  0x0000,  0x0000,  0x0002,  0x0006,  0x0005,
	 0x0003,  0x0001,  0x0000,  0x0000,  0x0000, -0x0001, -0x0002, -0x0001,
	 0x0000,  0x0002,  0x0007,  0x000D,  0x0014,  0x001B,  0x0023,  0x002B,
	 0x0034,  0x003D,  0x0046,  0x004F,  0x0058,  0x0061,  0x006A,  0x0073,
	 0x007C,  0x0085,  0x008D,  0x0095,  0x009D,  0x00A4,  0x00AB,  0x00B1,
	 0x00B6,  0x00BB,  0x00BF,  0x00C3,  0x00C7,  0x00CA,  0x00CD,  0x00CF,
	 0x00D1,  0x00D2,  0x00D3,  0x00D3,  0x00D3,  0x00D1,  0x00D0,  0x00CD,
	 0x00CA,  0x00C6,  0x00C1,  0x00BB,  0x00B3,  0x00A8,  0x009A,  0x008A,
	 0x0078,  0x0066,  0x0053,  0x0040,  0x002E,  0x001C,  0x000D,  0x0000,
	-0x0007, -0x0009,  0x0000,  0x0000,  0x0000,  0x0000,  0x0000,  0x0000,
	 0x0000,  0x0000,  0x0000,  0x0000,  0x0000,  0x0068,  0x0285,  0x0803,
	 0x0DAB,  0x0FB3,  0x1184,  0x1529,  0x194B,  0x1DAB,  0x220E,  0x2635,
	 0x29E2,  0x2CD9,  0x2EDA,  0x3048,  0x31AC,  0x3305,  0x3451,  0x3591,
	 0x36C2,  0x37E3,  0x38F4,  0x39F4,  0x3AE1,  0x3BBA,  0x3C7F,  0x3D2E,
	 0x3DC6,  0x3E45,  0x3EAC,  0x3EF9,  0x3F2B,  0x3F40,  0x3F38,  0x3F12,
	 0x3ECC,  0x3E66,  0x3E66,  0x3E66,  0x3E66,  0x3E66,  0x3E66,  0x3E66,
	 0x3E66,  0x3E66,  0x3E66,  0x3E66,  0x3E66,  0x3E66,  0x3E66,  0x3E66,
	 0x3E66,  0x3E66,  0x3E66,  0x3E66,  0x3CAC,  0x3AF1,  0x3937,  0x377D,
	 0x35C2,  0x3408,  0x324E,  0x3093,  0x246E,  0x1849,  0x0C24,  0x0000,
	 0x012E,  0x01EB,  0x0000,  0x0000,  0x0000,  0x0000,  0x0000,  0x0000,
	 0x0000,  0x0000,  0x0000,  0x0000,  0x0000,  0x0002,  0x0006,  0x0005,
	 0x0003,  0x0003,  0x0005,  0x0005,  0x0005,  0x0005,  0x0005,  0x0005,
	 0x0007,  0x000A,  0x000F,  0x0015,  0x001C,  0x0023,  0x002B,  0x0033,
	 0x003C,  0x0044,  0x004D,  0x0056,  0x005F,  0x0068,  0x0071,  0x007A,
	 0x0083,  0x008B,  0x0094,  0x009C,  0x00A3,  0x00AA,  0x00B1,  0x00B7,
	 0x00BC,  0x00C1,  0x00C5,  0x00C9,  0x00CC,  0x00D0,  0x00D3,  0x00D5,
	 0x00D7,  0x00D8,  0x00D9,  0x00D9,  0x00D9,  0x00D8,  0x00D6,  0x00D3,
	 0x00D0,  0x00CC,  0x00C7,  0x00C1,  0x00B9,  0x00AD,  0x009F,  0x008E,
	 0x007C,  0x0069,  0x0056,  0x0042,  0x002F,  0x001E,  0x000D,  0x0000,
	-0x0008, -0x000A,
};

static u16 anime_door_1_tbl[] =
{
	    1,     1,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
	   80,     2,    80,    82,    80,   162,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
};

static ANIME anime_door_1 =
{
	/* flag     */  ANIME_NOLOOP|ANIME_XYZ,
	/* waist    */  0,
	/* start    */  0,
	/* end      */  0,
	/* frame    */  80,
	/* joint    */  4,
	anime_door_1_val,
	anime_door_1_tbl,
	0,
};

static ANIME anime_door_3 =
{
	/* flag     */  ANIME_NOLOOP|ANIME_XYZ,
	/* waist    */  0,
	/* start    */  40,
	/* end      */  40,
	/* frame    */  80,
	/* joint    */  4,
	anime_door_1_val,
	anime_door_1_tbl,
	0,
};

static s16 anime_door_2_val[] =
{
	 0x0000, -0x012C,  0x0000,  0x0000,  0x0000,  0x0000,  0x0000,  0x0000,
	 0x0000,  0x0000,  0x0001,  0x0003,  0x0001,  0x0000, -0x0009, -0x0021,
	-0x003F, -0x005A, -0x0068, -0x0061, -0x003A,  0x0013,  0x00A5,  0x017E,
	 0x0281,  0x0395,  0x049C,  0x057C,  0x061A,  0x065A,  0x0650,  0x0629,
	 0x05E7,  0x058F,  0x0525,  0x04AE,  0x042D,  0x03A6,  0x031E,  0x0299,
	 0x021B,  0x01A8,  0x0144,  0x00F4,  0x00BB,  0x0094,  0x0077,  0x0063,
	 0x0056,  0x004F,  0x004F,  0x0053,  0x005C,  0x0067,  0x0074,  0x0083,
	 0x0091,  0x009F,  0x00AC,  0x00B6,  0x00BC,  0x00BE,  0x00BB,  0x00B3,
	 0x00A8,  0x009A,  0x008A,  0x0078,  0x0066,  0x0053,  0x0040,  0x002E,
	 0x001C,  0x000D,  0x0000, -0x0007, -0x0009, -0x0007, -0x0006, -0x0004,
	-0x0001,  0x0000,  0x0000,  0x0000,  0x0000,  0x0000,  0x0000,  0x0000,
	 0x0000,  0x0000,  0x05B0,  0x0DAB,  0x101D,  0x1255,  0x16C3,  0x1BA6,
	 0x20C9,  0x25F7,  0x2AFB,  0x2FA1,  0x33B5,  0x3700,  0x3983,  0x3B6E,
	 0x3CDA,  0x3DDE,  0x3E91,  0x3F0C,  0x3F65,  0x3FB4,  0x3FFF,  0x403B,
	 0x4069,  0x4088,  0x4099,  0x409C,  0x4091,  0x4078,  0x4053,  0x4020,
	 0x3FE1,  0x3F94,  0x3F3C,  0x3ED7,  0x3E66,  0x3E66,  0x3E66,  0x3E66,
	 0x3E66,  0x3E66,  0x3E66,  0x3E66,  0x3E66,  0x3E66,  0x3E66,  0x3E66,
	 0x3E66,  0x3E66,  0x3E66,  0x3E66,  0x3E66,  0x3E66,  0x3E66,  0x3CAC,
	 0x3AF1,  0x3937,  0x377D,  0x35C2,  0x3408,  0x324E,  0x3093,  0x246E,
	 0x1849,  0x0C24,  0x0000,  0x012E,  0x01EB,  0x024D,  0x0268,  0x0214,
	 0x0137,  0x0000,  0x0000,  0x0000,  0x0000,  0x0000,  0x0000,  0x0000,
	 0x0000,  0x0000,  0x0001,  0x0003,  0x0001,  0x0000, -0x0009, -0x0021,
	-0x003F, -0x005B, -0x0069, -0x0062, -0x003B,  0x0013,  0x00A6,  0x0180,
	 0x0285,  0x039A,  0x04A3,  0x0585,  0x0624,  0x0664,  0x065B,  0x0633,
	 0x05F1,  0x0599,  0x052F,  0x04B7,  0x0436,  0x03AE,  0x0326,  0x02A0,
	 0x0222,  0x01AE,  0x014A,  0x00FA,  0x00C1,  0x009A,  0x007D,  0x0068,
	 0x005B,  0x0055,  0x0055,  0x0059,  0x0062,  0x006D,  0x007A,  0x0089,
	 0x0098,  0x00A6,  0x00B2,  0x00BC,  0x00C2,  0x00C4,  0x00C1,  0x00B9,
	 0x00AD,  0x009F,  0x008E,  0x007C,  0x0069,  0x0056,  0x0042,  0x002F,
	 0x001E,  0x000D,  0x0000, -0x0008, -0x000A, -0x0009, -0x0008, -0x0005,
	-0x0002,  0x0000,
};

static u16 anime_door_2_tbl[] =
{
	    1,     1,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
	   80,     2,    80,    82,    80,   162,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
};

static ANIME anime_door_2 =
{
	/* flag     */  ANIME_LOOP|ANIME_XYZ,
	/* waist    */  0,
	/* start    */  0,
	/* end      */  0,
	/* frame    */  80,
	/* joint    */  4,
	anime_door_2_val,
	anime_door_2_tbl,
	0,
};

static ANIME anime_door_4 =
{
	/* flag     */  ANIME_NOLOOP|ANIME_XYZ,
	/* waist    */  0,
	/* start    */  40,
	/* end      */  40,
	/* frame    */  80,
	/* joint    */  4,
	anime_door_2_val,
	anime_door_2_tbl,
	0,
};

ANIME *anime_door[] =
{
	&anime_door_0,
	&anime_door_1,
	&anime_door_2,
	&anime_door_3,
	&anime_door_4,
};
