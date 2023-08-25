extern Gfx gfx_door_a_h[];
extern Gfx gfx_door_a_l[];

S_SCRIPT s_door_a[] =
{
	s_pos(78, 0, 0),
	s_push(),
		s_scale(0.25),
		s_push(),
			s_joint(OPA_SURF, NULL, -300, 0, 0),
			s_push(),
				s_push(),
					s_lod(-2048, 3500),
					s_push(),
						s_joint(OPA_SURF, gfx_door_a_h, 0, 0, 0),
					s_pull(),
					s_lod(3500, 32767),
					s_push(),
						s_joint(OPA_SURF, gfx_door_a_l, 0, 0, 0),
					s_pull(),
				s_pull(),
				s_joint(OPA_SURF, NULL, 0, 0, 0),
				s_joint(OPA_SURF, NULL, 0, 0, 0),
			s_pull(),
		s_pull(),
	s_pull(),
	s_pull(),
	s_exit(),
};

extern Gfx gfx_door_a_h_x[];
extern Gfx gfx_door_a_l_x[];

S_SCRIPT s_door_a_noback[] =
{
	s_pos(78, 0, 0),
	s_push(),
		s_scale(0.25),
		s_push(),
			s_joint(OPA_SURF, NULL, -300, 0, 0),
			s_push(),
				s_push(),
					s_lod(-2048, 3500),
					s_push(),
						s_joint(OPA_SURF, gfx_door_a_h_x, 0, 0, 0),
					s_pull(),
					s_lod(3500, 32767),
					s_push(),
						s_joint(OPA_SURF, gfx_door_a_l_x, 0, 0, 0),
					s_pull(),
				s_pull(),
				s_joint(OPA_SURF, NULL, 0, 0, 0),
				s_joint(OPA_SURF, NULL, 0, 0, 0),
			s_pull(),
		s_pull(),
	s_pull(),
	s_pull(),
	s_exit(),
};

extern Gfx gfx_door_b_h[];
extern Gfx gfx_door_b_l[];

S_SCRIPT s_door_b[] =
{
	s_pos(78, 0, 0),
	s_push(),
		s_scale(0.25),
		s_push(),
			s_joint(OPA_SURF, NULL, -300, 0, 0),
			s_push(),
				s_push(),
					s_lod(-2048, 3500),
					s_push(),
						s_joint(OPA_SURF, gfx_door_b_h, 0, 0, 0),
					s_pull(),
					s_lod(3500, 32767),
					s_push(),
						s_joint(OPA_SURF, gfx_door_b_l, 0, 0, 0),
					s_pull(),
				s_pull(),
				s_joint(OPA_SURF, NULL, 0, 0, 0),
				s_joint(OPA_SURF, NULL, 0, 0, 0),
			s_pull(),
		s_pull(),
	s_pull(),
	s_pull(),
	s_exit(),
};

extern Gfx gfx_door_c_h[];
extern Gfx gfx_door_c_l[];

S_SCRIPT s_door_c[] =
{
	s_pos(78, 0, 0),
	s_push(),
		s_scale(0.25),
		s_push(),
			s_joint(OPA_SURF, NULL, -300, 0, 0),
			s_push(),
				s_push(),
					s_lod(-2048, 3500),
					s_push(),
						s_joint(OPA_SURF, gfx_door_c_h, 0, 0, 0),
					s_pull(),
					s_lod(3500, 32767),
					s_push(),
						s_joint(OPA_SURF, gfx_door_c_l, 0, 0, 0),
					s_pull(),
				s_pull(),
				s_joint(OPA_SURF, NULL, 0, 0, 0),
				s_joint(OPA_SURF, NULL, 0, 0, 0),
			s_pull(),
		s_pull(),
	s_pull(),
	s_pull(),
	s_exit(),
};

extern Gfx gfx_door_d_h[];
extern Gfx gfx_door_d_l[];

