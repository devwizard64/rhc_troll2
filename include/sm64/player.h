#ifndef __SM64_PLAYER_H__
#define __SM64_PLAYER_H__

typedef struct pl_shape
{
	u32 state;
	s8 head;
	s8 eye;
	s8 glove;
	s8 wing;
	s16 cap;
	s8 hold;
	u8 punch;
	VECS torso;
	VECS neck;
	VECF hand;
	struct object *obj;
}
PL_SHAPE;

typedef struct player
{
	u16 index;
	u16 event;
	u32 flag;
	u32 particle;
	u32 state;
	u32 state_prev;
	u32 ground_se;
	u16 mode;
	u16 timer;
	u32 arg;
	float stick_dist;
	short stick_ang;
	s16 invincible;
	u8 timer_a;
	u8 timer_b;
	u8 timer_wall;
	u8 timer_ground;
	VECS ang;
	VECS ang_vel;
	short slide_ang;
	short twirl_ang;
	VECF pos;
	VECF vel;
	float vel_f;
	float vel_h[2];
	struct map_plane *wall;
	struct map_plane *roof;
	struct map_plane *ground;
	float roof_y;
	float ground_y;
	short ground_ang;
	short water;
	struct object *obj_col;
	struct object *obj_hold;
	struct object *obj_use;
	struct object *obj_ride;
	struct object *obj;
	struct spawn *spawn;
	struct scene *scene;
	struct pl_camera *camera;
	PL_SHAPE *shape;
	struct controller *cont;
	struct bank *anime;
	u32 collision;
	s16 coin;
	s16 star;
	s8 key;
	s8 life;
	s16 power;
	short waist;
	u8 hurt;
	u8 heal;
	u8 squish;
	u8 alpha;
	u16 timer_cap;
	s16 star_prev;
	float peak;
	float sink;
	float gravity;
}
PLAYER;

typedef struct pl_walk
{
	s16 time;
	s16 timer_ground;
	u32 state_slip;
	u32 state_next;
	u32 state_jump;
	u32 state_fall;
	u32 state_slide;
}
PL_WALK;

extern s32 player_8033B280;
extern s32 pl_physics_8033B290;
extern OBJECT *pl_demo_8033B2A0;
extern OBJECT *pl_demo_8033B2A4;
extern OBJECT *pl_demo_8033B2A8;
extern OBJECT *pl_demo_8033B2AC;
extern OBJECT *pl_demo_8033B2B0;
extern OBJECT *pl_demo_8033B2B4;
extern s16 pl_demo_8033B2B8;
extern s16 pl_demo_8033B2BC[2];
extern MTXF pl_walk_8033B2C0[2];
extern s16 pl_swim_8033B340;
extern s16 pl_swim_8033B342;
extern f32 pl_swim_8033B344;
extern SHAPE_OBJECT shape_object_mirror;
extern PL_SHAPE pl_shape_data[2];
extern s8 player_8032DAA0[][6];
extern u8 player_8032DACC[];
extern u64 player_8032DAE0;
extern s16 pl_physics_8032DAF0[];
extern MAP_PLANE pl_physics_8032DAF8;
extern Vp vp_pl_demo;
extern struct staff *pl_demo_staff;
extern s8 pl_demo_8032DB44;
extern s8 pl_demo_8032DB48;
extern s8 pl_demo_8032DB4C[];
extern u8 pl_demo_8032DB54[];
extern BSPLINE pl_demo_8032DB5C[];
extern s32 pl_demo_8032DC34;
extern s32 pl_demo_8032DC38;
extern u8 pl_demo_8032DC3C[];
extern PL_WALK pl_walk_8032DC50;
extern PL_WALK pl_walk_8032DC68;
extern PL_WALK pl_walk_8032DC80;
extern PL_WALK pl_walk_8032DC98;
extern PL_WALK pl_walk_8032DCB0;
extern PL_WALK pl_walk_8032DCC8;
extern PL_WALK pl_walk_8032DCE0;
extern PL_WALK pl_walk_8032DCF8;
extern PL_WALK pl_walk_8032DD10;
extern s16 pl_swim_8032DD30;
extern s16 pl_swim_8032DD34;
extern s16 pl_swim_8032DD38[];
extern s8 pl_grab_8032DD40[];
extern s8 pl_callback_8032DD50[];
extern s8 pl_callback_8032DD58[];

extern void pl_demo_80256E88(void);

#endif /* __SM64_PLAYER_H__ */
