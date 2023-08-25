#include <sm64.h>

const char str_obj_debug_a0[] = "  a0 %d";
const char str_obj_debug_a1[] = "  a1 %d";
const char str_obj_debug_a2[] = "  a2 %d";
const char str_obj_debug_a3[] = "  a3 %d";
const char str_obj_debug_a4[] = "  a4 %d";
const char str_obj_debug_a5[] = "  a5 %d";
const char str_obj_debug_a6[] = "  a6 %d";
const char str_obj_debug_a7[] = "  a7 %d";
const char str_obj_debug_a[] = "A";
const char str_obj_debug_b0[] = "  b0 %d";
const char str_obj_debug_b1[] = "  b1 %d";
const char str_obj_debug_b2[] = "  b2 %d";
const char str_obj_debug_b3[] = "  b3 %d";
const char str_obj_debug_b4[] = "  b4 %d";
const char str_obj_debug_b5[] = "  b5 %d";
const char str_obj_debug_b6[] = "  b6 %d";
const char str_obj_debug_b7[] = "  b7 %d";
const char str_obj_debug_b[] = "B";
const char str_obj_debug_dprint_over[] = "DPRINT OVER";
const char str_obj_debug_mapinfo[] = "mapinfo";
const char str_obj_debug_area[] = "area %x";
const char str_obj_debug_wx[] = "wx   %d";
const char str_obj_debug_wy[] = "wy\t  %d";
const char str_obj_debug_wz[] = "wz   %d";
const char str_obj_debug_bgy[] = "bgY  %d";
const char str_obj_debug_angy[] = "angY %d";
const char str_obj_debug_bgcode[] = "bgcode   %d";
const char str_obj_debug_bgstatus[] = "bgstatus %d";
const char str_obj_debug_bgarea[] = "bgarea   %d";
const char str_obj_debug_water[] = "water %d";
const char str_obj_debug_checkinfo[] = "checkinfo";
const char str_obj_debug_stageinfo[] = "stageinfo";
const char str_obj_debug_stage_param[] = "stage param %d";
const char str_obj_debug_effectinfo[] = "effectinfo";
const char str_obj_debug_enemyinfo[] = "enemyinfo";
const char str_obj_debug_obj[] = "obj  %d";
const char str_obj_debug_nullbg[] = "NULLBG %d";
const char str_obj_debug_wall[] = "WALL   %d";
const char str_obj_debug_bound[] = "BOUND   %x";
const char str_obj_debug_touch[] = "TOUCH   %x";
const char str_obj_debug_takeoff[] = "TAKEOFF %x";
const char str_obj_debug_dive[] = "DIVE    %x";
const char str_obj_debug_s_water[] = "S WATER %x";
const char str_obj_debug_u_water[] = "U WATER %x";
const char str_obj_debug_b_water[] = "B WATER %x";
const char str_obj_debug_sky[] = "SKY     %x";
const char str_obj_debug_out_scope[] = "OUT SCOPE %x";
const double obj_debug_80337FF0 = 182.044;

BALIGN OBJ_DEBUG obj_debug_80361290;
BALIGN OBJ_DEBUG obj_debug_803612A0;

const char *obj_debug_80330E40[] =
{
	str_obj_debug_a0,
	str_obj_debug_a1,
	str_obj_debug_a2,
	str_obj_debug_a3,
	str_obj_debug_a4,
	str_obj_debug_a5,
	str_obj_debug_a6,
	str_obj_debug_a7,
	str_obj_debug_a,
};

const char *obj_debug_80330E64[] =
{
	str_obj_debug_b0,
	str_obj_debug_b1,
	str_obj_debug_b2,
	str_obj_debug_b3,
	str_obj_debug_b4,
	str_obj_debug_b5,
	str_obj_debug_b6,
	str_obj_debug_b7,
	str_obj_debug_b,
};

DALIGN s32 obj_debug_80330E88 = 0;
DALIGN s32 obj_debug_80330E8C = 0;
DALIGN s8 obj_debug_80330E90 = 0;
DALIGN s8 obj_debug_80330E94 = 0;
DALIGN s8 obj_debug_80330E98 = 0;
DALIGN s8 obj_debug_80330E9C = 0;
DALIGN s8 obj_debug_80330EA0 = 0;
DALIGN s8 obj_debug_80330EA4 = 0;

s16 obj_debug_80330EA8[] =
{
	U_CBUTTONS,
	L_CBUTTONS,
	D_CBUTTONS,
	R_CBUTTONS,
	-1,
};
