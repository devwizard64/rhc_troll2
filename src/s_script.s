.include "sm64/asm.inc"

.set noreorder
.set noat

.align 4

/* void s_cmd_script(void) */
.globl s_cmd_script
s_cmd_script:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t8, %hi(s_script_8038BD7A)
	lh      $t8, %lo(s_script_8038BD7A)($t8)
	lui     $t6, %hi(s_script_8038BD80)
	lw      $t6, %lo(s_script_8038BD80)($t6)
	lui     $t0, %hi(s_script_8038BD7A)
	lh      $t0, %lo(s_script_8038BD7A)($t0)
	lui     $at, %hi(s_script_8038BCB8)
	sll     $t9, $t8, 2
	addu    $at, $at, $t9
	addiu   $t7, $t6, 0x0008
	sw      $t7, %lo(s_script_8038BCB8)($at)
	lui     $at, %hi(s_script_8038BD7A)
	addiu   $t1, $t0, 0x0001
	sh      $t1, %lo(s_script_8038BD7A)($at)
	lui     $t2, %hi(s_script_8038BD78)
	lui     $t6, %hi(s_script_8038BD7A)
	lh      $t6, %lo(s_script_8038BD7A)($t6)
	lh      $t2, %lo(s_script_8038BD78)($t2)
	lui     $t4, %hi(s_script_8038BD7E)
	lh      $t4, %lo(s_script_8038BD7E)($t4)
	lui     $t7, %hi(s_script_8038BD7A)
	lh      $t7, %lo(s_script_8038BD7A)($t7)
	lui     $at, %hi(s_script_8038BCB8)
	sll     $t8, $t6, 2
	sll     $t3, $t2, 16
	addu    $at, $at, $t8
	addu    $t5, $t3, $t4
	sw      $t5, %lo(s_script_8038BCB8)($at)
	lui     $at, %hi(s_script_8038BD7A)
	addiu   $t9, $t7, 0x0001
	sh      $t9, %lo(s_script_8038BD7A)($at)
	lui     $t0, %hi(s_script_8038BD7A)
	lh      $t0, %lo(s_script_8038BD7A)($t0)
	lui     $at, %hi(s_script_8038BD7E)
	sh      $t0, %lo(s_script_8038BD7E)($at)
	lui     $t1, %hi(s_script_8038BD80)
	lw      $t1, %lo(s_script_8038BD80)($t1)
	jal     segment_to_virtual
	lw      $a0, 0x0004($t1)
	lui     $at, %hi(s_script_8038BD80)
	sw      $v0, %lo(s_script_8038BD80)($at)
	b       .L8037CE14
	nop
.L8037CE14:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void s_cmd_end(void) */
.globl s_cmd_end
s_cmd_end:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(s_script_8038BD7E)
	lh      $t6, %lo(s_script_8038BD7E)($t6)
	lui     $at, %hi(s_script_8038BD7A)
	sh      $t6, %lo(s_script_8038BD7A)($at)
	lui     $a0, %hi(s_script_8038BD7A)
	lh      $a0, %lo(s_script_8038BD7A)($a0)
	lui     $t0, %hi(s_script_8038BCB8)
	lui     $at, %hi(s_script_8038BD7A)
	addiu   $a0, $a0, -0x0001
	sll     $t7, $a0, 16
	move    $a0, $t7
	sra     $t8, $a0, 16
	move    $a0, $t8
	sll     $t9, $a0, 2
	addu    $t0, $t0, $t9
	lw      $t0, %lo(s_script_8038BCB8)($t0)
	sh      $a0, %lo(s_script_8038BD7A)($at)
	lui     $at, %hi(s_script_8038BD7E)
	andi    $t1, $t0, 0xFFFF
	sh      $t1, %lo(s_script_8038BD7E)($at)
	lui     $t2, %hi(s_script_8038BD7A)
	lh      $t2, %lo(s_script_8038BD7A)($t2)
	lui     $t4, %hi(s_script_8038BCB8)
	lui     $at, %hi(s_script_8038BD78)
	sll     $t3, $t2, 2
	addu    $t4, $t4, $t3
	lw      $t4, %lo(s_script_8038BCB8)($t4)
	srl     $t5, $t4, 16
	sh      $t5, %lo(s_script_8038BD78)($at)
	lui     $a0, %hi(s_script_8038BD7A)
	lh      $a0, %lo(s_script_8038BD7A)($a0)
	lui     $t9, %hi(s_script_8038BCB8)
	lui     $at, %hi(s_script_8038BD7A)
	addiu   $a0, $a0, -0x0001
	sll     $t6, $a0, 16
	move    $a0, $t6
	sra     $t7, $a0, 16
	move    $a0, $t7
	sll     $t8, $a0, 2
	addu    $t9, $t9, $t8
	lw      $t9, %lo(s_script_8038BCB8)($t9)
	sh      $a0, %lo(s_script_8038BD7A)($at)
	lui     $at, %hi(s_script_8038BD80)
	sw      $t9, %lo(s_script_8038BD80)($at)
	b       .L8037CEE0
	nop
.L8037CEE0:
	jr      $ra
	addiu   $sp, $sp, 0x0008

/* void s_cmd_jump(void) */
.globl s_cmd_jump
s_cmd_jump:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(s_script_8038BD80)
	lw      $t6, %lo(s_script_8038BD80)($t6)
	li      $at, 0x0001
	lbu     $t7, 0x0001($t6)
	bne     $t7, $at, .L8037CF40
	nop
	lui     $t0, %hi(s_script_8038BD7A)
	lh      $t0, %lo(s_script_8038BD7A)($t0)
	lui     $t8, %hi(s_script_8038BD80)
	lw      $t8, %lo(s_script_8038BD80)($t8)
	lui     $t2, %hi(s_script_8038BD7A)
	lh      $t2, %lo(s_script_8038BD7A)($t2)
	lui     $at, %hi(s_script_8038BCB8)
	sll     $t1, $t0, 2
	addu    $at, $at, $t1
	addiu   $t9, $t8, 0x0008
	sw      $t9, %lo(s_script_8038BCB8)($at)
	lui     $at, %hi(s_script_8038BD7A)
	addiu   $t3, $t2, 0x0001
	sh      $t3, %lo(s_script_8038BD7A)($at)
.L8037CF40:
	lui     $t4, %hi(s_script_8038BD80)
	lw      $t4, %lo(s_script_8038BD80)($t4)
	jal     segment_to_virtual
	lw      $a0, 0x0004($t4)
	lui     $at, %hi(s_script_8038BD80)
	sw      $v0, %lo(s_script_8038BD80)($at)
	b       .L8037CF60
	nop
.L8037CF60:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

