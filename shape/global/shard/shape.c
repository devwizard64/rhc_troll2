extern Gfx gfx_shard_cork_s[];
extern Gfx gfx_shard_sr[];
extern Gfx gfx_shard_sg[];
extern Gfx gfx_shard_sb[];
extern Gfx gfx_shard_sy[];
extern Gfx gfx_shard_y[];

S_SCRIPT s_shard[] =
{
	s_cull(300),
	s_push(),
		s_select(6, s_obj_lib_8029DB48),
		s_push(),
			s_gfx(OPA_SURF, gfx_shard_sr),
			s_gfx(OPA_SURF, gfx_shard_sg),
			s_gfx(OPA_SURF, gfx_shard_sb),
			s_gfx(TEX_EDGE, gfx_shard_cork_s),
			s_gfx(OPA_SURF, gfx_shard_sy),
			s_gfx(OPA_SURF, gfx_shard_y),
		s_pull(),
	s_pull(),
	s_exit(),
};

extern Gfx gfx_star_sr[];
extern Gfx gfx_star_sg[];
extern Gfx gfx_star_sb[];
extern Gfx gfx_star_sy[];
extern Gfx gfx_star_y[];

S_SCRIPT s_star[] =
{
	s_cull(300),
	s_push(),
		s_select(5, s_obj_lib_8029DB48),
		s_push(),
			s_gfx(OPA_SURF, gfx_star_sr),
			s_gfx(OPA_SURF, gfx_star_sg),
			s_gfx(OPA_SURF, gfx_star_sb),
			s_gfx(OPA_SURF, gfx_star_sy),
			s_gfx(OPA_SURF, gfx_star_y),
		s_pull(),
	s_pull(),
	s_exit(),
};
