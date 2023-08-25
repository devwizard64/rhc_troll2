extern O_SCRIPT o_13000A14[];

extern O_SCRIPT o_signpost[];
extern O_SCRIPT o_13003E8C[];
extern O_SCRIPT o_13003EE4[];

extern O_SCRIPT o_1300556C[];

OBJ_COL obj_col_redcoin =
{
	/* type     */  0x00000010,
	/* offset   */  0,
	/* ap       */  2,
	/* hp       */  0,
	/* coin     */  0,
	/* hit r, h */  100, 64,
	/* dmg r, h */  0, 0,
};

void redcoin_init(void)
{
	MAP_PLANE *ground;
	UNUSED float ground_y = map_80381900(
		object->o_pos_x, object->o_pos_y, object->o_pos_z, &ground
	);
	OBJECT *obj;
	if      ((obj = obj_lib_8029F95C(o_13003E8C)))  object->parent = obj;
	else if ((obj = obj_lib_8029F95C(o_13003EE4)))  object->parent = obj;
	else                                            object->parent = NULL;
	obj_lib_802A34A4(object, &obj_col_redcoin);
}

void redcoin_update(void)
{
	if (object->o_col_flag & 0x8000)
	{
		if (object->parent)
		{
#if 0
			switch (object->parent->mem[O_V1].s32)
			{
			case 0:
				if (++object->parent->mem[O_V0].s32 == 7)
				{
					object->parent->mem[O_V1].s32 = 1;
				}
				break;
			case 1:
				if (--object->parent->mem[O_V0].s32 == 1)
				{
					object->parent->mem[O_V1].s32 = 0;
				}
				break;
			}
#else
			if (object->parent->mem[O_V0].s32 < 7)
			{
				object->parent->mem[O_V0].s32++;
			}
			else if (object->parent->mem[O_V0].s32 == 7)
			{
				OBJECT *obj;
				if ((obj = obj_lib_8029F95C(o_1300556C)))
				{
					OBJECT *signpost = obj_lib_8029E9AC(
					object, 0, S_SIGNPOST, o_signpost,
					obj->o_pos_x, obj->o_pos_y, obj->o_pos_z,
					0, 0x4000, 0
					);
					signpost->o_code = 175;
					obj->flag = 0;
				}
			}
#endif
			if (object->parent->mem[O_V0].s32 != 8)
			{
				object_b_802E5C6C(object->parent->mem[O_V0].s32, 0, 0, 0);
			}
			Na_SE_fixed(
				0x78289081 + (((u8)object->parent->mem[O_V0].s32-1) << 16)
			);
		}
		obj_lib_8029EDCC(object, S_SPARKLE, o_13000A14);
		if (object->o_code == 0) object->flag = 0;
		object->o_col_flag = 0;
	}
}
