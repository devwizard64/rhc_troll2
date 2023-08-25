void snd_play(unsigned int snd)
{
	unsigned int addr = snd >> 8;
	if (addr == 0xFA) cpu_wram[0x777] = 43;
	cpu_wram[addr] = snd;
}

int snd_ispause(void)
{
	return cpu_wram[0x777] > 0;
}

void snd_output(short *buffer, unsigned int size)
{
	phw(cpu_pc - 1);
	cpu_exec(0xF2D9);
	if (cpu_wram[0x777] > 0) cpu_wram[0x777]--;
	apu_output(buffer, size);
}

void snd_init(void)
{
	nes_load(_app_szpSegmentRomStart, _app_szpSegmentRomEnd);
	nes_reset();
	aud_callback = snd_output;
}

