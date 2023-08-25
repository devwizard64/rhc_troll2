static u8 txt_wincursor[] =
{
#include "wincursor.ia4.h"
};

Gfx gfx_wincursor[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_DECALRGBA, G_CC_DECALRGBA),
	gsDPSetBlendColor(0xFF, 0xFF, 0xFF, 0xFF),
	gsSPSetOtherMode(
		G_SETOTHERMODE_H, 0, 24,
		G_PM_NPRIMITIVE |
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
		G_RM_OPA_SURF | G_RM_OPA_SURF2 |
		G_ZS_PIXEL |
		G_AC_THRESHOLD
	),
	gsDPLoadTextureBlock_4b(txt_wincursor, G_IM_FMT_IA, 16, 20, 0, G_TX_WRAP, G_TX_WRAP, 4, 5, 0, 0),
	gsSPEndDisplayList(),
};
