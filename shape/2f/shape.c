#include <sm64/s_script.h>

S_SCRIPT s_2f_103[] =
{
	s_shadow(200, 155, 1),
	s_push(),
		s_gfx(TEX_EDGE, 0x06002080),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_2f_102[] =
{
	s_empty(),
	s_push(),
		s_select(20, s_obj_lib_8029DB48),
		s_push(),
			s_gfx(TEX_EDGE, 0x060041D8),
			s_gfx(TEX_EDGE, 0x060041F0),
			s_gfx(TEX_EDGE, 0x06004208),
			s_gfx(TEX_EDGE, 0x06004220),
			s_gfx(TEX_EDGE, 0x06004208),
			s_gfx(TEX_EDGE, 0x060041F0),
			s_gfx(TEX_EDGE, 0x060041D8),
			s_gfx(TEX_EDGE, 0x060041D8),
			s_gfx(TEX_EDGE, 0x060041D8),
			s_gfx(TEX_EDGE, 0x060041F0),
			s_gfx(TEX_EDGE, 0x06004208),
			s_gfx(TEX_EDGE, 0x06004220),
			s_gfx(TEX_EDGE, 0x06004208),
			s_gfx(TEX_EDGE, 0x060041F0),
			s_gfx(TEX_EDGE, 0x060041D8),
			s_gfx(TEX_EDGE, 0x060041D8),
			s_gfx(TEX_EDGE, 0x060041D8),
			s_gfx(TEX_EDGE, 0x060041D8),
			s_gfx(TEX_EDGE, 0x060041D8),
			s_gfx(TEX_EDGE, 0x060041D8),
		s_pull(),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_2f_100[] =
{
	s_shadow(100, 150, 1),
	s_push(),
		s_scale(0.25),
		s_push(),
			s_joint(OPA_SURF, NULL, 0, 0, 0),
			s_push(),
				s_joint(OPA_SURF, NULL, 0, 0, 0),
				s_push(),
					s_billboard(0, 0, 0),
					s_push(),
						s_gfx(TEX_EDGE, 0x06006880),
					s_pull(),
				s_pull(),
				s_push(),
					s_joint(OPA_SURF, 0x06006758, 54, 0, 0),
					s_joint(OPA_SURF, 0x06006A88, 54, 0, 0),
					s_joint(OPA_SURF, NULL, 57, -48, 0),
					s_push(),
						s_joint(TEX_EDGE, 0x06006BD0, 0, 0, 0),
					s_pull(),
					s_joint(OPA_SURF, NULL, 57, -48, 0),
					s_push(),
						s_joint(TEX_EDGE, 0x06006D00, 0, 0, 0),
					s_pull(),
				s_pull(),
			s_pull(),
		s_pull(),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_2f_206[] =
{
	s_shadow(100, 150, 1),
	s_push(),
		s_scale(0.25),
		s_push(),
			s_callback(0, s_object_c_8030D93C),
			s_pos(0, 0, 0),
			s_push(),
				s_gfx(OPA_SURF, 0x06009748),
			s_pull(),
			s_gfx(OPA_SURF, 0x06009498),
			s_gfx(OPA_SURF, 0x06009938),
			s_gfx(OPA_SURF, 0x06009B68),
			s_billboard(0, 0, 0),
			s_push(),
				s_callback(0, s_object_c_8030D9AC),
				s_scale(0),
				s_push(),
					s_gfx(TEX_EDGE, 0x06009A10),
				s_pull(),
			s_pull(),
		s_pull(),
	s_pull(),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_2f_104[] =
{
	s_cull(5000),
	s_push(),
		s_scale(0.25),
		s_push(),
			s_joint(OPA_SURF, NULL, 0, 0, 0),
			s_push(),
				s_joint(OPA_SURF, 0x0600CFD0, 0, 0, 0),
				s_push(),
					s_joint(OPA_SURF, 0x0600C8B8, 1295, 0, 0),
					s_push(),
						s_joint(OPA_SURF, 0x0600C468, 916, 0, 0),
						s_push(),
							s_joint(OPA_SURF, 0x0600BAF8, 874, 0, 0),
							s_push(),
								s_gfx(TEX_EDGE, 0x0600DFA8),
								s_joint(OPA_SURF, NULL, 30, 444, -6),
								s_push(),
									s_joint(OPA_SURF, 0x0600C030, 0, 0, 0),
								s_pull(),
							s_pull(),
						s_pull(),
					s_pull(),
					s_joint(OPA_SURF, NULL, -893, -490, -6),
					s_push(),
						s_joint(OPA_SURF, 0x0600D440, 0, 0, 0),
						s_push(),
							s_joint(OPA_SURF, 0x0600D6D8, 1300, 0, 0),
						s_pull(),
					s_pull(),
					s_joint(OPA_SURF, NULL, -1086, 91, -700),
					s_push(),
						s_joint(OPA_SURF, 0x0600DE38, 0, 0, 0),
					s_pull(),
					s_joint(OPA_SURF, NULL, 902, 700, -785),
					s_push(),
						s_joint(OPA_SURF, 0x0600DA88, 0, 0, 0),
					s_pull(),
					s_joint(OPA_SURF, NULL, -1086, 91, 698),
					s_push(),
						s_joint(OPA_SURF, 0x0600DC60, 0, 0, 0),
					s_pull(),
					s_joint(OPA_SURF, NULL, 902, 700, 783),
					s_push(),
						s_joint(OPA_SURF, 0x0600D8B0, 0, 0, 0),
					s_pull(),
				s_pull(),
			s_pull(),
		s_pull(),
	s_pull(),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_2f_101[] =
{
	s_shadow(100, 150, 1),
	s_push(),
		s_scale(0.25),
		s_push(),
			s_joint(OPA_SURF, NULL, 0, 0, 0),
			s_push(),
				s_joint(OPA_SURF, NULL, 0, -29, 0),
				s_push(),
					s_joint(OPA_SURF, NULL, -1, 113, 112),
					s_push(),
						s_joint(OPA_SURF, NULL, 0, 0, 0),
						s_push(),
							s_joint(OPA_SURF, NULL, 198, 0, 0),
							s_push(),
								s_joint(OPA_SURF, NULL, 195, 0, 0),
								s_push(),
									s_joint(TEX_EDGE, 0x06014378, 0, 0, 0),
								s_pull(),
								s_joint(TEX_EDGE, 0x06014270, 0, 0, 0),
							s_pull(),
							s_joint(TEX_EDGE, 0x06014188, 0, 0, 0),
						s_pull(),
					s_pull(),
					s_joint(OPA_SURF, NULL, -1, 109, -116),
					s_push(),
						s_joint(OPA_SURF, NULL, 0, 0, 0),
						s_push(),
							s_joint(OPA_SURF, NULL, 198, 0, 0),
							s_push(),
								s_joint(OPA_SURF, NULL, 195, 0, 0),
								s_push(),
									s_joint(TEX_EDGE, 0x06014378, 0, 0, 0),
								s_pull(),
								s_joint(TEX_EDGE, 0x06014270, 0, 0, 0),
							s_pull(),
							s_joint(TEX_EDGE, 0x06014188, 0, 0, 0),
						s_pull(),
					s_pull(),
					s_joint(OPA_SURF, NULL, 0, 0, 0),
					s_push(),
						s_billboard(0, 0, 0),
						s_push(),
							s_gfx(TEX_EDGE, 0x060139F8),
						s_pull(),
					s_pull(),
					s_joint(OPA_SURF, NULL, -29, -57, 28),
					s_push(),
						s_joint(OPA_SURF, NULL, 0, 0, 0),
						s_push(),
							s_joint(OPA_SURF, NULL, 158, 0, 0),
							s_push(),
								s_joint(OPA_SURF, NULL, 0, 0, 0),
								s_push(),
									s_billboard(0, 0, 0),
									s_push(),
										s_gfx(TEX_EDGE, 0x06013AE8),
									s_pull(),
								s_pull(),
								s_joint(TEX_EDGE, 0x06013CB8, 0, 0, 0),
							s_pull(),
						s_pull(),
					s_pull(),
					s_joint(OPA_SURF, NULL, -29, 55, 28),
					s_push(),
						s_joint(OPA_SURF, NULL, 0, 0, 0),
						s_push(),
							s_joint(OPA_SURF, NULL, 157, 0, 0),
							s_push(),
								s_joint(OPA_SURF, NULL, 0, 0, 0),
								s_push(),
									s_billboard(0, 0, 0),
									s_push(),
										s_gfx(TEX_EDGE, 0x06013BD0),
									s_pull(),
								s_pull(),
								s_joint(TEX_EDGE, 0x06013DA0, 0, 0, 0),
							s_pull(),
						s_pull(),
					s_pull(),
					s_joint(OPA_SURF, NULL, -1, -116, -111),
					s_push(),
						s_joint(OPA_SURF, NULL, 0, 0, 0),
						s_push(),
							s_joint(OPA_SURF, NULL, 198, 0, 0),
							s_push(),
								s_joint(OPA_SURF, NULL, 195, 0, 0),
								s_push(),
									s_joint(TEX_EDGE, 0x06014378, 0, 0, 0),
								s_pull(),
								s_joint(TEX_EDGE, 0x06014270, 0, 0, 0),
							s_pull(),
							s_joint(TEX_EDGE, 0x06014188, 0, 0, 0),
						s_pull(),
					s_pull(),
					s_joint(OPA_SURF, NULL, -1, -116, 112),
					s_push(),
						s_joint(OPA_SURF, NULL, 0, 0, 0),
						s_push(),
							s_joint(OPA_SURF, NULL, 195, 0, 0),
							s_push(),
								s_joint(OPA_SURF, NULL, 199, 0, 0),
								s_push(),
									s_joint(TEX_EDGE, 0x06014378, 0, 0, 0),
								s_pull(),
								s_joint(TEX_EDGE, 0x06014270, 0, 0, 0),
							s_pull(),
							s_joint(TEX_EDGE, 0x06014188, 0, 0, 0),
						s_pull(),
					s_pull(),
					s_joint(OPA_SURF, 0x060140F0, 0, 0, 0),
				s_pull(),
			s_pull(),
		s_pull(),
	s_pull(),
	s_exit(),
};