S_SCRIPT s_door_d[] =
{
	s_pos(78, 0, 0),
	s_push(),
		s_scale(0.25),
		s_push(),
			s_joint(OPA_SURF, NULL, -300, 0, 0),
			s_push(),
				s_push(),
					s_lod(-2048, 3500),
					s_push(),
						s_joint(OPA_SURF, gfx_door_d_h, 0, 0, 0),
					s_pull(),
					s_lod(3500, 32767),
					s_push(),
						s_joint(OPA_SURF, gfx_door_d_l, 0, 0, 0),
					s_pull(),
				s_pull(),
				s_joint(OPA_SURF, NULL, 0, 0, 0),
				s_joint(OPA_SURF, NULL, 0, 0, 0),
			s_pull(),
		s_pull(),
	s_pull(),
	s_pull(),
	s_exit(),
};

extern Gfx gfx_door_e_h[];
extern Gfx gfx_door_e_l[];

S_SCRIPT s_door_e[] =
{
	s_pos(78, 0, 0),
	s_push(),
		s_scale(0.25),
		s_push(),
			s_joint(OPA_SURF, NULL, -300, 0, 0),
			s_push(),
				s_push(),
					s_lod(-2048, 3500),
					s_push(),
						s_joint(OPA_SURF, gfx_door_e_h, 0, 0, 0),
					s_pull(),
					s_lod(3500, 32767),
					s_push(),
						s_joint(OPA_SURF, gfx_door_e_l, 0, 0, 0),
					s_pull(),
				s_pull(),
				s_joint(OPA_SURF, NULL, 0, 0, 0),
				s_joint(OPA_SURF, NULL, 0, 0, 0),
			s_pull(),
		s_pull(),
	s_pull(),
	s_pull(),
	s_exit(),
};

extern Gfx gfx_door_f_h[];
extern Gfx gfx_door_f_l[];

S_SCRIPT s_door_f[] =
{
	s_pos(78, 0, 0),
	s_push(),
		s_scale(0.25),
		s_push(),
			s_joint(OPA_SURF, NULL, -300, 0, 0),
			s_push(),
				s_push(),
					s_lod(-2048, 3500),
					s_push(),
						s_joint(OPA_SURF, gfx_door_f_h, 0, 0, 0),
					s_pull(),
					s_lod(3500, 32767),
					s_push(),
						s_joint(OPA_SURF, gfx_door_f_l, 0, 0, 0),
					s_pull(),
				s_pull(),
				s_joint(OPA_SURF, NULL, 0, 0, 0),
				s_joint(OPA_SURF, NULL, 0, 0, 0),
			s_pull(),
		s_pull(),
	s_pull(),
	s_pull(),
	s_exit(),
};

extern Gfx gfx_door_a_h[];
extern Gfx gfx_door_star_h[];
extern Gfx gfx_door_star_l[];

S_SCRIPT s_stardoor[] =
{
	s_pos(78, 0, 0),
	s_push(),
		s_scale(0.25),
		s_push(),
			s_joint(OPA_SURF, NULL, -300, 0, 0),
			s_push(),
				s_push(),
					s_lod(-2048, 1000),
					s_push(),
						s_joint(OPA_SURF, gfx_door_a_h, 0, 0, 0),
						s_push(),
							s_gfx(XLU_SURF, gfx_door_star_h),
						s_pull(),
					s_pull(),
					s_lod(1000, 32767),
					s_push(),
						s_joint(OPA_SURF, gfx_door_a_h, 0, 0, 0),
						s_push(),
							s_gfx(XLU_DECAL, gfx_door_star_l),
						s_pull(),
					s_pull(),
				s_pull(),
				s_joint(OPA_SURF, NULL, 0, 0, 0),
				s_joint(OPA_SURF, NULL, 0, 0, 0),
			s_pull(),
		s_pull(),
	s_pull(),
	s_pull(),
	s_exit(),
};

extern Gfx gfx_door_a_h[];
extern Gfx gfx_door_star1_h[];
extern Gfx gfx_door_star1_l[];

