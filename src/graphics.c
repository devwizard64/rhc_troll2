#include <sm64.h>

#include <cart.h>
#include "ff/ff.h"

#include "PL.h"

#include "error.h"
#include "sprite.h"

CONTROLLER   controller_data[CONTROLLER_LEN+1];
OSContStatus cont_status[MAXCONTROLLERS];
OSContPad    cont_pad[MAXCONTROLLERS];
MOUSE mouse;

OSMesgQueue gfx_vi_mq;
OSMesgQueue gfx_dp_mq;
OSMesg gfx_vi_mbox;
OSMesg gfx_dp_mbox;
SC_CLIENT sc_client_gfx;

void *gfx_cimg[3] = {c_image_a, c_image_b, c_image_c};
void *gfx_auximg;
SC_TASK *gfx_task;
Gfx     *gfx_ptr;
char    *gfx_mem;
FRAME   *frame;

u8 cont_bitpattern;
s8 eeprom_status;

BANK anime_mario_bank;
BANK demo_bank;

u32 gfx_8032D5D0 = 0;
u32 gfx_frame = 0;
u16 gfx_vi = 0;
u16 gfx_dp = 0;
void (*gfx_callback)(void) = NULL;

CONTROLLER *cont_1 = &controller_data[0];
CONTROLLER *cont_2 = &controller_data[1];
CONTROLLER *controller = &controller_data[2];

DEMO *demo = NULL;
u16   demo_index = 0;

char gateway;
char emulator;

void (*gfx_draw_callback)(void);
char gfx_flag;
static u8 gfx_shift;
char stick_flag;

static FATFS fs;

#define HALT_REG_START_ADDR 0x0ff70000
#define HALT_REG_latency 0x5
#define HALT_REG_pulse 0x0c
#define HALT_REG_pageSize 0xd
#define HALT_REG_relDuration 0x2

extern void __osPiGetAccess(void);
extern void __osPiRelAccess(void);

static void WriteGatewayRegister(int active)
{
	register u32 stat;
	IO_WRITE(PI_BSD_DOM2_LAT_REG, HALT_REG_latency);
	IO_WRITE(PI_BSD_DOM2_PWD_REG, HALT_REG_pulse);
	IO_WRITE(PI_BSD_DOM2_PGS_REG, HALT_REG_pageSize);
	IO_WRITE(PI_BSD_DOM2_RLS_REG, HALT_REG_relDuration);
	__osPiGetAccess();
	stat = IO_READ(PI_STATUS_REG);
	while (stat & (PI_STATUS_IO_BUSY|PI_STATUS_DMA_BUSY))
	{
		stat = IO_READ(PI_STATUS_REG);
	}
	if (active) IO_WRITE(HALT_REG_START_ADDR, 0x01010101);
	else        IO_WRITE(HALT_REG_START_ADDR, 0x00000000);
	__osPiRelAccess();
}

static void cont_read(void)
{
	osRecvMesg(&si_mq, NULL, OS_MESG_BLOCK);
	osContGetReadData(cont_pad);
	if (gateway)
	{
		if ((cont_1->pad->button & (U_JPAD|D_JPAD)) == (U_JPAD|D_JPAD))
		{
			sys_halt = TRUE;
			WriteGatewayRegister(1);
			do
			{
				osContStartReadData(&si_mq);
				osRecvMesg(&si_mq, NULL, OS_MESG_BLOCK);
				osContGetReadData(cont_pad);
			}
			while ((cont_1->pad->button & (L_JPAD|R_JPAD)) != (L_JPAD|R_JPAD));
			WriteGatewayRegister(0);
			sys_halt = FALSE;
		}
	}
}

static void gfx_init_dp(void)
{
	gDPPipeSync(gfx_ptr++);
	gDPPipelineMode(gfx_ptr++, G_PM_1PRIMITIVE);
	gDPSetScissor(gfx_ptr++, G_SC_NON_INTERLACE, 0, 0, SCREEN_WD, SCREEN_HT);
	gDPSetCombineMode(gfx_ptr++, G_CC_SHADE, G_CC_SHADE);
	gDPSetTextureLOD(gfx_ptr++, G_TL_TILE);
	gDPSetTextureLUT(gfx_ptr++, G_TT_NONE);
	gDPSetTextureDetail(gfx_ptr++, G_TD_CLAMP);
	gDPSetTexturePersp(gfx_ptr++, G_TP_PERSP);
	gDPSetTextureFilter(gfx_ptr++, G_TF_BILERP);
	gDPSetTextureConvert(gfx_ptr++, G_TC_FILT);
	gDPSetCombineKey(gfx_ptr++, G_CK_NONE);
	gDPSetAlphaCompare(gfx_ptr++, G_AC_NONE);
	gDPSetRenderMode(gfx_ptr++, G_RM_OPA_SURF, G_RM_OPA_SURF2);
	gDPSetColorDither(gfx_ptr++, G_CD_MAGICSQ);
	gDPSetCycleType(gfx_ptr++, G_CYC_FILL);
	gDPPipeSync(gfx_ptr++);
}