/* void s_cmd_return(void) */
.globl s_cmd_return
s_cmd_return:
	addiu   $sp, $sp, -0x0008
	lui     $a0, %hi(s_script_8038BD7A)
	lh      $a0, %lo(s_script_8038BD7A)($a0)
	lui     $t9, %hi(s_script_8038BCB8)
	lui     $at, %hi(s_script_8038BD7A)
	addiu   $a0, $a0, -0x0001
	sll     $t6, $a0, 16
	move    $a0, $t6
	sra     $t7, $a0, 16
	move    $a0, $t7
	sll     $t8, $a0, 2
	addu    $t9, $t9, $t8
	lw      $t9, %lo(s_script_8038BCB8)($t9)
	sh      $a0, %lo(s_script_8038BD7A)($at)
	lui     $at, %hi(s_script_8038BD80)
	sw      $t9, %lo(s_script_8038BD80)($at)
	b       .L8037CFB8
	nop
.L8037CFB8:
	jr      $ra
	addiu   $sp, $sp, 0x0008

/* void s_cmd_push(void) */
.globl s_cmd_push
s_cmd_push:
	lui     $t6, %hi(s_script_8038BD78)
	lh      $t6, %lo(s_script_8038BD78)($t6)
	la.u    $t8, s_script_8038BCF8
	la.l    $t8, s_script_8038BCF8
	sll     $t7, $t6, 2
	addu    $t9, $t7, $t8
	lw      $t0, 0x0000($t9)
	sw      $t0, 0x0004($t9)
	lui     $t1, %hi(s_script_8038BD78)
	lh      $t1, %lo(s_script_8038BD78)($t1)
	lui     $at, %hi(s_script_8038BD78)
	addiu   $t2, $t1, 0x0001
	sh      $t2, %lo(s_script_8038BD78)($at)
	lui     $t3, %hi(s_script_8038BD80)
	lw      $t3, %lo(s_script_8038BD80)($t3)
	lui     $at, %hi(s_script_8038BD80)
	addiu   $t4, $t3, 0x0004
	sw      $t4, %lo(s_script_8038BD80)($at)
	jr      $ra
	nop
	jr      $ra
	nop

/* void s_cmd_pull(void) */
.globl s_cmd_pull
s_cmd_pull:
	lui     $t6, %hi(s_script_8038BD78)
	lh      $t6, %lo(s_script_8038BD78)($t6)
	lui     $at, %hi(s_script_8038BD78)
	addiu   $t7, $t6, -0x0001
	sh      $t7, %lo(s_script_8038BD78)($at)
	lui     $t8, %hi(s_script_8038BD80)
	lw      $t8, %lo(s_script_8038BD80)($t8)
	lui     $at, %hi(s_script_8038BD80)
	addiu   $t9, $t8, 0x0004
	sw      $t9, %lo(s_script_8038BD80)($at)
	jr      $ra
	nop
	jr      $ra
	nop

/* void s_cmd_store(void) */
.globl s_cmd_store
s_cmd_store:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(s_script_8038BD80)
	lw      $t6, %lo(s_script_8038BD80)($t6)
	lh      $t7, 0x0002($t6)
	sh      $t7, 0x0006($sp)
	lui     $t9, %hi(s_script_8038BCB0)
	lhu     $t9, %lo(s_script_8038BCB0)($t9)
	lhu     $t8, 0x0006($sp)
	slt     $at, $t8, $t9
	beqz    $at, .L8037D0AC
	nop
	lui     $t0, %hi(s_script_8038BD78)
	lh      $t0, %lo(s_script_8038BD78)($t0)
	lhu     $t4, 0x0006($sp)
	lui     $t2, %hi(s_script_8038BCF8)
	lui     $t3, %hi(s_script_8038BCAC)
	sll     $t1, $t0, 2
	lw      $t3, %lo(s_script_8038BCAC)($t3)
	addu    $t2, $t2, $t1
	lw      $t2, %lo(s_script_8038BCF8)($t2)
	sll     $t5, $t4, 2
	addu    $t6, $t3, $t5
	sw      $t2, 0x0000($t6)
.L8037D0AC:
	lui     $t7, %hi(s_script_8038BD80)
	lw      $t7, %lo(s_script_8038BD80)($t7)
	lui     $at, %hi(s_script_8038BD80)
	addiu   $t8, $t7, 0x0004
	sw      $t8, %lo(s_script_8038BD80)($at)
	b       .L8037D0C8
	nop
.L8037D0C8:
	jr      $ra
	addiu   $sp, $sp, 0x0008

/* void s_cmd_flag(void) */
.globl s_cmd_flag
s_cmd_flag:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(s_script_8038BD80)
	lw      $t6, %lo(s_script_8038BD80)($t6)
	lbu     $t7, 0x0001($t6)
	sh      $t7, 0x0006($sp)
	lui     $t8, %hi(s_script_8038BD80)
	lw      $t8, %lo(s_script_8038BD80)($t8)
	lh      $t9, 0x0002($t8)
	sh      $t9, 0x0004($sp)
	lhu     $a0, 0x0006($sp)
	beqz    $a0, .L8037D120
	nop
	li      $at, 0x0001
	beq     $a0, $at, .L8037D148
	nop
	li      $at, 0x0002
	beq     $a0, $at, .L8037D178
	nop
	b       .L8037D1AC
	nop
.L8037D120:
	lui     $t1, %hi(s_script_8038BD78)
	lh      $t1, %lo(s_script_8038BD78)($t1)
	lui     $t3, %hi(s_script_8038BCF8)
	lhu     $t0, 0x0004($sp)
	sll     $t2, $t1, 2
	addu    $t3, $t3, $t2
	lw      $t3, %lo(s_script_8038BCF8)($t3)
	sh      $t0, 0x0002($t3)
	b       .L8037D1AC
	nop
.L8037D148:
	lui     $t4, %hi(s_script_8038BD78)
	lh      $t4, %lo(s_script_8038BD78)($t4)
	lui     $t6, %hi(s_script_8038BCF8)
	lhu     $t8, 0x0004($sp)
	sll     $t5, $t4, 2
	addu    $t6, $t6, $t5
	lw      $t6, %lo(s_script_8038BCF8)($t6)
	lh      $t7, 0x0002($t6)
	or      $t9, $t7, $t8
	sh      $t9, 0x0002($t6)
	b       .L8037D1AC
	nop
.L8037D178:
	lui     $t1, %hi(s_script_8038BD78)
	lh      $t1, %lo(s_script_8038BD78)($t1)
	lui     $t0, %hi(s_script_8038BCF8)
	lhu     $t4, 0x0004($sp)
	sll     $t2, $t1, 2
	addu    $t0, $t0, $t2
	lw      $t0, %lo(s_script_8038BCF8)($t0)
	nor     $t5, $t4, $0
	lh      $t3, 0x0002($t0)
	and     $t7, $t3, $t5
	sh      $t7, 0x0002($t0)
	b       .L8037D1AC
	nop
.L8037D1AC:
	lui     $t8, %hi(s_script_8038BD80)
	lw      $t8, %lo(s_script_8038BD80)($t8)
	lui     $at, %hi(s_script_8038BD80)
	addiu   $t9, $t8, 0x0004
	sw      $t9, %lo(s_script_8038BD80)($at)
	b       .L8037D1C8
	nop
.L8037D1C8:
	jr      $ra
	addiu   $sp, $sp, 0x0008

