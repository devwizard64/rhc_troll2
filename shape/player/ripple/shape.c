extern Gfx gfx_ripple_0[];
extern Gfx gfx_ripple_1[];
extern Gfx gfx_ripple_2[];
extern Gfx gfx_ripple_3[];

S_SCRIPT s_ripple_stop[] =
{
	s_select(6, s_obj_lib_8029DB48),
	s_push(),
		s_gfx(XLU_SURF, gfx_ripple_0),
		s_gfx(XLU_SURF, gfx_ripple_1),
		s_gfx(XLU_SURF, gfx_ripple_2),
		s_gfx(XLU_SURF, gfx_ripple_3),
		s_gfx(XLU_SURF, gfx_ripple_2),
		s_gfx(XLU_SURF, gfx_ripple_1),
	s_pull(),
	s_exit(),
};

extern Gfx gfx_ripple_0[];
extern Gfx gfx_ripple_1[];
extern Gfx gfx_ripple_2[];
extern Gfx gfx_ripple_3[];

S_SCRIPT s_ripple_move[] =
{
	s_select(8, s_obj_lib_8029DB48),
	s_push(),
		s_gfx(XLU_SURF, gfx_ripple_0),
		s_gfx(XLU_SURF, gfx_ripple_1),
		s_gfx(XLU_SURF, gfx_ripple_2),
		s_gfx(XLU_SURF, gfx_ripple_3),
		s_gfx(XLU_SURF, gfx_ripple_3),
		s_gfx(XLU_SURF, gfx_ripple_3),
		s_gfx(XLU_SURF, gfx_ripple_3),
		s_gfx(XLU_SURF, gfx_ripple_3),
	s_pull(),
	s_exit(),
};
