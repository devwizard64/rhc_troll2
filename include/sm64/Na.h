#ifndef __SM64_NA_H__
#define __SM64_NA_H__

#define Na_SE_fixed(se)         Na_SE_play(se, Na_0)
#define Na_SE_obj(se, obj)      Na_SE_play(se, (obj)->list.s.view)

#define Na_SE_lock()            Na_IO_lock(2, 0x037A)
#define Na_SE_unlock()          Na_IO_unlock(2, 0x037A)

typedef u32 NA_SE;

typedef struct Na_bgmctl
{
	s16 a_voice;
	s16 a_vol;
	s16 a_time;
	s16 b_voice;
	s16 b_vol;
	s16 b_time;
}
NA_BGMCTL;

typedef struct Na_cfg
{
	u32 freq;
	u8 voice;
	u8 e_filt;
	u16 e_size;
	u16 e_vol;
	u16 vol;
	size_t _0C;
	size_t _10;
	size_t _14;
	size_t _18;
}
NA_CFG;

extern u64 Na_heap[0x33000/8];

extern s32 Na_g_80332E50;
extern s32 Na_g_80332E54;
extern u8 Na_msg_se_table[];
extern NA_SE Na_msg_se_data[15];
extern u8 Na_g_80332F40;
extern u8 Na_g_80332F44;
extern u8 Na_g_80332FBC;
extern u8 Na_g_80332FC0;
extern s16 *Na_bgmctl_table[];
extern NA_BGMCTL Na_bgmctl_data[];
extern u8 Na_g_803330C0[][3];
extern u16 Na_g_80333138[];
extern u8 Na_BGM_vol[];
extern u8 Na_g_803331AC;
extern u8 Na_g_803331B0;
extern u8 Na_g_803331B4[];
extern u8 Na_g_803331C0[];
extern u8 Na_g_803331CC[];
extern u8 Na_g_803331D8[];
extern u8 Na_g_803331E4[];
extern VECF Na_0;
extern VECF Na_1;
extern u8 Na_IO_status[];
extern u8 Na_g_80333214;
extern u8 Na_g_80333218;
extern u8 Na_g_8033321C;
extern u16 Na_g_80333220;
extern u8 Na_g_80333224;
extern u16 Na_g_80333228;
extern u8 Na_g_8033322C;
extern u8 Na_g_80333230;
extern u8 Na_g_80333234;
extern u8 Na_g_80333238;
extern u8 Na_g_8033323C;
extern NA_SE Na_g_80333240[];
extern u8 Na_g_80333280[];
extern u8 Na_g_80333290[];
extern NA_CFG Na_cfg_data[];
extern s16 Na_data_80333498[];
extern f32 Na_data_80333598[];
extern f32 Na_freq_data[];
extern u8 Na_data_80333B94[];
extern u8 Na_data_80333BA4[];
extern s8 Na_data_80333BB4[];
extern s16 env_default[];
extern s16 *wave_table[];
extern u16 Na_data_80333DE0[];
extern f32 Na_pan_phone[];
extern f32 Na_pan_wide[];
extern f32 Na_pan_stereo[];
extern f32 Na_rate_136A[];
extern f32 Na_rate_136B[];
extern f32 Na_rate_144A[];
extern f32 Na_rate_144B[];
extern f32 Na_rate_128A[];
extern f32 Na_rate_128B[];
extern s16 Na_tick_rate;
extern s8 Na_data_80334FF8;
extern size_t Na_heap_size;
extern size_t Na_data_80335000;
extern volatile u32 Na_data_80335004;
extern s8 Na_data_80335008;

extern void Na_load(void);
extern SC_TASK *Na_main(void);
extern void Na_SE_play(NA_SE se, f32 *pos);
extern void Na_update(void);
extern void Na_SEQ_fadeout(u8, u16);
extern void Na_g_803206BC(u8, u8, u16);
extern void Na_SEQ_mute(u8, u16, u8);
extern void Na_SEQ_unmute(u8, u16);
extern void Na_pause(u8);
extern void Na_init(void);
extern void Na_g_80321474(u32, f32 *);
extern void Na_g_80321584(f32 *);
extern void Na_SE_clear(void);
extern void Na_IO_lock(u8, u16);
extern void Na_IO_unlock(u8, u16);
extern void Na_g_803218D8(u8, u8);
extern void Na_g_803218F4(u8);
extern void Na_BGM_play(u8, u16, u16);
extern void Na_BGM_stop(u16);
extern void Na_BGM_fadeout(u16, u16);
extern void Na_g_80321D38(void);
extern u16 Na_g_80321D5C(void);
extern void Na_BGM_push(u8, u8, u8, u16);
extern void Na_BGM_pull(u16);
extern void Na_fadeout(u16);
extern void Na_g_80322078(void);
extern void Na_g_803220B4(void);
extern void Na_g_803220F0(void);
extern void Na_g_8032212C(void);
extern void Na_g_80322168(u8);
extern void Na_g_803221B8(void);
extern void Na_g_803221F4(void);
extern void Na_mode(u8);
extern void Na_output(int);

#endif /* __SM64_NA_H__ */
