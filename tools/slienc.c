#include <stdlib.h>
#include <stdio.h>
#include <string.h>

#include "elf.h"
#include "elf.c"

#define SIG     "MIO0"
#define BLK_OL  1
#define BLK_SL  3
#define BLK_OH  (BLK_OL+0xFFF)
#define BLK_SH  (BLK_SL+0xF)
#define slitbl() \
{ \
	ti++; \
}
#define slicpy() \
{ \
	*c++ = data[i++]; \
	tbl[ti/8] |= 0x80 >> (ti%8); \
}
#define slipkt() \
{ \
	*p++ = x >> 8 | (sz-BLK_SL) << 4; \
	*p++ = x >> 0; \
}

static int sliblk(const char *data, size_t size, size_t i, int *of, int *sz)
{
	int flag = 0;
	size_t o = i < BLK_OH ? 0 : i-BLK_OH;
	int c = size-i < BLK_SH ? size-i : BLK_SH;
	while (o < i && *sz < c)
	{
		int s = 0;
		int n = 0;
		while (o+s < i+c && s < c)
		{
			if (data[i+s] != data[o+s < i ? o+s : o+(s%n)]) break;
			if (o+s < i) n++;
			s++;
		}
		if (*sz < s)
		{
			*of = o;
			*sz = s;
			flag = 1;
		}
		o++;
	}
	return flag;
}

static size_t slielf(ELF *elf)
{
	int i;
	uint32_t end = 0;
	for (i = 0; i < elf->symnum; i++)
	{
		uint32_t value = ntohl(elf->symtab[i].value);
		uint32_t size = ntohl(elf->symtab[i].size);
		if (end < value+size) end = value+size;
		if (ST_BIND(elf->symtab[i].info) != STB_LOCAL)
		{
			const char *name = elf_stname(elf, &elf->symtab[i]);
			printf(".globl %s; %s = 0x%08X\n", name, name, value);
		}
	}
	return end & 0xFFFFFF;
}

int main(int argc, char *argv[])
{
	FILE *fp;
	char *data;
	char *tbl;
	char *pkt;
	char *cpy;
	char *p;
	char *c;
	size_t size;
	size_t i;
	size_t ti;
	size_t pi;
	size_t ci;
	size_t po;
	size_t co;
	if (argc != 3)
	{
		fprintf(stderr, "usage: %s <input> <szp>\n", argv[0]);
		return 1;
	}
	if (!strcmp(argv[1]+strlen(argv[1])-4, ".elf"))
	{
		ELF elf;
		elf_open(&elf, argv[1], "rb");
		elf_loadsection(&elf);
		elf_load(&elf, data = malloc(elf_size(&elf)));
		size = slielf(&elf);
		elf_close(&elf);
	}
	else
	{
		if (!(fp = fopen(argv[1], "rb")))
		{
			fprintf(stderr, "error: could not read '%s'\n", argv[1]);
			return 1;
		}
		fseek(fp, 0, SEEK_END);
		data = malloc(size = ftell(fp));
		fseek(fp, 0, SEEK_SET);
		fread(data, 1, size, fp);
		fclose(fp);
	}
	ti = (size+7) / 8;
	tbl =     malloc(ti);
	pkt = p = malloc(size);
	cpy = c = malloc(size);
	memset(tbl, 0, ti);
	ti = 0;
	for (i = 0; i < size;)
	{
		int of;
		int sz;
		sz = 2;
		if (sliblk(data, size, i, &of, &sz))
		{
			int ofn;
			int szn;
			int x;
			if (szn = sz+1, sliblk(data, size, i+1, &ofn, &szn))
			{
				slicpy();
				slitbl();
				of = ofn;
				sz = szn;
			}
			x = i-of-BLK_OL;
			slipkt();
			slitbl();
			i += sz;
		}
		else
		{
			slicpy();
			slitbl();
		}
	}
	ti = (ti+7) / 8;
	ti = (ti+3) & ~3;
	pi = p-pkt;
	ci = c-cpy;
	po = 16 + ti;
	co = po + pi;
	free(data);
	printf(".data\n.incbin \"%s\"\n", argv[2]);
	if (!(fp = fopen(argv[2], "wb")))
	{
		fprintf(stderr, "error: could not write '%s'\n", argv[2]);
		return 1;
	}
	fwrite(SIG, 1, 4, fp);
	fputc(size >> 24, fp);
	fputc(size >> 16, fp);
	fputc(size >>  8, fp);
	fputc(size >>  0, fp);
	fputc(po   >> 24, fp);
	fputc(po   >> 16, fp);
	fputc(po   >>  8, fp);
	fputc(po   >>  0, fp);
	fputc(co   >> 24, fp);
	fputc(co   >> 16, fp);
	fputc(co   >>  8, fp);
	fputc(co   >>  0, fp);
	fwrite(tbl, 1, ti, fp); free(tbl);
	fwrite(pkt, 1, pi, fp); free(pkt);
	fwrite(cpy, 1, ci, fp); free(cpy);
	fclose(fp);
	return 0;
}
