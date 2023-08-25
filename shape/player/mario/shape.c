extern Gfx gfx_mario_h_cap_open[];
extern Gfx gfx_mario_h_cap_half[];
extern Gfx gfx_mario_h_cap_closed[];
extern Gfx gfx_mario_h_cap_left[];
extern Gfx gfx_mario_h_cap_right[];
extern Gfx gfx_mario_h_cap_up[];
extern Gfx gfx_mario_h_cap_down[];
extern Gfx gfx_mario_h_cap_dead[];
extern Gfx gfx_mario_h_hair_open[];
extern Gfx gfx_mario_h_hair_half[];
extern Gfx gfx_mario_h_hair_closed[];
extern Gfx gfx_mario_h_hair_left[];
extern Gfx gfx_mario_h_hair_right[];
extern Gfx gfx_mario_h_hair_up[];
extern Gfx gfx_mario_h_hair_down[];
extern Gfx gfx_mario_h_hair_dead[];
extern Gfx gfx_mario_wing_so[];

static S_SCRIPT s_mario_hso_head[] =
{
	s_callback(0, s_player_ang_head),
	s_ang(0, 0, 0),
	s_push(),
		s_select(0, s_player_select_head),
		s_push(),
			s_select(0, s_player_select_eye),
			s_push(),
				s_gfx(OPA_SURF, gfx_mario_h_cap_open),
				s_gfx(OPA_SURF, gfx_mario_h_cap_half),
				s_gfx(OPA_SURF, gfx_mario_h_cap_closed),
				s_gfx(OPA_SURF, gfx_mario_h_cap_left),
				s_gfx(OPA_SURF, gfx_mario_h_cap_right),
				s_gfx(OPA_SURF, gfx_mario_h_cap_up),
				s_gfx(OPA_SURF, gfx_mario_h_cap_down),
				s_gfx(OPA_SURF, gfx_mario_h_cap_dead),
			s_pull(),
			s_select(0, s_player_select_eye),
			s_push(),
				s_gfx(OPA_SURF, gfx_mario_h_hair_open),
				s_gfx(OPA_SURF, gfx_mario_h_hair_half),
				s_gfx(OPA_SURF, gfx_mario_h_hair_closed),
				s_gfx(OPA_SURF, gfx_mario_h_hair_left),
				s_gfx(OPA_SURF, gfx_mario_h_hair_right),
				s_gfx(OPA_SURF, gfx_mario_h_hair_up),
				s_gfx(OPA_SURF, gfx_mario_h_hair_down),
				s_gfx(OPA_SURF, gfx_mario_h_hair_dead),
			s_pull(),
		s_pull(),
		s_posang(142, -51, -126, 22, -40, -135),
		s_push(),
			s_callback(0, s_player_ang_wing),
			s_ang(0, 0, 0),
			s_push(),
				s_gfx(TEX_EDGE, gfx_mario_wing_so),
			s_pull(),
		s_pull(),
		s_posang(142, -51, 126, -22, 40, -135),
		s_push(),
			s_callback(1, s_player_ang_wing),
			s_ang(0, 0, 0),
			s_push(),
				s_gfx(TEX_EDGE, gfx_mario_wing_so),
			s_pull(),
		s_pull(),
	s_pull(),
	s_return(),
};

extern Gfx gfx_mario_h_fistL_s[];
extern Gfx gfx_mario_handL_s[];

static S_SCRIPT s_mario_hso_gloveL[] =
{
	s_select(1, s_player_select_glove),
	s_push(),
		s_joint(OPA_SURF, NULL, 60, 0, 0),
		s_push(),
			s_callback(1, s_player_scale),
			s_scale(1),
			s_push(),
				s_gfx(OPA_SURF, gfx_mario_h_fistL_s),
			s_pull(),
		s_pull(),
		s_joint(OPA_SURF, gfx_mario_handL_s, 60, 0, 0),
		s_joint(OPA_SURF, gfx_mario_h_fistL_s, 60, 0, 0),
		s_joint(OPA_SURF, gfx_mario_h_fistL_s, 60, 0, 0),
		s_joint(OPA_SURF, gfx_mario_h_fistL_s, 60, 0, 0),
	s_pull(),
	s_return(),
};

extern Gfx gfx_mario_h_fistR_s[];
extern Gfx gfx_mario_handR_s[];
extern Gfx gfx_mario_capR_s[];
extern Gfx gfx_mario_wingsR_s[];
extern Gfx gfx_mario_peaceR_s[];

static S_SCRIPT s_mario_hso_gloveR[] =
{
	s_select(0, s_player_select_glove),
	s_push(),
		s_joint(OPA_SURF, NULL, 60, 0, 0),
		s_push(),
			s_callback(0, s_player_scale),
			s_scale(1),
			s_push(),
				s_gfx(OPA_SURF, gfx_mario_h_fistR_s),
			s_pull(),
			s_hand(0, 0, 0, 0, s_player_hand),
		s_pull(),
		s_joint(OPA_SURF, gfx_mario_handR_s, 60, 0, 0),
		s_push(),
			s_hand(0, 0, 0, 0, s_player_hand),
		s_pull(),
		s_joint(OPA_SURF, gfx_mario_peaceR_s, 60, 0, 0),
		s_joint(OPA_SURF, gfx_mario_capR_s, 60, 0, 0),
		s_joint(OPA_SURF, gfx_mario_capR_s, 60, 0, 0),
		s_push(),
			s_gfx(TEX_EDGE, gfx_mario_wingsR_s),
		s_pull(),
	s_pull(),
	s_return(),
};

extern Gfx gfx_mario_h_waist_s[];
extern Gfx gfx_mario_h_uarmL_s[];
extern Gfx gfx_mario_h_larmL[];
extern Gfx gfx_mario_h_uarmR_s[];
extern Gfx gfx_mario_h_larmR[];
extern Gfx gfx_mario_h_thighL_s[];
extern Gfx gfx_mario_h_shinL[];
extern Gfx gfx_mario_h_shoeL_s[];
extern Gfx gfx_mario_h_thighR_s[];
extern Gfx gfx_mario_h_shinR[];
extern Gfx gfx_mario_h_shoeR_s[];
extern Gfx gfx_mario_h_torso_s[];

static S_SCRIPT s_mario_hso[] =
{
	s_joint(OPA_SURF, NULL, 0, 0, 0),
	s_push(),
		s_joint(OPA_SURF, gfx_mario_h_waist_s, 0, 0, 0),
		s_push(),
			s_callback(0, s_mario_pos_child),
			s_callback(0, s_player_ang_torso),
			s_ang(0, 0, 0),
			s_push(),
				s_joint(OPA_SURF, gfx_mario_h_torso_s, 68, 0, 0),
				s_push(),
					s_joint(OPA_SURF, NULL, 87, 0, 0),
					s_push(),
						s_call(s_mario_hso_head),
					s_pull(),
					s_joint(OPA_SURF, NULL, 67, -10, 79),
					s_push(),
						s_joint(OPA_SURF, gfx_mario_h_uarmL_s, 0, 0, 0),
						s_push(),
							s_joint(OPA_SURF, gfx_mario_h_larmL, 65, 0, 0),
							s_push(),
								s_call(s_mario_hso_gloveL),
							s_pull(),
						s_pull(),
					s_pull(),
					s_joint(OPA_SURF, NULL, 68, -10, -79),
					s_push(),
						s_joint(OPA_SURF, gfx_mario_h_uarmR_s, 0, 0, 0),
						s_push(),
							s_joint(OPA_SURF, gfx_mario_h_larmR, 65, 0, 0),
							s_push(),
								s_call(s_mario_hso_gloveR),
							s_pull(),
						s_pull(),
					s_pull(),
				s_pull(),
			s_pull(),
			s_joint(OPA_SURF, NULL, 13, -8, 42),
			s_push(),
				s_joint(OPA_SURF, gfx_mario_h_thighL_s, 0, 0, 0),
				s_push(),
					s_joint(OPA_SURF, gfx_mario_h_shinL, 89, 0, 0),
					s_push(),
						s_joint(OPA_SURF, gfx_mario_h_shoeL_s, 67, 0, 0),
					s_pull(),
				s_pull(),
			s_pull(),
			s_joint(OPA_SURF, NULL, 13, -8, -42),
			s_push(),
				s_joint(OPA_SURF, gfx_mario_h_thighR_s, 0, 0, 0),
				s_push(),
					s_joint(OPA_SURF, gfx_mario_h_shinR, 89, 0, 0),
					s_push(),
						s_joint(OPA_SURF, NULL, 67, 0, 0),
						s_push(),
							s_callback(2, s_player_scale),
							s_scale(1),
							s_push(),
								s_gfx(OPA_SURF, gfx_mario_h_shoeR_s),
							s_pull(),
						s_pull(),
					s_pull(),
				s_pull(),
			s_pull(),
		s_pull(),
	s_pull(),
	s_return(),
};

extern Gfx gfx_mario_m_fistL_s[];
extern Gfx gfx_mario_handL_s[];

static S_SCRIPT s_mario_mso_gloveL[] =
{
	s_select(1, s_player_select_glove),
	s_push(),
		s_joint(OPA_SURF, NULL, 60, 0, 0),
		s_push(),
			s_callback(1, s_player_scale),
			s_scale(1),
			s_push(),
				s_gfx(OPA_SURF, gfx_mario_m_fistL_s),
			s_pull(),
		s_pull(),
		s_joint(OPA_SURF, gfx_mario_handL_s, 60, 0, 0),
		s_joint(OPA_SURF, gfx_mario_m_fistL_s, 60, 0, 0),
		s_joint(OPA_SURF, gfx_mario_m_fistL_s, 60, 0, 0),
		s_joint(OPA_SURF, gfx_mario_m_fistL_s, 60, 0, 0),
	s_pull(),
	s_return(),
};

extern Gfx gfx_mario_m_fistR_s[];
extern Gfx gfx_mario_handR_s[];
extern Gfx gfx_mario_capR_s[];
extern Gfx gfx_mario_wingsR_s[];
extern Gfx gfx_mario_peaceR_s[];

static S_SCRIPT s_mario_mso_gloveR[] =
{
	s_select(0, s_player_select_glove),
	s_push(),
		s_joint(OPA_SURF, NULL, 60, 0, 0),
		s_push(),
			s_callback(0, s_player_scale),
			s_scale(1),
			s_push(),
				s_gfx(OPA_SURF, gfx_mario_m_fistR_s),
			s_pull(),
			s_hand(0, 0, 0, 0, s_player_hand),
		s_pull(),
		s_joint(OPA_SURF, gfx_mario_handR_s, 60, 0, 0),
		s_push(),
			s_hand(0, 0, 0, 0, s_player_hand),
		s_pull(),
		s_joint(OPA_SURF, gfx_mario_peaceR_s, 60, 0, 0),
		s_joint(OPA_SURF, gfx_mario_capR_s, 60, 0, 0),
		s_joint(OPA_SURF, gfx_mario_capR_s, 60, 0, 0),
		s_push(),
			s_gfx(TEX_EDGE, gfx_mario_wingsR_s),
		s_pull(),
	s_pull(),
	s_return(),
};

