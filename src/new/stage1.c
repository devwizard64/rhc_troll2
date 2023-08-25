extern short water_throwback_0[];

int p_stage1_main(SHORT arg, int code)
{
	static char flag;
	switch (arg)
	{
	case 1:
		if (message_80331470 == 3 && message_80331484 == 173)
		{
			flag = TRUE;
		}
		if (flag)
		{
			short *data = segment_to_virtual(water_throwback_0);
			data[4] = data[5] = data[6] = data[11] = 2305;
			data[7] = data[8] = data[9] = data[10] = 5680;
		}
		break;
	}
	return p_game_main(arg, code);
}
