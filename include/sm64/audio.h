#ifndef __SM64_AUDIO_H__
#define __SM64_AUDIO_H__

extern u32 aud_env_se_8033B0A0[];
extern VECF aud_0;
extern OSMesgQueue aud_vi_mq;
extern OSMesg aud_vi_mbox;
extern SC_CLIENT sc_client_aud;
extern u8 aud_mute;
extern u8 aud_lock;
extern u16 bgm_stage;
extern u16 bgm_shell;
extern u16 bgm_special;
extern unsigned char aud_endless;
extern u32 aud_8032D618[4];
extern s16 aud_output_table[];
extern NA_SE aud_env_se_data[];

extern void (*aud_callback)(short *buffer, unsigned int size);

extern void aud_mute_reset(void);
extern void aud_mute_start(int flag);
extern void aud_mute_end(int flag);
extern void aud_se_lock(void);
extern void aud_se_unlock(void);
extern void aud_output(USHORT type);
extern void aud_face_sfx(SHORT flag);
extern void aud_se_wave(void);
extern void bgm_endless(void);
extern void bgm_play(USHORT mode, USHORT bgm, SHORT fadein);
extern void aud_fadeout(SHORT fadeout);
extern void bgm_fadeout(SHORT fadeout);
extern void bgm_stage_play(USHORT bgm);
extern void bgm_shell_play(void);
extern void bgm_shell_stop(void);
extern void bgm_special_play(USHORT bgm);
extern void bgm_special_fadeout(void);
extern void bgm_special_stop(void);
extern void aud_env_se_play(int se, VECF pos);
extern void aud_update(void);
extern void aud_main(void *arg);

#endif /* __SM64_AUDIO_H__ */
