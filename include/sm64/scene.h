#ifndef __SM64_SCENE_H__
#define __SM64_SCENE_H__

#define SCENE_LEN               8
#define SHAPE_LEN               0x100

#define SCENE_FLAG_01           0x01

typedef struct spawn
{
	VECS pos;
	VECS ang;
	s8 scene;
	s8 group;
	u32 arg;
	O_SCRIPT *script;
	struct shape *shape;
	struct spawn *next;
}
SPAWN;

typedef struct port
{
	u8 index;
	u8 stage;
	u8 scene;
	u8 port;
	struct object *obj;
	struct port *next;
}
PORT;

typedef struct scene
{
	s8 index;
	s8 flag;
	u16 env;
	SHAPE_SCENE *s;
	MAP_DATA *map;
	AREA_DATA *area;
	OBJ_DATA *obj;
	struct port *port;
	void *bgport;
	void *connect;
	struct spawn *spawn;
	struct camera *cam;
	void *wind;
	void *jet[2];
	u8 msg[2];
	u16 bgm_mode;
	u16 bgm;
}
SCENE;

extern SPAWN spawn_player[1];
extern SHAPE *shape_data[SHAPE_LEN];
extern SCENE scene_data[SCENE_LEN];
extern WIPE wipe;
extern s16 course_index;
extern s16 level_index;
extern s16 scene_index;
extern s16 course_prev;
extern s16 msg_code;
extern s16 msg_latch;
extern SPAWN *spawn_mario;
extern SHAPE **shape_table;
extern SCENE *scene_table;
extern SCENE *scene;
extern STAFF *staff;
extern Vp *scene_viewport;
extern Vp *scene_scissor;
extern s16 wipe_delay;
extern u32 scene_fill;
extern u32 blank_fill;
extern u8 blank_r;
extern u8 blank_g;
extern u8 blank_b;
extern s16 save_index;
extern s16 stage_index;

extern void scene_vp_set(Vp *viewport, Vp *scissor, UCHAR r, UCHAR g, UCHAR b);
extern void scene_demo(void);
extern int obj_port_code(struct object *obj);
extern PORT *port_get(UCHAR index);
extern void scene_init(void);
extern void scene_exit(void);
extern void scene_open(int index);
extern void scene_close(void);
extern void scene_player_open(void);
extern void scene_player_close(void);
extern void scene_set(int index);
extern void scene_update(void);
extern void scene_wipe(SHORT type, SHORT frame, UCHAR r, UCHAR g, UCHAR b);
extern void scene_wipe_delay(
	SHORT type,
	SHORT frame,
	UCHAR r,
	UCHAR g,
	UCHAR b,
	SHORT delay
);
extern void scene_draw(void);

#endif /* __SM64_SCENE_H__ */
