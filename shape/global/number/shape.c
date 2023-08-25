extern Gfx gfx_number_0[];
extern Gfx gfx_number_1[];
extern Gfx gfx_number_2[];
extern Gfx gfx_number_3[];
extern Gfx gfx_number_4[];
extern Gfx gfx_number_5[];
extern Gfx gfx_number_6[];
extern Gfx gfx_number_7[];
extern Gfx gfx_number_8[];
extern Gfx gfx_number_9[];

S_SCRIPT s_number[] =
{
	s_empty(),
	s_push(),
		s_select(10, s_obj_lib_8029DB48),
		s_push(),
			s_gfx(TEX_EDGE, gfx_number_0),
			s_gfx(TEX_EDGE, gfx_number_1),
			s_gfx(TEX_EDGE, gfx_number_2),
			s_gfx(TEX_EDGE, gfx_number_3),
			s_gfx(TEX_EDGE, gfx_number_4),
			s_gfx(TEX_EDGE, gfx_number_5),
			s_gfx(TEX_EDGE, gfx_number_6),
			s_gfx(TEX_EDGE, gfx_number_7),
			s_gfx(TEX_EDGE, gfx_number_8),
			s_gfx(TEX_EDGE, gfx_number_9),
		s_pull(),
	s_pull(),
	s_exit(),
};
