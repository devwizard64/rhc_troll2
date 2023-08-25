#include <sm64/s_script.h>

S_SCRIPT s_logo[] =
{
	s_scene(160, 120, 160, 120, 0),
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
			s_persp(45, 128, 16384),
			s_push(),
				s_camera(0, 0, 0, 3200, 0, 0, 0, NULL),
				s_push(),
					s_callback(0, s_logo_shape),
				s_pull(),
			s_pull(),
		s_pull(),
		s_layer(FALSE),
		s_push(),
			s_callback(0, s_logo_symbol),
		s_pull(),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_face[] =
{
	s_scene(160, 120, 160, 120, 0),
	s_push(),
		s_layer(FALSE),
		s_push(),
			s_ortho(100),
			s_push(),
				s_callback(0, s_title_bg),
			s_pull(),
		s_pull(),
		s_layer(TRUE),
		s_push(),
			s_persp(45, 128, 16384),
			s_push(),
				s_callback(2, s_face_main),
			s_pull(),
		s_pull(),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_gameover[] =
{
	s_scene(160, 120, 160, 120, 0),
	s_push(),
		s_layer(FALSE),
		s_push(),
			s_ortho(100),
			s_push(),
				s_callback(0, s_gameover_bg),
			s_pull(),
		s_pull(),
		s_layer(TRUE),
		s_push(),
			s_persp(45, 128, 16384),
			s_push(),
				s_callback(3, s_face_main),
			s_pull(),
		s_pull(),
	s_pull(),
	s_exit(),
};

#include "debug/shape.c"
