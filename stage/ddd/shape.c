#include <sm64/s_script.h>

S_SCRIPT s_ddd_56[] =
{
	s_cull(700),
	s_push(),
		s_shadow(120, 180, 10),
		s_push(),
			s_gfx(OPA_SURF, 0x0700D2A0),
		s_pull(),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_ddd_54[] =
{
	s_cull(10000),
	s_push(),
		s_gfx(XLU_SURF, 0x07009030),
		s_gfx(OPA_SURF, 0x07009120),
		s_gfx(XLU_SURF, 0x07009208),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_ddd_55[] =
{
	s_cull(10000),
	s_push(),
		s_gfx(OPA_SURF, 0x0700AF10),
		s_gfx(TEX_EDGE, 0x0700B068),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_ddd1[] =
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
				s_camera(2, 0, 2000, 6000, 2560, 0, 512, s_stage_camera),
				s_push(),
					s_gfx(OPA_SURF, 0x07004D48),
					s_gfx(OPA_SURF, 0x070057E8),
					s_gfx(TEX_EDGE, 0x07005C40),
					s_gfx(XLU_SURF, 0x07005F78),
					s_callback(0, s_scroll_802D01E0),
					s_callback(8961, s_scroll_802D104C),
					s_object(),
					s_callback(13, s_stage_weather),
				s_pull(),
			s_pull(),
		s_pull(),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_ddd2[] =
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
				s_camera(4, 0, 2000, 6000, 2560, 0, 512, s_stage_camera),
				s_push(),
					s_gfx(OPA_SURF, 0x07007408),
					s_gfx(OPA_SURF, 0x07007CB8),
					s_gfx(TEX_EDGE, 0x07008C48),
					s_gfx(XLU_SURF, 0x07008F80),
					s_gfx(TEX_EDGE, 0x0700BAE0),
					s_gfx(OPA_SURF, 0x0700CE48),
					s_callback(0, s_scroll_802D01E0),
					s_callback(8962, s_scroll_802D104C),
					s_object(),
					s_callback(14, s_stage_weather),
				s_pull(),
			s_pull(),
		s_pull(),
	s_pull(),
	s_exit(),
};