/* void s_cmd_scene(void) */
.globl s_cmd_scene
s_cmd_scene:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x0024($sp)
	lui     $t6, %hi(s_script_8038BD80)
	lw      $t6, %lo(s_script_8038BD80)($t6)
	lh      $t7, 0x0004($t6)
	sh      $t7, 0x002E($sp)
	lui     $t8, %hi(s_script_8038BD80)
	lw      $t8, %lo(s_script_8038BD80)($t8)
	lh      $t9, 0x0006($t8)
	sh      $t9, 0x002C($sp)
	lui     $t0, %hi(s_script_8038BD80)
	lw      $t0, %lo(s_script_8038BD80)($t0)
	lh      $t1, 0x0008($t0)
	sh      $t1, 0x002A($sp)
	lui     $t2, %hi(s_script_8038BD80)
	lw      $t2, %lo(s_script_8038BD80)($t2)
	lh      $t3, 0x000A($t2)
	sh      $t3, 0x0028($sp)
	lui     $t4, %hi(s_script_8038BD80)
	lw      $t4, %lo(s_script_8038BD80)($t4)
	lui     $at, %hi(s_script_8038BCB0)
	lh      $t5, 0x0002($t4)
	addiu   $t6, $t5, 0x0002
	sh      $t6, %lo(s_script_8038BCB0)($at)
	lh      $t7, 0x002C($sp)
	lh      $t8, 0x002A($sp)
	lh      $t9, 0x0028($sp)
	lui     $a0, %hi(s_script_arena)
	lw      $a0, %lo(s_script_arena)($a0)
	move    $a1, $0
	move    $a2, $0
	lh      $a3, 0x002E($sp)
	sw      $t7, 0x0010($sp)
	sw      $t8, 0x0014($sp)
	jal     shape_8037B24C
	sw      $t9, 0x0018($sp)
	sw      $v0, 0x0030($sp)
	lui     $a1, %hi(s_script_8038BCB0)
	lhu     $a1, %lo(s_script_8038BCB0)($a1)
	lui     $a0, %hi(s_script_arena)
	lw      $a0, %lo(s_script_arena)($a0)
	sll     $t0, $a1, 2
	jal     arena_alloc
	move    $a1, $t0
	lui     $at, %hi(s_script_8038BCAC)
	sw      $v0, %lo(s_script_8038BCAC)($at)
	lui     $t1, %hi(s_script_8038BCAC)
	lw      $t1, %lo(s_script_8038BCAC)($t1)
	lw      $t2, 0x0030($sp)
	sw      $t1, 0x0020($t2)
	lui     $t3, %hi(s_script_8038BCB0)
	lhu     $t3, %lo(s_script_8038BCB0)($t3)
	lw      $t4, 0x0030($sp)
	sh      $t3, 0x001E($t4)
	lui     $t5, %hi(s_script_8038BCB0)
	lhu     $t5, %lo(s_script_8038BCB0)($t5)
	sw      $0, 0x0034($sp)
	blez    $t5, .L8037D2F4
	nop
.L8037D2BC:
	lw      $t7, 0x0034($sp)
	lui     $t6, %hi(s_script_8038BCAC)
	lw      $t6, %lo(s_script_8038BCAC)($t6)
	sll     $t8, $t7, 2
	addu    $t9, $t6, $t8
	sw      $0, 0x0000($t9)
	lw      $t0, 0x0034($sp)
	lui     $t2, %hi(s_script_8038BCB0)
	lhu     $t2, %lo(s_script_8038BCB0)($t2)
	addiu   $t1, $t0, 0x0001
	sw      $t1, 0x0034($sp)
	slt     $at, $t1, $t2
	bnez    $at, .L8037D2BC
	nop
.L8037D2F4:
	jal     shape_8037CC74
	lw      $a0, 0x0030($sp)
	lui     $t3, %hi(s_script_8038BD80)
	lw      $t3, %lo(s_script_8038BD80)($t3)
	lui     $at, %hi(s_script_8038BD80)
	addiu   $t4, $t3, 0x000C
	sw      $t4, %lo(s_script_8038BD80)($at)
	b       .L8037D318
	nop
.L8037D318:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

/* void s_cmd_ortho(void) */
.globl s_cmd_ortho
s_cmd_ortho:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(s_script_8038BD80)
	lw      $t6, %lo(s_script_8038BD80)($t6)
	li      $at, 0x42C80000
	mtc1    $at, $f8
	lh      $t7, 0x0002($t6)
	mtc1    $t7, $f4
	nop
	cvt.s.w $f6, $f4
	div.s   $f10, $f6, $f8
	swc1    $f10, 0x0018($sp)
	lui     $a0, %hi(s_script_arena)
	lw      $a0, %lo(s_script_arena)($a0)
	move    $a1, $0
	jal     shape_8037B30C
	lw      $a2, 0x0018($sp)
	sw      $v0, 0x001C($sp)
	jal     shape_8037CC74
	lw      $a0, 0x001C($sp)
	lui     $t8, %hi(s_script_8038BD80)
	lw      $t8, %lo(s_script_8038BD80)($t8)
	lui     $at, %hi(s_script_8038BD80)
	addiu   $t9, $t8, 0x0004
	sw      $t9, %lo(s_script_8038BD80)($at)
	b       .L8037D394
	nop
.L8037D394:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

/* void s_cmd_persp(void) */
.globl s_cmd_persp
s_cmd_persp:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x0024($sp)
	sw      $0, 0x0030($sp)
	lui     $t6, %hi(s_script_8038BD80)
	lw      $t6, %lo(s_script_8038BD80)($t6)
	lh      $t7, 0x0002($t6)
	sh      $t7, 0x002E($sp)
	lui     $t8, %hi(s_script_8038BD80)
	lw      $t8, %lo(s_script_8038BD80)($t8)
	lh      $t9, 0x0004($t8)
	sh      $t9, 0x002C($sp)
	lui     $t0, %hi(s_script_8038BD80)
	lw      $t0, %lo(s_script_8038BD80)($t0)
	lh      $t1, 0x0006($t0)
	sh      $t1, 0x002A($sp)
	lui     $t2, %hi(s_script_8038BD80)
	lw      $t2, %lo(s_script_8038BD80)($t2)
	lbu     $t3, 0x0001($t2)
	beqz    $t3, .L8037D418
	nop
	lui     $t4, %hi(s_script_8038BD80)
	lw      $t4, %lo(s_script_8038BD80)($t4)
	lw      $t5, 0x0008($t4)
	sw      $t5, 0x0030($sp)
	lui     $t6, %hi(s_script_8038BD80)
	lw      $t6, %lo(s_script_8038BD80)($t6)
	lui     $at, %hi(s_script_8038BD80)
	addiu   $t7, $t6, 0x0004
	sw      $t7, %lo(s_script_8038BD80)($at)
