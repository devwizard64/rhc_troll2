extern void *s_teleport_gfx(int code, SHAPE *shape, void *data);

S_SCRIPT s_teleport[] =
{
	s_scale(0.5),
	s_push(),
		s_callback(0, s_teleport_gfx),
	s_pull(),
	s_exit(),
};
