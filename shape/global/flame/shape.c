extern S_SCRIPT s_flame[];

S_SCRIPT s_flame_shadow[] =
{
	s_shadow(20, 80, 1),
	s_push(),
		s_script(s_flame),
	s_pull(),
	s_exit(),
};

extern Gfx gfx_flame_0[];
extern Gfx gfx_flame_1[];
extern Gfx gfx_flame_2[];
extern Gfx gfx_flame_3[];
extern Gfx gfx_flame_4[];
extern Gfx gfx_flame_5[];
extern Gfx gfx_flame_6[];
extern Gfx gfx_flame_7[];

S_SCRIPT s_flame[] =
{
	s_empty(),
	s_push(),
		s_select(8, s_obj_lib_8029DB48),
		s_push(),
			s_gfx(XLU_SURF, gfx_flame_0),
			s_gfx(XLU_SURF, gfx_flame_1),
			s_gfx(XLU_SURF, gfx_flame_2),
			s_gfx(XLU_SURF, gfx_flame_3),
			s_gfx(XLU_SURF, gfx_flame_4),
			s_gfx(XLU_SURF, gfx_flame_5),
			s_gfx(XLU_SURF, gfx_flame_6),
			s_gfx(XLU_SURF, gfx_flame_7),
		s_pull(),
	s_pull(),
	s_exit(),
};

extern Gfx gfx_blueflame_0[];
extern Gfx gfx_blueflame_1[];
extern Gfx gfx_blueflame_2[];
extern Gfx gfx_blueflame_3[];
extern Gfx gfx_blueflame_4[];
extern Gfx gfx_blueflame_5[];
extern Gfx gfx_blueflame_6[];
extern Gfx gfx_blueflame_7[];

S_SCRIPT s_blueflame[] =
{
	s_empty(),
	s_push(),
		s_select(8, s_obj_lib_8029DB48),
		s_push(),
			s_gfx(XLU_SURF, gfx_blueflame_0),
			s_gfx(XLU_SURF, gfx_blueflame_1),
			s_gfx(XLU_SURF, gfx_blueflame_2),
			s_gfx(XLU_SURF, gfx_blueflame_3),
			s_gfx(XLU_SURF, gfx_blueflame_4),
			s_gfx(XLU_SURF, gfx_blueflame_5),
			s_gfx(XLU_SURF, gfx_blueflame_6),
			s_gfx(XLU_SURF, gfx_blueflame_7),
		s_pull(),
	s_pull(),
	s_exit(),
};
