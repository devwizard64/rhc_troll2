void mus_output(short *buffer, unsigned int size)
{
	nes_nmi();
	apu_output(buffer, size);
}

void mus_init(const char *start, const char *end)
{
	nes_load(start, end);
	nes_reset();
	aud_callback = mus_output;
}
