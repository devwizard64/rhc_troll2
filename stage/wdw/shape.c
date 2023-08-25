#include <sm64/s_script.h>

S_SCRIPT s_wdw_54[] =
{
	s_cull(550),
	s_push(),
		s_gfx(OPA_SURF, 0x07012B90),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_wdw_55[] =
{
	s_cull(350),
	s_push(),
		s_shadow(110, 150, 12),
		s_push(),
			s_gfx(OPA_SURF, 0x07012E88),
		s_pull(),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_wdw_56[] =
{
	s_cull(200),
	s_push(),
		s_shadow(90, 150, 11),
		s_push(),
			s_gfx(XLU_SURF, 0x070131B8),
		s_pull(),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_wdw_57[] =
{
	s_cull(420),
	s_push(),
		s_shadow(240, 150, 12),
		s_push(),
			s_gfx(OPA_SURF, 0x07013490),
		s_pull(),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_wdw_58[] =
{
	s_cull(800),
	s_push(),
		s_gfx(OPA_SURF, 0x07013B70),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_wdw_59[] =
{
	s_cull(900),
	s_push(),
		s_gfx(OPA_SURF, 0x07013E40),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_wdw_60[] =
{
	s_cull(450),
	s_push(),
		s_gfx(OPA_SURF, 0x070140E0),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_wdw1[] =
{
	s_scene(160, 120, 160, 120, 10),
	s_push(),
		s_layer(FALSE),
		s_push(),
			s_ortho(100),
			s_push(),
				s_background(2, s_stage_background),
			s_pull(),
		s_pull(),
		s_layer(TRUE),
		s_push(),
			s_perspective(45, 100, 12800, s_stage_perspective),
			s_push(),
				s_camera(1, 0, 2000, 6000, -4352, 0, -4352, s_stage_camera),
				s_push(),
					s_gfx(OPA_SURF, 0x07009AB0),
					s_gfx(TEX_EDGE, 0x0700A138),
					s_gfx(XLU_SURF, 0x07012798),
					s_gfx(XLU_DECAL, 0x07012908),
					s_callback(0, s_scroll_802D0080),
					s_callback(0, s_scroll_802D01E0),
					s_callback(4353, s_scroll_802D104C),
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

S_SCRIPT s_wdw2[] =
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
				s_camera(1, 0, 2000, 6000, -4352, 0, -4352, s_stage_camera),
				s_push(),
					s_gfx(OPA_SURF, 0x07011E48),
					s_gfx(TEX_EDGE, 0x07012258),
					s_gfx(XLU_DECAL, 0x07012908),
					s_callback(0, s_scroll_802D01E0),
					s_callback(4354, s_scroll_802D104C),
					s_object(),
					s_callback(0, s_stage_weather),
				s_pull(),
			s_pull(),
		s_pull(),
	s_pull(),
	s_exit(),
};
