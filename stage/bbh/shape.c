#include <sm64/s_script.h>

S_SCRIPT s_bbh_53[] =
{
	s_cull(700),
	s_push(),
		s_gfx(OPA_SURF, 0x0701F2E8),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_bbh_54[] =
{
	s_cull(600),
	s_push(),
		s_gfx(OPA_SURF, 0x0701F5F8),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_bbh_55[] =
{
	s_cull(650),
	s_push(),
		s_gfx(OPA_SURF, 0x0701F7E8),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_bbh_56[] =
{
	s_cull(300),
	s_push(),
		s_gfx(OPA_SURF, 0x0701FAB0),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_bbh_57[] =
{
	s_cull(1000),
	s_push(),
		s_gfx(OPA_SURF, 0x0701FD28),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_bbh_58[] =
{
	s_cull(600),
	s_push(),
		s_gfx(TEX_EDGE, 0x0701FFE8),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_bbh_59[] =
{
	s_cull(2300),
	s_push(),
		s_gfx(OPA_SURF, 0x070202F0),
	s_pull(),
	s_exit(),
};

S_SCRIPT s_bbh_60[] =
{
	s_cull(800),
	s_push(),
		s_gfx(OPA_SURF, 0x070206F0),
	s_pull(),
	s_exit(),
};

static S_SCRIPT s_bbh1_1[] =
{
	s_empty(),
	s_push(),
		s_gfx(OPA_SURF, 0x070075A8),
		s_gfx(TEX_EDGE, 0x07007940),
		s_gfx(OPA_SURF, 0x07007B90),
		s_gfx(XLU_SURF, 0x07007FD0),
		s_gfx(OPA_SURF, 0x07008B58),
		s_gfx(XLU_SURF, 0x07008EA8),
	s_pull(),
	s_return(),
};

static S_SCRIPT s_bbh1_2[] =
{
	s_empty(),
	s_push(),
		s_gfx(OPA_SURF, 0x0700AFF0),
		s_gfx(OPA_SURF, 0x0700B1C8),
		s_gfx(XLU_SURF, 0x0700B418),
		s_gfx(OPA_SURF, 0x0700B9E0),
		s_gfx(XLU_SURF, 0x0700BBF8),
	s_pull(),
	s_return(),
};

static S_SCRIPT s_bbh1_3[] =
{
	s_empty(),
	s_push(),
		s_gfx(OPA_SURF, 0x0700D080),
		s_gfx(TEX_EDGE, 0x0700D2E0),
		s_gfx(OPA_SURF, 0x0700D490),
		s_gfx(XLU_SURF, 0x0700D7E0),
		s_gfx(OPA_SURF, 0x07012220),
		s_gfx(OPA_SURF, 0x07012510),
		s_gfx(XLU_SURF, 0x070126E8),
	s_pull(),
	s_return(),
};

static S_SCRIPT s_bbh1_4[] =
{
	s_empty(),
	s_push(),
		s_gfx(OPA_SURF, 0x0700F510),
		s_gfx(TEX_EDGE, 0x0700F848),
	s_pull(),
	s_return(),
};

static S_SCRIPT s_bbh1_5[] =
{
	s_empty(),
	s_push(),
		s_gfx(OPA_SURF, 0x07011120),
	s_pull(),
	s_return(),
};

static S_SCRIPT s_bbh1_6[] =
{
	s_empty(),
	s_push(),
		s_gfx(OPA_SURF, 0x0700D080),
		s_gfx(TEX_EDGE, 0x0700D2E0),
		s_gfx(OPA_SURF, 0x0700D490),
		s_gfx(XLU_SURF, 0x0700D7E0),
		s_gfx(OPA_SURF, 0x07012220),
		s_gfx(OPA_SURF, 0x07012510),
		s_gfx(XLU_SURF, 0x070126E8),
	s_pull(),
	s_return(),
};

static S_SCRIPT s_bbh1_7[] =
{
	s_empty(),
	s_push(),
		s_gfx(OPA_SURF, 0x070139A8),
		s_gfx(XLU_SURF, 0x07013BE8),
	s_pull(),
	s_return(),
};

static S_SCRIPT s_bbh1_8[] =
{
	s_empty(),
	s_push(),
		s_gfx(OPA_SURF, 0x07014FD8),
		s_gfx(TEX_EDGE, 0x07015398),
		s_gfx(XLU_SURF, 0x070156E0),
		s_gfx(OPA_SURF, 0x07015A20),
	s_pull(),
	s_return(),
};

static S_SCRIPT s_bbh1_9[] =
{
	s_empty(),
	s_push(),
		s_gfx(OPA_SURF, 0x07017378),
		s_gfx(OPA_SURF, 0x07017570),
		s_gfx(XLU_SURF, 0x07017788),
	s_pull(),
	s_return(),
};

static S_SCRIPT s_bbh1_10[] =
{
	s_empty(),
	s_push(),
		s_gfx(OPA_SURF, 0x07019EF8),
		s_gfx(TEX_EDGE, 0x0701A080),
		s_callback(0, s_scroll_802D01E0),
		s_callback(1024, s_scroll_802D104C),
		s_callback(1025, s_scroll_802D104C),
	s_pull(),
	s_return(),
};

static S_SCRIPT s_bbh1_11[] =
{
	s_empty(),
	s_push(),
		s_gfx(OPA_SURF, 0x0701A850),
		s_callback(0, s_scroll_802D01E0),
		s_callback(1024, s_scroll_802D104C),
	s_pull(),
	s_return(),
};

static S_SCRIPT s_bbh1_12[] =
{
	s_empty(),
	s_push(),
		s_gfx(OPA_SURF, 0x0701B6D0),
		s_callback(0, s_scroll_802D01E0),
		s_callback(1024, s_scroll_802D104C),
	s_pull(),
	s_return(),
};

static S_SCRIPT s_bbh1_13[] =
{
	s_empty(),
	s_push(),
		s_gfx(OPA_SURF, 0x0701E4E0),
		s_gfx(TEX_EDGE, 0x0701E8D8),
		s_gfx(OPA_SURF, 0x0701ED18),
		s_gfx(XLU_SURF, 0x0701EEC8),
		s_gfx(OPA_SURF, 0x0701F070),
	s_pull(),
	s_return(),
};

static S_SCRIPT s_bbh1_14[] =
{
	s_empty(),
	s_push(),
		s_gfx(OPA_SURF, 0x070075A8),
		s_gfx(TEX_EDGE, 0x07007940),
		s_gfx(OPA_SURF, 0x07007B90),
		s_gfx(XLU_SURF, 0x07007FD0),
		s_gfx(OPA_SURF, 0x07008B58),
		s_gfx(XLU_SURF, 0x07008EA8),
		s_gfx(OPA_SURF, 0x0700AFF0),
		s_gfx(OPA_SURF, 0x0700B1C8),
		s_gfx(XLU_SURF, 0x0700B418),
		s_gfx(OPA_SURF, 0x0700B9E0),
		s_gfx(XLU_SURF, 0x0700BBF8),
	s_pull(),
	s_return(),
};

static S_SCRIPT s_bbh1_15[] =
{
	s_empty(),
	s_push(),
		s_gfx(OPA_SURF, 0x070075A8),
		s_gfx(TEX_EDGE, 0x07007940),
		s_gfx(OPA_SURF, 0x07007B90),
		s_gfx(XLU_SURF, 0x07007FD0),
		s_gfx(OPA_SURF, 0x07008B58),
		s_gfx(XLU_SURF, 0x07008EA8),
		s_gfx(OPA_SURF, 0x0700D080),
		s_gfx(TEX_EDGE, 0x0700D2E0),
		s_gfx(OPA_SURF, 0x0700D490),
		s_gfx(XLU_SURF, 0x0700D7E0),
		s_gfx(OPA_SURF, 0x07012220),
		s_gfx(OPA_SURF, 0x07012510),
		s_gfx(XLU_SURF, 0x070126E8),
	s_pull(),
	s_return(),
};

static S_SCRIPT s_bbh1_16[] =
{
	s_empty(),
	s_push(),
		s_gfx(OPA_SURF, 0x070075A8),
		s_gfx(TEX_EDGE, 0x07007940),
		s_gfx(OPA_SURF, 0x07007B90),
		s_gfx(XLU_SURF, 0x07007FD0),
		s_gfx(OPA_SURF, 0x07008B58),
		s_gfx(XLU_SURF, 0x07008EA8),
		s_gfx(OPA_SURF, 0x0700F510),
		s_gfx(TEX_EDGE, 0x0700F848),
	s_pull(),
	s_return(),
};

static S_SCRIPT s_bbh1_17[] =
{
	s_empty(),
	s_push(),
		s_gfx(OPA_SURF, 0x070075A8),
		s_gfx(TEX_EDGE, 0x07007940),
		s_gfx(OPA_SURF, 0x07007B90),
		s_gfx(XLU_SURF, 0x07007FD0),
		s_gfx(OPA_SURF, 0x07008B58),
		s_gfx(XLU_SURF, 0x07008EA8),
		s_gfx(OPA_SURF, 0x07011120),
	s_pull(),
	s_return(),
};

static S_SCRIPT s_bbh1_18[] =
{
	s_empty(),
	s_push(),
		s_gfx(OPA_SURF, 0x070075A8),
		s_gfx(TEX_EDGE, 0x07007940),
		s_gfx(OPA_SURF, 0x07007B90),
		s_gfx(XLU_SURF, 0x07007FD0),
		s_gfx(OPA_SURF, 0x07008B58),
		s_gfx(XLU_SURF, 0x07008EA8),
		s_gfx(OPA_SURF, 0x0700D080),
		s_gfx(TEX_EDGE, 0x0700D2E0),
		s_gfx(OPA_SURF, 0x0700D490),
		s_gfx(XLU_SURF, 0x0700D7E0),
		s_gfx(OPA_SURF, 0x07012220),
		s_gfx(OPA_SURF, 0x07012510),
		s_gfx(XLU_SURF, 0x070126E8),
	s_pull(),
	s_return(),
};

static S_SCRIPT s_bbh1_19[] =
{
	s_empty(),
	s_push(),
		s_gfx(OPA_SURF, 0x070075A8),
		s_gfx(TEX_EDGE, 0x07007940),
		s_gfx(OPA_SURF, 0x07007B90),
		s_gfx(XLU_SURF, 0x07007FD0),
		s_gfx(OPA_SURF, 0x07008B58),
		s_gfx(XLU_SURF, 0x07008EA8),
		s_gfx(OPA_SURF, 0x070139A8),
		s_gfx(XLU_SURF, 0x07013BE8),
	s_pull(),
	s_return(),
};

static S_SCRIPT s_bbh1_20[] =
{
	s_empty(),
	s_push(),
		s_gfx(OPA_SURF, 0x070075A8),
		s_gfx(TEX_EDGE, 0x07007940),
		s_gfx(OPA_SURF, 0x07007B90),
		s_gfx(XLU_SURF, 0x07007FD0),
		s_gfx(OPA_SURF, 0x07008B58),
		s_gfx(XLU_SURF, 0x07008EA8),
		s_gfx(OPA_SURF, 0x07014FD8),
		s_gfx(TEX_EDGE, 0x07015398),
		s_gfx(XLU_SURF, 0x070156E0),
		s_gfx(OPA_SURF, 0x07015A20),
	s_pull(),
	s_return(),
};

static S_SCRIPT s_bbh1_21[] =
{
	s_empty(),
	s_push(),
		s_gfx(OPA_SURF, 0x070075A8),
		s_gfx(TEX_EDGE, 0x07007940),
		s_gfx(OPA_SURF, 0x07007B90),
		s_gfx(XLU_SURF, 0x07007FD0),
		s_gfx(OPA_SURF, 0x07008B58),
		s_gfx(XLU_SURF, 0x07008EA8),
		s_gfx(OPA_SURF, 0x0701E4E0),
		s_gfx(TEX_EDGE, 0x0701E8D8),
		s_gfx(OPA_SURF, 0x0701ED18),
		s_gfx(XLU_SURF, 0x0701EEC8),
		s_gfx(OPA_SURF, 0x0701F070),
	s_pull(),
	s_return(),
};

static S_SCRIPT s_bbh1_22[] =
{
	s_empty(),
	s_push(),
		s_gfx(OPA_SURF, 0x0700AFF0),
		s_gfx(OPA_SURF, 0x0700B1C8),
		s_gfx(XLU_SURF, 0x0700B418),
		s_gfx(OPA_SURF, 0x0700B9E0),
		s_gfx(XLU_SURF, 0x0700BBF8),
		s_gfx(OPA_SURF, 0x0700F510),
		s_gfx(TEX_EDGE, 0x0700F848),
	s_pull(),
	s_return(),
};

static S_SCRIPT s_bbh1_23[] =
{
	s_empty(),
	s_push(),
		s_gfx(OPA_SURF, 0x0700AFF0),
		s_gfx(OPA_SURF, 0x0700B1C8),
		s_gfx(XLU_SURF, 0x0700B418),
		s_gfx(OPA_SURF, 0x0700B9E0),
		s_gfx(XLU_SURF, 0x0700BBF8),
		s_gfx(OPA_SURF, 0x07017378),
		s_gfx(OPA_SURF, 0x07017570),
		s_gfx(XLU_SURF, 0x07017788),
	s_pull(),
	s_return(),
};

static S_SCRIPT s_bbh1_24[] =
{
	s_empty(),
	s_push(),
		s_gfx(OPA_SURF, 0x0700AFF0),
		s_gfx(OPA_SURF, 0x0700B1C8),
		s_gfx(XLU_SURF, 0x0700B418),
		s_gfx(OPA_SURF, 0x0700B9E0),
		s_gfx(XLU_SURF, 0x0700BBF8),
		s_gfx(OPA_SURF, 0x07019EF8),
		s_gfx(TEX_EDGE, 0x0701A080),
		s_callback(0, s_scroll_802D01E0),
		s_callback(1024, s_scroll_802D104C),
		s_callback(1025, s_scroll_802D104C),
	s_pull(),
	s_return(),
};

static S_SCRIPT s_bbh1_25[] =
{
	s_empty(),
	s_push(),
		s_gfx(OPA_SURF, 0x0700D080),
		s_gfx(TEX_EDGE, 0x0700D2E0),
		s_gfx(OPA_SURF, 0x0700D490),
		s_gfx(XLU_SURF, 0x0700D7E0),
		s_gfx(OPA_SURF, 0x07011120),
	s_pull(),
	s_return(),
};

static S_SCRIPT s_bbh1_26[] =
{
	s_empty(),
	s_push(),
		s_gfx(OPA_SURF, 0x0700D080),
		s_gfx(TEX_EDGE, 0x0700D2E0),
		s_gfx(OPA_SURF, 0x0700D490),
		s_gfx(XLU_SURF, 0x0700D7E0),
		s_gfx(OPA_SURF, 0x07012220),
		s_gfx(OPA_SURF, 0x07012510),
		s_gfx(XLU_SURF, 0x070126E8),
	s_pull(),
	s_return(),
};

static S_SCRIPT s_bbh1_27[] =
{
	s_empty(),
	s_push(),
		s_gfx(OPA_SURF, 0x0700F510),
		s_gfx(TEX_EDGE, 0x0700F848),
		s_gfx(OPA_SURF, 0x07019EF8),
		s_gfx(TEX_EDGE, 0x0701A080),
		s_callback(0, s_scroll_802D01E0),
		s_callback(1024, s_scroll_802D104C),
		s_callback(1025, s_scroll_802D104C),
	s_pull(),
	s_return(),
};

static S_SCRIPT s_bbh1_28[] =
{
	s_empty(),
	s_push(),
		s_gfx(OPA_SURF, 0x07011120),
		s_gfx(OPA_SURF, 0x0701E4E0),
		s_gfx(TEX_EDGE, 0x0701E8D8),
		s_gfx(OPA_SURF, 0x0701ED18),
		s_gfx(XLU_SURF, 0x0701EEC8),
		s_gfx(OPA_SURF, 0x0701F070),
	s_pull(),
	s_return(),
};

static S_SCRIPT s_bbh1_29[] =
{
	s_empty(),
	s_push(),
		s_gfx(OPA_SURF, 0x07017378),
		s_gfx(OPA_SURF, 0x07017570),
		s_gfx(XLU_SURF, 0x07017788),
		s_gfx(OPA_SURF, 0x0701E4E0),
		s_gfx(TEX_EDGE, 0x0701E8D8),
		s_gfx(OPA_SURF, 0x0701ED18),
		s_gfx(XLU_SURF, 0x0701EEC8),
		s_gfx(OPA_SURF, 0x0701F070),
	s_pull(),
	s_return(),
};

static S_SCRIPT s_bbh1_30[] =
{
	s_empty(),
	s_push(),
		s_gfx(OPA_SURF, 0x07019EF8),
		s_gfx(TEX_EDGE, 0x0701A080),
		s_gfx(OPA_SURF, 0x0701A850),
		s_callback(0, s_scroll_802D01E0),
		s_callback(1024, s_scroll_802D104C),
		s_callback(1025, s_scroll_802D104C),
	s_pull(),
	s_return(),
};

static S_SCRIPT s_bbh1_31[] =
{
	s_empty(),
	s_push(),
		s_gfx(OPA_SURF, 0x0701A850),
		s_gfx(OPA_SURF, 0x0701B6D0),
		s_callback(0, s_scroll_802D01E0),
		s_callback(1024, s_scroll_802D104C),
	s_pull(),
	s_return(),
};

static S_SCRIPT s_bbh1_32[] =
{
	s_empty(),
	s_push(),
		s_gfx(OPA_SURF, 0x0701B6D0),
		s_gfx(OPA_SURF, 0x0701E4E0),
		s_gfx(TEX_EDGE, 0x0701E8D8),
		s_gfx(OPA_SURF, 0x0701ED18),
		s_gfx(XLU_SURF, 0x0701EEC8),
		s_gfx(OPA_SURF, 0x0701F070),
		s_callback(0, s_scroll_802D01E0),
		s_callback(1024, s_scroll_802D104C),
	s_pull(),
	s_return(),
};

S_SCRIPT s_bbh1[] =
{
	s_scene(160, 120, 160, 120, 10),
	s_push(),
		s_layer(FALSE),
		s_push(),
			s_ortho(100),
			s_push(),
				s_background(6, s_stage_background),
			s_pull(),
		s_pull(),
		s_layer(TRUE),
		s_push(),
			s_perspective(45, 50, 10000, s_stage_perspective),
			s_push(),
				s_camera(4, 0, 2000, 6000, 0, 0, 0, s_stage_camera),
				s_push(),
					s_select(32, s_obj_lib_8029DBD4),
					s_push(),
						s_call(s_bbh1_1),
						s_call(s_bbh1_2),
						s_call(s_bbh1_3),
						s_call(s_bbh1_4),
						s_call(s_bbh1_5),
						s_call(s_bbh1_6),
						s_call(s_bbh1_7),
						s_call(s_bbh1_8),
						s_call(s_bbh1_9),
						s_call(s_bbh1_10),
						s_call(s_bbh1_11),
						s_call(s_bbh1_12),
						s_call(s_bbh1_13),
						s_call(s_bbh1_14),
						s_call(s_bbh1_15),
						s_call(s_bbh1_16),
						s_call(s_bbh1_17),
						s_call(s_bbh1_18),
						s_call(s_bbh1_19),
						s_call(s_bbh1_20),
						s_call(s_bbh1_21),
						s_call(s_bbh1_22),
						s_call(s_bbh1_23),
						s_call(s_bbh1_24),
						s_call(s_bbh1_25),
						s_call(s_bbh1_26),
						s_call(s_bbh1_27),
						s_call(s_bbh1_28),
						s_call(s_bbh1_29),
						s_call(s_bbh1_30),
						s_call(s_bbh1_31),
						s_call(s_bbh1_32),
					s_pull(),
					s_object(),
					s_callback(0, s_stage_weather),
				s_pull(),
			s_pull(),
		s_pull(),
	s_pull(),
	s_exit(),
};
