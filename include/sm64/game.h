#ifndef __SM64_GAME_H__
#define __SM64_GAME_H__

typedef struct staff
{
	u8 stage;
	u8 scene;
	u8 flag;
	u8 ang;
	VECS pos;
	const char **str;
}
STAFF;

typedef struct struct_8033B248
{
	u8 type;
	u8 stage;
	u8 scene;
	u8 port;
	u32 arg;
}
STRUCT_8033B248;

extern PLAYER player_data[1];
extern s16 game_8033B238;
extern s16 game_8033B23A;
extern s16 game_8033B23C;
extern void (*game_8033B240)(s16 *);
extern struct struct_8033B248 game_8033B248;
extern s16 game_8033B250;
extern s16 game_8033B252;
extern s16 game_8033B254;
extern s16 game_8033B256;
extern u32 game_8033B258;
extern s16 game_8033B25C;
extern s8 game_8033B25E;
extern HUD hud;
extern s8 game_8033B26E;
extern STAFF staff_data[];
extern PLAYER *mario;
extern s16 game_8032D940;
extern s8 game_8032D944;

extern int p_game_main(SHORT arg, int code);
extern int p_game_init(SHORT arg, int code);
extern int p_game_select(SHORT arg, int code);
extern int p_ending_se(SHORT arg, int code);

#endif /* __SM64_GAME_H__ */