extern Gfx gfx_mario_m_waist_s[];
extern Gfx gfx_mario_m_uarmL_s[];
extern Gfx gfx_mario_m_larmL[];
extern Gfx gfx_mario_m_uarmR_s[];
extern Gfx gfx_mario_m_larmR[];
extern Gfx gfx_mario_m_thighL_s[];
extern Gfx gfx_mario_m_shinL[];
extern Gfx gfx_mario_m_shoeL_s[];
extern Gfx gfx_mario_m_thighR_s[];
extern Gfx gfx_mario_m_shinR[];
extern Gfx gfx_mario_m_shoeR_s[];
extern Gfx gfx_mario_m_torso_s[];

static S_SCRIPT s_mario_mso[] =
{
	s_joint(OPA_SURF, NULL, 0, 0, 0),
	s_push(),
		s_joint(OPA_SURF, gfx_mario_m_waist_s, 0, 0, 0),
		s_push(),
			s_callback(0, s_mario_pos_child),
			s_callback(0, s_player_ang_torso),
			s_ang(0, 0, 0),
			s_push(),
				s_joint(OPA_SURF, gfx_mario_m_torso_s, 68, 0, 0),
				s_push(),
					s_joint(OPA_SURF, NULL, 87, 0, 0),
					s_push(),
						s_call(s_mario_hso_head),
					s_pull(),
					s_joint(OPA_SURF, NULL, 67, -10, 79),
					s_push(),
						s_joint(OPA_SURF, gfx_mario_m_uarmL_s, 0, 0, 0),
						s_push(),
							s_joint(OPA_SURF, gfx_mario_m_larmL, 65, 0, 0),
							s_push(),
								s_call(s_mario_mso_gloveL),
							s_pull(),
						s_pull(),
					s_pull(),
					s_joint(OPA_SURF, NULL, 68, -10, -79),
					s_push(),
						s_joint(OPA_SURF, gfx_mario_m_uarmR_s, 0, 0, 0),
						s_push(),
							s_joint(OPA_SURF, gfx_mario_m_larmR, 65, 0, 0),
							s_push(),
								s_call(s_mario_mso_gloveR),
							s_pull(),
						s_pull(),
					s_pull(),
				s_pull(),
			s_pull(),
			s_joint(OPA_SURF, NULL, 13, -8, 42),
			s_push(),
				s_joint(OPA_SURF, gfx_mario_m_thighL_s, 0, 0, 0),
				s_push(),
					s_joint(OPA_SURF, gfx_mario_m_shinL, 89, 0, 0),
					s_push(),
						s_joint(OPA_SURF, gfx_mario_m_shoeL_s, 67, 0, 0),
					s_pull(),
				s_pull(),
			s_pull(),
			s_joint(OPA_SURF, NULL, 13, -8, -42),
			s_push(),
				s_joint(OPA_SURF, gfx_mario_m_thighR_s, 0, 0, 0),
				s_push(),
					s_joint(OPA_SURF, gfx_mario_m_shinR, 89, 0, 0),
					s_push(),
						s_joint(OPA_SURF, NULL, 67, 0, 0),
						s_push(),
							s_callback(2, s_player_scale),
							s_scale(1),
							s_push(),
								s_gfx(OPA_SURF, gfx_mario_m_shoeR_s),
							s_pull(),
						s_pull(),
					s_pull(),
				s_pull(),
			s_pull(),
		s_pull(),
	s_pull(),
	s_return(),
};

extern Gfx gfx_mario_l_cap_open[];
extern Gfx gfx_mario_l_cap_half[];
extern Gfx gfx_mario_l_cap_closed[];
extern Gfx gfx_mario_l_cap_left[];
extern Gfx gfx_mario_l_cap_right[];
extern Gfx gfx_mario_l_cap_up[];
extern Gfx gfx_mario_l_cap_down[];
extern Gfx gfx_mario_l_cap_dead[];
extern Gfx gfx_mario_l_hair_open[];
extern Gfx gfx_mario_l_hair_half[];
extern Gfx gfx_mario_l_hair_closed[];
extern Gfx gfx_mario_l_hair_left[];
extern Gfx gfx_mario_l_hair_right[];
extern Gfx gfx_mario_l_hair_up[];
extern Gfx gfx_mario_l_hair_down[];
extern Gfx gfx_mario_l_hair_dead[];
extern Gfx gfx_mario_wing_so[];

static S_SCRIPT s_mario_lso_head[] =
{
	s_callback(0, s_player_ang_head),
	s_ang(0, 0, 0),
	s_push(),
		s_select(0, s_player_select_head),
		s_push(),
			s_select(0, s_player_select_eye),
			s_push(),
				s_gfx(OPA_SURF, gfx_mario_l_cap_open),
				s_gfx(OPA_SURF, gfx_mario_l_cap_half),
				s_gfx(OPA_SURF, gfx_mario_l_cap_closed),
				s_gfx(OPA_SURF, gfx_mario_l_cap_left),
				s_gfx(OPA_SURF, gfx_mario_l_cap_right),
				s_gfx(OPA_SURF, gfx_mario_l_cap_up),
				s_gfx(OPA_SURF, gfx_mario_l_cap_down),
				s_gfx(OPA_SURF, gfx_mario_l_cap_dead),
			s_pull(),
			s_select(0, s_player_select_eye),
			s_push(),
				s_gfx(OPA_SURF, gfx_mario_l_hair_open),
				s_gfx(OPA_SURF, gfx_mario_l_hair_half),
				s_gfx(OPA_SURF, gfx_mario_l_hair_closed),
				s_gfx(OPA_SURF, gfx_mario_l_hair_left),
				s_gfx(OPA_SURF, gfx_mario_l_hair_right),
				s_gfx(OPA_SURF, gfx_mario_l_hair_up),
				s_gfx(OPA_SURF, gfx_mario_l_hair_down),
				s_gfx(OPA_SURF, gfx_mario_l_hair_dead),
			s_pull(),
		s_pull(),
		s_posang(142, -51, -126, 22, -40, -135),
		s_push(),
			s_callback(0, s_player_ang_wing),
			s_ang(0, 0, 0),
			s_push(),
				s_gfx(TEX_EDGE, gfx_mario_wing_so),
			s_pull(),
		s_pull(),
		s_posang(142, -51, 126, -22, 40, -135),
		s_push(),
			s_callback(1, s_player_ang_wing),
			s_ang(0, 0, 0),
			s_push(),
				s_gfx(TEX_EDGE, gfx_mario_wing_so),
			s_pull(),
		s_pull(),
	s_pull(),
	s_return(),
};

extern Gfx gfx_mario_l_fistL_s[];
extern Gfx gfx_mario_handL_s[];

static S_SCRIPT s_mario_lso_gloveL[] =
{
	s_select(1, s_player_select_glove),
	s_push(),
		s_joint(OPA_SURF, NULL, 60, 0, 0),
		s_push(),
			s_callback(1, s_player_scale),
			s_scale(1),
			s_push(),
				s_gfx(OPA_SURF, gfx_mario_l_fistL_s),
			s_pull(),
		s_pull(),
		s_joint(OPA_SURF, gfx_mario_handL_s, 60, 0, 0),
		s_joint(OPA_SURF, gfx_mario_l_fistL_s, 60, 0, 0),
		s_joint(OPA_SURF, gfx_mario_l_fistL_s, 60, 0, 0),
		s_joint(OPA_SURF, gfx_mario_l_fistL_s, 60, 0, 0),
	s_pull(),
	s_return(),
};

extern Gfx gfx_mario_l_fistR_s[];
extern Gfx gfx_mario_handR_s[];
extern Gfx gfx_mario_capR_s[];
extern Gfx gfx_mario_wingsR_s[];
extern Gfx gfx_mario_peaceR_s[];

static S_SCRIPT s_mario_lso_gloveR[] =
{
	s_select(0, s_player_select_glove),
	s_push(),
		s_joint(OPA_SURF, NULL, 60, 0, 0),
		s_push(),
			s_callback(0, s_player_scale),
			s_scale(1),
			s_push(),
				s_gfx(OPA_SURF, gfx_mario_l_fistR_s),
			s_pull(),
			s_hand(0, 0, 0, 0, s_player_hand),
		s_pull(),
		s_joint(OPA_SURF, gfx_mario_handR_s, 60, 0, 0),
		s_push(),
			s_hand(0, 0, 0, 0, s_player_hand),
		s_pull(),
		s_joint(OPA_SURF, gfx_mario_peaceR_s, 60, 0, 0),
		s_joint(OPA_SURF, gfx_mario_capR_s, 60, 0, 0),
		s_joint(OPA_SURF, gfx_mario_capR_s, 60, 0, 0),
		s_push(),
			s_gfx(TEX_EDGE, gfx_mario_wingsR_s),
		s_pull(),
	s_pull(),
	s_return(),
};

extern Gfx gfx_mario_l_waist_s[];
extern Gfx gfx_mario_l_uarmL_s[];
extern Gfx gfx_mario_l_larmL[];
extern Gfx gfx_mario_l_uarmR_s[];
extern Gfx gfx_mario_l_larmR[];
extern Gfx gfx_mario_l_thighL_s[];
extern Gfx gfx_mario_l_shinL[];
extern Gfx gfx_mario_l_shoeL_s[];
extern Gfx gfx_mario_l_thighR_s[];
extern Gfx gfx_mario_l_shinR[];
extern Gfx gfx_mario_l_shoeR_s[];
extern Gfx gfx_mario_l_torso_s[];

