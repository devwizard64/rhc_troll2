#include <sm64/s_script.h>

S_SCRIPT s_ccm_54[] =
{
	s_cull(500),
	s_push(),
		s_gfx(TEX_EDGE, 0x07010F28),
		s_gfx(OPA_SURF, 0x070118B0),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_ccm_210[] =
{
	s_shadow(400, 200, 1),
	s_push(),
		s_gfx(OPA_SURF, 0x07012BD8),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_ccm_55[] =
{
	s_cull(300),
	s_push(),
		s_gfx(OPA_SURF, 0x070136D0),
		s_gfx(TEX_EDGE, 0x07013870),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_ccm_3[] =
{
	s_cull(800),
	s_push(),
		s_lod(-1000, 4000),
		s_push(),
			s_gfx(OPA_SURF, 0x0700E708),
			s_gfx(TEX_EDGE, 0x0700E970),
		s_pull(),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_ccm_4[] =
{
	s_cull(900),
	s_push(),
		s_lod(-1000, 7000),
		s_push(),
			s_gfx(OPA_SURF, 0x0700F440),
			s_gfx(TEX_EDGE, 0x0700F650),
			s_gfx(XLU_SURF, 0x0700F780),
		s_pull(),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_ccm_5[] =
{
	s_cull(400),
	s_push(),
		s_lod(-500, 7000),
		s_push(),
			s_gfx(OPA_SURF, 0x0700FB00),
		s_pull(),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_ccm_6[] =
{
	s_cull(800),
	s_push(),
		s_lod(-1000, 7000),
		s_push(),
			s_gfx(XLU_SURF, 0x0700FD08),
		s_pull(),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_ccm_7[] =
{
	s_cull(3500),
	s_push(),
		s_lod(-3000, 6000),
		s_push(),
			s_gfx(OPA_SURF, 0x07010660),
			s_gfx(TEX_EDGE, 0x070109D0),
			s_gfx(XLU_SURF, 0x07010B50),
		s_pull(),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_ccm1[] =
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
			s_perspective(45, 100, 12800, s_stage_perspective),
			s_push(),
				s_camera(1, 0, 2000, 6000, 0, 0, 0, s_stage_camera),
				s_push(),
					s_gfx(OPA_SURF, 0x0700B090),
					s_gfx(OPA_SURF, 0x0700B1D8),
					s_gfx(OPA_SURF, 0x0700C380),
					s_gfx(TEX_EDGE, 0x0700D578),
					s_gfx(XLU_DECAL, 0x0700DDF0),
					s_callback(0, s_scroll_802D01E0),
					s_callback(1281, s_scroll_802D104C),
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

S_SCRIPT s_ccm2[] =
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
				s_camera(9, 0, 2000, 6000, 0, 0, 0, s_stage_camera),
				s_push(),
					s_gfx(OPA_SURF, 0x0701CE30),
					s_gfx(OPA_SURF, 0x0701E558),
					s_gfx(OPA_DECAL, 0x0701E6B0),
					s_gfx(TEX_EDGE, 0x0701FC78),
					s_gfx(TEX_EDGE, 0x0701FD78),
					s_gfx(XLU_SURF, 0x0701FE60),
					s_gfx(XLU_SURF, 0x070207F0),
					s_object(),
					s_callback(0, s_stage_weather),
				s_pull(),
			s_pull(),
		s_pull(),
	s_pull(),
	s_exit(),
};
