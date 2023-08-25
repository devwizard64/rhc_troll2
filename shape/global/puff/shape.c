extern Gfx gfx_whitepuff[];

S_SCRIPT s_whitepuff[] =
{
	s_empty(),
	s_push(),
		s_callback(0, s_obj_lib_8029D924),
		s_gfx(XLU_SURF, gfx_whitepuff),
	s_pull(),
	s_exit(),
};

extern Gfx gfx_blackpuff[];

S_SCRIPT s_blackpuff[] =
{
	s_empty(),
	s_push(),
		s_callback(0, s_obj_lib_8029D924),
		s_gfx(XLU_SURF, gfx_blackpuff),
	s_pull(),
	s_exit(),
};
