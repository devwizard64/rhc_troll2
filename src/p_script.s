.include "sm64/asm.inc"

.set noreorder
.set noat

.align 4

/* int p_script_cmp(CHAR cmp, int x) */
p_script_cmp:
	sll     $a0, $a0, 24
	sra     $a0, $a0, 24
	addiu   $sp, $sp, -0x0008
	sw      $0, 0x0004($sp)
	sltiu   $at, $a0, 0x0008
	beqz    $at, .L8037E2AC
	nop
	sll     $t6, $a0, 2
	lui     $at, %hi(p_script_8038BAF0)
	addu    $at, $at, $t6
	lw      $t6, %lo(p_script_8038BAF0)($at)
	jr      $t6
	nop
.globl L8037E1D4
L8037E1D4:
	lui     $t7, %hi(p_script_code)
	lw      $t7, %lo(p_script_code)($t7)
	and     $t8, $t7, $a1
	sw      $t8, 0x0004($sp)
	b       .L8037E2AC
	nop
.globl L8037E1EC
L8037E1EC:
	lui     $t9, %hi(p_script_code)
	lw      $t9, %lo(p_script_code)($t9)
	and     $a2, $t9, $a1
	sltiu   $t0, $a2, 0x0001
	move    $a2, $t0
	sw      $a2, 0x0004($sp)
	b       .L8037E2AC
	nop
.globl L8037E20C
L8037E20C:
	lui     $t1, %hi(p_script_code)
	lw      $t1, %lo(p_script_code)($t1)
	xor     $t2, $t1, $a1
	sltiu   $t2, $t2, 0x0001
	sw      $t2, 0x0004($sp)
	b       .L8037E2AC
	nop
.globl L8037E228
L8037E228:
	lui     $t3, %hi(p_script_code)
	lw      $t3, %lo(p_script_code)($t3)
	xor     $t4, $t3, $a1
	sltu    $t4, $0, $t4
	sw      $t4, 0x0004($sp)
	b       .L8037E2AC
	nop
.globl L8037E244
L8037E244:
	lui     $t5, %hi(p_script_code)
	lw      $t5, %lo(p_script_code)($t5)
	slt     $t6, $t5, $a1
	sw      $t6, 0x0004($sp)
	b       .L8037E2AC
	nop
.globl L8037E25C
L8037E25C:
	lui     $t7, %hi(p_script_code)
	lw      $t7, %lo(p_script_code)($t7)
	slt     $t8, $a1, $t7
	xori    $t8, $t8, 0x0001
	sw      $t8, 0x0004($sp)
	b       .L8037E2AC
	nop
.globl L8037E278
L8037E278:
	lui     $t9, %hi(p_script_code)
	lw      $t9, %lo(p_script_code)($t9)
	slt     $t0, $a1, $t9
	sw      $t0, 0x0004($sp)
	b       .L8037E2AC
	nop
.globl L8037E290
L8037E290:
	lui     $t1, %hi(p_script_code)
	lw      $t1, %lo(p_script_code)($t1)
	slt     $t2, $t1, $a1
	xori    $t2, $t2, 0x0001
	sw      $t2, 0x0004($sp)
	b       .L8037E2AC
	nop
.L8037E2AC:
	b       .L8037E2BC
	lw      $v0, 0x0004($sp)
	b       .L8037E2BC
	nop
.L8037E2BC:
	jr      $ra
	addiu   $sp, $sp, 0x0008

/* void p_cmd_push_call(void) */
.globl p_cmd_push_call
p_cmd_push_call:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     mem_push
	nop
	lui     $t6, %hi(p_script_pc)
	lw      $t6, %lo(p_script_pc)($t6)
	move    $a3, $0
	lh      $a0, 0x0002($t6)
	lw      $a1, 0x0004($t6)
	jal     mem_load_data
	lw      $a2, 0x0008($t6)
	lui     $t7, %hi(p_script_pc)
	lw      $t7, %lo(p_script_pc)($t7)
	lui     $t0, %hi(p_script_sp)
	lw      $t0, %lo(p_script_sp)($t0)
	lbu     $t8, 0x0001($t7)
	lui     $t1, %hi(p_script_sp)
	lui     $at, %hi(p_script_sp)
	addu    $t9, $t8, $t7
	sw      $t9, 0x0000($t0)
	lw      $t1, %lo(p_script_sp)($t1)
	addiu   $t2, $t1, 0x0004
	sw      $t2, %lo(p_script_sp)($at)
	lui     $t3, %hi(p_script_fp)
	lui     $t4, %hi(p_script_sp)
	lw      $t4, %lo(p_script_sp)($t4)
	lw      $t3, %lo(p_script_fp)($t3)
	lui     $t5, %hi(p_script_sp)
	lui     $at, %hi(p_script_sp)
	sw      $t3, 0x0000($t4)
	lw      $t5, %lo(p_script_sp)($t5)
	addiu   $t6, $t5, 0x0004
	sw      $t6, %lo(p_script_sp)($at)
	lui     $t8, %hi(p_script_sp)
	lw      $t8, %lo(p_script_sp)($t8)
	lui     $at, %hi(p_script_fp)
	sw      $t8, %lo(p_script_fp)($at)
	lui     $t7, %hi(p_script_pc)
	lw      $t7, %lo(p_script_pc)($t7)
	jal     segment_to_virtual
	lw      $a0, 0x000C($t7)
	lui     $at, %hi(p_script_pc)
	sw      $v0, %lo(p_script_pc)($at)
	b       .L8037E378
	nop
.L8037E378:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void p_cmd_push_jump(void) */
.globl p_cmd_push_jump
p_cmd_push_jump:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(p_script_pc)
	lw      $t6, %lo(p_script_pc)($t6)
	lw      $t7, 0x000C($t6)
	sw      $t7, 0x001C($sp)
	jal     mem_pull
	nop
	jal     mem_push
	nop
	lui     $t8, %hi(p_script_pc)
	lw      $t8, %lo(p_script_pc)($t8)
	move    $a3, $0
	lh      $a0, 0x0002($t8)
	lw      $a1, 0x0004($t8)
	jal     mem_load_data
	lw      $a2, 0x0008($t8)
	lui     $t9, %hi(p_script_fp)
	lw      $t9, %lo(p_script_fp)($t9)
	lui     $at, %hi(p_script_sp)
	sw      $t9, %lo(p_script_sp)($at)
	jal     segment_to_virtual
	lw      $a0, 0x001C($sp)
	lui     $at, %hi(p_script_pc)
	sw      $v0, %lo(p_script_pc)($at)
	b       .L8037E3F4
	nop
.L8037E3F4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

/* void p_cmd_pull_return(void) */
.globl p_cmd_pull_return
p_cmd_pull_return:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     mem_pull
	nop
	lui     $t6, %hi(p_script_fp)
	lw      $t6, %lo(p_script_fp)($t6)
	lui     $at, %hi(p_script_sp)
	sw      $t6, %lo(p_script_sp)($at)
	lui     $t7, %hi(p_script_sp)
	lw      $t7, %lo(p_script_sp)($t7)
	lui     $at, %hi(p_script_sp)
	addiu   $t8, $t7, -0x0004
	sw      $t8, %lo(p_script_sp)($at)
	lw      $t9, 0x0000($t8)
	lui     $at, %hi(p_script_fp)
	sw      $t9, %lo(p_script_fp)($at)
	lui     $t0, %hi(p_script_sp)
	lw      $t0, %lo(p_script_sp)($t0)
	lui     $at, %hi(p_script_sp)
	addiu   $t1, $t0, -0x0004
	sw      $t1, %lo(p_script_sp)($at)
	lw      $t2, 0x0000($t1)
	lui     $at, %hi(p_script_pc)
	sw      $t2, %lo(p_script_pc)($at)
	b       .L8037E46C
	nop
.L8037E46C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void p_cmd_sleep(void) */
.globl p_cmd_sleep
p_cmd_sleep:
	lui     $at, %hi(p_script_state)
	sh      $0, %lo(p_script_state)($at)
	lui     $t6, %hi(p_script_sleep)
	lhu     $t6, %lo(p_script_sleep)($t6)
	bnez    $t6, .L8037E4AC
	nop
	lui     $t7, %hi(p_script_pc)
	lw      $t7, %lo(p_script_pc)($t7)
	lui     $at, %hi(p_script_sleep)
	lh      $t8, 0x0002($t7)
	b       .L8037E4EC
	sh      $t8, %lo(p_script_sleep)($at)
.L8037E4AC:
	lui     $t9, %hi(p_script_sleep)
	lhu     $t9, %lo(p_script_sleep)($t9)
	lui     $at, %hi(p_script_sleep)
	addiu   $t0, $t9, -0x0001
	andi    $t1, $t0, 0xFFFF
	bnez    $t1, .L8037E4EC
	sh      $t0, %lo(p_script_sleep)($at)
	lui     $t2, %hi(p_script_pc)
	lw      $t2, %lo(p_script_pc)($t2)
	lui     $at, %hi(p_script_pc)
	lbu     $t3, 0x0001($t2)
	addu    $t4, $t2, $t3
	sw      $t4, %lo(p_script_pc)($at)
	li      $t5, 0x0001
	lui     $at, %hi(p_script_state)
	sh      $t5, %lo(p_script_state)($at)
.L8037E4EC:
	jr      $ra
	nop
	jr      $ra
	nop

/* void p_cmd_freeze(void) */
.globl p_cmd_freeze
p_cmd_freeze:
	li      $t6, -0x0001
	lui     $at, %hi(p_script_state)
	sh      $t6, %lo(p_script_state)($at)
	lui     $t7, %hi(p_script_freeze)
	lhu     $t7, %lo(p_script_freeze)($t7)
	bnez    $t7, .L8037E530
	nop
	lui     $t8, %hi(p_script_pc)
	lw      $t8, %lo(p_script_pc)($t8)
	lui     $at, %hi(p_script_freeze)
	lh      $t9, 0x0002($t8)
	b       .L8037E570
	sh      $t9, %lo(p_script_freeze)($at)
.L8037E530:
	lui     $t0, %hi(p_script_freeze)
	lhu     $t0, %lo(p_script_freeze)($t0)
	lui     $at, %hi(p_script_freeze)
	addiu   $t1, $t0, -0x0001
	andi    $t2, $t1, 0xFFFF
	bnez    $t2, .L8037E570
	sh      $t1, %lo(p_script_freeze)($at)
	lui     $t3, %hi(p_script_pc)
	lw      $t3, %lo(p_script_pc)($t3)
	lui     $at, %hi(p_script_pc)
	lbu     $t4, 0x0001($t3)
	addu    $t5, $t3, $t4
	sw      $t5, %lo(p_script_pc)($at)
	li      $t6, 0x0001
	lui     $at, %hi(p_script_state)
	sh      $t6, %lo(p_script_state)($at)
.L8037E570:
	jr      $ra
	nop
	jr      $ra
	nop

/* void p_cmd_jump(void) */
.globl p_cmd_jump
p_cmd_jump:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(p_script_pc)
	lw      $t6, %lo(p_script_pc)($t6)
	jal     segment_to_virtual
	lw      $a0, 0x0004($t6)
	lui     $at, %hi(p_script_pc)
	sw      $v0, %lo(p_script_pc)($at)
	b       .L8037E5A8
	nop
.L8037E5A8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void p_cmd_call(void) */
.globl p_cmd_call
p_cmd_call:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(p_script_pc)
	lw      $t6, %lo(p_script_pc)($t6)
	lui     $t9, %hi(p_script_sp)
	lw      $t9, %lo(p_script_sp)($t9)
	lbu     $t7, 0x0001($t6)
	lui     $t0, %hi(p_script_sp)
	lui     $at, %hi(p_script_sp)
	addu    $t8, $t7, $t6
	sw      $t8, 0x0000($t9)
	lw      $t0, %lo(p_script_sp)($t0)
	addiu   $t1, $t0, 0x0004
	sw      $t1, %lo(p_script_sp)($at)
	lui     $t2, %hi(p_script_pc)
	lw      $t2, %lo(p_script_pc)($t2)
	jal     segment_to_virtual
	lw      $a0, 0x0004($t2)
	lui     $at, %hi(p_script_pc)
	sw      $v0, %lo(p_script_pc)($at)
	b       .L8037E610
	nop
