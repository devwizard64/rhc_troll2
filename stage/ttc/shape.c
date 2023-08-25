#include <sm64/s_script.h>

S_SCRIPT s_ttc_54[] =
{
	s_cull(410),
	s_push(),
		s_gfx(OPA_SURF, 0x0700ECB8),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_ttc_55[] =
{
	s_cull(410),
	s_push(),
		s_gfx(OPA_SURF, 0x0700EFE0),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_ttc_56[] =
{
	s_cull(1100),
	s_push(),
		s_gfx(OPA_SURF, 0x0700F760),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_ttc_57[] =
{
	s_cull(720),
	s_push(),
		s_gfx(OPA_SURF, 0x0700FBB8),
		s_callback(5120, s_scroll_802D1E48),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_ttc_58[] =
{
	s_cull(520),
	s_push(),
		s_gfx(OPA_SURF, 0x0700FFE8),
		s_callback(5121, s_scroll_802D1E48),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_ttc_59[] =
{
	s_cull(500),
	s_push(),
		s_gfx(OPA_SURF, 0x070102B8),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_ttc_60[] =
{
	s_cull(400),
	s_push(),
		s_gfx(OPA_SURF, 0x07010868),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_ttc_61[] =
{
	s_cull(520),
	s_push(),
		s_gfx(OPA_SURF, 0x07010D38),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_ttc_62[] =
{
	s_cull(250),
	s_push(),
		s_gfx(OPA_SURF, 0x07011040),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_ttc_63[] =
{
	s_cull(250),
	s_push(),
		s_gfx(OPA_SURF, 0x07011360),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_ttc_64[] =
{
	s_cull(380),
	s_push(),
		s_gfx(OPA_SURF, 0x070116A8),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_ttc_65[] =
{
	s_cull(1700),
	s_push(),
		s_gfx(OPA_SURF, 0x07011B38),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_ttc_66[] =
{
	s_cull(500),
	s_push(),
		s_gfx(OPA_SURF, 0x07012028),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_ttc_67[] =
{
	s_cull(200),
	s_push(),
		s_gfx(TEX_EDGE, 0x07012148),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_ttc_68[] =
{
	s_cull(300),
	s_push(),
		s_gfx(TEX_EDGE, 0x07012278),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_ttc1[] =
{
	s_scene(160, 120, 160, 120, 10),
	s_push(),
		s_layer(FALSE),
		s_push(),
			s_ortho(100),
			s_push(),
				s_background(GPACK_RGBA5551(0xC5, 0xFF, 0xFF, 1), NULL),
			s_pull(),
		s_pull(),
		s_layer(TRUE),
		s_push(),
			s_perspective(45, 100, 12800, s_stage_perspective),
			s_push(),
				s_camera(2, 0, 2000, 6000, 0, 0, 0, s_stage_camera),
				s_push(),
					s_callback(0, s_scroll_802D01E0),
					s_callback(5120, s_scroll_802D2108),
					s_callback(5121, s_scroll_802D2108),
					s_gfx(OPA_SURF, 0x0700AD38),
					s_gfx(XLU_SURF, 0x0700B1D8),
					s_gfx(TEX_EDGE, 0x0700E878),
					s_object(),
					s_callback(0, s_stage_weather),
				s_pull(),
			s_pull(),
		s_pull(),
	s_pull(),
	s_exit(),
};
