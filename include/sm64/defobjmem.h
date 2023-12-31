#ifndef __SM64_DEFOBJMEM_H__
#define __SM64_DEFOBJMEM_H__

#define /* 0x08C */ o_flag              mem[O_FLAG].s32
#define /* 0x090 */ o_msg_code          mem[O_MSG].s16[0]
#define /* 0x092 */ o_msg_state         mem[O_MSG].s16[1]
#define /* 0x09C */ o_col_timer         mem[O_COL_TIMER].s32
#define /* 0x0A0 */ o_pos_x             mem[O_POS_X].f32
#define /* 0x0A4 */ o_pos_y             mem[O_POS_Y].f32
#define /* 0x0A8 */ o_pos_z             mem[O_POS_Z].f32
#define /* 0x0AC */ o_vel_x             mem[O_VEL_X].f32
#define /* 0x0B0 */ o_vel_y             mem[O_VEL_Y].f32
#define /* 0x0B4 */ o_vel_z             mem[O_VEL_Z].f32
#define /* 0x0B8 */ o_vel_f             mem[O_VEL_F].f32
#define /* 0x0BC */ o_vel_l             mem[O_VEL_L].f32
#define /* 0x0C0 */ o_vel_u             mem[O_VEL_U].f32
#define /* 0x0C4 */ o_ang_x             mem[O_ANG_X].s32
#define /* 0x0C8 */ o_ang_y             mem[O_ANG_Y].s32
#define /* 0x0CC */ o_ang_z             mem[O_ANG_Z].s32
#define /* 0x0D0 */ o_shape_ang_x       mem[O_SHAPE_ANG_X].s32
#define /* 0x0D4 */ o_shape_ang_y       mem[O_SHAPE_ANG_Y].s32
#define /* 0x0D8 */ o_shape_ang_z       mem[O_SHAPE_ANG_Z].s32
#define /* 0x0DC */ o_shape_off_y       mem[O_SHAPE_OFF_Y].f32
#define /* 0x0E0 */ o_particle          mem[O_PARTICLE].s32
#define /* 0x0E4 */ o_gravity           mem[O_GRAVITY].f32
#define /* 0x0E8 */ o_ground_y          mem[O_GROUND_Y].f32
#define /* 0x0EC */ o_move_flag         mem[O_MOVE_FLAG].s32
#define /* 0x0F0 */ o_anime_code        mem[O_ANIME_CODE].s32
#define /* 0x114 */ o_ang_vel_x         mem[O_ANG_VEL_X].s32
#define /* 0x118 */ o_ang_vel_y         mem[O_ANG_VEL_Y].s32
#define /* 0x11C */ o_ang_vel_z         mem[O_ANG_VEL_Z].s32
#define /* 0x120 */ o_anime             mem[O_ANIME].ptr
#define /* 0x124 */ o_hold              mem[O_HOLD].s32
#define /* 0x128 */ o_wall_r            mem[O_WALL_R].f32
#define /* 0x12C */ o_drag              mem[O_DRAG].f32
#define /* 0x130 */ o_col_type          mem[O_COL_TYPE].s32
#define /* 0x134 */ o_col_flag          mem[O_COL_FLAG].s32
#define /* 0x138 */ o_off_x             mem[O_OFF_X].f32
#define /* 0x13C */ o_off_y             mem[O_OFF_Y].f32
#define /* 0x140 */ o_off_z             mem[O_OFF_Z].f32
#define /* 0x144 */ o_code              mem[O_CODE].s32
#define /* 0x14C */ o_state             mem[O_STATE].s32
#define /* 0x150 */ o_mode              mem[O_MODE].s32
#define /* 0x154 */ o_timer             mem[O_TIMER].s32
#define /* 0x158 */ o_bounce            mem[O_BOUNCE].f32
#define /* 0x15C */ o_pl_dist           mem[O_PL_DIST].f32
#define /* 0x160 */ o_pl_ang            mem[O_PL_ANG].s32
#define /* 0x164 */ o_org_x             mem[O_ORG_X].f32
#define /* 0x168 */ o_org_y             mem[O_ORG_Y].f32
#define /* 0x16C */ o_org_z             mem[O_ORG_Z].f32
#define /* 0x170 */ o_friction          mem[O_FRICTION].f32
#define /* 0x174 */ o_density           mem[O_DENSITY].f32
#define /* 0x178 */ o_anime_index       mem[O_ANIME_INDEX].s32
#define /* 0x17C */ o_alpha             mem[O_ALPHA].s32
#define /* 0x180 */ o_ap                mem[O_AP].s32
#define /* 0x184 */ o_hp                mem[O_HP].s32
#define /* 0x188 */ o_arg               mem[O_ARG].s32
#define /* 0x18C */ o_state_prev        mem[O_STATE_PREV].s32
#define /* 0x190 */ o_col_arg           mem[O_COL_ARG].s32
#define /* 0x194 */ o_col_dist          mem[O_COL_DIST].f32
#define /* 0x198 */ o_coin              mem[O_COIN].s32
#define /* 0x19C */ o_shape_dist        mem[O_SHAPE_DIST].f32
#define /* 0x1A0 */ o_area              mem[O_AREA].s32
#define /* 0x1A8 */ o_prg_arg           mem[O_PRG_ARG].s32
#define /* 0x1B4 */ o_wall_ang          mem[O_WALL_ANG].s32
#define /* 0x1B8 */ o_ground_type       mem[O_GROUND_ARG].s16[0]
#define /* 0x1BA */ o_ground_area       mem[O_GROUND_ARG].s16[1]
#define /* 0x1BC */ o_org_ang           mem[O_ORG_ANG].s32
#define /* 0x1C0 */ o_ground            mem[O_GROUND].ptr
#define /* 0x1C4 */ o_se_die            mem[O_SE_DIE].s32

#endif /* __SM64_DEFOBJMEM_H__ */
