#ifndef __SM64_TITLE_BG_H__
#define __SM64_TITLE_BG_H__

extern s32 title_bg_timer;
extern s32 title_bg_count;
extern s16 title_bg_frame;
extern s32 title_bg_alpha;

extern void *s_logo_shape(int code, SHAPE *shape, void *data);
extern void *s_logo_symbol(int code, SHAPE *shape, void *data);
extern void *s_title_bg(int code, SHAPE *shape, void *data);
extern void *s_gameover_bg(int code, SHAPE *shape, void *data);

#endif /* __SM64_TITLE_BG_H__ */
