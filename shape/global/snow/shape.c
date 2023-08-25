extern Gfx gfx_snow[];

S_SCRIPT s_snowball[] =
{
	s_shadow(50, 180, 1),
	s_push(),
		s_gfx(TEX_EDGE, gfx_snow),
	s_pull(),
	s_exit(),
};
