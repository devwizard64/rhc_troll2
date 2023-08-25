extern O_SCRIPT o_13002F70[];

void retrostar_update(void)
{
	object->flag |= 0x80;
	object->o_shape_ang_y += 0x800;
	switch (object->o_mode)
	{
	case 0:
		object->o_alpha = 0xFF;
		if (object->o_pl_dist < 150)
		{
			OBJECT *obj;
			object->o_mode = 1;
			snd_exit();
			Na_SE_obj(0x0457C081, object);
			if ((obj = obj_lib_8029F95C(o_13002F70)))
			{
				obj->o_pos_x = 7350;
				obj->o_pos_y = 1700;
				obj->o_pos_z = 0;
				obj->o_ang_y = -0x8000;
			}
		}
		break;
	case 1:
		if ((object->o_alpha -= 0x11) == 0)
		{
			object->list.s.s.flag |= S_FLAG_HIDE;
			object->o_mode = 2;
			object->o_timer = 0;
		}
		break;
	case 2:
		if (object->o_timer >= 30)
		{
			object->o_mode = 3;
			Na_BGM_play(NA_MODE_DEFAULT, NA_BGM_BOWSER, 0);
		}
		break;
	case 3:
		if ((retro_fade += 0x11) == 0xFF)
		{
			object->flag = 0;
		}
		break;
	}
}