static void gfx_init_sp(void)
{
	gSPClearGeometryMode(
		gfx_ptr++,
		G_SHADE | G_SHADING_SMOOTH | G_CULL_BOTH | G_FOG | G_LIGHTING |
		G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR | G_LOD
	);
	gSPSetGeometryMode(
		gfx_ptr++, G_SHADE | G_SHADING_SMOOTH | G_CULL_BACK | G_LIGHTING
	);
	gSPNumLights(gfx_ptr++, NUMLIGHTS_1);
	gSPTexture(gfx_ptr++, 0x0000, 0x0000, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF);
}

static void gfx_init_zimg(void)
{
	gDPPipeSync(gfx_ptr++);
	gDPSetDepthSource(gfx_ptr++, G_ZS_PIXEL);
	gDPSetDepthImage(gfx_ptr++, z_image);
	gDPSetColorImage(
		gfx_ptr++, G_IM_FMT_RGBA, G_IM_SIZ_16b, SCREEN_WD, z_image
	);
	gDPSetFillColor(gfx_ptr++, 0x00010001U*GPACK_ZDZ(G_MAXFBZ, 0));
	gDPFillRectangle(
		gfx_ptr++, 0, BORDER_HT, SCREEN_WD-1, SCREEN_HT-BORDER_HT-1
	);
}

static void gfx_init_cimg(void)
{
	gDPPipeSync(gfx_ptr++);
	gDPSetCycleType(gfx_ptr++, G_CYC_1CYCLE);
	gDPSetColorImage(
		gfx_ptr++, G_IM_FMT_RGBA, G_IM_SIZ_16b, SCREEN_WD, gfx_cimg[gfx_dp]
	);
#if BORDER_HT > 0
	gDPSetScissor(
		gfx_ptr++, G_SC_NON_INTERLACE,
		0, BORDER_HT, SCREEN_WD, SCREEN_HT-BORDER_HT
	);
#endif
}

void gfx_clear(u32 fill)
{
	gDPPipeSync(gfx_ptr++);
	gDPSetRenderMode(gfx_ptr++, G_RM_OPA_SURF, G_RM_OPA_SURF2);
	gDPSetCycleType(gfx_ptr++, G_CYC_FILL);
	gDPSetFillColor(gfx_ptr++, fill);
	gDPFillRectangle(
		gfx_ptr++, 0, BORDER_HT, SCREEN_WD-1, SCREEN_HT-BORDER_HT-1
	);
	gDPPipeSync(gfx_ptr++);
	gDPSetCycleType(gfx_ptr++, G_CYC_1CYCLE);
}

void gfx_vp_clear(Vp *vp, u32 fill)
{
	SHORT ulx = (vp->vp.vtrans[0]-vp->vp.vscale[0])/4 + 1;
	SHORT uly = (vp->vp.vtrans[1]-vp->vp.vscale[1])/4 + 1;
	SHORT lrx = (vp->vp.vtrans[0]+vp->vp.vscale[0])/4 - 1 - 1;
	SHORT lry = (vp->vp.vtrans[1]+vp->vp.vscale[1])/4 - 1 - 1;
	gDPPipeSync(gfx_ptr++);
	gDPSetRenderMode(gfx_ptr++, G_RM_OPA_SURF, G_RM_OPA_SURF2);
	gDPSetCycleType(gfx_ptr++, G_CYC_FILL);
	gDPSetFillColor(gfx_ptr++, fill);
	gDPFillRectangle(gfx_ptr++, ulx, uly, lrx, lry);
	gDPPipeSync(gfx_ptr++);
	gDPSetCycleType(gfx_ptr++, G_CYC_1CYCLE);
}

