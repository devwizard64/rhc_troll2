#include <ultra64.h>

#ifdef DEBUG

extern int printf(const char *fmt, ...);
extern void print_init(void);

extern OSThread *__osFaultedThread;
extern void __osCleanupThread(void);

static const char *const exctab[] =
{
	"Interrupt",
	"TLB modification",
	"TLB exception on load",
	"TLB exception on store",
	"Address error on load",
	"Address error on store",
	"Bus error on inst.",
	"Bus error on data",
	"System call exception",
	"Breakpoint exception",
	"Reserved instruction",
	"Coprocessor unusable",
	"Arithmetic overflow",
	"Trap exception",
	"Watchpoint exception",
	"Floating point exception",
};

static const char *const fpetab[] =
{
	"Unimplemented operation",
	"Invalid operation",
	"Division by zero",
	"Overflow",
	"Underflow",
	"Inexact operation",
};

static const char gprtab[][2] =
{
	"AT", "V0", "V1",
	"A0", "A1", "A2", "A3",
	"T0", "T1", "T2", "T3",
	"T4", "T5", "T6", "T7",
	"S0", "S1", "S2", "S3",
	"S4", "S5", "S6", "S7",
	"T8", "T9",
	"GP", "SP", "FP", "RA",
};

#define islegal(x) ((x) >= 0x80000000 && (x) < 0xC0000000 && ((x) & 3) == 0)

static void fault_print(OSThread *t)
{
	int i;
	u64 *p;
	u32 sp = t->context.sp;
	u32 ra = t->context.ra;
	u32 pc = t->context.pc;
	int cause = t->context.cause >> 2 & 0x1F;
	if (cause == 23) cause = 14;
	printf("\nTHREAD:%d  (%s)\n", t->id, exctab[cause]);
	printf(
		"SR:%08X  PC:%08X  VA:%08X\n",
		t->context.sr, t->context.pc, t->context.badvaddr
	);
	for (i = 0, p = &t->context.at; i < 29; i++, p++)
	{
		int c = (i+1) % 3 > 0 && i != 28 ? ' ' : '\n';
		printf("%.2s:%016llX%c", gprtab[i], *p, c);
	}
	if (t->fp)
	{
		int flag = FALSE;
		printf("FPCSR:%08X", t->context.fpcsr);
		for (i = 0; i < 6; i++)
		{
			if (t->context.fpcsr & (1 << 17 >> i))
			{
				printf(flag ? ", %s" : "\t(%s", fpetab[i]);
				flag = TRUE;
			}
		}
		printf(flag ? ")\n" : "\n");
		for (i = 0, p = (u64 *)&t->context.fp0; i < 32; i += 2, p++)
		{
		int c = (i+1) % 3 > 0 && i != 30 ? ' ' : '\n';
			printf("F%02d:%016llX%c", i, *p, c);
		}
	}
	if (islegal(sp) && islegal(ra))
	{
		int count = 0;
		u32 prev = 0;
		printf("STACK TRACE:\n");
		if (!islegal(pc)) printf("\t%08X\n", pc = ra);
		while (islegal(pc) && count < 10)
		{
			u32 inst = *(u32 *)K0_TO_K1(pc);
			pc += 4;
			if (inst >> 16 == 0x8FBF)
			{
				ra = *(u32 *)K0_TO_K1(sp + (s16)inst);
			}
			else if (inst >> 16 == 0x27BD)
			{
				sp += (s16)inst;
			}
			else if (inst == 0x42000018)
			{
				break;
			}
			if (prev == 0x03E00008)
			{
				if ((pc = ra) == (u32)__osCleanupThread) break;
				printf("\t%08X\n", pc);
				count++;
			}
			else if (prev >> 26 == 2)
			{
				pc = pc >> 28 << 28 | prev << 6 >> 4;
				printf("\t%08X\n", pc);
				count++;
			}
			prev = inst;
		}
	}
}

void fault_main(void *arg)
{
	OSMesgQueue mq;
	OSMesg mbox[1];
	OSThread *t;
	(void)arg;
	print_init();
	osCreateMesgQueue(&mq, mbox, 1);
	osSetEventMesg(OS_EVENT_CPU_BREAK, &mq, (OSMesg)0);
	osSetEventMesg(OS_EVENT_FAULT,     &mq, (OSMesg)0);
	for (;;)
	{
		osRecvMesg(&mq, NULL, OS_MESG_BLOCK);
		if ((t = __osFaultedThread) != NULL) fault_print(t);
	}
}

#endif
