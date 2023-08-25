#include <sm64/s_script.h>

S_SCRIPT s_totwc_3[] =
{
	s_cull(2000),
	s_push(),
		s_billboard(0, 0, 0),
		s_push(),
			s_gfx(XLU_SURF, 0x070079A8),
		s_pull(),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_totwc1[] =
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
			s_perspective(45, 100, 25000, s_stage_perspective),
			s_push(),
				s_camera(16, 0, 2000, 6000, 0, 0, 0, s_stage_camera),
				s_push(),
					s_gfx(OPA_SURF, 0x07005D28),
					s_gfx(XLU_SURF, 0x07007048),
					s_gfx(XLU_SURF, 0x070078B8),
					s_object(),
					s_callback(0, s_stage_weather),
				s_pull(),
			s_pull(),
		s_pull(),
	s_pull(),
	s_exit(),
};