.L8037E610:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void p_cmd_return(void) */
.globl p_cmd_return
p_cmd_return:
	lui     $t6, %hi(p_script_sp)
	lw      $t6, %lo(p_script_sp)($t6)
	lui     $at, %hi(p_script_sp)
	addiu   $t7, $t6, -0x0004
	sw      $t7, %lo(p_script_sp)($at)
	lw      $t8, 0x0000($t7)
	lui     $at, %hi(p_script_pc)
	sw      $t8, %lo(p_script_pc)($at)
	jr      $ra
	nop
	jr      $ra
	nop

/* void p_cmd_for(void) */
.globl p_cmd_for
p_cmd_for:
	lui     $t6, %hi(p_script_pc)
	lw      $t6, %lo(p_script_pc)($t6)
	lui     $t9, %hi(p_script_sp)
	lw      $t9, %lo(p_script_sp)($t9)
	lbu     $t7, 0x0001($t6)
	lui     $t0, %hi(p_script_sp)
	lui     $at, %hi(p_script_sp)
	addu    $t8, $t7, $t6
	sw      $t8, 0x0000($t9)
	lw      $t0, %lo(p_script_sp)($t0)
	addiu   $t1, $t0, 0x0004
	sw      $t1, %lo(p_script_sp)($at)
	lui     $t2, %hi(p_script_pc)
	lw      $t2, %lo(p_script_pc)($t2)
	lui     $t4, %hi(p_script_sp)
	lw      $t4, %lo(p_script_sp)($t4)
	lh      $t3, 0x0002($t2)
	lui     $t5, %hi(p_script_sp)
	lui     $at, %hi(p_script_sp)
	sw      $t3, 0x0000($t4)
	lw      $t5, %lo(p_script_sp)($t5)
	addiu   $t7, $t5, 0x0004
	sw      $t7, %lo(p_script_sp)($at)
	lui     $t6, %hi(p_script_pc)
	lw      $t6, %lo(p_script_pc)($t6)
	lui     $at, %hi(p_script_pc)
	lbu     $t8, 0x0001($t6)
	addu    $t9, $t6, $t8
	sw      $t9, %lo(p_script_pc)($at)
	jr      $ra
	nop
	jr      $ra
	nop

/* void p_cmd_done(void) */
.globl p_cmd_done
p_cmd_done:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(p_script_sp)
	lw      $t6, %lo(p_script_sp)($t6)
	lw      $t7, -0x0004($t6)
	sw      $t7, 0x0004($sp)
	lw      $t8, 0x0004($sp)
	bnez    $t8, .L8037E70C
	nop
	lui     $t9, %hi(p_script_sp)
	lw      $t9, %lo(p_script_sp)($t9)
	lui     $at, %hi(p_script_pc)
	lw      $t0, -0x0008($t9)
	b       .L8037E770
	sw      $t0, %lo(p_script_pc)($at)
.L8037E70C:
	lw      $t1, 0x0004($sp)
	addiu   $t2, $t1, -0x0001
	beqz    $t2, .L8037E744
	sw      $t2, 0x0004($sp)
	lui     $t4, %hi(p_script_sp)
	lw      $t4, %lo(p_script_sp)($t4)
	lw      $t3, 0x0004($sp)
	sw      $t3, -0x0004($t4)
	lui     $t5, %hi(p_script_sp)
	lw      $t5, %lo(p_script_sp)($t5)
	lui     $at, %hi(p_script_pc)
	lw      $t6, -0x0008($t5)
	b       .L8037E770
	sw      $t6, %lo(p_script_pc)($at)
.L8037E744:
	lui     $t7, %hi(p_script_pc)
	lw      $t7, %lo(p_script_pc)($t7)
	lui     $at, %hi(p_script_pc)
	lbu     $t8, 0x0001($t7)
	addu    $t9, $t7, $t8
	sw      $t9, %lo(p_script_pc)($at)
	lui     $t0, %hi(p_script_sp)
	lw      $t0, %lo(p_script_sp)($t0)
	lui     $at, %hi(p_script_sp)
	addiu   $t1, $t0, -0x0008
	sw      $t1, %lo(p_script_sp)($at)
.L8037E770:
	b       .L8037E778
	nop
.L8037E778:
	jr      $ra
	addiu   $sp, $sp, 0x0008

/* void p_cmd_do(void) */
.globl p_cmd_do
p_cmd_do:
	lui     $t6, %hi(p_script_pc)
	lw      $t6, %lo(p_script_pc)($t6)
	lui     $t9, %hi(p_script_sp)
	lw      $t9, %lo(p_script_sp)($t9)
	lbu     $t7, 0x0001($t6)
	lui     $t0, %hi(p_script_sp)
	lui     $at, %hi(p_script_sp)
	addu    $t8, $t7, $t6
	sw      $t8, 0x0000($t9)
	lw      $t0, %lo(p_script_sp)($t0)
	addiu   $t1, $t0, 0x0004
	sw      $t1, %lo(p_script_sp)($at)
	lui     $t2, %hi(p_script_sp)
	lw      $t2, %lo(p_script_sp)($t2)
	lui     $t3, %hi(p_script_sp)
	lui     $at, %hi(p_script_sp)
	sw      $0, 0x0000($t2)
	lw      $t3, %lo(p_script_sp)($t3)
	addiu   $t4, $t3, 0x0004
	sw      $t4, %lo(p_script_sp)($at)
	lui     $t5, %hi(p_script_pc)
	lw      $t5, %lo(p_script_pc)($t5)
	lui     $at, %hi(p_script_pc)
	lbu     $t7, 0x0001($t5)
	addu    $t6, $t5, $t7
	sw      $t6, %lo(p_script_pc)($at)
	jr      $ra
	nop
	jr      $ra
	nop

/* void p_cmd_while(void) */
.globl p_cmd_while
p_cmd_while:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(p_script_pc)
	lw      $t6, %lo(p_script_pc)($t6)
	lbu     $a0, 0x0002($t6)
	jal     p_script_cmp
	lw      $a1, 0x0004($t6)
	beqz    $v0, .L8037E84C
	nop
	lui     $t7, %hi(p_script_pc)
	lw      $t7, %lo(p_script_pc)($t7)
	lui     $at, %hi(p_script_pc)
	lbu     $t8, 0x0001($t7)
	addu    $t9, $t7, $t8
	sw      $t9, %lo(p_script_pc)($at)
	lui     $t0, %hi(p_script_sp)
	lw      $t0, %lo(p_script_sp)($t0)
	lui     $at, %hi(p_script_sp)
	addiu   $t1, $t0, -0x0008
	b       .L8037E860
	sw      $t1, %lo(p_script_sp)($at)
.L8037E84C:
	lui     $t2, %hi(p_script_sp)
	lw      $t2, %lo(p_script_sp)($t2)
	lui     $at, %hi(p_script_pc)
	lw      $t3, -0x0008($t2)
	sw      $t3, %lo(p_script_pc)($at)
.L8037E860:
	b       .L8037E868
	nop
.L8037E868:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void p_cmd_if_jump(void) */
.globl p_cmd_if_jump
p_cmd_if_jump:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(p_script_pc)
	lw      $t6, %lo(p_script_pc)($t6)
	lbu     $a0, 0x0002($t6)
	jal     p_script_cmp
	lw      $a1, 0x0004($t6)
	beqz    $v0, .L8037E8B8
	nop
	lui     $t7, %hi(p_script_pc)
	lw      $t7, %lo(p_script_pc)($t7)
	jal     segment_to_virtual
	lw      $a0, 0x0008($t7)
	lui     $at, %hi(p_script_pc)
	b       .L8037E8D0
	sw      $v0, %lo(p_script_pc)($at)
.L8037E8B8:
	lui     $t8, %hi(p_script_pc)
	lw      $t8, %lo(p_script_pc)($t8)
	lui     $at, %hi(p_script_pc)
	lbu     $t9, 0x0001($t8)
	addu    $t0, $t8, $t9
	sw      $t0, %lo(p_script_pc)($at)
.L8037E8D0:
	b       .L8037E8D8
	nop
.L8037E8D8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void p_cmd_if_call(void) */
.globl p_cmd_if_call
p_cmd_if_call:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(p_script_pc)
	lw      $t6, %lo(p_script_pc)($t6)
	lbu     $a0, 0x0002($t6)
	jal     p_script_cmp
	lw      $a1, 0x0004($t6)
	beqz    $v0, .L8037E958
	nop
	lui     $t7, %hi(p_script_pc)
	lw      $t7, %lo(p_script_pc)($t7)
	lui     $t0, %hi(p_script_sp)
	lw      $t0, %lo(p_script_sp)($t0)
	lbu     $t8, 0x0001($t7)
	lui     $t1, %hi(p_script_sp)
	lui     $at, %hi(p_script_sp)
	addu    $t9, $t8, $t7
	sw      $t9, 0x0000($t0)
	lw      $t1, %lo(p_script_sp)($t1)
	addiu   $t2, $t1, 0x0004
	sw      $t2, %lo(p_script_sp)($at)
	lui     $t3, %hi(p_script_pc)
	lw      $t3, %lo(p_script_pc)($t3)
	jal     segment_to_virtual
	lw      $a0, 0x0008($t3)
	lui     $at, %hi(p_script_pc)
	b       .L8037E970
	sw      $v0, %lo(p_script_pc)($at)
.L8037E958:
	lui     $t4, %hi(p_script_pc)
	lw      $t4, %lo(p_script_pc)($t4)
	lui     $at, %hi(p_script_pc)
	lbu     $t5, 0x0001($t4)
	addu    $t6, $t4, $t5
	sw      $t6, %lo(p_script_pc)($at)
.L8037E970:
	b       .L8037E978
	nop
.L8037E978:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void p_cmd_if(void) */
.globl p_cmd_if
p_cmd_if:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(p_script_pc)
	lw      $t6, %lo(p_script_pc)($t6)
	lbu     $a0, 0x0002($t6)
	jal     p_script_cmp
	lw      $a1, 0x0004($t6)
	bnez    $v0, .L8037E9E8
	nop
.L8037E9AC:
	lui     $t7, %hi(p_script_pc)
	lw      $t7, %lo(p_script_pc)($t7)
	lui     $at, %hi(p_script_pc)
	lbu     $t8, 0x0001($t7)
	addu    $t9, $t7, $t8
	sw      $t9, %lo(p_script_pc)($at)
	lui     $t0, %hi(p_script_pc)
	lw      $t0, %lo(p_script_pc)($t0)
	li      $at, 0x000F
	lbu     $t1, 0x0000($t0)
	beq     $t1, $at, .L8037E9AC
	nop
	li      $at, 0x0010
	beq     $t1, $at, .L8037E9AC
	nop
.L8037E9E8:
	lui     $t2, %hi(p_script_pc)
	lw      $t2, %lo(p_script_pc)($t2)
	lui     $at, %hi(p_script_pc)
	lbu     $t3, 0x0001($t2)
	addu    $t4, $t2, $t3
	sw      $t4, %lo(p_script_pc)($at)
	b       .L8037EA08
	nop