S_SCRIPT s_stardoor1[] =
{
	s_pos(78, 0, 0),
	s_push(),
		s_scale(0.25),
		s_push(),
			s_joint(OPA_SURF, NULL, -300, 0, 0),
			s_push(),
				s_push(),
					s_lod(-2048, 1000),
					s_push(),
						s_joint(OPA_SURF, gfx_door_a_h, 0, 0, 0),
						s_push(),
							s_gfx(XLU_SURF, gfx_door_star1_h),
						s_pull(),
					s_pull(),
					s_lod(1000, 32767),
					s_push(),
						s_joint(OPA_SURF, gfx_door_a_h, 0, 0, 0),
						s_push(),
							s_gfx(XLU_DECAL, gfx_door_star1_l),
						s_pull(),
					s_pull(),
				s_pull(),
				s_joint(OPA_SURF, NULL, 0, 0, 0),
				s_joint(OPA_SURF, NULL, 0, 0, 0),
			s_pull(),
		s_pull(),
	s_pull(),
	s_pull(),
	s_exit(),
};

extern Gfx gfx_door_a_h[];
extern Gfx gfx_door_star2_h[];
extern Gfx gfx_door_star2_l[];

S_SCRIPT s_stardoor2[] =
{
	s_pos(78, 0, 0),
	s_push(),
		s_scale(0.25),
		s_push(),
			s_joint(OPA_SURF, NULL, -300, 0, 0),
			s_push(),
				s_push(),
					s_lod(-2048, 1000),
					s_push(),
						s_joint(OPA_SURF, gfx_door_a_h, 0, 0, 0),
						s_push(),
							s_gfx(XLU_SURF, gfx_door_star2_h),
						s_pull(),
					s_pull(),
					s_lod(1000, 32767),
					s_push(),
						s_joint(OPA_SURF, gfx_door_a_h, 0, 0, 0),
						s_push(),
							s_gfx(XLU_DECAL, gfx_door_star2_l),
						s_pull(),
					s_pull(),
				s_pull(),
				s_joint(OPA_SURF, NULL, 0, 0, 0),
				s_joint(OPA_SURF, NULL, 0, 0, 0),
			s_pull(),
		s_pull(),
	s_pull(),
	s_pull(),
	s_exit(),
};

extern Gfx gfx_door_a_h[];
extern Gfx gfx_door_star3_h[];
extern Gfx gfx_door_star3_l[];

S_SCRIPT s_stardoor3[] =
{
	s_pos(78, 0, 0),
	s_push(),
		s_scale(0.25),
		s_push(),
			s_joint(OPA_SURF, NULL, -300, 0, 0),
			s_push(),
				s_push(),
					s_lod(-2048, 1000),
					s_push(),
						s_joint(OPA_SURF, gfx_door_a_h, 0, 0, 0),
						s_push(),
							s_gfx(XLU_SURF, gfx_door_star3_h),
						s_pull(),
					s_pull(),
					s_lod(1000, 32767),
					s_push(),
						s_joint(OPA_SURF, gfx_door_a_h, 0, 0, 0),
						s_push(),
							s_gfx(XLU_DECAL, gfx_door_star3_l),
						s_pull(),
					s_pull(),
				s_pull(),
				s_joint(OPA_SURF, NULL, 0, 0, 0),
				s_joint(OPA_SURF, NULL, 0, 0, 0),
			s_pull(),
		s_pull(),
	s_pull(),
	s_pull(),
	s_exit(),
};

extern Gfx gfx_door_a_h[];
extern Gfx gfx_door_keyhole_h[];
extern Gfx gfx_door_keyhole_l[];

S_SCRIPT s_keydoor[] =
{
	s_pos(78, 0, 0),
	s_push(),
		s_scale(0.25),
		s_push(),
			s_joint(OPA_SURF, NULL, -300, 0, 0),
			s_push(),
				s_push(),
					s_lod(-2048, 1000),
					s_push(),
						s_joint(OPA_SURF, gfx_door_a_h, 0, 0, 0),
						s_push(),
							s_gfx(OPA_SURF, gfx_door_keyhole_l),
						s_pull(),
					s_pull(),
					s_lod(1000, 32767),
					s_push(),
						s_joint(OPA_SURF, gfx_door_a_h, 0, 0, 0),
						s_push(),
							s_gfx(OPA_DECAL, gfx_door_keyhole_h),
						s_pull(),
					s_pull(),
				s_pull(),
				s_joint(OPA_SURF, NULL, 0, 0, 0),
				s_joint(OPA_SURF, NULL, 0, 0, 0),
			s_pull(),
		s_pull(),
	s_pull(),
	s_pull(),
	s_exit(),
};
