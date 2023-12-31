#include <sm64.h>

const double weather_snow_80338280 = 0.001;
const double weather_snow_80338288 = 1.2;
const double weather_snow_80338290 = 0.8;
const double weather_snow_80338298 = 1.2;
const double weather_snow_803382A0 = 1.2;
const double weather_snow_803382A8 = 0.8;
const double weather_snow_803382B0 = 1.2;

struct weather *weather_snow;
BALIGN s32 weather_snow_80361408[3];
s16 weather_snow_80361414;
s16 weather_snow_80361416;

DALIGN s8 weather_snow_80331750 = 0;

Vtx vtx_weather_snow[] =
{
	{{{    -5,      5,      0}, 0, {     0,      0}, {0x7F, 0x7F, 0x7F, 0xFF}}},
	{{{    -5,     -5,      0}, 0, {     0,    960}, {0x7F, 0x7F, 0x7F, 0xFF}}},
	{{{     5,      5,      0}, 0, {   960,      0}, {0x7F, 0x7F, 0x7F, 0xFF}}},
};

VECS weather_snow_80331788 = {-5, 5, 0};
VECS weather_snow_80331790 = {-5, -5, 0};
VECS weather_snow_80331798 = {5, 5, 0};