.L8037EA08:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void p_cmd_else(void) */
.globl p_cmd_else
p_cmd_else:
	lui     $t6, %hi(p_script_pc)
	lw      $t6, %lo(p_script_pc)($t6)
	lui     $at, %hi(p_script_pc)
	lbu     $t7, 0x0001($t6)
	addu    $t8, $t6, $t7
	sw      $t8, %lo(p_script_pc)($at)
	lui     $t9, %hi(p_script_pc)
	lw      $t9, %lo(p_script_pc)($t9)
	li      $at, 0x0010
	lbu     $t0, 0x0000($t9)
	beq     $t0, $at, p_cmd_else
	nop
	lui     $t1, %hi(p_script_pc)
	lw      $t1, %lo(p_script_pc)($t1)
	lui     $at, %hi(p_script_pc)
	lbu     $t2, 0x0001($t1)
	addu    $t3, $t1, $t2
	sw      $t3, %lo(p_script_pc)($at)
	jr      $ra
	nop
	jr      $ra
	nop

/* void p_cmd_endif(void) */
.globl p_cmd_endif
p_cmd_endif:
	lui     $t6, %hi(p_script_pc)
	lw      $t6, %lo(p_script_pc)($t6)
	lui     $at, %hi(p_script_pc)
	lbu     $t7, 0x0001($t6)
	addu    $t8, $t6, $t7
	sw      $t8, %lo(p_script_pc)($at)
	jr      $ra
	nop
	jr      $ra
	nop

/* void p_cmd_callback(void) */
.globl p_cmd_callback
p_cmd_callback:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(p_script_pc)
	lw      $t6, %lo(p_script_pc)($t6)
	lw      $t7, 0x0004($t6)
	sw      $t7, 0x001C($sp)
	lw      $t9, 0x001C($sp)
	lui     $t8, %hi(p_script_pc)
	lw      $t8, %lo(p_script_pc)($t8)
	lui     $a1, %hi(p_script_code)
	lw      $a1, %lo(p_script_code)($a1)
	jalr    $t9
	lh      $a0, 0x0002($t8)
	lui     $at, %hi(p_script_code)
	sw      $v0, %lo(p_script_code)($at)
	lui     $t0, %hi(p_script_pc)
	lw      $t0, %lo(p_script_pc)($t0)
	lui     $at, %hi(p_script_pc)
	lbu     $t1, 0x0001($t0)
	addu    $t2, $t0, $t1
	sw      $t2, %lo(p_script_pc)($at)
	b       .L8037EAF4
	nop
.L8037EAF4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

/* void p_cmd_process(void) */
.globl p_cmd_process
p_cmd_process:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(p_script_pc)
	lw      $t6, %lo(p_script_pc)($t6)
	lw      $t7, 0x0004($t6)
	sw      $t7, 0x001C($sp)
	lw      $t9, 0x001C($sp)
	lui     $t8, %hi(p_script_pc)
	lw      $t8, %lo(p_script_pc)($t8)
	lui     $a1, %hi(p_script_code)
	lw      $a1, %lo(p_script_code)($a1)
	jalr    $t9
	lh      $a0, 0x0002($t8)
	lui     $at, %hi(p_script_code)
	sw      $v0, %lo(p_script_code)($at)
	lui     $t0, %hi(p_script_code)
	lw      $t0, %lo(p_script_code)($t0)
	bnez    $t0, .L8037EB5C
	nop
	lui     $at, %hi(p_script_state)
	b       .L8037EB80
	sh      $0, %lo(p_script_state)($at)
.L8037EB5C:
	li      $t1, 0x0001
	lui     $at, %hi(p_script_state)
	sh      $t1, %lo(p_script_state)($at)
	lui     $t2, %hi(p_script_pc)
	lw      $t2, %lo(p_script_pc)($t2)
	lui     $at, %hi(p_script_pc)
	lbu     $t3, 0x0001($t2)
	addu    $t4, $t2, $t3
	sw      $t4, %lo(p_script_pc)($at)
.L8037EB80:
	b       .L8037EB88
	nop
.L8037EB88:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

/* void p_cmd_set(void) */
.globl p_cmd_set
p_cmd_set:
	lui     $t6, %hi(p_script_pc)
	lw      $t6, %lo(p_script_pc)($t6)
	lui     $at, %hi(p_script_code)
	lh      $t7, 0x0002($t6)
	sw      $t7, %lo(p_script_code)($at)
	lui     $t8, %hi(p_script_pc)
	lw      $t8, %lo(p_script_pc)($t8)
	lui     $at, %hi(p_script_pc)
	lbu     $t9, 0x0001($t8)
	addu    $t0, $t8, $t9
	sw      $t0, %lo(p_script_pc)($at)
	jr      $ra
	nop
	jr      $ra
	nop

/* void p_cmd_push(void) */
.globl p_cmd_push
p_cmd_push:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     mem_push
	nop
	lui     $t6, %hi(p_script_pc)
	lw      $t6, %lo(p_script_pc)($t6)
	lui     $at, %hi(p_script_pc)
	lbu     $t7, 0x0001($t6)
	addu    $t8, $t6, $t7
	sw      $t8, %lo(p_script_pc)($at)
	b       .L8037EC04
	nop
.L8037EC04:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void p_cmd_pull(void) */
.globl p_cmd_pull
p_cmd_pull:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     mem_pull
	nop
	lui     $t6, %hi(p_script_pc)
	lw      $t6, %lo(p_script_pc)($t6)
	lui     $at, %hi(p_script_pc)
	lbu     $t7, 0x0001($t6)
	addu    $t8, $t6, $t7
	sw      $t8, %lo(p_script_pc)($at)
	b       .L8037EC44
	nop
.L8037EC44:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void p_cmd_load_code(void) */
.globl p_cmd_load_code
p_cmd_load_code:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(p_script_pc)
	lw      $t6, %lo(p_script_pc)($t6)
	lw      $a0, 0x0004($t6)
	lw      $a1, 0x0008($t6)
	jal     mem_load_code
	lw      $a2, 0x000C($t6)
	lui     $t7, %hi(p_script_pc)
	lw      $t7, %lo(p_script_pc)($t7)
	lui     $at, %hi(p_script_pc)
	lbu     $t8, 0x0001($t7)
	addu    $t9, $t7, $t8
	sw      $t9, %lo(p_script_pc)($at)
	b       .L8037EC94
	nop
.L8037EC94:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void p_cmd_load_data(void) */
.globl p_cmd_load_data
p_cmd_load_data:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(p_script_pc)
	lw      $t6, %lo(p_script_pc)($t6)
	move    $a3, $0
	lh      $a0, 0x0002($t6)
	lw      $a1, 0x0004($t6)
	jal     mem_load_data
	lw      $a2, 0x0008($t6)
	lui     $t7, %hi(p_script_pc)
	lw      $t7, %lo(p_script_pc)($t7)
	lui     $at, %hi(p_script_pc)
	lbu     $t8, 0x0001($t7)
	addu    $t9, $t7, $t8
	sw      $t9, %lo(p_script_pc)($at)
	b       .L8037ECE8
	nop
.L8037ECE8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void p_cmd_load_szp(void) */
.globl p_cmd_load_szp
p_cmd_load_szp:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(p_script_pc)
	lw      $t6, %lo(p_script_pc)($t6)
	lh      $a0, 0x0002($t6)
	lw      $a1, 0x0004($t6)
	jal     mem_load_szp
	lw      $a2, 0x0008($t6)
	lui     $t7, %hi(p_script_pc)
	lw      $t7, %lo(p_script_pc)($t7)
	lui     $at, %hi(p_script_pc)
	lbu     $t8, 0x0001($t7)
	addu    $t9, $t7, $t8
	sw      $t9, %lo(p_script_pc)($at)
	b       .L8037ED38
	nop
.L8037ED38:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void p_cmd_load_face(void) */
.globl p_cmd_load_face
p_cmd_load_face:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	li.u    $a0, 0x000E1000
	li.l    $a0, 0x000E1000
	jal     mem_alloc
	move    $a1, $0
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x001C($sp)
	beqz    $t6, .L8037EDC8
	nop
	li.u    $a1, 0x000E1000
	li.l    $a1, 0x000E1000
	jal     gdm_init
	lw      $a0, 0x001C($sp)
	la.u    $a0, z_image
	li.u    $a1, 0x00025800
	li.l    $a1, 0x00025800
	jal     face_gfx_8019C418
	la.l    $a0, z_image
	la.u    $a0, _cimgSegmentBssStart
	li.u    $a1, 0x00070800
	li.l    $a1, 0x00070800
	jal     face_gfx_8019C418
	la.l    $a0, _cimgSegmentBssStart
	jal     gdm_setup
	nop
	lui     $t7, %hi(p_script_pc)
	lw      $t7, %lo(p_script_pc)($t7)
	jal     gdm_maketestdl
	lh      $a0, 0x0002($t7)
	b       .L8037EDC8
	nop
.L8037EDC8:
	lui     $t8, %hi(p_script_pc)
	lw      $t8, %lo(p_script_pc)($t8)
	lui     $at, %hi(p_script_pc)
	lbu     $t9, 0x0001($t8)
	addu    $t0, $t8, $t9
	sw      $t0, %lo(p_script_pc)($at)
	b       .L8037EDE8
	nop
.L8037EDE8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

/* void p_cmd_load_txt(void) */
.globl p_cmd_load_txt
p_cmd_load_txt:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(p_script_pc)
	lw      $t6, %lo(p_script_pc)($t6)
	lh      $a0, 0x0002($t6)
	lw      $a1, 0x0004($t6)
	jal     mem_load_txt
	lw      $a2, 0x0008($t6)
	lui     $t7, %hi(p_script_pc)
	lw      $t7, %lo(p_script_pc)($t7)
	lui     $at, %hi(p_script_pc)
	lbu     $t8, 0x0001($t7)
	addu    $t9, $t7, $t8
	sw      $t9, %lo(p_script_pc)($at)
	b       .L8037EE38
	nop
.L8037EE38:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void p_cmd_stage_init(void) */
.globl p_cmd_stage_init
p_cmd_stage_init:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	la.u    $a1, s_script_8038BD88
	la.l    $a1, s_script_8038BD88
	jal     shape_8037B448
	move    $a0, $0
	jal     object_8029D1E8
	nop
	jal     scene_init
	nop
	jal     mem_push
	nop
	lui     $t6, %hi(p_script_pc)
	lw      $t6, %lo(p_script_pc)($t6)
	lui     $at, %hi(p_script_pc)
	lbu     $t7, 0x0001($t6)
	addu    $t8, $t6, $t7
	sw      $t8, %lo(p_script_pc)($at)
	b       .L8037EE98
	nop
.L8037EE98:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void p_cmd_stage_exit(void) */
.globl p_cmd_stage_exit
p_cmd_stage_exit:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     object_8029D1E8
	nop
	jal     scene_exit
	nop
	jal     scene_init
	nop
	jal     mem_pull
	nop
	lui     $t6, %hi(p_script_pc)
	lw      $t6, %lo(p_script_pc)($t6)
	lui     $at, %hi(p_script_pc)
	lbu     $t7, 0x0001($t6)
	addu    $t8, $t6, $t7
	sw      $t8, %lo(p_script_pc)($at)
	b       .L8037EEF0
	nop
.L8037EEF0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void p_cmd_stage_start(void) */
.globl p_cmd_stage_start
p_cmd_stage_start:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(p_script_arena)
	lw      $t6, %lo(p_script_arena)($t6)
	bnez    $t6, .L8037EF3C
	nop
	jal     mem_available
	nop
	move    $s0, $v0
	addiu   $a0, $s0, -0x0010
	jal     arena_init
	move    $a1, $0
	lui     $at, %hi(p_script_arena)
	sw      $v0, %lo(p_script_arena)($at)
.L8037EF3C:
	lui     $t7, %hi(p_script_pc)
	lw      $t7, %lo(p_script_pc)($t7)
	lui     $at, %hi(p_script_pc)
	lbu     $t8, 0x0001($t7)
	addu    $t9, $t7, $t8
	sw      $t9, %lo(p_script_pc)($at)
	b       .L8037EF5C
	nop
.L8037EF5C:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

