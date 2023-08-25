#include <sm64/s_script.h>

S_SCRIPT s_hmc_60[] =
{
	s_cull(1000),
	s_push(),
		s_gfx(TEX_EDGE, 0x0701FFF8),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_hmc_57[] =
{
	s_cull(300),
	s_push(),
		s_shadow(400, 180, 0),
		s_push(),
			s_gfx(OPA_SURF, 0x07023BC8),
		s_pull(),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_hmc_58[] =
{
	s_cull(150),
	s_push(),
		s_gfx(OPA_SURF, 0x07023E10),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_hmc_59[] =
{
	s_cull(100),
	s_push(),
		s_gfx(OPA_SURF, 0x07024110),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_hmc_54[] =
{
	s_cull(550),
	s_push(),
		s_gfx(OPA_SURF, 0x07022DA0),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_hmc_55[] =
{
	s_cull(200),
	s_push(),
		s_gfx(OPA_SURF, 0x07023090),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_hmc_56[] =
{
	s_cull(500),
	s_push(),
		s_gfx(OPA_SURF, 0x07022AA0),
	s_pull(),
	s_exit(),
};

static S_SCRIPT s_hmc1_1[] =
{
	s_empty(),
	s_push(),
		s_gfx(OPA_SURF, 0x070078B0),
		s_gfx(TEX_EDGE, 0x07007B50),
		s_gfx(XLU_SURF, 0x070080E8),
		s_gfx(OPA_SURF, 0x070093F0),
	s_pull(),
	s_return(),
};

static S_SCRIPT s_hmc1_2[] =
{
	s_empty(),
	s_push(),
		s_gfx(OPA_SURF, 0x0700E448),
		s_gfx(TEX_EDGE, 0x0700EF00),
		s_gfx(XLU_SURF, 0x0700F3E8),
		s_gfx(OPA_SURF, 0x0700FA40),
		s_gfx(XLU_SURF, 0x0700FEF0),
		s_gfx(OPA_DECAL, 0x07010070),
	s_pull(),
	s_return(),
};

static S_SCRIPT s_hmc1_3[] =
{
	s_empty(),
	s_push(),
		s_gfx(OPA_SURF, 0x07013CA8),
		s_gfx(TEX_EDGE, 0x07013E80),
		s_gfx(XLU_SURF, 0x07014300),
		s_gfx(XLU_SURF, 0x07014B08),
		s_gfx(OPA_SURF, 0x07014C00),
		s_gfx(XLU_SURF, 0x07014E48),
		s_callback(0, s_scroll_802D01E0),
		s_callback(1794, s_scroll_802D104C),
	s_pull(),
	s_return(),
};

static S_SCRIPT s_hmc1_4[] =
{
	s_empty(),
	s_push(),
		s_gfx(OPA_SURF, 0x070173A8),
		s_gfx(TEX_EDGE, 0x07017C98),
		s_gfx(XLU_SURF, 0x07018200),
		s_gfx(OPA_SURF, 0x07019248),
		s_gfx(XLU_SURF, 0x07019368),
	s_pull(),
	s_return(),
};

static S_SCRIPT s_hmc1_5[] =
{
	s_empty(),
	s_push(),
		s_gfx(OPA_SURF, 0x0701A080),
		s_gfx(TEX_EDGE, 0x0701A400),
	s_pull(),
	s_return(),
};

static S_SCRIPT s_hmc1_6[] =
{
	s_empty(),
	s_push(),
		s_gfx(OPA_SURF, 0x0701E820),
		s_gfx(TEX_EDGE, 0x0701F1B0),
		s_gfx(XLU_SURF, 0x0701F690),
		s_gfx(XLU_SURF, 0x0701F818),
		s_gfx(OPA_SURF, 0x0701FD58),
		s_callback(0, s_scroll_802D01E0),
		s_callback(1793, s_scroll_802D104C),
	s_pull(),
	s_return(),
};

static S_SCRIPT s_hmc1_7[] =
{
	s_empty(),
	s_push(),
		s_gfx(OPA_SURF, 0x07020FD0),
		s_callback(0, s_wave_802D5D0C),
		s_callback(0, s_wave_802D5B98),
	s_pull(),
	s_return(),
};

static S_SCRIPT s_hmc1_8[] =
{
	s_empty(),
	s_push(),
		s_gfx(OPA_SURF, 0x07021760),
		s_gfx(XLU_SURF, 0x07021BA0),
		s_gfx(OPA_SURF, 0x070228A0),
	s_pull(),
	s_return(),
};

static S_SCRIPT s_hmc1_9[] =
{
	s_empty(),
	s_push(),
		s_gfx(OPA_SURF, 0x070078B0),
		s_gfx(TEX_EDGE, 0x07007B50),
		s_gfx(XLU_SURF, 0x070080E8),
		s_gfx(OPA_SURF, 0x070093F0),
		s_gfx(OPA_SURF, 0x0700E448),
		s_gfx(TEX_EDGE, 0x0700EF00),
		s_gfx(XLU_SURF, 0x0700F3E8),
		s_gfx(OPA_SURF, 0x0700FA40),
		s_gfx(XLU_SURF, 0x0700FEF0),
		s_gfx(OPA_DECAL, 0x07010070),
	s_pull(),
	s_return(),
};

static S_SCRIPT s_hmc1_10[] =
{
	s_empty(),
	s_push(),
		s_gfx(OPA_SURF, 0x070078B0),
		s_gfx(TEX_EDGE, 0x07007B50),
		s_gfx(XLU_SURF, 0x070080E8),
		s_gfx(OPA_SURF, 0x070093F0),
		s_gfx(OPA_SURF, 0x070173A8),
		s_gfx(TEX_EDGE, 0x07017C98),
		s_gfx(XLU_SURF, 0x07018200),
		s_gfx(OPA_SURF, 0x07019248),
		s_gfx(XLU_SURF, 0x07019368),
	s_pull(),
	s_return(),
};

static S_SCRIPT s_hmc1_11[] =
{
	s_empty(),
	s_push(),
		s_gfx(OPA_SURF, 0x0700E448),
		s_gfx(TEX_EDGE, 0x0700EF00),
		s_gfx(XLU_SURF, 0x0700F3E8),
		s_gfx(OPA_SURF, 0x0700FA40),
		s_gfx(XLU_SURF, 0x0700FEF0),
		s_gfx(OPA_DECAL, 0x07010070),
		s_gfx(OPA_SURF, 0x07013CA8),
		s_gfx(TEX_EDGE, 0x07013E80),
		s_gfx(XLU_SURF, 0x07014300),
		s_gfx(XLU_SURF, 0x07014B08),
		s_gfx(OPA_SURF, 0x07014C00),
		s_gfx(XLU_SURF, 0x07014E48),
		s_callback(0, s_scroll_802D01E0),
		s_callback(1794, s_scroll_802D104C),
	s_pull(),
	s_return(),
};

static S_SCRIPT s_hmc1_12[] =
{
	s_empty(),
	s_push(),
		s_gfx(OPA_SURF, 0x0700E448),
		s_gfx(TEX_EDGE, 0x0700EF00),
		s_gfx(XLU_SURF, 0x0700F3E8),
		s_gfx(OPA_SURF, 0x0700FA40),
		s_gfx(XLU_SURF, 0x0700FEF0),
		s_gfx(OPA_DECAL, 0x07010070),
		s_gfx(OPA_SURF, 0x070173A8),
		s_gfx(TEX_EDGE, 0x07017C98),
		s_gfx(XLU_SURF, 0x07018200),
		s_gfx(OPA_SURF, 0x07019248),
		s_gfx(XLU_SURF, 0x07019368),
	s_pull(),
	s_return(),
};

static S_SCRIPT s_hmc1_13[] =
{
	s_empty(),
	s_push(),
		s_gfx(OPA_SURF, 0x07013CA8),
		s_gfx(TEX_EDGE, 0x07013E80),
		s_gfx(XLU_SURF, 0x07014300),
		s_gfx(XLU_SURF, 0x07014B08),
		s_gfx(OPA_SURF, 0x07014C00),
		s_gfx(XLU_SURF, 0x07014E48),
		s_gfx(OPA_SURF, 0x0701A080),
		s_gfx(TEX_EDGE, 0x0701A400),
		s_callback(0, s_scroll_802D01E0),
		s_callback(1794, s_scroll_802D104C),
	s_pull(),
	s_return(),
};

static S_SCRIPT s_hmc1_14[] =
{
	s_empty(),
	s_push(),
		s_gfx(OPA_SURF, 0x07013CA8),
		s_gfx(TEX_EDGE, 0x07013E80),
		s_gfx(XLU_SURF, 0x07014300),
		s_gfx(XLU_SURF, 0x07014B08),
		s_gfx(OPA_SURF, 0x07014C00),
		s_gfx(XLU_SURF, 0x07014E48),
		s_gfx(OPA_SURF, 0x0701E820),
		s_gfx(TEX_EDGE, 0x0701F1B0),
		s_gfx(XLU_SURF, 0x0701F690),
		s_gfx(XLU_SURF, 0x0701F818),
		s_gfx(OPA_SURF, 0x0701FD58),
		s_callback(0, s_scroll_802D01E0),
		s_callback(1793, s_scroll_802D104C),
		s_callback(1794, s_scroll_802D104C),
	s_pull(),
	s_return(),
};

static S_SCRIPT s_hmc1_15[] =
{
	s_empty(),
	s_push(),
		s_gfx(OPA_SURF, 0x070173A8),
		s_gfx(TEX_EDGE, 0x07017C98),
		s_gfx(XLU_SURF, 0x07018200),
		s_gfx(OPA_SURF, 0x07019248),
		s_gfx(XLU_SURF, 0x07019368),
		s_gfx(OPA_SURF, 0x0701E820),
		s_gfx(TEX_EDGE, 0x0701F1B0),
		s_gfx(XLU_SURF, 0x0701F690),
		s_gfx(XLU_SURF, 0x0701F818),
		s_gfx(OPA_SURF, 0x0701FD58),
		s_callback(0, s_scroll_802D01E0),
		s_callback(1793, s_scroll_802D104C),
	s_pull(),
	s_return(),
};

static S_SCRIPT s_hmc1_16[] =
{
	s_empty(),
	s_push(),
		s_gfx(OPA_SURF, 0x0701E820),
		s_gfx(TEX_EDGE, 0x0701F1B0),
		s_gfx(XLU_SURF, 0x0701F690),
		s_gfx(XLU_SURF, 0x0701F818),
		s_gfx(OPA_SURF, 0x0701FD58),
		s_gfx(OPA_SURF, 0x07020FD0),
		s_callback(0, s_wave_802D5D0C),
		s_callback(0, s_wave_802D5B98),
		s_callback(0, s_scroll_802D01E0),
		s_callback(1793, s_scroll_802D104C),
	s_pull(),
	s_return(),
};

static S_SCRIPT s_hmc1_17[] =
{
	s_empty(),
	s_push(),
		s_gfx(OPA_SURF, 0x0701E820),
		s_gfx(TEX_EDGE, 0x0701F1B0),
		s_gfx(XLU_SURF, 0x0701F690),
		s_gfx(XLU_SURF, 0x0701F818),
		s_gfx(OPA_SURF, 0x0701FD58),
		s_gfx(OPA_SURF, 0x07021760),
		s_gfx(XLU_SURF, 0x07021BA0),
		s_gfx(OPA_SURF, 0x070228A0),
		s_callback(0, s_scroll_802D01E0),
		s_callback(1793, s_scroll_802D104C),
	s_pull(),
	s_return(),
};

static S_SCRIPT s_hmc1_18[] =
{
	s_empty(),
	s_push(),
		s_gfx(OPA_SURF, 0x070173A8),
		s_gfx(TEX_EDGE, 0x07017C98),
		s_gfx(XLU_SURF, 0x07018200),
		s_gfx(OPA_SURF, 0x07019248),
		s_gfx(XLU_SURF, 0x07019368),
		s_gfx(OPA_SURF, 0x0701A080),
		s_gfx(TEX_EDGE, 0x0701A400),
	s_pull(),
	s_return(),
};

S_SCRIPT s_hmc1[] =
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
				s_camera(16, 0, 2000, 6000, 0, 0, 0, s_stage_camera),
				s_push(),
					s_select(18, s_obj_lib_8029DBD4),
					s_push(),
						s_call(s_hmc1_1),
						s_call(s_hmc1_2),
						s_call(s_hmc1_3),
						s_call(s_hmc1_4),
						s_call(s_hmc1_5),
						s_call(s_hmc1_6),
						s_call(s_hmc1_7),
						s_call(s_hmc1_8),
						s_call(s_hmc1_9),
						s_call(s_hmc1_10),
						s_call(s_hmc1_11),
						s_call(s_hmc1_12),
						s_call(s_hmc1_13),
						s_call(s_hmc1_14),
						s_call(s_hmc1_15),
						s_call(s_hmc1_16),
						s_call(s_hmc1_17),
						s_call(s_hmc1_18),
					s_pull(),
					s_object(),
					s_callback(0, s_stage_weather),
				s_pull(),
			s_pull(),
		s_pull(),
	s_pull(),
	s_exit(),
};