.L8037D418:
	lh      $t8, 0x002E($sp)
	lh      $t9, 0x002A($sp)
	lw      $t0, 0x0030($sp)
	mtc1    $t8, $f4
	lui     $a0, %hi(s_script_arena)
	lw      $a0, %lo(s_script_arena)($a0)
	cvt.s.w $f4, $f4
	move    $a1, $0
	lh      $a3, 0x002C($sp)
	sw      $0, 0x0018($sp)
	sw      $t9, 0x0010($sp)
	sw      $t0, 0x0014($sp)
	mfc1    $a2, $f4
	jal     shape_8037B380
	nop
	sw      $v0, 0x0034($sp)
	jal     shape_8037CC74
	lw      $a0, 0x0034($sp)
	lui     $t1, %hi(s_script_8038BD80)
	lw      $t1, %lo(s_script_8038BD80)($t1)
	lui     $at, %hi(s_script_8038BD80)
	addiu   $t2, $t1, 0x0008
	sw      $t2, %lo(s_script_8038BD80)($at)
	b       .L8037D47C
	nop
.L8037D47C:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

/* void s_cmd_empty(void) */
.globl s_cmd_empty
s_cmd_empty:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(s_script_arena)
	lw      $a0, %lo(s_script_arena)($a0)
	jal     shape_8037B448
	move    $a1, $0
	sw      $v0, 0x001C($sp)
	jal     shape_8037CC74
	lw      $a0, 0x001C($sp)
	lui     $t6, %hi(s_script_8038BD80)
	lw      $t6, %lo(s_script_8038BD80)($t6)
	lui     $at, %hi(s_script_8038BD80)
	addiu   $t7, $t6, 0x0004
	sw      $t7, %lo(s_script_8038BD80)($at)
	b       .L8037D4CC
	nop
.L8037D4CC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

/* void s_cmd_1F(void) */
.globl s_cmd_1F
s_cmd_1F:
	lui     $t6, %hi(s_script_8038BD80)
	lw      $t6, %lo(s_script_8038BD80)($t6)
	lui     $at, %hi(s_script_8038BD80)
	addiu   $t7, $t6, 0x0010
	sw      $t7, %lo(s_script_8038BD80)($at)
	jr      $ra
	nop
	jr      $ra
	nop

/* void s_cmd_layer(void) */
.globl s_cmd_layer
s_cmd_layer:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(s_script_8038BD80)
	lw      $t6, %lo(s_script_8038BD80)($t6)
	lui     $a0, %hi(s_script_arena)
	lw      $a0, %lo(s_script_arena)($a0)
	move    $a1, $0
	jal     shape_8037B4AC
	lbu     $a2, 0x0001($t6)
	sw      $v0, 0x001C($sp)
	jal     shape_8037CC74
	lw      $a0, 0x001C($sp)
	lui     $t7, %hi(s_script_8038BD80)
	lw      $t7, %lo(s_script_8038BD80)($t7)
	lui     $at, %hi(s_script_8038BD80)
	addiu   $t8, $t7, 0x0004
	sw      $t8, %lo(s_script_8038BD80)($at)
	b       .L8037D54C
	nop
.L8037D54C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

/* void s_cmd_lod(void) */
.globl s_cmd_lod
s_cmd_lod:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(s_script_8038BD80)
	lw      $t6, %lo(s_script_8038BD80)($t6)
	lh      $t7, 0x0004($t6)
	sh      $t7, 0x001A($sp)
	lui     $t8, %hi(s_script_8038BD80)
	lw      $t8, %lo(s_script_8038BD80)($t8)
	lh      $t9, 0x0006($t8)
	sh      $t9, 0x0018($sp)
	lui     $a0, %hi(s_script_arena)
	lw      $a0, %lo(s_script_arena)($a0)
	move    $a1, $0
	lh      $a2, 0x001A($sp)
	jal     shape_8037B530
	lh      $a3, 0x0018($sp)
	sw      $v0, 0x001C($sp)
	jal     shape_8037CC74
	lw      $a0, 0x001C($sp)
	lui     $t0, %hi(s_script_8038BD80)
	lw      $t0, %lo(s_script_8038BD80)($t0)
	lui     $at, %hi(s_script_8038BD80)
	addiu   $t1, $t0, 0x0008
	sw      $t1, %lo(s_script_8038BD80)($at)
	b       .L8037D5C4
	nop
.L8037D5C4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

/* void s_cmd_select(void) */
.globl s_cmd_select
s_cmd_select:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	lui     $t6, %hi(s_script_8038BD80)
	lw      $t6, %lo(s_script_8038BD80)($t6)
	lui     $a0, %hi(s_script_arena)
	lw      $a0, %lo(s_script_arena)($a0)
	lw      $t7, 0x0004($t6)
	lh      $a2, 0x0002($t6)
	sw      $0, 0x0014($sp)
	move    $a1, $0
	move    $a3, $0
	jal     shape_8037B5B4
	sw      $t7, 0x0010($sp)
	sw      $v0, 0x0024($sp)
	jal     shape_8037CC74
	lw      $a0, 0x0024($sp)
	lui     $t8, %hi(s_script_8038BD80)
	lw      $t8, %lo(s_script_8038BD80)($t8)
	lui     $at, %hi(s_script_8038BD80)
	addiu   $t9, $t8, 0x0008
	sw      $t9, %lo(s_script_8038BD80)($at)
	b       .L8037D630
	nop
.L8037D630:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

/* void s_cmd_camera(void) */
.globl s_cmd_camera
s_cmd_camera:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x001C($sp)
	lui     $t6, %hi(s_script_8038BD80)
	lw      $t6, %lo(s_script_8038BD80)($t6)
	addiu   $t7, $t6, 0x0004
	sw      $t7, 0x0038($sp)
	addiu   $a0, $sp, 0x002C
	jal     shape_8037CB60
	lw      $a1, 0x0038($sp)
	sw      $v0, 0x0038($sp)
	addiu   $a0, $sp, 0x0020
	jal     shape_8037CB60
	lw      $a1, 0x0038($sp)
	sw      $v0, 0x0038($sp)
	lui     $t8, %hi(s_script_8038BD80)
	lw      $t8, %lo(s_script_8038BD80)($t8)
	lui     $a0, %hi(s_script_arena)
	lw      $a0, %lo(s_script_arena)($a0)
	lw      $t9, 0x0010($t8)
	move    $a1, $0
	addiu   $a2, $sp, 0x002C
	sw      $t9, 0x0010($sp)
	lh      $t0, 0x0002($t8)
	addiu   $a3, $sp, 0x0020
	jal     shape_8037B670
	sw      $t0, 0x0014($sp)
	sw      $v0, 0x003C($sp)
	jal     shape_8037CC74
	lw      $a0, 0x003C($sp)
	lui     $t2, %hi(s_script_8038BCAC)
	lw      $t2, %lo(s_script_8038BCAC)($t2)
	lw      $t1, 0x003C($sp)
	sw      $t1, 0x0000($t2)
	lui     $t3, %hi(s_script_8038BD80)
	lw      $t3, %lo(s_script_8038BD80)($t3)
	lui     $at, %hi(s_script_8038BD80)
	addiu   $t4, $t3, 0x0014
	sw      $t4, %lo(s_script_8038BD80)($at)
	b       .L8037D6E0
	nop
.L8037D6E0:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

