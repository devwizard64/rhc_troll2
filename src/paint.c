#include <sm64.h>

#include "ff/ff.h"

#include "sprite.h"
#include "paint.h"

extern unsigned char error_code;

#define PATH_PAINT "troll.bin"

u8 txt_paint[2048+32];

static const u16 paint_pal[] =
{
	0xFFFF, 0x7BDF, 0x0001, 0xE83B, 0xF823, 0xF80B, 0xFA41, 0xFD01,
	0xE781, 0x87C1, 0x17C9, 0x07EF, 0x063F, 0x03FF, 0x01BF, 0x283F,
};

static short paint_x;
static short paint_y;
static char paint_flag;
static u8 paint_index;
static u8 paint_tool;
static u8 paint_weight;
static char paint_rgbflag;
static u8 paint_rgbindex;
static u8 paint_rgbtimer;
static u8 paint_fade;

extern u8 txt_paint_banner[];
extern u16 pal_paint_tool[];
extern Gfx gfx_paint_start[];
extern Gfx gfx_paint_done_clear[];
extern Gfx gfx_paint_pal[];
extern Gfx gfx_paint_txt[];
extern Gfx gfx_paint_fill[];
extern Gfx gfx_paint_fade[];

#define paint_penindex() (paint_rgbflag ? paint_rgbindex : paint_index)

