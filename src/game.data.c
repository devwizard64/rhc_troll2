#include <sm64.h>

static const char str_01_0[] = "1GAME DIRECTOR";
static const char str_01_1[] = "SHIGERU MIYAMOTO";
static const char str_02_0[] = "2ASSISTANT DIRECTORS";
static const char str_02_1[] = "YOSHIAKI KOIZUMI";
static const char str_02_2[] = "TAKASHI TEZUKA";
static const char str_03_0[] = "2SYSTEM PROGRAMMERS";
static const char str_03_1[] = "YASUNARI NISHIDA";
static const char str_03_2[] = "YOSHINORI TANIMOTO";
static const char str_04_0[] = "3PROGRAMMERS";
static const char str_04_1[] = "HAJIME YAJIMA";
static const char str_04_2[] = "DAIKI IWAMOTO";
static const char str_04_3[] = "TOSHIO IWAWAKI";
static const char str_05_0[] = "4CAMERA PROGRAMMER";
static const char str_05_1[] = "MARIO FACE PROGRAMMER";
static const char str_05_2[] = "TAKUMI KAWAGOE";
static const char str_05_3[] = "GILES GODDARD";
static const char str_06_0[] = "2COURSE DIRECTORS";
static const char str_06_1[] = "YOICHI YAMADA";
static const char str_06_2[] = "YASUHISA YAMAMURA";
static const char str_07_0[] = "2COURSE DESIGNERS";
static const char str_07_1[] = "KENTA USUI";
static const char str_07_2[] = "NAOKI MORI";
static const char str_08_0[] = "3COURSE DESIGNERS";
static const char str_08_1[] = "YOSHIKI HARUHANA";
static const char str_08_2[] = "MAKOTO MIYANAGA";
static const char str_08_3[] = "KATSUHIKO KANNO";
static const char str_09_0[] = "1SOUND COMPOSER";
static const char str_09_1[] = "KOJI KONDO";
static const char str_10_0[] = "4SOUND EFFECTS";
static const char str_10_1[] = "SOUND PROGRAMMER";
static const char str_10_2[] = "YOJI INAGAKI";
static const char str_10_3[] = "HIDEAKI SHIMIZU";
static const char str_11_0[] = "23-D ANIMATORS";
static const char str_11_1[] = "YOSHIAKI KOIZUMI";
static const char str_11_2[] = "SATORU TAKIZAWA";
static const char str_12_0[] = "1ADDITIONAL GRAPHICS";
static const char str_12_1[] = "MASANAO ARIMOTO";
static const char str_13_0[] = "3TECHNICAL SUPPORT";
static const char str_13_1[] = "TAKAO SAWANO";
static const char str_13_2[] = "HIROHITO YOSHIMOTO";
static const char str_13_3[] = "HIROTO YADA";
static const char str_14_0[] = "1TECHNICAL SUPPORT";
static const char str_14_1[] = "SGI N64 PROJECT STAFF";
static const char str_15_0[] = "2PROGRESS MANAGEMENT";
static const char str_15_1[] = "KIMIYOSHI FUKUI";
static const char str_15_2[] = "KEIZO KATO";
static const char str_16_0[] = "5SCREEN TEXT WRITER";
static const char str_16_1[] = "TRANSLATION";
static const char str_16_2[] = "LESLIE SWAN";
static const char str_16_3[] = "MINA AKINO";
static const char str_16_4[] = "HIRO YAMADA";
static const char str_17_0[] = "4MARIO VOICE";
static const char str_17_1[] = "PEACH VOICE";
static const char str_17_2[] = "CHARLES MARTINET";
static const char str_17_3[] = "LESLIE SWAN";
static const char str_18_0[] = "3SPECIAL THANKS TO";
static const char str_18_1[] = "EAD STAFF";
static const char str_18_2[] = "ALL NINTENDO PERSONNEL";
static const char str_18_3[] = "MARIO CLUB STAFF";
static const char str_19_0[] = "1PRODUCER";
static const char str_19_1[] = "SHIGERU MIYAMOTO";
static const char str_20_0[] = "1EXECUTIVE PRODUCER";
static const char str_20_1[] = "HIROSHI YAMAUCHI";

