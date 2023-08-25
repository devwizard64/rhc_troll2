#include <sm64/s_script.h>

S_SCRIPT s_courtyard_3[] =
{
	s_cull(2600),
	s_push(),
		s_gfx(OPA_SURF, 0x07005078),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_courtyard1[] =
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
			s_perspective(45, 100, 12800, s_stage_perspective),
			s_push(),
				s_camera(16, 0, 2000, 6000, 0, 0, 0, s_stage_camera),
				s_push(),
					s_gfx(OPA_SURF, 0x070048B8),
					s_gfx(XLU_DECAL, 0x07005698),
					s_gfx(TEX_EDGE, 0x07005938),
					s_callback(0, s_scroll_802D01E0),
					s_callback(9729, s_scroll_802D104C),
					s_object(),
					s_callback(0, s_stage_weather),
				s_pull(),
			s_pull(),
		s_pull(),
	s_pull(),
	s_exit(),
};
