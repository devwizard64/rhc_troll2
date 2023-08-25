#include <sm64.h>

#include "../paint.h"

#define N   0x80
#define V   0x40
#define B   0x10
#define D   0x08
#define I   0x04
#define Z   0x02
#define C   0x01

#define APU_DELTA 28 /* ((float)1789773/2 / 32000) */

typedef struct apu
{
	u8 ctrl[4];
	u8 sweep[2];
	u8 sweep_val[2];
	u16 period[4];
	u16 timer[4];
	u8 duty[4];
	u8 len[4];
	u8 env[4];
	u8 vol[4];
	u16 lfsr;
	u8 mask;
	u8 flag;
	u8 frame;
}
APU;

static const u8 apu_len_table[] =
{
	10, 254, 20, 2, 40, 4, 80, 6, 160, 8, 60, 10, 14, 12, 26, 14,
	12, 16, 24, 18, 48, 20, 96, 22, 192, 24, 72, 26, 16, 28, 32, 30,
};

static const u16 apu_noise_table[] =
{
	4, 8, 16, 32, 64, 96, 128, 160, 202, 254, 380, 508, 762, 1016, 2034, 4068,
};

static u8 nes_rom[0xA000];
#define cpu_prg (nes_rom-0x8000)
#define ppu_chr (nes_rom+0x8000)

static u8 chr_txt[8192];

static u8 cpu_wram[2048];

static u8 ppu_tbl[2048];
static u8 ppu_oam[256];
static u8 ppu_pal[32];

static u16 cpu_pc;
static u8 cpu_p;
static u8 cpu_a;
static u8 cpu_x;
static u8 cpu_y;
static u8 cpu_s;

static u8 ppu_ctrl;
static u8 ppu_mask;
static u8 ppu_status;
static u8 oam_addr;
static u8 ppu_scroll[2];
static u16 ppu_addr;
static u8 ppu_index;
static u8 ppu_latch;

static char chr_bank;

static APU apu;

static u8 joy_p1;
static u8 joy_p2;

static void apu_step_env(void);
static void apu_step_len(void);

static u8 joy_read(OSContPad *pad)
{
	if (pad)
	{
		u16 button = pad->button;
		if (pad->stick_y > +40) button |= U_JPAD;
		if (pad->stick_y < -40) button |= D_JPAD;
		if (pad->stick_x < -40) button |= L_JPAD;
		if (pad->stick_x > +40) button |= R_JPAD;
		return button >> 8;
	}
	return 0;
}

static u8 ppu_ld(u16 addr)
{
	u8 data = 0;
	if (addr >= 0x3F00)
	{
		data = ppu_pal[(addr & 3) ? (addr & 31) : (addr & 15)];
	}
	else if (addr >= 0x2000)
	{
		data = ppu_tbl[addr & 2047];
	}
	else
	{
		data = ppu_chr[addr];
	}
	return data;
}

static void ppu_st(u16 addr, u8 data)
{
	if (addr >= 0x3F00)
	{
		ppu_pal[(addr & 3) ? (addr & 31) : (addr & 15)] = data & 63;
	}
	else if (addr >= 0x2000)
	{
		ppu_tbl[addr & 2047] = data;
	}
}

static u8 ld(u16 addr)
{
	u8 data = 0;
	if (addr >= 0x8000)
	{
		data = cpu_prg[addr];
	}
	else if (addr < 0x2000)
	{
		data = cpu_wram[addr & 2047];
	}
	else if (addr < 0x4000)
	{
		switch (addr & 7)
		{
		case 2:
			data = ppu_status;
			ppu_status ^= 0xC0;
			ppu_index = 0;
			break;
		case 4:
			data = ppu_oam[oam_addr];
			break;
		case 7:
			if (ppu_addr < 0x3F00)
			{
				data = ppu_latch;
				ppu_latch = ppu_ld(ppu_addr);
			}
			else
			{
				ppu_latch = ppu_ld(ppu_addr - 0x1000);
			}
			ppu_addr += (ppu_ctrl & 4) ? 32 : 1;
			ppu_addr &= 0x3FFF;
			break;
		}
	}
	else if (addr < 0x4020)
	{
		switch (addr)
		{
		case 0x4016:
			data = joy_p1 >> 7;
			joy_p1 <<= 1;
			break;
		case 0x4017:
			data = joy_p2 >> 7;
			joy_p2 <<= 1;
			break;
		}
	}
	return data;
}

static void st(u16 addr, u8 data)
{
	if (addr < 0x2000)
	{
		cpu_wram[addr & 2047] = data;
	}
	else if (addr < 0x4000)
	{
		switch (addr & 7)
		{
		case 0:
			ppu_ctrl = data;
			break;
		case 1:
			ppu_mask = data;
			break;
		case 3:
			oam_addr = data;
			break;
		case 4:
			ppu_oam[oam_addr] = data;
			oam_addr++;
			break; 
		case 5:
			ppu_scroll[ppu_index] = data;
			ppu_index ^= 1;
			break;
		case 6:
			if (ppu_index == 0) ppu_addr = (ppu_addr & 0x00FF) | data << 8;
			else                ppu_addr = (ppu_addr & 0xFF00) | data << 0;
			ppu_index ^= 1;
			break;
		case 7:
			ppu_st(ppu_addr, data);
			ppu_addr += (ppu_ctrl & 4) ? 32 : 1;
			ppu_addr &= 0x3FFF;
			break;
		}
	}
	else if (addr < 0x4020)
	{
		int i = (addr-0x4000) >> 2;
		switch (addr)
		{
		case 0x4000:
		case 0x4004:
		case 0x4008:
		case 0x400C:
			apu.ctrl[i] = data;
			if (i != 2) apu.flag |= 1 << i;
			break;
		case 0x4001:
		case 0x4005:
			apu.sweep[i] = data;
			apu.sweep_val[i] = 0;
			break;
		case 0x4002:
		case 0x4006:
		case 0x400A:
			apu.period[i] = (apu.period[i] & 0xFF00) | data;
			break;
		case 0x400E:
			apu.period[3] = apu_noise_table[data & 15];
			apu.duty[3] = (data & 0x80) ? 6 : 1;
			break;
		case 0x4003:
		case 0x4007:
			apu.duty[i] = 0;
			FALLTHROUGH;
		case 0x400B:
			apu.period[i] = (apu.period[i] & 0xFF) | (data & 7) << 8;
			if (i == 2) apu.timer[2] = apu.period[2];
			FALLTHROUGH;
		case 0x400F:
			apu.len[i] = apu_len_table[data >> 3];
			apu.flag |= 1 << i;
			break;
		case 0x4014:
			memcpy(&ppu_oam, &cpu_wram[data << 8], 256);
			break;
		case 0x4015:
			apu.mask = data;
			for (i = 0; i < 4; i++)
			{
				if (!(apu.mask >> i & 1)) apu.len[i] = 0;
			}
			break;
		case 0x4016:
			joy_p1 = joy_read(cont_1->pad);
			joy_p2 = joy_read(cont_2->pad);
			break;
		case 0x4017:
			apu.frame = 0;
			apu_step_env();
			apu_step_len();
			break;
		}
	}
}

/*
static u16 ldw(u16 addr)
{
	u8 lo = ld(addr+0);
	u8 hi = ld(addr+1);
	return lo | hi << 8;
}

static void stw(u16 addr, u16 data)
{
	st(addr+0, data >> 0);
	st(addr+1, data >> 8);
}
*/

