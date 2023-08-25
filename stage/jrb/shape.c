#include <sm64/s_script.h>

S_SCRIPT s_jrb_61[] =
{
	s_cull(1600),
	s_push(),
		s_gfx(OPA_SURF, 0x0700AE48),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_jrb_62[] =
{
	s_cull(300),
	s_push(),
		s_gfx(OPA_SURF, 0x0700AFB0),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_jrb_59[] =
{
	s_cull(1100),
	s_push(),
		s_gfx(OPA_SURF, 0x07007AC8),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_jrb_63[] =
{
	s_cull(900),
	s_push(),
		s_gfx(OPA_SURF, 0x07007DC8),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_jrb_60[] =
{
	s_cull(300),
	s_push(),
		s_gfx(OPA_SURF, 0x070080F8),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_jrb_53[] =
{
	s_cull(5000),
	s_push(),
		s_gfx(OPA_SURF, 0x07008FD8),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_jrb_57[] =
{
	s_cull(5000),
	s_push(),
		s_callback(0, s_obj_lib_8029D924),
		s_gfx(XLU_SURF, 0x070090B0),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_jrb_54[] =
{
	s_cull(5000),
	s_push(),
		s_gfx(OPA_SURF, 0x07009A58),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_jrb_58[] =
{
	s_cull(5000),
	s_push(),
		s_callback(0, s_obj_lib_8029D924),
		s_gfx(XLU_SURF, 0x07009B30),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_jrb_55[] =
{
	s_cull(5000),
	s_push(),
		s_gfx(OPA_SURF, 0x0700A608),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_jrb_56[] =
{
	s_cull(5000),
	s_push(),
		s_gfx(OPA_SURF, 0x0700AC68),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_jrb1[] =
{
	s_scene(160, 120, 160, 120, 10),
	s_push(),
		s_layer(FALSE),
		s_push(),
			s_ortho(100),
			s_push(),
				s_background(8, s_stage_background),
			s_pull(),
		s_pull(),
		s_layer(TRUE),
		s_push(),
			s_perspective(45, 100, 25000, s_stage_perspective),
			s_push(),
				s_camera(16, 0, 2000, 6000, 0, 0, 0, s_stage_camera),
				s_push(),
					s_gfx(TEX_EDGE, 0x07002FD0),
					s_gfx(OPA_SURF, 0x07004940),
					s_gfx(OPA_SURF, 0x07004C78),
					s_gfx(OPA_SURF, 0x070058C8),
					s_gfx(OPA_SURF, 0x070069B0),
					s_gfx(OPA_SURF, 0x07007570),
					s_gfx(TEX_EDGE, 0x07007718),
					s_callback(0, s_scroll_802D01E0),
					s_callback(4609, s_scroll_802D104C),
					s_callback(4613, s_scroll_802D104C),
					s_object(),
					s_callback(14, s_stage_weather),
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

S_SCRIPT s_jrb2[] =
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
			s_perspective(45, 100, 10000, s_stage_perspective),
			s_push(),
				s_camera(16, 0, 2000, 6000, 0, 0, 0, s_stage_camera),
				s_push(),
					s_gfx(OPA_SURF, 0x0700EF00),
					s_gfx(TEX_EDGE, 0x0700FE48),
					s_gfx(OPA_SURF, 0x07010548),
					s_callback(0, s_scroll_802D01E0),
					s_callback(4610, s_scroll_802D104C),
					s_object(),
					s_callback(2, s_stage_weather),
				s_pull(),
			s_pull(),
		s_pull(),
	s_pull(),
	s_exit(),
};
