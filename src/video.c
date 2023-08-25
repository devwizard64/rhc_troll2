#include <sm64.h>

#include "sprite.h"

typedef struct video
{
	const char *src;
	unsigned short wd;
	unsigned short ht;
	short x;
	short y;
	unsigned short w;
	unsigned short h;
	short frame;
	short timer;
	unsigned int buf;
}
VIDEO;

static VIDEO *video;
static short *video_buf;
static short *video_dst[2];
static long video_src;
static unsigned short video_pki;
static unsigned short video_pkn;
static unsigned short video_idx;
static short video_bit;
static short video_cnt;
static short video_frame;
static short video_timer;

static void video_decode(void)
{
	static short buffer[4096];
	unsigned int size = 2*video->buf;
	short *src = video_buf;
	short *dst;
	short *end;
	int pki;
	int pkn;
	int idx;
	int bit;
	int cnt;
	OSIoMesg mb;
	OSMesgQueue mq;
	OSMesg mbox[1];
	osCreateMesgQueue(&mq, mbox, 1);
	osPiStartDma(&mb, OS_MESG_PRI_HIGH, OS_READ, video_src, src, size, &mq);
	osInvalDCache(src, size);
	dst = video_dst[video_frame & 1];
	end = dst + video->wd*video->ht;
	pki = video_pki;
	pkn = video_pkn;
	idx = video_idx;
	bit = video_bit << 16;
	cnt = video_cnt;
	for (;;)
	{
		while (pkn > 0)
		{
			if (dst == end) break;
			*dst++ = buffer[idx++ & 4095] = buffer[pki++ & 4095];
			pkn--;
		}
		if (dst == end) break;
		if (cnt == 0)
		{
			cnt = 16;
			bit = *src++ << 16;
		}
		if (bit < 0)
		{
			*dst++ = buffer[idx++ & 4095] = *src++;
		}
		else
		{
			unsigned short x = *src++;
			pki = idx - ((x & 0xFFF)+1);
			pkn = (x >> 12) + 3;
		}
		bit <<= 1;
		cnt--;
	}
	video_src += (char *)src - (char *)video_buf;
	video_pki = pki;
	video_pkn = pkn;
	video_idx = idx;
	video_bit = bit >> 16;
	video_cnt = cnt;
	osRecvMesg(&mq, NULL, OS_MESG_BLOCK);
}

/******************************************************************************/

extern const char _Change_vidSegmentRomStart[];
extern const char _Movie_vidSegmentRomStart[];
extern const char _Scatman_vidSegmentRomStart[];

static VIDEO video_table[] =
{
	{
		_Change_vidSegmentRomStart, 256, 192,
		4*0, 4*0, 4*320, 4*240,
		86, 0, 41737,
	},
	{
		_Movie_vidSegmentRomStart, 160, 120,
		4*0, 4*0, 4*320, 4*240,
		52, 1, 7920,
	},
	{
		_Scatman_vidSegmentRomStart, 100, 100,
		4*34, 4*98, 4*100, 4*100,
		209, 0, 4898,
	},
};

static void video_draw(void)
{
	gDPPipeSync(gfx_ptr++);
	gDPSetCombineMode(gfx_ptr++, G_CC_DECALRGBA, G_CC_DECALRGBA);
	gSPSetOtherMode(
		gfx_ptr++, G_SETOTHERMODE_H, 0, 24,
		G_PM_NPRIMITIVE |
		G_CYC_1CYCLE |
		G_TP_NONE |
		G_TD_CLAMP |
		G_TL_TILE |
		G_TT_NONE |
		G_TF_BILERP |
		G_TC_FILT |
		G_CK_NONE |
		G_CD_MAGICSQ |
		G_AD_DISABLE |
		15
	);
	gSPSetOtherMode(
		gfx_ptr++, G_SETOTHERMODE_L, 0, 32,
		G_RM_OPA_SURF | G_RM_OPA_SURF2 |
		G_ZS_PIXEL |
		G_AC_NONE
	);
	sprite_draw(
		video_dst[video_frame & 1], G_IM_FMT_RGBA, G_IM_SIZ_16b, TRUE,
		video->wd, video->ht, video->x, video->y, video->w, video->h
	);
}

static void video_init(int index)
{
	unsigned int size;
	video = &video_table[index];
	size = 2*video->buf;
	video_buf = mem_alloc(size, MEM_ALLOC_L);
	size = 2*video->wd*video->ht;
	video_dst[0] = mem_alloc(size, MEM_ALLOC_L);
	video_dst[1] = mem_alloc(size, MEM_ALLOC_L);
	video_src = (long)video->src;
	video_pkn = 0;
	video_idx = 0;
	video_cnt = 0;
	video_frame = -1;
	video_timer = 0;
	gfx_draw_callback = video_draw;
}

static void video_update(void)
{
	if (video_timer > 0)
	{
		video_timer--;
	}
	else
	{
		video_timer = video->timer;
		if (++video_frame < video->frame)
		{
			video_decode();
		}
		else
		{
			gfx_draw_callback = NULL;
		}
	}
}

int p_video_main(SHORT arg, int code)
{
	int result = 0;
	switch (arg)
	{
	case 0:
		video_init(code);
		gfx_flag &= ~GFX_MODEMASK;
		gfx_flag |= GFX_NODEPTH|GFX_NOBORDER;
		break;
	case 1:
		video_update();
		if (!gfx_draw_callback)
		{
			gfx_flag &= ~GFX_MODEMASK;
			result = 1;
		}
	}
	return result;
}

int p_scatman_main(SHORT arg, int code)
{
	static int timer;
	int result = p_game_main(arg, code);
	switch (arg)
	{
	case 0:
		timer = 0;
		break;
	case 1:
		if (mario->state == 0x04001301)
		{
			if (++timer == 115) video_init(2);
			if (gfx_draw_callback) video_update();
		}
		break;
	}
	return result;
}

int p_inside_video(UNUSED SHORT arg, UNUSED int code)
{
	if (game_8033B26E) return 1;
	return -1;
}