static S_SCRIPT s_mario_lso[] =
{
	s_joint(OPA_SURF, NULL, 0, 0, 0),
	s_push(),
		s_joint(OPA_SURF, gfx_mario_l_waist_s, 0, 0, 0),
		s_push(),
			s_callback(0, s_mario_pos_child),
			s_callback(0, s_player_ang_torso),
			s_ang(0, 0, 0),
			s_push(),
				s_joint(OPA_SURF, gfx_mario_l_torso_s, 68, 0, 0),
				s_push(),
					s_joint(OPA_SURF, NULL, 87, 0, 0),
					s_push(),
						s_call(s_mario_lso_head),
					s_pull(),
					s_joint(OPA_SURF, NULL, 67, -10, 79),
					s_push(),
						s_joint(OPA_SURF, gfx_mario_l_uarmL_s, 0, 0, 0),
						s_push(),
							s_joint(OPA_SURF, gfx_mario_l_larmL, 65, 0, 0),
							s_push(),
								s_call(s_mario_lso_gloveL),
							s_pull(),
						s_pull(),
					s_pull(),
					s_joint(OPA_SURF, NULL, 68, -10, -79),
					s_push(),
						s_joint(OPA_SURF, gfx_mario_l_uarmR_s, 0, 0, 0),
						s_push(),
							s_joint(OPA_SURF, gfx_mario_l_larmR, 65, 0, 0),
							s_push(),
								s_call(s_mario_lso_gloveR),
							s_pull(),
						s_pull(),
					s_pull(),
				s_pull(),
			s_pull(),
			s_joint(OPA_SURF, NULL, 13, -8, 42),
			s_push(),
				s_joint(OPA_SURF, gfx_mario_l_thighL_s, 0, 0, 0),
				s_push(),
					s_joint(OPA_SURF, gfx_mario_l_shinL, 89, 0, 0),
					s_push(),
						s_joint(OPA_SURF, gfx_mario_l_shoeL_s, 67, 0, 0),
					s_pull(),
				s_pull(),
			s_pull(),
			s_joint(OPA_SURF, NULL, 13, -8, -42),
			s_push(),
				s_joint(OPA_SURF, gfx_mario_l_thighR_s, 0, 0, 0),
				s_push(),
					s_joint(OPA_SURF, gfx_mario_l_shinR, 89, 0, 0),
					s_push(),
						s_joint(OPA_SURF, NULL, 67, 0, 0),
						s_push(),
							s_callback(2, s_player_scale),
							s_scale(1),
							s_push(),
								s_gfx(OPA_SURF, gfx_mario_l_shoeR_s),
							s_pull(),
						s_pull(),
					s_pull(),
				s_pull(),
			s_pull(),
		s_pull(),
	s_pull(),
	s_return(),
};

extern Gfx gfx_mario_h_cap_open[];
extern Gfx gfx_mario_h_cap_half[];
extern Gfx gfx_mario_h_cap_closed[];
extern Gfx gfx_mario_h_cap_left[];
extern Gfx gfx_mario_h_cap_right[];
extern Gfx gfx_mario_h_cap_up[];
extern Gfx gfx_mario_h_cap_down[];
extern Gfx gfx_mario_h_cap_dead[];
extern Gfx gfx_mario_h_hair_open[];
extern Gfx gfx_mario_h_hair_half[];
extern Gfx gfx_mario_h_hair_closed[];
extern Gfx gfx_mario_h_hair_left[];
extern Gfx gfx_mario_h_hair_right[];
extern Gfx gfx_mario_h_hair_up[];
extern Gfx gfx_mario_h_hair_down[];
extern Gfx gfx_mario_h_hair_dead[];
extern Gfx gfx_mario_wing_sx[];

static S_SCRIPT s_mario_hsx_head[] =
{
	s_callback(0, s_player_ang_head),
	s_ang(0, 0, 0),
	s_push(),
		s_select(0, s_player_select_head),
		s_push(),
			s_select(0, s_player_select_eye),
			s_push(),
				s_gfx(XLU_SURF, gfx_mario_h_cap_open),
				s_gfx(XLU_SURF, gfx_mario_h_cap_half),
				s_gfx(XLU_SURF, gfx_mario_h_cap_closed),
				s_gfx(XLU_SURF, gfx_mario_h_cap_left),
				s_gfx(XLU_SURF, gfx_mario_h_cap_right),
				s_gfx(XLU_SURF, gfx_mario_h_cap_up),
				s_gfx(XLU_SURF, gfx_mario_h_cap_down),
				s_gfx(XLU_SURF, gfx_mario_h_cap_dead),
			s_pull(),
			s_select(0, s_player_select_eye),
			s_push(),
				s_gfx(XLU_SURF, gfx_mario_h_hair_open),
				s_gfx(XLU_SURF, gfx_mario_h_hair_half),
				s_gfx(XLU_SURF, gfx_mario_h_hair_closed),
				s_gfx(XLU_SURF, gfx_mario_h_hair_left),
				s_gfx(XLU_SURF, gfx_mario_h_hair_right),
				s_gfx(XLU_SURF, gfx_mario_h_hair_up),
				s_gfx(XLU_SURF, gfx_mario_h_hair_down),
				s_gfx(XLU_SURF, gfx_mario_h_hair_dead),
			s_pull(),
		s_pull(),
		s_posang(142, -51, -126, 22, -40, -135),
		s_push(),
			s_callback(0, s_player_ang_wing),
			s_ang(0, 0, 0),
			s_push(),
				s_gfx(XLU_SURF, gfx_mario_wing_sx),
			s_pull(),
		s_pull(),
		s_posang(142, -51, 126, -22, 40, -135),
		s_push(),
			s_callback(1, s_player_ang_wing),
			s_ang(0, 0, 0),
			s_push(),
				s_gfx(XLU_SURF, gfx_mario_wing_sx),
			s_pull(),
		s_pull(),
	s_pull(),
	s_return(),
};

extern Gfx gfx_mario_h_fistL_s[];
extern Gfx gfx_mario_handL_s[];

static S_SCRIPT s_mario_hsx_gloveL[] =
{
	s_select(1, s_player_select_glove),
	s_push(),
		s_joint(XLU_SURF, NULL, 60, 0, 0),
		s_push(),
			s_callback(1, s_player_scale),
			s_scale(1),
			s_push(),
				s_gfx(XLU_SURF, gfx_mario_h_fistL_s),
			s_pull(),
		s_pull(),
		s_joint(XLU_SURF, gfx_mario_handL_s, 60, 0, 0),
		s_joint(XLU_SURF, gfx_mario_h_fistL_s, 60, 0, 0),
		s_joint(XLU_SURF, gfx_mario_h_fistL_s, 60, 0, 0),
		s_joint(XLU_SURF, gfx_mario_h_fistL_s, 60, 0, 0),
	s_pull(),
	s_return(),
};

extern Gfx gfx_mario_h_fistR_s[];
extern Gfx gfx_mario_handR_s[];
extern Gfx gfx_mario_capR_s[];
extern Gfx gfx_mario_wingsR_s[];
extern Gfx gfx_mario_peaceR_s[];

static S_SCRIPT s_mario_hsx_gloveR[] =
{
	s_select(0, s_player_select_glove),
	s_push(),
		s_joint(XLU_SURF, NULL, 60, 0, 0),
		s_push(),
			s_callback(0, s_player_scale),
			s_scale(1),
			s_push(),
				s_gfx(XLU_SURF, gfx_mario_h_fistR_s),
			s_pull(),
			s_hand(0, 0, 0, 0, s_player_hand),
		s_pull(),
		s_joint(XLU_SURF, gfx_mario_handR_s, 60, 0, 0),
		s_push(),
			s_hand(0, 0, 0, 0, s_player_hand),
		s_pull(),
		s_joint(XLU_SURF, gfx_mario_peaceR_s, 60, 0, 0),
		s_joint(XLU_SURF, gfx_mario_capR_s, 60, 0, 0),
		s_joint(XLU_SURF, gfx_mario_capR_s, 60, 0, 0),
		s_push(),
			s_gfx(TEX_EDGE, gfx_mario_wingsR_s),
		s_pull(),
	s_pull(),
	s_return(),
};

extern Gfx gfx_mario_h_waist_s[];
extern Gfx gfx_mario_h_uarmL_s[];
extern Gfx gfx_mario_h_larmL[];
extern Gfx gfx_mario_h_uarmR_s[];
extern Gfx gfx_mario_h_larmR[];
extern Gfx gfx_mario_h_thighL_s[];
extern Gfx gfx_mario_h_shinL[];
extern Gfx gfx_mario_h_shoeL_s[];
extern Gfx gfx_mario_h_thighR_s[];
extern Gfx gfx_mario_h_shinR[];
extern Gfx gfx_mario_h_shoeR_s[];
extern Gfx gfx_mario_h_torso_s[];

static S_SCRIPT s_mario_hsx[] =
{
	s_joint(XLU_SURF, NULL, 0, 0, 0),
	s_push(),
		s_joint(XLU_SURF, gfx_mario_h_waist_s, 0, 0, 0),
		s_push(),
			s_callback(0, s_mario_pos_child),
			s_callback(0, s_player_ang_torso),
			s_ang(0, 0, 0),
			s_push(),
				s_joint(XLU_SURF, gfx_mario_h_torso_s, 68, 0, 0),
				s_push(),
					s_joint(XLU_SURF, NULL, 87, 0, 0),
					s_push(),
						s_call(s_mario_hsx_head),
					s_pull(),
					s_joint(XLU_SURF, NULL, 67, -10, 79),
					s_push(),
						s_joint(XLU_SURF, gfx_mario_h_uarmL_s, 0, 0, 0),
						s_push(),
							s_joint(XLU_SURF, gfx_mario_h_larmL, 65, 0, 0),
							s_push(),
								s_call(s_mario_hsx_gloveL),
							s_pull(),
						s_pull(),
					s_pull(),
					s_joint(XLU_SURF, NULL, 68, -10, -79),
					s_push(),
						s_joint(XLU_SURF, gfx_mario_h_uarmR_s, 0, 0, 0),
						s_push(),
							s_joint(XLU_SURF, gfx_mario_h_larmR, 65, 0, 0),
							s_push(),
								s_call(s_mario_hsx_gloveR),
							s_pull(),
						s_pull(),
					s_pull(),
				s_pull(),
			s_pull(),
			s_joint(XLU_SURF, NULL, 13, -8, 42),
			s_push(),
				s_joint(XLU_SURF, gfx_mario_h_thighL_s, 0, 0, 0),
				s_push(),
					s_joint(XLU_SURF, gfx_mario_h_shinL, 89, 0, 0),
					s_push(),
						s_joint(XLU_SURF, gfx_mario_h_shoeL_s, 67, 0, 0),
					s_pull(),
				s_pull(),
			s_pull(),
			s_joint(XLU_SURF, NULL, 13, -8, -42),
			s_push(),
				s_joint(XLU_SURF, gfx_mario_h_thighR_s, 0, 0, 0),
				s_push(),
					s_joint(XLU_SURF, gfx_mario_h_shinR, 89, 0, 0),
					s_push(),
						s_joint(XLU_SURF, NULL, 67, 0, 0),
						s_push(),
							s_callback(2, s_player_scale),
							s_scale(1),
							s_push(),
								s_gfx(XLU_SURF, gfx_mario_h_shoeR_s),
							s_pull(),
						s_pull(),
					s_pull(),
				s_pull(),
			s_pull(),
		s_pull(),
	s_pull(),
	s_return(),
};

extern Gfx gfx_mario_m_fistL_s[];
extern Gfx gfx_mario_handL_s[];