static u16 ldi(u16 addr)
{
	u8 lo = ld(addr);
	u8 hi = ld((addr & 0xFF00) | ((addr+1) & 0xFF));
	return lo | hi << 8;
}

static void ph(u8 data)
{
	cpu_wram[0x100 + cpu_s] = data;
	cpu_s--;
}

static u8 pl(void)
{
	cpu_s++;
	return cpu_wram[0x100 + cpu_s];
}

static void phw(u16 data)
{
	ph(data >> 8);
	ph(data >> 0);
}

static u16 plw(void)
{
	u8 lo = pl();
	u8 hi = pl();
	return lo | hi << 8;
}

static u8 byte(void)
{
	return ld(cpu_pc++);
}

static u16 word(void)
{
	return byte() | byte() << 8;
}

static int resultNZ(u8 data)
{
	cpu_p &= ~(N|Z);
	cpu_p |= data & N;
	if (data == 0) cpu_p |= Z;
	return 0;
}

static int bit(u8 data)
{
	cpu_p &= ~(N|V|Z);
	cpu_p |= data & (N|V);
	if ((cpu_a & data) == 0) cpu_p |= Z;
	return 0;
}

static int cmp(u8 x, u8 y)
{
	int data = (int)x - (int)y;
	cpu_p &= ~(N|Z|C);
	if (data >= 0) cpu_p |= C;
	cpu_p |= data & N;
	if ((u8)data == 0) cpu_p |= Z;
	return 0;
}

static u8 asl(u8 data)
{
	cpu_p &= ~(N|Z|C);
	cpu_p |= data >> 7;
	data <<= 1;
	cpu_p |= data & N;
	if (data == 0) cpu_p |= Z;
	return data;
}

static u8 lsr(u8 data)
{
	cpu_p &= ~(N|Z|C);
	cpu_p |= data & C;
	data >>= 1;
	cpu_p |= data & N;
	if (data == 0) cpu_p |= Z;
	return data;
}

static u8 rol(u8 data)
{
	u8 c = cpu_p & C;
	cpu_p &= ~(N|Z|C);
	cpu_p |= data >> 7;
	data = data << 1 | c;
	cpu_p |= data & N;
	if (data == 0) cpu_p |= Z;
	return data;
}

static u8 ror(u8 data)
{
	u8 c = cpu_p & C;
	cpu_p &= ~(N|Z|C);
	cpu_p |= data & C;
	data = data >> 1 | c << 7;
	cpu_p |= data & N;
	if (data == 0) cpu_p |= Z;
	return data;
}

static int adc(u8 data)
{
	u8 c = cpu_p & C;
	int a = (int)cpu_a + data + c;
	cpu_p &= ~(N|V|Z|C);
	if (!((cpu_a^data) & 0x80) && ((cpu_a^a) & 0x80)) cpu_p |= V;
	if (a > 0xFF) cpu_p |= C;
	cpu_a = a;
	cpu_p |= cpu_a & N;
	if (cpu_a == 0) cpu_p |= Z;
	return 0;
}

static int sbc(u8 data)
{
	u8 c = cpu_p & C;
	int a = (int)cpu_a - data - 1 + c;
	cpu_p &= ~(N|V|Z|C);
	if (((cpu_a^data) & 0x80) && ((cpu_a^a) & 0x80)) cpu_p |= V;
	if (a >= 0) cpu_p |= C;
	cpu_a = a;
	cpu_p |= cpu_a & N;
	if (cpu_a == 0) cpu_p |= Z;
	return 0;
}

/******************************************************************************/

#define op_brk 0
#define op_ora_izx 0

#define op_kil NULL
#define op_slo_izx NULL
#define op_nop_zp NULL

static int op_ora_zp(void)
{
	u8 addr = byte();
	cpu_a |= ld(addr);
	return resultNZ(cpu_a);
}

static int op_asl_zp(void)
{
	u8 addr = byte();
	st(addr, asl(ld(addr)));
	return 0;
}

#define op_slo_zp NULL

#define op_php 0

static int op_ora_imm(void)
{
	u8 imm = byte();
	cpu_a |= imm;
	return resultNZ(cpu_a);
}

static int op_asl(void)
{
	cpu_a = asl(cpu_a);
	return 0;
}

#define op_anc_imm NULL
#define op_nop_abs NULL

static int op_ora_abs(void)
{
	u16 addr = word();
	cpu_a |= ld(addr);
	return resultNZ(cpu_a);
}

static int op_asl_abs(void)
{
	u16 addr = word();
	st(addr, asl(ld(addr)));
	return 0;
}

#define op_slo_abs NULL

static int op_bpl(void)
{
	s8 rel = byte();
	if (!(cpu_p & N)) cpu_pc += rel;
	return 0;
}

#define op_ora_izy 0

#define op_rla_izx NULL
#define op_nop_zpx NULL

static int op_ora_zpx(void)
{
	u8 addr = byte();
	cpu_a |= ld(addr + cpu_x);
	return resultNZ(cpu_a);
}

#define op_asl_zpx 0

#define op_slo_zpx NULL

static int op_clc(void)
{
	cpu_p &= ~C;
	return 0;
}

static int op_ora_aby(void)
{
	u16 addr = word();
	cpu_a |= ld(addr + cpu_y);
	return resultNZ(cpu_a);
}

#define op_slo_aby NULL
#define op_nop_abx NULL

static int op_ora_abx(void)
{
	u16 addr = word();
	cpu_a |= ld(addr + cpu_x);
	return resultNZ(cpu_a);
}

#define op_asl_abx 0

#define op_slo_abx NULL

static int op_jsr_abs(void)
{
	u16 addr = word();
	phw(cpu_pc - 1);
	cpu_pc = addr;
	return 0;
}

#define op_and_izx 0

#define op_rla_izx NULL

static int op_bit_zp(void)
{
	u8 addr = byte();
	return bit(ld(addr));
}

static int op_and_zp(void)
{
	u8 addr = byte();
	cpu_a &= ld(addr);
	return resultNZ(cpu_a);
}

static int op_rol_zp(void)
{
	u8 addr = byte();
	st(addr, rol(ld(addr)));
	return 0;
}

#define op_rla_zp NULL

#define op_plp 0

static int op_and_imm(void)
{
	u8 imm = byte();
	cpu_a &= imm;
	return resultNZ(cpu_a);
}

static int op_rol(void)
{
	cpu_a = rol(cpu_a);
	return 0;
}

#define op_anc_imm NULL

static int op_bit_abs(void)
{
	u16 addr = word();
	return bit(ld(addr));
}

static int op_and_abs(void)
{
	u16 addr = word();
	cpu_a &= ld(addr);
	return resultNZ(cpu_a);
}

static int op_rol_abs(void)
{
	u16 addr = word();
	st(addr, rol(ld(addr)));
	return 0;
}

#define op_rla_abs NULL

static int op_bmi(void)
{
	s8 rel = byte();
	if (cpu_p & N) cpu_pc += rel;
	return 0;
}

#define op_and_izy 0

#define op_rla_izy NULL

#define op_and_zpx 0
#define op_rol_zpx 0

#define op_rla_zpx NULL

static int op_sec(void)
{
	cpu_p |= C;
	return 0;
}

static int op_and_aby(void)
{
	u16 addr = word();
	cpu_a &= ld(addr + cpu_y);
	return resultNZ(cpu_a);
}

#define op_rla_aby NULL

static int op_and_abx(void)
{
	u16 addr = word();
	cpu_a &= ld(addr + cpu_x);
	return resultNZ(cpu_a);
}

