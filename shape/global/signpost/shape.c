extern Gfx gfx_signpost_post_s[];
extern Gfx gfx_signpost_sign_s[];

S_SCRIPT s_signpost[] =
{
	s_shadow(60, 200, 1),
	s_push(),
		s_scale(0.25),
		s_push(),
			s_gfx(OPA_SURF, gfx_signpost_post_s),
			s_gfx(OPA_SURF, gfx_signpost_sign_s),
		s_pull(),
	s_pull(),
	s_exit(),
};
