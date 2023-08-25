extern Gfx gfx_doorkey[];

S_SCRIPT s_bowserkey[] =
{
	s_shadow(300, 155, 1),
	s_push(),
		s_scale(1),
		s_push(),
			s_gfx(OPA_SURF, gfx_doorkey),
		s_pull(),
	s_pull(),
	s_exit(),
};

extern Gfx gfx_doorkey[];

S_SCRIPT s_doorkey[] =
{
	s_scale(0.25),
	s_push(),
		s_joint(OPA_SURF, NULL, 0, 0, 0),
		s_push(),
			s_joint(OPA_SURF, NULL, 0, 0, 0),
			s_push(),
				s_callback(0, s_object_a_802BA2B0),
				s_scale(1),
				s_push(),
					s_gfx(OPA_SURF, gfx_doorkey),
				s_pull(),
			s_pull(),
		s_pull(),
	s_pull(),
	s_pull(),
	s_exit(),
};
