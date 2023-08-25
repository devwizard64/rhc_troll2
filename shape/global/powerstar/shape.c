extern Gfx gfx_powerstar_star_s[];
extern Gfx gfx_powerstar_eyes_s[];

S_SCRIPT s_powerstar[] =
{
	s_shadow(100, 155, 1),
	s_push(),
		s_scale(0.25),
		s_push(),
			s_gfx(OPA_SURF, gfx_powerstar_star_s),
			s_gfx(TEX_EDGE, gfx_powerstar_eyes_s),
		s_pull(),
	s_pull(),
	s_exit(),
};

extern Gfx gfx_powerstar_end[];

S_SCRIPT s_retrostar[] =
{
	s_shadow(100, 155, 1),
	s_push(),
		s_scale(0.25),
		s_push(),
			s_callback(0, s_obj_lib_8029D924),
			s_select(2, s_obj_lib_8029DB48),
			s_push(),
				s_gfx(OPA_SURF, gfx_powerstar_star_s),
				s_push(),
					s_gfx(TEX_EDGE, gfx_powerstar_eyes_s),
				s_pull(),
				s_gfx(XLU_SURF, gfx_powerstar_star_s+2),
				s_push(),
					s_gfx(XLU_SURF, gfx_powerstar_eyes_s+2),
					s_gfx(XLU_SURF, gfx_powerstar_end),
				s_pull(),
			s_pull(),
		s_pull(),
	s_pull(),
	s_exit(),
};
