extern Gfx gfx_tile_erase[];

S_SCRIPT s_tile_erase[] =
{
	s_empty(),
	s_push(),
		s_scale(8),
		s_push(),
			s_gfx(OPA_SURF, gfx_tile_erase),
		s_pull(),
	s_pull(),
	s_exit(),
};

extern Gfx gfx_tile_copy[];

S_SCRIPT s_tile_copy[] =
{
	s_empty(),
	s_push(),
		s_scale(8),
		s_push(),
			s_gfx(OPA_SURF, gfx_tile_copy),
		s_pull(),
	s_pull(),
	s_exit(),
};

extern Gfx gfx_tile_main[];

S_SCRIPT s_tile_main[] =
{
	s_empty(),
	s_push(),
		s_scale(8),
		s_push(),
			s_gfx(OPA_SURF, gfx_tile_main),
		s_pull(),
	s_pull(),
	s_exit(),
};

extern Gfx gfx_tile_score[];

S_SCRIPT s_tile_score[] =
{
	s_empty(),
	s_push(),
		s_scale(8),
		s_push(),
			s_gfx(OPA_SURF, gfx_tile_score),
		s_pull(),
	s_pull(),
	s_exit(),
};

extern Gfx gfx_tile_sound[];

S_SCRIPT s_tile_sound[] =
{
	s_empty(),
	s_push(),
		s_scale(8),
		s_push(),
			s_gfx(OPA_SURF, gfx_tile_sound),
		s_pull(),
	s_pull(),
	s_exit(),
};

extern Gfx gfx_tile_button[];

S_SCRIPT s_tile_button[] =
{
	s_empty(),
	s_push(),
		s_scale(8),
		s_push(),
			s_gfx(OPA_SURF, gfx_tile_button),
		s_pull(),
	s_pull(),
	s_exit(),
};