static S_SCRIPT s_mario_msx_gloveL[] =
{
	s_select(1, s_player_select_glove),
	s_push(),
		s_joint(XLU_SURF, NULL, 60, 0, 0),
		s_push(),
			s_callback(1, s_player_scale),
			s_scale(1),
			s_push(),
				s_gfx(XLU_SURF, gfx_mario_m_fistL_s),
			s_pull(),
		s_pull(),
		s_joint(XLU_SURF, gfx_mario_handL_s, 60, 0, 0),
		s_joint(XLU_SURF, gfx_mario_m_fistL_s, 60, 0, 0),
		s_joint(XLU_SURF, gfx_mario_m_fistL_s, 60, 0, 0),
		s_joint(XLU_SURF, gfx_mario_m_fistL_s, 60, 0, 0),
	s_pull(),
	s_return(),
};

extern Gfx gfx_mario_m_fistR_s[];
extern Gfx gfx_mario_handR_s[];
extern Gfx gfx_mario_capR_s[];
extern Gfx gfx_mario_wingsR_s[];
extern Gfx gfx_mario_peaceR_s[];

static S_SCRIPT s_mario_msx_gloveR[] =
{
	s_select(0, s_player_select_glove),
	s_push(),
		s_joint(XLU_SURF, NULL, 60, 0, 0),
		s_push(),
			s_callback(0, s_player_scale),
			s_scale(1),
			s_push(),
				s_gfx(XLU_SURF, gfx_mario_m_fistR_s),
			s_pull(),
			s_hand(0, 0, 0, 0, s_player_hand),
		s_pull(),
		s_joint(XLU_SURF, gfx_mario_handR_s, 60, 0, 0),
		s_push(),
			s_hand(0, 0, 0, 0, s_player_hand),
		s_pull(),
		s_joint(XLU_SURF, gfx_mario_peaceR_s, 60, 0, 0),
		s_joint(XLU_SURF, gfx_mario_capR_s, 60, 0, 0),
		s_joint(XLU_SURF, gfx_mario_capR_s, 60, 0, 0),
		s_push(),
			s_gfx(TEX_EDGE, gfx_mario_wingsR_s),
		s_pull(),
	s_pull(),
	s_return(),
};

extern Gfx gfx_mario_m_waist_s[];
extern Gfx gfx_mario_m_uarmL_s[];
extern Gfx gfx_mario_m_larmL[];
extern Gfx gfx_mario_m_uarmR_s[];
extern Gfx gfx_mario_m_larmR[];
extern Gfx gfx_mario_m_thighL_s[];
extern Gfx gfx_mario_m_shinL[];
extern Gfx gfx_mario_m_shoeL_s[];
extern Gfx gfx_mario_m_thighR_s[];
extern Gfx gfx_mario_m_shinR[];
extern Gfx gfx_mario_m_shoeR_s[];
extern Gfx gfx_mario_m_torso_s[];

static S_SCRIPT s_mario_msx[] =
{
	s_joint(XLU_SURF, NULL, 0, 0, 0),
	s_push(),
		s_joint(XLU_SURF, gfx_mario_m_waist_s, 0, 0, 0),
		s_push(),
			s_callback(0, s_mario_pos_child),
			s_callback(0, s_player_ang_torso),
			s_ang(0, 0, 0),
			s_push(),
				s_joint(XLU_SURF, gfx_mario_m_torso_s, 68, 0, 0),
				s_push(),
					s_joint(XLU_SURF, NULL, 87, 0, 0),
					s_push(),
						s_call(s_mario_hsx_head),
					s_pull(),
					s_joint(XLU_SURF, NULL, 67, -10, 79),
					s_push(),
						s_joint(XLU_SURF, gfx_mario_m_uarmL_s, 0, 0, 0),
						s_push(),
							s_joint(XLU_SURF, gfx_mario_m_larmL, 65, 0, 0),
							s_push(),
								s_call(s_mario_msx_gloveL),
							s_pull(),
						s_pull(),
					s_pull(),
					s_joint(XLU_SURF, NULL, 68, -10, -79),
					s_push(),
						s_joint(XLU_SURF, gfx_mario_m_uarmR_s, 0, 0, 0),
						s_push(),
							s_joint(XLU_SURF, gfx_mario_m_larmR, 65, 0, 0),
							s_push(),
								s_call(s_mario_msx_gloveR),
							s_pull(),
						s_pull(),
					s_pull(),
				s_pull(),
			s_pull(),
			s_joint(XLU_SURF, NULL, 13, -8, 42),
			s_push(),
				s_joint(XLU_SURF, gfx_mario_m_thighL_s, 0, 0, 0),
				s_push(),
					s_joint(XLU_SURF, gfx_mario_m_shinL, 89, 0, 0),
					s_push(),
						s_joint(XLU_SURF, gfx_mario_m_shoeL_s, 67, 0, 0),
					s_pull(),
				s_pull(),
			s_pull(),
			s_joint(XLU_SURF, NULL, 13, -8, -42),
			s_push(),
				s_joint(XLU_SURF, gfx_mario_m_thighR_s, 0, 0, 0),
				s_push(),
					s_joint(XLU_SURF, gfx_mario_m_shinR, 89, 0, 0),
					s_push(),
						s_joint(XLU_SURF, NULL, 67, 0, 0),
						s_push(),
							s_callback(2, s_player_scale),
							s_scale(1),
							s_push(),
								s_gfx(XLU_SURF, gfx_mario_m_shoeR_s),
							s_pull(),
						s_pull(),
					s_pull(),
				s_pull(),
			s_pull(),
		s_pull(),
	s_pull(),
	s_return(),
};

extern Gfx gfx_mario_l_cap_open[];
extern Gfx gfx_mario_l_cap_half[];
extern Gfx gfx_mario_l_cap_closed[];
extern Gfx gfx_mario_l_cap_left[];
extern Gfx gfx_mario_l_cap_right[];
extern Gfx gfx_mario_l_cap_up[];
extern Gfx gfx_mario_l_cap_down[];
extern Gfx gfx_mario_l_cap_dead[];
extern Gfx gfx_mario_l_hair_open[];
extern Gfx gfx_mario_l_hair_half[];
extern Gfx gfx_mario_l_hair_closed[];
extern Gfx gfx_mario_l_hair_left[];
extern Gfx gfx_mario_l_hair_right[];
extern Gfx gfx_mario_l_hair_up[];
extern Gfx gfx_mario_l_hair_down[];
extern Gfx gfx_mario_l_hair_dead[];
extern Gfx gfx_mario_wing_sx[];

static S_SCRIPT s_mario_lsx_head[] =
{
	s_callback(0, s_player_ang_head),
	s_ang(0, 0, 0),
	s_push(),
		s_select(0, s_player_select_head),
		s_push(),
			s_select(0, s_player_select_eye),
			s_push(),
				s_gfx(XLU_SURF, gfx_mario_l_cap_open),
				s_gfx(XLU_SURF, gfx_mario_l_cap_half),
				s_gfx(XLU_SURF, gfx_mario_l_cap_closed),
				s_gfx(XLU_SURF, gfx_mario_l_cap_left),
				s_gfx(XLU_SURF, gfx_mario_l_cap_right),
				s_gfx(XLU_SURF, gfx_mario_l_cap_up),
				s_gfx(XLU_SURF, gfx_mario_l_cap_down),
				s_gfx(XLU_SURF, gfx_mario_l_cap_dead),
			s_pull(),
			s_select(0, s_player_select_eye),
			s_push(),
				s_gfx(XLU_SURF, gfx_mario_l_hair_open),
				s_gfx(XLU_SURF, gfx_mario_l_hair_half),
				s_gfx(XLU_SURF, gfx_mario_l_hair_closed),
				s_gfx(XLU_SURF, gfx_mario_l_hair_left),
				s_gfx(XLU_SURF, gfx_mario_l_hair_right),
				s_gfx(XLU_SURF, gfx_mario_l_hair_up),
				s_gfx(XLU_SURF, gfx_mario_l_hair_down),
				s_gfx(XLU_SURF, gfx_mario_l_hair_dead),
			s_pull(),
		s_pull(),
		s_posang(142, -51, -126, 22, -40, -135),
		s_push(),
			s_callback(0, s_player_ang_wing),
			s_ang(0, 0, 0),
			s_push(),
				s_gfx(XLU_SURF, gfx_mario_wing_sx),
			s_pull(),
		s_pull(),
		s_posang(142, -51, 126, -22, 40, -135),
		s_push(),
			s_callback(1, s_player_ang_wing),
			s_ang(0, 0, 0),
			s_push(),
				s_gfx(XLU_SURF, gfx_mario_wing_sx),
			s_pull(),
		s_pull(),
	s_pull(),
	s_return(),
};

extern Gfx gfx_mario_l_fistL_s[];
extern Gfx gfx_mario_handL_s[];

static S_SCRIPT s_mario_lsx_gloveL[] =
{
	s_select(1, s_player_select_glove),
	s_push(),
		s_joint(XLU_SURF, NULL, 60, 0, 0),
		s_push(),
			s_callback(1, s_player_scale),
			s_scale(1),
			s_push(),
				s_gfx(XLU_SURF, gfx_mario_l_fistL_s),
			s_pull(),
		s_pull(),
		s_joint(XLU_SURF, gfx_mario_handL_s, 60, 0, 0),
		s_joint(XLU_SURF, gfx_mario_l_fistL_s, 60, 0, 0),
		s_joint(XLU_SURF, gfx_mario_l_fistL_s, 60, 0, 0),
		s_joint(XLU_SURF, gfx_mario_l_fistL_s, 60, 0, 0),
	s_pull(),
	s_return(),
};

extern Gfx gfx_mario_l_fistR_s[];
extern Gfx gfx_mario_handR_s[];
extern Gfx gfx_mario_capR_s[];
extern Gfx gfx_mario_wingsR_s[];
extern Gfx gfx_mario_peaceR_s[];

static S_SCRIPT s_mario_lsx_gloveR[] =
{
	s_select(0, s_player_select_glove),
	s_push(),
		s_joint(XLU_SURF, NULL, 60, 0, 0),
		s_push(),
			s_callback(0, s_player_scale),
			s_scale(1),
			s_push(),
				s_gfx(XLU_SURF, gfx_mario_l_fistR_s),
			s_pull(),
			s_hand(0, 0, 0, 0, s_player_hand),
		s_pull(),
		s_joint(XLU_SURF, gfx_mario_handR_s, 60, 0, 0),
		s_push(),
			s_hand(0, 0, 0, 0, s_player_hand),
		s_pull(),
		s_joint(XLU_SURF, gfx_mario_peaceR_s, 60, 0, 0),
		s_joint(XLU_SURF, gfx_mario_capR_s, 60, 0, 0),
		s_joint(XLU_SURF, gfx_mario_capR_s, 60, 0, 0),
		s_push(),
			s_gfx(TEX_EDGE, gfx_mario_wingsR_s),
		s_pull(),
	s_pull(),
	s_return(),
};

