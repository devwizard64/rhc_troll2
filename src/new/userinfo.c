extern const char _AvatarSegmentRomStart[];
extern const char _AvatarSegmentRomEnd[];

u32 avatar[32*32];
char username[30+1];
unsigned char str_username[2+30+1];

static void strenc(unsigned char *dst, const char *src)
{
	int i;
	int c;
	for (i = 0; (c = src[i]) != '\0'; i++)
	{
		if      (c >= '0' && c <= '9') c -= '0'-0x00;
		else if (c >= 'A' && c <= 'Z') c -= 'A'-0x0A;
		else if (c >= 'a' && c <= 'z') c -= 'a'-0x24;
		else if (c == '-') c = 0x9F;
		else if (c == '_') c = 0x9D;
		else c = 0xF4;
		dst[i] = c;
	}
	dst[i] = 0xFF;
}

int p_userinfo(SHORT arg, int code)
{
	char *src;
	switch (arg)
	{
	case 0:
		if (emulator && !PL_GetUsername(username))
		{
			PL_GetAvatar(username, NULL, G_IM_SIZ_32b, FALSE);
		}
		break;
	case 1:
		if (username[0] != '\0')
		{
			str_username[0] = 0xF1;
			str_username[1] = 0x02;
			strenc(&str_username[2], username);
		}
		else
		{
			strenc(str_username, "Mario");
		}
		message_str = str_username;
		break;
	case 2:
		src = mem_load(
			_AvatarSegmentRomStart, _AvatarSegmentRomEnd, MEM_ALLOC_R
		);
		slidec(src, (char *)avatar);
		mem_free(src);
		if (username[0] != '\0')
		{
			PL_GetAvatar(username, avatar, G_IM_SIZ_32b, TRUE);
			strenc(str_username, username);
		}
		else
		{
			strenc(str_username, "undefined");
		}
		message_str = str_username;
		break;
	}
	return code;
}
