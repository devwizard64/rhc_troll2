#ifndef __SM64_MAP_H__
#define __SM64_MAP_H__

typedef struct map_plane
{
	s16 type;
	s16 arg;
	s8 flag;
	s8 area;
	short y_min;
	short y_max;
	VECS v0;
	VECS v1;
	VECS v2;
	float nx;
	float ny;
	float nz;
	float nw;
	struct object *obj;
}
MAP_PLANE;

typedef struct map_list
{
	struct map_list *next;
	MAP_PLANE *plane;
}
MAP_LIST;

extern u8 map_8038BE30[0x60];
extern u32 map_data_8038BE90;
extern u32 map_data_8038BE98[16][16][6];
extern u32 map_data_8038D698[16][16][6];
extern void *map_data_8038EE98;
extern void *map_data_8038EE9C;
extern s16 map_data_8038EEA0;
extern u32 map_data_8038EEA4[12];

extern float map_80381900(float x, float y, float z, MAP_PLANE **ground);
extern void map_data_803833B8(
	SHORT scene,
	MAP_DATA *map_data,
	AREA_DATA *area_data,
	OBJ_DATA *obj_data
);

#endif /* __SM64_MAP_H__ */