/* void p_cmd_stage_end(void) */
.globl p_cmd_stage_end
p_cmd_stage_end:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(p_script_arena)
	lw      $t6, %lo(p_script_arena)($t6)
	move    $a0, $t6
	jal     arena_resize
	lw      $a1, 0x0004($t6)
	lui     $at, %hi(p_script_arena)
	sw      $0, %lo(p_script_arena)($at)
	sw      $0, 0x001C($sp)
.L8037EF98:
	lw      $t7, 0x001C($sp)
	lui     $t9, %hi(scene_data+0x08)
	sll     $t8, $t7, 4
	subu    $t8, $t8, $t7
	sll     $t8, $t8, 2
	addu    $t9, $t9, $t8
	lw      $t9, %lo(scene_data+0x08)($t9)
	beqz    $t9, .L8037EFCC
	nop
	jal     map_data_80383340
	nop
	b       .L8037EFE0
	nop
.L8037EFCC:
	lw      $t0, 0x001C($sp)
	addiu   $t1, $t0, 0x0001
	slti    $at, $t1, 0x0008
	bnez    $at, .L8037EF98
	sw      $t1, 0x001C($sp)
.L8037EFE0:
	lui     $t2, %hi(p_script_pc)
	lw      $t2, %lo(p_script_pc)($t2)
	lui     $at, %hi(p_script_pc)
	lbu     $t3, 0x0001($t2)
	addu    $t4, $t2, $t3
	sw      $t4, %lo(p_script_pc)($at)
	b       .L8037F000
	nop
.L8037F000:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

/* void p_cmd_scene_start(void) */
.globl p_cmd_scene_start
p_cmd_scene_start:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(p_script_pc)
	lw      $t6, %lo(p_script_pc)($t6)
	lbu     $t7, 0x0002($t6)
	sb      $t7, 0x0027($sp)
	lui     $t8, %hi(p_script_pc)
	lw      $t8, %lo(p_script_pc)($t8)
	lw      $t9, 0x0004($t8)
	sw      $t9, 0x0020($sp)
	lbu     $t0, 0x0027($sp)
	slti    $at, $t0, 0x0008
	beqz    $at, .L8037F100
	nop
	lui     $a0, %hi(p_script_arena)
	lw      $a0, %lo(p_script_arena)($a0)
	jal     s_script_main
	lw      $a1, 0x0020($sp)
	sw      $v0, 0x001C($sp)
	lw      $t1, 0x001C($sp)
	lw      $t2, 0x0020($t1)
	lw      $t3, 0x0000($t2)
	sw      $t3, 0x0018($sp)
	lbu     $t4, 0x0027($sp)
	lui     $at, %hi(p_script_scene)
	sh      $t4, %lo(p_script_scene)($at)
	lbu     $t5, 0x0027($sp)
	lw      $t6, 0x001C($sp)
	sb      $t5, 0x0014($t6)
	lbu     $t9, 0x0027($sp)
	lui     $t8, %hi(scene_table)
	lw      $t8, %lo(scene_table)($t8)
	sll     $t0, $t9, 4
	lw      $t7, 0x001C($sp)
	subu    $t0, $t0, $t9
	sll     $t0, $t0, 2
	addu    $t1, $t8, $t0
	sw      $t7, 0x0004($t1)
	lw      $t2, 0x0018($sp)
	beqz    $t2, .L8037F0E0
	nop
	lbu     $t6, 0x0027($sp)
	lw      $t3, 0x0018($sp)
	lui     $t5, %hi(scene_table)
	lw      $t5, %lo(scene_table)($t5)
	sll     $t9, $t6, 4
	subu    $t9, $t9, $t6
	lw      $t4, 0x0018($t3)
	sll     $t9, $t9, 2
	addu    $t8, $t5, $t9
	b       .L8037F100
	sw      $t4, 0x0024($t8)
.L8037F0E0:
	lbu     $t7, 0x0027($sp)
	lui     $t0, %hi(scene_table)
	lw      $t0, %lo(scene_table)($t0)
	sll     $t1, $t7, 4
	subu    $t1, $t1, $t7
	sll     $t1, $t1, 2
	addu    $t2, $t0, $t1
	sw      $0, 0x0024($t2)
.L8037F100:
	lui     $t3, %hi(p_script_pc)
	lw      $t3, %lo(p_script_pc)($t3)
	lui     $at, %hi(p_script_pc)
	lbu     $t6, 0x0001($t3)
	addu    $t5, $t3, $t6
	sw      $t5, %lo(p_script_pc)($at)
	b       .L8037F120
	nop
.L8037F120:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

/* void p_cmd_scene_end(void) */
.globl p_cmd_scene_end
p_cmd_scene_end:
	li      $t6, -0x0001
	lui     $at, %hi(p_script_scene)
	sh      $t6, %lo(p_script_scene)($at)
	lui     $t7, %hi(p_script_pc)
	lw      $t7, %lo(p_script_pc)($t7)
	lui     $at, %hi(p_script_pc)
	lbu     $t8, 0x0001($t7)
	addu    $t9, $t7, $t8
	sw      $t9, %lo(p_script_pc)($at)
	jr      $ra
	nop
	jr      $ra
	nop

/* void p_cmd_shape_gfx(void) */
.globl p_cmd_shape_gfx
p_cmd_shape_gfx:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(p_script_pc)
	lw      $t6, %lo(p_script_pc)($t6)
	lh      $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0FFF
	sh      $t8, 0x001E($sp)
	lui     $t9, %hi(p_script_pc)
	lw      $t9, %lo(p_script_pc)($t9)
	lhu     $t0, 0x0002($t9)
	sra     $t1, $t0, 12
	sh      $t1, 0x001C($sp)
	lui     $t2, %hi(p_script_pc)
	lw      $t2, %lo(p_script_pc)($t2)
	lw      $t3, 0x0004($t2)
	sw      $t3, 0x0018($sp)
	lh      $t4, 0x001E($sp)
	slti    $at, $t4, 0x0100
	beqz    $at, .L8037F1E4
	nop
	lui     $a0, %hi(p_script_arena)
	lw      $a0, %lo(p_script_arena)($a0)
	move    $a1, $0
	lh      $a2, 0x001C($sp)
	jal     shape_8037BC90
	lw      $a3, 0x0018($sp)
	lh      $t6, 0x001E($sp)
	lui     $t5, %hi(shape_table)
	lw      $t5, %lo(shape_table)($t5)
	sll     $t7, $t6, 2
	addu    $t8, $t5, $t7
	sw      $v0, 0x0000($t8)
.L8037F1E4:
	lui     $t9, %hi(p_script_pc)
	lw      $t9, %lo(p_script_pc)($t9)
	lui     $at, %hi(p_script_pc)
	lbu     $t0, 0x0001($t9)
	addu    $t1, $t9, $t0
	sw      $t1, %lo(p_script_pc)($at)
	b       .L8037F204
	nop
.L8037F204:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

/* void p_cmd_shape_script(void) */
.globl p_cmd_shape_script
p_cmd_shape_script:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(p_script_pc)
	lw      $t6, %lo(p_script_pc)($t6)
	lh      $t7, 0x0002($t6)
	sh      $t7, 0x001E($sp)
	lui     $t8, %hi(p_script_pc)
	lw      $t8, %lo(p_script_pc)($t8)
	lw      $t9, 0x0004($t8)
	sw      $t9, 0x0018($sp)
	lh      $t0, 0x001E($sp)
	slti    $at, $t0, 0x0100
	beqz    $at, .L8037F274
	nop
	lui     $a0, %hi(p_script_arena)
	lw      $a0, %lo(p_script_arena)($a0)
	jal     s_script_main
	lw      $a1, 0x0018($sp)
	lh      $t2, 0x001E($sp)
	lui     $t1, %hi(shape_table)
	lw      $t1, %lo(shape_table)($t1)
	sll     $t3, $t2, 2
	addu    $t4, $t1, $t3
	sw      $v0, 0x0000($t4)
.L8037F274:
	lui     $t5, %hi(p_script_pc)
	lw      $t5, %lo(p_script_pc)($t5)
	lui     $at, %hi(p_script_pc)
	lbu     $t6, 0x0001($t5)
	addu    $t7, $t5, $t6
	sw      $t7, %lo(p_script_pc)($at)
	b       .L8037F294
	nop
.L8037F294:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

/* void p_cmd_shape_scale(void) */
.globl p_cmd_shape_scale
p_cmd_shape_scale:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	lui     $t6, %hi(p_script_pc)
	lw      $t6, %lo(p_script_pc)($t6)
	lh      $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0FFF
	sh      $t8, 0x002A($sp)
	lui     $t9, %hi(p_script_pc)
	lw      $t9, %lo(p_script_pc)($t9)
	lhu     $t0, 0x0002($t9)
	sra     $t1, $t0, 12
	sh      $t1, 0x0028($sp)
	lui     $t2, %hi(p_script_pc)
	lw      $t2, %lo(p_script_pc)($t2)
	lw      $t3, 0x0004($t2)
	sw      $t3, 0x0024($sp)
	lui     $t4, %hi(p_script_pc)
	lw      $t4, %lo(p_script_pc)($t4)
	lw      $t5, 0x0008($t4)
	sw      $t5, 0x002C($sp)
	lh      $t6, 0x002A($sp)
	slti    $at, $t6, 0x0100
	beqz    $at, .L8037F33C
	nop
	lwc1    $f4, 0x002C($sp)
	lui     $a0, %hi(p_script_arena)
	lw      $a0, %lo(p_script_arena)($a0)
	move    $a1, $0
	lh      $a2, 0x0028($sp)
	lw      $a3, 0x0024($sp)
	jal     shape_8037B940
	swc1    $f4, 0x0010($sp)
	lh      $t8, 0x002A($sp)
	lui     $t7, %hi(shape_table)
	lw      $t7, %lo(shape_table)($t7)
	sll     $t9, $t8, 2
	addu    $t0, $t7, $t9
	sw      $v0, 0x0000($t0)
.L8037F33C:
	lui     $t1, %hi(p_script_pc)
	lw      $t1, %lo(p_script_pc)($t1)
	lui     $at, %hi(p_script_pc)
	lbu     $t2, 0x0001($t1)
	addu    $t3, $t1, $t2
	sw      $t3, %lo(p_script_pc)($at)
	b       .L8037F35C
	nop
.L8037F35C:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

/* void p_cmd_player(void) */
.globl p_cmd_player
p_cmd_player:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(spawn_mario)
	lw      $a0, %lo(spawn_mario)($a0)
	move    $a1, $0
	move    $a2, $0
	jal     vecs_set
	move    $a3, $0
	lui     $a0, %hi(spawn_mario)
	lw      $a0, %lo(spawn_mario)($a0)
	move    $a1, $0
	move    $a2, $0
	move    $a3, $0
	jal     vecs_set
	addiu   $a0, $a0, 0x0006
	lui     $t7, %hi(spawn_mario)
	lw      $t7, %lo(spawn_mario)($t7)
	li      $t6, -0x0001
	sb      $t6, 0x000D($t7)
	lui     $t8, %hi(spawn_mario)
	lw      $t8, %lo(spawn_mario)($t8)
	sb      $0, 0x000C($t8)
	lui     $t9, %hi(p_script_pc)
	lw      $t9, %lo(p_script_pc)($t9)
	lui     $t1, %hi(spawn_mario)
	lw      $t1, %lo(spawn_mario)($t1)
	lw      $t0, 0x0004($t9)
	sw      $t0, 0x0010($t1)
	lui     $t2, %hi(p_script_pc)
	lw      $t2, %lo(p_script_pc)($t2)
	lui     $t4, %hi(spawn_mario)
	lw      $t4, %lo(spawn_mario)($t4)
	lw      $t3, 0x0008($t2)
	sw      $t3, 0x0014($t4)
	lui     $t6, %hi(p_script_pc)
	lw      $t6, %lo(p_script_pc)($t6)
	lui     $t5, %hi(shape_table)
	lw      $t5, %lo(shape_table)($t5)
	lbu     $t7, 0x0003($t6)
	lui     $t1, %hi(spawn_mario)
	lw      $t1, %lo(spawn_mario)($t1)
	sll     $t8, $t7, 2
	addu    $t9, $t5, $t8
	lw      $t0, 0x0000($t9)
	sw      $t0, 0x0018($t1)
	lui     $t2, %hi(spawn_mario)
	lw      $t2, %lo(spawn_mario)($t2)
	sw      $0, 0x001C($t2)
	lui     $t3, %hi(p_script_pc)
	lw      $t3, %lo(p_script_pc)($t3)
	lui     $at, %hi(p_script_pc)
	lbu     $t4, 0x0001($t3)
	addu    $t6, $t3, $t4
	sw      $t6, %lo(p_script_pc)($at)
	b       .L8037F44C
	nop