extern Gfx gfx_mario_l_waist_s[];
extern Gfx gfx_mario_l_uarmL_s[];
extern Gfx gfx_mario_l_larmL[];
extern Gfx gfx_mario_l_uarmR_s[];
extern Gfx gfx_mario_l_larmR[];
extern Gfx gfx_mario_l_thighL_s[];
extern Gfx gfx_mario_l_shinL[];
extern Gfx gfx_mario_l_shoeL_s[];
extern Gfx gfx_mario_l_thighR_s[];
extern Gfx gfx_mario_l_shinR[];
extern Gfx gfx_mario_l_shoeR_s[];
extern Gfx gfx_mario_l_torso_s[];

static S_SCRIPT s_mario_lsx[] =
{
	s_joint(XLU_SURF, NULL, 0, 0, 0),
	s_push(),
		s_joint(XLU_SURF, gfx_mario_l_waist_s, 0, 0, 0),
		s_push(),
			s_callback(0, s_mario_pos_child),
			s_callback(0, s_player_ang_torso),
			s_ang(0, 0, 0),
			s_push(),
				s_joint(XLU_SURF, gfx_mario_l_torso_s, 68, 0, 0),
				s_push(),
					s_joint(XLU_SURF, NULL, 87, 0, 0),
					s_push(),
						s_call(s_mario_lsx_head),
					s_pull(),
					s_joint(XLU_SURF, NULL, 67, -10, 79),
					s_push(),
						s_joint(XLU_SURF, gfx_mario_l_uarmL_s, 0, 0, 0),
						s_push(),
							s_joint(XLU_SURF, gfx_mario_l_larmL, 65, 0, 0),
							s_push(),
								s_call(s_mario_lsx_gloveL),
							s_pull(),
						s_pull(),
					s_pull(),
					s_joint(XLU_SURF, NULL, 68, -10, -79),
					s_push(),
						s_joint(XLU_SURF, gfx_mario_l_uarmR_s, 0, 0, 0),
						s_push(),
							s_joint(XLU_SURF, gfx_mario_l_larmR, 65, 0, 0),
							s_push(),
								s_call(s_mario_lsx_gloveR),
							s_pull(),
						s_pull(),
					s_pull(),
				s_pull(),
			s_pull(),
			s_joint(XLU_SURF, NULL, 13, -8, 42),
			s_push(),
				s_joint(XLU_SURF, gfx_mario_l_thighL_s, 0, 0, 0),
				s_push(),
					s_joint(XLU_SURF, gfx_mario_l_shinL, 89, 0, 0),
					s_push(),
						s_joint(XLU_SURF, gfx_mario_l_shoeL_s, 67, 0, 0),
					s_pull(),
				s_pull(),
			s_pull(),
			s_joint(XLU_SURF, NULL, 13, -8, -42),
			s_push(),
				s_joint(XLU_SURF, gfx_mario_l_thighR_s, 0, 0, 0),
				s_push(),
					s_joint(XLU_SURF, gfx_mario_l_shinR, 89, 0, 0),
					s_push(),
						s_joint(XLU_SURF, NULL, 67, 0, 0),
						s_push(),
							s_callback(2, s_player_scale),
							s_scale(1),
							s_push(),
								s_gfx(XLU_SURF, gfx_mario_l_shoeR_s),
							s_pull(),
						s_pull(),
					s_pull(),
				s_pull(),
			s_pull(),
		s_pull(),
	s_pull(),
	s_return(),
};

extern Gfx gfx_mario_h_cap[];
extern Gfx gfx_mario_h_hair[];
extern Gfx gfx_mario_wing_eo[];

static S_SCRIPT s_mario_heo_head[] =
{
	s_callback(0, s_player_ang_head),
	s_ang(0, 0, 0),
	s_push(),
		s_select(0, s_player_select_head),
		s_push(),
			s_gfx(OPA_SURF, gfx_mario_h_cap),
			s_gfx(OPA_SURF, gfx_mario_h_hair),
		s_pull(),
		s_posang(142, -51, -126, 22, -40, -135),
		s_push(),
			s_callback(0, s_player_ang_wing),
			s_ang(0, 0, 0),
			s_push(),
				s_gfx(TEX_EDGE, gfx_mario_wing_eo),
			s_pull(),
		s_pull(),
		s_posang(142, -51, 126, -22, 40, -135),
		s_push(),
			s_callback(1, s_player_ang_wing),
			s_ang(0, 0, 0),
			s_push(),
				s_gfx(TEX_EDGE, gfx_mario_wing_eo),
			s_pull(),
		s_pull(),
	s_pull(),
	s_return(),
};

extern Gfx gfx_mario_h_fistL[];
extern Gfx gfx_mario_handL[];

static S_SCRIPT s_mario_heo_gloveL[] =
{
	s_select(1, s_player_select_glove),
	s_push(),
		s_joint(OPA_SURF, NULL, 60, 0, 0),
		s_push(),
			s_callback(1, s_player_scale),
			s_scale(1),
			s_push(),
				s_gfx(OPA_SURF, gfx_mario_h_fistL),
			s_pull(),
		s_pull(),
		s_joint(OPA_SURF, gfx_mario_handL, 60, 0, 0),
		s_joint(OPA_SURF, gfx_mario_h_fistL, 60, 0, 0),
		s_joint(OPA_SURF, gfx_mario_h_fistL, 60, 0, 0),
		s_joint(OPA_SURF, gfx_mario_h_fistL, 60, 0, 0),
	s_pull(),
	s_return(),
};

extern Gfx gfx_mario_h_fistR_e[];
extern Gfx gfx_mario_handR_e[];
extern Gfx gfx_mario_capR_e[];
extern Gfx gfx_mario_wingsR_e[];
extern Gfx gfx_mario_peaceR[];

static S_SCRIPT s_mario_heo_gloveR[] =
{
	s_select(0, s_player_select_glove),
	s_push(),
		s_joint(OPA_SURF, NULL, 60, 0, 0),
		s_push(),
			s_callback(0, s_player_scale),
			s_scale(1),
			s_push(),
				s_gfx(OPA_SURF, gfx_mario_h_fistR_e),
			s_pull(),
			s_hand(0, 0, 0, 0, s_player_hand),
		s_pull(),
		s_joint(OPA_SURF, gfx_mario_handR_e, 60, 0, 0),
		s_push(),
			s_hand(0, 0, 0, 0, s_player_hand),
		s_pull(),
		s_joint(OPA_SURF, gfx_mario_peaceR, 60, 0, 0),
		s_joint(OPA_SURF, gfx_mario_capR_e, 60, 0, 0),
		s_joint(OPA_SURF, gfx_mario_capR_e, 60, 0, 0),
		s_push(),
			s_gfx(TEX_EDGE, gfx_mario_wingsR_e),
		s_pull(),
	s_pull(),
	s_return(),
};

extern Gfx gfx_mario_h_waist_e[];
extern Gfx gfx_mario_h_uarmL[];
extern Gfx gfx_mario_h_larmL[];
extern Gfx gfx_mario_h_uarmR[];
extern Gfx gfx_mario_h_larmR[];
extern Gfx gfx_mario_h_thighL_e[];
extern Gfx gfx_mario_h_shinL[];
extern Gfx gfx_mario_h_shoeL[];
extern Gfx gfx_mario_h_thighR[];
extern Gfx gfx_mario_h_shinR[];
extern Gfx gfx_mario_h_shoeR_e[];
extern Gfx gfx_mario_h_torso[];

static S_SCRIPT s_mario_heo[] =
{
	s_joint(OPA_SURF, NULL, 0, 0, 0),
	s_push(),
		s_joint(OPA_SURF, gfx_mario_h_waist_e, 0, 0, 0),
		s_push(),
			s_callback(0, s_mario_pos_child),
			s_callback(0, s_player_ang_torso),
			s_ang(0, 0, 0),
			s_push(),
				s_joint(OPA_SURF, gfx_mario_h_torso, 68, 0, 0),
				s_push(),
					s_joint(OPA_SURF, NULL, 87, 0, 0),
					s_push(),
						s_call(s_mario_heo_head),
					s_pull(),
					s_joint(OPA_SURF, NULL, 67, -10, 79),
					s_push(),
						s_joint(OPA_SURF, gfx_mario_h_uarmL, 0, 0, 0),
						s_push(),
							s_joint(OPA_SURF, gfx_mario_h_larmL, 65, 0, 0),
							s_push(),
								s_call(s_mario_heo_gloveL),
							s_pull(),
						s_pull(),
					s_pull(),
					s_joint(OPA_SURF, NULL, 68, -10, -79),
					s_push(),
						s_joint(OPA_SURF, gfx_mario_h_uarmR, 0, 0, 0),
						s_push(),
							s_joint(OPA_SURF, gfx_mario_h_larmR, 65, 0, 0),
							s_push(),
								s_call(s_mario_heo_gloveR),
							s_pull(),
						s_pull(),
					s_pull(),
				s_pull(),
			s_pull(),
			s_joint(OPA_SURF, NULL, 13, -8, 42),
			s_push(),
				s_joint(OPA_SURF, gfx_mario_h_thighL_e, 0, 0, 0),
				s_push(),
					s_joint(OPA_SURF, gfx_mario_h_shinL, 89, 0, 0),
					s_push(),
						s_joint(OPA_SURF, gfx_mario_h_shoeL, 67, 0, 0),
					s_pull(),
				s_pull(),
			s_pull(),
			s_joint(OPA_SURF, NULL, 13, -8, -42),
			s_push(),
				s_joint(OPA_SURF, gfx_mario_h_thighR, 0, 0, 0),
				s_push(),
					s_joint(OPA_SURF, gfx_mario_h_shinR, 89, 0, 0),
					s_push(),
						s_joint(OPA_SURF, NULL, 67, 0, 0),
						s_push(),
							s_callback(2, s_player_scale),
							s_scale(1),
							s_push(),
								s_gfx(OPA_SURF, gfx_mario_h_shoeR_e),
							s_pull(),
						s_pull(),
					s_pull(),
				s_pull(),
			s_pull(),
		s_pull(),
	s_pull(),
	s_return(),
};

extern Gfx gfx_mario_m_fistL[];
extern Gfx gfx_mario_handL[];

static S_SCRIPT s_mario_meo_gloveL[] =
{
	s_select(1, s_player_select_glove),
	s_push(),
		s_joint(OPA_SURF, NULL, 60, 0, 0),
		s_push(),
			s_callback(1, s_player_scale),
			s_scale(1),
			s_push(),
				s_gfx(OPA_SURF, gfx_mario_m_fistL),
			s_pull(),
		s_pull(),
		s_joint(OPA_SURF, gfx_mario_handL, 60, 0, 0),
		s_joint(OPA_SURF, gfx_mario_m_fistL, 60, 0, 0),
		s_joint(OPA_SURF, gfx_mario_m_fistL, 60, 0, 0),
		s_joint(OPA_SURF, gfx_mario_m_fistL, 60, 0, 0),
	s_pull(),
	s_return(),
};

