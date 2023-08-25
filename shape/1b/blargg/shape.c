extern Gfx gfx_blargg_upper_jaw[];
extern Gfx gfx_blargg_lower_jaw[];
extern Gfx gfx_blargg_body[];

S_SCRIPT s_blargg[] =
{
	s_scale(0.25),
	s_push(),
		s_joint(OPA_SURF, NULL, 0, 0, 0),
		s_push(),
			s_joint(OPA_SURF, gfx_blargg_body, 0, 0, 0),
			s_push(),
				s_joint(OPA_SURF, gfx_blargg_lower_jaw, 306, 0, 0),
				s_push(),
					s_joint(OPA_SURF, NULL, 6, 3, 0),
					s_push(),
						s_joint(OPA_SURF, gfx_blargg_upper_jaw, 0, 0, 0),
					s_pull(),
				s_pull(),
			s_pull(),
		s_pull(),
	s_pull(),
	s_exit(),
};