.L8037F44C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void p_cmd_object(void) */
.globl p_cmd_object
p_cmd_object:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(level_index)
	lh      $t6, %lo(level_index)($t6)
	li      $t8, 0x0001
	addiu   $t7, $t6, 0x001F
	sllv    $t9, $t8, $t7
	sb      $t9, 0x001F($sp)
	lui     $t0, %hi(p_script_scene)
	lh      $t0, %lo(p_script_scene)($t0)
	li      $at, -0x0001
	beq     $t0, $at, .L8037F64C
	nop
	lui     $t1, %hi(p_script_pc)
	lw      $t1, %lo(p_script_pc)($t1)
	lbu     $t3, 0x001F($sp)
	lbu     $t2, 0x0002($t1)
	and     $t4, $t2, $t3
	bnez    $t4, .L8037F4B8
	nop
	li      $at, 0x001F
	bne     $t2, $at, .L8037F64C
	nop
.L8037F4B8:
	lui     $t5, %hi(p_script_pc)
	lw      $t5, %lo(p_script_pc)($t5)
	lbu     $t6, 0x0003($t5)
	sh      $t6, 0x001C($sp)
	lui     $a0, %hi(p_script_arena)
	lw      $a0, %lo(p_script_arena)($a0)
	jal     arena_alloc
	li      $a1, 0x0020
	sw      $v0, 0x0018($sp)
	lui     $t8, %hi(p_script_pc)
	lw      $t8, %lo(p_script_pc)($t8)
	lw      $t9, 0x0018($sp)
	lh      $t7, 0x0004($t8)
	sh      $t7, 0x0000($t9)
	lui     $t0, %hi(p_script_pc)
	lw      $t0, %lo(p_script_pc)($t0)
	lw      $t3, 0x0018($sp)
	lh      $t1, 0x0006($t0)
	sh      $t1, 0x0002($t3)
	lui     $t4, %hi(p_script_pc)
	lw      $t4, %lo(p_script_pc)($t4)
	lw      $t5, 0x0018($sp)
	lh      $t2, 0x0008($t4)
	sh      $t2, 0x0004($t5)
	lui     $t6, %hi(p_script_pc)
	lw      $t6, %lo(p_script_pc)($t6)
	li      $at, 0x00B4
	lw      $t0, 0x0018($sp)
	lh      $t8, 0x000A($t6)
	sll     $t7, $t8, 15
	div     $0, $t7, $at
	mflo    $t9
	sh      $t9, 0x0006($t0)
	nop
	lui     $t1, %hi(p_script_pc)
	lw      $t1, %lo(p_script_pc)($t1)
	li      $at, 0x00B4
	lw      $t5, 0x0018($sp)
	lh      $t3, 0x000C($t1)
	sll     $t4, $t3, 15
	div     $0, $t4, $at
	mflo    $t2
	sh      $t2, 0x0008($t5)
	nop
	lui     $t6, %hi(p_script_pc)
	lw      $t6, %lo(p_script_pc)($t6)
	li      $at, 0x00B4
	lw      $t0, 0x0018($sp)
	lh      $t8, 0x000E($t6)
	sll     $t7, $t8, 15
	div     $0, $t7, $at
	mflo    $t9
	sh      $t9, 0x000A($t0)
	nop
	lui     $t1, %hi(p_script_scene)
	lh      $t1, %lo(p_script_scene)($t1)
	lw      $t3, 0x0018($sp)
	sb      $t1, 0x000C($t3)
	lui     $t4, %hi(p_script_scene)
	lh      $t4, %lo(p_script_scene)($t4)
	lw      $t2, 0x0018($sp)
	sb      $t4, 0x000D($t2)
	lui     $t5, %hi(p_script_pc)
	lw      $t5, %lo(p_script_pc)($t5)
	lw      $t8, 0x0018($sp)
	lw      $t6, 0x0010($t5)
	sw      $t6, 0x0010($t8)
	lui     $t7, %hi(p_script_pc)
	lw      $t7, %lo(p_script_pc)($t7)
	lw      $t0, 0x0018($sp)
	lw      $t9, 0x0014($t7)
	sw      $t9, 0x0014($t0)
	lhu     $t3, 0x001C($sp)
	lui     $t1, %hi(shape_table)
	lw      $t1, %lo(shape_table)($t1)
	sll     $t4, $t3, 2
	lw      $t6, 0x0018($sp)
	addu    $t2, $t1, $t4
	lw      $t5, 0x0000($t2)
	sw      $t5, 0x0018($t6)
	lui     $t7, %hi(p_script_scene)
	lh      $t7, %lo(p_script_scene)($t7)
	lui     $t8, %hi(scene_table)
	lw      $t8, %lo(scene_table)($t8)
	sll     $t9, $t7, 4
	subu    $t9, $t9, $t7
	sll     $t9, $t9, 2
	addu    $t0, $t8, $t9
	lw      $t3, 0x0020($t0)
	lw      $t1, 0x0018($sp)
	sw      $t3, 0x001C($t1)
	lui     $t5, %hi(p_script_scene)
	lh      $t5, %lo(p_script_scene)($t5)
	lui     $t2, %hi(scene_table)
	lw      $t2, %lo(scene_table)($t2)
	sll     $t6, $t5, 4
	lw      $t4, 0x0018($sp)
	subu    $t6, $t6, $t5
	sll     $t6, $t6, 2
	addu    $t7, $t2, $t6
	sw      $t4, 0x0020($t7)
.L8037F64C:
	lui     $t8, %hi(p_script_pc)
	lw      $t8, %lo(p_script_pc)($t8)
	lui     $at, %hi(p_script_pc)
	lbu     $t9, 0x0001($t8)
	addu    $t0, $t8, $t9
	sw      $t0, %lo(p_script_pc)($at)
	b       .L8037F66C
	nop
.L8037F66C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

/* void p_cmd_port(void) */
.globl p_cmd_port
p_cmd_port:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(p_script_scene)
	lh      $t6, %lo(p_script_scene)($t6)
	li      $at, -0x0001
	beq     $t6, $at, .L8037F760
	nop
	lui     $a0, %hi(p_script_arena)
	lw      $a0, %lo(p_script_arena)($a0)
	jal     arena_alloc
	li      $a1, 0x000C
	sw      $v0, 0x001C($sp)
	lui     $t7, %hi(p_script_pc)
	lw      $t7, %lo(p_script_pc)($t7)
	lw      $t9, 0x001C($sp)
	lbu     $t8, 0x0002($t7)
	sb      $t8, 0x0000($t9)
	lui     $t0, %hi(p_script_pc)
	lw      $t0, %lo(p_script_pc)($t0)
	lw      $t4, 0x001C($sp)
	lbu     $t1, 0x0006($t0)
	lbu     $t2, 0x0003($t0)
	addu    $t3, $t1, $t2
	sb      $t3, 0x0001($t4)
	lui     $t5, %hi(p_script_pc)
	lw      $t5, %lo(p_script_pc)($t5)
	lw      $t7, 0x001C($sp)
	lbu     $t6, 0x0004($t5)
	sb      $t6, 0x0002($t7)
	lui     $t8, %hi(p_script_pc)
	lw      $t8, %lo(p_script_pc)($t8)
	lw      $t0, 0x001C($sp)
	lbu     $t9, 0x0005($t8)
	sb      $t9, 0x0003($t0)
	lw      $t1, 0x001C($sp)
	sw      $0, 0x0004($t1)
	lui     $t3, %hi(p_script_scene)
	lh      $t3, %lo(p_script_scene)($t3)
	lui     $t2, %hi(scene_table)
	lw      $t2, %lo(scene_table)($t2)
	sll     $t4, $t3, 4
	subu    $t4, $t4, $t3
	sll     $t4, $t4, 2
	addu    $t5, $t2, $t4
	lw      $t6, 0x0014($t5)
	lw      $t7, 0x001C($sp)
	sw      $t6, 0x0008($t7)
	lui     $t0, %hi(p_script_scene)
	lh      $t0, %lo(p_script_scene)($t0)
	lui     $t9, %hi(scene_table)
	lw      $t9, %lo(scene_table)($t9)
	sll     $t1, $t0, 4
	lw      $t8, 0x001C($sp)
	subu    $t1, $t1, $t0
	sll     $t1, $t1, 2
	addu    $t3, $t9, $t1
	sw      $t8, 0x0014($t3)
.L8037F760:
	lui     $t2, %hi(p_script_pc)
	lw      $t2, %lo(p_script_pc)($t2)
	lui     $at, %hi(p_script_pc)
	lbu     $t4, 0x0001($t2)
	addu    $t5, $t2, $t4
	sw      $t5, %lo(p_script_pc)($at)
	b       .L8037F780
	nop
.L8037F780:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

/* void p_cmd_connect(void) */
.globl p_cmd_connect
p_cmd_connect:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(p_script_scene)
	lh      $t6, %lo(p_script_scene)($t6)
	li      $at, -0x0001
	beq     $t6, $at, .L8037F8F0
	nop
	lui     $t8, %hi(p_script_scene)
	lh      $t8, %lo(p_script_scene)($t8)
	lui     $t7, %hi(scene_table)
	lw      $t7, %lo(scene_table)($t7)
	sll     $t9, $t8, 4
	subu    $t9, $t9, $t8
	sll     $t9, $t9, 2
	addu    $t0, $t7, $t9
	lw      $t1, 0x001C($t0)
	bnez    $t1, .L8037F858
	nop
	lui     $a0, %hi(p_script_arena)
	lw      $a0, %lo(p_script_arena)($a0)
	jal     arena_alloc
	li      $a1, 0x0020
	lui     $t3, %hi(p_script_scene)
	lh      $t3, %lo(p_script_scene)($t3)
	lui     $t2, %hi(scene_table)
	lw      $t2, %lo(scene_table)($t2)
	sll     $t4, $t3, 4
	subu    $t4, $t4, $t3
	sll     $t4, $t4, 2
	addu    $t5, $t2, $t4
	sw      $v0, 0x001C($t5)
	sw      $0, 0x001C($sp)
.L8037F810:
	lui     $t8, %hi(p_script_scene)
	lh      $t8, %lo(p_script_scene)($t8)
	lui     $t6, %hi(scene_table)
	lw      $t6, %lo(scene_table)($t6)
	sll     $t7, $t8, 4
	subu    $t7, $t7, $t8
	sll     $t7, $t7, 2
	lw      $t1, 0x001C($sp)
	addu    $t9, $t6, $t7
	lw      $t0, 0x001C($t9)
	sll     $t3, $t1, 3
	addu    $t2, $t0, $t3
	sb      $0, 0x0000($t2)
	lw      $t4, 0x001C($sp)
	addiu   $t5, $t4, 0x0001
	slti    $at, $t5, 0x0004
	bnez    $at, .L8037F810
	sw      $t5, 0x001C($sp)
