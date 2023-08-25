static Lights1 light_debug_super_s = gdSPDefLights1(
		0x7F, 0x00, 0x00, 0xFF, 0x00, 0x00, 0, 0, 80
	);

#include "super_s.vtx.h"

Gfx gfx_debug_super_s[] =
{
	gsDPPipeSync(),
	gsSPSetLights1(light_debug_super_s),
#include "super_s.h"
	gsSPEndDisplayList(),
};

static Lights1 light_debug_super_u = gdSPDefLights1(
		0x00, 0x00, 0x7F, 0x00, 0x00, 0xFF, 0, 0, 80
	);

#include "super_u.vtx.h"

Gfx gfx_debug_super_u[] =
{
	gsDPPipeSync(),
	gsSPSetLights1(light_debug_super_u),
#include "super_u.h"
	gsSPEndDisplayList(),
};

static Lights1 light_debug_super_p = gdSPDefLights1(
		0x00, 0x56, 0x00, 0x00, 0xAD, 0x00, 0, 0, 80
	);

#include "super_p.vtx.h"

Gfx gfx_debug_super_p[] =
{
	gsDPPipeSync(),
	gsSPSetLights1(light_debug_super_p),
#include "super_p.h"
	gsSPEndDisplayList(),
};

static Lights1 light_debug_super_e = gdSPDefLights1(
		0x7F, 0x00, 0x00, 0xFF, 0x00, 0x00, 0, 0, 80
	);

#include "super_e.vtx.h"

Gfx gfx_debug_super_e[] =
{
	gsDPPipeSync(),
	gsSPSetLights1(light_debug_super_e),
#include "super_e.h"
	gsSPEndDisplayList(),
};

static Lights1 light_debug_super_r = gdSPDefLights1(
		0x00, 0x00, 0x7F, 0x00, 0x00, 0xFF, 0, 0, 80
	);

#include "super_r.vtx.h"

Gfx gfx_debug_super_r[] =
{
	gsDPPipeSync(),
	gsSPSetLights1(light_debug_super_r),
#include "super_r.h"
	gsSPEndDisplayList(),
};

static Lights1 light_debug_mario_m = gdSPDefLights1(
		0x7F, 0x00, 0x00, 0xFF, 0x00, 0x00, 0, 0, 80
	);

#include "mario_m.vtx.h"

Gfx gfx_debug_mario_m[] =
{
	gsDPPipeSync(),
	gsSPSetLights1(light_debug_mario_m),
#include "mario_m.h"
	gsSPEndDisplayList(),
};

static Lights1 light_debug_mario_a = gdSPDefLights1(
		0x00, 0x00, 0x7F, 0x00, 0x00, 0xFF, 0, 0, 80
	);

#include "mario_a.vtx.h"

Gfx gfx_debug_mario_a[] =
{
	gsDPPipeSync(),
	gsSPSetLights1(light_debug_mario_a),
#include "mario_a.h"
	gsSPEndDisplayList(),
};

static Lights1 light_debug_mario_r = gdSPDefLights1(
		0x00, 0x59, 0x00, 0x00, 0xB2, 0x00, 0, 0, 80
	);

#include "mario_r.vtx.h"

Gfx gfx_debug_mario_r[] =
{
	gsDPPipeSync(),
	gsSPSetLights1(light_debug_mario_r),
#include "mario_r.h"
	gsSPEndDisplayList(),
};

static Lights1 light_debug_mario_i = gdSPDefLights1(
		0x7F, 0x00, 0x00, 0xFF, 0x00, 0x00, 0, 0, 80
	);

#include "mario_i.vtx.h"

Gfx gfx_debug_mario_i[] =
{
	gsDPPipeSync(),
	gsSPSetLights1(light_debug_mario_i),
#include "mario_i.h"
	gsSPEndDisplayList(),
};

static Lights1 light_debug_mario_o = gdSPDefLights1(
		0x00, 0x00, 0x7F, 0x00, 0x00, 0xFF, 0, 0, 80
	);

#include "mario_o.vtx.h"

Gfx gfx_debug_mario_o[] =
{
	gsDPPipeSync(),
	gsSPSetLights1(light_debug_mario_o),
#include "mario_o.h"
	gsSPEndDisplayList(),
};
