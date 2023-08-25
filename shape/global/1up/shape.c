extern Gfx gfx_1up_s[];

S_SCRIPT s_1up[] =
{
	s_shadow(80, 180, 1),
	s_push(),
		s_gfx(TEX_EDGE, gfx_1up_s),
	s_pull(),
	s_exit(),
};
