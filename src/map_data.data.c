#include <sm64.h>

const double map_data_8038BBB0 = 0.01;
const double map_data_8038BBB8 = -0.01;
const double map_data_8038BBC0 = -0.707;
const double map_data_8038BBC8 = 0.707;
const double map_data_8038BBD0 = 0.0001;

extern void L80382FBC(void);
extern void L80382FCC(void);

void (*const map_data_8038BBD8[])(void) =
{
	L80382FBC,
	L80382FCC,
	L80382FCC,
	L80382FCC,
	L80382FCC,
	L80382FCC,
	L80382FCC,
	L80382FCC,
	L80382FCC,
	L80382FCC,
	L80382FBC,
	L80382FCC,
	L80382FCC,
	L80382FCC,
	L80382FCC,
	L80382FCC,
	L80382FCC,
	L80382FCC,
	L80382FCC,
	L80382FCC,
	L80382FCC,
	L80382FCC,
	L80382FCC,
	L80382FCC,
	L80382FCC,
	L80382FCC,
	L80382FCC,
	L80382FCC,
	L80382FCC,
	L80382FCC,
	L80382FCC,
	L80382FCC,
	L80382FBC,
	L80382FBC,
	L80382FCC,
	L80382FBC,
	L80382FCC,
	L80382FCC,
	L80382FCC,
	L80382FCC,
	L80382FBC,
	L80382FBC,
};

const float map_data_8038BC80 = 19000;

u32 map_data_8038BE90;
BALIGN u32 map_data_8038BE98[16][16][6];
BALIGN u32 map_data_8038D698[16][16][6];
void *map_data_8038EE98;
void *map_data_8038EE9C;
s16 map_data_8038EEA0;
u32 map_data_8038EEA4[12];
