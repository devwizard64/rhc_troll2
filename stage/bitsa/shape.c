#include <sm64/s_script.h>

S_SCRIPT s_bitsa_54[] =
{
	s_cull(5000),
	s_push(),
		s_gfx(OPA_SURF, 0x070022A8),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_bitsa_55[] =
{
	s_cull(5000),
	s_push(),
		s_gfx(OPA_SURF, 0x070025E0),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_bitsa_56[] =
{
	s_cull(5000),
	s_push(),
		s_gfx(OPA_SURF, 0x07002918),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_bitsa_57[] =
{
	s_cull(5000),
	s_push(),
		s_gfx(OPA_SURF, 0x07002C50),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_bitsa_58[] =
{
	s_cull(5000),
	s_push(),
		s_gfx(OPA_SURF, 0x07002F88),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_bitsa_59[] =
{
	s_cull(5000),
	s_push(),
		s_gfx(OPA_SURF, 0x070032C0),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_bitsa_60[] =
{
	s_cull(5000),
	s_push(),
		s_gfx(OPA_SURF, 0x070035F8),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_bitsa_61[] =
{
	s_cull(5000),
	s_push(),
		s_gfx(OPA_SURF, 0x07003930),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_bitsa_62[] =
{
	s_cull(5000),
	s_push(),
		s_gfx(OPA_SURF, 0x07003C68),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_bitsa_63[] =
{
	s_cull(5000),
	s_push(),
		s_gfx(OPA_SURF, 0x07003FA0),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_bitsa_3[] =
{
	s_cull(700),
	s_push(),
		s_gfx(OPA_SURF, 0x07004958),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_bitsa1[] =
{
	s_scene(160, 120, 160, 120, 10),
	s_push(),
		s_layer(FALSE),
		s_push(),
			s_ortho(100),
			s_push(),
				s_background(9, s_stage_background),
			s_pull(),
		s_pull(),
		s_layer(TRUE),
		s_push(),
			s_perspective(45, 100, 12800, s_stage_perspective),
			s_push(),
				s_camera(11, 0, 2000, 6000, 0, 0, 0, s_stage_camera),
				s_push(),
					s_gfx(OPA_SURF, 0x070046B0),
					s_object(),
					s_callback(0, s_stage_weather),
				s_pull(),
			s_pull(),
		s_pull(),
	s_pull(),
	s_exit(),
};
