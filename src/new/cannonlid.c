extern O_SCRIPT o_130004A8[];

static void makecannon(void)
{
	OBJECT *obj;
	if ((obj = obj_lib_8029EDCC(object, S_3A_128, o_130004A8)))
	{
		obj->o_code = object->o_code;
		obj->o_pos_x = object->o_org_x;
		obj->o_pos_y = object->o_org_y;
		obj->o_pos_z = object->o_org_z;
		object->mem[O_V0].ptr = obj;
	}
}

static void killcannon(void)
{
	OBJECT *obj;
	if ((obj = object->mem[O_V0].ptr))
	{
		obj->child->flag = 0;
		obj->flag = 0;
		object->mem[O_V0].ptr = NULL;
	}
}

/* init */
void object_b_802E7C90(void)
{
	if (save_cannon_get())
	{
		makecannon();
		object->list.s.s.flag |= S_FLAG_HIDE;
		object->o_state = 1;
	}
}

/* update */
void object_b_802E7E54(void)
{
	switch (object->o_state)
	{
	case 0:
	case 1:
		object->o_shape_dist = 4000;
		if (save_cannon_get() != object->o_state) object->o_state += 2;
		break;
	case 2:
	case 3:
		object->o_shape_dist = 20000;
		if (object->o_timer >= 60) object->o_state += 2;
		break;
	case 4:
		if (object->o_timer == 0)
		{
			obj_sfx_802CA1E0(0x30478081);
			makecannon();
		}
		if      (object->o_timer < 30)  object->o_pos_y -= 0.5F;
		else if (object->o_timer < 80)  object->o_pos_x += 4.0F;
		else
		{
			object->o_pos_x -= 4.0F * 50;
			object->o_pos_y += 0.5F * 30;
			object->list.s.s.flag |= S_FLAG_HIDE;
			object->o_state = 1;
		}
		break;
	case 5:
		if (object->o_timer == 0)
		{
			obj_sfx_802CA1E0(0x30478081);
			object->list.s.s.flag &= ~S_FLAG_HIDE;
			object->o_pos_x += 4.0F * 50;
			object->o_pos_y -= 0.5F * 30;
		}
		if      (object->o_timer < 50)  object->o_pos_x -= 4.0F;
		else if (object->o_timer < 80)  object->o_pos_y += 0.5F;
		else
		{
			killcannon();
			object->o_state = 0;
		}
		break;
	}
	if (!(object->list.s.s.flag & S_FLAG_HIDE)) map_data_803839CC();
}
