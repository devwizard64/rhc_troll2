extern Gfx gfx_shadowstar_s[];

S_SCRIPT s_shadowstar[] =
{
	s_shadow(100, 155, 1),
	s_push(),
		s_scale(0.25),
		s_push(),
			s_gfx(XLU_SURF, gfx_shadowstar_s),
		s_pull(),
	s_pull(),
	s_exit(),
};
