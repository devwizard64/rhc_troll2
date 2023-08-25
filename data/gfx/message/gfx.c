static Vtx vtx_message_box[] =
{
	{{{     0,    -80,      0}, 0, {     0,      0}, {0xFF, 0xFF, 0xFF, 0xFF}}},
	{{{   130,    -80,      0}, 0, {     0,      0}, {0xFF, 0xFF, 0xFF, 0xFF}}},
	{{{   130,      0,      0}, 0, {     0,      0}, {0xFF, 0xFF, 0xFF, 0xFF}}},
	{{{     0,      0,      0}, 0, {     0,      0}, {0xFF, 0xFF, 0xFF, 0xFF}}},
};

Gfx gfx_message_box[] =
{
	gsDPPipeSync(),
	gsSPClearGeometryMode(G_LIGHTING),
	gsDPSetCombineMode(G_CC_MODULATESE, G_CC_MODULATESE),
	gsDPSetRenderMode(G_RM_XLU_SURF, G_RM_XLU_SURF2),
	gsSPVertex(vtx_message_box, 4, 0),
	gsSP2Triangles( 0,  1,  2, 0,  0,  2,  3, 0),
	gsSPEndDisplayList(),
};

static Vtx vtx_message_char[] =
{
	{{{     0,      0,      0}, 0, {     0,    256}, {0xFF, 0xFF, 0xFF, 0xFF}}},
	{{{     8,      0,      0}, 0, {     0,      0}, {0xFF, 0xFF, 0xFF, 0xFF}}},
	{{{     8,     16,      0}, 0, {   480,      0}, {0xFF, 0xFF, 0xFF, 0xFF}}},
	{{{     0,     16,      0}, 0, {   480,    256}, {0xFF, 0xFF, 0xFF, 0xFF}}},

	{{{    -2,      0,      0}, 0, {     0,    256}, {0xFF, 0xFF, 0xFF, 0xFF}}},
	{{{     6,      0,      0}, 0, {     0,      0}, {0xFF, 0xFF, 0xFF, 0xFF}}},
	{{{    10,     16,      0}, 0, {   480,      0}, {0xFF, 0xFF, 0xFF, 0xFF}}},
	{{{     2,     16,      0}, 0, {   480,    256}, {0xFF, 0xFF, 0xFF, 0xFF}}},

	{{{     0,      0,      0}, 0, {     0,    256}, {0xFF, 0xFF, 0x00, 0xFF}}},
	{{{     8,      0,      0}, 0, {     0,      0}, {0xFF, 0xFF, 0x00, 0xFF}}},
	{{{     8,     16,      0}, 0, {   480,      0}, {0xFF, 0xFF, 0x00, 0xFF}}},
	{{{     0,     16,      0}, 0, {   480,    256}, {0xFF, 0xFF, 0x00, 0xFF}}},
};

static Vtx vtx_emoji[] =
{
	{{{     0,     10,      0}, 0, {   -16,    496}, {0xFF, 0xFF, 0xFF, 0xFF}}},
	{{{    12,     10,      0}, 0, {  1520,    496}, {0xFF, 0xFF, 0xFF, 0xFF}}},
	{{{    12,     14,      0}, 0, {  1520,    -16}, {0xFF, 0xFF, 0xFF, 0xFF}}},
	{{{     0,     14,      0}, 0, {   -16,    -16}, {0xFF, 0xFF, 0xFF, 0xFF}}},

	{{{     0,      6,      0}, 0, {   -16,    528}, {0xFF, 0xFF, 0xFF, 0xFF}}},
	{{{    12,      6,      0}, 0, {  1520,    528}, {0xFF, 0xFF, 0xFF, 0xFF}}},
	{{{    12,     10,      0}, 0, {  1520,     16}, {0xFF, 0xFF, 0xFF, 0xFF}}},
	{{{     0,     10,      0}, 0, {   -16,     16}, {0xFF, 0xFF, 0xFF, 0xFF}}},

	{{{     0,      2,      0}, 0, {   -16,    560}, {0xFF, 0xFF, 0xFF, 0xFF}}},
	{{{    12,      2,      0}, 0, {  1520,    560}, {0xFF, 0xFF, 0xFF, 0xFF}}},
	{{{    12,      6,      0}, 0, {  1520,     48}, {0xFF, 0xFF, 0xFF, 0xFF}}},
	{{{     0,      6,      0}, 0, {   -16,     48}, {0xFF, 0xFF, 0xFF, 0xFF}}},
};