#define op_rol_abx 0

#define op_rla_abx NULL

static int op_rti(void)
{
	cpu_p = (pl() & (N|V|D|I|Z|C));
	cpu_pc = plw() + 1;
	return 0;
}

#define op_eor_izx 0

#define op_sre_izx NULL

static int op_eor_zp(void)
{
	u8 addr = byte();
	cpu_a ^= ld(addr);
	return resultNZ(cpu_a);
}

static int op_lsr_zp(void)
{
	u8 addr = byte();
	st(addr, lsr(ld(addr)));
	return 0;
}

#define op_sre_zp NULL

static int op_pha(void)
{
	ph(cpu_a);
	return 0;
}

static int op_eor_imm(void)
{
	u8 imm = byte();
	cpu_a ^= imm;
	return resultNZ(cpu_a);
}

static int op_lsr(void)
{
	cpu_a = lsr(cpu_a);
	return 0;
}

#define op_alr_imm NULL

static int op_jmp_abs(void)
{
	u16 addr = word();
	u16 pc = cpu_pc - 3;
	cpu_pc = addr;
	if (addr == pc) return 1;
	return 0;
}

#define op_eor_abs 0

static int op_lsr_abs(void)
{
	u16 addr = word();
	st(addr, lsr(ld(addr)));
	return 0;
}

#define op_sre_abs NULL

#define op_bvc 0
#define op_eor_izy 0

#define op_sre_izy NULL

#define op_eor_zpx 0
#define op_lsr_zpx 0

#define op_sre_zpx NULL

#define op_cli 0
#define op_eor_aby 0

#define op_sre_aby NULL

#define op_eor_abx 0
#define op_lsr_abx 0

#define op_sre_abx NULL

static int op_rts(void)
{
	cpu_pc = plw() + 1;
	return 0;
}

#define op_adc_izx 0

#define op_rra_izx NULL

static int op_adc_zp(void)
{
	u8 addr = byte();
	return adc(ld(addr));
}

#if 0
#define op_ror_zp 0
#else
static int op_ror_zp(void)
{
	u8 addr = byte();
	st(addr, ror(ld(addr)));
	return 0;
}
#endif

#define op_rra_zp NULL

static int op_pla(void)
{
	cpu_a = pl();
	return resultNZ(cpu_a);
}

static int op_adc_imm(void)
{
	u8 imm = byte();
	return adc(imm);
}

static int op_ror(void)
{
	cpu_a = ror(cpu_a);
	return 0;
}

#define op_arr_imm NULL

static int op_jmp_ind(void)
{
	u16 addr = word();
	cpu_pc = ldi(addr);
	return 0;
}

static int op_adc_abs(void)
{
	u16 addr = word();
	return adc(ld(addr));
}

#define op_ror_abs 0

#define op_rra_abs NULL

#define op_bvs 0
#define op_adc_izy 0

#define op_rra_izy NULL

static int op_adc_zpx(void)
{
	u8 addr = byte();
	return adc(ld(addr + cpu_x));
}

#define op_ror_zpx 0

#define op_rra_zpx NULL

static int op_sei(void)
{
	cpu_p |= I;
	return 0;
}

static int op_adc_aby(void)
{
	u16 addr = word();
	return adc(ld(addr + cpu_y));
}

#define op_rra_aby NULL

static int op_adc_abx(void)
{
	u16 addr = word();
	return adc(ld(addr + cpu_x));
}

static int op_ror_abx(void)
{
	u16 addr = word();
	st(addr + cpu_x, ror(ld(addr + cpu_x)));
	return 0;
}

#define op_rra_abx NULL
#define op_nop_imm NULL

#define op_sta_izx 0

#define op_sax_izx NULL

static int op_sty_zp(void)
{
	u8 addr = byte();
	st(addr, cpu_y);
	return 0;
}

static int op_sta_zp(void)
{
	u8 addr = byte();
	st(addr, cpu_a);
	return 0;
}

static int op_stx_zp(void)
{
	u8 addr = byte();
	st(addr, cpu_x);
	return 0;
}

#define op_sax_zp NULL

static int op_dey(void)
{
	cpu_y--;
	return resultNZ(cpu_y);
}

static int op_txa(void)
{
	cpu_a = cpu_x;
	return resultNZ(cpu_a);
}

#define op_xaa_imm NULL

static int op_sty_abs(void)
{
	u16 addr = word();
	st(addr, cpu_y);
	return 0;
}

static int op_sta_abs(void)
{
	u16 addr = word();
	st(addr, cpu_a);
	return 0;
}

static int op_stx_abs(void)
{
	u16 addr = word();
	st(addr, cpu_x);
	return 0;
}

#define op_sax_abs NULL

static int op_bcc(void)
{
	s8 rel = byte();
	if (!(cpu_p & C)) cpu_pc += rel;
	return 0;
}

static int op_sta_izy(void)
{
	u8 addr = byte();
	st(ldi(addr) + cpu_y, cpu_a);
	return 0;
}

#define op_ahx_izy NULL

static int op_sty_zpx(void)
{
	u8 addr = byte();
	st(addr + cpu_x, cpu_y);
	return 0;
}

static int op_sta_zpx(void)
{
	u8 addr = byte();
	st(addr + cpu_x, cpu_a);
	return 0;
}

#define op_stx_zpy 0

#define op_sax_zpy NULL

static int op_tya(void)
{
	cpu_a = cpu_y;
	return resultNZ(cpu_a);
}

static int op_sta_aby(void)
{
	u16 addr = word();
	st(addr + cpu_y, cpu_a);
	return 0;
}

static int op_txs(void)
{
	cpu_s = cpu_x;
	return 0;
}

#define op_tas_aby 0

#define op_shy_abx NULL

static int op_sta_abx(void)
{
	u16 addr = word();
	st(addr + cpu_x, cpu_a);
	return 0;
}

#define op_shx_aby NULL
#define op_ahx_aby NULL

static int op_ldy_imm(void)
{
	u8 imm = byte();
	cpu_y = imm;
	return resultNZ(cpu_y);
}

#define op_lda_izx 0

static int op_ldx_imm(void)
{
	u8 imm = byte();
	cpu_x = imm;
	return resultNZ(cpu_x);
}

#define op_lax_izx NULL

static int op_ldy_zp(void)
{
	u8 addr = byte();
	cpu_y = ld(addr);
	return resultNZ(cpu_y);
}

static int op_lda_zp(void)
{
	u8 addr = byte();
	cpu_a = ld(addr);
	return resultNZ(cpu_a);
}

static int op_ldx_zp(void)
{
	u8 addr = byte();
	cpu_x = ld(addr);
	return resultNZ(cpu_x);
}

#define op_lax_zp NULL

static int op_tay(void)
{
	cpu_y = cpu_a;
	return resultNZ(cpu_y);
}

static int op_lda_imm(void)
{
	u8 imm = byte();
	cpu_a = imm;
	return resultNZ(cpu_a);
}

static int op_tax(void)
{
	cpu_x = cpu_a;
	return resultNZ(cpu_x);
}

#define op_lax_imm NULL

static int op_ldy_abs(void)
{
	u16 addr = word();
	cpu_y = ld(addr);
	return resultNZ(cpu_y);
}

static int op_lda_abs(void)
{
	u16 addr = word();
	cpu_a = ld(addr);
	return resultNZ(cpu_a);
}

static int op_ldx_abs(void)
{
	u16 addr = word();
	cpu_x = ld(addr);
	return resultNZ(cpu_x);
}

