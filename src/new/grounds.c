static Vtx vtx_grounds_paint[] =
{
	{{{   402,   3006,  -2037}, 0, {  2032,    -16}, {0xFF, 0xFF, 0xFF, 0xFF}}},
	{{{  -402,   3006,  -2037}, 0, {   -16,    -16}, {0xFF, 0xFF, 0xFF, 0xFF}}},
	{{{  -402,   2201,  -2037}, 0, {   -16,   2032}, {0xFF, 0xFF, 0xFF, 0xFF}}},
	{{{   402,   2201,  -2037}, 0, {  2032,   2032}, {0xFF, 0xFF, 0xFF, 0xFF}}},
};

static Gfx gfx_grounds_paint[] =
{
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, pal_paint),
	gsDPTileSync(),
	gsDPSetTile(0, 0, 0, 256, G_TX_LOADTILE, 0 , 0, 0, 0, 0, 0, 0),
	gsDPLoadSync(),
	gsDPLoadTLUTCmd(G_TX_LOADTILE, 15),
	gsDPSetTextureImage(G_IM_FMT_CI, G_IM_SIZ_16b, 1, txt_paint),
	gsDPSetTile(
		G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, 0, 0, 0, 0, 0, 0
	),
	gsDPLoadSync(),
	gsDPLoadBlock(G_TX_LOADTILE, 0, 0, (((64)*(64)+3)>>2)-1, CALC_DXT_4b(64)),
	gsDPSetTile(
		G_IM_FMT_CI, G_IM_SIZ_4b, (((64)>>1)+7)>>3, 0, G_TX_RENDERTILE, 0,
		G_TX_CLAMP, 6, 0, G_TX_CLAMP, 6, 0
	),
	gsDPSetTileSize(
		G_TX_RENDERTILE, 0, 0,
		((64)-1) << G_TEXTURE_IMAGE_FRAC,
		((64)-1) << G_TEXTURE_IMAGE_FRAC
	),
	gsSPVertex(vtx_grounds_paint, 4, 0),
	gsSP2Triangles( 0,  1,  2, 0,  0,  2,  3, 0),
	gsSPEndDisplayList(),
};

int p_grounds_patch(UNUSED SHORT arg, int code)
{
	Gfx *g = segment_to_virtual((Gfx *)0x0700BA68);
	gDPPipeSync(g++);
	gDPSetTextureLUT(g++, G_TT_RGBA16);
	gSPDisplayList(g++, gfx_grounds_paint);
	gDPPipeSync(g++);
	gDPSetTextureLUT(g++, G_TT_NONE);
	return code;
}
