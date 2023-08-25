extern Gfx gfx_battlefield_smooth[];
extern Gfx gfx_battlefield_flat[];
extern Gfx gfx_battlefield_xlu_decal[];
extern Gfx gfx_battlefield_tex_edge[];
extern Gfx gfx_battlefield_shade[];
extern Gfx gfx_battlefield_23_s[];

S_SCRIPT s_battlefield[] =
{
	s_scene(160, 120, 160, 120, 10),
	s_push(),
		s_layer(FALSE),
		s_push(),
			s_ortho(100),
			s_push(),
				s_background(0, s_stage_background),
			s_pull(),
		s_pull(),
		s_layer(TRUE),
		s_push(),
			s_perspective(45, 100, 30000, s_stage_perspective),
			s_push(),
				s_camera(1, 0, 2000, 6000, 3072, 0, -4608, s_stage_camera),
				s_push(),
					s_gfx(OPA_SURF, gfx_battlefield_smooth),
					s_gfx(OPA_SURF, gfx_battlefield_flat),
					s_gfx(XLU_DECAL, gfx_battlefield_xlu_decal),
					s_gfx(TEX_EDGE, gfx_battlefield_tex_edge),
					s_gfx(OPA_SURF, gfx_battlefield_shade),
					s_gfx(OPA_SURF, gfx_battlefield_23_s),
					s_object(),
					s_callback(0, s_stage_weather),
				s_pull(),
			s_pull(),
		s_pull(),
		s_layer(FALSE),
		s_push(),
			s_callback(0, s_wipe_802CD1E8),
		s_pull(),
	s_pull(),
	s_exit(),
};
