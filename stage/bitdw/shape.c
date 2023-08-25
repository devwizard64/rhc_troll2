#include <sm64/s_script.h>

S_SCRIPT s_bitdw_3[] =
{
	s_cull(2000),
	s_push(),
		s_gfx(OPA_SURF, 0x070028A0),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_bitdw_4[] =
{
	s_cull(2300),
	s_push(),
		s_gfx(OPA_SURF, 0x070032F8),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_bitdw_5[] =
{
	s_cull(2000),
	s_push(),
		s_gfx(TEX_EDGE, 0x07003608),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_bitdw_6[] =
{
	s_cull(4000),
	s_push(),
		s_gfx(OPA_SURF, 0x07003BF0),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_bitdw_7[] =
{
	s_cull(3500),
	s_push(),
		s_gfx(OPA_SURF, 0x07004318),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_bitdw_8[] =
{
	s_cull(2500),
	s_push(),
		s_gfx(TEX_EDGE, 0x070045C0),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_bitdw_9[] =
{
	s_cull(1300),
	s_push(),
		s_gfx(OPA_SURF, 0x07005078),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_bitdw_10[] =
{
	s_cull(2900),
	s_push(),
		s_gfx(OPA_SURF, 0x07005BC0),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_bitdw_11[] =
{
	s_cull(1500),
	s_push(),
		s_gfx(OPA_SURF, 0x070065F0),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_bitdw_12[] =
{
	s_cull(2400),
	s_push(),
		s_gfx(OPA_SURF, 0x07007AA8),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_bitdw_13[] =
{
	s_cull(2400),
	s_push(),
		s_gfx(OPA_SURF, 0x07008FF0),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_bitdw_14[] =
{
	s_cull(300),
	s_push(),
		s_gfx(XLU_SURF, 0x070093B0),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_bitdw_15[] =
{
	s_cull(2400),
	s_push(),
		s_gfx(OPA_SURF, 0x0700A368),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_bitdw_16[] =
{
	s_cull(1100),
	s_push(),
		s_gfx(TEX_EDGE, 0x0700A6A8),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_bitdw_17[] =
{
	s_cull(1400),
	s_push(),
		s_gfx(OPA_SURF, 0x0700AD10),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_bitdw_56[] =
{
	s_cull(1500),
	s_push(),
		s_gfx(OPA_SURF, 0x0700AFA0),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_bitdw_55[] =
{
	s_cull(1100),
	s_push(),
		s_gfx(OPA_SURF, 0x0700B220),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_bitdw_54[] =
{
	s_cull(600),
	s_push(),
		s_gfx(OPA_SURF, 0x0700B480),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_bitdw_57[] =
{
	s_cull(600),
	s_push(),
		s_gfx(OPA_SURF, 0x0700B8D8),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_bitdw_58[] =
{
	s_cull(600),
	s_push(),
		s_gfx(OPA_SURF, 0x0700BB58),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_bitdw_59[] =
{
	s_cull(2000),
	s_push(),
		s_gfx(OPA_SURF, 0x0700C0E0),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_bitdw_60[] =
{
	s_cull(2000),
	s_push(),
		s_gfx(OPA_SURF, 0x0700C670),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_bitdw_61[] =
{
	s_cull(2000),
	s_push(),
		s_gfx(OPA_SURF, 0x0700CC00),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_bitdw_62[] =
{
	s_cull(2000),
	s_push(),
		s_gfx(OPA_SURF, 0x0700D190),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_bitdw_63[] =
{
	s_cull(2000),
	s_push(),
		s_gfx(OPA_SURF, 0x0700D3E8),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_bitdw1[] =
{
	s_scene(160, 120, 160, 120, 10),
	s_push(),
		s_layer(FALSE),
		s_push(),
			s_ortho(100),
			s_push(),
				s_background(7, s_stage_background),
			s_pull(),
		s_pull(),
		s_layer(TRUE),
		s_push(),
			s_perspective(45, 100, 20000, s_stage_perspective),
			s_push(),
				s_camera(14, 0, 2000, 6000, 0, 0, 0, s_stage_camera),
				s_push(),
					s_gfx(TEX_EDGE, 0x070020C8),
					s_object(),
					s_callback(0, s_stage_weather),
				s_pull(),
			s_pull(),
		s_pull(),
	s_pull(),
	s_exit(),
};
