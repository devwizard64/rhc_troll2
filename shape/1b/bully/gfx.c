#include "horn.vtx.h"

static u16 txt_bully_horn[] =
{
#include "horn.rgba16.h"
};

static Gfx gfx_bully_horn[] =
{
	gsDPLoadImageBlock(txt_bully_horn, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16),
#include "horn.h"
	gsSPEndDisplayList(),
};

Gfx gfx_bully_horn_s[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_DECALRGB, G_CC_DECALRGB),
	gsSPClearGeometryMode(G_LIGHTING),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_WRAP, G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
	gsSPDisplayList(gfx_bully_horn),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_LIGHTING),
	gsSPEndDisplayList(),
};

static Lights1 light_bully[] =
{
	gdSPDefLight(0.25, 0x00, 0xE3, 0x00),
	gdSPDefLight(0.25, 0x00, 0xFF, 0x00),
	gdSPDefLight(0.25, 0xFF, 0xA5, 0x00),
	gdSPDefLight(0.25, 0x00, 0x00, 0x00),
};

static u16 txt_bully_body_l[] =
{
#include "body_l.rgba16.h"
};

static u16 txt_bully_body_r[] =
{
#include "body_r.rgba16.h"
};

static u16 txt_bully_eye[] =
{
#include "eye.rgba16.h"
};

#include "shoeL.vtx.h"
#include "shoeR.vtx.h"
#include "eye_old.vtx.h"
#include "body_old.vtx.h"

Gfx gfx_bully_shoeL[] =
{
	gsSPSetLights1N(light_bully[0]),
#include "shoeL.h"
	gsSPEndDisplayList(),
};

Gfx gfx_bully_shoeR[] =
{
	gsSPSetLights1N(light_bully[1]),
#include "shoeR.h"
	gsSPEndDisplayList(),
};

Gfx gfx_bully_eye_old[] =
{
	gsSPSetLights1N(light_bully[4]),
#include "eye_old.h"
	gsSPEndDisplayList(),
};

Gfx gfx_bully_body_old[] =
{
	gsSPSetLights1N(light_bully[3]),
#include "body_old.h"
	gsSPEndDisplayList(),
};

#include "body_l.vtx.h"
#include "body_r.vtx.h"

static Gfx gfx_bully_body_l[] =
{
	gsDPLoadImageBlock(txt_bully_body_l, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
#include "body_l.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_bully_body_r[] =
{
	gsDPLoadImageBlock(txt_bully_body_r, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
#include "body_r.h"
	gsSPEndDisplayList(),
};

Gfx gfx_bully_body_s[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_DECALRGBA, G_CC_DECALRGBA),
	gsSPClearGeometryMode(G_LIGHTING),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
	gsSPDisplayList(gfx_bully_body_l),
	gsSPDisplayList(gfx_bully_body_r),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_LIGHTING),
	gsSPEndDisplayList(),
};

#include "body_big_l.vtx.h"
#include "body_big_r.vtx.h"

static Gfx gfx_bully_body_big_l[] =
{
	gsDPLoadImageBlock(txt_bully_body_l, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
#include "body_big_l.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_bully_body_big_r[] =
{
	gsDPLoadImageBlock(txt_bully_body_r, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
#include "body_big_r.h"
	gsSPEndDisplayList(),
};

Gfx gfx_bully_body_big_s[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_DECALRGBA, G_CC_DECALRGBA),
	gsSPClearGeometryMode(G_LIGHTING),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 6, G_TX_NOLOD, G_TX_NOLOD),
	gsSPDisplayList(gfx_bully_body_big_l),
	gsSPDisplayList(gfx_bully_body_big_r),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_LIGHTING),
	gsSPEndDisplayList(),
};

#include "eye.vtx.h"

static Gfx gfx_bully_eye[] =
{
	gsDPLoadImageBlock(txt_bully_eye, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
#include "eye.h"
	gsSPEndDisplayList(),
};

Gfx gfx_bully_eye_s[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_DECALRGBA, G_CC_DECALRGBA),
	gsSPClearGeometryMode(G_LIGHTING),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
	gsSPDisplayList(gfx_bully_eye),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_LIGHTING),
	gsSPEndDisplayList(),
};

