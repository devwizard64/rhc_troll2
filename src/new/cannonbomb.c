extern O_SCRIPT o_13003274[];

static void cannonbombse(void)
{
	switch (object->list.s.skeleton.frame)
	{
	case 5:
	case 16:
		obj_sfx_802CA1E0(0x50270081);
		break;
	}
}

static void cannonbombmsg(int x)
{
	if (camera_8028FF04(162, object, x))
	{
		pl_demo_80257640(0);
		object->flag &= ~0x20;
		object->o_col_flag = 0;
		object->o_state = 0;
	}
}

/* init */
void object_b_802E76AC(void)
{
	object->o_gravity = 2.5;
	object->o_friction = 0.8;
	object->o_density = 1.3;
	object->o_col_arg = 0x4000;
}

static void object_b_802E7814(SHORT a0, SHORT a1)
{
	OBJECT *obj;
	switch (object->mem[O_V3].s32)
	{
	case 0:
		if (camera_8028FF04(162, object, a0)) object->mem[O_V3].s32 = 1;
		break;
	case 1:
		obj = obj_lib_8029F95C(o_13003274);
		if (camera_8029000C(150, obj) == -1) object->mem[O_V3].s32 = 2;
		break;
	case 2:
		cannonbombmsg(a1);
		break;
	}
}

/* update */
void object_b_802E7C4C(void)
{
	switch (object->o_state)
	{
	case 0:
		object->mem[O_V5].f32 = object->o_pos_x;
		object->mem[O_V6].f32 = object->o_pos_y;
		object->mem[O_V7].f32 = object->o_pos_z;
		object_b_802E4E90();
		cannonbombse();
		if (object->o_pl_dist < 1000)
		{
			object->o_ang_y =
				obj_lib_8029E530(object->o_ang_y, object->o_pl_ang, 0x140);
		}
		if (object->o_col_flag == 0x8000) object->o_state = 1;
		break;
	case 1:
		cannonbombse();
		object->o_ang_y =
			obj_lib_8029E530(object->o_ang_y, object->o_pl_ang, 0x1000);
		if ((s16)object->o_ang_y == (s16)object->o_pl_ang)
		{
			object->o_state = 2;
			switch (object->mem[O_V2].s32)
			{
			case 1:
				if (!save_cannon_get())
				{
					save_cannon_set();
					object->mem[O_V3].s32 = 0;
				}
				else
				{
					object->mem[O_V3].s32 = 2;
				}
				break;
			case 2:
				if (save_cannon_get())
				{
					save_cannon_clr();
					object->mem[O_V3].s32 = 0;
				}
				else
				{
					object->mem[O_V3].s32 = 2;
				}
				break;
			}
		}
		obj_sfx_802CA1E0(0x045BFF81);
		break;
	case 2:
		if (pl_demo_80257640(1) == 2)
		{
			object->flag |= 0x20;
			switch (object->mem[O_V2].s32)
			{
			case 0:
				cannonbombmsg(object->o_code);
				break;
			case 1:
				object_b_802E7814(47, 106);
				break;
			case 2:
				object_b_802E7814(4, 105);
				break;
			}
		}
		break;
	}
	object_b_802E5360(object, 3000);
	object_b_802E7324(&object->mem[O_V0].s32);
	object->o_col_flag = 0;
}
