#include <sm64/s_script.h>

S_SCRIPT s_sl_55[] =
{
	s_empty(),
	s_push(),
		s_gfx(XLU_SURF, 0x0700A890),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_sl_56[] =
{
	s_empty(),
	s_push(),
		s_gfx(XLU_SURF, 0x0700A980),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_sl_54[] =
{
	s_cull(350),
	s_push(),
		s_gfx(OPA_SURF, 0x0700A780),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_sl1[] =
{
	s_scene(160, 120, 160, 120, 10),
	s_push(),
		s_layer(FALSE),
		s_push(),
			s_ortho(100),
			s_push(),
				s_background(4, s_stage_background),
			s_pull(),
		s_pull(),
		s_layer(TRUE),
		s_push(),
			s_perspective(45, 100, 20000, s_stage_perspective),
			s_push(),
				s_camera(16, 0, 2000, 6000, 0, 4400, 0, s_stage_camera),
				s_push(),
					s_gfx(OPA_SURF, 0x07005478),
					s_gfx(XLU_SURF, 0x070056B0),
					s_gfx(OPA_SURF, 0x070073D0),
					s_gfx(TEX_EDGE, 0x07007880),
					s_gfx(XLU_SURF, 0x070088B0),
					s_gfx(XLU_DECAL, 0x07008D58),
					s_gfx(OPA_SURF, 0x0700A5A0),
					s_callback(0, s_scroll_802D01E0),
					s_callback(4097, s_scroll_802D104C),
					s_object(),
					s_callback(1, s_stage_weather),
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

S_SCRIPT s_sl2[] =
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
				s_camera(4, 0, 2000, 6000, 0, 0, 0, s_stage_camera),
				s_push(),
					s_gfx(OPA_SURF, 0x0700BAE8),
					s_gfx(OPA_SURF, 0x0700BCF8),
					s_gfx(XLU_SURF, 0x0700C9E8),
					s_gfx(XLU_SURF, 0x0700CB58),
					s_object(),
					s_callback(0, s_stage_weather),
				s_pull(),
			s_pull(),
		s_pull(),
	s_pull(),
	s_exit(),
};
