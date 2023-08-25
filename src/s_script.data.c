#include <sm64.h>

ARENA *s_script_arena;
SHAPE *s_script_8038BCA4;
SHAPE *s_script_8038BCA8;
SHAPE **s_script_8038BCAC;
u16 s_script_8038BCB0;
BALIGN void *s_script_8038BCB8[16];
BALIGN SHAPE *s_script_8038BCF8[32];
s16 s_script_8038BD78;
s16 s_script_8038BD7A;
s16 s_script_8038BD7C;
s16 s_script_8038BD7E;
u8 *s_script_8038BD80;
BALIGN SHAPE s_script_8038BD88;

extern void s_cmd_script(void);
extern void s_cmd_end(void);
extern void s_cmd_jump(void);
extern void s_cmd_return(void);
extern void s_cmd_push(void);
extern void s_cmd_pull(void);
extern void s_cmd_store(void);
extern void s_cmd_flag(void);
extern void s_cmd_scene(void);
extern void s_cmd_ortho(void);
extern void s_cmd_persp(void);
extern void s_cmd_empty(void);
extern void s_cmd_1F(void);
extern void s_cmd_layer(void);
extern void s_cmd_lod(void);
extern void s_cmd_select(void);
extern void s_cmd_camera(void);
extern void s_cmd_posang(void);
extern void s_cmd_pos(void);
extern void s_cmd_ang(void);
extern void s_cmd_scale(void);
extern void s_cmd_1E(void);
extern void s_cmd_joint(void);
extern void s_cmd_billboard(void);
extern void s_cmd_gfx(void);
extern void s_cmd_shadow(void);
extern void s_cmd_object(void);
extern void s_cmd_callback(void);
extern void s_cmd_background(void);
extern void s_cmd_1A(void);
extern void s_cmd_load(void);
extern void s_cmd_hand(void);
extern void s_cmd_cull(void);

void (*s_script_table[])(void) =
{
	s_cmd_script,
	s_cmd_end,
	s_cmd_jump,
	s_cmd_return,
	s_cmd_push,
	s_cmd_pull,
	s_cmd_store,
	s_cmd_flag,
	s_cmd_scene,
	s_cmd_ortho,
	s_cmd_persp,
	s_cmd_empty,
	s_cmd_layer,
	s_cmd_lod,
	s_cmd_select,
	s_cmd_camera,
	s_cmd_posang,
	s_cmd_pos,
	s_cmd_ang,
	s_cmd_joint,
	s_cmd_billboard,
	s_cmd_gfx,
	s_cmd_shadow,
	s_cmd_object,
	s_cmd_callback,
	s_cmd_background,
	s_cmd_1A,
	s_cmd_load,
	s_cmd_hand,
	s_cmd_scale,
	s_cmd_1E,
	s_cmd_1F,
	s_cmd_cull,
};