extern Gfx gfx_mario_m_fistR_e[];
extern Gfx gfx_mario_handR_e[];
extern Gfx gfx_mario_capR_e[];
extern Gfx gfx_mario_wingsR_e[];
extern Gfx gfx_mario_peaceR[];

static S_SCRIPT s_mario_meo_gloveR[] =
{
	s_select(0, s_player_select_glove),
	s_push(),
		s_joint(OPA_SURF, NULL, 60, 0, 0),
		s_push(),
			s_callback(0, s_player_scale),
			s_scale(1),
			s_push(),
				s_gfx(OPA_SURF, gfx_mario_m_fistR_e),
			s_pull(),
			s_hand(0, 0, 0, 0, s_player_hand),
		s_pull(),
		s_joint(OPA_SURF, gfx_mario_handR_e, 60, 0, 0),
		s_push(),
			s_hand(0, 0, 0, 0, s_player_hand),
		s_pull(),
		s_joint(OPA_SURF, gfx_mario_peaceR, 60, 0, 0),
		s_joint(OPA_SURF, gfx_mario_capR_e, 60, 0, 0),
		s_joint(OPA_SURF, gfx_mario_capR_e, 60, 0, 0),
		s_push(),
			s_gfx(TEX_EDGE, gfx_mario_wingsR_e),
		s_pull(),
	s_pull(),
	s_return(),
};

extern Gfx gfx_mario_m_waist_e[];
extern Gfx gfx_mario_m_uarmL[];
extern Gfx gfx_mario_m_larmL[];
extern Gfx gfx_mario_m_uarmR[];
extern Gfx gfx_mario_m_larmR[];
extern Gfx gfx_mario_m_thighL_e[];
extern Gfx gfx_mario_m_shinL[];
extern Gfx gfx_mario_m_shoeL[];
extern Gfx gfx_mario_m_thighR[];
extern Gfx gfx_mario_m_shinR[];
extern Gfx gfx_mario_m_shoeR_e[];
extern Gfx gfx_mario_m_torso_e[];

static S_SCRIPT s_mario_meo[] =
{
	s_joint(OPA_SURF, NULL, 0, 0, 0),
	s_push(),
		s_joint(OPA_SURF, gfx_mario_m_waist_e, 0, 0, 0),
		s_push(),
			s_callback(0, s_mario_pos_child),
			s_callback(0, s_player_ang_torso),
			s_ang(0, 0, 0),
			s_push(),
				s_joint(OPA_SURF, gfx_mario_m_torso_e, 68, 0, 0),
				s_push(),
					s_joint(OPA_SURF, NULL, 87, 0, 0),
					s_push(),
						s_call(s_mario_heo_head),
					s_pull(),
					s_joint(OPA_SURF, NULL, 67, -10, 79),
					s_push(),
						s_joint(OPA_SURF, gfx_mario_m_uarmL, 0, 0, 0),
						s_push(),
							s_joint(OPA_SURF, gfx_mario_m_larmL, 65, 0, 0),
							s_push(),
								s_call(s_mario_meo_gloveL),
							s_pull(),
						s_pull(),
					s_pull(),
					s_joint(OPA_SURF, NULL, 68, -10, -79),
					s_push(),
						s_joint(OPA_SURF, gfx_mario_m_uarmR, 0, 0, 0),
						s_push(),
							s_joint(OPA_SURF, gfx_mario_m_larmR, 65, 0, 0),
							s_push(),
								s_call(s_mario_meo_gloveR),
							s_pull(),
						s_pull(),
					s_pull(),
				s_pull(),
			s_pull(),
			s_joint(OPA_SURF, NULL, 13, -8, 42),
			s_push(),
				s_joint(OPA_SURF, gfx_mario_m_thighL_e, 0, 0, 0),
				s_push(),
					s_joint(OPA_SURF, gfx_mario_m_shinL, 89, 0, 0),
					s_push(),
						s_joint(OPA_SURF, gfx_mario_m_shoeL, 67, 0, 0),
					s_pull(),
				s_pull(),
			s_pull(),
			s_joint(OPA_SURF, NULL, 13, -8, -42),
			s_push(),
				s_joint(OPA_SURF, gfx_mario_m_thighR, 0, 0, 0),
				s_push(),
					s_joint(OPA_SURF, gfx_mario_m_shinR, 89, 0, 0),
					s_push(),
						s_joint(OPA_SURF, NULL, 67, 0, 0),
						s_push(),
							s_callback(2, s_player_scale),
							s_scale(1),
							s_push(),
								s_gfx(OPA_SURF, gfx_mario_m_shoeR_e),
							s_pull(),
						s_pull(),
					s_pull(),
				s_pull(),
			s_pull(),
		s_pull(),
	s_pull(),
	s_return(),
};

extern Gfx gfx_mario_l_cap[];
extern Gfx gfx_mario_l_hair[];
extern Gfx gfx_mario_wing_eo[];

static S_SCRIPT s_mario_leo_head[] =
{
	s_callback(0, s_player_ang_head),
	s_ang(0, 0, 0),
	s_push(),
		s_select(0, s_player_select_head),
		s_push(),
			s_gfx(OPA_SURF, gfx_mario_l_cap),
			s_gfx(OPA_SURF, gfx_mario_l_hair),
		s_pull(),
		s_posang(142, -51, -126, 22, -40, -135),
		s_push(),
			s_callback(0, s_player_ang_wing),
			s_ang(0, 0, 0),
			s_push(),
				s_gfx(TEX_EDGE, gfx_mario_wing_eo),
			s_pull(),
		s_pull(),
		s_posang(142, -51, 126, -22, 40, -135),
		s_push(),
			s_callback(1, s_player_ang_wing),
			s_ang(0, 0, 0),
			s_push(),
				s_gfx(TEX_EDGE, gfx_mario_wing_eo),
			s_pull(),
		s_pull(),
	s_pull(),
	s_return(),
};

extern Gfx gfx_mario_l_fistL[];
extern Gfx gfx_mario_handL[];

static S_SCRIPT s_mario_leo_gloveL[] =
{
	s_select(1, s_player_select_glove),
	s_push(),
		s_joint(OPA_SURF, NULL, 60, 0, 0),
		s_push(),
			s_callback(1, s_player_scale),
			s_scale(1),
			s_push(),
				s_gfx(OPA_SURF, gfx_mario_l_fistL),
			s_pull(),
		s_pull(),
		s_joint(OPA_SURF, gfx_mario_handL, 60, 0, 0),
		s_joint(OPA_SURF, gfx_mario_l_fistL, 60, 0, 0),
		s_joint(OPA_SURF, gfx_mario_l_fistL, 60, 0, 0),
		s_joint(OPA_SURF, gfx_mario_l_fistL, 60, 0, 0),
	s_pull(),
	s_return(),
};

extern Gfx gfx_mario_l_fistR_e[];
extern Gfx gfx_mario_handR_e[];
extern Gfx gfx_mario_capR_e[];
extern Gfx gfx_mario_wingsR_e[];
extern Gfx gfx_mario_peaceR[];

static S_SCRIPT s_mario_leo_gloveR[] =
{
	s_select(0, s_player_select_glove),
	s_push(),
		s_joint(OPA_SURF, NULL, 60, 0, 0),
		s_push(),
			s_callback(0, s_player_scale),
			s_scale(1),
			s_push(),
				s_gfx(OPA_SURF, gfx_mario_l_fistR_e),
			s_pull(),
			s_hand(0, 0, 0, 0, s_player_hand),
		s_pull(),
		s_joint(OPA_SURF, gfx_mario_handR_e, 60, 0, 0),
		s_push(),
			s_hand(0, 0, 0, 0, s_player_hand),
		s_pull(),
		s_joint(OPA_SURF, gfx_mario_peaceR, 60, 0, 0),
		s_joint(OPA_SURF, gfx_mario_capR_e, 60, 0, 0),
		s_joint(OPA_SURF, gfx_mario_capR_e, 60, 0, 0),
		s_push(),
			s_gfx(TEX_EDGE, gfx_mario_wingsR_e),
		s_pull(),
	s_pull(),
	s_return(),
};

extern Gfx gfx_mario_l_waist_e[];
extern Gfx gfx_mario_l_uarmL[];
extern Gfx gfx_mario_l_larmL[];
extern Gfx gfx_mario_l_uarmR[];
extern Gfx gfx_mario_l_larmR[];
extern Gfx gfx_mario_l_thighL_e[];
extern Gfx gfx_mario_l_shinL[];
extern Gfx gfx_mario_l_shoeL[];
extern Gfx gfx_mario_l_thighR[];
extern Gfx gfx_mario_l_shinR[];
extern Gfx gfx_mario_l_shoeR_e[];
extern Gfx gfx_mario_l_torso_e[];

static S_SCRIPT s_mario_leo[] =
{
	s_joint(OPA_SURF, NULL, 0, 0, 0),
	s_push(),
		s_joint(OPA_SURF, gfx_mario_l_waist_e, 0, 0, 0),
		s_push(),
			s_callback(0, s_mario_pos_child),
			s_callback(0, s_player_ang_torso),
			s_ang(0, 0, 0),
			s_push(),
				s_joint(OPA_SURF, gfx_mario_l_torso_e, 68, 0, 0),
				s_push(),
					s_joint(OPA_SURF, NULL, 87, 0, 0),
					s_push(),
						s_call(s_mario_leo_head),
					s_pull(),
					s_joint(OPA_SURF, NULL, 67, -10, 79),
					s_push(),
						s_joint(OPA_SURF, gfx_mario_l_uarmL, 0, 0, 0),
						s_push(),
							s_joint(OPA_SURF, gfx_mario_l_larmL, 65, 0, 0),
							s_push(),
								s_call(s_mario_leo_gloveL),
							s_pull(),
						s_pull(),
					s_pull(),
					s_joint(OPA_SURF, NULL, 68, -10, -79),
					s_push(),
						s_joint(OPA_SURF, gfx_mario_l_uarmR, 0, 0, 0),
						s_push(),
							s_joint(OPA_SURF, gfx_mario_l_larmR, 65, 0, 0),
							s_push(),
								s_call(s_mario_leo_gloveR),
							s_pull(),
						s_pull(),
					s_pull(),
				s_pull(),
			s_pull(),
			s_joint(OPA_SURF, NULL, 13, -8, 42),
			s_push(),
				s_joint(OPA_SURF, gfx_mario_l_thighL_e, 0, 0, 0),
				s_push(),
					s_joint(OPA_SURF, gfx_mario_l_shinL, 89, 0, 0),
					s_push(),
						s_joint(OPA_SURF, gfx_mario_l_shoeL, 67, 0, 0),
					s_pull(),
				s_pull(),
			s_pull(),
			s_joint(OPA_SURF, NULL, 13, -8, -42),
			s_push(),
				s_joint(OPA_SURF, gfx_mario_l_thighR, 0, 0, 0),
				s_push(),
					s_joint(OPA_SURF, gfx_mario_l_shinR, 89, 0, 0),
					s_push(),
						s_joint(OPA_SURF, NULL, 67, 0, 0),
						s_push(),
							s_callback(2, s_player_scale),
							s_scale(1),
							s_push(),
								s_gfx(OPA_SURF, gfx_mario_l_shoeR_e),
							s_pull(),
						s_pull(),
					s_pull(),
				s_pull(),
			s_pull(),
		s_pull(),
	s_pull(),
	s_return(),
};

