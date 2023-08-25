#include <sm64/s_script.h>

S_SCRIPT s_pss1[] =
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
			s_perspective(45, 100, 12800, s_stage_perspective),
			s_push(),
				s_camera(9, 0, 2000, 6000, 0, 0, 0, s_stage_camera),
				s_push(),
					s_gfx(OPA_SURF, 0x0700A7C0),
					s_gfx(OPA_SURF, 0x0700AFA8),
					s_gfx(OPA_SURF, 0x0700B3F0),
					s_gfx(OPA_SURF, 0x0700D338),
					s_gfx(XLU_SURF, 0x0700DAD8),
					s_gfx(OPA_SURF, 0x0700E2B0),
					s_gfx(OPA_DECAL, 0x0700E3E8),
					s_object(),
					s_callback(0, s_stage_weather),
				s_pull(),
			s_pull(),
		s_pull(),
	s_pull(),
	s_exit(),
};