extern Gfx gfx_fish_body_s[];
extern Gfx gfx_fish_tail_s[];

S_SCRIPT s_fish_shadow[] =
{
	s_shadow(50, 155, 1),
	s_push(),
		s_scale(0.25),
		s_push(),
			s_joint(OPA_SURF, NULL, -16, 0, 0),
			s_push(),
				s_joint(OPA_SURF, gfx_fish_body_s, 0, 0, 0),
				s_push(),
					s_joint(OPA_SURF, gfx_fish_tail_s, 97, 0, 0),
				s_pull(),
			s_pull(),
		s_pull(),
	s_pull(),
	s_exit(),
};

extern Gfx gfx_fish_body_s[];
extern Gfx gfx_fish_tail_s[];

S_SCRIPT s_fish[] =
{
	s_scale(0.25),
	s_push(),
		s_joint(OPA_SURF, NULL, -16, 0, 0),
		s_push(),
			s_joint(OPA_SURF, gfx_fish_body_s, 0, 0, 0),
			s_push(),
				s_joint(OPA_SURF, gfx_fish_tail_s, 97, 0, 0),
			s_pull(),
		s_pull(),
	s_pull(),
	s_exit(),
};
