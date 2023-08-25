void ironball_checkjump(void)
{
	if ((mario->state & 0x01000000) && mario->obj->list.s.skeleton.frame < 0)
	{
		if (mario->event & 2) object->o_vel_y = 40;
	}
}