Gfx gfx_message_start[] =
{
	gsDPPipeSync(),
	gsSPClearGeometryMode(G_LIGHTING),
	gsDPSetCombineMode(G_CC_MODULATERGBA_ENV, G_CC_MODULATERGBA_ENV),
	gsDPSetEnvColor(0xFF, 0xFF, 0xFF, 0xFF),
	gsDPSetRenderMode(G_RM_XLU_SURF, G_RM_XLU_SURF2),
	gsDPSetTextureFilter(G_TF_POINT),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsSPEndDisplayList(),
};

static Gfx gfx_message_char_s[] =
{
	gsDPLoadTextureBlock_4bN(G_IM_FMT_IA, 16, 8, 0, G_TX_WRAP, G_TX_WRAP, 4, 3, 0, 0),
	gsSP2Triangles( 0,  1,  2, 0,  0,  2,  3, 0),
	gsSPEndDisplayList(),
};

static Gfx gfx_message_char_0[] =
{
	gsSPVertex(&vtx_message_char[0], 4, 0),
	gsSPBranchList(gfx_message_char_s),
};

static Gfx gfx_message_char_1[] =
{
	gsSPVertex(&vtx_message_char[4], 4, 0),
	gsSPBranchList(gfx_message_char_s),
};

static Gfx gfx_message_char_2[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_MODULATERGBA, G_CC_MODULATERGBA),
	gsSPVertex(&vtx_message_char[8], 4, 0),
	gsSPDisplayList(gfx_message_char_s),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_MODULATERGBA_ENV, G_CC_MODULATERGBA_ENV),
	gsSPEndDisplayList(),
};

Gfx *gfx_message_char[] =
{
	gfx_message_char_0,
	gfx_message_char_1,
	gfx_message_char_2,
};

static Gfx gfx_emoji[] =
{
	gsDPLoadTextureBlockN(G_IM_FMT_RGBA, G_IM_SIZ_16b, 48, 18, 0, G_TX_CLAMP, G_TX_CLAMP, 6, 5, 0, 0),
	gsSP2Triangles( 0,  1,  2, 0,  0,  2,  3, 0),
	gsSPEndDisplayList(),
};

Gfx gfx_emoji_0[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_DECALRGBA, G_CC_DECALRGBA),
	gsDPSetTextureFilter(G_TF_BILERP),
	gsSPVertex(&vtx_emoji[0], 4, 0),
	gsSPBranchList(gfx_emoji),
};

Gfx gfx_emoji_1[] =
{
	gsSPVertex(&vtx_emoji[4], 4, 0),
	gsSPBranchList(gfx_emoji),
};

Gfx gfx_emoji_2[] =
{
	gsSPVertex(&vtx_emoji[8], 4, 0),
	gsSPDisplayList(gfx_emoji),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_MODULATERGBA_ENV, G_CC_MODULATERGBA_ENV),
	gsDPSetTextureFilter(G_TF_POINT),
	gsSPEndDisplayList(),
};

Gfx gfx_message_end[] =
{
	gsDPPipeSync(),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsDPSetEnvColor(0xFF, 0xFF, 0xFF, 0xFF),
	gsSPSetGeometryMode(G_SHADING_SMOOTH|G_LIGHTING),
	gsDPSetRenderMode(G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2),
	gsDPSetTextureFilter(G_TF_BILERP),
	gsSPEndDisplayList(),
};

static Vtx vtx_message_cursor[] =
{
	{{{     0,      0,      0}, 0, {     0,      0}, {0xFF, 0xFF, 0xFF, 0xFF}}},
	{{{     8,      8,      0}, 0, {     0,      0}, {0xFF, 0xFF, 0xFF, 0xFF}}},
	{{{     0,     16,      0}, 0, {     0,      0}, {0xFF, 0xFF, 0xFF, 0xFF}}},
};

Gfx gfx_message_cursor[] =
{
	gsSPClearGeometryMode(G_LIGHTING),
	gsDPSetCombineMode(G_CC_MODULATESE, G_CC_MODULATESE),
	gsDPSetRenderMode(G_RM_XLU_SURF, G_RM_XLU_SURF2),
	gsDPSetTextureFilter(G_TF_POINT),
	gsSPVertex(vtx_message_cursor, 3, 0),
	gsSP1Triangle( 0,  1,  2, 0),
	gsSPSetGeometryMode(G_LIGHTING),
	gsDPSetRenderMode(G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPEndDisplayList(),
};