static s16 anime_bully_2_val[] =
{
	 0x0000,  0x00AE,  0x00AE,  0x00AD,  0x00AB,  0x00A8,  0x00A4,  0x009F,
	 0x0098,  0x0090,  0x009D,  0x00A9,  0x00B1,  0x00B5,  0x00B3,  0x00B1,
	 0x00AE,  0x00AC,  0x00AB,  0x00AC,  0x00AD,  0x00AE,  0x00AE,  0x0000,
	 0x0000,  0x0000,  0x0000,  0x0000,  0x0000,  0x0000,  0x0000,  0x0000,
	 0x0000, -0x0001, -0x0001,  0x0000,  0x0003,  0x0009,  0x000E,  0x0010,
	 0x000E,  0x000A,  0x0005,  0x0001,  0x0000,  0x3FFF,  0x0000,  0x0000,
	 0x0001,  0x0002,  0x0003,  0x0004,  0x0004,  0x0004,  0x0005,  0x0005,
	 0x0005,  0x0006,  0x0006,  0x0006,  0x0006,  0x0006,  0x0006,  0x0005,
	 0x0003,  0x0002,  0x0000,  0x0000,  0x0000, -0x0307, -0x09E1, -0x1130,
	-0x1597, -0x1762, -0x1910, -0x1A9C, -0x1BFD, -0x1D2B, -0x1E1E, -0x1ECF,
	-0x1F37, -0x1F4C, -0x1F08, -0x1E63, -0x1D55, -0x1978, -0x1218, -0x09B7,
	-0x02D8,  0x0000, -0x152C, -0x1D02, -0x2E90, -0x40E3, -0x4B09, -0x4D94,
	-0x4F25, -0x4FDD, -0x4FDF, -0x4F4D, -0x4E4A, -0x4CF8, -0x4B79, -0x49EF,
	-0x487E, -0x4747, -0x466C, -0x4564, -0x43D6, -0x4231, -0x40E3, -0x405B,
	-0x7FFF, -0x7FFF,  0x7C2E,  0x739E,  0x6AA0,  0x6583,  0x63EA,  0x6295,
	 0x6186,  0x60BB,  0x6036,  0x5FF7,  0x5FFF,  0x604C,  0x60E1,  0x61BC,
	 0x62DF,  0x644A,  0x682B,  0x6F2A,  0x76FD,  0x7D5D, -0x7FFF,  0x6CDC,
	 0x64A9,  0x524D,  0x3F22,  0x3484,  0x31DA,  0x3036,  0x2F75,  0x2F71,
	 0x3008,  0x3116,  0x3276,  0x3406,  0x35A0,  0x3721,  0x3865,  0x3949,
	 0x3A5D,  0x3BFE,  0x3DB7,  0x3F14,  0x3FA3, -0x2D7E, -0x33D1, -0x41D9,
	-0x5030, -0x576F, -0x5822, -0x57E0, -0x56CE, -0x5512, -0x52D2, -0x5035,
	-0x4D60, -0x4A7B, -0x47AA, -0x4514, -0x42DF, -0x4131, -0x4038, -0x3FDF,
	-0x3FEB, -0x401E, -0x403C, -0x2DE6, -0x3423, -0x41FB, -0x5020, -0x5743,
	-0x57F1, -0x57AB, -0x5697, -0x54DC, -0x529F, -0x5005, -0x4D35, -0x4A54,
	-0x4789, -0x44F8, -0x42C7, -0x411C, -0x4027, -0x3FD4, -0x3FE5, -0x401C,
	-0x403C, -0x3FB1, -0x3FB1,  0x3CD6,  0x3C90,  0x3BD7,  0x3AD7,  0x39B8,
	 0x37F9,  0x35B2,  0x33F6,  0x33D8,  0x3557,  0x3792,  0x3A47,  0x3D38,
	 0x4025,  0x42CD,  0x44F1,  0x4651,  0x4636,  0x44A4,  0x4276,  0x4086,
	 0x3FB1,
};