/* void s_cmd_posang(void) */
.globl s_cmd_posang
s_cmd_posang:
	addiu   $sp, $sp, -0x0050
	sw      $ra, 0x0024($sp)
	sw      $s0, 0x0020($sp)
	sw      $0, 0x0038($sp)
	sh      $0, 0x0036($sp)
	lui     $t6, %hi(s_script_8038BD80)
	lw      $t6, %lo(s_script_8038BD80)($t6)
	lbu     $t7, 0x0001($t6)
	sh      $t7, 0x0034($sp)
	lui     $t8, %hi(s_script_8038BD80)
	lw      $t8, %lo(s_script_8038BD80)($t8)
	sw      $t8, 0x0030($sp)
	lh      $s0, 0x0034($sp)
	andi    $t9, $s0, 0x0070
	move    $s0, $t9
	sra     $t0, $s0, 4
	move    $s0, $t0
	beqz    $s0, .L8037D768
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L8037D794
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L8037D7C0
	nop
	li      $at, 0x0003
	beq     $s0, $at, .L8037D7EC
	nop
	b       .L8037D844
	nop
.L8037D768:
	lw      $a1, 0x0030($sp)
	addiu   $a0, $sp, 0x0044
	jal     shape_8037CBC0
	addiu   $a1, $a1, 0x0004
	sw      $v0, 0x0030($sp)
	addiu   $a0, $sp, 0x003C
	jal     shape_8037CBFC
	lw      $a1, 0x0030($sp)
	sw      $v0, 0x0030($sp)
	b       .L8037D844
	nop
.L8037D794:
	lw      $a1, 0x0030($sp)
	addiu   $a0, $sp, 0x0044
	jal     shape_8037CBC0
	addiu   $a1, $a1, 0x0002
	sw      $v0, 0x0030($sp)
	la.u    $a1, vecs_0
	la.l    $a1, vecs_0
	jal     vecs_cpy
	addiu   $a0, $sp, 0x003C
	b       .L8037D844
	nop
.L8037D7C0:
	lw      $a1, 0x0030($sp)
	addiu   $a0, $sp, 0x003C
	jal     shape_8037CBFC
	addiu   $a1, $a1, 0x0002
	sw      $v0, 0x0030($sp)
	la.u    $a1, vecs_0
	la.l    $a1, vecs_0
	jal     vecs_cpy
	addiu   $a0, $sp, 0x0044
	b       .L8037D844
	nop
.L8037D7EC:
	la.u    $a1, vecs_0
	la.l    $a1, vecs_0
	jal     vecs_cpy
	addiu   $a0, $sp, 0x0044
	lw      $t1, 0x0030($sp)
	li      $at, 0x00B4
	addiu   $a0, $sp, 0x003C
	lh      $a2, 0x0002($t1)
	move    $a1, $0
	move    $a3, $0
	sll     $t2, $a2, 15
	move    $a2, $t2
	div     $0, $a2, $at
	mflo    $t3
	move    $a2, $t3
	jal     vecs_set
	nop
	lw      $t4, 0x0030($sp)
	addiu   $t5, $t4, 0x0004
	sw      $t5, 0x0030($sp)
	b       .L8037D844
	nop
.L8037D844:
	lh      $t6, 0x0034($sp)
	andi    $t7, $t6, 0x0080
	beqz    $t7, .L8037D878
	nop
	lw      $t8, 0x0030($sp)
	lw      $t9, 0x0000($t8)
	sw      $t9, 0x0038($sp)
	lh      $t0, 0x0034($sp)
	andi    $t1, $t0, 0x000F
	sh      $t1, 0x0036($sp)
	lw      $t2, 0x0030($sp)
	addiu   $t3, $t2, 0x0004
	sw      $t3, 0x0030($sp)
.L8037D878:
	lui     $a0, %hi(s_script_arena)
	addiu   $t4, $sp, 0x0044
	addiu   $t5, $sp, 0x003C
	sw      $t5, 0x0014($sp)
	sw      $t4, 0x0010($sp)
	lw      $a0, %lo(s_script_arena)($a0)
	move    $a1, $0
	lh      $a2, 0x0036($sp)
	jal     shape_8037B744
	lw      $a3, 0x0038($sp)
	sw      $v0, 0x004C($sp)
	jal     shape_8037CC74
	lw      $a0, 0x004C($sp)
	lw      $t6, 0x0030($sp)
	lui     $at, %hi(s_script_8038BD80)
	sw      $t6, %lo(s_script_8038BD80)($at)
	b       .L8037D8C0
	nop
.L8037D8C0:
	lw      $ra, 0x0024($sp)
	lw      $s0, 0x0020($sp)
	addiu   $sp, $sp, 0x0050
	jr      $ra
	nop

/* void s_cmd_pos(void) */
.globl s_cmd_pos
s_cmd_pos:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x001C($sp)
	sh      $0, 0x002A($sp)
	lui     $t6, %hi(s_script_8038BD80)
	lw      $t6, %lo(s_script_8038BD80)($t6)
	lbu     $t7, 0x0001($t6)
	sh      $t7, 0x0028($sp)
	lui     $t8, %hi(s_script_8038BD80)
	lw      $t8, %lo(s_script_8038BD80)($t8)
	sw      $t8, 0x0024($sp)
	sw      $0, 0x0020($sp)
	lw      $a1, 0x0024($sp)
	addiu   $a0, $sp, 0x002C
	jal     shape_8037CBC0
	addiu   $a1, $a1, 0x0002
	sw      $v0, 0x0024($sp)
	lh      $t9, 0x0028($sp)
	andi    $t0, $t9, 0x0080
	beqz    $t0, .L8037D948
	nop
	lw      $t1, 0x0024($sp)
	lw      $t2, 0x0000($t1)
	sw      $t2, 0x0020($sp)
	lh      $t3, 0x0028($sp)
	andi    $t4, $t3, 0x000F
	sh      $t4, 0x002A($sp)
	lw      $t5, 0x0024($sp)
	addiu   $t6, $t5, 0x0004
	sw      $t6, 0x0024($sp)
.L8037D948:
	lui     $a0, %hi(s_script_arena)
	addiu   $t7, $sp, 0x002C
	sw      $t7, 0x0010($sp)
	lw      $a0, %lo(s_script_arena)($a0)
	move    $a1, $0
	lh      $a2, 0x002A($sp)
	jal     shape_8037B7F8
	lw      $a3, 0x0020($sp)
	sw      $v0, 0x0034($sp)
	jal     shape_8037CC74
	lw      $a0, 0x0034($sp)
	lw      $t8, 0x0024($sp)
	lui     $at, %hi(s_script_8038BD80)
	sw      $t8, %lo(s_script_8038BD80)($at)
	b       .L8037D988
	nop
.L8037D988:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

