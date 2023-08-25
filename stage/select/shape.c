#include <sm64/s_script.h>

#include "file/shape.c"
#include "tile/shape.c"

S_SCRIPT s_file_select[] =
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
			s_persp(45, 100, 25000),
			s_push(),
				s_camera(0, 0, 0, 1000, 0, 0, 0, NULL),
				s_push(),
					s_object(),
				s_pull(),
			s_pull(),
		s_pull(),
		s_layer(FALSE),
		s_push(),
			s_callback(0, s_file_select_main),
		s_pull(),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_star_select[] =
{
	s_scene(160, 120, 160, 120, 10),
	s_push(),
		s_layer(FALSE),
		s_push(),
			s_ortho(100),
			s_push(),
				s_background(GPACK_RGBA5551(0xFF, 0xFF, 0xFF, 1), NULL),
			s_pull(),
		s_pull(),
		s_layer(TRUE),
		s_push(),
			s_persp(45, 100, 25000),
			s_push(),
				s_camera(0, 0, 0, 1000, 0, 0, 0, NULL),
				s_push(),
					s_object(),
				s_pull(),
			s_pull(),
		s_pull(),
		s_layer(FALSE),
		s_push(),
			s_callback(0, s_star_select_main),
		s_pull(),
	s_pull(),
	s_exit(),
};