static void paint_draw(void)
{
	int i;
	gSPDisplayList(gfx_ptr++, gfx_paint_start);
	sprite_draw(
		txt_paint_banner, G_IM_FMT_I, G_IM_SIZ_4b, TRUE,
		PAINT_BANNER_TW, PAINT_BANNER_TH,
		4*PAINT_BANNER_X,
		4*PAINT_BANNER_Y,
		4*PAINT_BANNER_W,
		4*PAINT_BANNER_H
	);
	gSPDisplayList(gfx_ptr++, gfx_paint_done_clear);
	gDPSetTextureImage(gfx_ptr++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, pal_paint);
	gSPDisplayList(gfx_ptr++, gfx_paint_pal);
	gDPSetTextureImage(gfx_ptr++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, txt_paint);
	gSPDisplayList(gfx_ptr++, gfx_paint_txt);
	for (i = 0; i < 3; i++)
	{
		int pal = i == paint_tool ? 1 : 0;
		if (i != 1 && i == paint_tool && paint_rgbflag) pal = paint_rgbindex;
		gDPSetTextureImage(
			gfx_ptr++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, &pal_paint_tool[4*pal]
		);
		gDPLoadSync(gfx_ptr++);
		gDPLoadTLUTCmd(gfx_ptr++, 6, 15);
		gSPTextureRectangle(
			gfx_ptr++,
			4*(PAINT_TOOL_X),
			4*(PAINT_TOOL_YT+PAINT_TOOL_SY*i),
			4*(PAINT_TOOL_X+PAINT_TOOL_W),
			4*(PAINT_TOOL_YT+PAINT_TOOL_SY*i+PAINT_TOOL_H),
			G_TX_RENDERTILE, 32*(1), 32*(14*(i+0)), 0x400, 0x400
		);
	}
	for (i = 0; i < 3; i++)
	{
		int pal = i == paint_weight ? 1 : 0;
		gDPSetTextureImage(
			gfx_ptr++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, &pal_paint_tool[4*pal]
		);
		gDPLoadSync(gfx_ptr++);
		gDPLoadTLUTCmd(gfx_ptr++, 6, 15);
		gSPTextureRectangle(
			gfx_ptr++,
			4*(PAINT_TOOL_X),
			4*(PAINT_TOOL_YW-PAINT_TOOL_SY*i),
			4*(PAINT_TOOL_X+PAINT_TOOL_W),
			4*(PAINT_TOOL_YW-PAINT_TOOL_SY*i+PAINT_TOOL_H),
			G_TX_RENDERTILE, 32*(1), 32*(14*(i+3)), 0x400, 0x400
		);
	}
	gSPDisplayList(gfx_ptr++, gfx_paint_fill);
	for (i = 0; i < 16; i++)
	{
		if (i == paint_index)
		{
			gDPFillRectangle(
				gfx_ptr++,
				PAINT_PAL_X+PAINT_PAL_SX*i+0,
				PAINT_PAL_Y+0,
				PAINT_PAL_X+PAINT_PAL_SX*i+PAINT_PAL_W-0,
				PAINT_PAL_Y+PAINT_PAL_H-0
			);
		}
		else
		{
			gDPFillRectangle(
				gfx_ptr++,
				PAINT_PAL_X+PAINT_PAL_SX*i+1,
				PAINT_PAL_Y+1,
				PAINT_PAL_X+PAINT_PAL_SX*i+PAINT_PAL_W-1,
				PAINT_PAL_Y+PAINT_PAL_H-1
			);
		}
	}
	for (i = 0; i < 16; i++)
	{
		u16 c = pal_paint[i];
		u8 r = (c >> 11 & 0x1F) << 3;
		u8 g = (c >>  6 & 0x1F) << 3;
		u8 b = (c >>  1 & 0x1F) << 3;
		gDPSetPrimColor(gfx_ptr++, 0, 0, r|r>>5, g|g>>5, b|b>>5, 0);
		gDPFillRectangle(
			gfx_ptr++,
			PAINT_PAL_X+PAINT_PAL_SX*i+2,
			PAINT_PAL_Y+2,
			PAINT_PAL_X+PAINT_PAL_SX*i+PAINT_PAL_W-2,
			PAINT_PAL_Y+PAINT_PAL_H-2
		);
	}
	if (
		mouse.y >= PAINT_CANVAS_Y && mouse.y < PAINT_CANVAS_Y+PAINT_CANVAS_H &&
		mouse.x >= PAINT_CANVAS_X && mouse.x < PAINT_CANVAS_X+PAINT_CANVAS_W
	)
	{
		int w = 0;
		switch (paint_tool)
		{
		case 0: w = 1+paint_weight; break;
		case 1: w = 2+paint_weight; break;
		case 2: w = 6+3*paint_weight; break;
		}
		if (paint_tool == 0)
		{
			u16 c = pal_paint[paint_penindex()];
			u8 r = (c >> 11 & 0x1F) << 3;
			u8 g = (c >>  6 & 0x1F) << 3;
			u8 b = (c >>  1 & 0x1F) << 3;
			gDPSetPrimColor(gfx_ptr++, 0, 0, r|r>>5, g|g>>5, b|b>>5, 0);
			gDPFillRectangle(
				gfx_ptr++,
				mouse.x-w, mouse.y-w,
				mouse.x+w, mouse.y+w
			);
		}
		else
		{
			gDPSetPrimColor(gfx_ptr++, 0, 0, 0, 0, 0, 0);
			gDPFillRectangle(
				gfx_ptr++,
				mouse.x-w, mouse.y-w+0,
				mouse.x+w, mouse.y-w+1
			);
			gDPFillRectangle(
				gfx_ptr++,
				mouse.x-w, mouse.y+w-1,
				mouse.x+w, mouse.y+w-0
			);
			gDPFillRectangle(
				gfx_ptr++,
				mouse.x-w+0, mouse.y-w+1,
				mouse.x-w+1, mouse.y+w-1
			);
			gDPFillRectangle(
				gfx_ptr++,
				mouse.x+w-1, mouse.y-w+1,
				mouse.x+w-0, mouse.y+w-1
			);
		}
	}
	if (paint_fade > 0)
	{
		gDPSetPrimColor(gfx_ptr++, 0, 0, 0xFF, 0xFF, 0xFF, paint_fade);
		gSPDisplayList(gfx_ptr++, gfx_paint_fade);
	}
}

static void paint_clear(void)
{
	bzero(txt_paint, 2048);
	memcpy(pal_paint, paint_pal, 32);
}

