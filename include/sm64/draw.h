#ifndef __SM64_DRAW_H__
#define __SM64_DRAW_H__

extern s16 draw_m;
extern MTXF draw_mtxf[32];
extern Mtx *draw_mtx[32];
extern u8 joint_prev_type;
extern u8 joint_prev_shadow;
extern s16 joint_prev_frame;
extern f32 joint_prev_scale;
extern u16 *joint_prev_tbl;
extern s16 *joint_prev_val;
extern u8 joint_type;
extern u8 joint_shadow;
extern s16 joint_frame;
extern f32 joint_scale;
extern u16 *joint_tbl;
extern s16 *joint_val;
extern ARENA *draw_arena;
extern u32 draw_rendermode_1[2][8];
extern u32 draw_rendermode_2[2][8];
extern SHAPE_SCENE *shape_scene;
extern SHAPE_LAYER *shape_layer;
extern SHAPE_PERSP *shape_persp;
extern SHAPE_CAMERA *shape_camera;
extern SHAPE_OBJECT *shape_object;
extern SHAPE_HAND *shape_hand;
extern u16 draw_timer;

extern void draw_scene(SHAPE_SCENE *scene, Vp *viewport, Vp *scissor, u32 fill);

#endif /* __SM64_DRAW_H__ */
