static s8 snd_se2[] =
{
	/* 00 */ SND_SE1_SMALLJUMP,
	/* 01 */ SND_SE1_SMALLJUMP,
	/* 02 */ SND_SE1_SMALLJUMP,
	/* 03 */ SND_SE1_SMALLJUMP,
	/* 04 */ SND_SE1_JUMP,
	/* 05 */ SND_SE1_BUMP,
	/* 06 */ -1,
	/* 07 */ SND_SE1_FIREBALL,
	/* 08 */ -1,
	/* 09 */ -1,
	/* 0A */ SND_SE1_PIPE,
	/* 0B */ -1,
	/* 0C */ -1,
	/* 0D */ -1,
	/* 0E */ -1,
	/* 0F */ -1,
	/* 10 */ -1,
	/* 11 */ -1,
	/* 12 */ -1,
	/* 13 */ -1,
	/* 14 */ -1,
	/* 15 */ SND_SEQ_DEATH,
	/* 16 */ -1,
	/* 17 */ -1,
	/* 18 */ -1,
	/* 19 */ -1,
	/* 1A */ -1,
	/* 1B */ -1,
	/* 1C */ -1,
	/* 1D */ -1,
	/* 1E */ SND_SE1_BUMP,
	/* 1F */ SND_SE1_KICK,
	/* 20 */ -1,
	/* 21 */ -1,
	/* 22 */ -1,
	/* 23 */ SND_SEQ_DEATH,
	/* 24 */ SND_SE1_BUMP,
	/* 25 */ -1,
	/* 26 */ -1,
	/* 27 */ -1,
	/* 28 */ -1,
	/* 29 */ -1,
	/* 2A */ -1,
	/* 2B */ SND_SE1_JUMP,
	/* 2C */ SND_SE1_JUMP,
	/* 2D */ SND_SE1_JUMP,
	/* 2E */ SND_SE1_JUMP,
	/* 2F */ SND_SE1_JUMP,
	/* 30 */ SND_SE1_BUMP,
	/* 31 */ -1,
	/* 32 */ -1,
	/* 33 */ -1,
	/* 34 */ -1,
	/* 35 */ -1,
	/* 36 */ -1,
	/* 37 */ -1,
};

#if 0
static u16 setab[12][2];
static u8 seidx;
#endif

extern void __real_Na_SE_play(NA_SE se, f32 *pos);

void __wrap_Na_SE_play(NA_SE se, f32 *pos)
{
	if (aud_callback == snd_output)
	{
		unsigned int snd = 0;
		int bank = se >> 28;
		int index = se >> 16 & 0xFF;
		switch (bank)
		{
		case 0:
			switch (index)
			{
			case 0x44: snd = SND(SND_SE1_BUMP); break;
			case 0x59: snd = SND(SND_SE1_STOMP); break;
			case 0x60: snd = SND(SND_SE2_BLAST); break;
			}
			break;
		case 2:
			if (snd_se2[index] < 0) return;
			snd = SND(snd_se2[index]);
			break;
		case 3:
			switch (index)
			{
			case 0x11: snd = SND(SND_SE2_COIN); break;
			case 0x12: snd = SND(SND_SE2_COIN); break;
			case 0x58: snd = SND(SND_SE2_1UP); break;
			}
			break;
		case 5:
			switch (index)
			{
			case 0x1A: snd = SND(SND_SE2_BLAST); break;
			case 0x20: return;
			case 0x2F: return;
			case 0x30: return;
			case 0x60: return;
			}
			break;
		case 7:
			switch (index)
			{
			case 0x02: snd = SND(SND_PAUSE); break;
			case 0x03: snd = SND(SND_UNPAUSE); break;
			case 0x16: snd = SND(SND_SE1_PIPE); break;
			case 0x18: return;
			case 0x19: snd = SND(SND_SE1_PIPE); break;
			}
			break;
		}
		if (snd)
		{
			snd_play(snd);
			return;
		}
#if 0
		switch (bank)
		{
		case 0: break;
		case 1: break;
		case 7: break;
		default:
			switch (se >> 16 & 0xF0FF)
			{
			case 0x3030:
			case 0x3036:
				break;
			default:
				setab[seidx][0] = 30*5;
				setab[seidx][1] = se >> 16 & 0xF0FF;
				if (++seidx >= 12) seidx = 0;
				break;
			}
			break;
		}
#endif
	}
	__real_Na_SE_play(se, pos);
}

extern void __real_Na_BGM_play(u8, u16, u16);

void __wrap_Na_BGM_play(u8 channel, u16 bgm, u16 fadein)
{
	if (aud_callback == snd_output)
	{
		unsigned int snd = 0;
		int seq = bgm & 0x7F;
		switch (seq)
		{
		case NA_SEQ_BOWSER: snd = SND(SND_SEQ_CASTLE); break;
		}
		if (snd)
		{
			snd_play(snd);
			return;
		}
	}
	__real_Na_BGM_play(channel, bgm, fadein);
}