static void gfx_draw_border(void)
{
	gDPPipeSync(gfx_ptr++);
	gDPSetScissor(gfx_ptr++, G_SC_NON_INTERLACE, 0, 0, SCREEN_WD, SCREEN_HT);
	gDPSetRenderMode(gfx_ptr++, G_RM_OPA_SURF, G_RM_OPA_SURF2);
	gDPSetCycleType(gfx_ptr++, G_CYC_FILL);
#if BORDER_HT > 0
	if (!(gfx_flag & GFX_NOBORDER))
	{
		gDPSetFillColor(gfx_ptr++, 0x00000000);
		gDPFillRectangle(gfx_ptr++, 0, 0, SCREEN_WD-1, BORDER_HT-1);
		gDPFillRectangle(
			gfx_ptr++, 0, SCREEN_HT-BORDER_HT, SCREEN_WD-1, SCREEN_HT-1
		);
	}
#endif
}

void gfx_vp_scissor(Vp *vp)
{
	SHORT ulx = (vp->vp.vtrans[0]-vp->vp.vscale[0])/4 + 1;
	SHORT uly = (vp->vp.vtrans[1]-vp->vp.vscale[1])/4 + 1;
	SHORT lrx = (vp->vp.vtrans[0]+vp->vp.vscale[0])/4 - 1;
	SHORT lry = (vp->vp.vtrans[1]+vp->vp.vscale[1])/4 - 1;
	gDPSetScissor(gfx_ptr++, G_SC_NON_INTERLACE, ulx, uly, lrx, lry);
}

static void gfx_make_task(void)
{
	size_t len = gfx_ptr - frame->gfx;
	gfx_task->mq = &gfx_dp_mq;
	gfx_task->msg = (OSMesg)2;
	gfx_task->task.t.type = M_GFXTASK;
	gfx_task->task.t.ucode_boot = rspbootTextStart;
	gfx_task->task.t.ucode_boot_size =
		(char *)rspbootTextEnd - (char *)rspbootTextStart;
	gfx_task->task.t.flags = 0;
	gfx_task->task.t.ucode = gspFast3D_fifoTextStart;
	gfx_task->task.t.ucode_data = gspFast3D_fifoDataStart;
	gfx_task->task.t.ucode_size = SP_UCODE_SIZE;
	gfx_task->task.t.ucode_data_size = SP_UCODE_DATA_SIZE;
	gfx_task->task.t.dram_stack = gfx_sp_stack;
	gfx_task->task.t.dram_stack_size = SP_DRAM_STACK_SIZE8;
	gfx_task->task.t.output_buff = gfx_fifo;
	gfx_task->task.t.output_buff_size = gfx_fifo + FIFO_LEN;
	gfx_task->task.t.data_ptr = (u64 *)frame->gfx;
	gfx_task->task.t.data_size = sizeof(Gfx)*len;
	gfx_task->task.t.yield_data_ptr = gfx_sp_yield;
	gfx_task->task.t.yield_data_size = OS_YIELD_DATA_SIZE;
}

void gfx_start(void)
{
	segment_write();
	gfx_init_dp();
	gfx_init_sp();
	if (!(gfx_flag & GFX_NODEPTH)) gfx_init_zimg();
	gfx_init_cimg();
}

extern Gfx gfx_hypercam[];
extern Gfx gfx_wincursor[];
extern Gfx gfx_demomode[];

