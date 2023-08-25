#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <getopt.h>

static int title(char *buf, const char *str)
{
	static unsigned short katakana[] =
	{
		0xA7, 0xB1, /* a A */
		0xA8, 0xB2, /* i I */
		0xA9, 0xB3, /* u U */
		0xAA, 0xB4, /* e E */
		0xAB, 0xB5, /* o O */
		0xB6, 0xDEB6, /* KA GA */
		0xB7, 0xDEB7, /* KI GI */
		0xB8, 0xDEB8, /* KU GU */
		0xB9, 0xDEB9, /* KE GE */
		0xBA, 0xDEBA, /* KO GO */
		0xBB, 0xDEBB, /* SA ZA */
		0xBC, 0xDEBC, /* SI ZI */
		0xBD, 0xDEBD, /* SU ZU */
		0xBE, 0xDEBE, /* SE ZE */
		0xBF, 0xDEBF, /* SO ZO */
		0xC0, 0xDEC0, /* TA DA */
		0xC1, 0xDEC1, /* TI DI */
		0xAF, /* tu */
		0xC2, 0xDEC2, /* TU DU */
		0xC3, 0xDEC3, /* TE DE */
		0xC4, 0xDEC4, /* TO DO */
		0xC5, /* NA */
		0xC6, /* NI */
		0xC7, /* NU */
		0xC8, /* NE */
		0xC9, /* NO */
		0xCA, 0xDECA, 0xDFCA, /* HA BA PA */
		0xCB, 0xDECB, 0xDFCB, /* HI BI PI */
		0xCC, 0xDECC, 0xDFCC, /* HU BU PU */
		0xCD, 0xDECD, 0xDFCD, /* HE BE PE */
		0xCE, 0xDECE, 0xDFCE, /* HO BO PO */
		0xCF, /* MA */
		0xD0, /* MI */
		0xD1, /* MU */
		0xD2, /* ME */
		0xD3, /* MO */
		0xAC, 0xD4, /* ya YA */
		0xAD, 0xD5, /* yu YU */
		0xAE, 0xD6, /* yo YO */
		0xD7, /* RA */
		0xD8, /* RI */
		0xD9, /* RU */
		0xDA, /* RE */
		0xDB, /* RO */
		0x00, 0xDC, /* wa WA */
		0x00, /* WI */
		0x00, /* WE */
		0xA6, /* WO */
		0xDD, /* N */
		0xDEB3, /* VU */
		0x00, /* ka */
		0x00, /* ke */
		0xDEDC, /* VA */
		0x00, /* VI */
		0x00, /* VE */
		0xDEA6, /* VO */
		0xA5, /* MIDDLE DOT */
		0xB0, /* CHOUONPU */
	};
	int i;
	int n;
	for (i = 0;;)
	{
		int code;
		int c = *str++;
		if      (!(c & 0x80)) n = 0, code = c & 0x7F;
		else if (!(c & 0x40)) return -1;
		else if (!(c & 0x20)) n = 1, code = c & 0x1F;
		else if (!(c & 0x10)) n = 2, code = c & 0x0F;
		else if (!(c & 0x08)) n = 3, code = c & 0x07;
		else                  return -1;
		for (; n > 0; n--)
		{
			c = *str++;
			if ((c & 0xC0) != 0x80) return -1;
			code = code << 6 | (c & 0x3F);
		}
		if (code == 0)
		{
			for (; i < 20; i++) buf[i] = ' ';
			break;
		}
		else if (code >= 0x20 && code <= 0x7E)
		{
			if (code == 0x5C || code == 0x7E) return 1;
			buf[i] = code;
			if (++i >= 20) break;
		}
		else if (code >= 0x30A1 && code <= 0x30FC)
		{
			code = katakana[code-0x30A1];
			if (code == 0) return 1;
			buf[i] = code;
			if (++i >= 20) break;
			if (code >> 8)
			{
				buf[i] = code >> 8;
				if (++i >= 20) break;
			}
		}
		else
		{
			return 1;
		}
	}
	return 0;
}

static void usage(const char *path)
{
	fprintf(stderr, "usage: %s [options] romfile\n", path);
	fprintf(stderr,
		"\t-b big endian\n"
		"\t-l little endian\n"
		"\t-t title\n"
		"\t-i icode\n"
		"\t-v version\n"
	);
}

int main(int argc, char *argv[])
{
	int c;
	FILE *fp;
	int opt_endian = -1;
	const char *opt_title = NULL;
	const char *opt_icode = NULL;
	const char *opt_version = NULL;
	while ((c = getopt(argc, argv, "blt:i:v:")) != -1)
	{
		switch (c)
		{
		case 'b':
			opt_endian = 0;
			break;
		case 'l':
			opt_endian = 1;
			break;
		case 't':
			opt_title = optarg;
			break;
		case 'i':
			opt_icode = optarg;
			break;
		case 'v':
			opt_version = optarg;
			break;
		case '?':
			usage(argv[0]);
			return 1;
			break;
		}
	}
	if (argc-optind != 1)
	{
		usage(argv[0]);
		return 1;
	}
	if (opt_endian < 0)
	{
		fprintf(stderr, "error: unknown endianness\n");
		return 1;
	}
	if (opt_endian != 0)
	{
		fprintf(stderr, "error: invalid endianness\n");
		return 1;
	}
	if (opt_icode && strlen(opt_icode) < 4)
	{
		fprintf(stderr, "error: invalid initial code\n");
		return 1;
	}
	if (!(fp = fopen(argv[optind], "r+b")))
	{
		fprintf(stderr, "error: could not open '%s'\n", argv[optind]);
		return 1;
	}
	if (opt_title)
	{
		char buf[24];
		if (title(buf, opt_title))
		{
			fprintf(stderr, "error: invalid title\n");
			return 1;
		}
		fseek(fp, 0x20, SEEK_SET);
		fwrite(buf, 1, 20, fp);
	}
	if (opt_icode)
	{
		fseek(fp, 0x3B, SEEK_SET);
		fwrite(opt_icode, 1, 4, fp);
	}
	if (opt_version)
	{
		fputc(strtol(opt_version, NULL, 0), fp);
	}
	fclose(fp);
	return 0;
}
