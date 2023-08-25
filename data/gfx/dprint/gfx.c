Gfx gfx_dprint_copy_start[] =
{
	gsDPPipeSync(),
	gsDPSetCycleType(G_CYC_COPY),
	gsDPSetTexturePersp(G_TP_NONE),
	gsDPSetAlphaCompare(G_AC_THRESHOLD),
	gsDPSetBlendColor(0xFF, 0xFF, 0xFF, 0xFF),
	gsDPSetRenderMode(G_RM_AA_XLU_SURF, G_RM_AA_XLU_SURF2),
	gsSPEndDisplayList(),
};

Gfx gfx_dprint_copy_char[] =
{
	gsDPLoadTextureBlockN(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_WRAP, G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
	gsSPEndDisplayList(),
};

Gfx gfx_dprint_copy_end[] =
{
	gsDPPipeSync(),
	gsDPSetTexturePersp(G_TP_PERSP),
	gsDPSetRenderMode(G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2),
	gsDPSetAlphaCompare(G_AC_NONE),
	gsDPSetCycleType(G_CYC_1CYCLE),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsSPEndDisplayList(),
};

Gfx gfx_dprint_1cyc_start[] =
{
	gsDPPipeSync(),
	gsDPSetTexturePersp(G_TP_NONE),
	gsDPSetCombineMode(G_CC_MODULATERGBA_ENV, G_CC_MODULATERGBA_ENV),
	gsDPSetEnvColor(0xFF, 0xFF, 0xFF, 0xFF),
	gsDPSetRenderMode(G_RM_AA_XLU_SURF, G_RM_AA_XLU_SURF2),
	gsDPSetTextureFilter(G_TF_POINT),
	gsSPEndDisplayList(),
};

Gfx gfx_dprint_1cyc_char[] =
{
	gsDPLoadTextureBlockN(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_WRAP, G_TX_WRAP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
	gsSPEndDisplayList(),
};

Gfx gfx_dprint_1cyc_end[] =
{
	gsDPPipeSync(),
	gsDPSetTexturePersp(G_TP_PERSP),
	gsDPSetRenderMode(G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsDPSetEnvColor(0xFF, 0xFF, 0xFF, 0xFF),
	gsDPSetTextureFilter(G_TF_BILERP),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsSPEndDisplayList(),
};

#define DEMO_SX 12
#define DEMO_X  (SCREEN_WD/2-DEMO_SX*9/2)
#define DEMO_Y  (SCREEN_HT-BORDER_HT-16-8)

Gfx gfx_demomode[] =
{
	gsDPPipeSync(),
	gsDPSetCombineLERP(
		0, 0, 0, TEXEL0, TEXEL0, 0, PRIMITIVE, 0,
		0, 0, 0, TEXEL0, TEXEL0, 0, PRIMITIVE, 0
	),
	gsSPSetOtherMode(
		G_SETOTHERMODE_H, 0, 24,
		G_PM_1PRIMITIVE |
		G_CYC_1CYCLE |
		G_TP_NONE |
		G_TD_CLAMP |
		G_TL_TILE |
		G_TT_NONE |
		G_TF_POINT |
		G_TC_FILT |
		G_CK_NONE |
		G_CD_MAGICSQ |
		G_AD_DISABLE |
		15
	),
	gsSPSetOtherMode(
		G_SETOTHERMODE_L, 0, 32,
		G_RM_XLU_SURF | G_RM_XLU_SURF2 |
		G_ZS_PIXEL |
		G_AC_NONE
	),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, 0, 0, 0, 0, 0, 0),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_WRAP, G_TX_WRAP, 4, 4, 0, 0),
	gsDPLoadImageBlock(txt_dprint_d, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16),
	gsSPTextureRectangle(4*(DEMO_X+DEMO_SX*0), 4*(DEMO_Y), 4*(DEMO_X+DEMO_SX*0+16), 4*(DEMO_Y+16), G_TX_RENDERTILE, 0, 0, 0x400, 0x400),
	gsDPLoadImageBlock(txt_dprint_e, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16),
	gsSPTextureRectangle(4*(DEMO_X+DEMO_SX*1), 4*(DEMO_Y), 4*(DEMO_X+DEMO_SX*1+16), 4*(DEMO_Y+16), G_TX_RENDERTILE, 0, 0, 0x400, 0x400),
	gsDPLoadImageBlock(txt_dprint_m, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16),
	gsSPTextureRectangle(4*(DEMO_X+DEMO_SX*2), 4*(DEMO_Y), 4*(DEMO_X+DEMO_SX*2+16), 4*(DEMO_Y+16), G_TX_RENDERTILE, 0, 0, 0x400, 0x400),
	gsSPTextureRectangle(4*(DEMO_X+DEMO_SX*5), 4*(DEMO_Y), 4*(DEMO_X+DEMO_SX*5+16), 4*(DEMO_Y+16), G_TX_RENDERTILE, 0, 0, 0x400, 0x400),
	gsDPLoadImageBlock(txt_dprint_o, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16),
	gsSPTextureRectangle(4*(DEMO_X+DEMO_SX*3), 4*(DEMO_Y), 4*(DEMO_X+DEMO_SX*3+16), 4*(DEMO_Y+16), G_TX_RENDERTILE, 0, 0, 0x400, 0x400),
	gsSPTextureRectangle(4*(DEMO_X+DEMO_SX*6), 4*(DEMO_Y), 4*(DEMO_X+DEMO_SX*6+16), 4*(DEMO_Y+16), G_TX_RENDERTILE, 0, 0, 0x400, 0x400),
	gsDPLoadImageBlock(txt_dprint_d, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16),
	gsSPTextureRectangle(4*(DEMO_X+DEMO_SX*7), 4*(DEMO_Y), 4*(DEMO_X+DEMO_SX*7+16), 4*(DEMO_Y+16), G_TX_RENDERTILE, 0, 0, 0x400, 0x400),
	gsDPLoadImageBlock(txt_dprint_e, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16),
	gsSPTextureRectangle(4*(DEMO_X+DEMO_SX*8), 4*(DEMO_Y), 4*(DEMO_X+DEMO_SX*8+16), 4*(DEMO_Y+16), G_TX_RENDERTILE, 0, 0, 0x400, 0x400),
	gsSPEndDisplayList(),
};
