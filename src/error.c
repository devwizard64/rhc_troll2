#include <sm64.h>

#include "sprite.h"

unsigned char error_code;

typedef struct errtxt
{
	u8 *txt;
	u16 wd;
	u16 ht;
}
ERRTXT;

extern Gfx gfx_error_start[];
extern u8 txt_error_1[];
extern u8 txt_error_2[];

static ERRTXT errtxt_table[] =
{
	{txt_error_1, 218, 24},
	{txt_error_2, 372, 24},
};

void error_draw(void)
{
	aud_thread.context.pc = 0;
	segment_write();
	gDPPipeSync(gfx_ptr++);
	gDPSetColorImage(
		gfx_ptr++, G_IM_FMT_RGBA, G_IM_SIZ_16b, SCREEN_WD, gfx_cimg[gfx_dp]
	);
	gSPDisplayList(gfx_ptr++, gfx_error_start);
	if (error_code == 255)
	{
		sprite_draw(
			(void *)0x80400000, G_IM_FMT_RGBA, G_IM_SIZ_16b, TRUE, 1024, 960,
			128, 0, 1024, 960
		);
	}
	else if (error_code <= 2)
	{
		ERRTXT *et = &errtxt_table[error_code-1];
		sprite_draw(
			et->txt, G_IM_FMT_I, G_IM_SIZ_4b, TRUE, et->wd, et->ht,
			2*SCREEN_WD - et->wd, 4*112, 2*et->wd, 2*et->ht
		);
	}
	gDPFullSync(gfx_ptr++);
	gSPEndDisplayList(gfx_ptr++);
	if (gfx_frame > 2) osViBlack(FALSE);
}
