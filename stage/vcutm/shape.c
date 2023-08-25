#include <sm64/s_script.h>

S_SCRIPT s_vcutm_54[] =
{
	s_cull(1000),
	s_push(),
		s_gfx(OPA_SURF, 0x070096E0),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_vcutm1[] =
{
	s_scene(160, 120, 160, 120, 10),
	s_push(),
		s_layer(FALSE),
		s_push(),
			s_ortho(100),
			s_push(),
				s_background(GPACK_RGBA5551(0x00, 0x00, 0x00, 1), NULL),
			s_pull(),
		s_pull(),
		s_layer(TRUE),
		s_push(),
			s_perspective(45, 100, 25000, s_stage_perspective),
			s_push(),
				s_camera(14, 0, 2000, 6000, 0, 0, 0, s_stage_camera),
				s_push(),
					s_gfx(OPA_SURF, 0x07007E88),
					s_gfx(OPA_SURF, 0x07008E10),
					s_gfx(OPA_SURF, 0x070093E8),
					s_gfx(TEX_EDGE, 0x070080D0),
					s_object(),
					s_callback(0, s_stage_weather),
				s_pull(),
			s_pull(),
		s_pull(),
	s_pull(),
	s_exit(),
};