int p_paint_init(UNUSED SHORT arg, UNUSED int code)
{
	paint_flag = FALSE;
	paint_index = 2;
	paint_tool = 0;
	paint_weight = 0;
	paint_rgbflag = FALSE;
	paint_fade = 0;
	gfx_flag |= GFX_60|GFX_MOUSE;
	gfx_draw_callback = paint_draw;
	mouse.x = SCREEN_WD/2;
	mouse.y = SCREEN_HT/2;
	return 1;
}

static int paint_click(void)
{
	int i;
	if (mouse.y >= PAINT_CANVAS_Y && mouse.y < PAINT_CANVAS_Y+PAINT_CANVAS_H)
	{
		if (
			mouse.x >= PAINT_CANVAS_X &&
			mouse.x < PAINT_CANVAS_X+PAINT_CANVAS_W
		)
		{
			paint_x = (mouse.x-PAINT_CANVAS_X) / 2;
			paint_y = (mouse.y-PAINT_CANVAS_Y) / 2;
			paint_flag = TRUE;
			return 0;
		}
	}
	if (mouse.y >= PAINT_CLEAR_Y && mouse.y < PAINT_CLEAR_Y+PAINT_CLEAR_H)
	{
		if (mouse.x >= PAINT_CLEAR_X && mouse.x < PAINT_CLEAR_X+PAINT_CLEAR_W)
		{
			Na_SE_fixed(NA_SE3_2B);
			paint_clear();
			return 0;
		}
	}
	if (mouse.y >= PAINT_DONE_Y && mouse.y < PAINT_DONE_Y+PAINT_DONE_H)
	{
		if (mouse.x >= PAINT_DONE_X && mouse.x < PAINT_DONE_X+PAINT_DONE_W)
		{
			for (i = 0; i < 2048; i++)
			{
				if (txt_paint[i] != 0)
				{
					Na_SE_fixed(NA_SE7_1E);
					gfx_flag &= ~(GFX_60|GFX_MOUSE);
					return 1;
				}
			}
			Na_SE_fixed(0x700E0081);
			return 0;
		}
	}
	if (mouse.y >= PAINT_PAL_Y+1 && mouse.y < PAINT_PAL_Y+PAINT_PAL_H-1)
	{
		for (i = 0; i < 16; i++)
		{
			int x = PAINT_PAL_X+PAINT_PAL_SX*i;
			if (mouse.x >= x+1 && mouse.x < x+PAINT_PAL_H-1)
			{
				paint_index = i;
				return 0;
			}
		}
	}
	if (mouse.x >= PAINT_TOOL_X && mouse.x < PAINT_TOOL_X+PAINT_TOOL_W)
	{
		for (i = 0; i < 3; i++)
		{
			int y = PAINT_TOOL_YT+PAINT_TOOL_SY*i;
			if (mouse.y >= y && mouse.y < y+PAINT_TOOL_H)
			{
				if (i != 1 && i == paint_tool && !paint_rgbflag)
				{
					paint_rgbflag = TRUE;
					paint_rgbtimer = 0;
					paint_rgbindex = 15;
				}
				else
				{
					paint_rgbflag = FALSE;
				}
				paint_tool = i;
				return 0;
			}
		}
		for (i = 0; i < 3; i++)
		{
			int y = PAINT_TOOL_YW-PAINT_TOOL_SY*i;
			if (mouse.y >= y && mouse.y < y+PAINT_TOOL_H)
			{
				paint_weight = i;
				return 0;
			}
		}
	}
	return 0;
}

static void paint_dot(int y, int x, int index)
{
	if (y >= 0 && y < PAINT_CANVAS_TH && x >= 0 && x < PAINT_CANVAS_TW)
	{
		int i = (PAINT_CANVAS_TW*y+x) >> 1;
		int s = (~x & 1) << 2;
		txt_paint[i] &= ~(15 << s);
		txt_paint[i] |= index << s;
	}
}

static void paint_air(int y, int x, int index)
{
	if (!(rand() & 63)) paint_dot(y, x, index);
}