#define op_lax_abs NULL

static int op_bcs(void)
{
	s8 rel = byte();
	if (cpu_p & C) cpu_pc += rel;
	return 0;
}

static int op_lda_izy(void)
{
	u8 addr = byte();
	cpu_a = ld(ldi(addr) + cpu_y);
	return resultNZ(cpu_a);
}

#define op_lax_izy NULL

static int op_ldy_zpx(void)
{
	u8 addr = byte();
	cpu_y = ld(addr + cpu_x);
	return resultNZ(cpu_y);
}

static int op_lda_zpx(void)
{
	u8 addr = byte();
	cpu_a = ld(addr + cpu_x);
	return resultNZ(cpu_a);
}

static int op_ldx_zpy(void)
{
	u8 addr = byte();
	cpu_x = ld(addr + cpu_y);
	return resultNZ(cpu_x);
}

#define op_lax_zpy NULL

#define op_clv 0

static int op_lda_aby(void)
{
	u16 addr = word();
	cpu_a = ld(addr + cpu_y);
	return resultNZ(cpu_a);
}

#define op_tsx 0

#define op_las_aby NULL

static int op_ldy_abx(void)
{
	u16 addr = word();
	cpu_y = ld(addr + cpu_x);
	return resultNZ(cpu_y);
}

static int op_lda_abx(void)
{
	u16 addr = word();
	cpu_a = ld(addr + cpu_x);
	return resultNZ(cpu_a);
}

static int op_ldx_aby(void)
{
	u16 addr = word();
	cpu_x = ld(addr + cpu_y);
	return resultNZ(cpu_x);
}

#define op_lax_aby NULL

static int op_cpy_imm(void)
{
	u8 imm = byte();
	return cmp(cpu_y, imm);
}

#define op_cmp_izx 0

#define op_dcp_izx NULL

static int op_cpy_zp(void)
{
	u8 addr = byte();
	return cmp(cpu_y, ld(addr));
}

static int op_cmp_zp(void)
{
	u8 addr = byte();
	return cmp(cpu_a, ld(addr));
}

static int op_dec_zp(void)
{
	u8 addr = byte();
	u8 data = ld(addr);
	data--;
	st(addr, data);
	return resultNZ(data);
}

#define op_dcp_zp NULL

static int op_iny(void)
{
	cpu_y++;
	return resultNZ(cpu_y);
}

static int op_cmp_imm(void)
{
	u8 imm = byte();
	return cmp(cpu_a, imm);
}

static int op_dex(void)
{
	cpu_x--;
	return resultNZ(cpu_x);
}

#define op_axs_imm NULL

static int op_cpy_abs(void)
{
	u16 addr = word();
	return cmp(cpu_y, ld(addr));
}

static int op_cmp_abs(void)
{
	u16 addr = word();
	return cmp(cpu_a, ld(addr));
}

static int op_dec_abs(void)
{
	u16 addr = word();
	u8 data = ld(addr);
	data--;
	st(addr, data);
	return resultNZ(data);
}

#define op_dcp_abs NULL

static int op_bne(void)
{
	s8 rel = byte();
	if (!(cpu_p & Z)) cpu_pc += rel;
	return 0;
}

#if 0
#define op_cmp_izy 0
#else
static int op_cmp_izy(void)
{
	u8 addr = byte();
	return cmp(cpu_a, ld(ldi(addr) + cpu_y));
}
#endif

#define op_dcp_izy NULL

static int op_cmp_zpx(void)
{
	u8 addr = byte();
	return cmp(cpu_a, ld(addr + cpu_x));
}

static int op_dec_zpx(void)
{
	u8 addr = byte();
	u8 data = ld(addr + cpu_x);
	data--;
	st(addr + cpu_x, data);
	return resultNZ(data);
}

#define op_dcp_zpx NULL

static int op_cld(void)
{
	cpu_p &= ~D;
	return 0;
}

static int op_cmp_aby(void)
{
	u16 addr = word();
	return cmp(cpu_a, ld(addr + cpu_y));
}

#define op_dcp_aby NULL

static int op_cmp_abx(void)
{
	u16 addr = word();
	return cmp(cpu_a, ld(addr + cpu_x));
}

static int op_dec_abx(void)
{
	u16 addr = word();
	u8 data = ld(addr + cpu_x);
	data--;
	st(addr + cpu_x, data);
	return resultNZ(data);
}

#define op_dcp_abx NULL

static int op_cpx_imm(void)
{
	u8 imm = byte();
	return cmp(cpu_x, imm);
}

#define op_sbc_izx 0

#define op_isc_izx NULL

static int op_cpx_zp(void)
{
	u8 addr = byte();
	return cmp(cpu_x, ld(addr));
}

static int op_sbc_zp(void)
{
	u8 addr = byte();
	return sbc(ld(addr));
}

static int op_inc_zp(void)
{
	u8 addr = byte();
	u8 data = ld(addr);
	data++;
	st(addr, data);
	return resultNZ(data);
}

#define op_isc_zp NULL

static int op_inx(void)
{
	cpu_x++;
	return resultNZ(cpu_x);
}

static int op_sbc_imm(void)
{
	u8 imm = byte();
	return sbc(imm);
}

#define op_nop 0
#define op_cpx_abs 0

static int op_sbc_abs(void)
{
	u16 addr = word();
	return sbc(ld(addr));
}

static int op_inc_abs(void)
{
	u16 addr = word();
	u8 data = ld(addr);
	data++;
	st(addr, data);
	return resultNZ(data);
}

#define op_isc_abs NULL

static int op_beq(void)
{
	s8 rel = byte();
	if (cpu_p & Z) cpu_pc += rel;
	return 0;
}

#define op_sbc_izy 0

#define op_isc_izy NULL

static int op_sbc_zpx(void)
{
	u8 addr = byte();
	return sbc(ld(addr + cpu_x));
}

static int op_inc_zpx(void)
{
	u8 addr = byte();
	u8 data = ld(addr + cpu_x);
	data++;
	st(addr + cpu_x, data);
	return resultNZ(data);
}

#define op_isc_zpx NULL

#define op_sed 0

static int op_sbc_aby(void)
{
	u16 addr = word();
	return sbc(ld(addr + cpu_y));
}

#define op_isc_aby NULL

static int op_sbc_abx(void)
{
	u16 addr = word();
	return sbc(ld(addr + cpu_x));
}

static int op_inc_abx(void)
{
	u16 addr = word();
	u8 data = ld(addr + cpu_x);
	data++;
	st(addr + cpu_x, data);
	return resultNZ(data);
}

#define op_isc_abx NULL