void gfx_end(void)
{
	gfx_draw_border();
	if (debug_time) time_draw();
	if (gfx_draw_callback) gfx_draw_callback();
	if (gfx_flag & GFX_MOUSE)
	{
		gSPDisplayList(gfx_ptr++, gfx_wincursor);
		gSPTextureRectangle(
			gfx_ptr++, 4*mouse.x, 4*mouse.y, 4*(mouse.x+11), 4*(mouse.y+19),
			G_TX_RENDERTILE, 0, 0, 0x400, 0x400
		);
	}
	if (gfx_flag & GFX_HYPERCAM)
	{
		gSPDisplayList(gfx_ptr++, gfx_hypercam);
		if (gfx_shift > 0)
		{
			unsigned int wd = SCREEN_WD >> gfx_shift;
			unsigned int ht = SCREEN_HT >> gfx_shift;
			gDPPipeSync(gfx_ptr++);
			gDPSetTextureFilter(gfx_ptr++, G_TF_BILERP);
			gDPSetColorImage(
				gfx_ptr++, G_IM_FMT_RGBA, G_IM_SIZ_16b, wd, gfx_auximg
			);
			gDPSetScissor(gfx_ptr++, G_SC_NON_INTERLACE, 0, 0, wd, ht);
			sprite_draw(
				gfx_cimg[gfx_dp], G_IM_FMT_RGBA, G_IM_SIZ_16b, TRUE,
				SCREEN_WD, SCREEN_HT, 0, 0, 4*wd, 4*ht
			);
			gDPPipeSync(gfx_ptr++);
			gDPSetColorImage(
				gfx_ptr++, G_IM_FMT_RGBA, G_IM_SIZ_16b, SCREEN_WD,
				gfx_cimg[gfx_dp]
			);
			gDPSetScissor(
				gfx_ptr++, G_SC_NON_INTERLACE, 0, 0, SCREEN_WD, SCREEN_HT
			);
			sprite_draw(
				gfx_auximg, G_IM_FMT_RGBA, G_IM_SIZ_16b, TRUE,
				wd, ht, 0, 0, 4*SCREEN_WD, 4*SCREEN_HT
			);
		}
	}
	if (gateway)
	{
		float a = sin(0x200*gfx_frame);
		if (a < 0) a = -a;
		gDPSetPrimColor(gfx_ptr++, 0, 0, 0, 0, 0, (int)(0xFF*a));
		gSPDisplayList(gfx_ptr++, gfx_demomode);
	}
	gDPFullSync(gfx_ptr++);
	gSPEndDisplayList(gfx_ptr++);
}

static void gfx_reset(void)
{
	if (reset_timer != 0 && reset_frame < 15)
	{
		int y;
		int x;
		int vi = gfx_vi == 0 ? 2 : gfx_vi-1;
		u64 *cimg = gfx_cimg[vi];
		cimg += SCREEN_WD/4 * reset_frame++;
		for (y = 0; y < SCREEN_HT/15; y++)
		{
			for (x = 0; x < SCREEN_WD/4; x++) *cimg++ = 0;
			cimg += SCREEN_WD/4 * (15-1);
		}
	}
	osWritebackDCacheAll();
	osRecvMesg(&gfx_vi_mq, NULL, OS_MESG_BLOCK);
	osRecvMesg(&gfx_vi_mq, NULL, OS_MESG_BLOCK);
}

static void frame_init(void)
{
	frame = &frame_data[0];
	gfx_task = &frame->task;
	gfx_ptr = frame->gfx;
	gfx_mem = (char *)frame->gfx + sizeof(frame->gfx);
	gfx_start();
	gfx_clear(0x00000000);
	gfx_end();
	gfx_make_task();
	sc_queue_gfxtask(&frame->task);
	if (!emulator) gfx_dp++;
	gfx_frame++;
}

static void frame_start(void)
{
	frame = &frame_data[gfx_frame & 1];
	gfx_task = &frame->task;
	gfx_ptr = frame->gfx;
	gfx_mem = (char *)frame->gfx + sizeof(frame->gfx);
}

static void frame_end(void)
{
	static char done;
	char flag = done;
	gfx_make_task();
	time_gfxcpu(TIME_GFXCPU_ENDFRM);
	if (!flag)
	{
		osRecvMesg(&gfx_dp_mq, NULL, OS_MESG_BLOCK);
		done = TRUE;
	}
	if (gfx_callback)
	{
		gfx_callback();
		gfx_callback = NULL;
	}
	if (!(gfx_flag & GFX_HYPERCAM) || !(gfx_frame % (3+gfx_shift)))
	{
		sc_queue_gfxtask(&frame->task);
		done = FALSE;
	}
	time_gfxcpu(TIME_GFXCPU_ENDRDP);
	if (!(gfx_flag & GFX_60)) osRecvMesg(&gfx_vi_mq, NULL, OS_MESG_BLOCK);
	if (!flag)
	{
		osViSwapBuffer(gfx_cimg[gfx_vi]);
	}
	time_gfxcpu(TIME_GFXCPU_END);
	osRecvMesg(&gfx_vi_mq, NULL, OS_MESG_BLOCK);
	if (!done && !emulator)
	{
		if (++gfx_vi == 3) gfx_vi = 0;
		if (++gfx_dp == 3) gfx_dp = 0;
	}
	gfx_frame++;
}

