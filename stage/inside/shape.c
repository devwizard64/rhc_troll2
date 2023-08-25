#include <sm64/s_script.h>

S_SCRIPT s_inside_208_209_213_214[] =
{
	s_cull(400),
	s_push(),
		s_gfx(OPA_SURF, 0x0703BFA8),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_inside_53[] =
{
	s_cull(600),
	s_push(),
		s_gfx(OPA_SURF, 0x0703BCB8),
	s_pull(),
	s_exit(),
};

static S_SCRIPT s_inside1_1[] =
{
	s_empty(),
	s_push(),
		s_gfx(OPA_SURF, 0x07028FD0),
		s_gfx(TEX_EDGE, 0x07029578),
		s_gfx(OPA_SURF, 0x0702A650),
		s_gfx(XLU_DECAL, 0x0702AA10),
		s_gfx(TEX_EDGE, 0x0702AB20),
		s_callback(0, s_obj_shape_802D2360),
	s_pull(),
	s_return(),
};

static S_SCRIPT s_inside1_2[] =
{
	s_empty(),
	s_push(),
		s_gfx(OPA_SURF, 0x0702E408),
	s_pull(),
	s_return(),
};

static S_SCRIPT s_inside1_3[] =
{
	s_empty(),
	s_push(),
		s_gfx(OPA_SURF, 0x0702FD30),
		s_gfx(OPA_SURF, 0x07023DB0),
	s_pull(),
	s_return(),
};

static S_SCRIPT s_inside1_4[] =
{
	s_empty(),
	s_push(),
		s_gfx(OPA_SURF, 0x07031588),
		s_gfx(TEX_EDGE, 0x07031720),
		s_gfx(TEX_EDGE, 0x07031830),
	s_pull(),
	s_return(),
};

static S_SCRIPT s_inside1_5[] =
{
	s_empty(),
	s_push(),
		s_gfx(OPA_SURF, 0x07032FC0),
		s_gfx(TEX_EDGE, 0x07033158),
		s_callback(0, s_wave_802D5D0C),
		s_callback(256, s_wave_802D5B98),
	s_pull(),
	s_return(),
};

static S_SCRIPT s_inside1_6[] =
{
	s_empty(),
	s_push(),
		s_gfx(OPA_SURF, 0x07034D88),
		s_gfx(TEX_EDGE, 0x07035178),
		s_gfx(TEX_EDGE, 0x07035288),
		s_callback(0, s_wave_802D5D0C),
		s_callback(258, s_wave_802D5B98),
	s_pull(),
	s_return(),
};

static S_SCRIPT s_inside1_7[] =
{
	s_empty(),
	s_push(),
		s_gfx(OPA_SURF, 0x07036D88),
		s_gfx(OPA_SURF, 0x07037988),
		s_gfx(OPA_SURF, 0x07037BF8),
		s_gfx(XLU_SURF, 0x07037DE8),
		s_gfx(XLU_SURF, 0x07038240),
		s_gfx(TEX_EDGE, 0x07038350),
		s_callback(0, s_wave_802D5D0C),
		s_callback(259, s_wave_802D5B98),
	s_pull(),
	s_return(),
};

static S_SCRIPT s_inside1_8[] =
{
	s_empty(),
	s_push(),
		s_gfx(OPA_SURF, 0x0703A6C8),
		s_gfx(TEX_EDGE, 0x0703A808),
		s_gfx(OPA_SURF, 0x070234C0),
		s_gfx(OPA_SURF, 0x07023520),
		s_callback(0, s_wave_802D5D0C),
		s_callback(257, s_wave_802D5B98),
	s_pull(),
	s_return(),
};

static S_SCRIPT s_inside1_9[] =
{
	s_empty(),
	s_push(),
		s_gfx(OPA_SURF, 0x07028FD0),
		s_gfx(TEX_EDGE, 0x07029578),
		s_gfx(OPA_SURF, 0x0702A650),
		s_gfx(XLU_DECAL, 0x0702AA10),
		s_gfx(TEX_EDGE, 0x0702AB20),
		s_callback(0, s_obj_shape_802D2360),
		s_gfx(OPA_SURF, 0x0703BA08),
	s_pull(),
	s_return(),
};

static S_SCRIPT s_inside1_10[] =
{
	s_empty(),
	s_push(),
		s_gfx(OPA_SURF, 0x07028FD0),
		s_gfx(TEX_EDGE, 0x07029578),
		s_gfx(OPA_SURF, 0x0702A650),
		s_gfx(XLU_DECAL, 0x0702AA10),
		s_gfx(TEX_EDGE, 0x0702AB20),
		s_callback(0, s_obj_shape_802D2360),
		s_gfx(OPA_SURF, 0x0702E408),
	s_pull(),
	s_return(),
};

static S_SCRIPT s_inside1_11[] =
{
	s_empty(),
	s_push(),
		s_gfx(OPA_SURF, 0x07028FD0),
		s_gfx(TEX_EDGE, 0x07029578),
		s_gfx(OPA_SURF, 0x0702A650),
		s_gfx(XLU_DECAL, 0x0702AA10),
		s_gfx(TEX_EDGE, 0x0702AB20),
		s_callback(0, s_obj_shape_802D2360),
		s_gfx(OPA_SURF, 0x0702FD30),
		s_gfx(OPA_SURF, 0x07023DB0),
	s_pull(),
	s_return(),
};

static S_SCRIPT s_inside1_12[] =
{
	s_empty(),
	s_push(),
		s_gfx(OPA_SURF, 0x07028FD0),
		s_gfx(TEX_EDGE, 0x07029578),
		s_gfx(OPA_SURF, 0x0702A650),
		s_gfx(XLU_DECAL, 0x0702AA10),
		s_gfx(TEX_EDGE, 0x0702AB20),
		s_callback(0, s_obj_shape_802D2360),
		s_gfx(OPA_SURF, 0x07031588),
		s_gfx(TEX_EDGE, 0x07031720),
		s_gfx(TEX_EDGE, 0x07031830),
	s_pull(),
	s_return(),
};

static S_SCRIPT s_inside1_13[] =
{
	s_empty(),
	s_push(),
		s_gfx(OPA_SURF, 0x07028FD0),
		s_gfx(TEX_EDGE, 0x07029578),
		s_gfx(OPA_SURF, 0x0702A650),
		s_gfx(XLU_DECAL, 0x0702AA10),
		s_gfx(TEX_EDGE, 0x0702AB20),
		s_callback(0, s_obj_shape_802D2360),
		s_gfx(OPA_SURF, 0x07032FC0),
		s_gfx(TEX_EDGE, 0x07033158),
		s_callback(0, s_wave_802D5D0C),
		s_callback(256, s_wave_802D5B98),
	s_pull(),
	s_return(),
};

static S_SCRIPT s_inside1_14[] =
{
	s_empty(),
	s_push(),
		s_gfx(OPA_SURF, 0x07028FD0),
		s_gfx(TEX_EDGE, 0x07029578),
		s_gfx(OPA_SURF, 0x0702A650),
		s_gfx(XLU_DECAL, 0x0702AA10),
		s_gfx(TEX_EDGE, 0x0702AB20),
		s_callback(0, s_obj_shape_802D2360),
		s_gfx(OPA_SURF, 0x07034D88),
		s_gfx(TEX_EDGE, 0x07035178),
		s_gfx(TEX_EDGE, 0x07035288),
		s_callback(0, s_wave_802D5D0C),
		s_callback(258, s_wave_802D5B98),
	s_pull(),
	s_return(),
};

static S_SCRIPT s_inside1_15[] =
{
	s_empty(),
	s_push(),
		s_gfx(OPA_SURF, 0x07028FD0),
		s_gfx(TEX_EDGE, 0x07029578),
		s_gfx(OPA_SURF, 0x0702A650),
		s_gfx(XLU_DECAL, 0x0702AA10),
		s_gfx(TEX_EDGE, 0x0702AB20),
		s_callback(0, s_obj_shape_802D2360),
		s_gfx(OPA_SURF, 0x07036D88),
		s_gfx(OPA_SURF, 0x07037988),
		s_gfx(OPA_SURF, 0x07037BF8),
		s_gfx(XLU_SURF, 0x07037DE8),
		s_gfx(XLU_SURF, 0x07038240),
		s_gfx(TEX_EDGE, 0x07038350),
		s_callback(0, s_wave_802D5D0C),
		s_callback(259, s_wave_802D5B98),
	s_pull(),
	s_return(),
};

static S_SCRIPT s_inside1_16[] =
{
	s_empty(),
	s_push(),
		s_gfx(OPA_SURF, 0x07028FD0),
		s_gfx(TEX_EDGE, 0x07029578),
		s_gfx(OPA_SURF, 0x0702A650),
		s_gfx(XLU_DECAL, 0x0702AA10),
		s_gfx(TEX_EDGE, 0x0702AB20),
		s_callback(0, s_obj_shape_802D2360),
		s_gfx(OPA_SURF, 0x0703A6C8),
		s_gfx(TEX_EDGE, 0x0703A808),
		s_gfx(OPA_SURF, 0x070234C0),
		s_gfx(OPA_SURF, 0x07023520),
		s_callback(0, s_wave_802D5D0C),
		s_callback(257, s_wave_802D5B98),
	s_pull(),
	s_return(),
};

static S_SCRIPT s_inside1_17[] =
{
	s_empty(),
	s_push(),
		s_gfx(OPA_SURF, 0x07028FD0),
		s_gfx(TEX_EDGE, 0x07029578),
		s_gfx(OPA_SURF, 0x0702A650),
		s_gfx(XLU_DECAL, 0x0702AA10),
		s_gfx(TEX_EDGE, 0x0702AB20),
		s_callback(0, s_obj_shape_802D2360),
		s_gfx(OPA_SURF, 0x0703BA08),
	s_pull(),
	s_return(),
};

S_SCRIPT s_inside1[] =
{
	s_scene(160, 120, 160, 120, 10),
	s_push(),
		s_layer(FALSE),
		s_push(),
			s_ortho(100),
			s_push(),
				s_background(GPACK_RGBA5551(0x00, 0x00, 0x00, 1), NULL),
			s_pull(),
		s_pull(),
		s_layer(TRUE),
		s_push(),
			s_perspective(64, 50, 7000, s_stage_perspective),
			s_push(),
				s_camera(13, 0, 2000, 6000, 0, 0, 0, s_stage_camera),
				s_push(),
					s_select(17, s_obj_lib_8029DBD4),
					s_push(),
						s_call(s_inside1_1),
						s_call(s_inside1_2),
						s_call(s_inside1_3),
						s_call(s_inside1_4),
						s_call(s_inside1_5),
						s_call(s_inside1_6),
						s_call(s_inside1_7),
						s_call(s_inside1_8),
						s_call(s_inside1_9),
						s_call(s_inside1_10),
						s_call(s_inside1_11),
						s_call(s_inside1_12),
						s_call(s_inside1_13),
						s_call(s_inside1_14),
						s_call(s_inside1_15),
						s_call(s_inside1_16),
						s_call(s_inside1_17),
					s_pull(),
					s_object(),
					s_callback(0, s_stage_weather),
				s_pull(),
			s_pull(),
		s_pull(),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_inside_57[] =
{
	s_cull(600),
	s_push(),
		s_gfx(OPA_SURF, 0x070512F8),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_inside_55[] =
{
	s_cull(300),
	s_push(),
		s_gfx(OPA_SURF, 0x07058950),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_inside_56[] =
{
	s_cull(300),
	s_push(),
		s_gfx(OPA_SURF, 0x07059190),
	s_pull(),
	s_exit(),
};

static S_SCRIPT s_inside2_1[] =
{
	s_empty(),
	s_push(),
		s_gfx(OPA_SURF, 0x0703E6F0),
	s_pull(),
	s_return(),
};

static S_SCRIPT s_inside2_2[] =
{
	s_empty(),
	s_push(),
		s_gfx(OPA_SURF, 0x07043028),
		s_gfx(OPA_SURF, 0x07043B48),
		s_gfx(TEX_EDGE, 0x07043CD8),
		s_callback(0, s_wave_802D5D0C),
		s_callback(264, s_wave_802D5B98),
		s_callback(266, s_wave_802D5B98),
	s_pull(),
	s_return(),
};

static S_SCRIPT s_inside2_3[] =
{
	s_empty(),
	s_push(),
		s_gfx(OPA_SURF, 0x0704A0E8),
		s_gfx(XLU_SURF, 0x0704A2E0),
		s_gfx(OPA_SURF, 0x0704AA98),
		s_callback(0, s_wave_802D5D0C),
		s_callback(268, s_wave_802D5B98),
		s_callback(0, s_inside_mirror),
	s_pull(),
	s_return(),
};

static S_SCRIPT s_inside2_4[] =
{
	s_empty(),
	s_push(),
		s_gfx(OPA_SURF, 0x0704C7D8),
		s_callback(0, s_wave_802D5D0C),
		s_callback(265, s_wave_802D5B98),
		s_callback(269, s_wave_802D5B98),
	s_pull(),
	s_return(),
};

static S_SCRIPT s_inside2_5[] =
{
	s_empty(),
	s_push(),
		s_gfx(OPA_SURF, 0x07050938),
		s_gfx(TEX_EDGE, 0x07051678),
		s_gfx(XLU_SURF, 0x070519C8),
		s_gfx(XLU_SURF, 0x07051B60),
		s_callback(0, s_wave_802D5D0C),
		s_callback(267, s_wave_802D5B98),
	s_pull(),
	s_return(),
};

static S_SCRIPT s_inside2_6[] =
{
	s_empty(),
	s_push(),
		s_gfx(OPA_SURF, 0x070558D0),
		s_gfx(OPA_SURF, 0x070572A0),
		s_gfx(OPA_SURF, 0x07057F00),
	s_pull(),
	s_return(),
};

static S_SCRIPT s_inside2_7[] =
{
	s_empty(),
	s_push(),
		s_gfx(OPA_SURF, 0x0703E6F0),
		s_gfx(OPA_SURF, 0x07043028),
		s_gfx(OPA_SURF, 0x07043B48),
		s_gfx(TEX_EDGE, 0x07043CD8),
		s_callback(0, s_wave_802D5D0C),
		s_callback(264, s_wave_802D5B98),
		s_callback(266, s_wave_802D5B98),
	s_pull(),
	s_return(),
};

static S_SCRIPT s_inside2_8[] =
{
	s_empty(),
	s_push(),
		s_gfx(OPA_SURF, 0x07043028),
		s_gfx(OPA_SURF, 0x07043B48),
		s_gfx(TEX_EDGE, 0x07043CD8),
		s_gfx(OPA_SURF, 0x0704A0E8),
		s_gfx(XLU_SURF, 0x0704A2E0),
		s_gfx(OPA_SURF, 0x0704AA98),
		s_callback(0, s_wave_802D5D0C),
		s_callback(264, s_wave_802D5B98),
		s_callback(266, s_wave_802D5B98),
		s_callback(268, s_wave_802D5B98),
		s_callback(0, s_inside_mirror),
	s_pull(),
	s_return(),
};

static S_SCRIPT s_inside2_9[] =
{
	s_empty(),
	s_push(),
		s_gfx(OPA_SURF, 0x07043028),
		s_gfx(OPA_SURF, 0x07043B48),
		s_gfx(TEX_EDGE, 0x07043CD8),
		s_gfx(OPA_SURF, 0x0704C7D8),
		s_callback(0, s_wave_802D5D0C),
		s_callback(264, s_wave_802D5B98),
		s_callback(265, s_wave_802D5B98),
		s_callback(266, s_wave_802D5B98),
		s_callback(269, s_wave_802D5B98),
	s_pull(),
	s_return(),
};

static S_SCRIPT s_inside2_10[] =
{
	s_empty(),
	s_push(),
		s_gfx(OPA_SURF, 0x07043028),
		s_gfx(OPA_SURF, 0x07043B48),
		s_gfx(TEX_EDGE, 0x07043CD8),
		s_gfx(OPA_SURF, 0x07050938),
		s_gfx(TEX_EDGE, 0x07051678),
		s_gfx(XLU_SURF, 0x070519C8),
		s_gfx(XLU_SURF, 0x07051B60),
		s_callback(0, s_wave_802D5D0C),
		s_callback(264, s_wave_802D5B98),
		s_callback(266, s_wave_802D5B98),
		s_callback(267, s_wave_802D5B98),
	s_pull(),
	s_return(),
};

static S_SCRIPT s_inside2_11[] =
{
	s_empty(),
	s_push(),
		s_gfx(OPA_SURF, 0x07050938),
		s_gfx(TEX_EDGE, 0x07051678),
		s_gfx(XLU_SURF, 0x070519C8),
		s_gfx(XLU_SURF, 0x07051B60),
		s_gfx(OPA_SURF, 0x070558D0),
		s_gfx(OPA_SURF, 0x070572A0),
		s_gfx(OPA_SURF, 0x07057F00),
		s_callback(0, s_wave_802D5D0C),
		s_callback(267, s_wave_802D5B98),
	s_pull(),
	s_return(),
};

S_SCRIPT s_inside2[] =
{
	s_scene(160, 120, 160, 120, 10),
	s_push(),
		s_layer(FALSE),
		s_push(),
			s_ortho(100),
			s_push(),
				s_background(GPACK_RGBA5551(0x00, 0x00, 0x00, 1), NULL),
			s_pull(),
		s_pull(),
		s_layer(TRUE),
		s_push(),
			s_perspective(64, 50, 8000, s_stage_perspective),
			s_push(),
				s_camera(4, 0, 2000, 6000, 0, 0, 0, s_stage_camera),
				s_push(),
					s_select(11, s_obj_lib_8029DBD4),
					s_push(),
						s_call(s_inside2_1),
						s_call(s_inside2_2),
						s_call(s_inside2_3),
						s_call(s_inside2_4),
						s_call(s_inside2_5),
						s_call(s_inside2_6),
						s_call(s_inside2_7),
						s_call(s_inside2_8),
						s_call(s_inside2_9),
						s_call(s_inside2_10),
						s_call(s_inside2_11),
					s_pull(),
					s_object(),
					s_callback(0, s_stage_weather),
				s_pull(),
			s_pull(),
		s_pull(),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_inside_54[] =
{
	s_cull(550),
	s_push(),
		s_gfx(OPA_SURF, 0x07068B10),
	s_pull(),
	s_exit(),
};

static S_SCRIPT s_inside3_1[] =
{
	s_empty(),
	s_push(),
		s_gfx(OPA_SURF, 0x0705E088),
		s_gfx(TEX_EDGE, 0x0705E2A0),
		s_gfx(XLU_SURF, 0x0705E450),
	s_pull(),
	s_return(),
};

static S_SCRIPT s_inside3_2[] =
{
	s_empty(),
	s_push(),
		s_gfx(OPA_SURF, 0x070616E8),
		s_gfx(XLU_SURF, 0x07061C20),
		s_callback(0, s_wave_802D5D0C),
		s_callback(260, s_wave_802D5B98),
		s_callback(261, s_wave_802D5B98),
		s_callback(0, s_scroll_802D01E0),
		s_callback(1536, s_scroll_802D104C),
	s_pull(),
	s_return(),
};

static S_SCRIPT s_inside3_3[] =
{
	s_empty(),
	s_push(),
		s_gfx(OPA_SURF, 0x07064B78),
		s_gfx(TEX_EDGE, 0x07064D58),
		s_callback(0, s_wave_802D5D0C),
		s_callback(262, s_wave_802D5B98),
	s_pull(),
	s_return(),
};

static S_SCRIPT s_inside3_4[] =
{
	s_empty(),
	s_push(),
		s_gfx(OPA_SURF, 0x07066CE0),
		s_gfx(XLU_SURF, 0x07066E90),
		s_gfx(TEX_EDGE, 0x07066FA0),
		s_callback(0, s_scroll_802D01E0),
		s_callback(1554, s_scroll_802D104C),
	s_pull(),
	s_return(),
};

static S_SCRIPT s_inside3_5[] =
{
	s_empty(),
	s_push(),
		s_gfx(OPA_SURF, 0x07068850),
		s_callback(0, s_wave_802D5D0C),
		s_callback(263, s_wave_802D5B98),
	s_pull(),
	s_return(),
};

static S_SCRIPT s_inside3_6[] =
{
	s_empty(),
	s_push(),
		s_gfx(OPA_SURF, 0x0705E088),
		s_gfx(TEX_EDGE, 0x0705E2A0),
		s_gfx(XLU_SURF, 0x0705E450),
		s_gfx(OPA_SURF, 0x070616E8),
		s_gfx(XLU_SURF, 0x07061C20),
		s_callback(0, s_wave_802D5D0C),
		s_callback(260, s_wave_802D5B98),
		s_callback(261, s_wave_802D5B98),
		s_callback(0, s_scroll_802D01E0),
		s_callback(1536, s_scroll_802D104C),
	s_pull(),
	s_return(),
};

static S_SCRIPT s_inside3_7[] =
{
	s_empty(),
	s_push(),
		s_gfx(OPA_SURF, 0x0705E088),
		s_gfx(TEX_EDGE, 0x0705E2A0),
		s_gfx(XLU_SURF, 0x0705E450),
		s_gfx(OPA_SURF, 0x07068850),
		s_callback(0, s_wave_802D5D0C),
		s_callback(263, s_wave_802D5B98),
	s_pull(),
	s_return(),
};

static S_SCRIPT s_inside3_8[] =
{
	s_empty(),
	s_push(),
		s_gfx(OPA_SURF, 0x0705E088),
		s_gfx(TEX_EDGE, 0x0705E2A0),
		s_gfx(XLU_SURF, 0x0705E450),
		s_gfx(OPA_SURF, 0x07066CE0),
		s_gfx(XLU_SURF, 0x07066E90),
		s_gfx(TEX_EDGE, 0x07066FA0),
		s_callback(0, s_scroll_802D01E0),
		s_callback(1554, s_scroll_802D104C),
	s_pull(),
	s_return(),
};

static S_SCRIPT s_inside3_9[] =
{
	s_empty(),
	s_push(),
		s_gfx(OPA_SURF, 0x070616E8),
		s_gfx(XLU_SURF, 0x07061C20),
		s_gfx(OPA_SURF, 0x07066CE0),
		s_gfx(XLU_SURF, 0x07066E90),
		s_gfx(TEX_EDGE, 0x07066FA0),
		s_callback(0, s_wave_802D5D0C),
		s_callback(260, s_wave_802D5B98),
		s_callback(261, s_wave_802D5B98),
		s_callback(0, s_scroll_802D01E0),
		s_callback(1536, s_scroll_802D104C),
		s_callback(1554, s_scroll_802D104C),
	s_pull(),
	s_return(),
};

static S_SCRIPT s_inside3_10[] =
{
	s_empty(),
	s_push(),
		s_gfx(OPA_SURF, 0x070616E8),
		s_gfx(XLU_SURF, 0x07061C20),
		s_gfx(OPA_SURF, 0x07064B78),
		s_gfx(TEX_EDGE, 0x07064D58),
		s_callback(0, s_wave_802D5D0C),
		s_callback(260, s_wave_802D5B98),
		s_callback(261, s_wave_802D5B98),
		s_callback(262, s_wave_802D5B98),
		s_callback(0, s_scroll_802D01E0),
		s_callback(1536, s_scroll_802D104C),
	s_pull(),
	s_return(),
};

S_SCRIPT s_inside3[] =
{
	s_scene(160, 120, 160, 120, 10),
	s_push(),
		s_layer(FALSE),
		s_push(),
			s_ortho(100),
			s_push(),
				s_background(GPACK_RGBA5551(0x00, 0x00, 0x00, 1), NULL),
			s_pull(),
		s_pull(),
		s_layer(TRUE),
		s_push(),
			s_perspective(64, 50, 6400, s_stage_perspective),
			s_push(),
				s_camera(4, 0, 2000, 6000, 0, 0, 0, s_stage_camera),
				s_push(),
					s_select(10, s_obj_lib_8029DBD4),
					s_push(),
						s_call(s_inside3_1),
						s_call(s_inside3_2),
						s_call(s_inside3_3),
						s_call(s_inside3_4),
						s_call(s_inside3_5),
						s_call(s_inside3_6),
						s_call(s_inside3_7),
						s_call(s_inside3_8),
						s_call(s_inside3_9),
						s_call(s_inside3_10),
					s_pull(),
					s_object(),
					s_callback(0, s_stage_weather),
				s_pull(),
			s_pull(),
		s_pull(),
	s_pull(),
	s_exit(),
};