/* void s_cmd_ang(void) */
.globl s_cmd_ang
s_cmd_ang:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x001C($sp)
	sh      $0, 0x002A($sp)
	lui     $t6, %hi(s_script_8038BD80)
	lw      $t6, %lo(s_script_8038BD80)($t6)
	lbu     $t7, 0x0001($t6)
	sh      $t7, 0x0028($sp)
	lui     $t8, %hi(s_script_8038BD80)
	lw      $t8, %lo(s_script_8038BD80)($t8)
	sw      $t8, 0x0024($sp)
	sw      $0, 0x0020($sp)
	lw      $a1, 0x0024($sp)
	addiu   $a0, $sp, 0x002C
	jal     shape_8037CBFC
	addiu   $a1, $a1, 0x0002
	sw      $v0, 0x0024($sp)
	lh      $t9, 0x0028($sp)
	andi    $t0, $t9, 0x0080
	beqz    $t0, .L8037DA0C
	nop
	lw      $t1, 0x0024($sp)
	lw      $t2, 0x0000($t1)
	sw      $t2, 0x0020($sp)
	lh      $t3, 0x0028($sp)
	andi    $t4, $t3, 0x000F
	sh      $t4, 0x002A($sp)
	lw      $t5, 0x0024($sp)
	addiu   $t6, $t5, 0x0004
	sw      $t6, 0x0024($sp)
.L8037DA0C:
	lui     $a0, %hi(s_script_arena)
	addiu   $t7, $sp, 0x002C
	sw      $t7, 0x0010($sp)
	lw      $a0, %lo(s_script_arena)($a0)
	move    $a1, $0
	lh      $a2, 0x002A($sp)
	jal     shape_8037B89C
	lw      $a3, 0x0020($sp)
	sw      $v0, 0x0034($sp)
	jal     shape_8037CC74
	lw      $a0, 0x0034($sp)
	lw      $t8, 0x0024($sp)
	lui     $at, %hi(s_script_8038BD80)
	sw      $t8, %lo(s_script_8038BD80)($at)
	b       .L8037DA4C
	nop
.L8037DA4C:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

/* void s_cmd_scale(void) */
.globl s_cmd_scale
s_cmd_scale:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sh      $0, 0x002A($sp)
	lui     $t6, %hi(s_script_8038BD80)
	lw      $t6, %lo(s_script_8038BD80)($t6)
	lbu     $t7, 0x0001($t6)
	sh      $t7, 0x0028($sp)
	lui     $t8, %hi(s_script_8038BD80)
	lw      $t8, %lo(s_script_8038BD80)($t8)
	lw      $t9, 0x0004($t8)
	mtc1    $t9, $f4
	bgez    $t9, .L8037DAA0
	cvt.s.w $f6, $f4
	li      $at, 0x4F800000
	mtc1    $at, $f8
	nop
	add.s   $f6, $f6, $f8
.L8037DAA0:
	li      $at, 0x47800000
	mtc1    $at, $f10
	nop
	div.s   $f16, $f6, $f10
	swc1    $f16, 0x0024($sp)
	sw      $0, 0x0020($sp)
	lh      $t0, 0x0028($sp)
	andi    $t1, $t0, 0x0080
	beqz    $t1, .L8037DAF8
	nop
	lui     $t2, %hi(s_script_8038BD80)
	lw      $t2, %lo(s_script_8038BD80)($t2)
	lw      $t3, 0x0008($t2)
	sw      $t3, 0x0020($sp)
	lh      $t4, 0x0028($sp)
	andi    $t5, $t4, 0x000F
	sh      $t5, 0x002A($sp)
	lui     $t6, %hi(s_script_8038BD80)
	lw      $t6, %lo(s_script_8038BD80)($t6)
	lui     $at, %hi(s_script_8038BD80)
	addiu   $t7, $t6, 0x0004
	sw      $t7, %lo(s_script_8038BD80)($at)
.L8037DAF8:
	lwc1    $f18, 0x0024($sp)
	lui     $a0, %hi(s_script_arena)
	lw      $a0, %lo(s_script_arena)($a0)
	move    $a1, $0
	lh      $a2, 0x002A($sp)
	lw      $a3, 0x0020($sp)
	jal     shape_8037B940
	swc1    $f18, 0x0010($sp)
	sw      $v0, 0x002C($sp)
	jal     shape_8037CC74
	lw      $a0, 0x002C($sp)
	lui     $t8, %hi(s_script_8038BD80)
	lw      $t8, %lo(s_script_8038BD80)($t8)
	lui     $at, %hi(s_script_8038BD80)
	addiu   $t9, $t8, 0x0008
	sw      $t9, %lo(s_script_8038BD80)($at)
	b       .L8037DB40
	nop
.L8037DB40:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

/* void s_cmd_1E(void) */
.globl s_cmd_1E
s_cmd_1E:
	lui     $t6, %hi(s_script_8038BD80)
	lw      $t6, %lo(s_script_8038BD80)($t6)
	lui     $at, %hi(s_script_8038BD80)
	addiu   $t7, $t6, 0x0008
	sw      $t7, %lo(s_script_8038BD80)($at)
	jr      $ra
	nop
	jr      $ra
	nop

/* void s_cmd_joint(void) */
.globl s_cmd_joint
s_cmd_joint:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x001C($sp)
	lui     $t6, %hi(s_script_8038BD80)
	lw      $t6, %lo(s_script_8038BD80)($t6)
	lbu     $t7, 0x0001($t6)
	sw      $t7, 0x0028($sp)
	lui     $t8, %hi(s_script_8038BD80)
	lw      $t8, %lo(s_script_8038BD80)($t8)
	lw      $t9, 0x0008($t8)
	sw      $t9, 0x0024($sp)
	lui     $t0, %hi(s_script_8038BD80)
	lw      $t0, %lo(s_script_8038BD80)($t0)
	sw      $t0, 0x0020($sp)
	lw      $a1, 0x0020($sp)
	addiu   $a0, $sp, 0x002C
	jal     shape_8037CBC0
	addiu   $a1, $a1, 0x0002
	lui     $a0, %hi(s_script_arena)
	addiu   $t1, $sp, 0x002C
	sw      $t1, 0x0010($sp)
	lw      $a0, %lo(s_script_arena)($a0)
	move    $a1, $0
	lw      $a2, 0x0028($sp)
	jal     shape_8037BB48
	lw      $a3, 0x0024($sp)
	sw      $v0, 0x0034($sp)
	jal     shape_8037CC74
	lw      $a0, 0x0034($sp)
	lui     $t2, %hi(s_script_8038BD80)
	lw      $t2, %lo(s_script_8038BD80)($t2)
	lui     $at, %hi(s_script_8038BD80)
	addiu   $t3, $t2, 0x000C
	sw      $t3, %lo(s_script_8038BD80)($at)
	b       .L8037DC00
	nop
.L8037DC00:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

