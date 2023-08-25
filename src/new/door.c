void door_updatenew(void)
{
	if (object->o_col_type == 2048 && object->o_arg >> 24 == 3)
	{
		switch (mario->star)
		{
		case 0: object->list.s.shape = shape_table[S_STARDOOR1]; break;
		case 1: object->list.s.shape = shape_table[S_STARDOOR2]; break;
		case 2: object->list.s.shape = shape_table[S_STARDOOR3]; break;
		default: object->list.s.shape = shape_table[S_STARDOOR]; break;
		}
	}
}
