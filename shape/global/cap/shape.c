extern Gfx gfx_cap_s[];

S_SCRIPT s_cap_s[] =
{
	s_shadow(75, 180, 0),
	s_push(),
		s_scale(0.25),
		s_push(),
			s_callback(10, s_obj_lib_8029D924),
			s_select(2, s_obj_lib_8029DB48),
			s_push(),
				s_gfx(OPA_SURF, gfx_cap_s),
				s_gfx(XLU_SURF, gfx_cap_s),
			s_pull(),
		s_pull(),
	s_pull(),
	s_exit(),
};

extern Gfx gfx_cap_e[];

S_SCRIPT s_cap_e[] =
{
	s_shadow(75, 180, 0),
	s_push(),
		s_scale(0.25),
		s_push(),
			s_callback(10, s_obj_lib_8029D924),
			s_select(2, s_obj_lib_8029DB48),
			s_push(),
				s_gfx(OPA_SURF, gfx_cap_e),
				s_gfx(XLU_SURF, gfx_cap_e),
			s_pull(),
		s_pull(),
	s_pull(),
	s_exit(),
};

extern Gfx gfx_cap_s[];
extern Gfx gfx_cap_wings_s[];
extern Gfx gfx_wingcap_s[];

S_SCRIPT s_wingcap_s[] =
{
	s_shadow(75, 180, 0),
	s_push(),
		s_scale(0.25),
		s_push(),
			s_callback(10, s_obj_lib_8029D924),
			s_select(2, s_obj_lib_8029DB48),
			s_push(),
				s_empty(),
				s_push(),
					s_gfx(OPA_SURF, gfx_cap_s),
					s_gfx(TEX_EDGE, gfx_cap_wings_s),
				s_pull(),
				s_empty(),
				s_push(),
					s_gfx(XLU_SURF, gfx_wingcap_s),
				s_pull(),
			s_pull(),
		s_pull(),
	s_pull(),
	s_exit(),
};

extern Gfx gfx_cap_e[];
extern Gfx gfx_cap_wings_e[];
extern Gfx gfx_wingcap_e[];

S_SCRIPT s_wingcap_e[] =
{
	s_shadow(75, 180, 0),
	s_push(),
		s_scale(0.25),
		s_push(),
			s_callback(10, s_obj_lib_8029D924),
			s_select(2, s_obj_lib_8029DB48),
			s_push(),
				s_empty(),
				s_push(),
					s_gfx(OPA_SURF, gfx_cap_e),
					s_gfx(TEX_EDGE, gfx_cap_wings_e),
				s_pull(),
				s_empty(),
				s_push(),
					s_gfx(XLU_SURF, gfx_wingcap_e),
				s_pull(),
			s_pull(),
		s_pull(),
	s_pull(),
	s_exit(),
};
