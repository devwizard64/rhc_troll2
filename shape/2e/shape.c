#include <sm64/s_script.h>

static S_SCRIPT s_2e_0D000000[] =
{
	s_joint(OPA_SURF, NULL, 0, 0, 0),
	s_push(),
		s_joint(OPA_SURF, 0x06005750, 0, 0, 0),
		s_push(),
			s_joint(OPA_SURF, NULL, 0, 0, -120),
			s_push(),
				s_joint(OPA_SURF, 0x06005980, 0, 0, 0),
			s_pull(),
			s_joint(OPA_SURF, NULL, 0, 0, 120),
			s_push(),
				s_joint(OPA_SURF, 0x060059F0, 0, 0, 0),
			s_pull(),
		s_pull(),
		s_joint(OPA_SURF, 0x06005688, 0, 0, 0),
	s_pull(),
	s_return(),
};

static S_SCRIPT s_2e_0D000078[] =
{
	s_joint(OPA_SURF, NULL, 0, 0, 0),
	s_push(),
		s_joint(XLU_SURF, 0x06005750, 0, 0, 0),
		s_push(),
			s_joint(OPA_SURF, NULL, 0, 0, -120),
			s_push(),
				s_joint(XLU_SURF, 0x06005980, 0, 0, 0),
			s_pull(),
			s_joint(OPA_SURF, NULL, 0, 0, 120),
			s_push(),
				s_joint(XLU_SURF, 0x060059F0, 0, 0, 0),
			s_pull(),
		s_pull(),
		s_joint(XLU_SURF, 0x06005688, 0, 0, 0),
	s_pull(),
	s_return(),
};

S_SCRIPT s_2e_102[] =
{
	s_shadow(100, 200, 1),
	s_push(),
		s_scale(0.25),
		s_push(),
			s_callback(0, s_obj_lib_8029D924),
			s_select(2, s_obj_lib_8029DB48),
			s_push(),
				s_call(s_2e_0D000000),
				s_call(s_2e_0D000078),
			s_pull(),
		s_pull(),
	s_pull(),
	s_pull(),
	s_exit(),
};

UNUSED static u64 _0D000140 = 0;
