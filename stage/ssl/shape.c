#include <sm64/s_script.h>

S_SCRIPT s_ssl_3[] =
{
	s_cull(2000),
	s_push(),
		s_callback(2049, s_scroll_802D1FA8),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_ssl_4[] =
{
	s_cull(2000),
	s_push(),
		s_lod(-1000, 4000),
		s_push(),
			s_callback(2050, s_scroll_802D1FA8),
		s_pull(),
		s_lod(4000, 12800),
		s_push(),
			s_gfx(OPA_SURF, 0x07004AE0),
		s_pull(),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_ssl_58[] =
{
	s_cull(1000),
	s_push(),
		s_gfx(OPA_SURF, 0x0700BF18),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_ssl_199[] =
{
	s_cull(4000),
	s_push(),
		s_gfx(OPA_SURF, 0x0700FCE0),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_ssl1[] =
{
	s_scene(160, 120, 160, 120, 10),
	s_push(),
		s_layer(FALSE),
		s_push(),
			s_ortho(100),
			s_push(),
				s_background(5, s_stage_background),
			s_pull(),
		s_pull(),
		s_layer(TRUE),
		s_push(),
			s_perspective(45, 100, 20000, s_stage_perspective),
			s_push(),
				s_camera(1, 0, 2000, 6000, -2048, 0, -1024, s_stage_camera),
				s_push(),
					s_gfx(OPA_SURF, 0x07009F48),
					s_gfx(OPA_SURF, 0x0700BA78),
					s_gfx(TEX_EDGE, 0x0700BC18),
					s_gfx(XLU_DECAL, 0x0700BD00),
					s_callback(2049, s_scroll_802D2108),
					s_callback(0, s_scroll_802D01E0),
					s_callback(2049, s_scroll_802D104C),
					s_callback(2129, s_scroll_802D104C),
					s_callback(2049, s_scroll_802D1CDC),
					s_callback(2050, s_scroll_802D1CDC),
					s_callback(2051, s_scroll_802D1CDC),
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

S_SCRIPT s_ssl_54[] =
{
	s_cull(700),
	s_push(),
		s_shadow(550, 180, 11),
		s_push(),
			s_gfx(OPA_SURF, 0x070220A8),
			s_gfx(TEX_EDGE, 0x070221E8),
		s_pull(),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_ssl_55[] =
{
	s_cull(550),
	s_push(),
		s_shadow(0, 180, 50),
		s_push(),
			s_gfx(OPA_SURF, 0x070228A8),
			s_gfx(TEX_EDGE, 0x070229E8),
		s_pull(),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_ssl_56[] =
{
	s_cull(700),
	s_push(),
		s_gfx(OPA_SURF, 0x07022CF8),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_ssl_57[] =
{
	s_cull(900),
	s_push(),
		s_gfx(OPA_SURF, 0x070233A8),
		s_gfx(TEX_EDGE, 0x070235C0),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_ssl2[] =
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
					s_gfx(OPA_SURF, 0x0701EE80),
					s_gfx(TEX_EDGE, 0x0701F920),
					s_gfx(XLU_DECAL, 0x0701FCE0),
					s_callback(2050, s_scroll_802D2108),
					s_callback(0, s_scroll_802D01E0),
					s_callback(2049, s_scroll_802D1B70),
					s_callback(2050, s_scroll_802D1B70),
					s_callback(2051, s_scroll_802D1B70),
					s_object(),
					s_callback(0, s_stage_weather),
				s_pull(),
			s_pull(),
		s_pull(),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_ssl3[] =
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
					s_gfx(OPA_SURF, 0x07021A08),
					s_gfx(XLU_SURF, 0x07021DE8),
					s_object(),
					s_callback(0, s_stage_weather),
				s_pull(),
			s_pull(),
		s_pull(),
	s_pull(),
	s_exit(),
};
