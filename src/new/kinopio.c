void kinopio_seqentry(void)
{
	u8 msg = object->o_arg >> 24;
	if (msg == 172) Na_BGM_play(1, NA_BGM_KINOPIO2, 500);
	else            Na_g_803221F4();
}
