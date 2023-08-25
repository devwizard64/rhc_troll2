static u8 retro_fade;

extern Gfx gfx_retro_fade[];
extern Gfx gfx_retro_back[];

void *s_retro_fade(int code, SHAPE *shape, UNUSED void *data)
{
	SHAPE_CALLBACK *s = (SHAPE_CALLBACK *)shape;
	Gfx *gfx = NULL;
	Gfx *g;
	if (code == S_CODE_DRAW)
	{
		if (retro_fade > 0)
		{
			if (retro_fade < 0xFF)
			{
				shape_layer_set(s, S_LAYER_XLU_SURF);
			}
			else
			{
				shape_layer_set(s, S_LAYER_OPA_SURF);
			}
			if ((g = gfx = gfx_alloc(sizeof(Gfx)*3)))
			{
				gDPPipeSync(g++);
				gDPSetEnvColor(g++, 0, 0, 0, retro_fade);
				gSPBranchList(g++, gfx_retro_fade);
			}
		}
	}
	return gfx;
}

void *s_retro_back(int code, SHAPE *shape, UNUSED void *data)
{
	SHAPE_CALLBACK *s = (SHAPE_CALLBACK *)shape;
	SHAPE_BACKGROUND *bg = (SHAPE_BACKGROUND *)shape->prev;
	Gfx *gfx = NULL;
	Gfx *g;
	if (code == S_CODE_DRAW)
	{
		if (retro_fade > 0)
		{
			if (retro_fade < 0xFF)
			{
				if ((g = gfx = gfx_alloc(sizeof(Gfx)*2)))
				{
					gDPSetPrimColor(g++, 0, 0, 0, 0, 0, 0xFF-retro_fade);
					gSPBranchList(g++, gfx_retro_back);
				}
			}
			bg->s.callback = s_stage_background;
			bg->arg = s->arg;
		}
		else
		{
			bg->s.callback = NULL;
			bg->arg = GPACK_RGBA5551(0, 0, 0, 1);
		}
	}
	return gfx;
}

int p_stage2_blank(UNUSED SHORT arg, int code)
{
	blank_fill = 0x0001 << 16 | 0x0001;
	blank_r = 0x00;
	blank_g = 0x00;
	blank_b = 0x00;
	return code;
}

int p_stage2_main(SHORT arg, int code)
{
	int result;
	switch (arg)
	{
	case 0:
		retro_fade = 0;
		snd_init();
		break;
	case 1:
		if (retro_fade == 0) mario->pos[2] = 0;
		break;
	}
	result = p_game_main(arg, code);
	switch (arg)
	{
	case 1:
		mario->life = 99;
		hud.life = 99;
		if (result) snd_exit();
		break;
	}
	return result;
}

static Vtx vtx_avatar[] =
{
	{{{  -127,   -127,      0}, 0, {   -16,   1008}, {0xFF, 0xFF, 0xFF, 0xFF}}},
	{{{   128,   -127,      0}, 0, {  1008,   1008}, {0xFF, 0xFF, 0xFF, 0xFF}}},
	{{{   128,    128,      0}, 0, {  1008,    -16}, {0xFF, 0xFF, 0xFF, 0xFF}}},
	{{{  -127,    128,      0}, 0, {   -16,    -16}, {0xFF, 0xFF, 0xFF, 0xFF}}},
};

static Gfx gfx_avatar[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_MODULATERGBA, G_CC_MODULATERGBA),
	gsSPClearGeometryMode(G_LIGHTING),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPLoadTextureBlock(
		avatar, G_IM_FMT_RGBA, G_IM_SIZ_32b, 32, 32, 0,
		G_TX_CLAMP, G_TX_CLAMP, 5, 5, 0, 0
	),
	gsSPVertex(&vtx_avatar[0], 4, 0),
	gsSP2Triangles( 0,  1,  2, 0,  0,  2,  3, 0),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_LIGHTING),
	gsSPEndDisplayList(),
};

extern S_SCRIPT s_1c_86[];

int p_stage2_patch(UNUSED SHORT arg, int code)
{
	*(Gfx **)segment_to_virtual(s_1c_86+22) = gfx_avatar;
	return code;
}
