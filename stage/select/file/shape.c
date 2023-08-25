extern Gfx gfx_file_mario[];
extern Gfx gfx_file_back[];

S_SCRIPT s_file_mario[] =
{
	s_empty(),
	s_push(),
		s_scale(8),
		s_push(),
			s_gfx(OPA_SURF, gfx_file_mario),
			s_gfx(OPA_SURF, gfx_file_back),
		s_pull(),
	s_pull(),
	s_exit(),
};

extern Gfx gfx_file_mario[];
extern Gfx gfx_file_back_s[];

S_SCRIPT s_file_mario_s[] =
{
	s_empty(),
	s_push(),
		s_scale(8),
		s_push(),
			s_gfx(OPA_SURF, gfx_file_mario),
			s_gfx(OPA_SURF, gfx_file_back_s),
		s_pull(),
	s_pull(),
	s_exit(),
};

extern Gfx gfx_file_new[];
extern Gfx gfx_file_back[];

S_SCRIPT s_file_new[] =
{
	s_empty(),
	s_push(),
		s_scale(8),
		s_push(),
			s_gfx(OPA_SURF, gfx_file_new),
			s_gfx(OPA_SURF, gfx_file_back),
		s_pull(),
	s_pull(),
	s_exit(),
};

extern Gfx gfx_file_new[];
extern Gfx gfx_file_back_s[];

S_SCRIPT s_file_new_s[] =
{
	s_empty(),
	s_push(),
		s_scale(8),
		s_push(),
			s_gfx(OPA_SURF, gfx_file_new),
			s_gfx(OPA_SURF, gfx_file_back_s),
		s_pull(),
	s_pull(),
	s_exit(),
};
