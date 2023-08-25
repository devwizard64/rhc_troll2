#ifndef __SM64_SHAPE_H__
#define __SM64_SHAPE_H__

#define S_TYPE_SCENE            (1)
#define S_TYPE_ORTHO            (2)
#define S_TYPE_PERSP            (3 | 0x100)
#define S_TYPE_LAYER            (4)

#define S_TYPE_EMPTY            (10)
#define S_TYPE_LOD              (11)
#define S_TYPE_SELECT           (12 | 0x100)

#define S_TYPE_CAMERA           (20 | 0x100)
#define S_TYPE_POSANG           (21)
#define S_TYPE_POS              (22)
#define S_TYPE_ANG              (23)
#define S_TYPE_OBJECT           (24)
#define S_TYPE_JOINT            (25)
#define S_TYPE_BILLBOARD        (26)
#define S_TYPE_GFX              (27)
#define S_TYPE_SCALE            (28)

#define S_TYPE_SHADOW           (40)
#define S_TYPE_LIST             (41)
#define S_TYPE_CALLBACK         (42 | 0x100)
#define S_TYPE_BACKGROUND       (44 | 0x100)
#define S_TYPE_HAND             (46 | 0x100)
#define S_TYPE_CULL             (47)

#define S_FLAG_ACTIVE           0x0001
#define S_FLAG_HIDE             0x0002
#define S_FLAG_BILLBOARD        0x0004
#define S_FLAG_ZBUFFER          0x0008
#define S_FLAG_OBJHIDE          0x0010
#define S_FLAG_ANIME            0x0020

#define S_CODE_INIT             0
#define S_CODE_DRAW             1
#define S_CODE_CLOSE            2
#define S_CODE_OPEN             3
#define S_CODE_EXIT             4
#define S_CODE_MTX              5

#define shape_layer_get(shp)  (((SHAPE *)(shp))->flag >> 8)
#define shape_layer_set(shp, layer) \
	(((SHAPE *)(shp))->flag = (layer) << 8 | (((SHAPE *)(shp))->flag & 0xFF))

typedef struct anime
{
	s16 flag;
	short waist;
	s16 start;
	s16 end;
	s16 frame;
	s16 joint;
	s16 *val;
	u16 *tbl;
	size_t size;
}
ANIME;

typedef struct skeleton
{
	s16 index;
	short waist;
	ANIME *anime;
	s16 frame;
	u16 timer;
	s32 frame_amt;
	s32 frame_vel;
}
SKELETON;

typedef struct layer_list
{
	Mtx *mtx;
	Gfx *gfx;
	struct layer_list *next;
}
LAYER_LIST;

typedef struct shape
{
	s16 type;
	s16 flag;
	struct shape *prev;
	struct shape *next;
	struct shape *parent;
	struct shape *child;
}
SHAPE;

typedef struct shape_callback
{
	SHAPE s;
	void *(*callback)(int code, SHAPE *shape, void *data);
	int arg;
}
SHAPE_CALLBACK;

typedef struct shape_gfx
{
	SHAPE s;
	Gfx *gfx;
}
SHAPE_GFX;

typedef struct shape_scene
{
	SHAPE s;
	u8 index;
	u8 _15;
	s16 x;
	s16 y;
	s16 w;
	s16 h;
	u16 len;
	SHAPE *table;
}
SHAPE_SCENE;

typedef struct shape_ortho
{
	SHAPE s;
	float scale;
}
SHAPE_ORTHO;

typedef struct shape_persp
{
	SHAPE_CALLBACK s;
	float fovy;
	short near;
	short far;
}
SHAPE_PERSP;

typedef struct shape_layer
{
	SHAPE s;
	LAYER_LIST *list[S_LAYER_MAX];
	LAYER_LIST *next[S_LAYER_MAX];
}
SHAPE_LAYER;

typedef struct shape_camera
{
	SHAPE_CALLBACK s;
	VECF eye;
	VECF look;
	MTXF *mf;
	short rz_m;
	short rz_p;
}
SHAPE_CAMERA;

typedef struct shape_lod
{
	SHAPE s;
	short min;
	short max;
}
SHAPE_LOD;

typedef struct shape_select
{
	SHAPE_CALLBACK s;
	s16 arg;
	s16 index;
}
SHAPE_SELECT;

typedef struct shape_posang
{
	SHAPE_GFX s;
	VECS pos;
	VECS ang;
}
SHAPE_POSANG;

typedef struct shape_pos
{
	SHAPE_GFX s;
	VECS pos;
}
SHAPE_POS;

typedef struct shape_ang
{
	SHAPE_GFX s;
	VECS ang;
}
SHAPE_ANG;

typedef struct shape_scale
{
	SHAPE_GFX s;
	float scale;
}
SHAPE_SCALE;

typedef struct shape_billboard
{
	SHAPE_GFX s;
	VECS pos;
}
SHAPE_BILLBOARD;

typedef struct shape_joint
{
	SHAPE_GFX s;
	VECS pos;
}
SHAPE_JOINT;

typedef struct shape_shadow
{
	SHAPE s;
	short size;
	u8 alpha;
	u8 type;
}
SHAPE_SHADOW;

typedef struct shape_background
{
	SHAPE_CALLBACK s;
	u32 arg;
}
SHAPE_BACKGROUND;

typedef struct shape_object
{
	SHAPE s;
	SHAPE *shape;
	s8 scene;
	s8 group;
	VECS ang;
	VECF pos;
	VECF scale;
	SKELETON skeleton;
	struct spawn *spawn;
	MTXF *mf;
	VECF view;
}
SHAPE_OBJECT;

typedef struct shape_list
{
	SHAPE s;
	SHAPE *shape;
}
SHAPE_LIST;

typedef struct shape_hand
{
	SHAPE_CALLBACK s;
	SHAPE_OBJECT *object;
	VECS pos;
}
SHAPE_HAND;

typedef struct shape_cull
{
	SHAPE s;
	short dist;
}
SHAPE_CULL;

extern void shape_8037C360(SHAPE_SCENE *scene, int code);
extern int shape_8037C7D8(int frame, u16 **tbl);
extern int shape_8037C844(SKELETON *skeleton, s32 *dst);

#endif /* __SM64_SHAPE_H__ */