static u16 anime_bully_2_tbl[] =
{
	    1,     0,    22,     1,    22,    23,
	    1,     0,     1,    45,     1,     0,
	    1,     0,     1,     0,    22,   203,
	    1,     0,     1,     0,     1,   202,
	    1,     0,     1,     0,    22,   157,
	   22,    46,    22,    68,    22,    90,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,   201,
	    1,     0,     1,     0,    22,   179,
	    1,   112,    22,   113,    22,   135,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
};

static ANIME anime_bully_2 =
{
	/* flag     */  ANIME_LOOP|ANIME_XYZ,
	/* waist    */  0,
	/* start    */  0,
	/* end      */  0,
	/* frame    */  22,
	/* joint    */  13,
	anime_bully_2_val,
	anime_bully_2_tbl,
	0,
};

static s16 anime_bully_1_val[] =
{
	 0x0000,  0x00B4,  0x00B1,  0x00AE,  0x00B0,  0x00B2,  0x00B4,  0x00B1,
	 0x00AE,  0x00B0,  0x00B3,  0x3FFF, -0x4A8B, -0x4AA7, -0x49B4, -0x4463,
	-0x430D, -0x41FD, -0x3C80, -0x431A, -0x47A5, -0x4A5E, -0x7FFF, -0x7FFF,
	 0x3FA3,  0x42BE,  0x3D15,  0x3757,  0x36AE,  0x3714,  0x3798,  0x3A46,
	 0x3D78,  0x3F80, -0x2762, -0x2ACD, -0x3323, -0x3D83, -0x470C, -0x4CDD,
	-0x482A, -0x3DE0, -0x322A, -0x281E, -0x4C75, -0x48A5, -0x3F8D, -0x34B2,
	-0x2B9A, -0x27CA, -0x2CD5, -0x3842, -0x447E, -0x4BF9, -0x3FB1, -0x3FB1,
	 0x3FB1,
};

static u16 anime_bully_1_tbl[] =
{
	    1,     0,    10,     1,     1,     0,
	    1,     0,     1,    11,     1,     0,
	    1,     0,     1,     0,     1,    56,
	    1,     0,     1,     0,     1,    55,
	    1,     0,     1,     0,    10,    34,
	    1,     0,     1,     0,    10,    12,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,    54,
	    1,     0,     1,     0,    10,    44,
	    1,    22,     1,    23,    10,    24,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
};

static ANIME anime_bully_1 =
{
	/* flag     */  ANIME_LOOP|ANIME_XYZ,
	/* waist    */  0,
	/* start    */  0,
	/* end      */  0,
	/* frame    */  10,
	/* joint    */  13,
	anime_bully_1_val,
	anime_bully_1_tbl,
	0,
};

static s16 anime_bully_0_val[] =
{
	 0x0000,  0x00B4,  0x00B3,  0x00B2,  0x00B0,  0x00AF,  0x00AE,  0x00AF,
	 0x00AF,  0x00B0,  0x00B1,  0x00B2,  0x00B3,  0x00B4,  0x00B3,  0x00B2,
	 0x00B1,  0x00B0,  0x00AF,  0x00AE,  0x00AF,  0x00B0,  0x00B2,  0x00B3,
	 0x00B4,  0x3FFF, -0x4A8B, -0x4A9C, -0x4AB5, -0x4AB1, -0x4A68, -0x49B4,
	-0x471B, -0x4463, -0x437F, -0x4312, -0x42D8, -0x4292, -0x41FD, -0x40A2,
	-0x3EBF, -0x3D1B, -0x3C80, -0x3F4C, -0x431A, -0x4547, -0x474D, -0x48FA,
	-0x4A1F, -0x4A8B, -0x7FFF, -0x7FFF,  0x3FA3,  0x4038,  0x4174,  0x428E,
	 0x42BE,  0x3D15,  0x398E,  0x3757,  0x36B5,  0x368F,  0x36B4,  0x36F1,
	 0x3714,  0x3708,  0x36F8,  0x3716,  0x3798,  0x3899,  0x39F7,  0x3B82,
	 0x3D08,  0x3E5A,  0x3F49,  0x3FA3, -0x2762, -0x2805, -0x29CE, -0x2C85,
	-0x2FF7, -0x33EE, -0x3835, -0x3C97, -0x40E0, -0x44DA, -0x4850, -0x4B0E,
	-0x4CDD, -0x4D1B, -0x4B9A, -0x48D7, -0x454E, -0x417D, -0x3DE0, -0x3965,
	-0x338C, -0x2DB1, -0x292F, -0x2762, -0x4C75, -0x4BBC, -0x49BE, -0x46BA,
	-0x42F3, -0x3EAA, -0x3A1F, -0x3595, -0x314C, -0x2D85, -0x2A81, -0x2883,
	-0x27CA, -0x28A5, -0x2AFC, -0x2E7C, -0x32CF, -0x37A1, -0x3C9E, -0x4170,
	-0x45C3, -0x4943, -0x4B9A, -0x4C75, -0x3FB1, -0x3FB1,  0x3FB1,
};

