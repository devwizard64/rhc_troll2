extern void *s_retro_fade(int code, SHAPE *shape, void *data);
extern void *s_retro_back(int code, SHAPE *shape, void *data);

extern Gfx gfx_retro_opa_surf[];

S_SCRIPT s_retro[] =
{
	s_scene(160, 120, 160, 120, 10),
	s_push(),
		s_layer(FALSE),
		s_push(),
			s_ortho(100),
			s_push(),
				s_background(GPACK_RGBA5551(0x00, 0x00, 0x00, 1), NULL),
				s_callback(9, s_retro_back),
			s_pull(),
		s_pull(),
		s_layer(TRUE),
		s_push(),
			s_perspective(45, 100, 30000, s_stage_perspective),
			s_push(),
				s_camera(14, 0, 2000, 6000, 0, 0, 0, s_stage_camera),
				s_push(),
					s_gfx(OPA_SURF, gfx_retro_opa_surf),
					s_callback(0, s_retro_fade),
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
