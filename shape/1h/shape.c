#include <sm64/s_script.h>

S_SCRIPT s_1h_0C000000[] =
{
	s_cull(500),
	s_push(),
		s_gfx(OPA_SURF, 0x050016B8),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_1h_0C000018[] =
{
	s_cull(500),
	s_push(),
		s_gfx(OPA_SURF, 0x05001800),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_1h_0C000030[] =
{
	s_cull(500),
	s_push(),
		s_gfx(OPA_SURF, 0x05001900),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_1h_85[] =
{
	s_cull(600),
	s_push(),
		s_gfx(XLU_DECAL, 0x05002E00),
		s_select(4, s_obj_lib_8029DB48),
		s_push(),
			s_gfx(OPA_SURF, 0x05003350),
			s_gfx(OPA_SURF, 0x05003370),
			s_gfx(OPA_SURF, 0x05003390),
			s_gfx(OPA_SURF, 0x050033B0),
		s_pull(),
	s_pull(),
	s_exit(),
};
