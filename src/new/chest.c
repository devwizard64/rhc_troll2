static char chest_key[5];

static void chest_rand(void)
{
	int i;
	for (i = 0; i < 5; i++) chest_key[i] = i;
	if (emulator)
	{
		u32 token;
		while (PL_GetToken(&token));
		while (token > 0)
		{
			int a;
			int b;
			char ka;
			char kb;
			a = token % 5; token /= 5;
			b = token % 5; token /= 5;
			ka = chest_key[a];
			kb = chest_key[b];
			chest_key[a] = kb;
			chest_key[b] = ka;
		}
	}
}

void chestrand_update(void)
{
	object->o_code = chest_key[object->o_arg >> 24];
}

extern O_SCRIPT o_chestrand[];

void chest_stage1_init(void)
{
	static short pos[][3] =
	{
		{3992, 3992,  0x0000},
		{4950, 5150, -0x6000},
		{4680, 2900, -0x0800},
		{2800, 3280,  0x3000},
		{3300, 5380,  0x7800},
	};
	int i;
	for (i = 0; i < 5; i++)
	{
		OBJECT *obj = obj_lib_8029E9AC(
			object, 0, 101, o_chestrand,
			pos[i][0], -1200, pos[i][1], 0, pos[i][2], 0
		);
		obj->o_arg = i << 24;
	}
	object->mem[O_V0].s32 = 1;
	object->mem[O_V2].s32 = 0;
}

void chest_stage1_update(void)
{
	switch (object->o_state)
	{
	case 0:
		chest_rand();
		if (object->mem[O_V0].s32 == 5)
		{
			Na_g_803220F0();
			object->o_state = 1;
		}
		break;
	case 1:
		if (object->o_timer == 60)
		{
			obj_lib_802A37AC();
			object_b_802F2B88(2554, 1433, 5432);
			object->o_state = 2;
		}
		break;
	}
}