UNUSED static void demo_record(void)
{
	static DEMO record = {0};
	u8 button = (cont_1->held & 0xF000) >> 8 | (cont_1->held & 0x000F);
	s8 stick_x = cont_1->stick_x;
	s8 stick_y = cont_1->stick_y;
	if (stick_x > -8 && stick_x < 8) stick_x = 0;
	if (stick_y > -8 && stick_y < 8) stick_y = 0;
	if
	(
		record.count == 0xFF ||
		button  != record.button  ||
		stick_x != record.stick_x ||
		stick_y != record.stick_y
	)
	{
		/*printf(
			"\t.byte %3d, %3d, %3d, 0x%02X\n",
			record.count, record.stick_x, record.stick_y, record.button
		);*/
		record.count   = 0;
		record.button  = button;
		record.stick_x = stick_x;
		record.stick_y = stick_y;
	}
	record.count++;
}

static void cont_update_stick(CONTROLLER *cont)
{
	UNUSED int i;
	cont->x = 0;
	cont->y = 0;
	if (cont->stick_x <= -8) cont->x = cont->stick_x + 6;
	if (cont->stick_x >=  8) cont->x = cont->stick_x - 6;
	if (cont->stick_y <= -8) cont->y = cont->stick_y + 6;
	if (cont->stick_y >=  8) cont->y = cont->stick_y - 6;
	cont->d = sqrtf(cont->x*cont->x + cont->y*cont->y);
	if (cont->d > 64)
	{
		cont->x *= 64/cont->d;
		cont->y *= 64/cont->d;
		cont->d  = 64;
	}
}

static void demo_update(void)
{
	controller_data[0].pad->button &= 0xFF3F;
	if (demo)
	{
		if (controller_data[1].pad)
		{
			controller_data[1].pad->stick_x = 0;
			controller_data[1].pad->stick_y = 0;
			controller_data[1].pad->button  = 0;
		}
		if (demo->count == 0)
		{
			controller_data[0].pad->stick_x = 0;
			controller_data[0].pad->stick_y = 0;
			controller_data[0].pad->button  = 0x0080;
		}
		else
		{
			u16 start = controller_data[0].pad->button & START_BUTTON;
			controller_data[0].pad->stick_x = demo->stick_x;
			controller_data[0].pad->stick_y = demo->stick_y;
			controller_data[0].pad->button =
				((demo->button & 0xF0) << 8) + (demo->button & 0x0F);
			controller_data[0].pad->button |= start;
			if (--demo->count == 0) demo++;
		}
	}
}

static void mouse_update(void)
{
	int x;
	int y;
	u16 button = 0;
	int stick_x = 0;
	int stick_y = 0;
	if (mouse.pad)
	{
		button = mouse.pad->button;
		stick_x = mouse.pad->stick_x;
		stick_y = mouse.pad->stick_y;
	}
	if (!(gfx_flag & GFX_HYPERCAM))
	{
		button |= controller->held;
		stick_x += controller->stick_x / 16;
		stick_y += controller->stick_y / 16;
	}
	x = mouse.x + stick_x;
	y = mouse.y - stick_y;
	if (x <           0) x = 0;
	if (x > SCREEN_WD-1) x = SCREEN_WD-1;
	if (y <           0) y = 0;
	if (y > SCREEN_HT-1) y = SCREEN_HT-1;
	mouse.x = x;
	mouse.y = y;
	mouse.down = button & ~mouse.held;
	mouse.held = button;
}

static void cont_update(void)
{
	int i;
	if (cont_bitpattern != 0) cont_read();
	demo_update();
	for (i = 0; i < CONTROLLER_LEN; i++)
	{
		CONTROLLER *cont = &controller_data[i];
		if (cont->pad)
		{
			cont->stick_x = cont->pad->stick_x;
			cont->stick_y = cont->pad->stick_y;
			cont->down    = cont->pad->button & (cont->pad->button^cont->held);
			cont->held    = cont->pad->button;
			if (stick_flag && cont->stick_y < 0) cont->stick_y = 0;
			cont_update_stick(cont);
		}
		else
		{
			cont->stick_x = 0;
			cont->stick_y = 0;
			cont->down    = 0;
			cont->held    = 0;
			cont->x       = 0;
			cont->y       = 0;
			cont->d       = 0;
		}
	}
	controller->stick_x = cont_1->stick_x;
	controller->stick_y = cont_1->stick_y;
	controller->x       = cont_1->x;
	controller->y       = cont_1->y;
	controller->d       = cont_1->d;
	controller->down    = cont_1->down;
	controller->held    = cont_1->held;
	mouse_update();
}