extern void L80249AF4(void);
extern void L80249B0C(void);
extern void L80249B28(void);
extern void L80249B40(void);
extern void L80249B58(void);
extern void L80249B74(void);
extern void L80249B8C(void);
extern void L80249BA8(void);
extern void L80249BC0(void);
extern void L80249BD8(void);
extern void L80249BF0(void);
extern void L80249C0C(void);
extern void L80249C28(void);
extern void L80249C40(void);
extern void L80249C58(void);
extern void L80249C70(void);
extern void L80249C88(void);
extern void L80249CA0(void);
extern void L80249CB8(void);

void (*const game_80335FE8[])(void) =
{
	L80249AF4,
	L80249B0C,
	L80249B28,
	L80249B40,
	L80249CB8,
	L80249CB8,
	L80249CB8,
	L80249CB8,
	L80249CB8,
	L80249CB8,
	L80249CB8,
	L80249CB8,
	L80249CB8,
	L80249CB8,
	L80249CB8,
	L80249B58,
	L80249C0C,
	L80249B74,
	L80249B8C,
	L80249BA8,
	L80249BC0,
	L80249BD8,
	L80249BF0,
	L80249CB8,
	L80249CB8,
	L80249CB8,
	L80249CB8,
	L80249CB8,
	L80249CB8,
	L80249CB8,
	L80249CB8,
	L80249C28,
	L80249C40,
	L80249C58,
	L80249C70,
	L80249C88,
	L80249CA0,
};

extern void L80249EA4(void);
extern void L80249EC4(void);
extern void L80249EE4(void);
extern void L80249F08(void);
extern void L80249F2C(void);
extern void L80249F4C(void);
extern void L80249F6C(void);

void (*const game_8033607C[])(void) =
{
	L80249EC4,
	L80249F6C,
	L80249EA4,
	L80249EE4,
	L80249F6C,
	L80249F6C,
	L80249F6C,
	L80249F6C,
	L80249F6C,
	L80249F6C,
	L80249F6C,
	L80249F6C,
	L80249F6C,
	L80249F6C,
	L80249F6C,
	L80249F6C,
	L80249F6C,
	L80249F6C,
	L80249F6C,
	L80249F2C,
	L80249F6C,
	L80249F08,
	L80249F6C,
	L80249F6C,
	L80249F6C,
	L80249F6C,
	L80249F6C,
	L80249F6C,
	L80249F6C,
	L80249F6C,
	L80249F6C,
	L80249F6C,
	L80249F6C,
	L80249F6C,
	L80249F6C,
	L80249F6C,
	L80249F6C,
	L80249F6C,
	L80249F4C,
};

extern void L8024AA44(void);
extern void L8024AA88(void);
extern void L8024AACC(void);
extern void L8024AB0C(void);
extern void L8024AB74(void);
extern void L8024ABEC(void);
extern void L8024AC3C(void);
extern void L8024AC8C(void);
extern void L8024ACF0(void);
extern void L8024AD60(void);
extern void L8024ADC0(void);
extern void L8024ADEC(void);
extern void L8024AE60(void);

void (*const game_80336118[])(void) =
{
	L8024ABEC,
	L8024AC3C,
	L8024ACF0,
	L8024AD60,
	L8024AC8C,
	L8024AE60,
	L8024AE60,
	L8024AE60,
	L8024AE60,
	L8024AE60,
	L8024AE60,
	L8024AE60,
	L8024AE60,
	L8024AE60,
	L8024AE60,
	L8024AE60,
	L8024AACC,
	L8024AB0C,
	L8024AB74,
	L8024AE60,
	L8024AA88,
	L8024AA44,
	L8024ADC0,
	L8024ADEC,
	L8024AA44,
};

extern void L8024AFC4(void);
extern void L8024AFDC(void);
extern void L8024AFF8(void);
extern void L8024B008(void);
extern void L8024B03C(void);

void (*const game_8033617C[])(void) =
{
	L8024AFC4,
	L8024AFDC,
	L8024AFF8,
	L8024B008,
	L8024B03C,
};

extern void L8024B9EC(void);
extern void L8024BA00(void);
extern void L8024BA14(void);
extern void L8024BA28(void);
extern void L8024BA3C(void);
extern void L8024BA50(void);

void (*const game_80336190[])(void) =
{
	L8024B9EC,
	L8024BA50,
	L8024BA00,
	L8024BA14,
	L8024BA28,
	L8024BA3C,
};

BALIGN PLAYER player_data[1];
s16 game_8033B238;
s16 game_8033B23A;
s16 game_8033B23C;
void (*game_8033B240)(s16 *);
BALIGN struct struct_8033B248 game_8033B248;
s16 game_8033B250;
s16 game_8033B252;
s16 game_8033B254;
s16 game_8033B256;
u32 game_8033B258;
s16 game_8033B25C;
s8 game_8033B25E;
BALIGN HUD hud;
s8 game_8033B26E;

