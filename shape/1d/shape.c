#include <sm64/s_script.h>

S_SCRIPT s_1d_88[] =
{
	s_empty(),
	s_push(),
		s_scale(0.25),
		s_push(),
			s_joint(OPA_SURF, NULL, 0, 0, 0),
			s_push(),
				s_joint(OPA_SURF, 0x05001568, 0, 0, 0),
				s_push(),
					s_joint(OPA_SURF, NULL, -520, -6, 0),
					s_push(),
						s_joint(OPA_SURF, 0x050012B8, 0, 0, 0),
					s_pull(),
				s_pull(),
			s_pull(),
		s_pull(),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_1d_86[] =
{
	s_cull(800),
	s_push(),
		s_scale(0.25),
		s_push(),
			s_joint(OPA_SURF, NULL, 0, 0, 0),
			s_push(),
				s_joint(OPA_SURF, 0x0500A768, 0, 0, 0),
				s_push(),
					s_callback(0, s_object_a_802B798C),
				s_pull(),
				s_push(),
					s_joint(OPA_SURF, 0x05009DD0, 201, 0, 0),
					s_push(),
						s_joint(OPA_SURF, 0x0500A008, 415, 0, 0),
						s_push(),
							s_joint(OPA_SURF, 0x0500A160, 486, 0, 0),
						s_pull(),
					s_pull(),
				s_pull(),
				s_joint(TEX_EDGE, 0x0500A990, 0, 0, 0),
				s_joint(TEX_EDGE, 0x0500A8A8, 0, 0, 0),
			s_pull(),
		s_pull(),
	s_pull(),
	s_exit(),
};

extern Gfx gfx_powerstar_star_s[];
extern Gfx gfx_powerstar_eyes_s[];

S_SCRIPT s_1d_85[] =
{
	s_cull(2000),
	s_push(),
		s_scale(0.25),
		s_push(),
			s_joint(OPA_SURF, NULL, 0, 0, 0),
			s_push(),
				s_joint(OPA_SURF, 0x0500D268, 0, 0, 0),
				s_push(),
					s_joint(OPA_SURF, 0x0500D468, 245, 0, 0),
					s_push(),
						s_joint(OPA_SURF, 0x0500D668, 494, 0, 0),
						s_push(),
							s_joint(OPA_SURF, 0x0500D828, 475, 0, 0),
							s_push(),
								s_select(2, s_obj_lib_8029DB48),
								s_push(),
									s_empty(),
									s_empty(),
									s_push(),
										s_scale(0.25),
										s_push(),
											s_gfx_posang(OPA_SURF, gfx_powerstar_star_s, 2000, 0, 0, 0, 0, 0),
											s_gfx_posang(TEX_EDGE, gfx_powerstar_eyes_s, 2000, 0, 0, 0, 0, 0),
										s_pull(),
									s_pull(),
								s_pull(),
							s_pull(),
						s_pull(),
					s_pull(),
					s_joint(OPA_SURF, NULL, -254, 0, 0),
					s_push(),
						s_joint(OPA_SURF, 0x0500D050, 0, 0, 0),
						s_push(),
							s_joint(TEX_EDGE, 0x0500DEB8, 527, 0, 0),
							s_push(),
								s_joint(OPA_SURF, NULL, 226, 65, 0),
								s_push(),
									s_joint(TEX_EDGE, 0x0500E258, 0, 0, 0),
									s_joint(OPA_SURF, 0x0500CDD0, 0, 0, 0),
									s_joint(OPA_SURF, NULL, 0, 0, 0),
								s_pull(),
							s_pull(),
							s_joint(TEX_EDGE, 0x0500E088, 527, 0, 0),
							s_joint(OPA_SURF, 0x0500DD08, 527, 0, 0),
							s_joint(OPA_SURF, NULL, 527, 0, 0),
						s_pull(),
					s_pull(),
				s_pull(),
			s_pull(),
		s_pull(),
	s_pull(),
	s_exit(),
};
