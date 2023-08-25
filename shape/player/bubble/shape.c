extern Gfx gfx_bubble_a[];

S_SCRIPT s_bubble_a[] =
{
	s_select(1, s_obj_lib_8029DB48),
	s_push(),
		s_gfx(TEX_EDGE, gfx_bubble_a),
	s_pull(),
	s_exit(),
};

extern Gfx gfx_bubble_b[];

S_SCRIPT s_bubble_b[] =
{
	s_select(1, s_obj_lib_8029DB48),
	s_push(),
		s_gfx(TEX_EDGE, gfx_bubble_b),
	s_pull(),
	s_exit(),
};