static const char *staff_01[] = {str_01_0, str_01_1};
static const char *staff_02[] = {str_02_0, str_02_1, str_02_2};
static const char *staff_03[] = {str_03_0, str_03_1, str_03_2};
static const char *staff_04[] = {str_04_0, str_04_1, str_04_2, str_04_3};
static const char *staff_05[] = {str_05_0, str_05_1, str_05_2, str_05_3};
static const char *staff_06[] = {str_06_0, str_06_1, str_06_2};
static const char *staff_07[] = {str_07_0, str_07_1, str_07_2};
static const char *staff_08[] = {str_08_0, str_08_1, str_08_2, str_08_3};
static const char *staff_09[] = {str_09_0, str_09_1};
static const char *staff_10[] = {str_10_0, str_10_1, str_10_2, str_10_3};
static const char *staff_11[] = {str_11_0, str_11_1, str_11_2};
static const char *staff_12[] = {str_12_0, str_12_1};
static const char *staff_13[] = {str_13_0, str_13_1, str_13_2, str_13_3};
static const char *staff_14[] = {str_14_0, str_14_1};
static const char *staff_15[] = {str_15_0, str_15_1, str_15_2};
static const char *staff_16[] = {str_16_0, str_16_1, str_16_2, str_16_3, str_16_4};
static const char *staff_17[] = {str_17_0, str_17_1, str_17_2, str_17_3};
static const char *staff_18[] = {str_18_0, str_18_1, str_18_2, str_18_3};
static const char *staff_19[] = {str_19_0, str_19_1};
static const char *staff_20[] = {str_20_0, str_20_1};

STAFF staff_data[] =
{
	{STAGE_GROUNDS, 1, 0x01, 0x80, {0, 8000, 0}, NULL},
	{STAGE_BOB, 1, 0x01, 0x75, {713, 3918, -3889}, staff_01},
	{STAGE_WF, 1, 0x32, 0x2E, {347, 5376, 326}, staff_02},
	{STAGE_JRB, 1, 0x12, 0x16, {3800, -4840, 2727}, staff_03},
	{STAGE_CCM, 2, 0x22, 0x19, {-5464, 6656, -6575}, staff_04},
	{STAGE_BBH, 1, 0x01, 0x3C, {257, 1922, 2580}, staff_05},
	{STAGE_HMC, 1, 0xF1, 0x7B, {-6469, 1616, -6054}, staff_06},
	{STAGE_THI, 3, 0x11, 0xE0, {508, 1024, 1942}, staff_07},
	{STAGE_LLL, 2, 0x21, 0x7C, {-73, 82, -1467}, staff_08},
	{STAGE_SSL, 1, 0x41, 0x62, {-5906, 1024, -2576}, staff_09},
	{STAGE_DDD, 1, 0x32, 0x2F, {-4884, -4607, -272}, staff_10},
	{STAGE_SL, 1, 0x11, 0xDE, {1925, 3328, 563}, staff_11},
	{STAGE_WDW, 1, 0x21, 0x69, {-537, 1850, 1818}, staff_12},
	{STAGE_TTM, 1, 0x02, 0xDF, {2613, 313, 1074}, staff_13},
	{STAGE_THI, 1, 0x33, 0x36, {-2609, 512, 856}, staff_14},
	{STAGE_TTC, 1, 0x11, 0xB8, {-1304, -71, -967}, staff_15},
	{STAGE_RR, 1, 0x21, 0x40, {1565, 1024, -148}, staff_16},
	{STAGE_SA, 1, 0x01, 0x18, {-1050, -1330, -1559}, staff_17},
	{STAGE_COTMC, 1, 0x31, 0xF0, {-254, 415, -6045}, staff_18},
	{STAGE_DDD, 2, 0x91, 0xC0, {3948, 1185, -104}, staff_19},
	{STAGE_CCM, 1, 0x21, 0x1F, {3169, -4607, 5240}, staff_20},
	{STAGE_GROUNDS, 1, 0x01, 0x80, {0, 906, -1200}, NULL},
	{STAGE_NULL, 0, 0x01, 0x00, {0, 0, 0}, NULL},
};

DALIGN PLAYER *mario = &player_data[0];
DALIGN s16 game_8032D940 = 0;
DALIGN s8 game_8032D944 = 0;
