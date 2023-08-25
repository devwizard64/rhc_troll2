#include <sm64.h>

#include "str.h"

const double message_803381A0 = 65;
const double message_803381A8 = 65;
const double message_803381B0 = 0.1;

extern void L802D99D4(void);
extern void L802D9A10(void);
extern void L802D9A40(void);
extern void L802D9A50(void);
extern void L802D9A80(void);
extern void L802D9AA0(void);
extern void L802D9AD4(void);
extern void L802D9B08(void);
extern void Lmessagefmtstr(void);
extern void L802D9B1C(void);

void (*const message_803381B8[])(void) =
{
	L802D9A80,
	L802D9AA0,
	L802D9AD4,
	L802D9B1C,
	L802D9B1C,
	L802D9B1C,
	L802D9B1C,
	L802D9B1C,
	L802D9B1C,
	L802D9B1C,
	L802D9B1C,
	L802D9B1C,
	L802D9B1C,
	L802D9B1C,
	L802D9B1C,
	L802D9B1C,
	L802D9B08,
	L802D9B1C,
	L802D9B1C,
	L802D9B1C,
	L802D9B1C,
	L802D9B1C,
	L802D9B1C,
	L802D9B1C,
	Lmessagefmtstr,
	L802D9B1C,
	L802D9B1C,
	L802D9B1C,
	L802D9B1C,
	L802D9B1C,
	L802D9B1C,
	L802D9B1C,
	L802D9A40,
	L802D9A50,
	L802D9B1C,
	L802D9B1C,
	L802D9B1C,
	L802D9B1C,
	L802D9B1C,
	L802D9B1C,
	L802D9B1C,
	L802D9B1C,
	L802D9B1C,
	L802D9B1C,
	L802D9B1C,
	L802D9B1C,
	L802D9A10,
	L802D99D4,
};

s16 message_803613F0;
s8 message_803613F2;
s32 message_803613F4;
u16 message_803613F8;
s16 message_803613FA;
s16 message_803613FC;
s8 message_803613FE;

u8 message_80331370[256] =
{
	7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 6, 6, 6, 6, 6, 6,
	6, 6, 5, 6, 6, 5, 8, 8, 6, 6, 6, 6, 6, 5, 6, 6,
	8, 7, 6, 6, 6, 5, 5, 6, 5, 5, 6, 5, 4, 5, 5, 3,
	7, 5, 5, 5, 6, 5, 5, 5, 5, 5, 7, 7, 5, 5, 4, 4,
	8, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	8, 8, 8, 8, 7, 7, 6, 7, 7, 0, 0, 0, 0, 0, 0, 0,
	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4,
	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 5, 6,
	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	7, 5, 10, 5, 9, 8, 4, 7, 0, 0, 0, 0, 0, 0, 0, 0,
	12, 0, 5, 7, 7, 6, 6, 8, 0, 8, 10, 6, 4, 10, 0, 0,
};

DALIGN s8 message_80331470 = 0;
DALIGN f32 message_80331474 = 90;
DALIGN f32 message_80331478 = 19;
DALIGN s16 message_8033147C = 0;
DALIGN s8 message_80331480 = 0;
DALIGN s16 message_80331484 = -1;
DALIGN s16 message_80331488 = 0;
DALIGN s16 message_8033148C = 0;
DALIGN s8 message_80331490 = 1;
DALIGN s8 message_80331494 = 0;
DALIGN u8 message_80331498 = 0;
DALIGN u8 message_8033149C = 0;
DALIGN s32 message_803314A0 = 0;

unsigned char str_803314A4[][5] =
{
	{0x03, 0x37, 0x2B, 0x28},
	{0x03, 0x3C, 0x32, 0x38},
};

unsigned char str_803314B0[] = {STR_PCOIN};
unsigned char str_803314B4[] = {STR_PX};
unsigned char str_803314B8[] = {STR_PSTAR};
unsigned char str_803314BC[] = {STR_PX};

unsigned char str_803314C0[][5] =
{
	{0x03, 0x37, 0x2B, 0x28},
	{0x03, 0x3C, 0x32, 0x38},
};

s16 message_803314CC[] = {17, 114, 128, 117, 150};
s16 message_803314D8[] = {5, 9, 55, 164};
s16 message_803314E0[] = {10, 11, 12, 13, 14};
s16 message_803314EC[] = {17, 115, 116, 118, 152};
DALIGN s16 message_803314F8 = -1;

#include "803315E4.h"
DALIGN u16 message_8033160C = 0;
DALIGN s16 message_80331610 = -1;
DALIGN s16 message_80331614 = -1;
DALIGN s16 message_80331618 = 0;
DALIGN s8 message_8033161C = 1;
DALIGN s8 message_80331620 = 1;

