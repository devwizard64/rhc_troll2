#include <stdarg.h>
#include <ultra64.h>

#ifdef DEBUG

extern int _Printf(
	void *prout(void *, const char *, size_t),
	void *arg, const char *fmt, va_list ap
);

static void *proutPrintf(void *arg, const char *str, size_t n)
{
	static u16 ptr;
	size_t i;
	for (i = 0; i < n && str[i] != '\0'; i++)
	{
		u32 data;
		osPiReadIo(0x13FF0020+(ptr & ~3), &data);
		data &= ~(0xFF << (8*(~ptr & 3)));
		data |= (unsigned char)str[i] << (8*(~ptr & 3));
		osPiWriteIo(0x13FF0020+(ptr & ~3), data);
		if (++ptr >= 0xFFE0) ptr = 0;
	}
	osPiWriteIo(0x13FF0014, ptr);
	return arg;
}

int printf(const char *fmt, ...)
{
	int n;
	va_list ap;
	va_start(ap, fmt);
	n = _Printf(proutPrintf, (void *)1, fmt, ap);
	va_end(ap);
	return n;
}

void print_init(void)
{
	osPiWriteIo(0x13FF0014, 0);
	osPiWriteIo(0x13FF0004, 0);
	osPiWriteIo(0x13FF0000, 0x49533634);
}

#endif