.L8037F858:
	lui     $t6, %hi(p_script_scene)
	lh      $t6, %lo(p_script_scene)($t6)
	lui     $t8, %hi(scene_table)
	lui     $t0, %hi(p_script_pc)
	lw      $t0, %lo(p_script_pc)($t0)
	lw      $t8, %lo(scene_table)($t8)
	sll     $t7, $t6, 4
	subu    $t7, $t7, $t6
	sll     $t7, $t7, 2
	lbu     $t3, 0x0002($t0)
	addu    $t9, $t8, $t7
	lw      $t1, 0x001C($t9)
	sll     $t2, $t3, 3
	addu    $t4, $t2, $t1
	sw      $t4, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	li      $t5, 0x0001
	sb      $t5, 0x0000($t6)
	lui     $t8, %hi(p_script_pc)
	lw      $t8, %lo(p_script_pc)($t8)
	lw      $t9, 0x0018($sp)
	lbu     $t7, 0x0003($t8)
	sb      $t7, 0x0001($t9)
	lui     $t0, %hi(p_script_pc)
	lw      $t0, %lo(p_script_pc)($t0)
	lw      $t2, 0x0018($sp)
	lh      $t3, 0x0004($t0)
	sh      $t3, 0x0002($t2)
	lui     $t1, %hi(p_script_pc)
	lw      $t1, %lo(p_script_pc)($t1)
	lw      $t5, 0x0018($sp)
	lh      $t4, 0x0006($t1)
	sh      $t4, 0x0004($t5)
	lui     $t6, %hi(p_script_pc)
	lw      $t6, %lo(p_script_pc)($t6)
	lw      $t7, 0x0018($sp)
	lh      $t8, 0x0008($t6)
	sh      $t8, 0x0006($t7)
.L8037F8F0:
	lui     $t9, %hi(p_script_pc)
	lw      $t9, %lo(p_script_pc)($t9)
	lui     $at, %hi(p_script_pc)
	lbu     $t0, 0x0001($t9)
	addu    $t3, $t9, $t0
	sw      $t3, %lo(p_script_pc)($at)
	b       .L8037F910
	nop
.L8037F910:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

/* void p_cmd_env(void) */
.globl p_cmd_env
p_cmd_env:
	lui     $t6, %hi(p_script_scene)
	lh      $t6, %lo(p_script_scene)($t6)
	li      $at, -0x0001
	beq     $t6, $at, .L8037F96C
	nop
	lui     $t8, %hi(p_script_scene)
	lh      $t8, %lo(p_script_scene)($t8)
	lui     $t7, %hi(scene_table)
	lw      $t7, %lo(scene_table)($t7)
	lui     $t2, %hi(p_script_pc)
	sll     $t9, $t8, 4
	lw      $t2, %lo(p_script_pc)($t2)
	subu    $t9, $t9, $t8
	sll     $t9, $t9, 2
	addu    $t0, $t7, $t9
	lhu     $t1, 0x0002($t0)
	lh      $t3, 0x0002($t2)
	or      $t4, $t1, $t3
	sh      $t4, 0x0002($t0)
.L8037F96C:
	lui     $t5, %hi(p_script_pc)
	lw      $t5, %lo(p_script_pc)($t5)
	lui     $at, %hi(p_script_pc)
	lbu     $t6, 0x0001($t5)
	addu    $t8, $t5, $t6
	sw      $t8, %lo(p_script_pc)($at)
	jr      $ra
	nop
	jr      $ra
	nop

/* void p_cmd_bgport(void) */
.globl p_cmd_bgport
p_cmd_bgport:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(p_script_scene)
	lh      $t6, %lo(p_script_scene)($t6)
	li      $at, -0x0001
	beq     $t6, $at, .L8037FAE8
	nop
	lui     $t8, %hi(p_script_scene)
	lh      $t8, %lo(p_script_scene)($t8)
	lui     $t7, %hi(scene_table)
	lw      $t7, %lo(scene_table)($t7)
	sll     $t9, $t8, 4
	subu    $t9, $t9, $t8
	sll     $t9, $t9, 2
	addu    $t0, $t7, $t9
	lw      $t1, 0x0018($t0)
	bnez    $t1, .L8037FA5C
	nop
	lui     $a0, %hi(p_script_arena)
	lw      $a0, %lo(p_script_arena)($a0)
	jal     arena_alloc
	li      $a1, 0x00B4
	lui     $t3, %hi(p_script_scene)
	lh      $t3, %lo(p_script_scene)($t3)
	lui     $t2, %hi(scene_table)
	lw      $t2, %lo(scene_table)($t2)
	sll     $t4, $t3, 4
	subu    $t4, $t4, $t3
	sll     $t4, $t4, 2
	addu    $t5, $t2, $t4
	sw      $v0, 0x0018($t5)
	sw      $0, 0x001C($sp)
.L8037FA14:
	lui     $t8, %hi(p_script_scene)
	lh      $t8, %lo(p_script_scene)($t8)
	lui     $t6, %hi(scene_table)
	lw      $t6, %lo(scene_table)($t6)
	sll     $t7, $t8, 4
	subu    $t7, $t7, $t8
	sll     $t7, $t7, 2
	lw      $t1, 0x001C($sp)
	addu    $t9, $t6, $t7
	lw      $t0, 0x0018($t9)
	sll     $t3, $t1, 2
	addu    $t2, $t0, $t3
	sb      $0, 0x0000($t2)
	lw      $t4, 0x001C($sp)
	addiu   $t5, $t4, 0x0001
	slti    $at, $t5, 0x002D
	bnez    $at, .L8037FA14
	sw      $t5, 0x001C($sp)
.L8037FA5C:
	lui     $t6, %hi(p_script_scene)
	lh      $t6, %lo(p_script_scene)($t6)
	lui     $t8, %hi(scene_table)
	lui     $t0, %hi(p_script_pc)
	lw      $t0, %lo(p_script_pc)($t0)
	lw      $t8, %lo(scene_table)($t8)
	sll     $t7, $t6, 4
	subu    $t7, $t7, $t6
	sll     $t7, $t7, 2
	lbu     $t3, 0x0002($t0)
	addu    $t9, $t8, $t7
	lw      $t1, 0x0018($t9)
	sll     $t2, $t3, 2
	addu    $t4, $t2, $t1
	sw      $t4, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	li      $t5, 0x0001
	sb      $t5, 0x0000($t6)
	lui     $t8, %hi(p_script_pc)
	lw      $t8, %lo(p_script_pc)($t8)
	lw      $t3, 0x0018($sp)
	lbu     $t7, 0x0006($t8)
	lbu     $t9, 0x0003($t8)
	addu    $t0, $t7, $t9
	sb      $t0, 0x0001($t3)
	lui     $t2, %hi(p_script_pc)
	lw      $t2, %lo(p_script_pc)($t2)
	lw      $t4, 0x0018($sp)
	lbu     $t1, 0x0004($t2)
	sb      $t1, 0x0002($t4)
	lui     $t5, %hi(p_script_pc)
	lw      $t5, %lo(p_script_pc)($t5)
	lw      $t8, 0x0018($sp)
	lbu     $t6, 0x0005($t5)
	sb      $t6, 0x0003($t8)
.L8037FAE8:
	lui     $t7, %hi(p_script_pc)
	lw      $t7, %lo(p_script_pc)($t7)
	lui     $at, %hi(p_script_pc)
	lbu     $t9, 0x0001($t7)
	addu    $t0, $t7, $t9
	sw      $t0, %lo(p_script_pc)($at)
	b       .L8037FB08
	nop
.L8037FB08:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

/* void p_cmd_wind(void) */
.globl p_cmd_wind
p_cmd_wind:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(p_script_scene)
	lh      $t6, %lo(p_script_scene)($t6)
	li      $at, -0x0001
	beq     $t6, $at, .L8037FC04
	nop
	lui     $t8, %hi(p_script_scene)
	lh      $t8, %lo(p_script_scene)($t8)
	lui     $t7, %hi(scene_table)
	lw      $t7, %lo(scene_table)($t7)
	sll     $t9, $t8, 4
	subu    $t9, $t9, $t8
	sll     $t9, $t9, 2
	addu    $t0, $t7, $t9
	lw      $t1, 0x0028($t0)
	bnez    $t1, .L8037FBA0
	sw      $t1, 0x0024($sp)
	lui     $a0, %hi(p_script_arena)
	lw      $a0, %lo(p_script_arena)($a0)
	jal     arena_alloc
	li      $a1, 0x000A
	lui     $t3, %hi(p_script_scene)
	lh      $t3, %lo(p_script_scene)($t3)
	lui     $t2, %hi(scene_table)
	lw      $t2, %lo(scene_table)($t2)
	sll     $t4, $t3, 4
	subu    $t4, $t4, $t3
	sll     $t4, $t4, 2
	move    $s0, $v0
	addu    $t5, $t2, $t4
	sw      $s0, 0x0028($t5)
	sw      $s0, 0x0024($sp)
.L8037FBA0:
	lui     $t6, %hi(p_script_pc)
	lw      $t6, %lo(p_script_pc)($t6)
	lw      $t7, 0x0024($sp)
	lh      $t8, 0x0002($t6)
	sh      $t8, 0x0000($t7)
	lui     $t9, %hi(p_script_pc)
	lw      $t9, %lo(p_script_pc)($t9)
	lw      $t1, 0x0024($sp)
	lh      $t0, 0x0004($t9)
	sh      $t0, 0x0002($t1)
	lui     $t3, %hi(p_script_pc)
	lw      $t3, %lo(p_script_pc)($t3)
	lw      $t4, 0x0024($sp)
	lh      $t2, 0x0006($t3)
	sh      $t2, 0x0004($t4)
	lui     $t5, %hi(p_script_pc)
	lw      $t5, %lo(p_script_pc)($t5)
	lw      $t8, 0x0024($sp)
	lh      $t6, 0x0008($t5)
	sh      $t6, 0x0006($t8)
	lui     $t7, %hi(p_script_pc)
	lw      $t7, %lo(p_script_pc)($t7)
	lw      $t0, 0x0024($sp)
	lh      $t9, 0x000A($t7)
	sh      $t9, 0x0008($t0)
.L8037FC04:
	lui     $t1, %hi(p_script_pc)
	lw      $t1, %lo(p_script_pc)($t1)
	lui     $at, %hi(p_script_pc)
	lbu     $t3, 0x0001($t1)
	addu    $t2, $t1, $t3
	sw      $t2, %lo(p_script_pc)($at)
	b       .L8037FC24
	nop
.L8037FC24:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

/* void p_cmd_jet(void) */
.globl p_cmd_jet
p_cmd_jet:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(p_script_pc)
	lw      $t6, %lo(p_script_pc)($t6)
	lbu     $t7, 0x0002($t6)
	sw      $t7, 0x0020($sp)
	jal     save_flag_get
	nop
	andi    $t8, $v0, 0x00A0
	sltu    $t9, $0, $t8
	sw      $t9, 0x001C($sp)
	lui     $t0, %hi(p_script_pc)
	lw      $t0, %lo(p_script_pc)($t0)
	lbu     $t1, 0x0003($t0)
	beqz    $t1, .L8037FCE0
	nop
	li      $at, 0x0001
	bne     $t1, $at, .L8037FC90
	nop
	lw      $t2, 0x001C($sp)
	beqz    $t2, .L8037FCE0
	nop
.L8037FC90:
	lui     $t3, %hi(p_script_pc)
	lw      $t3, %lo(p_script_pc)($t3)
	li      $at, 0x0002
	lbu     $t4, 0x0003($t3)
	bne     $t4, $at, .L8037FCB4
	nop
	lw      $t5, 0x001C($sp)
	bnez    $t5, .L8037FCE0
	nop
.L8037FCB4:
	lui     $t6, %hi(p_script_pc)
	lw      $t6, %lo(p_script_pc)($t6)
	li      $at, 0x0003
	lbu     $t7, 0x0003($t6)
	bne     $t7, $at, .L8037FDB4
	nop
	lui     $t8, %hi(level_index)
	lh      $t8, %lo(level_index)($t8)
	slti    $at, $t8, 0x0002
	bnez    $at, .L8037FDB4
	nop
