extern Gfx gfx_bob_54_s[];

S_SCRIPT s_bob_54[] =
{
	s_cull(1000),
	s_push(),
		s_gfx(TEX_EDGE, gfx_bob_54_s),
	s_pull(),
	s_exit(),
};
