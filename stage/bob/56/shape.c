extern Gfx gfx_bob_56_s[];

S_SCRIPT s_bob_56[] =
{
	s_cull(800),
	s_push(),
		s_gfx(TEX_EDGE, gfx_bob_56_s),
	s_pull(),
	s_exit(),
};
