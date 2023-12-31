#include <sm64.h>

extern void L8024C590(void);
extern void L8024C5A0(void);
extern void L8024C5B0(void);
extern void L8024C5C0(void);
extern void L8024C5F0(void);

void (*const collision_803361B0[])(void) =
{
	L8024C590,
	L8024C5A0,
	L8024C5F0,
	L8024C5B0,
	L8024C5F0,
	L8024C5F0,
	L8024C5F0,
	L8024C5B0,
	L8024C5F0,
	L8024C5F0,
	L8024C5F0,
	L8024C5F0,
	L8024C5F0,
	L8024C5F0,
	L8024C5F0,
	L8024C5C0,
	L8024C5F0,
	L8024C5F0,
	L8024C5F0,
	L8024C5F0,
	L8024C5F0,
	L8024C5F0,
	L8024C5F0,
	L8024C5F0,
	L8024C5F0,
	L8024C5F0,
	L8024C5F0,
	L8024C5F0,
	L8024C5F0,
	L8024C5F0,
	L8024C5F0,
	L8024C5C0,
};

extern void L8024E388(void);
extern void L8024E3B0(void);
extern void L8024E3D8(void);
extern void L8024E3E8(void);
extern void L8024E3F8(void);
extern void L8024E408(void);

void (*const collision_80336230[])(void) =
{
	L8024E388,
	L8024E408,
	L8024E3B0,
	L8024E408,
	L8024E408,
	L8024E408,
	L8024E408,
	L8024E3D8,
	L8024E408,
	L8024E408,
	L8024E408,
	L8024E408,
	L8024E408,
	L8024E408,
	L8024E408,
	L8024E408,
	L8024E408,
	L8024E408,
	L8024E408,
	L8024E408,
	L8024E408,
	L8024E408,
	L8024E408,
	L8024E408,
	L8024E408,
	L8024E408,
	L8024E408,
	L8024E408,
	L8024E408,
	L8024E3E8,
	L8024E408,
	L8024E408,
	L8024E408,
	L8024E408,
	L8024E408,
	L8024E408,
	L8024E408,
	L8024E408,
	L8024E408,
	L8024E408,
	L8024E408,
	L8024E408,
	L8024E408,
	L8024E408,
	L8024E408,
	L8024E408,
	L8024E408,
	L8024E408,
	L8024E408,
	L8024E3F8,
};

extern void L8024E5A4(void);
extern void L8024E5B4(void);
extern void L8024E5C4(void);
extern void L8024E5D4(void);
extern void L8024E5E4(void);
extern void L8024E5F4(void);
extern void L8024E604(void);

void (*const collision_803362F8[])(void) =
{
	L8024E5A4,
	L8024E604,
	L8024E5B4,
	L8024E604,
	L8024E604,
	L8024E604,
	L8024E604,
	L8024E5C4,
	L8024E604,
	L8024E604,
	L8024E604,
	L8024E604,
	L8024E604,
	L8024E604,
	L8024E604,
	L8024E604,
	L8024E604,
	L8024E604,
	L8024E604,
	L8024E604,
	L8024E604,
	L8024E604,
	L8024E604,
	L8024E604,
	L8024E604,
	L8024E604,
	L8024E604,
	L8024E604,
	L8024E604,
	L8024E5D4,
	L8024E604,
	L8024E604,
	L8024E604,
	L8024E604,
	L8024E604,
	L8024E604,
	L8024E604,
	L8024E604,
	L8024E604,
	L8024E604,
	L8024E604,
	L8024E604,
	L8024E604,
	L8024E604,
	L8024E604,
	L8024E604,
	L8024E604,
	L8024E604,
	L8024E604,
	L8024E5E4,
	L8024E604,
	L8024E604,
	L8024E604,
	L8024E604,
	L8024E604,
	L8024E604,
	L8024E604,
	L8024E604,
	L8024E604,
	L8024E604,
	L8024E604,
	L8024E604,
	L8024E604,
	L8024E604,
	L8024E604,
	L8024E604,
	L8024E604,
	L8024E604,
	L8024E604,
	L8024E5F4,
};

const float collision_80336410 = 0.4F;
const float collision_80336414 = -6358;
const float collision_80336418 = -4300;

u8 collision_8033B270;
s16 collision_8033B272;

COLLISION collision_data[] =
{
	{0x00000010, collision_8024DB2C},
	{0x00010000, collision_8024DBF0},
	{0x00001000, collision_8024DC28},
	{0x08000000, collision_8024DE4C},
	{0x00002000, collision_8024DF10},
	{0x00000800, collision_8024E0C4},
	{0x00000004, collision_8024E420},
	{0x00004000, collision_8024E6EC},
	{0x40000000, collision_8024E778},
	{0x01000000, collision_8024E7D4},
	{0x02000000, collision_8024E8F0},
	{0x00000400, collision_8024E9D0},
	{0x00040000, collision_8024EAD8},
	{0x10000000, collision_8024EC54},
	{0x04000000, collision_8024ED84},
	{0x00020000, collision_8024EE44},
	{0x20000000, collision_8024EFF8},
	{0x00100000, collision_8024F354},
	{0x00200000, collision_8024F170},
	{0x00400000, collision_8024F1E0},
	{0x00008000, collision_8024F354},
	{0x00000008, collision_8024F55C},
	{0x00000040, collision_8024F8BC},
	{0x00000001, collision_8024FA60},
	{0x00000200, collision_8024F5CC},
	{0x00000080, collision_8024F354},
	{0x00080000, collision_8024F6A4},
	{0x00000100, collision_8024F4AC},
	{0x00000020, collision_8024FB30},
	{0x00000002, collision_8024FD2C},
	{0x00800000, collision_80250198},
};

u32 collision_8032DA48[] =
{
	0x00020465,
	0x00020463,
	0x00020461,
	0x010208B1,
	0x010208B1,
	0x010208B2,
	0x300222C6,
	0x300222C6,
	0x300222C6,
};

u32 collision_8032DA6C[] =
{
	0x00020464,
	0x00020462,
	0x00020460,
	0x010208B0,
	0x010208B0,
	0x010208B3,
	0x300222C5,
	0x300222C5,
	0x300222C5,
};

DALIGN u8 collision_8032DA90 = FALSE;
DALIGN u8 collision_8032DA94 = FALSE;
DALIGN u8 collision_8032DA98 = FALSE;