static int (*const optab[])(void) =
{
	/* 0x00 */  op_brk,
	/* 0x01 */  op_ora_izx,
	/* 0x02 */  op_kil,
	/* 0x03 */  op_slo_izx,
	/* 0x04 */  op_nop_zp,
	/* 0x05 */  op_ora_zp,
	/* 0x06 */  op_asl_zp,
	/* 0x07 */  op_slo_zp,
	/* 0x08 */  op_php,
	/* 0x09 */  op_ora_imm,
	/* 0x0A */  op_asl,
	/* 0x0B */  op_anc_imm,
	/* 0x0C */  op_nop_abs,
	/* 0x0D */  op_ora_abs,
	/* 0x0E */  op_asl_abs,
	/* 0x0F */  op_slo_abs,
	/* 0x10 */  op_bpl,
	/* 0x11 */  op_ora_izy,
	/* 0x12 */  op_kil,
	/* 0x13 */  op_rla_izx,
	/* 0x14 */  op_nop_zpx,
	/* 0x15 */  op_ora_zpx,
	/* 0x16 */  op_asl_zpx,
	/* 0x17 */  op_slo_zpx,
	/* 0x18 */  op_clc,
	/* 0x19 */  op_ora_aby,
	/* 0x1A */  op_nop,
	/* 0x1B */  op_slo_aby,
	/* 0x1C */  op_nop_abx,
	/* 0x1D */  op_ora_abx,
	/* 0x1E */  op_asl_abx,
	/* 0x1F */  op_slo_abx,
	/* 0x20 */  op_jsr_abs,
	/* 0x21 */  op_and_izx,
	/* 0x22 */  op_kil,
	/* 0x23 */  op_rla_izx,
	/* 0x24 */  op_bit_zp,
	/* 0x25 */  op_and_zp,
	/* 0x26 */  op_rol_zp,
	/* 0x27 */  op_rla_zp,
	/* 0x28 */  op_plp,
	/* 0x29 */  op_and_imm,
	/* 0x2A */  op_rol,
	/* 0x2B */  op_anc_imm,
	/* 0x2C */  op_bit_abs,
	/* 0x2D */  op_and_abs,
	/* 0x2E */  op_rol_abs,
	/* 0x2F */  op_rla_abs,
	/* 0x30 */  op_bmi,
	/* 0x31 */  op_and_izy,
	/* 0x32 */  op_kil,
	/* 0x33 */  op_rla_izy,
	/* 0x34 */  op_nop_zpx,
	/* 0x35 */  op_and_zpx,
	/* 0x36 */  op_rol_zpx,
	/* 0x37 */  op_rla_zpx,
	/* 0x38 */  op_sec,
	/* 0x39 */  op_and_aby,
	/* 0x3A */  op_nop,
	/* 0x3B */  op_rla_aby,
	/* 0x3C */  op_nop_abx,
	/* 0x3D */  op_and_abx,
	/* 0x3E */  op_rol_abx,
	/* 0x3F */  op_rla_abx,
	/* 0x40 */  op_rti,
	/* 0x41 */  op_eor_izx,
	/* 0x42 */  op_kil,
	/* 0x43 */  op_sre_izx,
	/* 0x44 */  op_nop_zp,
	/* 0x45 */  op_eor_zp,
	/* 0x46 */  op_lsr_zp,
	/* 0x47 */  op_sre_zp,
	/* 0x48 */  op_pha,
	/* 0x49 */  op_eor_imm,
	/* 0x4A */  op_lsr,
	/* 0x4B */  op_alr_imm,
	/* 0x4C */  op_jmp_abs,
	/* 0x4D */  op_eor_abs,
	/* 0x4E */  op_lsr_abs,
	/* 0x4F */  op_sre_abs,
	/* 0x50 */  op_bvc,
	/* 0x51 */  op_eor_izy,
	/* 0x52 */  op_kil,
	/* 0x53 */  op_sre_izy,
	/* 0x54 */  op_nop_zpx,
	/* 0x55 */  op_eor_zpx,
	/* 0x56 */  op_lsr_zpx,
	/* 0x57 */  op_sre_zpx,
	/* 0x58 */  op_cli,
	/* 0x59 */  op_eor_aby,
	/* 0x5A */  op_nop,
	/* 0x5B */  op_sre_aby,
	/* 0x5C */  op_nop_abx,
	/* 0x5D */  op_eor_abx,
	/* 0x5E */  op_lsr_abx,
	/* 0x5F */  op_sre_abx,
	/* 0x60 */  op_rts,
	/* 0x61 */  op_adc_izx,
	/* 0x62 */  op_kil,
	/* 0x63 */  op_rra_izx,
	/* 0x64 */  op_nop_zp,
	/* 0x65 */  op_adc_zp,
	/* 0x66 */  op_ror_zp,
	/* 0x67 */  op_rra_zp,
	/* 0x68 */  op_pla,
	/* 0x69 */  op_adc_imm,
	/* 0x6A */  op_ror,
	/* 0x6B */  op_arr_imm,
	/* 0x6C */  op_jmp_ind,
	/* 0x6D */  op_adc_abs,
	/* 0x6E */  op_ror_abs,
	/* 0x6F */  op_rra_abs,
	/* 0x70 */  op_bvs,
	/* 0x71 */  op_adc_izy,
	/* 0x72 */  op_kil,
	/* 0x73 */  op_rra_izy,
	/* 0x74 */  op_nop_zpx,
	/* 0x75 */  op_adc_zpx,
	/* 0x76 */  op_ror_zpx,
	/* 0x77 */  op_rra_zpx,
	/* 0x78 */  op_sei,
	/* 0x79 */  op_adc_aby,
	/* 0x7A */  op_nop,
	/* 0x7B */  op_rra_aby,
	/* 0x7C */  op_nop_abx,
	/* 0x7D */  op_adc_abx,
	/* 0x7E */  op_ror_abx,
	/* 0x7F */  op_rra_abx,
	/* 0x80 */  op_nop_imm,
	/* 0x81 */  op_sta_izx,
	/* 0x82 */  op_nop_imm,
	/* 0x83 */  op_sax_izx,
	/* 0x84 */  op_sty_zp,
	/* 0x85 */  op_sta_zp,
	/* 0x86 */  op_stx_zp,
	/* 0x87 */  op_sax_zp,
	/* 0x88 */  op_dey,
	/* 0x89 */  op_nop_imm,
	/* 0x8A */  op_txa,
	/* 0x8B */  op_xaa_imm,
	/* 0x8C */  op_sty_abs,
	/* 0x8D */  op_sta_abs,
	/* 0x8E */  op_stx_abs,
	/* 0x8F */  op_sax_abs,
	/* 0x90 */  op_bcc,
	/* 0x91 */  op_sta_izy,
	/* 0x92 */  op_kil,
	/* 0x93 */  op_ahx_izy,
	/* 0x94 */  op_sty_zpx,
	/* 0x95 */  op_sta_zpx,
	/* 0x96 */  op_stx_zpy,
	/* 0x97 */  op_sax_zpy,
	/* 0x98 */  op_tya,
	/* 0x99 */  op_sta_aby,
	/* 0x9A */  op_txs,
	/* 0x9B */  op_tas_aby,
	/* 0x9C */  op_shy_abx,
	/* 0x9D */  op_sta_abx,
	/* 0x9E */  op_shx_aby,
	/* 0x9F */  op_ahx_aby,
	/* 0xA0 */  op_ldy_imm,
	/* 0xA1 */  op_lda_izx,
	/* 0xA2 */  op_ldx_imm,
	/* 0xA3 */  op_lax_izx,
	/* 0xA4 */  op_ldy_zp,
	/* 0xA5 */  op_lda_zp,
	/* 0xA6 */  op_ldx_zp,
	/* 0xA7 */  op_lax_zp,
	/* 0xA8 */  op_tay,
	/* 0xA9 */  op_lda_imm,
	/* 0xAA */  op_tax,
	/* 0xAB */  op_lax_imm,
	/* 0xAC */  op_ldy_abs,
	/* 0xAD */  op_lda_abs,
	/* 0xAE */  op_ldx_abs,
	/* 0xAF */  op_lax_abs,
	/* 0xB0 */  op_bcs,
	/* 0xB1 */  op_lda_izy,
	/* 0xB2 */  op_kil,
	/* 0xB3 */  op_lax_izy,
	/* 0xB4 */  op_ldy_zpx,
	/* 0xB5 */  op_lda_zpx,
	/* 0xB6 */  op_ldx_zpy,
	/* 0xB7 */  op_lax_zpy,
	/* 0xB8 */  op_clv,
	/* 0xB9 */  op_lda_aby,
	/* 0xBA */  op_tsx,
	/* 0xBB */  op_las_aby,
	/* 0xBC */  op_ldy_abx,
	/* 0xBD */  op_lda_abx,
	/* 0xBE */  op_ldx_aby,
	/* 0xBF */  op_lax_aby,
	/* 0xC0 */  op_cpy_imm,
	/* 0xC1 */  op_cmp_izx,
	/* 0xC2 */  op_nop_imm,
	/* 0xC3 */  op_dcp_izx,
	/* 0xC4 */  op_cpy_zp,
	/* 0xC5 */  op_cmp_zp,
	/* 0xC6 */  op_dec_zp,
	/* 0xC7 */  op_dcp_zp,
	/* 0xC8 */  op_iny,
	/* 0xC9 */  op_cmp_imm,
	/* 0xCA */  op_dex,
	/* 0xCB */  op_axs_imm,
	/* 0xCC */  op_cpy_abs,
	/* 0xCD */  op_cmp_abs,
	/* 0xCE */  op_dec_abs,
	/* 0xCF */  op_dcp_abs,
	/* 0xD0 */  op_bne,
	/* 0xD1 */  op_cmp_izy,
	/* 0xD2 */  op_kil,
	/* 0xD3 */  op_dcp_izy,
	/* 0xD4 */  op_nop_zpx,
	/* 0xD5 */  op_cmp_zpx,
	/* 0xD6 */  op_dec_zpx,
	/* 0xD7 */  op_dcp_zpx,
	/* 0xD8 */  op_cld,
	/* 0xD9 */  op_cmp_aby,
	/* 0xDA */  op_nop,
	/* 0xDB */  op_dcp_aby,
	/* 0xDC */  op_nop_abx,
	/* 0xDD */  op_cmp_abx,
	/* 0xDE */  op_dec_abx,
	/* 0xDF */  op_dcp_abx,
	/* 0xE0 */  op_cpx_imm,
	/* 0xE1 */  op_sbc_izx,
	/* 0xE2 */  op_nop_imm,
	/* 0xE3 */  op_isc_izx,
	/* 0xE4 */  op_cpx_zp,
	/* 0xE5 */  op_sbc_zp,
	/* 0xE6 */  op_inc_zp,
	/* 0xE7 */  op_isc_zp,
	/* 0xE8 */  op_inx,
	/* 0xE9 */  op_sbc_imm,
	/* 0xEA */  op_nop, /* official */
	/* 0xEB */  op_sbc_imm,
	/* 0xEC */  op_cpx_abs,
	/* 0xED */  op_sbc_abs,
	/* 0xEE */  op_inc_abs,
	/* 0xEF */  op_isc_abs,
	/* 0xF0 */  op_beq,
	/* 0xF1 */  op_sbc_izy,
	/* 0xF2 */  op_kil,
	/* 0xF3 */  op_isc_izy,
	/* 0xF4 */  op_nop_zpx,
	/* 0xF5 */  op_sbc_zpx,
	/* 0xF6 */  op_inc_zpx,
	/* 0xF7 */  op_isc_zpx,
	/* 0xF8 */  op_sed,
	/* 0xF9 */  op_sbc_aby,
	/* 0xFA */  op_nop,
	/* 0xFB */  op_isc_aby,
	/* 0xFC */  op_nop_abx,
	/* 0xFD */  op_sbc_abx,
	/* 0xFE */  op_inc_abx,
	/* 0xFF */  op_isc_abx,
};