extern Gfx gfx_mario_h_cap[];
extern Gfx gfx_mario_h_hair[];
extern Gfx gfx_mario_wing_ex[];

static S_SCRIPT s_mario_hex_head[] =
{
	s_callback(0, s_player_ang_head),
	s_ang(0, 0, 0),
	s_push(),
		s_select(0, s_player_select_head),
		s_push(),
			s_gfx(XLU_SURF, gfx_mario_h_cap),
			s_gfx(XLU_SURF, gfx_mario_h_hair),
		s_pull(),
		s_posang(142, -51, -126, 22, -40, -135),
		s_push(),
			s_callback(0, s_player_ang_wing),
			s_ang(0, 0, 0),
			s_push(),
				s_gfx(XLU_SURF, gfx_mario_wing_ex),
			s_pull(),
		s_pull(),
		s_posang(142, -51, 126, -22, 40, -135),
		s_push(),
			s_callback(1, s_player_ang_wing),
			s_ang(0, 0, 0),
			s_push(),
				s_gfx(XLU_SURF, gfx_mario_wing_ex),
			s_pull(),
		s_pull(),
	s_pull(),
	s_return(),
};

extern Gfx gfx_mario_h_fistL[];
extern Gfx gfx_mario_handL[];

static S_SCRIPT s_mario_hex_gloveL[] =
{
	s_select(0, s_player_select_glove),
	s_push(),
		s_joint(XLU_SURF, NULL, 60, 0, 0),
		s_push(),
			s_callback(1, s_player_scale),
			s_scale(1),
			s_push(),
				s_gfx(XLU_SURF, gfx_mario_h_fistL),
			s_pull(),
		s_pull(),
		s_joint(XLU_SURF, gfx_mario_handL, 60, 0, 0),
		s_joint(XLU_SURF, gfx_mario_h_fistL, 60, 0, 0),
		s_joint(XLU_SURF, gfx_mario_h_fistL, 60, 0, 0),
		s_joint(XLU_SURF, gfx_mario_h_fistL, 60, 0, 0),
	s_pull(),
	s_return(),
};

extern Gfx gfx_mario_h_fistR_e[];
extern Gfx gfx_mario_handR_e[];
extern Gfx gfx_mario_capR_e[];
extern Gfx gfx_mario_wingsR_e[];
extern Gfx gfx_mario_peaceR[];

static S_SCRIPT s_mario_hex_gloveR[] =
{
	s_select(0, s_player_select_glove),
	s_push(),
		s_joint(XLU_SURF, NULL, 60, 0, 0),
		s_push(),
			s_callback(0, s_player_scale),
			s_scale(1),
			s_push(),
				s_gfx(XLU_SURF, gfx_mario_h_fistR_e),
			s_pull(),
			s_hand(0, 0, 0, 0, s_player_hand),
		s_pull(),
		s_joint(XLU_SURF, gfx_mario_handR_e, 60, 0, 0),
		s_push(),
			s_hand(0, 0, 0, 0, s_player_hand),
		s_pull(),
		s_joint(XLU_SURF, gfx_mario_peaceR, 60, 0, 0),
		s_joint(XLU_SURF, gfx_mario_capR_e, 60, 0, 0),
		s_joint(XLU_SURF, gfx_mario_capR_e, 60, 0, 0),
		s_push(),
			s_gfx(TEX_EDGE, gfx_mario_wingsR_e),
		s_pull(),
	s_pull(),
	s_return(),
};

extern Gfx gfx_mario_h_waist_e[];
extern Gfx gfx_mario_h_uarmL[];
extern Gfx gfx_mario_h_larmL[];
extern Gfx gfx_mario_h_uarmR[];
extern Gfx gfx_mario_h_larmR[];
extern Gfx gfx_mario_h_thighL_e[];
extern Gfx gfx_mario_h_shinL[];
extern Gfx gfx_mario_h_shoeL[];
extern Gfx gfx_mario_h_thighR[];
extern Gfx gfx_mario_h_shinR[];
extern Gfx gfx_mario_h_shoeR_e[];
extern Gfx gfx_mario_h_torso[];

static S_SCRIPT s_mario_hex[] =
{
	s_joint(XLU_SURF, NULL, 0, 0, 0),
	s_push(),
		s_joint(XLU_SURF, gfx_mario_h_waist_e, 0, 0, 0),
		s_push(),
			s_callback(0, s_mario_pos_child),
			s_callback(0, s_player_ang_torso),
			s_ang(0, 0, 0),
			s_push(),
				s_joint(XLU_SURF, gfx_mario_h_torso, 68, 0, 0),
				s_push(),
					s_joint(XLU_SURF, NULL, 87, 0, 0),
					s_push(),
						s_call(s_mario_hex_head),
					s_pull(),
					s_joint(XLU_SURF, NULL, 67, -10, 79),
					s_push(),
						s_joint(XLU_SURF, gfx_mario_h_uarmL, 0, 0, 0),
						s_push(),
							s_joint(XLU_SURF, gfx_mario_h_larmL, 65, 0, 0),
							s_push(),
								s_call(s_mario_hex_gloveL),
							s_pull(),
						s_pull(),
					s_pull(),
					s_joint(XLU_SURF, NULL, 68, -10, -79),
					s_push(),
						s_joint(XLU_SURF, gfx_mario_h_uarmR, 0, 0, 0),
						s_push(),
							s_joint(XLU_SURF, gfx_mario_h_larmR, 65, 0, 0),
							s_push(),
								s_call(s_mario_hex_gloveR),
							s_pull(),
						s_pull(),
					s_pull(),
				s_pull(),
			s_pull(),
			s_joint(XLU_SURF, NULL, 13, -8, 42),
			s_push(),
				s_joint(XLU_SURF, gfx_mario_h_thighL_e, 0, 0, 0),
				s_push(),
					s_joint(XLU_SURF, gfx_mario_h_shinL, 89, 0, 0),
					s_push(),
						s_joint(XLU_SURF, gfx_mario_h_shoeL, 67, 0, 0),
					s_pull(),
				s_pull(),
			s_pull(),
			s_joint(XLU_SURF, NULL, 13, -8, -42),
			s_push(),
				s_joint(XLU_SURF, gfx_mario_h_thighR, 0, 0, 0),
				s_push(),
					s_joint(XLU_SURF, gfx_mario_h_shinR, 89, 0, 0),
					s_push(),
						s_joint(XLU_SURF, NULL, 67, 0, 0),
						s_push(),
							s_callback(2, s_player_scale),
							s_scale(1),
							s_push(),
								s_gfx(XLU_SURF, gfx_mario_h_shoeR_e),
							s_pull(),
						s_pull(),
					s_pull(),
				s_pull(),
			s_pull(),
		s_pull(),
	s_pull(),
	s_return(),
};

extern Gfx gfx_mario_m_fistL[];
extern Gfx gfx_mario_handL[];

static S_SCRIPT s_mario_mex_gloveL[] =
{
	s_select(0, s_player_select_glove),
	s_push(),
		s_joint(XLU_SURF, NULL, 60, 0, 0),
		s_push(),
			s_callback(1, s_player_scale),
			s_scale(1),
			s_push(),
				s_gfx(XLU_SURF, gfx_mario_m_fistL),
			s_pull(),
		s_pull(),
		s_joint(XLU_SURF, gfx_mario_handL, 60, 0, 0),
		s_joint(XLU_SURF, gfx_mario_m_fistL, 60, 0, 0),
		s_joint(XLU_SURF, gfx_mario_m_fistL, 60, 0, 0),
		s_joint(XLU_SURF, gfx_mario_m_fistL, 60, 0, 0),
	s_pull(),
	s_return(),
};

extern Gfx gfx_mario_m_fistR_e[];
extern Gfx gfx_mario_handR_e[];
extern Gfx gfx_mario_capR_e[];
extern Gfx gfx_mario_wingsR_e[];
extern Gfx gfx_mario_peaceR[];

static S_SCRIPT s_mario_mex_gloveR[] =
{
	s_select(0, s_player_select_glove),
	s_push(),
		s_joint(XLU_SURF, NULL, 60, 0, 0),
		s_push(),
			s_callback(0, s_player_scale),
			s_scale(1),
			s_push(),
				s_gfx(XLU_SURF, gfx_mario_m_fistR_e),
			s_pull(),
			s_hand(0, 0, 0, 0, s_player_hand),
		s_pull(),
		s_joint(XLU_SURF, gfx_mario_handR_e, 60, 0, 0),
		s_push(),
			s_hand(0, 0, 0, 0, s_player_hand),
		s_pull(),
		s_joint(XLU_SURF, gfx_mario_peaceR, 60, 0, 0),
		s_joint(XLU_SURF, gfx_mario_capR_e, 60, 0, 0),
		s_joint(XLU_SURF, gfx_mario_capR_e, 60, 0, 0),
		s_push(),
			s_gfx(TEX_EDGE, gfx_mario_wingsR_e),
		s_pull(),
	s_pull(),
	s_return(),
};

extern Gfx gfx_mario_m_waist_e[];
extern Gfx gfx_mario_m_uarmL[];
extern Gfx gfx_mario_m_larmL[];
extern Gfx gfx_mario_m_uarmR[];
extern Gfx gfx_mario_m_larmR[];
extern Gfx gfx_mario_m_thighL_e[];
extern Gfx gfx_mario_m_shinL[];
extern Gfx gfx_mario_m_shoeL[];
extern Gfx gfx_mario_m_thighR[];
extern Gfx gfx_mario_m_shinR[];
extern Gfx gfx_mario_m_shoeR_e[];
extern Gfx gfx_mario_m_torso_e[];