/* void s_cmd_billboard(void) */
.globl s_cmd_billboard
s_cmd_billboard:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x001C($sp)
	sh      $0, 0x002A($sp)
	lui     $t6, %hi(s_script_8038BD80)
	lw      $t6, %lo(s_script_8038BD80)($t6)
	lbu     $t7, 0x0001($t6)
	sh      $t7, 0x0028($sp)
	lui     $t8, %hi(s_script_8038BD80)
	lw      $t8, %lo(s_script_8038BD80)($t8)
	sw      $t8, 0x0024($sp)
	sw      $0, 0x0020($sp)
	lw      $a1, 0x0024($sp)
	addiu   $a0, $sp, 0x002C
	jal     shape_8037CBC0
	addiu   $a1, $a1, 0x0002
	sw      $v0, 0x0024($sp)
	lh      $t9, 0x0028($sp)
	andi    $t0, $t9, 0x0080
	beqz    $t0, .L8037DC84
	nop
	lw      $t1, 0x0024($sp)
	lw      $t2, 0x0000($t1)
	sw      $t2, 0x0020($sp)
	lh      $t3, 0x0028($sp)
	andi    $t4, $t3, 0x000F
	sh      $t4, 0x002A($sp)
	lw      $t5, 0x0024($sp)
	addiu   $t6, $t5, 0x0004
	sw      $t6, 0x0024($sp)
.L8037DC84:
	lui     $a0, %hi(s_script_arena)
	addiu   $t7, $sp, 0x002C
	sw      $t7, 0x0010($sp)
	lw      $a0, %lo(s_script_arena)($a0)
	move    $a1, $0
	lh      $a2, 0x002A($sp)
	jal     shape_8037BBEC
	lw      $a3, 0x0020($sp)
	sw      $v0, 0x0034($sp)
	jal     shape_8037CC74
	lw      $a0, 0x0034($sp)
	lw      $t8, 0x0024($sp)
	lui     $at, %hi(s_script_8038BD80)
	sw      $t8, %lo(s_script_8038BD80)($at)
	b       .L8037DCC4
	nop
.L8037DCC4:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

/* void s_cmd_gfx(void) */
.globl s_cmd_gfx
s_cmd_gfx:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(s_script_8038BD80)
	lw      $t6, %lo(s_script_8038BD80)($t6)
	lbu     $t7, 0x0001($t6)
	sw      $t7, 0x0020($sp)
	lui     $t8, %hi(s_script_8038BD80)
	lw      $t8, %lo(s_script_8038BD80)($t8)
	lw      $t9, 0x0004($t8)
	sw      $t9, 0x001C($sp)
	lui     $a0, %hi(s_script_arena)
	lw      $a0, %lo(s_script_arena)($a0)
	move    $a1, $0
	lw      $a2, 0x0020($sp)
	jal     shape_8037BC90
	lw      $a3, 0x001C($sp)
	sw      $v0, 0x0024($sp)
	jal     shape_8037CC74
	lw      $a0, 0x0024($sp)
	lui     $t0, %hi(s_script_8038BD80)
	lw      $t0, %lo(s_script_8038BD80)($t0)
	lui     $at, %hi(s_script_8038BD80)
	addiu   $t1, $t0, 0x0008
	sw      $t1, %lo(s_script_8038BD80)($at)
	b       .L8037DD3C
	nop
.L8037DD3C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

/* void s_cmd_shadow(void) */
.globl s_cmd_shadow
s_cmd_shadow:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	lui     $t6, %hi(s_script_8038BD80)
	lw      $t6, %lo(s_script_8038BD80)($t6)
	lh      $t7, 0x0002($t6)
	sb      $t7, 0x0023($sp)
	lui     $t8, %hi(s_script_8038BD80)
	lw      $t8, %lo(s_script_8038BD80)($t8)
	lh      $t9, 0x0004($t8)
	sb      $t9, 0x0022($sp)
	lui     $t0, %hi(s_script_8038BD80)
	lw      $t0, %lo(s_script_8038BD80)($t0)
	lh      $t1, 0x0006($t0)
	sh      $t1, 0x0020($sp)
	lbu     $t2, 0x0023($sp)
	lui     $a0, %hi(s_script_arena)
	lw      $a0, %lo(s_script_arena)($a0)
	move    $a1, $0
	lh      $a2, 0x0020($sp)
	lbu     $a3, 0x0022($sp)
	jal     shape_8037BD24
	sw      $t2, 0x0010($sp)
	sw      $v0, 0x0024($sp)
	jal     shape_8037CC74
	lw      $a0, 0x0024($sp)
	lui     $t3, %hi(s_script_8038BD80)
	lw      $t3, %lo(s_script_8038BD80)($t3)
	lui     $at, %hi(s_script_8038BD80)
	addiu   $t4, $t3, 0x0008
	sw      $t4, %lo(s_script_8038BD80)($at)
	b       .L8037DDCC
	nop
.L8037DDCC:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

/* void s_cmd_object(void) */
.globl s_cmd_object
s_cmd_object:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(s_script_arena)
	la.u    $a2, s_script_8038BD88
	la.l    $a2, s_script_8038BD88
	lw      $a0, %lo(s_script_arena)($a0)
	jal     shape_8037BDB4
	move    $a1, $0
	sw      $v0, 0x001C($sp)
	jal     shape_8037CC74
	lw      $a0, 0x001C($sp)
	lui     $t6, %hi(s_script_8038BD80)
	lw      $t6, %lo(s_script_8038BD80)($t6)
	lui     $at, %hi(s_script_8038BD80)
	addiu   $t7, $t6, 0x0004
	sw      $t7, %lo(s_script_8038BD80)($at)
	b       .L8037DE24
	nop
.L8037DE24:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

/* void s_cmd_callback(void) */
.globl s_cmd_callback
s_cmd_callback:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(s_script_8038BD80)
	lw      $t6, %lo(s_script_8038BD80)($t6)
	lui     $a0, %hi(s_script_arena)
	lw      $a0, %lo(s_script_arena)($a0)
	move    $a1, $0
	lw      $a2, 0x0004($t6)
	jal     shape_8037BE28
	lh      $a3, 0x0002($t6)
	sw      $v0, 0x001C($sp)
	jal     shape_8037CC74
	lw      $a0, 0x001C($sp)
	lui     $t7, %hi(s_script_8038BD80)
	lw      $t7, %lo(s_script_8038BD80)($t7)
	lui     $at, %hi(s_script_8038BD80)
	addiu   $t8, $t7, 0x0008
	sw      $t8, %lo(s_script_8038BD80)($at)
	b       .L8037DE84
	nop
.L8037DE84:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

/* void s_cmd_background(void) */
.globl s_cmd_background
s_cmd_background:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	lui     $t6, %hi(s_script_8038BD80)
	lw      $t6, %lo(s_script_8038BD80)($t6)
	lui     $a0, %hi(s_script_arena)
	lw      $a0, %lo(s_script_arena)($a0)
	lh      $a2, 0x0002($t6)
	lw      $a3, 0x0004($t6)
	sw      $0, 0x0010($sp)
	jal     shape_8037BECC
	move    $a1, $0
	sw      $v0, 0x0024($sp)
	jal     shape_8037CC74
	lw      $a0, 0x0024($sp)
	lui     $t7, %hi(s_script_8038BD80)
	lw      $t7, %lo(s_script_8038BD80)($t7)
	lui     $at, %hi(s_script_8038BD80)
	addiu   $t8, $t7, 0x0008
	sw      $t8, %lo(s_script_8038BD80)($at)
	b       .L8037DEE8
	nop
.L8037DEE8:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

