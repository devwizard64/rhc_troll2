#include <sm64/s_script.h>

S_SCRIPT s_wmotr1[] =
{
	s_scene(160, 120, 160, 120, 10),
	s_push(),
		s_layer(FALSE),
		s_push(),
			s_ortho(100),
			s_push(),
				s_background(3, s_stage_background),
			s_pull(),
		s_pull(),
		s_layer(TRUE),
		s_push(),
			s_perspective(45, 100, 20000, s_stage_perspective),
			s_push(),
				s_camera(16, 0, 2000, 6000, 0, 0, 0, s_stage_camera),
				s_push(),
					s_gfx(OPA_SURF, 0x0700C1F8),
					s_gfx(XLU_SURF, 0x0700EFD8),
					s_gfx(XLU_SURF, 0x07010608),
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