static void cont_init(void)
{
	int i;
	int c;
	osContInit(&si_mq, &cont_bitpattern, cont_status);
	if (!gateway) eeprom_status = osEepromProbe(&si_mq);
	c = 0;
	for (i = 0; i < MAXCONTROLLERS; i++)
	{
		if (!cont_status[i].errno)
		{
			if (cont_status[i].type == CONT_TYPE_MOUSE)
			{
				if (!mouse.pad) mouse.pad = &cont_pad[i];
			}
			else
			{
				if (c < CONTROLLER_LEN)
				{
					controller_data[c].status = &cont_status[i];
					controller_data[c].pad    = &cont_pad[i];
					c++;
				}
			}
		}
	}
}

static char GetRegion(void)
{
	u32 data;
	osPiReadIo(0x3C, &data);
	return data >> 8;
}

extern const char _MainSegmentRomStart[];
extern const char _MainSegmentRomEnd[];
extern const char _GfxSegmentRomStart[];
extern const char _GfxSegmentRomEnd[];
extern const char _AnimeSegmentRomStart[];
extern const char _DemoSegmentRomStart[];

static void gfx_init(void)
{
	char region = GetRegion();
	if (region == 'G' || region == 'L') gateway = TRUE;
	if (PL_GetMagic() == 'P') emulator = TRUE;
	segment_set(0x00, (void *)0x80000000);
	osCreateMesgQueue(&gfx_dp_mq, &gfx_dp_mbox, 1);
	osCreateMesgQueue(&gfx_vi_mq, &gfx_vi_mbox, 1);
	bank_init(
		&anime_mario_bank, _AnimeSegmentRomStart, mem_alloc(16384, MEM_ALLOC_L)
	);
	bank_init(&demo_bank, _DemoSegmentRomStart, mem_alloc(2048, MEM_ALLOC_L));
	mem_load_data(
		SEG_MAIN, _MainSegmentRomStart, _MainSegmentRomEnd, MEM_ALLOC_L
	);
	mem_load_szp(SEG_GFX, _GfxSegmentRomStart, _GfxSegmentRomEnd);
}

extern const char _SetupSegmentRomStart[];
extern const char _SetupSegmentRomEnd[];

extern P_SCRIPT p_main[];

void gfx_main(UNUSED void *arg)
{
	P_SCRIPT *pc;
	gfx_init();
	cont_init();
	save_init();
	if (!gateway)
	{
		cart_init();
		switch (f_mount(&fs, "", 1))
		{
		case FR_OK:
			break;
		case FR_NO_FILESYSTEM:
			error_code = 2;
			break;
		default:
			error_code = 2;
			break;
		}
		if (emulator && error_code)
		{
			char *dst = (char *)0x80400000;
			char *src = dst + 2*1024*960;
			mem_dma(src, _SetupSegmentRomStart, _SetupSegmentRomEnd);
			slidec(src, dst);
			error_code = 255;
		}
	}
	sc_client_init(2, &sc_client_gfx, &gfx_vi_mq, (OSMesg)1);
	pc = segment_to_virtual(p_main);
	Na_BGM_play(2, NA_SEQ_SE, 0);
	aud_output(save_output_get());
	frame_init();
	for (;;)
	{
		if (reset_timer != 0)
		{
			gfx_reset();
			continue;
		}
		time_gfxcpu(TIME_GFXCPU_START);
		if (cont_bitpattern != 0) osContStartReadData(&si_mq);
		aud_update();
		frame_start();
		cont_update();
		if (gateway && emulator) error_code = 1;
		if (error_code) error_draw();
		else            pc = p_script_main(pc);
		frame_end();
		if (debug_mem) dprintf(180, 20, "BUF %d", gfx_mem-(char *)gfx_ptr);
	}
}

int p_hypercam(SHORT arg, int code)
{
	int result = code;
	switch (arg)
	{
	case 0:
		gfx_flag &= ~(GFX_MOUSE|GFX_HYPERCAM);
		aud_output(save_output_get());
		break;
	case 1:
		result = 0;
		if (mario->star < 3)
		{
			gfx_flag |= GFX_MOUSE|GFX_HYPERCAM;
			aud_output(1);
			result = 1;
		}
		break;
	case 2:
		if (gfx_shift > 0)
		{
			unsigned int wd = 320 >> gfx_shift;
			unsigned int ht = 240 >> gfx_shift;
			gfx_auximg = mem_alloc(2*wd*ht, MEM_ALLOC_L);
		}
		break;
	case 3:
		gfx_shift = 0;
		break;
	case 4:
		if (gfx_shift < 4) gfx_shift++;
		break;
	}
	return result;
}
