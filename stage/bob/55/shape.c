extern Gfx gfx_bob_55_s[];

S_SCRIPT s_bob_55[] =
{
	s_cull(1200),
	s_push(),
		s_gfx(OPA_SURF, gfx_bob_55_s),
	s_pull(),
	s_exit(),
};
