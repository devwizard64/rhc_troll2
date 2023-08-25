extern Gfx gfx_smoke_s[];

S_SCRIPT s_smoke[] =
{
	s_empty(),
	s_push(),
		s_gfx(XLU_SURF, gfx_smoke_s),
	s_pull(),
	s_exit(),
};
