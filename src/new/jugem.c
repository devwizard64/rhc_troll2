extern Gfx gfx_jugem_face2[];

void *s_jugem_face2(int code, SHAPE *shape, UNUSED void *data)
{
	if (code == S_CODE_DRAW)
	{
		if (mario->state == 0x20001306)
		{
			shape_layer_set(shape, S_LAYER_TEX_EDGE);
		}
		if (shape_layer_get(shape)) return gfx_jugem_face2;
	}
	return NULL;
}