static void cpu_exec(u16 pc)
{
	cpu_pc = pc;
	while (!optab[byte()]());
}

/******************************************************************************/

static const u16 palette[] =
{
	0x6319, 0x0163, 0x10A9, 0x3829, 0x581F, 0x6811, 0x6801, 0x50C1,
	0x3181, 0x0A41, 0x0281, 0x0243, 0x0213, 0x0001, 0x0001, 0x0001,
	0xAD6B, 0x12F7, 0x423F, 0x713F, 0xA0F3, 0xB0DF, 0xB189, 0x9A41,
	0x6B41, 0x3C01, 0x0C81, 0x044D, 0x03E3, 0x0001, 0x0001, 0x0001,
	0xFFFF, 0x65BF, 0x94BF, 0xC3BF, 0xF37F, 0xFB73, 0xFC1D, 0xECC9,
	0xBDC1, 0x8EC1, 0x5F0D, 0x4721, 0x4E77, 0x4A53, 0x0001, 0x0001,
	0xFFFF, 0xC6FF, 0xD6BF, 0xEE7F, 0xFE3F, 0xFE3B, 0xFE71, 0xF6E9,
	0xE725, 0xCF65, 0xBFAB, 0xB7B3, 0xB77D, 0xBDEF, 0x0001, 0x0001,
};

#define L(tile, x, y) (ppu_chr[16*(tile)+0+(y)] >> (7-(x)) & 1)
#define H(tile, x, y) (ppu_chr[16*(tile)+8+(y)] >> (7-(x)) & 1)

static void ppu_init(void)
{
	int i;
	for (i = 0; i < 8192; i++)
	{
		int t = i >> 5;
		int s = (i & 31) << 1;
		int ty = t >> 3;
		int tx = s >> 3;
		int y = t & 7;
		int x = s & 7;
		int tile = 16*ty + 2*tx;
		chr_txt[i] =
			H(tile+1, x+0, y) << 7 | L(tile+1, x+0, y) << 6 |
			H(tile+0, x+0, y) << 5 | L(tile+0, x+0, y) << 4 |
			H(tile+1, x+1, y) << 3 | L(tile+1, x+1, y) << 2 |
			H(tile+0, x+1, y) << 1 | L(tile+0, x+1, y) << 0;
	}
}

static u16 *ppu_make_tlut(void)
{
	int i;
	u16 *tlut;
	if ((tlut = gfx_alloc(2*16*8*2)))
	{
		/* 16 entry * 8 palette * 2 tile (A/B) */
		for (i = 0; i < 16*8*2; i++)
		{
			int n = i;
			if (i & 0x80) n >>= 2;
			n &= 3;
			tlut[i] = n ? palette[ppu_pal[(i >> 4 & 7) << 2 | n]] : 0x0000;
		}
	}
	return tlut;
}

static void ppu_load_tlut(u16 *tlut)
{
	gDPSetTextureImage(gfx_ptr++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, tlut);
	gDPTileSync(gfx_ptr++);
	gDPSetTile(gfx_ptr++, 0, 0, 0, 256, G_TX_LOADTILE, 0, 0, 0, 0, 0, 0, 0);
	gDPLoadSync(gfx_ptr++);
	gDPLoadTLUTCmd(gfx_ptr++, G_TX_LOADTILE, 255);
}

