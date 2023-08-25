extern Gfx gfx_teleport[];

void *s_teleport_gfx(int code, SHAPE *shape, UNUSED void *data)
{
	Gfx *gfx = NULL;
	Gfx *g;
	if (code == S_CODE_DRAW)
	{
		shape_layer_set(shape, S_LAYER_OPA_DECAL);
		if ((g = gfx = gfx_alloc(sizeof(Gfx)*3)))
		{
			gDPPipeSync(g++);
			gDPSetTileSize(
				g++, G_TX_RENDERTILE, -4*gfx_frame, 0,
				((32)-1) << G_TEXTURE_IMAGE_FRAC,
				((1)-1) << G_TEXTURE_IMAGE_FRAC
			);
			gSPBranchList(g++, gfx_teleport);
		}
	}
	return gfx;
}
