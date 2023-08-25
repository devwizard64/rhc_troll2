#ifndef __SM64_OBJECT_H__
#define __SM64_OBJECT_H__

#define obj_code_get(obj)               (((obj)->o_arg & 0x00FF0000) >> 16)

typedef struct obj_list
{
	SHAPE_OBJECT s;
	struct obj_list *next;
	struct obj_list *prev;
}
OBJ_LIST;

typedef struct object
{
	OBJ_LIST list;
	struct object *parent;
	struct object *child;
	u32 collision;
	s16 flag;
	s16 col_len;
	struct object *obj_col[4];
	union
	{
		s8 s8[4];
		u8 u8[4];
		s16 s16[2];
		u16 u16[2];
		s32 s32;
		u32 u32;
		f32 f32;
		void *ptr;
	}
	mem[80];
	void *_1C8;
	O_SCRIPT *pc;
	unsigned int sp;
	void *stack[8];
	s16 _1F4;
	s16 _1F6;
	float col_hit_r;
	float col_hit_h;
	float col_dmg_r;
	float col_dmg_h;
	float col_offset;
	O_SCRIPT *script;
	struct object *_210;
	struct object *obj_ground;
	MAP_DATA *map;
	MTXF mf;
	void *_25C;
}
OBJECT;

typedef struct pl_pcl
{
	u32 code;
	u32 flag;
	u8 shape;
	O_SCRIPT *script;
}
PL_PCL;

typedef struct struct_8033D274
{
	s16 ground;
	s16 roof;
	s16 wall;
}
STRUCT_8033D274;

typedef struct obj_splash
{
	s16 flag;
	s16 shape;
	O_SCRIPT *script;
	short ay_mul;
	short p_mul;
	float vf_add;
	float vf_mul;
	float vy_add;
	float vy_mul;
	float s_add;
	float s_mul;
}
OBJ_SPLASH;

typedef struct obj_pcl
{
	s8 arg;
	s8 count;
	u8 shape;
	s8 offset;
	s8 vf_add;
	s8 vf_mul;
	s8 vy_add;
	s8 vy_mul;
	s8 gravity;
	s8 drag;
	float s_add;
	float s_mul;
}
OBJ_PCL;

typedef struct obj_col
{
	u32 type;
	u8 offset;
	s8 ap;
	s8 hp;
	s8 coin;
	short hit_r;
	short hit_h;
	short dmg_r;
	short dmg_h;
}
OBJ_COL;

typedef struct obj_sfx
{
	s16 flag;
	s8 l;
	s8 r;
	NA_SE se;
}
OBJ_SFX;

typedef struct obj_debug
{
	s16 flag;
	s16 x;
	s16 y;
	s16 min;
	s16 max;
	s16 height;
}
OBJ_DEBUG;

extern OBJ_LIST obj_list_data[16];
extern u32 object_debug_flag;
extern int object_8033D264;
extern int object_8033D268;
extern int object_8033D26C;
extern int object_8033D270;
extern struct struct_8033D274 object_8033D274;
extern s16 object_8033D280[16][8];
extern s16 object_8033D380[16][8];
extern int object_8033D480;
extern OBJECT object_data[240];
extern OBJECT object_dummy;
extern OBJ_LIST *obj_list;
extern OBJ_LIST obj_list_free;
extern OBJECT *obj_mario;
extern OBJECT *obj_luigi;
extern OBJECT *object;
extern O_SCRIPT *object_pc;
extern s16 object_80361168;
extern int object_8036116C;
extern int object_80361170;
extern int object_80361174;
extern int object_80361178;
extern HEAP *object_heap;
extern s16 object_80361180;
extern s16 object_80361182;
extern void *object_80361184;
extern int object_80361188[20];
extern s8 object_803611D8[60][2];
extern s16 object_80361250;
extern s16 object_80361252;
extern s16 object_80361254;
extern s16 object_80361256;
extern s16 object_80361258;
extern s16 object_8036125A;
extern s16 object_8036125C;
extern s16 object_8036125E;
extern s16 object_80361260;
extern s16 object_80361262;
extern s16 object_80361264;
extern s32 obj_lib_80361270;
extern OBJ_DEBUG obj_debug_80361290;
extern OBJ_DEBUG obj_debug_803612A0;
extern s8 object_8032FEC0[];
extern PL_PCL pl_pcl_data[];
extern s8 obj_lib_80330000[];
extern s16 obj_lib_80330004[];
extern s8 obj_lib_80330014[];
extern s16 obj_physics_80330E20;
extern u32 obj_physics_80330E24[4];
extern OBJECT *obj_ground;
extern const char *obj_debug_80330E40[];
extern const char *obj_debug_80330E64[];
extern s32 obj_debug_80330E88;
extern s32 obj_debug_80330E8C;
extern s8 obj_debug_80330E90;
extern s8 obj_debug_80330E94;
extern s8 obj_debug_80330E98;
extern s8 obj_debug_80330E9C;
extern s8 obj_debug_80330EA0;
extern s8 obj_debug_80330EA4;
extern s16 obj_debug_80330EA8[];

extern void object_8029CEDC(int, int group);
extern void object_8029CFB0(int, struct spawn *);
extern void object_8029D690(int);
extern OBJECT *obj_lib_8029E9AC(
	OBJECT *,
	SHORT,
	int shape,
	O_SCRIPT *script,
	SHORT px,
	SHORT py,
	SHORT pz,
	SHORT ax,
	SHORT ay,
	SHORT az
);
extern OBJECT *obj_lib_8029EDCC(OBJECT *, int, O_SCRIPT *script);
extern void obj_lib_8029F200(MTXF mf, VECF dst, VECF src);
extern void obj_lib_8029F274(MTXF mf, VECF dst, VECF src);
extern int obj_lib_802A0008(int);
extern float obj_lib_802A3634(float);
extern void obj_physics_802C89F0(void);
extern void mario_pos_get(float *x, float *y, float *z);
extern void mario_pos_set(float x, float y, float z);
extern void obj_physics_802C8BC8(int ismario, struct object *obj);
extern void obj_physics_802C8EC0(void);
extern void obj_physics_802C8F28(void);
extern void obj_sfx_802CA040(OBJ_SFX *sfx);
extern void obj_sfx_802CA144(NA_SE se);
extern void obj_sfx_802CA190(NA_SE se);
extern void obj_sfx_802CA1E0(NA_SE se);

#endif /* __SM64_OBJECT_H__ */
