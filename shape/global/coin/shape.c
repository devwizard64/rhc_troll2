extern Gfx gfx_coin_yellow_0[];
extern Gfx gfx_coin_yellow_1[];
extern Gfx gfx_coin_yellow_2[];
extern Gfx gfx_coin_yellow_3[];

S_SCRIPT s_coin[] =
{
	s_shadow(50, 180, 1),
	s_push(),
		s_select(8, s_obj_lib_8029DB48),
		s_push(),
			s_gfx(TEX_EDGE, gfx_coin_yellow_0),
			s_gfx(TEX_EDGE, gfx_coin_yellow_0),
			s_gfx(TEX_EDGE, gfx_coin_yellow_1),
			s_gfx(TEX_EDGE, gfx_coin_yellow_1),
			s_gfx(TEX_EDGE, gfx_coin_yellow_2),
			s_gfx(TEX_EDGE, gfx_coin_yellow_2),
			s_gfx(TEX_EDGE, gfx_coin_yellow_3),
			s_gfx(TEX_EDGE, gfx_coin_yellow_3),
		s_pull(),
	s_pull(),
	s_exit(),
};

extern Gfx gfx_coin_yellow_0[];
extern Gfx gfx_coin_yellow_1[];
extern Gfx gfx_coin_yellow_2[];
extern Gfx gfx_coin_yellow_3[];

S_SCRIPT s_coin_noshadow[] =
{
	s_empty(),
	s_push(),
		s_select(8, s_obj_lib_8029DB48),
		s_push(),
			s_gfx(TEX_EDGE, gfx_coin_yellow_0),
			s_gfx(TEX_EDGE, gfx_coin_yellow_0),
			s_gfx(TEX_EDGE, gfx_coin_yellow_1),
			s_gfx(TEX_EDGE, gfx_coin_yellow_1),
			s_gfx(TEX_EDGE, gfx_coin_yellow_2),
			s_gfx(TEX_EDGE, gfx_coin_yellow_2),
			s_gfx(TEX_EDGE, gfx_coin_yellow_3),
			s_gfx(TEX_EDGE, gfx_coin_yellow_3),
		s_pull(),
	s_pull(),
	s_exit(),
};

extern Gfx gfx_coin_blue_0[];
extern Gfx gfx_coin_blue_1[];
extern Gfx gfx_coin_blue_2[];
extern Gfx gfx_coin_blue_3[];

S_SCRIPT s_bluecoin[] =
{
	s_shadow(80, 180, 1),
	s_push(),
		s_select(8, s_obj_lib_8029DB48),
		s_push(),
			s_gfx(TEX_EDGE, gfx_coin_blue_0),
			s_gfx(TEX_EDGE, gfx_coin_blue_0),
			s_gfx(TEX_EDGE, gfx_coin_blue_1),
			s_gfx(TEX_EDGE, gfx_coin_blue_1),
			s_gfx(TEX_EDGE, gfx_coin_blue_2),
			s_gfx(TEX_EDGE, gfx_coin_blue_2),
			s_gfx(TEX_EDGE, gfx_coin_blue_3),
			s_gfx(TEX_EDGE, gfx_coin_blue_3),
		s_pull(),
	s_pull(),
	s_exit(),
};

extern Gfx gfx_coin_blue_0[];
extern Gfx gfx_coin_blue_1[];
extern Gfx gfx_coin_blue_2[];
extern Gfx gfx_coin_blue_3[];

S_SCRIPT s_bluecoin_noshadow[] =
{
	s_empty(),
	s_push(),
		s_select(8, s_obj_lib_8029DB48),
		s_push(),
			s_gfx(TEX_EDGE, gfx_coin_blue_0),
			s_gfx(TEX_EDGE, gfx_coin_blue_0),
			s_gfx(TEX_EDGE, gfx_coin_blue_1),
			s_gfx(TEX_EDGE, gfx_coin_blue_1),
			s_gfx(TEX_EDGE, gfx_coin_blue_2),
			s_gfx(TEX_EDGE, gfx_coin_blue_2),
			s_gfx(TEX_EDGE, gfx_coin_blue_3),
			s_gfx(TEX_EDGE, gfx_coin_blue_3),
		s_pull(),
	s_pull(),
	s_exit(),
};

extern Gfx gfx_coin_red_0[];
extern Gfx gfx_coin_red_1[];
extern Gfx gfx_coin_red_2[];
extern Gfx gfx_coin_red_3[];

S_SCRIPT s_redcoin[] =
{
	s_shadow(80, 180, 1),
	s_push(),
		s_select(8, s_obj_lib_8029DB48),
		s_push(),
			s_gfx(TEX_EDGE, gfx_coin_red_0),
			s_gfx(TEX_EDGE, gfx_coin_red_0),
			s_gfx(TEX_EDGE, gfx_coin_red_1),
			s_gfx(TEX_EDGE, gfx_coin_red_1),
			s_gfx(TEX_EDGE, gfx_coin_red_2),
			s_gfx(TEX_EDGE, gfx_coin_red_2),
			s_gfx(TEX_EDGE, gfx_coin_red_3),
			s_gfx(TEX_EDGE, gfx_coin_red_3),
		s_pull(),
	s_pull(),
	s_exit(),
};

extern Gfx gfx_coin_red_0[];
extern Gfx gfx_coin_red_1[];
extern Gfx gfx_coin_red_2[];
extern Gfx gfx_coin_red_3[];

S_SCRIPT s_redcoin_noshadow[] =
{
	s_empty(),
	s_push(),
		s_select(8, s_obj_lib_8029DB48),
		s_push(),
			s_gfx(TEX_EDGE, gfx_coin_red_0),
			s_gfx(TEX_EDGE, gfx_coin_red_0),
			s_gfx(TEX_EDGE, gfx_coin_red_1),
			s_gfx(TEX_EDGE, gfx_coin_red_1),
			s_gfx(TEX_EDGE, gfx_coin_red_2),
			s_gfx(TEX_EDGE, gfx_coin_red_2),
			s_gfx(TEX_EDGE, gfx_coin_red_3),
			s_gfx(TEX_EDGE, gfx_coin_red_3),
		s_pull(),
	s_pull(),
	s_exit(),
};
