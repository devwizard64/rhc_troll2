#ifndef __SM64_OBJECT_A_H__
#define __SM64_OBJECT_A_H__

typedef struct object_a_0
{
	s16 _00;
	f32 _04;
	f32 _08;
}
OBJECT_A_0;

typedef struct object_a_1
{
	s16 flag;
	short scale;
	MAP_DATA *map;
	short dist;
}
OBJECT_A_1;

typedef struct object_a_2
{
	s16 count;
	short add;
	short mul;
	s16 shape;
	MAP_DATA *map;
}
OBJECT_A_2;

typedef struct object_a_3
{
	MAP_DATA *map;
	short px;
	short pz;
	short ay;
}
OBJECT_A_3;

typedef struct object_a_4
{
	s32 offset;
	VECF scale;
	float vel;
}
OBJECT_A_4;

typedef struct object_a_5
{
	u8 shape;
	s8 px;
	s8 pz;
	s8 state;
	s8 *data;
}
OBJECT_A_5;

typedef struct object_a_6
{
	u8 index;
	u8 flag;
	u8 arg;
	u8 shape;
	O_SCRIPT *script;
}
OBJECT_A_6;

typedef struct object_a_7
{
	short offset;
	s16 shape;
	MAP_DATA *map;
}
OBJECT_A_7;

typedef struct object_a_8
{
	s32 time;
	s32 anime;
	float vel;
	float anime_vel;
}
OBJECT_A_8;

extern s16 object_a_80361280;
extern u32 object_a_80330020[];
extern s16 object_a_8033002C[];
extern O_CALLBACK *object_a_8033006C[];
extern O_CALLBACK *object_a_80330074[];
extern OBJ_COL object_a_80330084;
extern OBJ_PCL object_a_80330094;
extern u8 object_a_803300A8[];
extern O_CALLBACK *object_a_803300AC[];
extern O_CALLBACK *object_a_803300BC[];
extern OBJ_SFX object_a_803300E0[];
extern O_CALLBACK *object_a_80330140[];
extern struct object_a_0 object_a_8033015C[];
extern O_CALLBACK *object_a_80330198[];
extern struct object_a_1 object_a_803301A8[];
extern OBJ_COL object_a_803301C0;
extern OBJ_PCL object_a_803301D0;
extern OBJ_COL object_a_803301E4;
extern OBJ_COL object_a_803301F4;
extern s16 object_a_80330204[][2];
extern O_CALLBACK *object_a_80330224[];
extern s16 object_a_8033022C[][2];
extern s16 object_a_80330244[][2];
extern s32 object_a_80330260[][2];
extern NA_SE object_a_80330288[];
extern NA_SE object_a_80330290[];
extern O_CALLBACK *object_a_80330298[];
extern struct object_a_2 object_a_803302AC[];
extern O_CALLBACK *object_a_803302DC[];
extern s16 object_a_803302EC[][3];
extern O_CALLBACK *object_a_80330318[];
extern OBJ_PCL object_a_8033032C;
extern OBJ_PCL object_a_80330340;
extern s16 object_a_80330354[];
extern OBJ_PCL object_a_8033035C;
extern O_CALLBACK *object_a_80330370[];
extern f32 object_a_80330380[];
extern OBJ_COL object_a_80330390;
extern OBJ_COL object_a_803303A0;
extern OBJ_COL object_a_803303B0;
extern s16 object_a_803303C0[][2];
extern O_CALLBACK *object_a_803303E8[];
extern OBJ_COL object_a_803303F8;
extern O_CALLBACK *object_a_80330408[];
extern OBJ_COL object_a_80330410;
extern O_CALLBACK *object_a_80330420[];
extern OBJ_COL object_a_8033042C;
extern O_CALLBACK *object_a_8033043C[];
extern O_CALLBACK *object_a_80330450[];
extern s8 object_a_8033045C[];
extern s16 object_a_8033046C[];
extern s16 object_a_80330470[];
extern s8 object_a_80330474[];
extern s16 object_a_80330478[];
extern s16 object_a_80330480[][3];
extern O_CALLBACK *object_a_803304C8[];
extern OBJ_SFX object_a_80330518[];
extern s8 object_a_803305F0[];
extern s8 object_a_803305F4[];
extern struct object_a_3 object_a_803305F8[];
extern O_CALLBACK *object_a_8033067C[];
extern OBJ_COL object_a_80330688;
extern OBJ_COL object_a_80330698;
extern f32 object_a_803306A8[];
extern struct object_a_4 object_a_803306B4[];
extern PATH_DATA object_a_803306DC[];
extern OBJ_SFX object_a_80330738[];
extern O_CALLBACK *object_a_803307A0[];
extern s16 *object_a_80330828[];
extern O_CALLBACK *object_a_80330830[];
extern OBJ_COL object_a_80330840;
extern s8 *object_a_803308CC[];
extern O_CALLBACK *object_a_803308D8[];
extern s8 object_a_803308F8[];
extern O_CALLBACK *object_a_80330900[];
extern struct object_a_5 object_a_80330AAC[];
extern O_CALLBACK *object_a_80330B1C[];
extern O_CALLBACK *object_a_80330B38[];
extern O_CALLBACK *object_a_80330B44[];
extern O_CALLBACK *object_a_80330B5C[];
extern O_CALLBACK *object_a_80330B68[];
extern O_CALLBACK *object_a_80330B74[];
extern O_CALLBACK *object_a_80330B84[];
extern OBJ_COL object_a_80330B90;
extern struct object_a_6 object_a_80330BA0[];
extern O_CALLBACK *object_a_80330C20[];
extern OBJ_COL object_a_80330C38;
extern struct object_a_7 object_a_80330C48[];
extern OBJ_COL object_a_80330C58;
extern O_CALLBACK *object_a_80330C68[];
extern OBJ_COL object_a_80330C74;
extern s16 object_a_80330C84[][3];
extern O_CALLBACK *object_a_80330C98[];
extern O_CALLBACK *object_a_80330CB0[];
extern O_CALLBACK *object_a_80330CC4[];
extern OBJ_COL object_a_80330CD4;
extern O_CALLBACK *object_a_80330CE4[];
extern OBJ_SPLASH object_a_80330D0C;
extern OBJ_SPLASH object_a_80330D30;
extern OBJ_SPLASH object_a_80330D54;
extern OBJ_SPLASH object_a_80330D78;
extern OBJ_COL object_a_80330D9C;
extern struct object_a_8 object_a_80330DAC[];

