void bombking_stickON(void)
{
	stick_flag = TRUE;
}

void bombking_stickOFF(void)
{
	stick_flag = FALSE;
}

void bombking_makestar(void)
{
	obj_lib_802A5588(0, 2000, -5000, 200);
}
