extern Gfx gfx_pipe_side_s[];
extern Gfx gfx_pipe_end_s[];

S_SCRIPT s_pipe[] =
{
	s_cull(350),
	s_push(),
		s_gfx(OPA_SURF, gfx_pipe_side_s),
		s_gfx(OPA_SURF, gfx_pipe_end_s),
	s_pull(),
	s_exit(),
};

extern Gfx gfx_pipe_side_w[];
extern Gfx gfx_pipe_end_w[];

S_SCRIPT s_pipe_w[] =
{
	s_cull(350),
	s_push(),
		s_gfx(OPA_SURF, gfx_pipe_side_w),
		s_gfx(OPA_SURF, gfx_pipe_end_w),
	s_pull(),
	s_exit(),
};