.L8037FCE0:
	lui     $t9, %hi(p_script_scene)
	lh      $t9, %lo(p_script_scene)($t9)
	li      $at, -0x0001
	beq     $t9, $at, .L8037FDB4
	nop
	lw      $t0, 0x0020($sp)
	slti    $at, $t0, 0x0002
	beqz    $at, .L8037FDB4
	nop
	lui     $t2, %hi(p_script_scene)
	lh      $t2, %lo(p_script_scene)($t2)
	lui     $t1, %hi(scene_table)
	lw      $t1, %lo(scene_table)($t1)
	lw      $t5, 0x0020($sp)
	sll     $t3, $t2, 4
	subu    $t3, $t3, $t2
	sll     $t3, $t3, 2
	addu    $t4, $t1, $t3
	sll     $t6, $t5, 2
	addu    $t7, $t4, $t6
	lw      $t8, 0x002C($t7)
	bnez    $t8, .L8037FD84
	sw      $t8, 0x0024($sp)
	lui     $a0, %hi(p_script_arena)
	lw      $a0, %lo(p_script_arena)($a0)
	jal     arena_alloc
	li      $a1, 0x0008
	sw      $v0, 0x0024($sp)
	lui     $t2, %hi(p_script_scene)
	lh      $t2, %lo(p_script_scene)($t2)
	lui     $t0, %hi(scene_table)
	lw      $t0, %lo(scene_table)($t0)
	lw      $t5, 0x0020($sp)
	sll     $t1, $t2, 4
	subu    $t1, $t1, $t2
	lw      $t9, 0x0024($sp)
	sll     $t1, $t1, 2
	addu    $t3, $t0, $t1
	sll     $t4, $t5, 2
	addu    $t6, $t3, $t4
	sw      $t9, 0x002C($t6)
.L8037FD84:
	lui     $t7, %hi(p_script_pc)
	lw      $t7, %lo(p_script_pc)($t7)
	lw      $a0, 0x0024($sp)
	lh      $a1, 0x0004($t7)
	lh      $a2, 0x0006($t7)
	jal     vecs_set
	lh      $a3, 0x0008($t7)
	lui     $t8, %hi(p_script_pc)
	lw      $t8, %lo(p_script_pc)($t8)
	lw      $t0, 0x0024($sp)
	lh      $t2, 0x000A($t8)
	sh      $t2, 0x0006($t0)
.L8037FDB4:
	lui     $t1, %hi(p_script_pc)
	lw      $t1, %lo(p_script_pc)($t1)
	lui     $at, %hi(p_script_pc)
	lbu     $t5, 0x0001($t1)
	addu    $t3, $t1, $t5
	sw      $t3, %lo(p_script_pc)($at)
	b       .L8037FDD4
	nop
.L8037FDD4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

/* void p_cmd_vi_black(void) */
.globl p_cmd_vi_black
p_cmd_vi_black:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(p_script_pc)
	lw      $t6, %lo(p_script_pc)($t6)
	jal     osViBlack
	lbu     $a0, 0x0002($t6)
	lui     $t7, %hi(p_script_pc)
	lw      $t7, %lo(p_script_pc)($t7)
	lui     $at, %hi(p_script_pc)
	lbu     $t8, 0x0001($t7)
	addu    $t9, $t7, $t8
	sw      $t9, %lo(p_script_pc)($at)
	b       .L8037FE1C
	nop
.L8037FE1C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void p_cmd_vi_gamma(void) */
.globl p_cmd_vi_gamma
p_cmd_vi_gamma:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(p_script_pc)
	lw      $t6, %lo(p_script_pc)($t6)
	lbu     $t7, 0x0002($t6)
	bnez    $t7, .L8037FE54
	nop
	b       .L8037FE58
	li      $s0, 0x0002
.L8037FE54:
	li      $s0, 0x0001
.L8037FE58:
	jal     osViSetSpecialFeatures
	move    $a0, $s0
	lui     $t8, %hi(p_script_pc)
	lw      $t8, %lo(p_script_pc)($t8)
	lui     $at, %hi(p_script_pc)
	lbu     $t9, 0x0001($t8)
	addu    $t0, $t8, $t9
	sw      $t0, %lo(p_script_pc)($at)
	b       .L8037FE80
	nop
.L8037FE80:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

/* void p_cmd_map(void) */
.globl p_cmd_map
p_cmd_map:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(p_script_scene)
	lh      $t6, %lo(p_script_scene)($t6)
	li      $at, -0x0001
	beq     $t6, $at, .L8037FEE4
	nop
	lui     $t7, %hi(p_script_pc)
	lw      $t7, %lo(p_script_pc)($t7)
	jal     segment_to_virtual
	lw      $a0, 0x0004($t7)
	lui     $t9, %hi(p_script_scene)
	lh      $t9, %lo(p_script_scene)($t9)
	lui     $t8, %hi(scene_table)
	lw      $t8, %lo(scene_table)($t8)
	sll     $t0, $t9, 4
	subu    $t0, $t0, $t9
	sll     $t0, $t0, 2
	addu    $t1, $t8, $t0
	sw      $v0, 0x0008($t1)
.L8037FEE4:
	lui     $t2, %hi(p_script_pc)
	lw      $t2, %lo(p_script_pc)($t2)
	lui     $at, %hi(p_script_pc)
	lbu     $t3, 0x0001($t2)
	addu    $t4, $t2, $t3
	sw      $t4, %lo(p_script_pc)($at)
	b       .L8037FF04
	nop
.L8037FF04:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void p_cmd_area(void) */
.globl p_cmd_area
p_cmd_area:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(p_script_scene)
	lh      $t6, %lo(p_script_scene)($t6)
	li      $at, -0x0001
	beq     $t6, $at, .L8037FF64
	nop
	lui     $t7, %hi(p_script_pc)
	lw      $t7, %lo(p_script_pc)($t7)
	jal     segment_to_virtual
	lw      $a0, 0x0004($t7)
	lui     $t9, %hi(p_script_scene)
	lh      $t9, %lo(p_script_scene)($t9)
	lui     $t8, %hi(scene_table)
	lw      $t8, %lo(scene_table)($t8)
	sll     $t0, $t9, 4
	subu    $t0, $t0, $t9
	sll     $t0, $t0, 2
	addu    $t1, $t8, $t0
	sw      $v0, 0x000C($t1)
.L8037FF64:
	lui     $t2, %hi(p_script_pc)
	lw      $t2, %lo(p_script_pc)($t2)
	lui     $at, %hi(p_script_pc)
	lbu     $t3, 0x0001($t2)
	addu    $t4, $t2, $t3
	sw      $t4, %lo(p_script_pc)($at)
	b       .L8037FF84
	nop
.L8037FF84:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void p_cmd_obj(void) */
.globl p_cmd_obj
p_cmd_obj:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(p_script_scene)
	lh      $t6, %lo(p_script_scene)($t6)
	li      $at, -0x0001
	beq     $t6, $at, .L8037FFE4
	nop
	lui     $t7, %hi(p_script_pc)
	lw      $t7, %lo(p_script_pc)($t7)
	jal     segment_to_virtual
	lw      $a0, 0x0004($t7)
	lui     $t9, %hi(p_script_scene)
	lh      $t9, %lo(p_script_scene)($t9)
	lui     $t8, %hi(scene_table)
	lw      $t8, %lo(scene_table)($t8)
	sll     $t0, $t9, 4
	subu    $t0, $t0, $t9
	sll     $t0, $t0, 2
	addu    $t1, $t8, $t0
	sw      $v0, 0x0010($t1)
.L8037FFE4:
	lui     $t2, %hi(p_script_pc)
	lw      $t2, %lo(p_script_pc)($t2)
	lui     $at, %hi(p_script_pc)
	lbu     $t3, 0x0001($t2)
	addu    $t4, $t2, $t3
	sw      $t4, %lo(p_script_pc)($at)
	b       .L80380004
	nop
.L80380004:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void p_cmd_scene_open(void) */
.globl p_cmd_scene_open
p_cmd_scene_open:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(p_script_pc)
	lw      $t6, %lo(p_script_pc)($t6)
	lbu     $t7, 0x0002($t6)
	sh      $t7, 0x001E($sp)
	lui     $t8, %hi(p_script_pc)
	lw      $t8, %lo(p_script_pc)($t8)
	addiu   $t9, $t8, 0x0004
	sw      $t9, 0x0018($sp)
	jal     Na_SE_clear
	nop
	jal     scene_open
	lh      $a0, 0x001E($sp)
	lui     $t0, %hi(p_script_pc)
	lw      $t0, %lo(p_script_pc)($t0)
	lui     $at, %hi(p_script_pc)
	lbu     $t1, 0x0001($t0)
	addu    $t2, $t0, $t1
	sw      $t2, %lo(p_script_pc)($at)
	b       .L8038006C
	nop
.L8038006C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

/* void p_cmd_scene_close(void) */
.globl p_cmd_scene_close
p_cmd_scene_close:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     scene_close
	nop
	lui     $t6, %hi(p_script_pc)
	lw      $t6, %lo(p_script_pc)($t6)
	lui     $at, %hi(p_script_pc)
	lbu     $t7, 0x0001($t6)
	addu    $t8, $t6, $t7
	sw      $t8, %lo(p_script_pc)($at)
	b       .L803800AC
	nop
.L803800AC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void p_cmd_player_open(void) */
.globl p_cmd_player_open
p_cmd_player_open:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(p_script_pc)
	lw      $t6, %lo(p_script_pc)($t6)
	lui     $t8, %hi(spawn_mario)
	lw      $t8, %lo(spawn_mario)($t8)
	lbu     $t7, 0x0002($t6)
	sb      $t7, 0x000C($t8)
	lui     $a1, %hi(p_script_pc)
	lw      $a1, %lo(p_script_pc)($a1)
	lui     $a0, %hi(spawn_mario)
	lw      $a0, %lo(spawn_mario)($a0)
	jal     vecs_cpy
	addiu   $a1, $a1, 0x0006
	lui     $t9, %hi(p_script_pc)
	lw      $t9, %lo(p_script_pc)($t9)
	li      $at, 0x00B4
	lui     $a0, %hi(spawn_mario)
	lh      $a2, 0x0004($t9)
	lw      $a0, %lo(spawn_mario)($a0)
	move    $a1, $0
	sll     $t0, $a2, 15
	move    $a2, $t0
	div     $0, $a2, $at
	mflo    $t1
	move    $a2, $t1
	move    $a3, $0
	jal     vecs_set
	addiu   $a0, $a0, 0x0006
	lui     $t2, %hi(p_script_pc)
	lw      $t2, %lo(p_script_pc)($t2)
	lui     $at, %hi(p_script_pc)
	lbu     $t3, 0x0001($t2)
	addu    $t4, $t2, $t3
	sw      $t4, %lo(p_script_pc)($at)
	b       .L80380150
	nop
.L80380150:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void p_cmd_player_close(void) */
.globl p_cmd_player_close
p_cmd_player_close:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     scene_player_close
	nop
	lui     $t6, %hi(p_script_pc)
	lw      $t6, %lo(p_script_pc)($t6)
	lui     $at, %hi(p_script_pc)
	lbu     $t7, 0x0001($t6)
	addu    $t8, $t6, $t7
	sw      $t8, %lo(p_script_pc)($at)
	b       .L80380190
	nop
.L80380190:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void p_cmd_scene_update(void) */
.globl p_cmd_scene_update
p_cmd_scene_update:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     scene_update
	nop
	lui     $t6, %hi(p_script_pc)
	lw      $t6, %lo(p_script_pc)($t6)
	lui     $at, %hi(p_script_pc)
	lbu     $t7, 0x0001($t6)
	addu    $t8, $t6, $t7
	sw      $t8, %lo(p_script_pc)($at)
	b       .L803801D0
	nop
