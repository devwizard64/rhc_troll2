extern Gfx gfx_debug_super_s[];
extern Gfx gfx_debug_super_u[];
extern Gfx gfx_debug_super_p[];
extern Gfx gfx_debug_super_e[];
extern Gfx gfx_debug_super_r[];
extern Gfx gfx_debug_mario_m[];
extern Gfx gfx_debug_mario_a[];
extern Gfx gfx_debug_mario_r[];
extern Gfx gfx_debug_mario_i[];
extern Gfx gfx_debug_mario_o[];

S_SCRIPT s_debug[] =
{
	s_scene(160, 120, 160, 120, 0),
	s_push(),
		s_layer(FALSE),
		s_push(),
			s_ortho(100),
			s_push(),
				s_callback(0, s_title_bg),
			s_pull(),
		s_pull(),
		s_layer(TRUE),
		s_push(),
			s_persp(45, 128, 16384),
			s_push(),
				s_camera(0, 0, 0, 1200, 0, 0, 0, NULL),
				s_push(),
					s_gfx_pos(OPA_SURF, gfx_debug_super_s, -230, 300, 0),
					s_gfx_pos(OPA_SURF, gfx_debug_super_u, -120, 300, 0),
					s_gfx_pos(OPA_SURF, gfx_debug_super_p, -20, 300, 0),
					s_gfx_pos(OPA_SURF, gfx_debug_super_e, 100, 300, 0),
					s_gfx_pos(OPA_SURF, gfx_debug_super_r, 250, 300, 0),
					s_gfx_pos(OPA_SURF, gfx_debug_mario_m, -310, 100, 0),
					s_gfx_pos(OPA_SURF, gfx_debug_mario_a, -90, 100, 0),
					s_gfx_pos(OPA_SURF, gfx_debug_mario_r, 60, 100, 0),
					s_gfx_pos(OPA_SURF, gfx_debug_mario_i, 180, 100, 0),
					s_gfx_pos(OPA_SURF, gfx_debug_mario_o, 300, 100, 0),
				s_pull(),
			s_pull(),
		s_pull(),
	s_pull(),
	s_exit(),
};
