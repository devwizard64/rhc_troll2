#ifndef __SM64_GRAPHICS_H__
#define __SM64_GRAPHICS_H__

#define GFX_LEN                 6400
#define FIFO_SIZE               0x10000
#define FIFO_LEN                (FIFO_SIZE/8)

#define CONTROLLER_LEN          2

#define GFX_NODEPTH     1
#define GFX_NOBORDER    2
#define GFX_60          4
#define GFX_MODEMASK    7
#define GFX_MOUSE       8
#define GFX_HYPERCAM    16

typedef struct frame
{
	Gfx gfx[GFX_LEN];
	SC_TASK task;
}
FRAME;

typedef struct controller
{
	s16 stick_x;
	s16 stick_y;
	float x;
	float y;
	float d;
	u16 held;
	u16 down;
	OSContStatus *status;
	OSContPad *pad;
}
CONTROLLER;

typedef struct mouse
{
	short x;
	short y;
	u16 held;
	u16 down;
	OSContPad *pad;
}
MOUSE;

typedef struct demo
{
	u8 count;
	s8 stick_x;
	s8 stick_y;
	u8 button;
}
DEMO;

extern u16 c_image_a[SCREEN_HT][SCREEN_WD];
extern u16 c_image_b[SCREEN_HT][SCREEN_WD];
extern u16 c_image_c[SCREEN_HT][SCREEN_WD];
extern u16 z_image[SCREEN_HT][SCREEN_WD];
extern u64 gfx_fifo[FIFO_LEN];

extern CONTROLLER controller_data[CONTROLLER_LEN+1];
extern OSContStatus cont_status[MAXCONTROLLERS];
extern OSContPad cont_pad[MAXCONTROLLERS];
extern MOUSE mouse;
extern OSMesgQueue gfx_vi_mq;
extern OSMesgQueue gfx_dp_mq;
extern OSMesg gfx_vi_mbox;
extern OSMesg gfx_dp_mbox;
extern SC_CLIENT sc_client_gfx;
extern void *gfx_cimg[3];
extern SC_TASK *gfx_task;
extern Gfx *gfx_ptr;
extern char *gfx_mem;
extern FRAME *frame;
extern u8 cont_bitpattern;
extern s8 eeprom_status;
extern BANK anime_mario_bank;
extern BANK demo_bank;
extern u32 gfx_8032D5D0;
extern u32 gfx_frame;
extern u16 gfx_vi;
extern u16 gfx_dp;
extern void (*gfx_callback)(void);
extern CONTROLLER *cont_1;
extern CONTROLLER *cont_2;
extern CONTROLLER *controller;
extern DEMO *demo;
extern u16 demo_index;

extern char gateway;
extern char emulator;

extern void (*gfx_draw_callback)(void);
extern char gfx_flag;
extern char stick_flag;

extern void gfx_clear(u32 fill);
extern void gfx_vp_clear(Vp *vp, u32 fill);
extern void gfx_vp_scissor(Vp *vp);
extern void gfx_start(void);
extern void gfx_end(void);
extern void gfx_main(void *arg);

#endif /* __SM64_GRAPHICS_H__ */
