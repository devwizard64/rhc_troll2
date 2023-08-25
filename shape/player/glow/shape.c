extern Gfx gfx_glow_0[];
extern Gfx gfx_glow_1[];
extern Gfx gfx_glow_2[];
extern Gfx gfx_glow_3[];
extern Gfx gfx_glow_4[];

S_SCRIPT s_glow[] =
{
	s_select(9, s_obj_lib_8029DB48),
	s_push(),
		s_gfx(XLU_SURF, gfx_glow_0),
		s_gfx(XLU_SURF, gfx_glow_1),
		s_gfx(XLU_SURF, gfx_glow_2),
		s_gfx(XLU_SURF, gfx_glow_3),
		s_gfx(XLU_SURF, gfx_glow_4),
		s_gfx(XLU_SURF, gfx_glow_3),
		s_gfx(XLU_SURF, gfx_glow_2),
		s_gfx(XLU_SURF, gfx_glow_1),
		s_gfx(XLU_SURF, gfx_glow_0),
	s_pull(),
	s_exit(),
};
