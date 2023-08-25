static Lights1 light_fish = gdSPDefLight(0.25, 0xFF, 0xFF, 0xFF);

static u16 txt_fish[] =
{
#include "texture.rgba16.h"
};

#include "body.vtx.h"

static Gfx gfx_fish_body[] =
{
	gsDPLoadImageBlock(txt_fish, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_fish),
#include "body.h"
	gsSPEndDisplayList(),
};

Gfx gfx_fish_body_s[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_MODULATERGB, G_CC_MODULATERGB),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
	gsSPDisplayList(gfx_fish_body),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPEndDisplayList(),
};

#include "tail.vtx.h"

static Gfx gfx_fish_tail[] =
{
	gsDPLoadImageBlock(txt_fish, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_fish),
#include "tail.h"
	gsSPEndDisplayList(),
};

Gfx gfx_fish_tail_s[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_MODULATERGB, G_CC_MODULATERGB),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, G_TX_NOLOD, G_TX_NOLOD),
	gsSPDisplayList(gfx_fish_tail),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPEndDisplayList(),
};

static s16 anime_fish_0_val[] =
{
	 0x0000, -0x000F, -0x000F, -0x000E, -0x000C, -0x0009, -0x0006, -0x0003,
	 0x0000,  0x0002,  0x0005,  0x0008,  0x000A,  0x000C,  0x000E,  0x000E,
	 0x000E,  0x000D,  0x000C,  0x000A,  0x0009,  0x0006,  0x0004,  0x0002,
	 0x0000, -0x0003, -0x0005, -0x0008, -0x000A, -0x000D, -0x000F, -0x3FFF,
	-0x0C0A, -0x09E6, -0x0509,  0x003A,  0x0390,  0x052A,  0x06BA,  0x0832,
	 0x0984,  0x0AA1,  0x0B7C,  0x0C06,  0x0C31,  0x0BEE,  0x0B2F,  0x078D,
	 0x00B3, -0x0656, -0x0A87, -0x0C01, -0x0CFA, -0x0D85, -0x0DB9, -0x0DA8,
	-0x0D68, -0x0D0C, -0x0CAA, -0x0C55, -0x0C22, -0x0C26,  0x461C,  0x4623,
	 0x462E,  0x4629,  0x4603,  0x45AA,  0x450A,  0x4410,  0x42C9,  0x4151,
	 0x3FC6,  0x3E45,  0x3CEA,  0x3BD2,  0x3B1B,  0x3ACE,  0x3AD5,  0x3B20,
	 0x3BA0,  0x3C43,  0x3CFA,  0x3DB5,  0x3E7E,  0x3F66,  0x4066,  0x4177,
	 0x4292,  0x43AF,  0x44C7,  0x45D4,
};

static u16 anime_fish_0_tbl[] =
{
	   30,     1,     1,     0,     1,     0,
	    1,    31,     1,     0,     1,     0,
	    1,     0,     1,     0,    30,    62,
	    1,     0,     1,     0,    30,    32,
};

static ANIME anime_fish_0 =
{
	/* flag     */  ANIME_LOOP|ANIME_XYZ,
	/* waist    */  0,
	/* start    */  0,
	/* end      */  0,
	/* frame    */  30,
	/* joint    */  3,
	anime_fish_0_val,
	anime_fish_0_tbl,
	0,
};

ANIME *anime_fish[] =
{
	&anime_fish_0,
};
