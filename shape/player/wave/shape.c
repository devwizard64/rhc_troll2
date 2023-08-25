extern Gfx gfx_wave_0[];
extern Gfx gfx_wave_1[];
extern Gfx gfx_wave_2[];
extern Gfx gfx_wave_3[];
extern Gfx gfx_wave_4[];
extern Gfx gfx_wave_5[];

S_SCRIPT s_wave[] =
{
	s_select(6, s_obj_lib_8029DB48),
	s_push(),
		s_gfx(XLU_SURF, gfx_wave_0),
		s_gfx(XLU_SURF, gfx_wave_1),
		s_gfx(XLU_SURF, gfx_wave_2),
		s_gfx(XLU_SURF, gfx_wave_3),
		s_gfx(XLU_SURF, gfx_wave_4),
		s_gfx(XLU_SURF, gfx_wave_5),
	s_pull(),
	s_exit(),
};

extern Gfx gfx_wave_red_0[];
extern Gfx gfx_wave_red_1[];
extern Gfx gfx_wave_red_2[];
extern Gfx gfx_wave_red_3[];
extern Gfx gfx_wave_red_4[];
extern Gfx gfx_wave_red_5[];

S_SCRIPT s_wave_red[] =
{
	s_select(6, s_obj_lib_8029DB48),
	s_push(),
		s_gfx(XLU_SURF, gfx_wave_red_0),
		s_gfx(XLU_SURF, gfx_wave_red_1),
		s_gfx(XLU_SURF, gfx_wave_red_2),
		s_gfx(XLU_SURF, gfx_wave_red_3),
		s_gfx(XLU_SURF, gfx_wave_red_4),
		s_gfx(XLU_SURF, gfx_wave_red_5),
	s_pull(),
	s_exit(),
};
