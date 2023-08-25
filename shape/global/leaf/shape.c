extern Gfx gfx_leaf[];

S_SCRIPT s_leaf[] =
{
	s_empty(),
	s_push(),
		s_gfx(TEX_EDGE, gfx_leaf),
	s_pull(),
	s_exit(),
};