.L803801D0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void p_cmd_wipe(void) */
.globl p_cmd_wipe
p_cmd_wipe:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	lui     $t6, %hi(scene)
	lw      $t6, %lo(scene)($t6)
	beqz    $t6, .L8038021C
	nop
	lui     $t7, %hi(p_script_pc)
	lw      $t7, %lo(p_script_pc)($t7)
	lbu     $t8, 0x0006($t7)
	lbu     $a0, 0x0002($t7)
	lbu     $a1, 0x0003($t7)
	lbu     $a2, 0x0004($t7)
	lbu     $a3, 0x0005($t7)
	jal     scene_wipe
	sw      $t8, 0x0010($sp)
.L8038021C:
	lui     $t9, %hi(p_script_pc)
	lw      $t9, %lo(p_script_pc)($t9)
	lui     $at, %hi(p_script_pc)
	lbu     $t0, 0x0001($t9)
	addu    $t1, $t9, $t0
	sw      $t1, %lo(p_script_pc)($at)
	b       .L8038023C
	nop
.L8038023C:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

/* void p_cmd_32(void) */
.globl p_cmd_32
p_cmd_32:
	lui     $t6, %hi(p_script_pc)
	lw      $t6, %lo(p_script_pc)($t6)
	lui     $at, %hi(p_script_pc)
	lbu     $t7, 0x0001($t6)
	addu    $t8, $t6, $t7
	sw      $t8, %lo(p_script_pc)($at)
	jr      $ra
	nop
	jr      $ra
	nop

/* void p_cmd_msg(void) */
.globl p_cmd_msg
p_cmd_msg:
	lui     $t6, %hi(p_script_scene)
	lh      $t6, %lo(p_script_scene)($t6)
	li      $at, -0x0001
	beq     $t6, $at, .L803802D8
	nop
	lui     $t7, %hi(p_script_pc)
	lw      $t7, %lo(p_script_pc)($t7)
	lbu     $t8, 0x0002($t7)
	slti    $at, $t8, 0x0002
	beqz    $at, .L803802D8
	nop
	lui     $t2, %hi(p_script_scene)
	lh      $t2, %lo(p_script_scene)($t2)
	lui     $t9, %hi(p_script_pc)
	lw      $t9, %lo(p_script_pc)($t9)
	lui     $t1, %hi(scene_table)
	lw      $t1, %lo(scene_table)($t1)
	sll     $t3, $t2, 4
	lbu     $t5, 0x0002($t9)
	subu    $t3, $t3, $t2
	lbu     $t0, 0x0003($t9)
	sll     $t3, $t3, 2
	addu    $t4, $t1, $t3
	addu    $t6, $t4, $t5
	sb      $t0, 0x0034($t6)
.L803802D8:
	lui     $t7, %hi(p_script_pc)
	lw      $t7, %lo(p_script_pc)($t7)
	lui     $at, %hi(p_script_pc)
	lbu     $t8, 0x0001($t7)
	addu    $t2, $t7, $t8
	sw      $t2, %lo(p_script_pc)($at)
	jr      $ra
	nop
	jr      $ra
	nop

/* void p_cmd_bgm(void) */
.globl p_cmd_bgm
p_cmd_bgm:
	lui     $t6, %hi(p_script_scene)
	lh      $t6, %lo(p_script_scene)($t6)
	li      $at, -0x0001
	beq     $t6, $at, .L80380374
	nop
	lui     $t0, %hi(p_script_scene)
	lh      $t0, %lo(p_script_scene)($t0)
	lui     $t7, %hi(p_script_pc)
	lw      $t7, %lo(p_script_pc)($t7)
	lui     $t9, %hi(scene_table)
	lw      $t9, %lo(scene_table)($t9)
	sll     $t1, $t0, 4
	lh      $t8, 0x0002($t7)
	subu    $t1, $t1, $t0
	sll     $t1, $t1, 2
	addu    $t2, $t9, $t1
	sh      $t8, 0x0036($t2)
	lui     $t6, %hi(p_script_scene)
	lh      $t6, %lo(p_script_scene)($t6)
	lui     $t3, %hi(p_script_pc)
	lw      $t3, %lo(p_script_pc)($t3)
	lui     $t5, %hi(scene_table)
	lw      $t5, %lo(scene_table)($t5)
	sll     $t7, $t6, 4
	lh      $t4, 0x0004($t3)
	subu    $t7, $t7, $t6
	sll     $t7, $t7, 2
	addu    $t0, $t5, $t7
	sh      $t4, 0x0038($t0)
.L80380374:
	lui     $t9, %hi(p_script_pc)
	lw      $t9, %lo(p_script_pc)($t9)
	lui     $at, %hi(p_script_pc)
	lbu     $t1, 0x0001($t9)
	addu    $t8, $t9, $t1
	sw      $t8, %lo(p_script_pc)($at)
	jr      $ra
	nop
	jr      $ra
	nop

/* void p_cmd_bgm_play(void) */
.globl p_cmd_bgm_play
p_cmd_bgm_play:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(p_script_pc)
	lw      $t6, %lo(p_script_pc)($t6)
	move    $a0, $0
	move    $a2, $0
	jal     bgm_play
	lh      $a1, 0x0002($t6)
	lui     $t7, %hi(p_script_pc)
	lw      $t7, %lo(p_script_pc)($t7)
	lui     $at, %hi(p_script_pc)
	lbu     $t8, 0x0001($t7)
	addu    $t9, $t7, $t8
	sw      $t9, %lo(p_script_pc)($at)
	b       .L803803DC
	nop
.L803803DC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void p_cmd_bgm_stop(void) */
.globl p_cmd_bgm_stop
p_cmd_bgm_stop:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(p_script_pc)
	lw      $t6, %lo(p_script_pc)($t6)
	jal     aud_fadeout
	lh      $a0, 0x0002($t6)
	lui     $t7, %hi(p_script_pc)
	lw      $t7, %lo(p_script_pc)($t7)
	lui     $at, %hi(p_script_pc)
	lbu     $t8, 0x0001($t7)
	addu    $t9, $t7, $t8
	sw      $t9, %lo(p_script_pc)($at)
	b       .L80380424
	nop
.L80380424:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void p_cmd_var(void) */
.globl p_cmd_var
p_cmd_var:
	lui     $t6, %hi(p_script_pc)
	lw      $t6, %lo(p_script_pc)($t6)
	lbu     $t7, 0x0002($t6)
	bnez    $t7, .L803804F8
	nop
	lui     $t8, %hi(p_script_pc)
	lw      $t8, %lo(p_script_pc)($t8)
	lbu     $t9, 0x0003($t8)
	sltiu   $at, $t9, 0x0005
	beqz    $at, .L803804F0
	nop
	sll     $t9, $t9, 2
	lui     $at, %hi(p_script_8038BB10)
	addu    $at, $at, $t9
	lw      $t9, %lo(p_script_8038BB10)($at)
	jr      $t9
	nop
.globl L80380478
L80380478:
	lui     $t0, %hi(p_script_code)
	lw      $t0, %lo(p_script_code)($t0)
	lui     $at, %hi(save_index)
	sh      $t0, %lo(save_index)($at)
	b       .L803804F0
	nop
.globl L80380490
L80380490:
	lui     $t1, %hi(p_script_code)
	lw      $t1, %lo(p_script_code)($t1)
	lui     $at, %hi(course_index)
	sh      $t1, %lo(course_index)($at)
	b       .L803804F0
	nop
.globl L803804A8
L803804A8:
	lui     $t2, %hi(p_script_code)
	lw      $t2, %lo(p_script_code)($t2)
	lui     $at, %hi(level_index)
	sh      $t2, %lo(level_index)($at)
	b       .L803804F0
	nop
.globl L803804C0
L803804C0:
	lui     $t3, %hi(p_script_code)
	lw      $t3, %lo(p_script_code)($t3)
	lui     $at, %hi(stage_index)
	sh      $t3, %lo(stage_index)($at)
	b       .L803804F0
	nop
.globl L803804D8
L803804D8:
	lui     $t4, %hi(p_script_code)
	lw      $t4, %lo(p_script_code)($t4)
	lui     $at, %hi(scene_index)
	sh      $t4, %lo(scene_index)($at)
	b       .L803804F0
	nop
.L803804F0:
	b       .L803805A0
	nop
.L803804F8:
	lui     $t5, %hi(p_script_pc)
	lw      $t5, %lo(p_script_pc)($t5)
	lbu     $t6, 0x0003($t5)
	sltiu   $at, $t6, 0x0005
	beqz    $at, .L803805A0
	nop
	sll     $t6, $t6, 2
	lui     $at, %hi(p_script_8038BB24)
	addu    $at, $at, $t6
	lw      $t6, %lo(p_script_8038BB24)($at)
	jr      $t6
	nop
.globl L80380528
L80380528:
	lui     $t7, %hi(save_index)
	lh      $t7, %lo(save_index)($t7)
	lui     $at, %hi(p_script_code)
	sw      $t7, %lo(p_script_code)($at)
	b       .L803805A0
	nop
.globl L80380540
L80380540:
	lui     $t8, %hi(course_index)
	lh      $t8, %lo(course_index)($t8)
	lui     $at, %hi(p_script_code)
	sw      $t8, %lo(p_script_code)($at)
	b       .L803805A0
	nop
.globl L80380558
L80380558:
	lui     $t9, %hi(level_index)
	lh      $t9, %lo(level_index)($t9)
	lui     $at, %hi(p_script_code)
	sw      $t9, %lo(p_script_code)($at)
	b       .L803805A0
	nop
.globl L80380570
L80380570:
	lui     $t0, %hi(stage_index)
	lh      $t0, %lo(stage_index)($t0)
	lui     $at, %hi(p_script_code)
	sw      $t0, %lo(p_script_code)($at)
	b       .L803805A0
	nop
.globl L80380588
L80380588:
	lui     $t1, %hi(scene_index)
	lh      $t1, %lo(scene_index)($t1)
	lui     $at, %hi(p_script_code)
	sw      $t1, %lo(p_script_code)($at)
	b       .L803805A0
	nop
.L803805A0:
	lui     $t2, %hi(p_script_pc)
	lw      $t2, %lo(p_script_pc)($t2)
	lui     $at, %hi(p_script_pc)
	lbu     $t3, 0x0001($t2)
	addu    $t4, $t2, $t3
	sw      $t4, %lo(p_script_pc)($at)
	jr      $ra
	nop
	jr      $ra
	nop

/* P_SCRIPT *p_script_main(P_SCRIPT *pc) */
.globl p_script_main
p_script_main:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	li      $t6, 0x0001
	lui     $at, %hi(p_script_state)
	sh      $t6, %lo(p_script_state)($at)
	lw      $t7, 0x0018($sp)
	lui     $at, %hi(p_script_pc)
	sw      $t7, %lo(p_script_pc)($at)
	lui     $t8, %hi(p_script_state)
	lh      $t8, %lo(p_script_state)($t8)
	li      $at, 0x0001
	bne     $t8, $at, .L80380638
	nop
.L80380600:
	lui     $t9, %hi(p_script_pc)
	lw      $t9, %lo(p_script_pc)($t9)
	lbu     $t0, 0x0000($t9)
	lui     $t9, %hi(p_script_table)
	sll     $t1, $t0, 2
	addu    $t9, $t9, $t1
	lw      $t9, %lo(p_script_table)($t9)
	jalr    $t9
	nop
	lui     $t2, %hi(p_script_state)
	lh      $t2, %lo(p_script_state)($t2)
	li      $at, 0x0001
	beq     $t2, $at, .L80380600
	nop
.L80380638:
	jal     time_gfxcpu
	li      $a0, 0x0001
	jal     gfx_start
	nop
	jal     scene_draw
	nop
	jal     gfx_end
	nop
	jal     gfx_alloc
	move    $a0, $0
	lui     $v0, %hi(p_script_pc)
	b       .L80380674
	lw      $v0, %lo(p_script_pc)($v0)
	b       .L80380674
	nop
.L80380674:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop
