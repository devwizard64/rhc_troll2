#include <sm64/s_script.h>

S_SCRIPT s_grounds_55[] =
{
	s_cull(1000),
	s_push(),
		s_scale(0.375),
		s_push(),
			s_joint(OPA_SURF, NULL, 0, 0, 0),
			s_push(),
				s_joint(OPA_SURF, 0x0700C768, 0, 0, 0),
				s_push(),
					s_joint(OPA_SURF, 0x0700C728, 459, 0, 0),
					s_push(),
						s_joint(OPA_SURF, 0x0700C6E8, 460, 0, 0),
						s_push(),
							s_joint(OPA_SURF, 0x0700C6A8, 345, 0, 0),
							s_push(),
								s_joint(OPA_SURF, 0x0700C670, 287, 0, 0),
							s_pull(),
						s_pull(),
					s_pull(),
				s_pull(),
			s_pull(),
		s_pull(),
	s_pull(),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_grounds_3[] =
{
	s_cull(2100),
	s_push(),
		s_gfx(OPA_SURF, 0x0700A290),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_grounds_54[] =
{
	s_cull(15000),
	s_push(),
		s_gfx(TEX_EDGE, 0x0700BB80),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_grounds_56[] =
{
	s_cull(15000),
	s_push(),
		s_gfx(TEX_EDGE, 0x0700BC68),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_grounds1[] =
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
			s_perspective(45, 100, 20000, s_stage_perspective),
			s_push(),
				s_camera(16, 0, 1500, 2500, 0, 1500, -12000, s_stage_camera),
				s_push(),
					s_gfx(OPA_SURF, 0x07006D70),
					s_gfx(OPA_SURF, 0x070095F0),
					s_gfx(TEX_EDGE, 0x0700A860),
					s_gfx(XLU_DECAL, 0x0700B1D0),
					s_gfx(TEX_EDGE, 0x0700BA20),
					s_gfx(OPA_DECAL, 0x0700C430),
					s_gfx(OPA_SURF, 0x0700C210),
					s_callback(0, s_scroll_802D01E0),
					s_callback(5633, s_scroll_802D1B70),
					s_callback(5633, s_scroll_802D104C),
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
