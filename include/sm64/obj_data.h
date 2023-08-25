#ifndef __SM64_OBJ_DATA_H__
#define __SM64_OBJ_DATA_H__

#define P_OBJ_START             31
#define P_OBJ_END               (P_OBJ_START+(-1))

#define M_EXT_NULL      0
#define M_EXT_AY        1
#define M_EXT_AY_ARG    2
#define M_EXT_XYZ       3
#define M_EXT_AY_CODE   4

#define P_OBJ(obj, ay, px, py, pz, arg) \
	(OBJ_DATA)((P_OBJ_START+P_OBJ_##obj) | (ay) << 9), px, py, pz, arg

typedef struct prg_obj
{
	O_SCRIPT *script;
	s16 shape;
	s16 arg;
}
PRG_OBJ;

typedef struct map_obj
{
	u8 index;
	u8 ext;
	u8 code;
	u8 shape;
	O_SCRIPT *script;
}
MAP_OBJ;

extern PRG_OBJ prg_obj_data[];
extern MAP_OBJ map_obj_data[];

extern void prg_obj_main(SHORT scene, OBJ_DATA *data);
extern void obj_data_main(SHORT scene, OBJ_DATA *data);
extern void map_obj_main(SHORT scene, MAP_DATA **data);

#endif /* __SM64_OBJ_DATA_H__ */
