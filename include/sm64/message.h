#ifndef __SM64_MESSAGE_H__
#define __SM64_MESSAGE_H__

typedef struct message
{
	s32 arg;
	s8 line;
	s16 x;
	s16 y;
	u8 *str;
}
MESSAGE;

extern s16 message_803613F0;
extern s8 message_803613F2;
extern s32 message_803613F4;
extern u16 message_803613F8;
extern s16 message_803613FA;
extern s16 message_803613FC;
extern s8 message_803613FE;
extern u8 message_80331370[256];
extern s8 message_80331470;
extern f32 message_80331474;
extern f32 message_80331478;
extern s16 message_8033147C;
extern s8 message_80331480;
extern s16 message_80331484;
extern s16 message_80331488;
extern s16 message_8033148C;
extern s8 message_80331490;
extern s8 message_80331494;
extern u8 message_80331498;
extern u8 message_8033149C;
extern s32 message_803314A0;
extern unsigned char str_803314A4[][5];
extern unsigned char str_803314B0[];
extern unsigned char str_803314B4[];
extern unsigned char str_803314B8[];
extern unsigned char str_803314BC[];
extern unsigned char str_803314C0[][5];
extern s16 message_803314CC[];
extern s16 message_803314D8[];
extern s16 message_803314E0[];
extern s16 message_803314EC[];
extern s16 message_803314F8;
extern unsigned char *str_803315E4[];
extern u16 message_8033160C;
extern s16 message_80331610;
extern s16 message_80331614;
extern s16 message_80331618;
extern s8 message_8033161C;
extern s8 message_80331620;
extern unsigned char str_80331624[];
extern unsigned char str_8033162C[];
extern unsigned char str_80331638[];
extern unsigned char str_8033163C[];
extern unsigned char str_80331640[];
extern unsigned char str_80331650[];
extern unsigned char str_80331660[];
extern unsigned char str_80331674[];
extern unsigned char str_80331684[];
extern unsigned char str_80331690[];
extern unsigned char str_8033169C[];
extern unsigned char str_803316B4[];
extern unsigned char str_803316BC[];
extern unsigned char str_803316C0[];
extern unsigned char str_803316C4[];
extern s8 message_803316C8;
extern s32 message_803316CC;
extern s32 message_803316D0;
extern s8 message_803316D4;
extern unsigned char str_803316D8[];
extern unsigned char str_803316E4[];
extern unsigned char str_803316F4[];
extern unsigned char str_803316F8[];
extern unsigned char str_803316FC[];
extern unsigned char str_80331704[];
extern unsigned char str_8033170C[];
extern unsigned char str_80331714[];
extern unsigned char str_80331718[];
extern unsigned char str_80331728[];
extern unsigned char str_80331734[];

extern unsigned char *message_str;
extern u32 message_rgb;

extern void message_802DAB58(void);
extern SHORT message_802DDCA4(void);

#endif /* __SM64_MESSAGE_H__ */
