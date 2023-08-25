extern Gfx gfx_butterfly_l[];
extern Gfx gfx_butterfly_r[];

S_SCRIPT s_butterfly[] =
{
	s_shadow(25, 180, 1),
	s_push(),
		s_scale(0.25),
		s_push(),
			s_joint(OPA_SURF, NULL, 0, 0, 0),
			s_push(),
				s_joint(TEX_EDGE, gfx_butterfly_l, 0, 0, 0),
				s_push(),
					s_joint(OPA_SURF, NULL, 0, 0, 0),
				s_pull(),
			s_pull(),
			s_push(),
				s_joint(OPA_SURF, NULL, 0, 0, 0),
				s_push(),
					s_joint(TEX_EDGE, gfx_butterfly_r, 0, 0, 0),
					s_push(),
						s_joint(OPA_SURF, NULL, 0, 0, 0),
					s_pull(),
				s_pull(),
			s_pull(),
		s_pull(),
	s_pull(),
	s_exit(),
};
