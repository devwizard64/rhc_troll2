#include <sm64.h>

extern void L8037E1D4(void);
extern void L8037E1EC(void);
extern void L8037E20C(void);
extern void L8037E228(void);
extern void L8037E244(void);
extern void L8037E25C(void);
extern void L8037E278(void);
extern void L8037E290(void);

void (*const p_script_8038BAF0[])(void) =
{
	L8037E1D4,
	L8037E1EC,
	L8037E20C,
	L8037E228,
	L8037E244,
	L8037E25C,
	L8037E278,
	L8037E290,
};

extern void L80380478(void);
extern void L80380490(void);
extern void L803804A8(void);
extern void L803804C0(void);
extern void L803804D8(void);

void (*const p_script_8038BB10[])(void) =
{
	L80380478,
	L80380490,
	L803804A8,
	L803804C0,
	L803804D8,
};

extern void L80380528(void);
extern void L80380540(void);
extern void L80380558(void);
extern void L80380570(void);
extern void L80380588(void);

void (*const p_script_8038BB24[])(void) =
{
	L80380528,
	L80380540,
	L80380558,
	L80380570,
	L80380588,
};

BALIGN void *p_script_stack[32];
s16 p_script_state;
int p_script_code;
u8 *p_script_pc;

DALIGN ARENA *p_script_arena = NULL;
DALIGN u16 p_script_sleep = 0;
DALIGN u16 p_script_freeze = 0;
DALIGN s16 p_script_scene = -1;
DALIGN void **p_script_sp = p_script_stack;
DALIGN void **p_script_fp = NULL;

extern void p_cmd_push_call(void);
extern void p_cmd_push_jump(void);
extern void p_cmd_pull_return(void);
extern void p_cmd_sleep(void);
extern void p_cmd_freeze(void);
extern void p_cmd_jump(void);
extern void p_cmd_call(void);
extern void p_cmd_return(void);
extern void p_cmd_for(void);
extern void p_cmd_done(void);
extern void p_cmd_do(void);
extern void p_cmd_while(void);
extern void p_cmd_if_jump(void);
extern void p_cmd_if_call(void);
extern void p_cmd_if(void);
extern void p_cmd_else(void);
extern void p_cmd_endif(void);
extern void p_cmd_callback(void);
extern void p_cmd_process(void);
extern void p_cmd_set(void);
extern void p_cmd_push(void);
extern void p_cmd_pull(void);
extern void p_cmd_load_code(void);
extern void p_cmd_load_data(void);
extern void p_cmd_load_szp(void);
extern void p_cmd_load_face(void);
extern void p_cmd_load_txt(void);
extern void p_cmd_stage_init(void);
extern void p_cmd_stage_exit(void);
extern void p_cmd_stage_start(void);
extern void p_cmd_stage_end(void);
extern void p_cmd_scene_start(void);
extern void p_cmd_scene_end(void);
extern void p_cmd_shape_gfx(void);
extern void p_cmd_shape_script(void);
extern void p_cmd_shape_scale(void);
extern void p_cmd_player(void);
extern void p_cmd_object(void);
extern void p_cmd_port(void);
extern void p_cmd_connect(void);
extern void p_cmd_env(void);
extern void p_cmd_bgport(void);
extern void p_cmd_wind(void);
extern void p_cmd_jet(void);
extern void p_cmd_vi_black(void);
extern void p_cmd_vi_gamma(void);
extern void p_cmd_map(void);
extern void p_cmd_area(void);
extern void p_cmd_obj(void);
extern void p_cmd_scene_open(void);
extern void p_cmd_scene_close(void);
extern void p_cmd_player_open(void);
extern void p_cmd_player_close(void);
extern void p_cmd_scene_update(void);
extern void p_cmd_wipe(void);
extern void p_cmd_32(void);
extern void p_cmd_msg(void);
extern void p_cmd_bgm(void);
extern void p_cmd_bgm_play(void);
extern void p_cmd_bgm_stop(void);
extern void p_cmd_var(void);

void (*p_script_table[])(void) =
{
	p_cmd_push_call,
	p_cmd_push_jump,
	p_cmd_pull_return,
	p_cmd_sleep,
	p_cmd_freeze,
	p_cmd_jump,
	p_cmd_call,
	p_cmd_return,
	p_cmd_for,
	p_cmd_done,
	p_cmd_do,
	p_cmd_while,
	p_cmd_if_jump,
	p_cmd_if_call,
	p_cmd_if,
	p_cmd_else,
	p_cmd_endif,
	p_cmd_callback,
	p_cmd_process,
	p_cmd_set,
	p_cmd_push,
	p_cmd_pull,
	p_cmd_load_code,
	p_cmd_load_data,
	p_cmd_load_szp,
	p_cmd_load_face,
	p_cmd_load_txt,
	p_cmd_stage_init,
	p_cmd_stage_exit,
	p_cmd_stage_start,
	p_cmd_stage_end,
	p_cmd_scene_start,
	p_cmd_scene_end,
	p_cmd_shape_gfx,
	p_cmd_shape_script,
	p_cmd_shape_scale,
	p_cmd_object,
	p_cmd_player,
	p_cmd_port,
	p_cmd_bgport,
	p_cmd_connect,
	p_cmd_scene_open,
	p_cmd_scene_close,
	p_cmd_player_open,
	p_cmd_player_close,
	p_cmd_scene_update,
	p_cmd_map,
	p_cmd_area,
	p_cmd_msg,
	p_cmd_env,
	p_cmd_32,
	p_cmd_wipe,
	p_cmd_vi_black,
	p_cmd_vi_gamma,
	p_cmd_bgm,
	p_cmd_bgm_play,
	p_cmd_bgm_stop,
	p_cmd_obj,
	p_cmd_wind,
	p_cmd_jet,
	p_cmd_var,
};