static void ppu_draw_tile(int y, int x, int tile, int attr)
{
	int bank = tile >> 7;
	int t = (tile >> 4 & 7) << 3 << 5;
	int s = (tile >> 1 & 7) << 3 << 5;
	int pal = (tile & 1) << 3 | (attr & 7);
	int dsdx = 0x400;
	int dtdy = 0x400;
	if (chr_bank != bank)
	{
		chr_bank = bank;
		gDPSetTextureImage(
			gfx_ptr++, G_IM_FMT_CI, G_IM_SIZ_16b, 1, chr_txt + 2048*bank
		);
		gDPLoadSync(gfx_ptr++);
		gDPLoadBlock(gfx_ptr++, 6, 0, 0, (((64)*(64)+3)>>2)-1, CALC_DXT_4b(64));
	}
	gDPPipeSync(gfx_ptr++);
	gDPSetTile(
		gfx_ptr++, G_IM_FMT_CI, G_IM_SIZ_4b, ((((64)>>1)+7)>>3), 0, 0, pal,
		G_TX_WRAP, 6, 0, G_TX_WRAP, 6, 0
	);
	if (attr & 0x40)
	{
		s += 32*7;
		dsdx = -0x400;
	}
	if (attr & 0x80)
	{
		t += 32*7;
		dtdy = -0x400;
	}
	gSPTextureRectangle(
		gfx_ptr++, 4*(32+x), 4*(y), 4*(32+x+8), 4*(y+8), 0, s, t, dsdx, dtdy
	);
}

static void ppu_draw_obj(int flag)
{
	int i;
	if (ppu_mask & 16)
	{
		for (i = 63; i >= 0; i--)
		{
			int y    = ppu_oam[4*i+0];
			int tile = ppu_oam[4*i+1];
			int attr = ppu_oam[4*i+2];
			int x    = ppu_oam[4*i+3];
			if ((attr & 0x20) == flag && y < 239 && x < 249)
			{
				ppu_draw_tile(y+1, x, (ppu_ctrl & 8) << 5 | tile, 4|attr);
			}
		}
	}
}

#define PPU_SCROLLX() ((ppu_ctrl & 1) << 8 | ppu_scroll[0])
#define PPU_TY(y) (y)
#define PPU_TX(x) ((x) & 31)
#define PPU_TBL(x) (((x) >> 5 & 1) << 10)
#define PPU_TILE(tbl, ty, tx) \
	((ppu_ctrl & 16) << 4 | ppu_tbl[(tbl) + 32*(ty) + (tx)])
#define PPU_ATTR(tbl, ty, tx) \
	(ppu_tbl[(tbl)+0x3C0+(8*((ty)>>2)+((tx)>>2))] >> \
	(((ty)&2) << 1 | ((tx)&2)) & 3)

static void ppu_draw(void)
{
	int y;
	int x;
	u16 *tlut;
	/* setup */
	gDPPipeSync(gfx_ptr++);
	gDPSetCombineMode(gfx_ptr++, G_CC_DECALRGBA, G_CC_DECALRGBA);
	gDPSetBlendColor(gfx_ptr++, 0xFF, 0xFF, 0xFF, 0xFF);
	gSPSetOtherMode(
		gfx_ptr++, G_SETOTHERMODE_H, 0, 24,
		G_PM_NPRIMITIVE |
		G_CYC_FILL |
		G_TP_NONE |
		G_TD_CLAMP |
		G_TL_TILE |
		G_TT_RGBA16 |
		G_TF_POINT |
		G_TC_FILT |
		G_CK_NONE |
		G_CD_MAGICSQ |
		G_AD_DISABLE |
		15
	);
	gSPSetOtherMode(
		gfx_ptr++, G_SETOTHERMODE_L, 0, 32,
		G_RM_OPA_SURF | G_RM_OPA_SURF2 |
		G_ZS_PIXEL |
		G_AC_THRESHOLD
	);
	/* border */
	gDPSetScissor(gfx_ptr++, G_SC_NON_INTERLACE, 0, 0, 320, 240);
	gDPSetFillColor(gfx_ptr++, 0x00000000);
	gDPFillRectangle(gfx_ptr++, 0, 0, 32-1, 240-1);
	gDPFillRectangle(gfx_ptr++, 32+256, 0, 320-1, 240-1);
	/* background */
	gDPPipeSync(gfx_ptr++);
	gDPSetScissor(gfx_ptr++, G_SC_NON_INTERLACE, 32, 8, 32+256, 240-8);
	gDPSetFillColor(gfx_ptr++, palette[ppu_pal[0]] << 16 | palette[ppu_pal[0]]);
	gDPFillRectangle(gfx_ptr++, 32, 0, 32+256-1, 240-1);
	if (!(tlut = ppu_make_tlut())) return;
	ppu_load_tlut(tlut);
	/* setup */
	gDPPipeSync(gfx_ptr++);
	gDPSetCycleType(gfx_ptr++, G_CYC_1CYCLE);
	gDPSetTile(
		gfx_ptr++, G_IM_FMT_CI, G_IM_SIZ_16b, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0
	);
	gDPSetTileSize(
		gfx_ptr++, 0, 0, 0,
		((64)-1) << G_TEXTURE_IMAGE_FRAC,
		((64)-1) << G_TEXTURE_IMAGE_FRAC
	);
	chr_bank = -1;
	ppu_draw_obj(0x20);
	if (ppu_mask & 8)
	{
		for (y = 0; y < 30; y++)
		{
			int py = 8*y;
			int sx = y < 4 ? 0 : PPU_SCROLLX();
			for (x = sx/8; x < sx/8+33; x++)
			{
				int px = 8*x - sx;
				int ty = PPU_TY(y);
				int tx = PPU_TX(x);
				int tbl = PPU_TBL(x);
				int tile = PPU_TILE(tbl, ty, tx);
				int attr = PPU_ATTR(tbl, ty, tx);
				if (tile != 0x124) ppu_draw_tile(py, px, tile, attr);
			}
		}
		if (
			cpu_wram[0x75F] == 0 &&
			cpu_wram[0x760] == 2 &&
			(cpu_wram[0x71B] == 3 || cpu_wram[0x71B] == 4)
		)
		{
			chr_bank = -1;
			gDPSetTextureImage(
				gfx_ptr++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, pal_paint
			);
			gDPLoadSync(gfx_ptr++);
			gDPLoadTLUTCmd(gfx_ptr++, G_TX_LOADTILE, 15);
			gDPSetTextureImage(
				gfx_ptr++, G_IM_FMT_CI, G_IM_SIZ_16b, 1, txt_paint
			);
			gDPLoadSync(gfx_ptr++);
			gDPLoadBlock(
				gfx_ptr++, 6, 0, 0, (((64)*(64)+3)>>2)-1, CALC_DXT_4b(64)
			);
			gDPPipeSync(gfx_ptr++);
			gDPSetTile(
				gfx_ptr++, G_IM_FMT_CI, G_IM_SIZ_4b,
				((((64)>>1)+7)>>3), 0, 0, 0,
				G_TX_WRAP, 6, 0, G_TX_WRAP, 6, 0
			);
			for (y = 14; y < 22; y++)
			{
				int py = 8*y;
				int sx = PPU_SCROLLX();
				for (x = 44; x < 52; x++)
				{
					int px = 8*x - sx;
					if (px >= -8 && px < 256)
					{
						int ty = PPU_TY(y);
						int tx = PPU_TX(x);
						int tbl = PPU_TBL(x);
						int tile = PPU_TILE(tbl, ty, tx);
						if (tile == 0x147) gSPTextureRectangle(
							gfx_ptr++, 4*(32+px), 4*(py), 4*(32+px+8), 4*(py+8),
							0, 32*(8*(x-44)), 32*(8*(y-14)), 0x400, 0x400
						);
					}
				}
			}
			gDPSetTextureImage(gfx_ptr++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, tlut);
			gDPLoadSync(gfx_ptr++);
			gDPLoadTLUTCmd(gfx_ptr++, G_TX_LOADTILE, 15);
		}
	}
	ppu_draw_obj(0);
}