static void paint_line(void (*dot)(int y, int x, int index), int index, int w)
{
	int y;
	int x;
	int e;
	int ee;
	int px = paint_x;
	int py = paint_y;
	int tx = (mouse.x-PAINT_CANVAS_X) / 2;
	int ty = (mouse.y-PAINT_CANVAS_Y) / 2;
	int dx = tx - px;
	int dy = py - ty;
	int sx = 1;
	int sy = 1;
	if (dx < 0) dx = -dx, sx = -1;
	if (dy > 0) dy = -dy, sy = -1;
	e = dx + dy;
	for (;;)
	{
		for (y = -w/2; y < -w/2+w; y++)
		{
			for (x = -w/2; x < -w/2+w; x++)
			{
				if (y*y+x*x <= (w/2)*(w/2)) dot(py+y, px+x, index);
			}
		}
		if (px == tx && py == ty) break;
		ee = 2 * e;
		if (ee >= dy)
		{
			if (px == tx) break;
			e += dy;
			px += sx;
		}
		if (ee <= dx)
		{
			if (py == ty) break;
			e += dx;
			py += sy;
		}
	}
	paint_x = tx;
	paint_y = ty;
}

int p_paint_update(UNUSED SHORT arg, UNUSED int code)
{
	int result = 0;
	if (paint_rgbflag)
	{
		if (++paint_rgbtimer >= 11)
		{
			paint_rgbtimer = 0;
			if (++paint_rgbindex >= 16) paint_rgbindex = 3;
		}
	}
	if (mouse.down & A_BUTTON) result = paint_click();
	else if (!(mouse.held & A_BUTTON)) paint_flag = FALSE;
	if (paint_flag)
	{
		switch (paint_tool)
		{
		case 0:
			paint_line(paint_dot, paint_penindex(), 1+paint_weight);
			break;
		case 1:
			paint_line(paint_dot, 0, 2+paint_weight);
			break;
		case 2:
			paint_line(paint_air, paint_penindex(), 6+3*paint_weight);
			break;
		}
	}
	return result;
}

int p_paint_fade(UNUSED SHORT arg, UNUSED int code)
{
	int result = 0;
	if (paint_fade < 0xFF)
	{
		paint_fade += 0x11;
	}
	else
	{
		gfx_draw_callback = NULL;
		result = 1;
	}
	return result;
}

int p_paint_load(UNUSED SHORT arg, UNUSED int code)
{
	int result = 0;
	if (!gateway)
	{
		FIL f;
		UINT n;
		switch (f_open(&f, PATH_PAINT, FA_READ))
		{
		case FR_OK:
			if (f_size(&f) == 2048+32)
			{
				switch (f_read(&f, txt_paint, 2048+32, &n))
				{
				case FR_OK:
					if (n != 2048+32) error_code = 1;
					break;
				default:
					error_code = 1;
					break;
				}
			}
			else
			{
				paint_clear();
				result = 1;
			}
			f_close(&f);
			break;
		case FR_NO_FILE:
			paint_clear();
			result = 1;
			break;
		default:
			error_code = 2;
			break;
		}
		if ((controller->held & (L_TRIG|R_TRIG)) == (L_TRIG|R_TRIG)) result = 1;
	}
	else
	{
		paint_clear();
		result = 1;
	}
	return result;
}

int p_paint_save(UNUSED SHORT arg, UNUSED int code)
{
	int result = 0;
	if (!gateway)
	{
		FIL f;
		UINT n;
		switch (f_open(&f, PATH_PAINT, FA_WRITE|FA_CREATE_ALWAYS))
		{
		case FR_OK:
			switch (f_write(&f, txt_paint, 2048+32, &n))
			{
			case FR_OK:
				if (n != 2048+32) error_code = 1;
				break;
			default:
				error_code = 1;
				break;
			}
			f_close(&f);
			break;
		default:
			error_code = 2;
			break;
		}
	}
	return result;
}
