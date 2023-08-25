extern Gfx gfx_explosion_0[];
extern Gfx gfx_explosion_1[];
extern Gfx gfx_explosion_2[];
extern Gfx gfx_explosion_3[];
extern Gfx gfx_explosion_4[];
extern Gfx gfx_explosion_5[];
extern Gfx gfx_explosion_6[];

S_SCRIPT s_explosion[] =
{
	s_empty(),
	s_push(),
		s_select(9, s_obj_lib_8029DB48),
		s_push(),
			s_gfx(XLU_SURF, gfx_explosion_0),
			s_gfx(XLU_SURF, gfx_explosion_0),
			s_gfx(XLU_SURF, gfx_explosion_1),
			s_gfx(XLU_SURF, gfx_explosion_1),
			s_gfx(XLU_SURF, gfx_explosion_2),
			s_gfx(XLU_SURF, gfx_explosion_3),
			s_gfx(XLU_SURF, gfx_explosion_4),
			s_gfx(XLU_SURF, gfx_explosion_5),
			s_gfx(XLU_SURF, gfx_explosion_6),
		s_pull(),
	s_pull(),
	s_exit(),
};
