int pl_changestarexitflag(UNUSED PLAYER *pl, OBJECT *obj, int flag)
{
	if (course_index == 1)
	{
		int star = save_star_get(course_index-1);
		int level = obj->o_arg >> 24 & 0x1F;
		star |= 1 << level;
		if ((star & 7) != 7) flag = TRUE;
	}
	return flag;
}

u32 collision_8024D804(PLAYER *pl, OBJECT *obj);

int collision_8024E0C4(PLAYER *pl, UNUSED u32 flag, OBJECT *obj)
{
	u32 state = 0;
	u32 save_flag = save_flag_get();
	SHORT code = obj->o_arg >> 24;
	if (pl->state == 0x04000440 || pl->state == 0x0400044A)
	{
		if (code == 1 && !(save_flag & SAVE_000080))
		{
			if (!(save_flag & SAVE_000020))
			{
				if (!collision_8032DA90) player_80252CF4(
					pl, 0x20001305, (save_flag & SAVE_000010) ? 23 : 22
				);
				collision_8032DA90 = TRUE;
				return 0;
			}
			state = 0x0000132E;
		}
		if (code == 2 && !(save_flag & SAVE_000040))
		{
			if (!(save_flag & SAVE_000010))
			{
				if (!collision_8032DA90) player_80252CF4(
					pl, 0x20001305, (save_flag & SAVE_000020) ? 23 : 22
				);
				collision_8032DA90 = TRUE;
				return 0;
			}
			state = 0x0000132E;
		}
		if (code == 3)
		{
			if (pl->star < 3)
			{
				u32 arg = pl->star > 0 ? (174 << 16) : (24 << 16);
				arg += pl->star + 1;
				if (!collision_8032DA90) player_80252CF4(pl, 0x20001305, arg);
				collision_8032DA90 = TRUE;
				return 0;
			}
		}
		if (pl->state == 0x04000440 || pl->state == 0x0400044A)
		{
			u32 arg = 4 + collision_8024D804(pl, obj);
			if (state == 0)
			{
				if (arg & 1)    state = 0x00001320;
				else            state = 0x00001321;
			}
			pl->obj_col = obj;
			pl->obj_use = obj;
			return player_80252CF4(pl, state, arg);
		}
	}
	return 0;
}
