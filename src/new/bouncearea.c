void bouncearea_update(void)
{
	float dx = mario->pos[0] - object->o_pos_x;
	float dy = mario->pos[1] - object->o_pos_y;
	float dz = mario->pos[2] - object->o_pos_z;
	if (dx > -180 && dx < 180 && dy < 100 && dz > -180 && dz < 180)
	{
		if (mario->state == 0x03000881 || mario->state == 0x01000882)
		{
			if (mario->event & 2) mario->vel[1] = 270;
		}
	}
}
