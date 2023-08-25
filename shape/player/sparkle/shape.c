extern Gfx gfx_sparkle_5[];
extern Gfx gfx_sparkle_4[];
extern Gfx gfx_sparkle_3[];
extern Gfx gfx_sparkle_2[];
extern Gfx gfx_sparkle_1[];
extern Gfx gfx_sparkle_0[];

S_SCRIPT s_sparkle[] =
{
	s_select(12, s_obj_lib_8029DB48),
	s_push(),
		s_gfx(TEX_EDGE, gfx_sparkle_0),
		s_gfx(TEX_EDGE, gfx_sparkle_0),
		s_gfx(TEX_EDGE, gfx_sparkle_1),
		s_gfx(TEX_EDGE, gfx_sparkle_1),
		s_gfx(TEX_EDGE, gfx_sparkle_2),
		s_gfx(TEX_EDGE, gfx_sparkle_2),
		s_gfx(TEX_EDGE, gfx_sparkle_3),
		s_gfx(TEX_EDGE, gfx_sparkle_3),
		s_gfx(TEX_EDGE, gfx_sparkle_4),
		s_gfx(TEX_EDGE, gfx_sparkle_4),
		s_gfx(TEX_EDGE, gfx_sparkle_5),
		s_gfx(TEX_EDGE, gfx_sparkle_5),
	s_pull(),
	s_exit(),
};