static S_SCRIPT s_mario_mex[] =
{
	s_joint(XLU_SURF, NULL, 0, 0, 0),
	s_push(),
		s_joint(XLU_SURF, gfx_mario_m_waist_e, 0, 0, 0),
		s_push(),
			s_callback(0, s_mario_pos_child),
			s_callback(0, s_player_ang_torso),
			s_ang(0, 0, 0),
			s_push(),
				s_joint(XLU_SURF, gfx_mario_m_torso_e, 68, 0, 0),
				s_push(),
					s_joint(XLU_SURF, NULL, 87, 0, 0),
					s_push(),
						s_call(s_mario_hex_head),
					s_pull(),
					s_joint(XLU_SURF, NULL, 67, -10, 79),
					s_push(),
						s_joint(XLU_SURF, gfx_mario_m_uarmL, 0, 0, 0),
						s_push(),
							s_joint(XLU_SURF, gfx_mario_m_larmL, 65, 0, 0),
							s_push(),
								s_call(s_mario_mex_gloveL),
							s_pull(),
						s_pull(),
					s_pull(),
					s_joint(XLU_SURF, NULL, 68, -10, -79),
					s_push(),
						s_joint(XLU_SURF, gfx_mario_m_uarmR, 0, 0, 0),
						s_push(),
							s_joint(XLU_SURF, gfx_mario_m_larmR, 65, 0, 0),
							s_push(),
								s_select(0, s_player_select_glove),
								s_push(),
									s_call(s_mario_mex_gloveR),
								s_pull(),
							s_pull(),
						s_pull(),
					s_pull(),
				s_pull(),
			s_pull(),
			s_joint(XLU_SURF, NULL, 13, -8, 42),
			s_push(),
				s_joint(XLU_SURF, gfx_mario_m_thighL_e, 0, 0, 0),
				s_push(),
					s_joint(XLU_SURF, gfx_mario_m_shinL, 89, 0, 0),
					s_push(),
						s_joint(XLU_SURF, gfx_mario_m_shoeL, 67, 0, 0),
					s_pull(),
				s_pull(),
			s_pull(),
			s_joint(XLU_SURF, NULL, 13, -8, -42),
			s_push(),
				s_joint(XLU_SURF, gfx_mario_m_thighR, 0, 0, 0),
				s_push(),
					s_joint(XLU_SURF, gfx_mario_m_shinR, 89, 0, 0),
					s_push(),
						s_joint(XLU_SURF, NULL, 67, 0, 0),
						s_push(),
							s_callback(2, s_player_scale),
							s_scale(1),
							s_push(),
								s_gfx(XLU_SURF, gfx_mario_m_shoeR_e),
							s_pull(),
						s_pull(),
					s_pull(),
				s_pull(),
			s_pull(),
		s_pull(),
	s_pull(),
	s_return(),
};

extern Gfx gfx_mario_l_cap[];
extern Gfx gfx_mario_l_hair[];
extern Gfx gfx_mario_wing_ex[];

static S_SCRIPT s_mario_lex_head[] =
{
	s_callback(0, s_player_ang_head),
	s_ang(0, 0, 0),
	s_push(),
		s_select(0, s_player_select_head),
		s_push(),
			s_gfx(XLU_SURF, gfx_mario_l_cap),
			s_gfx(XLU_SURF, gfx_mario_l_hair),
		s_pull(),
		s_posang(142, -51, -126, 22, -40, -135),
		s_push(),
			s_callback(0, s_player_ang_wing),
			s_ang(0, 0, 0),
			s_push(),
				s_gfx(XLU_SURF, gfx_mario_wing_ex),
			s_pull(),
		s_pull(),
		s_posang(142, -51, 126, -22, 40, -135),
		s_push(),
			s_callback(1, s_player_ang_wing),
			s_ang(0, 0, 0),
			s_push(),
				s_gfx(XLU_SURF, gfx_mario_wing_ex),
			s_pull(),
		s_pull(),
	s_pull(),
	s_return(),
};

extern Gfx gfx_mario_l_fistL[];
extern Gfx gfx_mario_handL[];

static S_SCRIPT s_mario_lex_gloveL[] =
{
	s_select(0, s_player_select_glove),
	s_push(),
		s_joint(XLU_SURF, NULL, 60, 0, 0),
		s_push(),
			s_callback(1, s_player_scale),
			s_scale(1),
			s_push(),
				s_gfx(XLU_SURF, gfx_mario_l_fistL),
			s_pull(),
		s_pull(),
		s_joint(XLU_SURF, gfx_mario_handL, 60, 0, 0),
		s_joint(XLU_SURF, gfx_mario_l_fistL, 60, 0, 0),
		s_joint(XLU_SURF, gfx_mario_l_fistL, 60, 0, 0),
		s_joint(XLU_SURF, gfx_mario_l_fistL, 60, 0, 0),
	s_pull(),
	s_return(),
};

extern Gfx gfx_mario_l_fistR_e[];
extern Gfx gfx_mario_handR_e[];
extern Gfx gfx_mario_capR_e[];
extern Gfx gfx_mario_wingsR_e[];
extern Gfx gfx_mario_peaceR[];

static S_SCRIPT s_mario_lex_gloveR[] =
{
	s_select(0, s_player_select_glove),
	s_push(),
		s_joint(XLU_SURF, NULL, 60, 0, 0),
		s_push(),
			s_callback(0, s_player_scale),
			s_scale(1),
			s_push(),
				s_gfx(XLU_SURF, gfx_mario_l_fistR_e),
			s_pull(),
			s_hand(0, 0, 0, 0, s_player_hand),
		s_pull(),
		s_joint(XLU_SURF, gfx_mario_handR_e, 60, 0, 0),
		s_push(),
			s_hand(0, 0, 0, 0, s_player_hand),
		s_pull(),
		s_joint(XLU_SURF, gfx_mario_peaceR, 60, 0, 0),
		s_joint(XLU_SURF, gfx_mario_capR_e, 60, 0, 0),
		s_joint(XLU_SURF, gfx_mario_capR_e, 60, 0, 0),
		s_push(),
			s_gfx(TEX_EDGE, gfx_mario_wingsR_e),
		s_pull(),
	s_pull(),
	s_return(),
};

extern Gfx gfx_mario_l_waist_e[];
extern Gfx gfx_mario_l_uarmL[];
extern Gfx gfx_mario_l_larmL[];
extern Gfx gfx_mario_l_uarmR[];
extern Gfx gfx_mario_l_larmR[];
extern Gfx gfx_mario_l_thighL_e[];
extern Gfx gfx_mario_l_shinL[];
extern Gfx gfx_mario_l_shoeL[];
extern Gfx gfx_mario_l_thighR[];
extern Gfx gfx_mario_l_shinR[];
extern Gfx gfx_mario_l_shoeR_e[];
extern Gfx gfx_mario_l_torso_e[];

static S_SCRIPT s_mario_lex[] =
{
	s_joint(XLU_SURF, NULL, 0, 0, 0),
	s_push(),
		s_joint(XLU_SURF, gfx_mario_l_waist_e, 0, 0, 0),
		s_push(),
			s_callback(0, s_mario_pos_child),
			s_callback(0, s_player_ang_torso),
			s_ang(0, 0, 0),
			s_push(),
				s_joint(XLU_SURF, gfx_mario_l_torso_e, 68, 0, 0),
				s_push(),
					s_joint(XLU_SURF, NULL, 87, 0, 0),
					s_push(),
						s_call(s_mario_lex_head),
					s_pull(),
					s_joint(XLU_SURF, NULL, 67, -10, 79),
					s_push(),
						s_joint(XLU_SURF, gfx_mario_l_uarmL, 0, 0, 0),
						s_push(),
							s_joint(XLU_SURF, gfx_mario_l_larmL, 65, 0, 0),
							s_push(),
								s_call(s_mario_lex_gloveL),
							s_pull(),
						s_pull(),
					s_pull(),
					s_joint(XLU_SURF, NULL, 68, -10, -79),
					s_push(),
						s_joint(XLU_SURF, gfx_mario_l_uarmR, 0, 0, 0),
						s_push(),
							s_joint(XLU_SURF, gfx_mario_l_larmR, 65, 0, 0),
							s_push(),
								s_call(s_mario_lex_gloveR),
							s_pull(),
						s_pull(),
					s_pull(),
				s_pull(),
			s_pull(),
			s_joint(XLU_SURF, NULL, 13, -8, 42),
			s_push(),
				s_joint(XLU_SURF, gfx_mario_l_thighL_e, 0, 0, 0),
				s_push(),
					s_joint(XLU_SURF, gfx_mario_l_shinL, 89, 0, 0),
					s_push(),
						s_joint(XLU_SURF, gfx_mario_l_shoeL, 67, 0, 0),
					s_pull(),
				s_pull(),
			s_pull(),
			s_joint(XLU_SURF, NULL, 13, -8, -42),
			s_push(),
				s_joint(XLU_SURF, gfx_mario_l_thighR, 0, 0, 0),
				s_push(),
					s_joint(XLU_SURF, gfx_mario_l_shinR, 89, 0, 0),
					s_push(),
						s_joint(XLU_SURF, NULL, 67, 0, 0),
						s_push(),
							s_callback(2, s_player_scale),
							s_scale(1),
							s_push(),
								s_gfx(XLU_SURF, gfx_mario_l_shoeR_e),
							s_pull(),
						s_pull(),
					s_pull(),
				s_pull(),
			s_pull(),
		s_pull(),
	s_pull(),
	s_return(),
};

static S_SCRIPT s_mario_h[] =
{
	s_select(0, s_player_select_cap),
	s_push(),
		s_call(s_mario_hso),
		s_call(s_mario_hsx),
		s_call(s_mario_heo),
		s_call(s_mario_hex),
	s_pull(),
	s_return(),
};

static S_SCRIPT s_mario_m[] =
{
	s_select(0, s_player_select_cap),
	s_push(),
		s_call(s_mario_mso),
		s_call(s_mario_msx),
		s_call(s_mario_meo),
		s_call(s_mario_mex),
	s_pull(),
	s_return(),
};

static S_SCRIPT s_mario_l[] =
{
	s_select(0, s_player_select_cap),
	s_push(),
		s_call(s_mario_lso),
		s_call(s_mario_lsx),
		s_call(s_mario_leo),
		s_call(s_mario_lex),
	s_pull(),
	s_return(),
};

static S_SCRIPT s_mario_lod[] =
{
	s_empty(),
	s_push(),
		s_lod(-2048, 600),
		s_push(),
			s_call(s_mario_h),
		s_pull(),
		s_lod(600, 1600),
		s_push(),
			s_call(s_mario_m),
		s_pull(),
		s_lod(1600, 32767),
		s_push(),
			s_call(s_mario_l),
		s_pull(),
	s_pull(),
	s_return(),
};

S_SCRIPT s_mario[] =
{
	s_shadow(100, 180, 99),
	s_push(),
		s_scale(0.25),
		s_push(),
			s_callback(0, s_player_mirror),
			s_callback(0, s_player_alpha),
			s_select(0, s_player_select_lod),
			s_push(),
				s_call(s_mario_h),
				s_call(s_mario_lod),
			s_pull(),
			s_callback(1, s_player_mirror),
		s_pull(),
	s_pull(),
	s_exit(),
};
