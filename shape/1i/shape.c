#include <sm64/s_script.h>

S_SCRIPT s_1i_88[] =
{
	s_shadow(100, 150, 1),
	s_push(),
		s_scale(0.25),
		s_push(),
			s_joint(OPA_SURF, NULL, 0, 0, 0),
			s_push(),
				s_joint(OPA_SURF, NULL, 0, 0, 0),
				s_push(),
					s_joint(OPA_SURF, 0x05001F98, 0, 0, 0),
					s_joint(OPA_SURF, 0x05001B20, 0, 0, 0),
					s_joint(OPA_SURF, 0x05002140, 0, 0, 0),
				s_pull(),
			s_pull(),
			s_joint(OPA_SURF, NULL, 0, 0, 0),
			s_push(),
				s_joint(OPA_SURF, NULL, 0, 0, 0),
				s_push(),
					s_joint(OPA_SURF, 0x05001D68, 0, 0, 0),
					s_joint(OPA_SURF, 0x05001978, 0, 0, 0),
					s_joint(OPA_SURF, 0x050022E0, 0, 0, 0),
				s_pull(),
			s_pull(),
		s_pull(),
	s_pull(),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_1i_89[] =
{
	s_cull(300),
	s_push(),
		s_gfx(OPA_SURF, 0x05002FB0),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_1i_86[] =
{
	s_shadow(100, 150, 1),
	s_push(),
		s_scale(0.25),
		s_push(),
			s_joint(OPA_SURF, NULL, 0, 0, 0),
			s_push(),
				s_joint(OPA_SURF, 0x05005190, 0, 0, 0),
				s_push(),
					s_joint(OPA_SURF, NULL, -7, -9, 0),
					s_push(),
						s_joint(OPA_SURF, 0x05005680, 0, 0, 0),
					s_pull(),
					s_joint(OPA_SURF, NULL, 156, -9, 0),
					s_push(),
						s_joint(OPA_SURF, 0x05005408, 0, 0, 0),
					s_pull(),
					s_joint(OPA_SURF, NULL, -3, 17, 0),
					s_push(),
						s_joint(OPA_SURF, 0x05004EE8, 0, 0, 0),
					s_pull(),
				s_pull(),
			s_pull(),
		s_pull(),
	s_pull(),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_1i_85[] =
{
	s_shadow(80, 150, 1),
	s_push(),
		s_scale(0.25),
		s_push(),
			s_gfx(OPA_SURF, 0x05006A68),
		s_pull(),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_1i_87[] =
{
	s_shadow(100, 150, 1),
	s_push(),
		s_scale(0.25),
		s_push(),
			s_joint(OPA_SURF, NULL, 0, 0, 0),
			s_push(),
				s_joint(OPA_SURF, 0x050098E8, 0, 0, 0),
				s_push(),
					s_joint(OPA_SURF, NULL, -141, -546, 218),
					s_push(),
						s_joint(OPA_SURF, 0x05008CB0, 0, 0, 0),
					s_pull(),
				s_pull(),
			s_pull(),
		s_pull(),
	s_pull(),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_1i_84[] =
{
	s_shadow(70, 150, 1),
	s_push(),
		s_scale(0.4),
		s_push(),
			s_callback(0, s_obj_lib_8029D924),
			s_select(2, s_obj_lib_8029DB48),
			s_push(),
				s_gfx(OPA_SURF, 0x0500C1B0),
				s_gfx(XLU_SURF, 0x0500C1B0),
			s_pull(),
		s_pull(),
	s_pull(),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_1i_90[] =
{
	s_cull(300),
	s_push(),
		s_shadow(100, 150, 0),
		s_push(),
			s_gfx(OPA_SURF, 0x0500F7D8),
			s_gfx(OPA_SURF, 0x0500FC28),
			s_gfx(TEX_EDGE, 0x05010100),
		s_pull(),
	s_pull(),
	s_exit(),
};
