extern Gfx gfx_dust_0[];
extern Gfx gfx_dust_1[];
extern Gfx gfx_dust_2[];
extern Gfx gfx_dust_3[];
extern Gfx gfx_dust_4[];
extern Gfx gfx_dust_5[];
extern Gfx gfx_dust_6[];

S_SCRIPT s_dust[] =
{
	s_select(7, s_obj_lib_8029DB48),
	s_push(),
		s_gfx(XLU_SURF, gfx_dust_0),
		s_gfx(XLU_SURF, gfx_dust_1),
		s_gfx(XLU_SURF, gfx_dust_2),
		s_gfx(XLU_SURF, gfx_dust_3),
		s_gfx(XLU_SURF, gfx_dust_4),
		s_gfx(XLU_SURF, gfx_dust_5),
		s_gfx(XLU_SURF, gfx_dust_6),
	s_pull(),
	s_exit(),
};
