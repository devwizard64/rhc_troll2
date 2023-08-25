#ifndef __SM64_SAVE_H__
#define __SM64_SAVE_H__

#define stage_to_course(stage)  course_table[(stage)-1]

#define save_file_star_total(file)  save_file_star_range(file, 0, 24)

#define save_write()                save_file_write(save_index-1)
#define save_erase()                save_file_erase(save_index-1)
#define save_isactive()             save_file_isactive(save_index-1)
#define save_star_count(course)     save_file_star_count(save_index-1, course)
#define save_star_range(min, max)   save_file_star_range(save_index-1, min, max)
#define save_star_total()           save_file_star_total(save_index-1)
#define save_star_get(course)       save_file_star_get(save_index-1, course)
#define save_star_set(course, flag) 	save_file_star_set(save_index-1, course, flag)
#define save_coin_get(course)       save_file_coin_get(save_index-1, course)

typedef struct save_check
{
	u16 key;
	u16 sum;
}
SAVE_CHECK;

typedef struct save_data
{
	u32 time[4];
	u16 output;
	char pad[10];
	SAVE_CHECK check;
}
SAVE_DATA;

typedef struct save_file
{
	u8 stage;
	u8 scene;
	VECS pos;
	u32 flag;
	u8 star[25];
	u8 coin[15];
	SAVE_CHECK check;
}
SAVE_FILE;

typedef struct save
{
	SAVE_FILE file[4][2];
	SAVE_DATA data[2];
}
SAVE;

extern u8 save_mid_level;
extern u8 save_mid_course;
extern u8 save_mid_stage;
extern u8 save_mid_scene;
extern u8 save_mid_port;
extern char save_data_dirty;
extern char save_file_dirty;
extern u8 save_course;
extern u8 save_level;
extern u8 save_hiscore;
extern u8 save_myscore;
extern u8 save_star;
extern u8 save_jump;
extern s8 course_table[];

extern void save_file_write(int file);
extern void save_file_erase(int file);
extern void save_file_copy(int src, int dst);
extern void save_init(void);
extern void save_reset(void);
extern void save_set(SHORT coin, SHORT level);
extern int save_file_isactive(int file);
extern int save_hiscore_get(int course);
extern int save_file_star_count(int file, int course);
extern int save_file_star_range(int file, int min, int max);
extern void save_flag_set(unsigned int flag);
extern void save_flag_clr(unsigned int flag);
extern unsigned int save_flag_get(void);
extern int save_file_star_get(int file, int course);
extern void save_file_star_set(int file, int course, int flag);
extern int save_file_coin_get(int file, int course);
extern int save_cannon_get(void);
extern void save_cannon_set(void);
extern void save_cannon_clr(void);
extern void save_cap_set(SHORT x, SHORT y, SHORT z);
extern int save_cap_get(VECS pos);
extern void save_output_set(USHORT output);
extern USHORT save_output_get(void);
extern void save_cap_init(void);
extern void save_mid_clear(void);
extern void save_mid_set(PORT *port);
extern int save_mid_get(PORT *port);

#endif /* __SM64_SAVE_H__ */