extern void object_a_802A597C(void);
extern void object_a_802A5A44(void);
extern void object_a_802A5D4C(void);
extern void object_a_802A6518(void);
extern void object_a_802A68A0(void);
extern void object_a_802A6AD8(void);
extern void object_a_802A6EE4(void);
extern void object_a_802A7020(void);
extern void object_a_802A708C(void);
extern void object_a_802A7160(void);
extern void object_a_802A7264(void);
extern void object_a_802A73D8(void);
extern void object_a_802A7598(void);
extern void object_a_802A7804(void);
extern void object_a_802A78D8(void);
extern void object_a_802A7A60(void);
extern void object_a_802A7B1C(void);
extern void object_a_802A7B5C(void);
extern void object_a_802A7D14(void);
extern void object_a_802A8DC0(void);
extern void object_a_802A8F40(void);
extern void object_a_802A9114(void);
extern void object_a_802A92FC(void);
extern void object_a_802A93F8(void);
extern void object_a_802A9440(void);
extern void object_a_802A9460(void);
extern void object_a_802A9994(void);
extern void object_a_802A9D08(void);
extern void object_a_802A9F54(void);
extern void object_a_802A9FC8(void);
extern void object_a_802AC068(void);
extern void object_a_802AC15C(void);
extern void object_a_802AD078(void);
extern void object_a_802AD10C(void);
extern void object_a_802AD1A4(void);
extern void object_a_802AD238(void);
extern void object_a_802AD2D0(void);
extern void object_a_802AD580(void);
extern void object_a_802AD76C(void);
extern void object_a_802AD7F4(void);
extern void object_a_802AD828(void);
extern void object_a_802AD8F0(void);
extern void object_a_802ADA4C(void);
extern void object_a_802ADB88(void);
extern void object_a_802ADCE4(void);
extern void object_a_802ADD70(void);
extern void object_a_802AEA6C(void);
extern void object_a_802AEAB8(void);
extern void object_a_802AEB1C(void);
extern void object_a_802AEB74(void);
extern void object_a_802B1D7C(void);
extern void object_a_802B1E6C(void);
extern void object_a_802B1FF4(void);
extern void object_a_802B20A0(void);
extern void object_a_802B26A4(void);
extern void object_a_802B27D8(void);
extern void object_a_802B2DAC(void);
extern void object_a_802B2F34(void);
extern void object_a_802B3064(void);
extern void object_a_802B3830(void);
extern void object_a_802B38B8(void);
extern void object_a_802B394C(void);
extern void object_a_802B3B08(void);
extern void object_a_802B3B24(void);
extern void object_a_802B3C2C(void);
extern void object_a_802B3CDC(void);
extern void object_a_802B3D10(void);
extern void object_a_802B4478(void);
extern void object_a_802B44BC(void);
extern void object_a_802B4BAC(void);
extern void object_a_802B4BE8(void);
extern void object_a_802B4CA4(void);
extern void object_a_802B4D14(void);
extern void object_a_802B4F00(void);
extern void object_a_802B5104(void);
extern void object_a_802B5218(void);
extern void object_a_802B55CC(void);
extern void object_a_802B5798(void);
extern void object_a_802B58BC(void);
extern void object_a_802B59CC(void);
extern void object_a_802B5C00(void);
extern void object_a_802B5C40(void);
extern void object_a_802B5FEC(void);
extern void object_a_802B6190(void);
extern void object_a_802B6568(void);
extern void object_a_802B6CF0(void);
extern void object_a_802B6EE0(void);
extern void object_a_802B7E68(void);
extern void object_a_802B7EF0(void);
extern void object_a_802B8024(void);
extern void object_a_802BAB7C(void);
extern void object_a_802BAE40(void);
extern void object_a_802BAEC4(void);
extern void object_a_802BAF10(void);
extern void object_a_802BAF64(void);
extern void object_a_802BB07C(void);
extern void object_a_802BB288(void);
extern void object_a_802BB3B8(void);
extern void object_a_802BC4F4(void);
extern void object_a_802BC538(void);
extern void object_a_802BC590(void);
extern void object_a_802BC5FC(void);
extern void object_a_802BDB04(void);
extern void object_a_802BDB3C(void);
extern void object_a_802BDB74(void);
extern void object_a_802BDBAC(void);
extern void object_a_802BDBE4(void);
extern void object_a_802BDC7C(void);
extern void object_a_802BDCC8(void);
extern void object_a_802BDD14(void);
extern void object_a_802BDD9C(void);
extern void object_a_802BDEEC(void);
extern void object_a_802BE034(void);
extern void object_a_802BE0EC(void);
extern void object_a_802BE150(void);
extern void object_a_802BE234(void);
extern void object_a_802BE278(void);
extern void object_a_802BE350(void);
extern void object_a_802BE50C(void);
extern void object_a_802BE8A8(void);
extern void object_a_802BE8B8(void);
extern void object_a_802BEB14(void);
extern void object_a_802BEB54(void);
extern void object_a_802BEB8C(void);
extern void object_a_802BEBC4(void);
extern void object_a_802BEBFC(void);
extern void object_a_802BEDEC(void);
extern void object_a_802BEF8C(void);
extern void object_a_802BF1D8(void);
extern void object_a_802BF474(void);
extern void object_a_802BF57C(void);
extern void object_a_802BF648(void);
extern void object_a_802BF6E4(void);
extern void object_a_802BF760(void);
extern void object_a_802BF90C(void);
extern void object_a_802BFCD8(void);
extern void object_a_802BFEB8(void);
extern void object_a_802BFF20(void);
extern void object_a_802C00B4(void);
extern void object_a_802C0348(void);
extern void object_a_802C06A8(void);
extern void object_a_802C0AAC(void);
extern void object_a_802C0B50(void);
extern void object_a_802C0BA4(void);
extern void object_a_802C0BC4(void);
extern void object_a_802C0CD4(void);
extern void object_a_802C0D44(void);
extern void object_a_802C0F90(void);
extern void object_a_802C1308(void);
extern void object_a_802C13EC(void);
extern void object_a_802C14B0(void);
extern void object_a_802C15B8(void);
extern void object_a_802C18D0(void);
extern void object_a_802C1988(void);
extern void object_a_802C2EBC(void);
extern void object_a_802C2FBC(void);
extern void object_a_802C31C4(void);
extern void object_a_802C43F4(void);
extern void object_a_802C4508(void);
extern void object_a_802C45B0(void);
extern void object_a_802C46D8(void);
extern void object_a_802C4720(void);
extern void object_a_802C4790(void);
extern void object_a_802C48C0(void);
extern void object_a_802C49F0(void);
extern void object_a_802C4B54(void);
extern void object_a_802C4C70(void);
extern void object_a_802C4DD4(void);
extern void object_a_802C4FB0(void);
extern void object_a_802C503C(void);
extern void object_a_802C50D8(void);
extern void object_a_802C5120(void);
extern void object_a_802C6D6C(void);
extern void object_a_802C6EC8(void);
extern void object_a_802C6FB0(void);
extern void object_a_802C710C(void);
extern void object_a_802C7254(void);
extern void object_a_802C72B4(void);
extern void object_a_802C7380(void);
extern void object_a_802C76D4(void);
extern void object_a_802C7858(void);
extern void object_a_802C7998(void);

#endif /* __SM64_OBJECT_A_H__ */
