#include <sm64/s_script.h>

S_SCRIPT s_rr_3[] =
{
	s_cull(3000),
	s_push(),
		s_gfx(OPA_SURF, 0x07002CC8),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_rr_4[] =
{
	s_cull(1000),
	s_push(),
		s_gfx(TEX_EDGE, 0x07002E80),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_rr_5[] =
{
	s_cull(3000),
	s_push(),
		s_gfx(OPA_SURF, 0x07004A98),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_rr_6[] =
{
	s_cull(3000),
	s_push(),
		s_gfx(OPA_SURF, 0x07005C80),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_rr_7[] =
{
	s_cull(3500),
	s_push(),
		s_gfx(OPA_SURF, 0x07007E60),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_rr_8[] =
{
	s_cull(3500),
	s_push(),
		s_gfx(OPA_SURF, 0x07008258),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_rr_9[] =
{
	s_cull(2800),
	s_push(),
		s_gfx(OPA_SURF, 0x07008E20),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_rr_10[] =
{
	s_cull(4000),
	s_push(),
		s_gfx(OPA_SURF, 0x0700BB48),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_rr_11[] =
{
	s_cull(3000),
	s_push(),
		s_gfx(OPA_SURF, 0x0700CA38),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_rr_12[] =
{
	s_cull(4000),
	s_push(),
		s_gfx(OPA_SURF, 0x0700DBD8),
		s_gfx(TEX_EDGE, 0x0700DE88),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_rr_13[] =
{
	s_cull(1500),
	s_push(),
		s_gfx(TEX_EDGE, 0x0700E178),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_rr_14[] =
{
	s_cull(1500),
	s_push(),
		s_gfx(XLU_SURF, 0x0700E830),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_rr_15[] =
{
	s_cull(4000),
	s_push(),
		s_gfx(OPA_SURF, 0x07012758),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_rr_16[] =
{
	s_cull(3500),
	s_push(),
		s_gfx(OPA_SURF, 0x07014340),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_rr_17[] =
{
	s_cull(1600),
	s_push(),
		s_gfx(OPA_SURF, 0x07014D68),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_rr_18[] =
{
	s_cull(3800),
	s_push(),
		s_gfx(TEX_EDGE, 0x070154F0),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_rr_19[] =
{
	s_cull(2500),
	s_push(),
		s_gfx(XLU_SURF, 0x07015AA0),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_rr_20[] =
{
	s_cull(4500),
	s_push(),
		s_gfx(XLU_SURF, 0x07017368),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_rr_21[] =
{
	s_cull(5000),
	s_push(),
		s_gfx(XLU_SURF, 0x07018990),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_rr_22[] =
{
	s_cull(3000),
	s_push(),
		s_gfx(TEX_EDGE, 0x07018FD8),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_rr_55[] =
{
	s_cull(500),
	s_push(),
		s_callback(0, s_obj_shape_802D2520),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_rr_62[] =
{
	s_cull(1300),
	s_push(),
		s_gfx(OPA_SURF, 0x07019918),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_rr_57[] =
{
	s_cull(1500),
	s_push(),
		s_gfx(OPA_SURF, 0x0701A3A0),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_rr_59[] =
{
	s_cull(1200),
	s_push(),
		s_gfx(TEX_EDGE, 0x0701A4B8),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_rr_56[] =
{
	s_cull(1300),
	s_push(),
		s_gfx(OPA_SURF, 0x0701A9B0),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_rr_54[] =
{
	s_cull(700),
	s_push(),
		s_gfx(OPA_SURF, 0x0701AC30),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_rr_58[] =
{
	s_cull(700),
	s_push(),
		s_gfx(OPA_SURF, 0x0701ADD8),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_rr_64[] =
{
	s_cull(500),
	s_push(),
		s_gfx(OPA_SURF, 0x0701B058),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_rr_60[] =
{
	s_cull(1000),
	s_push(),
		s_gfx(OPA_SURF, 0x0701B2D8),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_rr_63[] =
{
	s_cull(420),
	s_push(),
		s_gfx(OPA_SURF, 0x0701B660),
		s_gfx(TEX_EDGE, 0x0701B798),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_rr_61[] =
{
	s_cull(1100),
	s_push(),
		s_gfx(OPA_SURF, 0x0701BB20),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_rr_65[] =
{
	s_cull(1500),
	s_push(),
		s_gfx(OPA_SURF, 0x0701E488),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_rr_66[] =
{
	s_cull(1500),
	s_push(),
		s_gfx(OPA_SURF, 0x07020F18),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_rr_67[] =
{
	s_cull(1500),
	s_push(),
		s_gfx(OPA_SURF, 0x070239A8),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_rr_68[] =
{
	s_cull(1500),
	s_push(),
		s_gfx(OPA_SURF, 0x07026448),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_rr_69[] =
{
	s_cull(1500),
	s_push(),
		s_gfx(OPA_SURF, 0x07028DC0),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_rr1[] =
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
				s_camera(14, 0, 2000, 6000, 0, 0, -8000, s_stage_camera),
				s_push(),
					s_callback(0, s_obj_shape_802D2470),
					s_gfx(TEX_EDGE, 0x07002168),
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
