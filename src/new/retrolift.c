extern O_SCRIPT o_retrolift[];

void gushretrolift_update(void)
{
	if (object->o_timer > object->o_code)
	{
		OBJECT *obj;
		object->o_timer = 0;
		if ((obj = obj_lib_8029EDCC(object, S_RETROLIFTA, o_retrolift)))
		{
			obj->o_vel_y = (float)50/8 * (object->o_arg >> 24);
		}
	}
}

void retrolift_update(void)
{
	object->o_pos_x += object->o_vel_x;
	object->o_pos_y += object->o_vel_y;
	object->o_pos_z += object->o_vel_z;
	if (object->o_pos_y < -800 || object->o_pos_y > 2400) object->flag = 0;
}

void retrolift_b_update(void)
{
	if (obj_mario->obj_ground == object)
	{
		float vel = (float)50/8 * (object->o_arg >> 24);
		switch (object->o_code)
		{
		case 0: object->o_vel_x = vel; break;
		case 1: object->o_vel_y = vel; break;
		case 2: object->o_vel_z = vel; break;
		}
	}
}
