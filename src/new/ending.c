extern u8 txt_ending[];

static void ending_draw(void)
{
	gDPPipeSync(gfx_ptr++);
	gDPSetCombineMode(gfx_ptr++, G_CC_DECALRGBA, G_CC_DECALRGBA);
	gSPSetOtherMode(
		gfx_ptr++, G_SETOTHERMODE_H, 0, 24,
		G_PM_NPRIMITIVE |
		G_CYC_1CYCLE |
		G_TP_NONE |
		G_TD_CLAMP |
		G_TL_TILE |
		G_TT_NONE |
		G_TF_BILERP |
		G_TC_FILT |
		G_CK_NONE |
		G_CD_MAGICSQ |
		G_AD_DISABLE |
		15
	);
	gSPSetOtherMode(
		gfx_ptr++, G_SETOTHERMODE_L, 0, 32,
		G_RM_OPA_SURF | G_RM_OPA_SURF2 |
		G_ZS_PIXEL |
		G_AC_NONE
	);
	sprite_draw(
		txt_ending, G_IM_FMT_I, G_IM_SIZ_4b, TRUE, 204, 218,
		4*58, 4*11, 4*204, 4*218
	);
}

extern const char _music_szpSegmentRomStart[];
extern const char _music_szpSegmentRomEnd[];

int p_ending_main(SHORT arg, UNUSED int code)
{
	static short timer;
	int result = 0;
	switch (arg)
	{
	case 0:
		timer = 30*65;
		save_write();
		gfx_draw_callback = ending_draw;
		mus_init(_music_szpSegmentRomStart, _music_szpSegmentRomEnd);
		break;
	case 1:
		if (--timer == 0)
		{
			gfx_draw_callback = NULL;
			mus_exit();
			result = -8;
		}
		break;
	}
	return result;
}