/* void s_cmd_1A(void) */
.globl s_cmd_1A
s_cmd_1A:
	lui     $t6, %hi(s_script_8038BD80)
	lw      $t6, %lo(s_script_8038BD80)($t6)
	lui     $at, %hi(s_script_8038BD80)
	addiu   $t7, $t6, 0x0008
	sw      $t7, %lo(s_script_8038BD80)($at)
	jr      $ra
	nop
	jr      $ra
	nop

/* void s_cmd_load(void) */
.globl s_cmd_load
s_cmd_load:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $0, 0x0020($sp)
	lui     $t6, %hi(s_script_8038BD80)
	lw      $t6, %lo(s_script_8038BD80)($t6)
	lh      $t7, 0x0002($t6)
	sh      $t7, 0x001E($sp)
	lh      $t8, 0x001E($sp)
	bltz    $t8, .L8037DF88
	nop
	lh      $t0, 0x001E($sp)
	lui     $t9, %hi(s_script_8038BCAC)
	lw      $t9, %lo(s_script_8038BCAC)($t9)
	sll     $t1, $t0, 2
	addu    $t2, $t9, $t1
	lw      $t3, 0x0000($t2)
	sw      $t3, 0x0020($sp)
	lw      $t4, 0x0020($sp)
	li      $at, 0x0029
	lh      $t5, 0x0000($t4)
	bne     $t5, $at, .L8037DF84
	nop
	lw      $t6, 0x0020($sp)
	lw      $t7, 0x0014($t6)
	b       .L8037DF88
	sw      $t7, 0x0020($sp)
.L8037DF84:
	sw      $0, 0x0020($sp)
.L8037DF88:
	lui     $a0, %hi(s_script_arena)
	lw      $a0, %lo(s_script_arena)($a0)
	move    $a1, $0
	jal     shape_8037BDB4
	lw      $a2, 0x0020($sp)
	sw      $v0, 0x0024($sp)
	jal     shape_8037CC74
	lw      $a0, 0x0024($sp)
	lui     $t8, %hi(s_script_8038BD80)
	lw      $t8, %lo(s_script_8038BD80)($t8)
	lui     $at, %hi(s_script_8038BD80)
	addiu   $t0, $t8, 0x0004
	sw      $t0, %lo(s_script_8038BD80)($at)
	b       .L8037DFC4
	nop
.L8037DFC4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

/* void s_cmd_hand(void) */
.globl s_cmd_hand
s_cmd_hand:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	lui     $a1, %hi(s_script_8038BD80)
	lw      $a1, %lo(s_script_8038BD80)($a1)
	addiu   $a0, $sp, 0x0024
	jal     shape_8037CBC0
	addiu   $a1, $a1, 0x0002
	lui     $t6, %hi(s_script_8038BD80)
	lw      $t6, %lo(s_script_8038BD80)($t6)
	lui     $a0, %hi(s_script_arena)
	lw      $a0, %lo(s_script_arena)($a0)
	lw      $t7, 0x0008($t6)
	move    $a1, $0
	move    $a2, $0
	sw      $t7, 0x0010($sp)
	lbu     $t8, 0x0001($t6)
	addiu   $a3, $sp, 0x0024
	jal     shape_8037BF84
	sw      $t8, 0x0014($sp)
	sw      $v0, 0x002C($sp)
	jal     shape_8037CC74
	lw      $a0, 0x002C($sp)
	lui     $t9, %hi(s_script_8038BD80)
	lw      $t9, %lo(s_script_8038BD80)($t9)
	lui     $at, %hi(s_script_8038BD80)
	addiu   $t0, $t9, 0x000C
	sw      $t0, %lo(s_script_8038BD80)($at)
	b       .L8037E048
	nop
.L8037E048:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

/* void s_cmd_cull(void) */
.globl s_cmd_cull
s_cmd_cull:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(s_script_8038BD80)
	lw      $t6, %lo(s_script_8038BD80)($t6)
	lui     $a0, %hi(s_script_arena)
	lw      $a0, %lo(s_script_arena)($a0)
	move    $a1, $0
	jal     shape_8037BAD4
	lh      $a2, 0x0002($t6)
	sw      $v0, 0x001C($sp)
	jal     shape_8037CC74
	lw      $a0, 0x001C($sp)
	lui     $t7, %hi(s_script_8038BD80)
	lw      $t7, %lo(s_script_8038BD80)($t7)
	lui     $at, %hi(s_script_8038BD80)
	addiu   $t8, $t7, 0x0004
	sw      $t8, %lo(s_script_8038BD80)($at)
	b       .L8037E0A4
	nop
.L8037E0A4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl s_script_main
s_script_main:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	lui     $at, %hi(s_script_8038BCA4)
	sw      $0, %lo(s_script_8038BCA4)($at)
	lui     $at, %hi(s_script_8038BCB0)
	sh      $0, %lo(s_script_8038BCB0)($at)
	la.u    $t6, s_script_8038BCF8
	la.l    $t6, s_script_8038BCF8
	sw      $0, 0x0000($t6)
	lui     $at, %hi(s_script_8038BD78)
	sh      $0, %lo(s_script_8038BD78)($at)
	li      $t7, 0x0002
	lui     $at, %hi(s_script_8038BD7A)
	sh      $t7, %lo(s_script_8038BD7A)($at)
	li      $t8, 0x0002
	lui     $at, %hi(s_script_8038BD7E)
	sh      $t8, %lo(s_script_8038BD7E)($at)
	jal     segment_to_virtual
	lw      $a0, 0x001C($sp)
	lui     $at, %hi(s_script_8038BD80)
	sw      $v0, %lo(s_script_8038BD80)($at)
	lw      $t9, 0x0018($sp)
	lui     $at, %hi(s_script_arena)
	sw      $t9, %lo(s_script_arena)($at)
	la.u    $t0, s_script_8038BCB8
	la.l    $t0, s_script_8038BCB8
	sw      $0, 0x0000($t0)
	la.u    $t1, s_script_8038BCB8
	la.l    $t1, s_script_8038BCB8
	sw      $0, 0x0004($t1)
	lui     $t2, %hi(s_script_8038BD80)
	lw      $t2, %lo(s_script_8038BD80)($t2)
	beqz    $t2, .L8037E178
	nop
.L8037E144:
	lui     $t3, %hi(s_script_8038BD80)
	lw      $t3, %lo(s_script_8038BD80)($t3)
	lui     $t9, %hi(s_script_table)
	lbu     $t4, 0x0000($t3)
	sll     $t5, $t4, 2
	addu    $t9, $t9, $t5
	lw      $t9, %lo(s_script_table)($t9)
	jalr    $t9
	nop
	lui     $t6, %hi(s_script_8038BD80)
	lw      $t6, %lo(s_script_8038BD80)($t6)
	bnez    $t6, .L8037E144
	nop
.L8037E178:
	lui     $v0, %hi(s_script_8038BCA4)
	b       .L8037E18C
	lw      $v0, %lo(s_script_8038BCA4)($v0)
	b       .L8037E18C
	nop
.L8037E18C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop
