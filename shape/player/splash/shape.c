extern Gfx gfx_splash_0[];
extern Gfx gfx_splash_1[];
extern Gfx gfx_splash_2[];
extern Gfx gfx_splash_3[];
extern Gfx gfx_splash_4[];
extern Gfx gfx_splash_5[];
extern Gfx gfx_splash_6[];
extern Gfx gfx_splash_7[];

S_SCRIPT s_splash[] =
{
	s_select(8, s_obj_lib_8029DB48),
	s_push(),
		s_gfx(TEX_EDGE, gfx_splash_0),
		s_gfx(TEX_EDGE, gfx_splash_1),
		s_gfx(TEX_EDGE, gfx_splash_2),
		s_gfx(TEX_EDGE, gfx_splash_3),
		s_gfx(TEX_EDGE, gfx_splash_4),
		s_gfx(TEX_EDGE, gfx_splash_5),
		s_gfx(TEX_EDGE, gfx_splash_6),
		s_gfx(TEX_EDGE, gfx_splash_7),
	s_pull(),
	s_exit(),
};