static u16 anime_bully_0_tbl[] =
{
	    1,     0,    24,     1,     1,     0,
	    1,     0,     1,    25,     1,     0,
	    1,     0,     1,     0,     1,   126,
	    1,     0,     1,     0,     1,   125,
	    1,     0,     1,     0,    24,    76,
	    1,     0,     1,     0,    24,    26,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,   124,
	    1,     0,     1,     0,    24,   100,
	    1,    50,     1,    51,    24,    52,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
};

static ANIME anime_bully_0 =
{
	/* flag     */  ANIME_LOOP|ANIME_XYZ,
	/* waist    */  0,
	/* start    */  0,
	/* end      */  0,
	/* frame    */  24,
	/* joint    */  13,
	anime_bully_0_val,
	anime_bully_0_tbl,
	0,
};

static s16 anime_bully_3_val[] =
{
	 0x0000,  0x00AE,  0x00AE,  0x00AE,  0x00C1,  0x00D0,  0x00D7,  0x00D3,
	 0x00CA,  0x00BD,  0x00AE,  0x00AE,  0x00AE,  0x3FFF, -0x3FF3, -0x40EB,
	-0x3FEB, -0x3422, -0x3C27, -0x4796, -0x4E36, -0x4DAC, -0x4A41, -0x45AE,
	-0x41AB, -0x3FF3, -0x7FFF, -0x7FFF,  0x3FA3,  0x3EF5,  0x4050,  0x4BDC,
	 0x43F9,  0x38BD,  0x3231,  0x329C,  0x35D3,  0x3A2B,  0x3DFE,  0x3FA3,
	-0x360C, -0x394C, -0x4070, -0x4795, -0x4AD4, -0x40B2, -0x360C, -0x3902,
	-0x4001, -0x4520, -0x4352, -0x403E, -0x360C, -0x394C, -0x4070, -0x4795,
	-0x4AD4, -0x40B2, -0x360C, -0x3902, -0x4001, -0x4520, -0x4352, -0x403E,
	-0x3FB1, -0x3FB1,  0x3581,  0x38C0,  0x3FE5,  0x4709,  0x4A48,  0x4027,
	 0x3581,  0x3877,  0x3F76,  0x4494,  0x42C7,  0x3FB2,
};

static u16 anime_bully_3_tbl[] =
{
	    1,     0,    12,     1,     1,     0,
	    1,     0,     1,    13,     1,     0,
	    1,     0,     1,     0,    12,    66,
	    1,     0,     1,     0,     1,    65,
	    1,     0,     1,     0,    12,    40,
	    1,     0,     1,     0,    12,    14,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,    64,
	    1,     0,     1,     0,    12,    52,
	    1,    26,     1,    27,    12,    28,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
};

static ANIME anime_bully_3 =
{
	/* flag     */  ANIME_LOOP|ANIME_XYZ,
	/* waist    */  0,
	/* start    */  0,
	/* end      */  0,
	/* frame    */  12,
	/* joint    */  13,
	anime_bully_3_val,
	anime_bully_3_tbl,
	0,
};

ANIME *anime_bully[] =
{
	&anime_bully_0,
	&anime_bully_1,
	&anime_bully_2,
	&anime_bully_3,
	NULL,
};
