void game_8024A700(SHORT stage, SHORT scene, SHORT port, unsigned int arg);

int canpause(void)
{
	if (aud_callback == snd_output && snd_ispause()) return FALSE;
	return TRUE;
}

void pauseexit(void)
{
	if (aud_callback == snd_output) snd_play(SND(SND_SEQ_NULL));
}

void kinopioexit(void)
{
	Na_SE_fixed(NA_SE7_1E);
	game_8024A700(2, 1, 10, 0);
	game_exit_fadeout(0, 1);
	course_prev = 0;
}