/******************************************************************************/

static const s16 pulse_table[] =
{
	     0,    606,   1198,   1776,   2340,   2891,   3429,   3955,
	  4470,   4973,   5464,   5946,   6417,   6878,   7329,   7771,
	  8204,   8628,   9043,   9451,   9850,  10241,  10625,  11001,
	 11371,  11733,  12089,  12438,  12780,  13117,  13447,
};

static const s16 tnd_table[] =
{
	     0,   -277,   -553,   -826,  -1098,  -1367,  -1635,  -1900,
	 -2164,  -2426,  -2686,  -2944,  -3200,  -3455,  -3708,  -3959,
	 -4208,  -4456,  -4702,  -4946,  -5188,  -5429,  -5669,  -5906,
	 -6142,  -6377,  -6610,  -6841,  -7071,  -7299,  -7526,  -7751,
	 -7975,  -8197,  -8418,  -8638,  -8856,  -9073,  -9288,  -9502,
	 -9714,  -9926, -10135, -10344, -10551, -10757, -10962, -11165,
	-11367, -11568, -11767, -11966, -12163, -12359, -12553, -12747,
	-12939, -13130, -13320, -13509, -13697, -13884, -14069, -14254,
	-14437, -14619, -14800, -14980, -15160, -15337, -15514, -15690,
	-15865, -16039, -16212, -16384,
};

static void apu_env(int i)
{
	if (apu.flag >> i & 1)
	{
		apu.vol[i] = 15;
		apu.env[i] = apu.ctrl[i] & 15;
	}
	else if (apu.env[i] > 0)
	{
		apu.env[i]--;
	}
	else
	{
		if (apu.vol[i] > 0)
		{
			apu.vol[i]--;
		}
		else if (apu.ctrl[i] & 0x20)
		{
			apu.vol[i] = 15;
		}
		apu.env[i] = apu.ctrl[i] & 15;
	}
}

static void apu_step_env(void)
{
	apu_env(0);
	apu_env(1);
	apu_env(3);
	if (apu.flag &= 4)
	{
		apu.env[2] = apu.ctrl[2] & 0x7F;
	}
	else if (apu.env[2] > 0)
	{
		apu.env[2]--;
	}
	if (!(apu.ctrl[2] & 0x80)) apu.flag = 0;
}

static void apu_step_len(void)
{
	int i;
	for (i = 0; i < 2; i++)
	{
		if (apu.sweep_val[i] > 0)
		{
			apu.sweep_val[i]--;
		}
		else
		{
			if (apu.sweep[i] & 0x80)
			{
				unsigned int period = apu.period[i];
				int delta = period >> (apu.sweep[i] & 7);
				if (apu.sweep[i] & 8)
				{
					period -= delta;
					if (i == 0) if (period > 0) period--;
				}
				else
				{
					period += delta;
				}
				apu.period[i] = period;
			}
			apu.sweep_val[i] = (apu.sweep[i] >> 4 & 7) + 1;
		}
		if (!(apu.ctrl[i] & 0x20))
		{
			if (apu.len[i] > 0) apu.len[i]--;
		}
	}
	if (!(apu.ctrl[2] & 0x80))
	{
		if (apu.len[2] > 0) apu.len[2]--;
	}
	if (!(apu.ctrl[3] & 0x20))
	{
		if (apu.len[3] > 0) apu.len[3]--;
	}
}

static inline void apu_step_timer(void)
{
	int i;
	int step[4];
	apu.timer[2] += APU_DELTA;
	for (i = 0; i < 4; i++)
	{
		unsigned int period = apu.period[i] + 1;
		unsigned int timer = apu.timer[i] + APU_DELTA;
		apu.timer[i] = timer % period;
		step[i] = timer / period;
	}
	for (i = 0; i < 2; i++) apu.duty[i] = (apu.duty[i] + step[i]) & 7;
	if (apu.len[2] > 0 && apu.env[2] > 0)
	{
		apu.duty[2] = (apu.duty[2] + step[2]) & 31;
	}
	for (i = 0; i < step[3]; i++)
	{
		apu.lfsr = apu.lfsr >> 1 |
			((apu.lfsr^(apu.lfsr >> apu.duty[3])) & 1) << 14;
	}
}

#define apu_env_output(i) \
	((apu.ctrl[i] & 0x10) ? (apu.ctrl[i] & 15) : apu.vol[i])

static int pulse_output(int i)
{
	static const u8 duty[] = {0x02, 0x06, 0x1E, 0xF9};
	return (apu.mask >> i & 1) && apu.len[i] > 0 &&
		(duty[apu.ctrl[i] >> 6] >> apu.duty[i] & 1) &&
		apu.period[i] >= 8 && apu.period[i] < 0x800 ?
		apu_env_output(i) : 0;
}

static inline int triangle_output(void)
{
	return (apu.mask & 4) && apu.len[2] > 0 && apu.env[2] > 0 ?
		3*(apu.duty[2] >= 16 ? apu.duty[2]-16 : 15-apu.duty[2]) : 0;
}

static inline int noise_output(void)
{
	return (apu.mask & 8) && apu.len[3] > 0 && !(apu.lfsr & 1) ?
		2*apu_env_output(3) : 0;
}

static void apu_output(short *buffer, unsigned int size)
{
	int i;
	int n;
	unsigned int len = size/4;
	for (i = 0; i < 4; i++)
	{
		if (++apu.frame >= 5) apu.frame = 0;
		if (apu.frame != 4) apu_step_env();
		if (!(apu.frame & 1)) apu_step_len();
		for (n = (int)(len*i/4); n < (int)(len*(i+1)/4); n++)
		{
			int output =
				pulse_table[pulse_output(0) + pulse_output(1)] +
				tnd_table[triangle_output() + noise_output()];
			buffer[2*n+0] += output;
			buffer[2*n+1] += output;
			apu_step_timer();
		}
	}
}

/******************************************************************************/

extern const char _app_szpSegmentRomStart[];
extern const char _app_szpSegmentRomEnd[];

static void nes_load(const char *start, const char *end)
{
	char *src = mem_load(start, end, MEM_ALLOC_R);
	slidec(src, (char *)nes_rom);
	mem_free(src);
}

static void nes_reset(void)
{
	bzero(&apu, sizeof(APU));
	apu.duty[3] = 1;
	apu.lfsr = 1;
	cpu_s = 0xFD;
	cpu_exec(cpu_prg[0xFFFC] | cpu_prg[0xFFFD] << 8);
}

static void nes_nmi(void)
{
	phw(cpu_pc - 1);
	ph(cpu_p | 0x20);
	cpu_exec(cpu_prg[0xFFFA] | cpu_prg[0xFFFB] << 8);
}

int p_nes_main(SHORT arg, UNUSED int code)
{
	int result = 0;
	switch (arg)
	{
	case 0:
		nes_load(_app_szpSegmentRomStart, _app_szpSegmentRomEnd);
		ppu_init();
		nes_reset();
		gfx_draw_callback = ppu_draw;
		aud_callback = apu_output;
		gfx_flag &= ~GFX_MODEMASK;
		gfx_flag = GFX_NODEPTH|GFX_60;
		break;
	case 1:
		nes_nmi();
		if (cpu_wram[0x7FC])
		{
			gfx_draw_callback = NULL;
			aud_callback = NULL;
			gfx_flag &= ~GFX_MODEMASK;
			result = 1;
		}
		break;
	}
	return result;
}

#include "snd.c"
#include "mus.c"
