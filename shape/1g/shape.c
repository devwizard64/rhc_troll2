#include <sm64/s_script.h>

S_SCRIPT s_1g_84[] =
{
	s_shadow(100, 150, 1),
	s_push(),
		s_scale(0.5),
		s_push(),
			s_joint(OPA_SURF, NULL, 0, 0, 0),
			s_push(),
				s_joint(TEX_EDGE, 0x05002900, 0, 0, 0),
				s_push(),
					s_joint(OPA_SURF, 0x05000328, 100, 0, 0),
					s_joint(TEX_EDGE, 0x05002A20, 100, 0, 0),
					s_joint(TEX_EDGE, 0x05002B30, 100, 0, 0),
					s_joint(OPA_SURF, NULL, -88, -32, 0),
					s_push(),
						s_joint(OPA_SURF, 0x050002A0, 0, 0, 0),
						s_joint(TEX_EDGE, 0x05002D08, 0, 0, 0),
						s_joint(OPA_SURF, NULL, 0, 0, 0),
						s_joint(OPA_SURF, NULL, 0, 0, 0),
						s_joint(OPA_SURF, NULL, 0, 0, 0),
						s_joint(OPA_SURF, NULL, 0, 0, 0),
					s_pull(),
				s_pull(),
				s_joint(OPA_SURF, NULL, 0, 0, 0),
				s_push(),
					s_billboard(0, 0, 0),
					s_push(),
						s_gfx(TEX_EDGE, 0x05002748),
					s_pull(),
				s_pull(),
				s_joint(TEX_EDGE, 0x05002830, 0, 0, 0),
			s_pull(),
		s_pull(),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_1g_87[] =
{
	s_shadow(100, 150, 1),
	s_push(),
		s_scale(0.25),
		s_push(),
			s_joint(OPA_SURF, 0x05007540, 0, 0, 40),
			s_push(),
				s_joint(OPA_SURF, NULL, -51, 84, -13),
				s_push(),
					s_joint(OPA_SURF, 0x05007198, 0, 0, 0),
				s_pull(),
				s_joint(OPA_SURF, NULL, 51, 84, -13),
				s_push(),
					s_joint(OPA_SURF, 0x050071E8, 0, 0, 0),
				s_pull(),
				s_joint(OPA_SURF, NULL, -38, -54, -13),
				s_push(),
					s_joint(OPA_SURF, 0x05007238, 0, 0, 0),
				s_pull(),
				s_joint(OPA_SURF, NULL, 38, -54, -13),
				s_push(),
					s_joint(OPA_SURF, 0x050072C8, 0, 0, 0),
				s_pull(),
				s_joint(OPA_SURF, NULL, 0, 111, -19),
				s_push(),
					s_select(5, s_object_a_802BFBAC),
					s_push(),
						s_joint(OPA_SURF, 0x05006428, 0, 0, 0),
						s_joint(OPA_SURF, 0x05006458, 0, 0, 0),
						s_joint(OPA_SURF, 0x05006488, 0, 0, 0),
						s_joint(OPA_SURF, 0x050064B8, 0, 0, 0),
						s_joint(OPA_SURF, 0x050064E8, 0, 0, 0),
					s_pull(),
				s_pull(),
			s_pull(),
		s_pull(),
	s_pull(),
	s_exit(),
};

extern Gfx gfx_cap_s[];

S_SCRIPT s_1g_85[] =
{
	s_scale(0.25),
	s_push(),
		s_joint(OPA_SURF, NULL, 0, 0, 0),
		s_push(),
			s_joint(OPA_SURF, NULL, 0, 0, 0),
			s_push(),
				s_billboard(0, 0, 0),
				s_push(),
					s_gfx(TEX_EDGE, 0x0500C620),
				s_pull(),
			s_pull(),
			s_push(),
				s_joint(OPA_SURF, NULL, 356, 0, 0),
				s_push(),
					s_billboard(0, 0, 0),
					s_push(),
						s_gfx(TEX_EDGE, 0x0500CBF8),
					s_pull(),
				s_pull(),
				s_joint(TEX_EDGE, 0x0500CCE8, 356, 0, 0),
				s_joint(TEX_EDGE, 0x0500C760, 356, 0, 0),
				s_select(2, s_obj_lib_8029DB48),
				s_push(),
					s_empty(),
					s_empty(),
					s_push(),
						s_scale(1),
						s_push(),
							s_gfx_posang(OPA_SURF, gfx_cap_s, 490, 14, 43, 305, 0, 248),
						s_pull(),
					s_pull(),
				s_pull(),
				s_joint(OPA_SURF, NULL, 89, 0, -229),
				s_push(),
					s_joint(OPA_SURF, 0x0500C500, 0, 0, 0),
					s_push(),
						s_joint(OPA_SURF, 0x0500CAA8, 68, 0, 0),
						s_callback(0, s_obj_lib_8029D890),
					s_pull(),
				s_pull(),
				s_joint(OPA_SURF, NULL, 356, 0, 0),
			s_pull(),
		s_pull(),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_1g_86[] =
{
	s_shadow(160, 180, 1),
	s_push(),
		s_script(s_1g_85),
	s_pull(),
	s_exit(),
};