unsigned char str_80331624[] = {STR_COURSE};
unsigned char str_8033162C[] = {STR_MY_SCORE};
unsigned char str_80331638[] = {STR_STAR};
unsigned char str_8033163C[] = {STR_NOSTAR};
unsigned char str_80331640[] = {STR_LAKITU_MARIO};
unsigned char str_80331650[] = {STR_LAKITU_STOP};
unsigned char str_80331660[] = {STR_NORMAL_UP_CLOSE};
unsigned char str_80331674[] = {STR_NORMAL_FIXED};
unsigned char str_80331684[] = {STR_CONTINUE};
unsigned char str_80331690[] = {STR_EXIT_COURSE};
unsigned char str_8033169C[] = {STR_SET_CAMERA_ANGLE_WITH_R};
unsigned char str_803316B4[] = {STR_PAUSE};
unsigned char str_803316BC[] = {STR_STAR};
unsigned char str_803316C0[] = {STR_COIN_X};
unsigned char str_803316C4[] = {STR_STAR_X};
DALIGN s8 message_803316C8 = 0;
DALIGN s32 message_803316CC = 0;
DALIGN s32 message_803316D0 = 0;
DALIGN s8 message_803316D4 = 0;

unsigned char str_803316D8[] = {STR_HI_SCORE};
unsigned char str_803316E4[] = {STR_CONGRATULATIONS};
unsigned char str_803316F4[] = {STR_PCOIN};
unsigned char str_803316F8[] = {STR_PX};
unsigned char str_803316FC[] = {STR_COURSE};
unsigned char str_80331704[] = {STR_CATCH};
unsigned char str_8033170C[] = {STR_CLEAR};
unsigned char str_80331714[] = {STR_PSTAR};
unsigned char str_80331718[] = {STR_SAVE_AND_CONTINUE};
unsigned char str_80331728[] = {STR_SAVE_AND_QUIT};
unsigned char str_80331734[] = {STR_CONTINUE_DONT_SAVE};

/******************************************************************************/

extern void message_802D7070(CHAR flag, float x, float y, float z);

unsigned char *message_str;
unsigned char message_gfx;

extern u16 *txt_msg16[];
extern Gfx *gfx_message_char[];

void message_802D75DC(UCHAR c)
{
	u16 **txt = segment_to_virtual(txt_msg16);
	Gfx **gfx = segment_to_virtual(gfx_message_char);
	gDPSetTextureImage(gfx_ptr++, G_IM_FMT_IA, G_IM_SIZ_16b, 1, txt[c]);
	gSPDisplayList(gfx_ptr++, gfx[message_gfx]);
}

extern u16 txt_emoji[];
extern Gfx gfx_emoji_0[];
extern Gfx gfx_emoji_1[];
extern Gfx gfx_emoji_2[];

static void message_emoji(UCHAR c)
{
	u16 *txt = txt_emoji + 48*48*c;
	gDPSetTextureImage(gfx_ptr++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, txt);
	gSPDisplayList(gfx_ptr++, gfx_emoji_0);
	gDPSetTextureImage(gfx_ptr++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, txt+48*15);
	gSPDisplayList(gfx_ptr++, gfx_emoji_1);
	gDPSetTextureImage(gfx_ptr++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, txt+48*30);
	gSPDisplayList(gfx_ptr++, gfx_emoji_2);
}

UCHAR message_802D75DCnew(UCHAR c, CHAR flag)
{
	switch (flag)
	{
	case 0:
		message_802D75DC(c);
		break;
	case 1:
		message_emoji(c);
		c = 0xF0;
		break;
	case 2:
		message_gfx = c;
		c = 0xF1;
		break;
	}
	return c;
}

CHAR message_fmtstr(CHAR line, char *space, short *count, char *flag)
{
	int i;
	int c;
	if (message_str)
	{
		for (i = 0; (c = message_str[i]) != 0xFF; i++)
		{
			switch (c)
			{
			case 0xFE:
				line++;
				gSPPopMatrix(gfx_ptr++, G_MTX_MODELVIEW);
				message_802D7070(1, 0, 2-16*line, 0);
				*count = 0;
				*space = 1;
				*flag = 0;
				message_gfx = 0;
				break;
			case 0xF0:
				*flag = 1;
				break;
			case 0xF1:
				*flag = 2;
				break;
			case 0x9E:
				(*space)++;
				(*count)++;
				break;
			default:
				if (*count != 0 || *space != 1) message_802D7070(
					2, message_80331370[0x9E]*(*space-1), 0, 0
				);
				c = message_802D75DCnew(c, *flag);
				*flag = 0;
				message_802D7070(2, message_80331370[c], 0, 0);
				*space = 1;
				(*count)++;
			}
		}
	}
	return line;
}

unsigned int message_802D9800new(UNUSED SHORT x)
{
	return 320;
}
