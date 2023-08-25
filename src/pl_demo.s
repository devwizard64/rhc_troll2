.include "sm64/asm.inc"

.set noreorder
.set noat

.align 4

pl_demo_80256E00:
	addiu   $sp, $sp, -0x0010
	sw      $0, 0x0008($sp)
	lb      $t6, 0x0000($a0)
	addiu   $a0, $a0, 0x0001
	sw      $t6, 0x000C($sp)
	lw      $a1, 0x000C($sp)
	sltu    $t7, $0, $a1
	move    $a1, $t7
	beqz    $a1, .L80256E70
	nop
.L80256E28:
	lw      $t8, 0x000C($sp)
	li      $at, 0x0020
	bne     $t8, $at, .L80256E40
	nop
	b       .L80256E44
	li      $a1, 0x0004
.L80256E40:
	li      $a1, 0x0007
.L80256E44:
	lw      $t9, 0x0008($sp)
	addu    $t0, $t9, $a1
	sw      $t0, 0x0008($sp)
	lb      $t1, 0x0000($a0)
	addiu   $a0, $a0, 0x0001
	sw      $t1, 0x000C($sp)
	lw      $a1, 0x000C($sp)
	sltu    $t2, $0, $a1
	move    $a1, $t2
	bnez    $a1, .L80256E28
	nop
.L80256E70:
	b       .L80256E80
	lw      $v0, 0x0008($sp)
	b       .L80256E80
	nop
.L80256E80:
	jr      $ra
	addiu   $sp, $sp, 0x0010

/* void pl_demo_80256E88(void) */
.globl pl_demo_80256E88
pl_demo_80256E88:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(pl_demo_staff)
	lw      $t6, %lo(pl_demo_staff)($t6)
	beqz    $t6, .L80257044
	nop
	lui     $t7, %hi(pl_demo_staff)
	lw      $t7, %lo(pl_demo_staff)($t7)
	lw      $t8, 0x000C($t7)
	sw      $t8, 0x0034($sp)
	lw      $t9, 0x0034($sp)
	lw      $t0, 0x0000($t9)
	addiu   $t1, $t9, 0x0004
	sw      $t1, 0x0034($sp)
	sw      $t0, 0x0030($sp)
	lw      $t2, 0x0030($sp)
	lb      $t3, 0x0000($t2)
	addiu   $t5, $t2, 0x0001
	sw      $t5, 0x0030($sp)
	addiu   $t4, $t3, -0x0030
	sh      $t4, 0x002E($sp)
	lui     $t6, %hi(pl_demo_staff)
	lw      $t6, %lo(pl_demo_staff)($t6)
	lbu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0020
	beqz    $t8, .L80256F00
	nop
	b       .L80256F04
	li      $s0, 0x001C
.L80256F00:
	li      $s0, 0x00AC
.L80256F04:
	lh      $t0, 0x002E($sp)
	xori    $t9, $t0, 0x0001
	sltiu   $t9, $t9, 0x0001
	sll     $t1, $t9, 4
	addu    $t3, $s0, $t1
	sh      $t3, 0x002C($sp)
	li      $t4, 0x0010
	sh      $t4, 0x002A($sp)
	jal     message_802DA85C
	nop
	li      $a0, 0x001C
	lh      $a1, 0x002C($sp)
	jal     message_802DAA34
	lw      $a2, 0x0030($sp)
	lh      $s0, 0x002E($sp)
	li      $at, 0x0004
	beq     $s0, $at, .L80256F60
	nop
	li      $at, 0x0005
	beq     $s0, $at, .L80256F98
	nop
	b       .L80256FC8
	nop
.L80256F60:
	lw      $t2, 0x0034($sp)
	lh      $a1, 0x002C($sp)
	li      $a0, 0x001C
	lw      $a2, 0x0000($t2)
	addiu   $t5, $t2, 0x0004
	sw      $t5, 0x0034($sp)
	jal     message_802DAA34
	addiu   $a1, $a1, 0x0018
	li      $t6, 0x0002
	sh      $t6, 0x002E($sp)
	li      $t7, 0x0018
	sh      $t7, 0x002A($sp)
	b       .L80256FC8
	nop
.L80256F98:
	lw      $t8, 0x0034($sp)
	lh      $a1, 0x002C($sp)
	li      $a0, 0x001C
	lw      $a2, 0x0000($t8)
	addiu   $t0, $t8, 0x0004
	sw      $t0, 0x0034($sp)
	jal     message_802DAA34
	addiu   $a1, $a1, 0x0010
	li      $t9, 0x0003
	sh      $t9, 0x002E($sp)
	b       .L80256FC8
	nop
.L80256FC8:
	lh      $t1, 0x002E($sp)
	slt     $s0, $0, $t1
	addiu   $t3, $t1, -0x0001
	beqz    $s0, .L80257034
	sh      $t3, 0x002E($sp)
.L80256FDC:
	lw      $t4, 0x0034($sp)
	jal     pl_demo_80256E00
	lw      $a0, 0x0000($t4)
	lw      $t5, 0x0034($sp)
	move    $s0, $v0
	li      $t2, 0x0124
	subu    $a0, $t2, $s0
	lh      $a1, 0x002C($sp)
	jal     message_802DAA34
	lw      $a2, 0x0000($t5)
	lh      $t6, 0x002C($sp)
	lh      $t7, 0x002A($sp)
	addu    $t8, $t6, $t7
	sh      $t8, 0x002C($sp)
	lw      $t0, 0x0034($sp)
	addiu   $t9, $t0, 0x0004
	sw      $t9, 0x0034($sp)
	lh      $t1, 0x002E($sp)
	slt     $s0, $0, $t1
	addiu   $t3, $t1, -0x0001
	bnez    $s0, .L80256FDC
	sh      $t3, 0x002E($sp)
.L80257034:
	jal     message_802DA8E4
	nop
	lui     $at, %hi(pl_demo_staff)
	sw      $0, %lo(pl_demo_staff)($at)
.L80257044:
	b       .L8025704C
	nop
.L8025704C:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

.globl pl_demo_80257060
pl_demo_80257060:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(pl_demo_8033B2B8)
	jal     obj_lib_8029F4B4
	lh      $a0, %lo(pl_demo_8033B2B8)($a0)
	jal     obj_lib_8029FF04
	nop
	beqz    $v0, .L802570C4
	nop
	lui     $t6, %hi(pl_demo_8033B2B8)
	lh      $t6, %lo(pl_demo_8033B2B8)($t6)
	slti    $at, $t6, 0x0003
	bnez    $at, .L802570B0
	nop
	li      $at, 0x0006
	beq     $t6, $at, .L802570B0
	nop
	li      $at, 0x0007
	bne     $t6, $at, .L802570C4
	nop
.L802570B0:
	lui     $t7, %hi(pl_demo_8033B2B8)
	lh      $t7, %lo(pl_demo_8033B2B8)($t7)
	lui     $at, %hi(pl_demo_8033B2B8)
	addiu   $t8, $t7, 0x0001
	sh      $t8, %lo(pl_demo_8033B2B8)($at)
.L802570C4:
	b       .L802570CC
	nop
.L802570CC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl pl_demo_802570DC
pl_demo_802570DC:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f6
	move    $t7, $0
	lwc1    $f4, 0x00A0($t6)
	c.le.s  $f6, $f4
	nop
	bc1f    .L8025710C
	nop
	li      $t7, 0x0001
.L8025710C:
	sw      $t7, 0x001C($sp)
	lw      $t8, 0x001C($sp)
	lui     $a0, %hi(pl_demo_8033B2BC)
	sll     $t9, $t8, 1
	addu    $a0, $a0, $t9
	jal     obj_lib_8029F4B4
	lh      $a0, %lo(pl_demo_8033B2BC)($a0)
	jal     obj_lib_8029FF04
	nop
	beqz    $v0, .L80257180
	nop
	lw      $t0, 0x001C($sp)
	lui     $t2, %hi(pl_demo_8033B2BC)
	sll     $t1, $t0, 1
	addu    $t2, $t2, $t1
	lh      $t2, %lo(pl_demo_8033B2BC)($t2)
	beqz    $t2, .L80257160
	nop
	li      $at, 0x0002
	bne     $t2, $at, .L80257180
	nop
.L80257160:
	lw      $t3, 0x001C($sp)
	la.u    $t5, pl_demo_8033B2BC
	la.l    $t5, pl_demo_8033B2BC
	sll     $t4, $t3, 1
	addu    $t6, $t4, $t5
	lh      $t7, 0x0000($t6)
	addiu   $t8, $t7, 0x0001
	sh      $t8, 0x0000($t6)
.L80257180:
	b       .L80257188
	nop
.L80257188:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl s_pl_demo_80257198
s_pl_demo_80257198:
	addiu   $sp, $sp, -0x0008
	sw      $a2, 0x0010($sp)
	sw      $a1, 0x0004($sp)
	li      $at, 0x0001
	bne     $a0, $at, .L80257258
	nop
	lui     $t6, %hi(pl_demo_8032DB44)
	lb      $t6, %lo(pl_demo_8032DB44)($t6)
	bnez    $t6, .L80257234
	nop
	lui     $t7, %hi(draw_timer)
	lhu     $t7, %lo(draw_timer)($t7)
	addiu   $t8, $t7, 0x0020
	sra     $t9, $t8, 1
	andi    $t0, $t9, 0x001F
	sh      $t0, 0x0002($sp)
	lh      $t1, 0x0002($sp)
	slti    $at, $t1, 0x0007
	beqz    $at, .L80257214
	nop
	lh      $t2, 0x0002($sp)
	lui     $t3, %hi(pl_demo_8032DB4C)
	lui     $t4, %hi(pl_demo_8032DB48)
	lb      $t4, %lo(pl_demo_8032DB48)($t4)
	addu    $t3, $t3, $t2
	lb      $t3, %lo(pl_demo_8032DB4C)($t3)
	lw      $t7, 0x0004($sp)
	sll     $t5, $t4, 2
	addu    $t6, $t3, $t5
	b       .L8025722C
	sh      $t6, 0x001E($t7)
.L80257214:
	lui     $t8, %hi(pl_demo_8032DB48)
	lb      $t8, %lo(pl_demo_8032DB48)($t8)
	lw      $t1, 0x0004($sp)
	sll     $t9, $t8, 2
	addiu   $t0, $t9, 0x0001
	sh      $t0, 0x001E($t1)
.L8025722C:
	b       .L80257258
	nop
.L80257234:
	lui     $t2, %hi(pl_demo_8032DB48)
	lb      $t2, %lo(pl_demo_8032DB48)($t2)
	lui     $t3, %hi(pl_demo_8032DB44)
	lb      $t3, %lo(pl_demo_8032DB44)($t3)
	lw      $t7, 0x0004($sp)
	sll     $t4, $t2, 2
	addu    $t5, $t4, $t3
	addiu   $t6, $t5, -0x0001
	sh      $t6, 0x001E($t7)
.L80257258:
	b       .L80257268
	move    $v0, $0
	b       .L80257268
	nop
.L80257268:
	jr      $ra
	addiu   $sp, $sp, 0x0008

pl_demo_80257270:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     message_802D8C6C
	nop
	li      $at, -0x0001
	bne     $v0, $at, .L80257298
	nop
	lw      $t6, 0x0018($sp)
	sh      $0, 0x0000($t6)
.L80257298:
	b       .L802572A0
	nop
.L802572A0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.if 0
pl_demo_802572B0:
	addiu   $sp, $sp, -0x0010
	sw      $0, 0x0008($sp)
	sw      $0, 0x000C($sp)
.L802572BC:
	lw      $t6, 0x000C($sp)
	lui     $t7, %hi(pl_demo_8032DB54)
	addu    $t7, $t7, $t6
	lbu     $t7, %lo(pl_demo_8032DB54)($t7)
	sw      $t7, 0x0004($sp)
	lh      $t8, 0x00B8($a0)
	lw      $t9, 0x0004($sp)
	slt     $at, $t8, $t9
	beqz    $at, .L80257308
	nop
	lh      $t0, 0x00AA($a0)
	slt     $at, $t0, $t9
	bnez    $at, .L80257308
	nop
	lw      $t1, 0x000C($sp)
	addiu   $t2, $t1, 0x008D
	sw      $t2, 0x0008($sp)
	b       .L8025731C
	nop
.L80257308:
	lw      $t3, 0x000C($sp)
	addiu   $t4, $t3, 0x0001
	slti    $at, $t4, 0x0006
	bnez    $at, .L802572BC
	sw      $t4, 0x000C($sp)
.L8025731C:
	lh      $t5, 0x00AA($a0)
	sh      $t5, 0x00B8($a0)
	b       .L80257334
	lw      $v0, 0x0008($sp)
	b       .L80257334
	nop
.L80257334:
	jr      $ra
	addiu   $sp, $sp, 0x0010
.endif

pl_demo_8025733C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	jal     player_8025097C
	lw      $a0, 0x0020($sp)
	beqz    $v0, .L80257438
	nop
	lui     $t6, %hi(msg_latch)
	lh      $t6, %lo(msg_latch)($t6)
	beqz    $t6, .L80257438
	nop
	lui     $t7, %hi(msg_latch)
	lh      $t7, %lo(msg_latch)($t7)
	li      $at, 0x0001
	beq     $t7, $at, .L80257388
	nop
	li      $at, 0x0002
	bne     $t7, $at, .L802573B8
	nop
.L80257388:
	lui     $a0, %hi(save_index)
	lh      $a0, %lo(save_index)($a0)
	jal     save_file_write
	addiu   $a0, $a0, -0x0001
	lui     $t8, %hi(msg_latch)
	lh      $t8, %lo(msg_latch)($t8)
	li      $at, 0x0002
	bne     $t8, $at, .L802573B8
	nop
	li      $a0, -0x0002
	jal     game_exit_fadeout
	move    $a1, $0
.L802573B8:
	lui     $t9, %hi(msg_latch)
	lh      $t9, %lo(msg_latch)($t9)
	li      $at, 0x0002
	beq     $t9, $at, .L80257438
	nop
	jal     obj_lib_802A4728
	nop
	lw      $t0, 0x0020($sp)
	li      $at, 0x8000
	lh      $t1, 0x002E($t0)
	addu    $t2, $t1, $at
	sh      $t2, 0x002E($t0)
	jal     pl_demo_802572B0
	lw      $a0, 0x0020($sp)
	sw      $v0, 0x001C($sp)
	lw      $t3, 0x001C($sp)
	beqz    $t3, .L80257424
	nop
	jal     Na_g_803220B4
	nop
	li.u    $a1, 0x20001305
	li.l    $a1, 0x20001305
	lw      $a0, 0x0020($sp)
	jal     player_80252CF4
	lw      $a2, 0x001C($sp)
	b       .L80257438
	nop
.L80257424:
	li.u    $a1, 0x0C400201
	li.l    $a1, 0x0C400201
	lw      $a0, 0x0020($sp)
	jal     player_80252CF4
	move    $a2, $0
.L80257438:
	b       .L80257440
	nop
.L80257440:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_demo_80257450:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	sw      $a3, 0x002C($sp)
	lw      $t6, 0x0020($sp)
	lw      $a1, 0x0024($sp)
	lw      $a2, 0x0028($sp)
	jal     obj_lib_8029EDCC
	lw      $a0, 0x0088($t6)
	sw      $v0, 0x001C($sp)
	lw      $t7, 0x0020($sp)
	lh      $t9, 0x002E($sp)
	lw      $t1, 0x001C($sp)
	lh      $t8, 0x002E($t7)
	addu    $t0, $t8, $t9
	sw      $t0, 0x00D4($t1)
	lw      $t2, 0x0020($sp)
	lw      $t3, 0x001C($sp)
	lwc1    $f4, 0x003C($t2)
	swc1    $f4, 0x00A0($t3)
	lw      $t4, 0x0020($sp)
	lw      $t5, 0x001C($sp)
	lwc1    $f6, 0x0040($t4)
	swc1    $f6, 0x00A4($t5)
	lw      $t6, 0x0020($sp)
	lw      $t7, 0x001C($sp)
	lwc1    $f8, 0x0044($t6)
	swc1    $f8, 0x00A8($t7)
	b       .L802574D8
	lw      $v0, 0x001C($sp)
	b       .L802574D8
	nop
.L802574D8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_demo_802574E8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	li      $at, -0x0011
	lw      $t7, 0x0004($t6)
	and     $t8, $t7, $at
	sw      $t8, 0x0004($t6)
	lw      $t9, 0x0018($sp)
	lw      $t0, 0x0004($t9)
	ori     $t1, $t0, 0x0020
	sw      $t1, 0x0004($t9)
	lw      $t2, 0x0018($sp)
	li.u    $a0, 0x043D8081
	li.l    $a0, 0x043D8081
	lw      $a1, 0x0088($t2)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
	b       .L80257538
	nop
.L80257538:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_demo_80257548:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	li      $at, -0x0021
	lw      $t7, 0x0004($t6)
	and     $t8, $t7, $at
	sw      $t8, 0x0004($t6)
	lw      $t9, 0x0018($sp)
	lw      $t0, 0x0004($t9)
	ori     $t1, $t0, 0x0010
	sw      $t1, 0x0004($t9)
	lw      $t2, 0x0018($sp)
	li.u    $a0, 0x043E8081
	li.l    $a0, 0x043E8081
	lw      $a1, 0x0088($t2)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
	b       .L80257598
	nop
.L80257598:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl pl_demo_802575A8
pl_demo_802575A8:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(mario)
	lw      $t6, %lo(mario)($t6)
	lw      $t7, 0x000C($t6)
	andi    $t8, $t7, 0x01C0
	sw      $t8, 0x0004($sp)
	sw      $0, 0x0000($sp)
	lui     $t9, %hi(mario)
	lw      $t9, %lo(mario)($t9)
	li      $at, 0x130A
	lw      $t0, 0x000C($t9)
	beq     $t0, $at, .L802575F4
	nop
	lw      $t1, 0x0004($sp)
	beqz    $t1, .L802575F4
	nop
	li      $at, 0x0040
	bne     $t1, $at, .L80257628
	nop
.L802575F4:
	lui     $t2, %hi(mario)
	lw      $t2, %lo(mario)($t2)
	li      $at, 0x00030000
	lw      $t3, 0x000C($t2)
	and     $t4, $t3, $at
	bnez    $t4, .L80257628
	nop
	li.u    $at, 0x0C000227
	li.l    $at, 0x0C000227
	beq     $t3, $at, .L80257628
	nop
	li      $t5, 0x0001
	sw      $t5, 0x0000($sp)
.L80257628:
	b       .L80257638
	lw      $v0, 0x0000($sp)
	b       .L80257638
	nop
.L80257638:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl pl_demo_80257640
pl_demo_80257640:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $0, 0x001C($sp)
	lui     $t6, %hi(mario)
	lw      $t6, %lo(mario)($t6)
	li.u    $at, 0x20001306
	li.l    $at, 0x20001306
	lw      $t7, 0x000C($t6)
	bne     $t7, $at, .L802576D8
	nop
	lui     $t8, %hi(mario)
	lw      $t8, %lo(mario)($t8)
	lhu     $t9, 0x0018($t8)
	slti    $at, $t9, 0x0008
	beqz    $at, .L8025768C
	nop
	li      $t0, 0x0001
	sw      $t0, 0x001C($sp)
.L8025768C:
	lui     $t1, %hi(mario)
	lw      $t1, %lo(mario)($t1)
	li      $at, 0x0008
	lhu     $t2, 0x0018($t1)
	bne     $t2, $at, .L802576D0
	nop
	lw      $t3, 0x0020($sp)
	bnez    $t3, .L802576C8
	nop
	lui     $t4, %hi(mario)
	lw      $t4, %lo(mario)($t4)
	lhu     $t5, 0x0018($t4)
	addiu   $t6, $t5, 0x0001
	b       .L802576D0
	sh      $t6, 0x0018($t4)
.L802576C8:
	li      $t7, 0x0002
	sw      $t7, 0x001C($sp)
.L802576D0:
	b       .L80257728
	nop
.L802576D8:
	lw      $t8, 0x0020($sp)
	beqz    $t8, .L80257728
	nop
	jal     pl_demo_802575A8
	nop
	beqz    $v0, .L80257728
	nop
	lui     $t9, %hi(object)
	lui     $t0, %hi(mario)
	lw      $t0, %lo(mario)($t0)
	lw      $t9, %lo(object)($t9)
	sw      $t9, 0x0080($t0)
	lui     $a0, %hi(mario)
	li.u    $a1, 0x20001306
	li.l    $a1, 0x20001306
	lw      $a0, %lo(mario)($a0)
	jal     player_80252CF4
	lw      $a2, 0x0020($sp)
	li      $t1, 0x0001
	sw      $t1, 0x001C($sp)
.L80257728:
	b       .L80257738
	lw      $v0, 0x001C($sp)
	b       .L80257738
	nop
.L80257738:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_demo_80257748:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $s0, 0x0018($sp)
	sw      $0, 0x002C($sp)
	lw      $t6, 0x0030($sp)
	li      $at, 0x0002
	lw      $t7, 0x001C($t6)
	bne     $t7, $at, .L80257778
	nop
	li      $t8, -0x0400
	sw      $t8, 0x002C($sp)
.L80257778:
	lw      $t9, 0x0030($sp)
	li      $at, 0x0003
	lw      $t0, 0x001C($t9)
	bne     $t0, $at, .L80257794
	nop
	li      $t1, 0x0180
	sw      $t1, 0x002C($sp)
.L80257794:
	lw      $t2, 0x0030($sp)
	lhu     $t3, 0x0018($t2)
	slti    $at, $t3, 0x0008
	beqz    $at, .L80257840
	nop
	lw      $t4, 0x0030($sp)
	move    $a0, $t4
	jal     collision_8024C16C
	lw      $a1, 0x0080($t4)
	sh      $v0, 0x002A($sp)
	lw      $t6, 0x0030($sp)
	lh      $t5, 0x002A($sp)
	move    $a1, $0
	lh      $t7, 0x002E($t6)
	li      $a2, 0x0800
	li      $a3, 0x0800
	subu    $a0, $t5, $t7
	sll     $t8, $a0, 16
	move    $a0, $t8
	sra     $t9, $a0, 16
	jal     converge_i
	move    $a0, $t9
	lh      $t0, 0x002A($sp)
	lw      $t2, 0x0030($sp)
	subu    $t1, $t0, $v0
	sh      $t1, 0x002E($t2)
	lw      $t3, 0x0030($sp)
	lw      $t6, 0x002C($sp)
	lhu     $t4, 0x001A($t3)
	addu    $t5, $t4, $t6
	sh      $t5, 0x001A($t3)
	lw      $t7, 0x0030($sp)
	lw      $t8, 0x007C($t7)
	bnez    $t8, .L80257828
	nop
	b       .L8025782C
	li      $s0, 0x00C2
.L80257828:
	li      $s0, 0x003F
.L8025782C:
	lw      $a0, 0x0030($sp)
	jal     player_802509B8
	move    $a1, $s0
	b       .L802578EC
	nop
.L80257840:
	lw      $t9, 0x0030($sp)
	lhu     $t0, 0x0018($t9)
	slti    $at, $t0, 0x0009
	bnez    $at, .L80257878
	nop
	slti    $at, $t0, 0x0011
	beqz    $at, .L80257878
	nop
	lw      $t1, 0x0030($sp)
	lw      $t4, 0x002C($sp)
	lhu     $t2, 0x001A($t1)
	subu    $t6, $t2, $t4
	b       .L802578EC
	sh      $t6, 0x001A($t1)
.L80257878:
	lw      $t5, 0x0030($sp)
	li      $at, 0x0017
	lhu     $t3, 0x0018($t5)
	bne     $t3, $at, .L802578EC
	nop
	lw      $t7, 0x0030($sp)
	lw      $t8, 0x0004($t7)
	andi    $t9, $t8, 0x0020
	beqz    $t9, .L802578B8
	nop
	lw      $a0, 0x0030($sp)
	li      $a1, 0x133D
	jal     player_80252CF4
	move    $a2, $0
	b       .L802578EC
	nop
.L802578B8:
	lw      $t0, 0x0030($sp)
	lw      $t2, 0x007C($t0)
	bnez    $t2, .L802578D4
	nop
	li.u    $s0, 0x0C400201
	b       .L802578DC
	li.l    $s0, 0x0C400201
.L802578D4:
	li.u    $s0, 0x08000207
	li.l    $s0, 0x08000207
.L802578DC:
	lw      $a0, 0x0030($sp)
	move    $a1, $s0
	jal     player_80252CF4
	move    $a2, $0
.L802578EC:
	lw      $t4, 0x0030($sp)
	lw      $a0, 0x0088($t4)
	addiu   $a1, $t4, 0x003C
	jal     vecf_cpy
	addiu   $a0, $a0, 0x0020
	lw      $t6, 0x0030($sp)
	move    $a1, $0
	move    $a3, $0
	lw      $a0, 0x0088($t6)
	lh      $a2, 0x002E($t6)
	jal     vecs_set
	addiu   $a0, $a0, 0x001A
	lw      $t1, 0x0030($sp)
	move    $a2, $0
	move    $a3, $0
	lw      $a0, 0x0098($t1)
	lhu     $a1, 0x001A($t1)
	jal     vecs_set
	addiu   $a0, $a0, 0x0012
	lw      $t5, 0x0030($sp)
	li      $at, 0x0008
	lhu     $t3, 0x0018($t5)
	beq     $t3, $at, .L8025795C
	nop
	lw      $t7, 0x0030($sp)
	lhu     $t8, 0x0018($t7)
	addiu   $t9, $t8, 0x0001
	sh      $t9, 0x0018($t7)
.L8025795C:
	b       .L8025796C
	move    $v0, $0
	b       .L8025796C
	nop
.L8025796C:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

pl_demo_80257980:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x007C($t6)
	bnez    $t7, .L802579A8
	nop
	b       .L802579AC
	li      $s0, 0x00C2
.L802579A8:
	li      $s0, 0x003F
.L802579AC:
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	move    $a1, $s0
	lw      $t8, 0x0028($sp)
	lw      $a0, 0x0088($t8)
	addiu   $a1, $t8, 0x003C
	jal     vecf_cpy
	addiu   $a0, $a0, 0x0020
	lw      $t9, 0x0028($sp)
	move    $a1, $0
	move    $a3, $0
	lw      $a0, 0x0088($t9)
	lh      $a2, 0x002E($t9)
	jal     vecs_set
	addiu   $a0, $a0, 0x001A
	b       .L802579F8
	move    $v0, $0
	b       .L802579F8
	nop
.L802579F8:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_demo_80257A0C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	jal     player_802509B8
	li      $a1, 0x000E
	jal     pl_physics_802559B0
	lw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	li      $at, -0x0002
	lw      $t7, 0x0088($t6)
	lh      $t8, 0x0002($t7)
	and     $t9, $t8, $at
	sh      $t9, 0x0002($t7)
	lw      $t0, 0x0018($sp)
	lw      $t1, 0x001C($t0)
	beqz    $t1, .L80257A90
	nop
	lw      $t2, 0x0018($sp)
	lw      $t3, 0x001C($t2)
	addiu   $t4, $t3, -0x0001
	sw      $t4, 0x001C($t2)
	lw      $t5, 0x0018($sp)
	lw      $t6, 0x001C($t5)
	andi    $t8, $t6, 0xFFFF
	bnez    $t8, .L80257A90
	nop
	lw      $t9, 0x0018($sp)
	lw      $a1, 0x001C($t9)
	move    $a0, $t9
	srl     $t7, $a1, 16
	jal     game_8024A9CC
	move    $a1, $t7
.L80257A90:
	b       .L80257AA0
	move    $v0, $0
	b       .L80257AA0
	nop
.L80257AA0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_demo_80257AB0:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lhu     $t7, 0x0018($t6)
	addiu   $t8, $t7, 0x0001
	sh      $t8, 0x0018($t6)
	lw      $t9, 0x0028($sp)
	li      $at, 0x0002
	lhu     $t0, 0x0018($t9)
	bne     $t0, $at, .L80257AEC
	nop
	jal     obj_lib_802A4704
	nop
.L80257AEC:
	lw      $t1, 0x0028($sp)
	lhu     $t2, 0x0018($t1)
	slti    $at, $t2, 0x0009
	beqz    $at, .L80257B40
	nop
	lw      $t3, 0x0028($sp)
	li      $at, 0x1303
	lw      $t4, 0x0010($t3)
	bne     $t4, $at, .L80257B1C
	nop
	b       .L80257B20
	li      $s0, 0x00B2
.L80257B1C:
	li      $s0, 0x00C2
.L80257B20:
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	move    $a1, $s0
	lw      $t5, 0x0028($sp)
	lhu     $t7, 0x001A($t5)
	addiu   $t8, $t7, -0x0400
	b       .L80257CA4
	sh      $t8, 0x001A($t5)
.L80257B40:
	lw      $t6, 0x0028($sp)
	li      $at, 0x0009
	lhu     $t9, 0x0018($t6)
	bne     $t9, $at, .L80257B9C
	nop
	lw      $t0, 0x0028($sp)
	lw      $t1, 0x001C($t0)
	sw      $t1, 0x0024($sp)
	addiu   $t2, $sp, 0x0024
	lhu     $t3, 0x0000($t2)
	bnez    $t3, .L80257B84
	nop
	addiu   $t4, $sp, 0x0024
	jal     message_802D8C88
	lhu     $a0, 0x0002($t4)
	b       .L80257B94
	nop
.L80257B84:
	addiu   $t7, $sp, 0x0024
	lhu     $a0, 0x0000($t7)
	jal     message_802D8CC4
	lhu     $a1, 0x0002($t7)
.L80257B94:
	b       .L80257CA4
	nop
.L80257B9C:
	lw      $t8, 0x0028($sp)
	li      $at, 0x000A
	lhu     $t5, 0x0018($t8)
	bne     $t5, $at, .L80257BD8
	nop
	jal     message_802D8C6C
	nop
	bltz    $v0, .L80257BD0
	nop
	lw      $t6, 0x0028($sp)
	lhu     $t9, 0x0018($t6)
	addiu   $t0, $t9, -0x0001
	sh      $t0, 0x0018($t6)
.L80257BD0:
	b       .L80257CA4
	nop
.L80257BD8:
	lw      $t1, 0x0028($sp)
	lhu     $t2, 0x0018($t1)
	slti    $at, $t2, 0x0013
	beqz    $at, .L80257C00
	nop
	lw      $t3, 0x0028($sp)
	lhu     $t4, 0x001A($t3)
	addiu   $t7, $t4, 0x0400
	b       .L80257CA4
	sh      $t7, 0x001A($t3)
.L80257C00:
	lw      $t8, 0x0028($sp)
	li      $at, 0x0019
	lhu     $t5, 0x0018($t8)
	bne     $t5, $at, .L80257CA4
	nop
	jal     obj_lib_802A4728
	nop
	lui     $t9, %hi(game_8033B26E)
	lb      $t9, %lo(game_8033B26E)($t9)
	beqz    $t9, .L80257C3C
	nop
	lui     $at, %hi(game_8033B26E)
	sb      $0, %lo(game_8033B26E)($at)
	jal     bgm_stage_play
	li      $a0, 0x0004
.L80257C3C:
	lw      $t0, 0x0028($sp)
	li      $at, 0x1303
	lw      $t6, 0x0010($t0)
	bne     $t6, $at, .L80257C6C
	nop
	li.u    $a1, 0x380022C0
	li.l    $a1, 0x380022C0
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L80257CA4
	nop
.L80257C6C:
	lw      $t1, 0x0028($sp)
	li      $at, 0x132F
	lw      $t2, 0x0010($t1)
	bne     $t2, $at, .L80257C8C
	nop
	li.u    $s0, 0x04000440
	b       .L80257C94
	li.l    $s0, 0x04000440
.L80257C8C:
	li.u    $s0, 0x0C400201
	li.l    $s0, 0x0C400201
.L80257C94:
	lw      $a0, 0x0028($sp)
	move    $a1, $s0
	jal     player_80252CF4
	move    $a2, $0
.L80257CA4:
	lw      $t4, 0x0028($sp)
	move    $a2, $0
	move    $a3, $0
	lw      $a0, 0x0098($t4)
	lhu     $a1, 0x001A($t4)
	jal     vecs_set
	addiu   $a0, $a0, 0x0012
	b       .L80257CD0
	move    $v0, $0
	b       .L80257CD0
	nop
.L80257CD0:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_demo_80257CE4:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x0088($t6)
	sw      $t7, 0x0024($sp)
	li.u    $a1, 0x045BFF81
	li.l    $a1, 0x045BFF81
	lw      $a0, 0x0028($sp)
	jal     player_80251120
	li      $a2, 0x00010000
	lw      $t8, 0x0028($sp)
	lhu     $s0, 0x0018($t8)
	beqz    $s0, .L80257D44
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L80257D6C
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L80257E20
	nop
	b       .L80257E58
	nop
.L80257D44:
	jal     camera_8028BD34
	li      $a0, 0x0001
	jal     obj_lib_802A4704
	nop
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	li      $a1, 0x00C2
	lw      $t0, 0x0028($sp)
	li      $t9, 0x0001
	sh      $t9, 0x0018($t0)
.L80257D6C:
	lw      $t3, 0x0024($sp)
	li      $at, 0x000B
	lw      $t1, 0x0028($sp)
	lw      $t4, 0x0108($t3)
	lh      $t2, 0x002E($t1)
	div     $0, $t4, $at
	mflo    $t5
	addu    $t6, $t2, $t5
	sh      $t6, 0x002E($t1)
	lw      $t7, 0x0024($sp)
	li      $at, 0x41300000
	mtc1    $at, $f6
	lwc1    $f4, 0x010C($t7)
	lw      $t8, 0x0028($sp)
	div.s   $f8, $f4, $f6
	lwc1    $f10, 0x003C($t8)
	add.s   $f16, $f10, $f8
	swc1    $f16, 0x003C($t8)
	lw      $t9, 0x0024($sp)
	li      $at, 0x41300000
	mtc1    $at, $f4
	lwc1    $f18, 0x0110($t9)
	lw      $t0, 0x0028($sp)
	div.s   $f6, $f18, $f4
	lwc1    $f10, 0x0044($t0)
	add.s   $f8, $f10, $f6
	swc1    $f8, 0x0044($t0)
	lw      $t3, 0x0028($sp)
	lhu     $s0, 0x001A($t3)
	lhu     $t2, 0x001A($t3)
	xori    $t4, $s0, 0x000A
	sltiu   $t4, $t4, 0x0001
	move    $s0, $t4
	addiu   $t5, $t2, 0x0001
	beqz    $s0, .L80257E18
	sh      $t5, 0x001A($t3)
	lw      $t6, 0x0028($sp)
	lw      $t1, 0x0080($t6)
	jal     message_802D8D08
	lw      $a0, 0x0144($t1)
	lw      $t8, 0x0028($sp)
	li      $t7, 0x0002
	sh      $t7, 0x0018($t8)
.L80257E18:
	b       .L80257E58
	nop
.L80257E20:
	lui     $t9, %hi(_camera_bss+0x6B0)
	lw      $t9, %lo(_camera_bss+0x6B0)($t9)
	lbu     $t0, 0x0030($t9)
	bnez    $t0, .L80257E50
	nop
	jal     obj_lib_802A4728
	nop
	li.u    $a1, 0x0C400201
	li.l    $a1, 0x0C400201
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
.L80257E50:
	b       .L80257E58
	nop
.L80257E58:
	lw      $a0, 0x0024($sp)
	lw      $a1, 0x0028($sp)
	addiu   $a0, $a0, 0x0020
	jal     vecf_cpy
	addiu   $a1, $a1, 0x003C
	lw      $a0, 0x0024($sp)
	lw      $t4, 0x0028($sp)
	move    $a1, $0
	move    $a3, $0
	addiu   $a0, $a0, 0x001A
	jal     vecs_set
	lh      $a2, 0x002E($t4)
	b       .L80257E98
	move    $v0, $0
	b       .L80257E98
	nop
.L80257E98:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_demo_80257EAC:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0038($sp)
	lui     $t6, %hi(cont_1)
	lw      $t6, %lo(cont_1)($t6)
	lhu     $t7, 0x0010($t6)
	andi    $t8, $t7, 0x4000
	beqz    $t8, .L80257EE8
	nop
	li      $t9, 0x0004
	mtc1    $t9, $f4
	nop
	cvt.s.w $f6, $f4
	b       .L80257EFC
	swc1    $f6, 0x0020($sp)
.L80257EE8:
	li      $t0, 0x0001
	mtc1    $t0, $f8
	nop
	cvt.s.w $f10, $f8
	swc1    $f10, 0x0020($sp)
.L80257EFC:
	lui     $t1, %hi(cont_1)
	lw      $t1, %lo(cont_1)($t1)
	lhu     $t2, 0x0010($t1)
	andi    $t3, $t2, 0x0020
	beqz    $t3, .L80257F20
	nop
	lui     $at, %hi(pl_demo_803366D0)
	lwc1    $f16, %lo(pl_demo_803366D0)($at)
	swc1    $f16, 0x0020($sp)
.L80257F20:
	lw      $a0, 0x0038($sp)
	jal     player_802509B8
	li      $a1, 0x000E
	lw      $a1, 0x0038($sp)
	addiu   $a0, $sp, 0x0024
	jal     vecf_cpy
	addiu   $a1, $a1, 0x003C
	lui     $t4, %hi(cont_1)
	lw      $t4, %lo(cont_1)($t4)
	lhu     $t5, 0x0010($t4)
	andi    $t6, $t5, 0x0800
	beqz    $t6, .L80257F74
	nop
	li      $at, 0x41800000
	mtc1    $at, $f18
	lwc1    $f4, 0x0020($sp)
	addiu   $t7, $sp, 0x0024
	lwc1    $f8, 0x0004($t7)
	mul.s   $f6, $f18, $f4
	add.s   $f10, $f8, $f6
	swc1    $f10, 0x0004($t7)
.L80257F74:
	lui     $t8, %hi(cont_1)
	lw      $t8, %lo(cont_1)($t8)
	lhu     $t9, 0x0010($t8)
	andi    $t0, $t9, 0x0400
	beqz    $t0, .L80257FAC
	nop
	li      $at, 0x41800000
	mtc1    $at, $f16
	lwc1    $f18, 0x0020($sp)
	addiu   $t1, $sp, 0x0024
	lwc1    $f8, 0x0004($t1)
	mul.s   $f4, $f16, $f18
	sub.s   $f6, $f8, $f4
	swc1    $f6, 0x0004($t1)
.L80257FAC:
	lw      $t2, 0x0038($sp)
	mtc1    $0, $f16
	lwc1    $f10, 0x0020($t2)
	c.lt.s  $f16, $f10
	nop
	bc1f    .L80258048
	nop
	lw      $t3, 0x0038($sp)
	li      $at, 0x42000000
	mtc1    $at, $f18
	lwc1    $f8, 0x0020($sp)
	lhu     $t4, 0x0024($t3)
	lui     $at, %hi(math_sin)
	mul.s   $f4, $f18, $f8
	sra     $t5, $t4, 4
	sll     $t6, $t5, 2
	addu    $at, $at, $t6
	lwc1    $f6, %lo(math_sin)($at)
	addiu   $t7, $sp, 0x0024
	lwc1    $f16, 0x0000($t7)
	mul.s   $f10, $f4, $f6
	add.s   $f18, $f16, $f10
	swc1    $f18, 0x0000($t7)
	lw      $t8, 0x0038($sp)
	li      $at, 0x42000000
	mtc1    $at, $f8
	lwc1    $f4, 0x0020($sp)
	lhu     $t9, 0x0024($t8)
	lui     $at, %hi(math_cos)
	mul.s   $f6, $f8, $f4
	sra     $t0, $t9, 4
	sll     $t1, $t0, 2
	addu    $at, $at, $t1
	lwc1    $f16, %lo(math_cos)($at)
	addiu   $t2, $sp, 0x0024
	lwc1    $f18, 0x0008($t2)
	mul.s   $f10, $f6, $f16
	add.s   $f8, $f18, $f10
	swc1    $f8, 0x0008($t2)
.L80258048:
	addiu   $a0, $sp, 0x0024
	li      $a1, 0x42700000
	jal     player_80251A48
	li      $a2, 0x42480000
	addiu   $t3, $sp, 0x0024
	lwc1    $f12, 0x0000($t3)
	lwc1    $f14, 0x0004($t3)
	lw      $a2, 0x0008($t3)
	jal     map_80381900
	addiu   $a3, $sp, 0x0034
	swc1    $f0, 0x0030($sp)
	lw      $t4, 0x0034($sp)
	beqz    $t4, .L802580B8
	nop
	addiu   $t5, $sp, 0x0024
	lwc1    $f4, 0x0004($t5)
	lwc1    $f6, 0x0030($sp)
	c.lt.s  $f4, $f6
	nop
	bc1f    .L802580A8
	nop
	lwc1    $f16, 0x0030($sp)
	addiu   $t6, $sp, 0x0024
	swc1    $f16, 0x0004($t6)
.L802580A8:
	lw      $a0, 0x0038($sp)
	addiu   $a1, $sp, 0x0024
	jal     vecf_cpy
	addiu   $a0, $a0, 0x003C
.L802580B8:
	lw      $t7, 0x0038($sp)
	lh      $t8, 0x0024($t7)
	sh      $t8, 0x002E($t7)
	lw      $t9, 0x0038($sp)
	lw      $a0, 0x0088($t9)
	addiu   $a1, $t9, 0x003C
	jal     vecf_cpy
	addiu   $a0, $a0, 0x0020
	lw      $t0, 0x0038($sp)
	move    $a1, $0
	move    $a3, $0
	lw      $a0, 0x0088($t0)
	lh      $a2, 0x002E($t0)
	jal     vecs_set
	addiu   $a0, $a0, 0x001A
	lui     $t1, %hi(cont_1)
	lw      $t1, %lo(cont_1)($t1)
	li      $at, 0x8000
	lhu     $t2, 0x0012($t1)
	bne     $t2, $at, .L80258164
	nop
	lw      $t3, 0x0038($sp)
	lh      $t4, 0x0076($t3)
	lwc1    $f18, 0x0040($t3)
	addiu   $t5, $t4, -0x0064
	mtc1    $t5, $f10
	nop
	cvt.s.w $f8, $f10
	c.le.s  $f18, $f8
	nop
	bc1f    .L80258148
	nop
	li.u    $t6, 0x380022C0
	li.l    $t6, 0x380022C0
	b       .L80258154
	sw      $t6, 0x001C($sp)
.L80258148:
	li.u    $t8, 0x0C400201
	li.l    $t8, 0x0C400201
	sw      $t8, 0x001C($sp)
.L80258154:
	lw      $a0, 0x0038($sp)
	lw      $a1, 0x001C($sp)
	jal     player_80252CF4
	move    $a2, $0
.L80258164:
	b       .L80258174
	move    $v0, $0
	b       .L80258174
	nop
.L80258174:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

pl_demo_80258184:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lhu     $t7, 0x0018($t6)
	bnez    $t7, .L80258314
	nop
	lw      $t8, 0x0028($sp)
	li      $at, 0x0001
	lhu     $t9, 0x001A($t8)
	addiu   $t0, $t9, 0x0001
	sh      $t0, 0x001A($t8)
	lw      $t1, 0x0028($sp)
	lhu     $s0, 0x001A($t1)
	beq     $s0, $at, .L802581EC
	nop
	li      $at, 0x002A
	beq     $s0, $at, .L80258280
	nop
	li      $at, 0x0050
	beq     $s0, $at, .L802582A0
	nop
	b       .L8025830C
	nop
.L802581EC:
	lw      $t2, 0x0028($sp)
	la.u    $a2, o_13003868
	la.l    $a2, o_13003868
	li      $a1, 0x007A
	jal     obj_lib_8029EDCC
	lw      $a0, 0x0088($t2)
	jal     aud_se_lock
	nop
	lw      $t3, 0x0028($sp)
	lw      $t4, 0x001C($t3)
	andi    $t5, $t4, 0x0001
	beqz    $t5, .L80258230
	nop
	jal     Na_g_80322078
	nop
	b       .L80258278
	nop
.L80258230:
	lui     $t6, %hi(stage_index)
	lh      $t6, %lo(stage_index)($t6)
	li      $at, 0x001E
	beq     $t6, $at, .L80258250
	nop
	li      $at, 0x0021
	bne     $t6, $at, .L80258268
	nop
.L80258250:
	li      $a0, 0x0001
	li      $a1, 0x0F17
	jal     Na_BGM_play
	move    $a2, $0
	b       .L80258278
	nop
.L80258268:
	li      $a0, 0x0001
	li      $a1, 0x0F01
	jal     Na_BGM_play
	move    $a2, $0
.L80258278:
	b       .L8025830C
	nop
.L80258280:
	lw      $t7, 0x0028($sp)
	li.u    $a0, 0x240C8081
	li.l    $a0, 0x240C8081
	lw      $a1, 0x0088($t7)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
	b       .L8025830C
	nop
.L802582A0:
	lw      $t9, 0x0028($sp)
	lw      $t0, 0x001C($t9)
	andi    $t8, $t0, 0x0001
	bnez    $t8, .L802582C8
	nop
	lw      $a0, 0x0028($sp)
	jal     game_8024A9CC
	li      $a1, 0x0011
	b       .L80258304
	nop
.L802582C8:
	jal     obj_lib_802A4704
	nop
	lui     $t1, %hi(save_level)
	lbu     $t1, %lo(save_level)($t1)
	li      $at, 0x0007
	bne     $t1, $at, .L802582EC
	nop
	b       .L802582F0
	li      $s0, 0x000D
.L802582EC:
	li      $s0, 0x000E
.L802582F0:
	jal     message_802D8D48
	move    $a0, $s0
	lw      $t3, 0x0028($sp)
	li      $t2, 0x0001
	sh      $t2, 0x0018($t3)
.L80258304:
	b       .L8025830C
	nop
.L8025830C:
	b       .L80258404
	nop
.L80258314:
	lw      $t4, 0x0028($sp)
	li      $at, 0x0001
	lhu     $t5, 0x0018($t4)
	bne     $t5, $at, .L8025836C
	nop
	lui     $t6, %hi(message_803314A0)
	lw      $t6, %lo(message_803314A0)($t6)
	beqz    $t6, .L8025836C
	nop
	lui     $t7, %hi(message_803314A0)
	lw      $t7, %lo(message_803314A0)($t7)
	li      $at, 0x0001
	bne     $t7, $at, .L8025835C
	nop
	lui     $a0, %hi(save_index)
	lh      $a0, %lo(save_index)($a0)
	jal     save_file_write
	addiu   $a0, $a0, -0x0001
.L8025835C:
	lw      $t0, 0x0028($sp)
	li      $t9, 0x0002
	b       .L80258404
	sh      $t9, 0x0018($t0)
.L8025836C:
	lw      $t8, 0x0028($sp)
	li      $at, 0x0002
	lhu     $t1, 0x0018($t8)
	bne     $t1, $at, .L80258404
	nop
	jal     player_80250940
	move    $a0, $t8
	beqz    $v0, .L80258404
	nop
	jal     obj_lib_802A4728
	nop
	jal     aud_se_unlock
	nop
	jal     pl_demo_802572B0
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	lw      $t2, 0x0024($sp)
	beqz    $t2, .L802583D4
	nop
	li.u    $a1, 0x20001305
	li.l    $a1, 0x20001305
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	lw      $a2, 0x0024($sp)
	b       .L80258404
	nop
.L802583D4:
	lw      $t3, 0x002C($sp)
	beqz    $t3, .L802583EC
	nop
	li.u    $s0, 0x380022C0
	b       .L802583F4
	li.l    $s0, 0x380022C0
.L802583EC:
	li.u    $s0, 0x0C400201
	li.l    $s0, 0x0C400201
.L802583F4:
	lw      $a0, 0x0028($sp)
	move    $a1, $s0
	jal     player_80252CF4
	move    $a2, $0
.L80258404:
	b       .L8025840C
	nop
.L8025840C:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_demo_80258420:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
.if 0
	sw      $s0, 0x0018($sp)
.endif
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x0090($t6)
	lw      $t8, 0x0024($t7)
	lh      $t9, 0x0002($t8)
	sh      $t9, 0x002E($t6)
.if 0
	lw      $t0, 0x0028($sp)
	li      $at, 0x0002
	lhu     $t1, 0x0018($t0)
	bne     $t1, $at, .L80258460
	nop
	b       .L80258464
	li      $s0, 0x00CE
.L80258460:
	li      $s0, 0x00CD
.L80258464:
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	move    $a1, $s0
.else
	jal     pl_physics_802559B0
	lw      $a0, 0x0028($sp)
	jal     pl_staranime
	lw      $a0, 0x0028($sp)
.endif
	lw      $a0, 0x0028($sp)
	jal     pl_demo_80258184
	move    $a1, $0
.if 0
	lw      $t2, 0x0028($sp)
	li      $at, 0x0002
	lhu     $t3, 0x0018($t2)
	beq     $t3, $at, .L802584B0
	nop
	lhu     $t4, 0x001A($t2)
	slti    $at, $t4, 0x0028
	bnez    $at, .L802584B0
	nop
	lw      $t7, 0x0028($sp)
	li      $t5, 0x0002
	lw      $t8, 0x0098($t7)
	sb      $t5, 0x0006($t8)
.L802584B0:
	jal     pl_physics_802559B0
	lw      $a0, 0x0028($sp)
.endif
	b       .L802584C8
	move    $v0, $0
	b       .L802584C8
	nop
.L802584C8:
	lw      $ra, 0x001C($sp)
.if 0
	lw      $s0, 0x0018($sp)
.endif
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_demo_802584DC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
.if 0
	sw      $s0, 0x0018($sp)
.endif
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x0090($t6)
	lw      $t8, 0x0024($t7)
	lh      $t9, 0x0002($t8)
	sh      $t9, 0x002E($t6)
.if 0
	lw      $t0, 0x0028($sp)
	li      $at, 0x0002
	lhu     $t1, 0x0018($t0)
	bne     $t1, $at, .L8025851C
	nop
	b       .L80258520
	li      $s0, 0x00B4
.L8025851C:
	li      $s0, 0x00B3
.L80258520:
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	move    $a1, $s0
	lw      $t2, 0x0028($sp)
	lw      $a0, 0x0088($t2)
	addiu   $a1, $t2, 0x003C
	jal     vecf_cpy
	addiu   $a0, $a0, 0x0020
	lw      $t3, 0x0028($sp)
	move    $a1, $0
	move    $a3, $0
	lw      $a0, 0x0088($t3)
	lh      $a2, 0x002E($t3)
	jal     vecs_set
	addiu   $a0, $a0, 0x001A
.else
	jal     pl_staranime
	lw      $a0, 0x0028($sp)
.endif
	lw      $a0, 0x0028($sp)
	jal     pl_demo_80258184
	li      $a1, 0x0001
.if 0
	lw      $t4, 0x0028($sp)
	li      $at, 0x0002
	lhu     $t5, 0x0018($t4)
	beq     $t5, $at, .L8025859C
	nop
	lhu     $t7, 0x001A($t4)
	slti    $at, $t7, 0x003E
	bnez    $at, .L8025859C
	nop
	lw      $t9, 0x0028($sp)
	li      $t8, 0x0002
	lw      $t6, 0x0098($t9)
	sb      $t8, 0x0006($t6)
.L8025859C:
.endif
	b       .L802585AC
	move    $v0, $0
	b       .L802585AC
	nop
.L802585AC:
	lw      $ra, 0x001C($sp)
.if 0
	lw      $s0, 0x0018($sp)
.endif
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_demo_802585C0:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lh      $t7, 0x0076($t6)
	lwc1    $f4, 0x0040($t6)
	addiu   $t8, $t7, -0x0082
	mtc1    $t8, $f6
	nop
	cvt.s.w $f8, $f6
	c.lt.s  $f4, $f8
	nop
	bc1f    .L80258640
	nop
	lw      $t9, 0x0028($sp)
	li.u    $a0, 0x0430C081
	li.l    $a0, 0x0430C081
	lw      $a1, 0x0088($t9)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
	lw      $t0, 0x0028($sp)
	lw      $t1, 0x0008($t0)
	ori     $t2, $t1, 0x0040
	sw      $t2, 0x0008($t0)
	lw      $t3, 0x0028($sp)
	li      $a1, 0x1303
	move    $a0, $t3
	jal     player_80252CF4
	lw      $a2, 0x001C($t3)
	b       .L802586B8
	nop
.L80258640:
	lw      $a0, 0x0028($sp)
	jal     pl_physics_80256B24
	li      $a1, 0x0001
	li      $at, 0x0001
	bne     $v0, $at, .L8025869C
	nop
	li.u    $a1, 0x04088081
	li.l    $a1, 0x04088081
	jal     player_802514AC
	lw      $a0, 0x0028($sp)
	lw      $t4, 0x0028($sp)
	lw      $t5, 0x001C($t4)
	andi    $t6, $t5, 0x0001
	beqz    $t6, .L80258684
	nop
	b       .L80258688
	li      $s0, 0x1307
.L80258684:
	li      $s0, 0x1302
.L80258688:
	lw      $t7, 0x0028($sp)
	move    $a1, $s0
	move    $a0, $t7
	jal     player_80252CF4
	lw      $a2, 0x001C($t7)
.L8025869C:
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	li      $a1, 0x0056
	b       .L802586B8
	move    $v0, $0
	b       .L802586B8
	nop
.L802586B8:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_demo_802586CC:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	lw      $a0, 0x0020($sp)
	jal     player_802509B8
	lw      $a1, 0x0024($sp)
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x001C($sp)
	lw      $t7, 0x0028($sp)
	bne     $t6, $t7, .L8025870C
	nop
	lw      $a0, 0x0020($sp)
	jal     game_8024A9CC
	li      $a1, 0x0012
.L8025870C:
	lw      $t9, 0x0020($sp)
	li      $t8, 0x0008
	lw      $t0, 0x0098($t9)
	sb      $t8, 0x0005($t0)
	jal     pl_physics_802559B0
	lw      $a0, 0x0020($sp)
	b       .L80258734
	lw      $v0, 0x001C($sp)
	b       .L80258734
	nop
.L80258734:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_demo_80258744:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0100
	beqz    $t8, .L80258780
	nop
	li.u    $a1, 0x00021314
	li.l    $a1, 0x00021314
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L802587DC
	nop
.L80258780:
	li.u    $a1, 0x2415FF81
	li.l    $a1, 0x2415FF81
	lw      $a0, 0x0018($sp)
	jal     player_80251120
	li      $a2, 0x00010000
	lw      $a0, 0x0018($sp)
	li      $a1, 0x0032
	jal     pl_demo_802586CC
	li      $a2, 0x0050
	lw      $t9, 0x0018($sp)
	li      $at, 0x004D
	lw      $t0, 0x0088($t9)
	lh      $t1, 0x0040($t0)
	bne     $t1, $at, .L802587CC
	nop
	li.u    $a1, 0x04188081
	li.l    $a1, 0x04188081
	jal     player_802514AC
	lw      $a0, 0x0018($sp)
.L802587CC:
	b       .L802587DC
	move    $v0, $0
	b       .L802587DC
	nop
.L802587DC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_demo_802587EC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	li.u    $a1, 0x2415FF81
	li.l    $a1, 0x2415FF81
	lw      $a0, 0x0018($sp)
	jal     player_80251120
	li      $a2, 0x00010000
	lw      $a0, 0x0018($sp)
	li      $a1, 0x0079
	jal     pl_demo_802586CC
	li      $a2, 0x002B
	b       .L8025882C
	move    $v0, $0
	b       .L8025882C
	nop
.L8025882C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_demo_8025883C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	li.u    $a1, 0x2415FF81
	li.l    $a1, 0x2415FF81
	lw      $a0, 0x0018($sp)
	jal     player_80251120
	li      $a2, 0x00010000
	lw      $a0, 0x0018($sp)
	li      $a1, 0x002F
	jal     pl_demo_802586CC
	li      $a2, 0x0056
	b       .L8025887C
	move    $v0, $0
	b       .L8025887C
	nop
.L8025887C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_demo_8025888C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	li.u    $a1, 0x2415FF81
	li.l    $a1, 0x2415FF81
	lw      $a0, 0x0018($sp)
	jal     player_80251120
	li      $a2, 0x00010000
	lw      $a0, 0x0018($sp)
	li      $a1, 0x0003
	jal     pl_demo_802586CC
	li      $a2, 0x0036
	li      $at, 0x0028
	bne     $v0, $at, .L802588D8
	nop
	li.u    $a1, 0x04188081
	li.l    $a1, 0x04188081
	jal     player_80251574
	lw      $a0, 0x0018($sp)
.L802588D8:
	b       .L802588E8
	move    $v0, $0
	b       .L802588E8
	nop
.L802588E8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_demo_802588F8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	li.u    $a1, 0x2415FF81
	li.l    $a1, 0x2415FF81
	lw      $a0, 0x0018($sp)
	jal     player_80251120
	li      $a2, 0x00010000
	lw      $a0, 0x0018($sp)
	li      $a1, 0x002E
	jal     pl_demo_802586CC
	li      $a2, 0x0025
	li      $at, 0x0025
	bne     $v0, $at, .L80258944
	nop
	li.u    $a1, 0x04188081
	li.l    $a1, 0x04188081
	jal     player_80251574
	lw      $a0, 0x0018($sp)
.L80258944:
	b       .L80258954
	move    $v0, $0
	b       .L80258954
	nop
.L80258954:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_demo_80258964:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lhu     $t7, 0x0018($t6)
	bnez    $t7, .L802589A4
	nop
	lw      $a0, 0x0018($sp)
	jal     player_802509B8
	li      $a1, 0x0076
	lw      $a0, 0x0018($sp)
	jal     player_80250C7C
	li      $a1, 0x003C
	lw      $t9, 0x0018($sp)
	li      $t8, 0x0001
	sh      $t8, 0x0018($t9)
.L802589A4:
	lw      $t0, 0x0018($sp)
	li      $at, 0x0001
	lhu     $t1, 0x0018($t0)
	bne     $t1, $at, .L80258A3C
	nop
	lw      $t2, 0x0018($sp)
	li      $at, 0x42C80000
	mtc1    $at, $f6
	lwc1    $f4, 0x00C0($t2)
	c.le.s  $f6, $f4
	nop
	bc1f    .L802589EC
	nop
	li.u    $a1, 0x2410C081
	li.l    $a1, 0x2410C081
	lw      $a0, 0x0018($sp)
	jal     player_80251120
	li      $a2, 0x00010000
.L802589EC:
	lw      $t3, 0x0018($sp)
	li      $at, 0x40A00000
	mtc1    $at, $f10
	lwc1    $f8, 0x00C0($t3)
	li      $at, 0x43340000
	mtc1    $at, $f4
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x00C0($t3)
	lw      $t4, 0x0018($sp)
	lwc1    $f18, 0x00C0($t4)
	c.le.s  $f4, $f18
	nop
	bc1f    .L80258A3C
	nop
	lw      $a0, 0x0018($sp)
	jal     game_8024A9CC
	li      $a1, 0x0012
	lw      $t6, 0x0018($sp)
	li      $t5, 0x0002
	sh      $t5, 0x0018($t6)
.L80258A3C:
	jal     pl_physics_80255A34
	lw      $a0, 0x0018($sp)
	lw      $t7, 0x0018($sp)
	li.u    $a0, 0x14140001
	li.l    $a0, 0x14140001
	lw      $a1, 0x0088($t7)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
	b       .L80258A6C
	move    $v0, $0
	b       .L80258A6C
	nop
.L80258A6C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_demo_80258A7C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	li.u    $a1, 0x2415FF81
	li.l    $a1, 0x2415FF81
	lw      $a0, 0x0028($sp)
	jal     player_80251120
	li      $a2, 0x00010000
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	li      $a1, 0x000E
	lw      $t6, 0x0028($sp)
	li      $at, -0x0002
	lw      $t7, 0x0088($t6)
	lh      $t8, 0x0002($t7)
	and     $t9, $t8, $at
	sh      $t9, 0x0002($t7)
	lw      $t1, 0x0028($sp)
	li      $t0, 0x00FF
	sh      $t0, 0x00AE($t1)
	lw      $t2, 0x0028($sp)
	lhu     $s0, 0x001A($t2)
	lhu     $t4, 0x001A($t2)
	xori    $t3, $s0, 0x003C
	sltiu   $t3, $t3, 0x0001
	move    $s0, $t3
	addiu   $t5, $t4, 0x0001
	beqz    $s0, .L80258B00
	sh      $t5, 0x001A($t2)
	lw      $a0, 0x0028($sp)
	jal     game_8024A9CC
	li      $a1, 0x0012
.L80258B00:
	b       .L80258B10
	move    $v0, $0
	b       .L80258B10
	nop
.L80258B10:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_demo_80258B24:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	sw      $a3, 0x002C($sp)
	lw      $a0, 0x0020($sp)
	jal     player_80251708
	lw      $a1, 0x002C($sp)
	lw      $a0, 0x0020($sp)
	jal     player_802509B8
	lw      $a1, 0x0028($sp)
	lw      $a0, 0x0020($sp)
	jal     pl_physics_80256B24
	move    $a1, $0
	xori    $t6, $v0, 0x0001
	sltiu   $t6, $t6, 0x0001
	sw      $t6, 0x001C($sp)
	lw      $t7, 0x001C($sp)
	beqz    $t7, .L80258B88
	nop
	lw      $a0, 0x0020($sp)
	lw      $a1, 0x0024($sp)
	jal     player_80252CF4
	move    $a2, $0
.L80258B88:
	b       .L80258B98
	lw      $v0, 0x001C($sp)
	b       .L80258B98
	nop
.L80258B98:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_demo_80258BA8:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x0080($t6)
	lw      $t8, 0x00C8($t7)
	sh      $t8, 0x002E($t6)
	lw      $t9, 0x0028($sp)
	lui     $at, %hi(math_cos)
	lhu     $t0, 0x002E($t9)
	lw      $t3, 0x0080($t9)
	sra     $t1, $t0, 4
	sll     $t2, $t1, 2
	addu    $at, $at, $t2
	lwc1    $f4, %lo(math_cos)($at)
	li      $at, 0x42960000
	mtc1    $at, $f6
	lwc1    $f10, 0x00A0($t3)
	mul.s   $f8, $f4, $f6
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x003C($t9)
	lw      $t4, 0x0028($sp)
	lui     $at, %hi(math_sin)
	lhu     $t5, 0x002E($t4)
	lw      $t6, 0x0080($t4)
	sra     $t7, $t5, 4
	sll     $t8, $t7, 2
	addu    $at, $at, $t8
	lwc1    $f18, %lo(math_sin)($at)
	li      $at, 0x42960000
	mtc1    $at, $f4
	lwc1    $f8, 0x00A8($t6)
	mul.s   $f6, $f18, $f4
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x0044($t4)
	lw      $t0, 0x0028($sp)
	lw      $t1, 0x001C($t0)
	andi    $t2, $t1, 0x0002
	beqz    $t2, .L80258C60
	nop
	lw      $t3, 0x0028($sp)
	li      $at, 0x8000
	lh      $t9, 0x002E($t3)
	addu    $t5, $t9, $at
	sh      $t5, 0x002E($t3)
.L80258C60:
	lw      $t7, 0x0028($sp)
	lhu     $t8, 0x001A($t7)
	bnez    $t8, .L80258C94
	nop
	la.u    $a2, o_13001BB4
	la.l    $a2, o_13001BB4
	lw      $a0, 0x0028($sp)
	li      $a1, 0x00C8
	jal     pl_demo_80257450
	move    $a3, $0
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	li      $a1, 0x0061
.L80258C94:
	lw      $t6, 0x0028($sp)
	li      $at, 0x004F
	lw      $t4, 0x0088($t6)
	lh      $s0, 0x0040($t4)
	beq     $s0, $at, .L80258CC0
	nop
	li      $at, 0x006F
	beq     $s0, $at, .L80258CE0
	nop
	b       .L80258D00
	nop
.L80258CC0:
	lw      $t0, 0x0028($sp)
	li.u    $a0, 0x30420081
	li.l    $a0, 0x30420081
	lw      $a1, 0x0088($t0)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
	b       .L80258D00
	nop
.L80258CE0:
	lw      $t1, 0x0028($sp)
	li.u    $a0, 0x303B0081
	li.l    $a0, 0x303B0081
	lw      $a1, 0x0088($t1)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
	b       .L80258D00
	nop
.L80258D00:
	jal     player_80251020
	lw      $a0, 0x0028($sp)
	jal     pl_physics_802559B0
	lw      $a0, 0x0028($sp)
	jal     player_80250940
	lw      $a0, 0x0028($sp)
	beqz    $v0, .L80258D78
	nop
	lw      $t2, 0x0028($sp)
	li      $at, 0x0001
	lw      $t9, 0x0080($t2)
	lw      $t5, 0x0188($t9)
	sra     $t3, $t5, 24
	bne     $t3, $at, .L80258D54
	nop
	jal     save_flag_set
	li      $a0, 0x0080
	jal     save_flag_clr
	li      $a0, 0x0020
	b       .L80258D64
	nop
.L80258D54:
	jal     save_flag_set
	li      $a0, 0x0040
	jal     save_flag_clr
	li      $a0, 0x0010
.L80258D64:
	li.u    $a1, 0x04000440
	li.l    $a1, 0x04000440
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
.L80258D78:
	lw      $t7, 0x0028($sp)
	lhu     $t8, 0x001A($t7)
	addiu   $t6, $t8, 0x0001
	sh      $t6, 0x001A($t7)
	b       .L80258D98
	move    $v0, $0
	b       .L80258D98
	nop
.L80258D98:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_demo_80258DAC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lhu     $s0, 0x0018($t6)
	beqz    $s0, .L80258DF8
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L80258E74
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L80258EB4
	nop
	li      $at, 0x0003
	beq     $s0, $at, .L80258EFC
	nop
	b       .L80258F40
	nop
.L80258DF8:
	lw      $t7, 0x0028($sp)
	lw      $t8, 0x0080($t7)
	lw      $t9, 0x00C8($t8)
	sh      $t9, 0x002E($t7)
	lw      $t0, 0x0028($sp)
	lw      $t1, 0x001C($t0)
	andi    $t2, $t1, 0x0002
	beqz    $t2, .L80258E30
	nop
	lw      $t3, 0x0028($sp)
	li      $at, 0x8000
	lh      $t4, 0x002E($t3)
	addu    $t5, $t4, $at
	sh      $t5, 0x002E($t3)
.L80258E30:
	lw      $t6, 0x0028($sp)
	lwc1    $f4, 0x003C($t6)
	lw      $t8, 0x0088($t6)
	swc1    $f4, 0x010C($t8)
	lw      $t9, 0x0028($sp)
	lwc1    $f6, 0x0044($t9)
	lw      $t7, 0x0088($t9)
	swc1    $f6, 0x0110($t7)
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	li      $a1, 0x009C
	lw      $t0, 0x0028($sp)
	lhu     $t1, 0x0018($t0)
	addiu   $t2, $t1, 0x0001
	sh      $t2, 0x0018($t0)
	b       .L80258F40
	nop
.L80258E74:
	jal     player_80250940
	lw      $a0, 0x0028($sp)
	beqz    $v0, .L80258EAC
	nop
	lw      $t4, 0x0028($sp)
	la.u    $a2, o_13002F40
	la.l    $a2, o_13002F40
	li      $a1, 0x007A
	jal     obj_lib_8029EDCC
	lw      $a0, 0x0088($t4)
	lw      $t5, 0x0028($sp)
	lhu     $t3, 0x0018($t5)
	addiu   $t6, $t3, 0x0001
	sh      $t6, 0x0018($t5)
.L80258EAC:
	b       .L80258F40
	nop
.L80258EB4:
	lw      $t8, 0x0028($sp)
	lhu     $s0, 0x001A($t8)
	lhu     $t7, 0x001A($t8)
	xori    $t9, $s0, 0x0046
	sltiu   $t9, $t9, 0x0001
	move    $s0, $t9
	addiu   $t1, $t7, 0x0001
	beqz    $s0, .L80258EF4
	sh      $t1, 0x001A($t8)
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	li      $a1, 0x009D
	lw      $t2, 0x0028($sp)
	lhu     $t0, 0x0018($t2)
	addiu   $t4, $t0, 0x0001
	sh      $t4, 0x0018($t2)
.L80258EF4:
	b       .L80258F40
	nop
.L80258EFC:
	jal     player_80250940
	lw      $a0, 0x0028($sp)
	beqz    $v0, .L80258F38
	nop
	lw      $t3, 0x0028($sp)
	jal     collision_8024E2FC
	lw      $a0, 0x0080($t3)
	move    $s0, $v0
	jal     save_flag_set
	move    $a0, $s0
	li.u    $a1, 0x20001305
	li.l    $a1, 0x20001305
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	li      $a2, 0x0026
.L80258F38:
	b       .L80258F40
	nop
.L80258F40:
	lw      $t6, 0x0028($sp)
	lw      $t5, 0x0088($t6)
	lwc1    $f8, 0x010C($t5)
	swc1    $f8, 0x003C($t6)
	lw      $t9, 0x0028($sp)
	lw      $t7, 0x0088($t9)
	lwc1    $f10, 0x0110($t7)
	swc1    $f10, 0x0044($t9)
	jal     player_80251020
	lw      $a0, 0x0028($sp)
	jal     pl_physics_802559B0
	lw      $a0, 0x0028($sp)
	b       .L80258F80
	move    $v0, $0
	b       .L80258F80
	nop
.L80258F80:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_demo_80258F94:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0030($sp)
	lhu     $s0, 0x001A($t6)
	lhu     $t8, 0x001A($t6)
	sltiu   $t7, $s0, 0x0001
	move    $s0, $t7
	addiu   $t9, $t8, 0x0001
	beqz    $s0, .L802590D4
	sh      $t9, 0x001A($t6)
	lw      $t1, 0x0030($sp)
	li      $t0, 0x00010000
	lw      $t2, 0x0078($t1)
	sw      $t0, 0x0134($t2)
	lw      $t3, 0x0030($sp)
	lw      $t4, 0x0080($t3)
	lw      $t5, 0x00C8($t4)
	addiu   $t7, $t5, 0x1555
	sh      $t7, 0x0026($sp)
	lw      $t8, 0x0030($sp)
	lw      $t9, 0x001C($t8)
	andi    $t6, $t9, 0x0002
	beqz    $t6, .L80259008
	nop
	lh      $t1, 0x0026($sp)
	addiu   $t0, $t1, 0x5556
	sh      $t0, 0x0026($sp)
.L80259008:
	lhu     $t2, 0x0026($sp)
	li      $at, 0x43160000
	mtc1    $at, $f4
	sra     $t3, $t2, 4
	sll     $t4, $t3, 2
	lui     $at, %hi(math_sin)
	addu    $at, $at, $t4
	lwc1    $f6, %lo(math_sin)($at)
	lw      $t5, 0x0030($sp)
	mul.s   $f8, $f4, $f6
	lw      $t7, 0x0080($t5)
	lwc1    $f18, 0x003C($t5)
	lwc1    $f10, 0x00A0($t7)
	add.s   $f16, $f10, $f8
	sub.s   $f4, $f16, $f18
	swc1    $f4, 0x002C($sp)
	lhu     $t8, 0x0026($sp)
	li      $at, 0x43160000
	mtc1    $at, $f6
	sra     $t9, $t8, 4
	sll     $t6, $t9, 2
	lui     $at, %hi(math_cos)
	addu    $at, $at, $t6
	lwc1    $f10, %lo(math_cos)($at)
	lw      $t1, 0x0030($sp)
	mul.s   $f8, $f6, $f10
	lw      $t0, 0x0080($t1)
	lwc1    $f4, 0x0044($t1)
	lwc1    $f16, 0x00A8($t0)
	add.s   $f18, $f16, $f8
	sub.s   $f6, $f18, $f4
	swc1    $f6, 0x0028($sp)
	li      $at, 0x41A00000
	mtc1    $at, $f16
	lwc1    $f10, 0x002C($sp)
	lw      $t2, 0x0030($sp)
	div.s   $f8, $f10, $f16
	lw      $t3, 0x0088($t2)
	swc1    $f8, 0x010C($t3)
	li      $at, 0x41A00000
	mtc1    $at, $f4
	lwc1    $f18, 0x0028($sp)
	lw      $t4, 0x0030($sp)
	div.s   $f6, $f18, $f4
	lw      $t7, 0x0088($t4)
	swc1    $f6, 0x0110($t7)
	lwc1    $f12, 0x0028($sp)
	jal     atan2
	lwc1    $f14, 0x002C($sp)
	lw      $t5, 0x0030($sp)
	sh      $v0, 0x002E($t5)
.L802590D4:
	lw      $t8, 0x0030($sp)
	lhu     $t9, 0x001A($t8)
	slti    $at, $t9, 0x000F
	beqz    $at, .L802590FC
	nop
	lw      $a0, 0x0030($sp)
	jal     player_802509B8
	li      $a1, 0x00C2
	b       .L80259210
	nop
.L802590FC:
	lw      $t6, 0x0030($sp)
	lhu     $t0, 0x001A($t6)
	slti    $at, $t0, 0x0023
	beqz    $at, .L8025915C
	nop
	lw      $t1, 0x0030($sp)
	lw      $t2, 0x0088($t1)
	lwc1    $f10, 0x003C($t1)
	lwc1    $f16, 0x010C($t2)
	add.s   $f8, $f10, $f16
	swc1    $f8, 0x003C($t1)
	lw      $t3, 0x0030($sp)
	lw      $t4, 0x0088($t3)
	lwc1    $f18, 0x0044($t3)
	lwc1    $f4, 0x0110($t4)
	add.s   $f6, $f18, $f4
	swc1    $f6, 0x0044($t3)
	li.u    $a2, 0x00028000
	li.l    $a2, 0x00028000
	lw      $a0, 0x0030($sp)
	jal     player_80250B04
	li      $a1, 0x0048
	b       .L80259210
	nop
.L8025915C:
	lw      $t7, 0x0030($sp)
	lw      $t5, 0x0080($t7)
	lw      $t8, 0x00C8($t5)
	sh      $t8, 0x002E($t7)
	lw      $t9, 0x0030($sp)
	lw      $t6, 0x001C($t9)
	andi    $t0, $t6, 0x0002
	beqz    $t0, .L80259194
	nop
	lw      $t2, 0x0030($sp)
	li      $at, 0x8000
	lh      $t1, 0x002E($t2)
	addu    $t4, $t1, $at
	sh      $t4, 0x002E($t2)
.L80259194:
	lw      $t3, 0x0030($sp)
	li      $at, 0x41400000
	mtc1    $at, $f10
	lhu     $t5, 0x002E($t3)
	lui     $at, %hi(math_sin)
	lwc1    $f18, 0x003C($t3)
	sra     $t8, $t5, 4
	sll     $t7, $t8, 2
	addu    $at, $at, $t7
	lwc1    $f16, %lo(math_sin)($at)
	mul.s   $f8, $f10, $f16
	add.s   $f4, $f18, $f8
	swc1    $f4, 0x003C($t3)
	lw      $t9, 0x0030($sp)
	li      $at, 0x41400000
	mtc1    $at, $f6
	lhu     $t6, 0x002E($t9)
	lui     $at, %hi(math_cos)
	lwc1    $f18, 0x0044($t9)
	sra     $t0, $t6, 4
	sll     $t1, $t0, 2
	addu    $at, $at, $t1
	lwc1    $f10, %lo(math_cos)($at)
	mul.s   $f16, $f6, $f10
	add.s   $f8, $f18, $f16
	swc1    $f8, 0x0044($t9)
	li.u    $a2, 0x00028000
	li.l    $a2, 0x00028000
	lw      $a0, 0x0030($sp)
	jal     player_80250B04
	li      $a1, 0x0048
.L80259210:
	jal     pl_physics_802559B0
	lw      $a0, 0x0030($sp)
	lw      $t4, 0x0030($sp)
	li      $at, 0x0030
	lhu     $t2, 0x001A($t4)
	bne     $t2, $at, .L80259240
	nop
	li.u    $a1, 0x0C400201
	li.l    $a1, 0x0C400201
	lw      $a0, 0x0030($sp)
	jal     player_80252CF4
	move    $a2, $0
.L80259240:
	b       .L80259250
	move    $v0, $0
	b       .L80259250
	nop
.L80259250:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

pl_demo_80259264:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lhu     $t7, 0x001A($t6)
	bnez    $t7, .L802592D4
	nop
	lw      $t8, 0x0018($sp)
	lw      $t9, 0x001C($t8)
	andi    $t0, $t9, 0x0001
	beqz    $t0, .L802592B8
	nop
	lw      $t2, 0x0018($sp)
	li      $t1, 0x00010000
	lw      $t3, 0x0078($t2)
	sw      $t1, 0x0134($t3)
	lw      $a0, 0x0018($sp)
	jal     player_802509B8
	li      $a1, 0x005F
	b       .L802592D4
	nop
.L802592B8:
	lw      $t5, 0x0018($sp)
	li      $t4, 0x00020000
	lw      $t6, 0x0078($t5)
	sw      $t4, 0x0134($t6)
	lw      $a0, 0x0018($sp)
	jal     player_802509B8
	li      $a1, 0x0060
.L802592D4:
	lw      $t7, 0x0018($sp)
	lw      $t8, 0x0080($t7)
	lw      $t9, 0x00C8($t8)
	sh      $t9, 0x002E($t7)
	lw      $t0, 0x0018($sp)
	lw      $t2, 0x0080($t0)
	lwc1    $f4, 0x00A0($t2)
	swc1    $f4, 0x003C($t0)
	lw      $t1, 0x0018($sp)
	lw      $t3, 0x0080($t1)
	lwc1    $f6, 0x00A8($t3)
	swc1    $f6, 0x0044($t1)
	jal     player_80251020
	lw      $a0, 0x0018($sp)
	jal     pl_physics_802559B0
	lw      $a0, 0x0018($sp)
	lw      $t5, 0x0018($sp)
	lw      $t4, 0x001C($t5)
	andi    $t6, $t4, 0x0004
	beqz    $t6, .L80259350
	nop
	lw      $t8, 0x0018($sp)
	li      $at, 0x0010
	lhu     $t9, 0x001A($t8)
	bne     $t9, $at, .L80259348
	nop
	lw      $a0, 0x0018($sp)
	jal     game_8024A9CC
	li      $a1, 0x0003
.L80259348:
	b       .L8025939C
	nop
.L80259350:
	jal     player_80250940
	lw      $a0, 0x0018($sp)
	beqz    $v0, .L8025939C
	nop
	lw      $t7, 0x0018($sp)
	lw      $t2, 0x001C($t7)
	andi    $t0, $t2, 0x0002
	beqz    $t0, .L80259388
	nop
	lw      $t3, 0x0018($sp)
	li      $at, 0x8000
	lh      $t1, 0x002E($t3)
	addu    $t5, $t1, $at
	sh      $t5, 0x002E($t3)
.L80259388:
	li.u    $a1, 0x0C400201
	li.l    $a1, 0x0C400201
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
.L8025939C:
	lw      $t4, 0x0018($sp)
	lhu     $t6, 0x001A($t4)
	addiu   $t8, $t6, 0x0001
	sh      $t8, 0x001A($t4)
	b       .L802593BC
	move    $v0, $0
	b       .L802593BC
	nop
.L802593BC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_demo_802593CC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lhu     $t7, 0x0018($t6)
	bnez    $t7, .L80259434
	nop
	lw      $t9, 0x0018($sp)
	li      $t8, 0x0001
	sh      $t8, 0x0018($t9)
	lw      $t0, 0x0018($sp)
	lw      $t1, 0x001C($t0)
	andi    $t2, $t1, 0x0001
	beqz    $t2, .L8025941C
	nop
	lw      $t4, 0x0018($sp)
	li      $t3, 0x00040000
	lw      $t5, 0x0080($t4)
	b       .L8025942C
	sw      $t3, 0x0134($t5)
.L8025941C:
	lw      $t7, 0x0018($sp)
	li      $t6, 0x00080000
	lw      $t8, 0x0080($t7)
	sw      $t6, 0x0134($t8)
.L8025942C:
	b       .L802594A0
	nop
.L80259434:
	lw      $t9, 0x0018($sp)
	lw      $t0, 0x0080($t9)
	lw      $t1, 0x014C($t0)
	bnez    $t1, .L802594A0
	nop
	lui     $t2, %hi(game_8033B26E)
	lb      $t2, %lo(game_8033B26E)($t2)
	li      $at, 0x0001
	bne     $t2, $at, .L8025948C
	nop
	lui     $t4, %hi(stage_index)
	lh      $t4, %lo(stage_index)($t4)
	li      $at, 0x0006
	bne     $t4, $at, .L8025948C
	nop
	li.u    $a1, 0x20001305
	li.l    $a1, 0x20001305
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	li      $a2, 0x0015
	b       .L802594A0
	nop
.L8025948C:
	li.u    $a1, 0x0C400201
	li.l    $a1, 0x0C400201
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
.L802594A0:
	lw      $a0, 0x0018($sp)
	jal     player_802509B8
	li      $a1, 0x00C2
	jal     pl_physics_802559B0
	lw      $a0, 0x0018($sp)
	b       .L802594C4
	move    $v0, $0
	b       .L802594C4
	nop
.L802594C4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_demo_802594D4:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x0088($t6)
	sw      $t7, 0x0024($sp)
	lw      $t8, 0x0028($sp)
	lhu     $s0, 0x001A($t8)
	lhu     $t0, 0x001A($t8)
	slti    $t9, $s0, 0x000B
	move    $s0, $t9
	addiu   $t1, $t0, 0x0001
	beqz    $s0, .L8025952C
	sh      $t1, 0x001A($t8)
	lw      $t2, 0x0024($sp)
	li      $at, -0x0002
	lh      $t3, 0x0002($t2)
	and     $t4, $t3, $at
	sh      $t4, 0x0002($t2)
	b       .L802595F4
	move    $v0, $0
.L8025952C:
	lw      $t5, 0x0024($sp)
	lh      $t6, 0x0002($t5)
	ori     $t7, $t6, 0x0001
	sh      $t7, 0x0002($t5)
	li.u    $a1, 0x24048081
	li.l    $a1, 0x24048081
	lw      $a0, 0x0028($sp)
	jal     player_80251120
	li      $a2, 0x00020000
	lui     $t9, %hi(stage_index)
	lh      $t9, %lo(stage_index)($t9)
	li      $at, 0x000D
	bne     $t9, $at, .L802595A8
	nop
	lui     $t0, %hi(scene_index)
	lh      $t0, %lo(scene_index)($t0)
	li      $at, 0x0002
	bne     $t0, $at, .L80259594
	nop
	li.u    $a1, 0x7017A081
	li.l    $a1, 0x7017A081
	lw      $a0, 0x0028($sp)
	jal     player_80251120
	li      $a2, 0x00010000
	b       .L802595A8
	nop
.L80259594:
	li.u    $a1, 0x7016A081
	li.l    $a1, 0x7016A081
	lw      $a0, 0x0028($sp)
	jal     player_80251120
	li      $a2, 0x00010000
.L802595A8:
	li.u    $a1, 0x0C000230
	li.l    $a1, 0x0C000230
	lw      $a0, 0x0028($sp)
	li      $a2, 0x004D
	jal     pl_demo_80258B24
	li      $a3, 0x41000000
	beqz    $v0, .L802595E4
	nop
	lw      $a0, 0x0028($sp)
	jal     player_80251708
	li      $a1, 0x0000
	li.u    $a1, 0x04088081
	li.l    $a1, 0x04088081
	jal     player_802514AC
	lw      $a0, 0x0028($sp)
.L802595E4:
	b       .L802595F4
	move    $v0, $0
	b       .L802595F4
	nop
.L802595F4:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_demo_80259608:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lh      $t7, 0x0076($t6)
	lwc1    $f4, 0x0040($t6)
	addiu   $t8, $t7, -0x0064
	mtc1    $t8, $f6
	nop
	cvt.s.w $f8, $f6
	c.lt.s  $f4, $f8
	nop
	bc1f    .L80259658
	nop
	jal     game_8024983C
	move    $a0, $0
	jal     player_80253488
	lw      $a0, 0x0018($sp)
	b       .L80259730
	nop
.L80259658:
	lw      $t9, 0x0018($sp)
	move    $a0, $t9
	jal     player_80251708
	lw      $a1, 0x0054($t9)
	lw      $a0, 0x0018($sp)
	jal     pl_physics_80256B24
	move    $a1, $0
	li      $at, 0x0001
	bne     $v0, $at, .L802596A0
	nop
	li.u    $a1, 0x04088081
	li.l    $a1, 0x04088081
	jal     player_802514AC
	lw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	li      $a1, 0x1325
	jal     player_80252CF4
	move    $a2, $0
.L802596A0:
	lw      $t0, 0x0018($sp)
	lhu     $t1, 0x0018($t0)
	bnez    $t1, .L80259708
	nop
	lwc1    $f10, 0x0040($t0)
	lwc1    $f16, 0x0070($t0)
	li      $at, 0x43960000
	mtc1    $at, $f6
	sub.s   $f18, $f10, $f16
	c.lt.s  $f6, $f18
	nop
	bc1f    .L80259708
	nop
	lw      $a0, 0x0018($sp)
	jal     player_802509B8
	li      $a1, 0x006F
	bnez    $v0, .L80259700
	nop
	lw      $t2, 0x0018($sp)
	li.u    $a0, 0x04378081
	li.l    $a0, 0x04378081
	lw      $a1, 0x0088($t2)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
.L80259700:
	b       .L80259720
	nop
.L80259708:
	lw      $t4, 0x0018($sp)
	li      $t3, 0x0001
	sh      $t3, 0x0018($t4)
	lw      $a0, 0x0018($sp)
	jal     player_802509B8
	li      $a1, 0x0056
.L80259720:
	b       .L80259730
	move    $v0, $0
	b       .L80259730
	nop
.L80259730:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_demo_80259740:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     pl_physics_802559B0
	lw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	jal     player_802509B8
	li      $a1, 0x0057
	jal     player_80250940
	lw      $a0, 0x0018($sp)
	beqz    $v0, .L8025978C
	nop
	jal     game_8024983C
	move    $a0, $0
	li.u    $a1, 0x0C400201
	li.l    $a1, 0x0C400201
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
.L8025978C:
	b       .L8025979C
	move    $v0, $0
	b       .L8025979C
	nop
.L8025979C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_demo_802597AC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	li      $at, 0x000F
	lhu     $s0, 0x001A($t6)
	lhu     $t8, 0x001A($t6)
	slt     $t7, $at, $s0
	move    $s0, $t7
	addiu   $t9, $t8, 0x0001
	beqz    $s0, .L80259808
	sh      $t9, 0x001A($t6)
	lw      $a0, 0x0028($sp)
	li      $a1, 0x1327
	li      $a2, 0x0056
	jal     pl_demo_80258B24
	li      $a3, 0xC2000000
	beqz    $v0, .L80259808
	nop
	lw      $t1, 0x0028($sp)
	li      $t0, 0x001F
	sb      $t0, 0x00B3($t1)
.L80259808:
	lw      $t2, 0x0028($sp)
	li      $at, 0x8000
	lw      $t3, 0x0088($t2)
	lh      $t4, 0x001C($t3)
	addu    $t5, $t4, $at
	sh      $t5, 0x001C($t3)
	lw      $t7, 0x0028($sp)
	lw      $t8, 0x0008($t7)
	ori     $t9, $t8, 0x0008
	sw      $t9, 0x0008($t7)
	b       .L80259840
	move    $v0, $0
	b       .L80259840
	nop
.L80259840:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_demo_80259854:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	li      $a1, 0x1327
	li      $a2, 0x0056
	jal     pl_demo_80258B24
	li      $a3, 0x0000
	beqz    $v0, .L80259888
	nop
	lw      $t7, 0x0018($sp)
	li      $t6, 0x001F
	sb      $t6, 0x00B3($t7)
.L80259888:
	lw      $t8, 0x0018($sp)
	li      $at, 0x8000
	lw      $t9, 0x0088($t8)
	lh      $t0, 0x001C($t9)
	addu    $t1, $t0, $at
	sh      $t1, 0x001C($t9)
	lw      $t2, 0x0018($sp)
	lw      $t3, 0x0008($t2)
	ori     $t4, $t3, 0x0008
	sw      $t4, 0x0008($t2)
	b       .L802598C0
	move    $v0, $0
	b       .L802598C0
	nop
.L802598C0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_demo_802598D0:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $s1, 0x0018($sp)
	sw      $s0, 0x0014($sp)
	jal     pl_physics_80255A34
	lw      $a0, 0x0030($sp)
	li.u    $a1, 0x04088081
	li.l    $a1, 0x04088081
	jal     player_80251510
	lw      $a0, 0x0030($sp)
	lw      $t6, 0x0030($sp)
	lhu     $s0, 0x0018($t6)
	beqz    $s0, .L80259938
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L80259A08
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L80259AC4
	nop
	li      $at, 0x0003
	beq     $s0, $at, .L80259B58
	nop
	b       .L80259BF4
	nop
.L80259938:
	lw      $t7, 0x0030($sp)
	lw      $t8, 0x001C($t7)
	bnez    $t8, .L80259950
	nop
	b       .L80259954
	li      $s1, 0x0057
.L80259950:
	li      $s1, 0x004E
.L80259954:
	lw      $a0, 0x0030($sp)
	jal     player_802509B8
	move    $a1, $s1
	jal     player_8025097C
	lw      $a0, 0x0030($sp)
	beqz    $v0, .L80259A00
	nop
	lui     $t9, %hi(save_course)
	lbu     $t9, %lo(save_course)($t9)
	li      $at, 0x0010
	beq     $t9, $at, .L80259998
	nop
	li      $at, 0x0011
	beq     $t9, $at, .L80259998
	nop
	jal     obj_lib_802A4704
	nop
.L80259998:
	jal     message_802DA810
	li      $a0, 0x0002
	lui     $at, %hi(msg_latch)
	sh      $0, %lo(msg_latch)($at)
	lw      $t1, 0x0030($sp)
	li      $t0, 0x0003
	sh      $t0, 0x0018($t1)
	lw      $t2, 0x0030($sp)
	lw      $t3, 0x0004($t2)
	andi    $t4, $t3, 0x0010
	bnez    $t4, .L802599D4
	nop
	lw      $t6, 0x0030($sp)
	li      $t5, 0x0002
	sh      $t5, 0x0018($t6)
.L802599D4:
	lui     $t7, %hi(save_course)
	lbu     $t7, %lo(save_course)($t7)
	li      $at, 0x0010
	beq     $t7, $at, .L802599F4
	nop
	li      $at, 0x0011
	bne     $t7, $at, .L80259A00
	nop
.L802599F4:
	lw      $t9, 0x0030($sp)
	li      $t8, 0x0001
	sh      $t8, 0x0018($t9)
.L80259A00:
	b       .L80259BF4
	nop
.L80259A08:
	lw      $a0, 0x0030($sp)
	jal     player_802509B8
	li      $a1, 0x0031
	sw      $v0, 0x002C($sp)
	lw      $s0, 0x002C($sp)
	li      $at, -0x0001
	beq     $s0, $at, .L80259A54
	nop
	li      $at, 0x0043
	beq     $s0, $at, .L80259A6C
	nop
	li      $at, 0x0053
	beq     $s0, $at, .L80259A84
	nop
	li      $at, 0x006F
	beq     $s0, $at, .L80259A9C
	nop
	b       .L80259AB4
	nop
.L80259A54:
	la.u    $a2, o_13001BD4
	la.l    $a2, o_13001BD4
	lw      $a0, 0x0030($sp)
	li      $a1, 0x00C8
	jal     pl_demo_80257450
	li      $a3, -0x8000
.L80259A6C:
	lw      $t0, 0x0030($sp)
	li.u    $a0, 0x04368081
	li.l    $a0, 0x04368081
	lw      $a1, 0x0088($t0)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
.L80259A84:
	lw      $t1, 0x0030($sp)
	li.u    $a0, 0x043F8081
	li.l    $a0, 0x043F8081
	lw      $a1, 0x0088($t1)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
.L80259A9C:
	lw      $t2, 0x0030($sp)
	li.u    $a0, 0x045C8081
	li.l    $a0, 0x045C8081
	lw      $a1, 0x0088($t2)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
.L80259AB4:
	jal     pl_demo_8025733C
	lw      $a0, 0x0030($sp)
	b       .L80259BF4
	nop
.L80259AC4:
	lw      $a0, 0x0030($sp)
	jal     player_802509B8
	li      $a1, 0x005E
	sw      $v0, 0x002C($sp)
	lw      $t3, 0x002C($sp)
	slti    $at, $t3, 0x0012
	bnez    $at, .L80259AF0
	nop
	slti    $at, $t3, 0x0037
	bnez    $at, .L80259B0C
	nop
.L80259AF0:
	lw      $t4, 0x002C($sp)
	slti    $at, $t4, 0x0070
	bnez    $at, .L80259B1C
	nop
	slti    $at, $t4, 0x0086
	beqz    $at, .L80259B1C
	nop
.L80259B0C:
	lw      $t6, 0x0030($sp)
	li      $t5, 0x0001
	lw      $t7, 0x0098($t6)
	sb      $t5, 0x0006($t7)
.L80259B1C:
	lw      $t8, 0x002C($sp)
	slti    $at, $t8, 0x006D
	bnez    $at, .L80259B48
	nop
	slti    $at, $t8, 0x009A
	beqz    $at, .L80259B48
	nop
	lw      $t0, 0x0030($sp)
	li      $t9, 0x0002
	lw      $t1, 0x0098($t0)
	sb      $t9, 0x0005($t1)
.L80259B48:
	jal     pl_demo_8025733C
	lw      $a0, 0x0030($sp)
	b       .L80259BF4
	nop
.L80259B58:
	lw      $a0, 0x0030($sp)
	jal     player_802509B8
	li      $a1, 0x0037
	sw      $v0, 0x002C($sp)
	lw      $s0, 0x002C($sp)
	li      $at, 0x000C
	beq     $s0, $at, .L80259BA4
	nop
	li      $at, 0x0025
	beq     $s0, $at, .L80259BB4
	nop
	li      $at, 0x0035
	beq     $s0, $at, .L80259BB4
	nop
	li      $at, 0x0052
	beq     $s0, $at, .L80259BD4
	nop
	b       .L80259BE4
	nop
.L80259BA4:
	jal     pl_demo_802574E8
	lw      $a0, 0x0030($sp)
	b       .L80259BE4
	nop
.L80259BB4:
	lw      $t2, 0x0030($sp)
	li.u    $a0, 0x04408081
	li.l    $a0, 0x04408081
	lw      $a1, 0x0088($t2)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
	b       .L80259BE4
	nop
.L80259BD4:
	jal     pl_demo_80257548
	lw      $a0, 0x0030($sp)
	b       .L80259BE4
	nop
.L80259BE4:
	jal     pl_demo_8025733C
	lw      $a0, 0x0030($sp)
	b       .L80259BF4
	nop
.L80259BF4:
	lw      $t3, 0x0030($sp)
	li      $at, 0x8000
	lw      $t4, 0x0088($t3)
	lh      $t6, 0x001C($t4)
	addu    $t5, $t6, $at
	sh      $t5, 0x001C($t4)
	b       .L80259C1C
	move    $v0, $0
	b       .L80259C1C
	nop
.L80259C1C:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0014($sp)
	lw      $s1, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0030

pl_demo_80259C30:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	li      $at, 0x000F
	lhu     $s0, 0x001A($t6)
	lhu     $t8, 0x001A($t6)
	slt     $t7, $at, $s0
	move    $s0, $t7
	addiu   $t9, $t8, 0x0001
	beqz    $s0, .L80259CB8
	sh      $t9, 0x001A($t6)
	li.u    $a1, 0x00020467
	li.l    $a1, 0x00020467
	lw      $a0, 0x0028($sp)
	li      $a2, 0x0056
	jal     pl_demo_80258B24
	li      $a3, 0xC2000000
	beqz    $v0, .L80259CB8
	nop
	lw      $t0, 0x0028($sp)
	li.u    $a0, 0x240BD081
	li.l    $a0, 0x240BD081
	lw      $a1, 0x0088($t0)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
	lw      $t1, 0x0028($sp)
	lb      $t2, 0x00AD($t1)
	addiu   $t3, $t2, -0x0001
	sb      $t3, 0x00AD($t1)
	lw      $t5, 0x0028($sp)
	li      $t4, 0x001F
	sb      $t4, 0x00B3($t5)
.L80259CB8:
	lw      $t8, 0x0028($sp)
	li      $t7, 0x0100
	sh      $t7, 0x00AE($t8)
	b       .L80259CD4
	move    $v0, $0
	b       .L80259CD4
	nop
.L80259CD4:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_demo_80259CE8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	li.u    $a1, 0x0C000232
	li.l    $a1, 0x0C000232
	lw      $a0, 0x0018($sp)
	li      $a2, 0x0056
	jal     pl_demo_80258B24
	li      $a3, 0x0000
	beqz    $v0, .L80259D48
	nop
	lw      $t6, 0x0018($sp)
	li.u    $a0, 0x240BD081
	li.l    $a0, 0x240BD081
	lw      $a1, 0x0088($t6)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
	lw      $t7, 0x0018($sp)
	lb      $t8, 0x00AD($t7)
	addiu   $t9, $t8, -0x0001
	sb      $t9, 0x00AD($t7)
	lw      $t1, 0x0018($sp)
	li      $t0, 0x001F
	sb      $t0, 0x00B3($t1)
.L80259D48:
	lw      $t3, 0x0018($sp)
	li      $t2, 0x0100
	sh      $t2, 0x00AE($t3)
	b       .L80259D64
	move    $v0, $0
	b       .L80259D64
	nop
.L80259D64:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_demo_80259D74:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	li.u    $a1, 0x00020467
	li.l    $a1, 0x00020467
	lw      $a0, 0x0018($sp)
	li      $a2, 0x0056
	jal     pl_demo_80258B24
	li      $a3, 0x0000
	beqz    $v0, .L80259DD4
	nop
	lw      $t6, 0x0018($sp)
	li.u    $a0, 0x240BD081
	li.l    $a0, 0x240BD081
	lw      $a1, 0x0088($t6)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
	lw      $t7, 0x0018($sp)
	lb      $t8, 0x00AD($t7)
	addiu   $t9, $t8, -0x0001
	sb      $t9, 0x00AD($t7)
	lw      $t1, 0x0018($sp)
	li      $t0, 0x001F
	sb      $t0, 0x00B3($t1)
.L80259DD4:
	lw      $t3, 0x0018($sp)
	li      $t2, 0x0100
	sh      $t2, 0x00AE($t3)
	b       .L80259DF0
	move    $v0, $0
	b       .L80259DF0
	nop
.L80259DF0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_demo_80259E00:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x0088($t6)
	sw      $t7, 0x0024($sp)
	li.u    $a1, 0x24048081
	li.l    $a1, 0x24048081
	lw      $a0, 0x0028($sp)
	jal     player_80251120
	li      $a2, 0x00020000
	lw      $t8, 0x0028($sp)
	lhu     $s0, 0x001A($t8)
	lhu     $t0, 0x001A($t8)
	slti    $t9, $s0, 0x000B
	move    $s0, $t9
	addiu   $t1, $t0, 0x0001
	beqz    $s0, .L80259E6C
	sh      $t1, 0x001A($t8)
	lw      $t2, 0x0024($sp)
	li      $at, -0x0002
	lh      $t3, 0x0002($t2)
	and     $t4, $t3, $at
	sh      $t4, 0x0002($t2)
	b       .L80259EE4
	move    $v0, $0
.L80259E6C:
	lw      $a0, 0x0028($sp)
	li      $a1, 0x1327
	li      $a2, 0x004D
	jal     pl_demo_80258B24
	li      $a3, 0xC1C00000
	beqz    $v0, .L80259EA0
	nop
	lw      $t6, 0x0028($sp)
	li      $t5, 0x001F
	sb      $t5, 0x00B3($t6)
	lw      $t9, 0x0028($sp)
	li      $t7, 0x0001
	sw      $t7, 0x001C($t9)
.L80259EA0:
	lw      $t0, 0x0028($sp)
	lw      $t1, 0x0008($t0)
	ori     $t8, $t1, 0x0008
	sw      $t8, 0x0008($t0)
	lw      $t3, 0x0024($sp)
	li      $at, 0x8000
	lh      $t4, 0x001C($t3)
	addu    $t2, $t4, $at
	sh      $t2, 0x001C($t3)
	lw      $t5, 0x0024($sp)
	lh      $t6, 0x0002($t5)
	ori     $t7, $t6, 0x0001
	sh      $t7, 0x0002($t5)
	b       .L80259EE4
	move    $v0, $0
	b       .L80259EE4
	nop
.L80259EE4:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_demo_80259EF8:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x0088($t6)
	sw      $t7, 0x0024($sp)
	lw      $t8, 0x0028($sp)
	lhu     $s0, 0x001A($t8)
	lhu     $t0, 0x001A($t8)
	slti    $t9, $s0, 0x000B
	move    $s0, $t9
	addiu   $t1, $t0, 0x0001
	beqz    $s0, .L80259F50
	sh      $t1, 0x001A($t8)
	lw      $t2, 0x0024($sp)
	li      $at, -0x0002
	lh      $t3, 0x0002($t2)
	and     $t4, $t3, $at
	sh      $t4, 0x0002($t2)
	b       .L80259FB8
	move    $v0, $0
.L80259F50:
	li.u    $a1, 0x00020460
	li.l    $a1, 0x00020460
	lw      $a0, 0x0028($sp)
	li      $a2, 0x0002
	jal     pl_demo_80258B24
	li      $a3, 0xC1C00000
	beqz    $v0, .L80259F8C
	nop
	lw      $t5, 0x0028($sp)
	lb      $t6, 0x00AD($t5)
	addiu   $t7, $t6, -0x0001
	sb      $t7, 0x00AD($t5)
	lw      $t0, 0x0028($sp)
	li      $t9, 0x001F
	sb      $t9, 0x00B3($t0)
.L80259F8C:
	lw      $t1, 0x0024($sp)
	lh      $t8, 0x0002($t1)
	ori     $t3, $t8, 0x0001
	sh      $t3, 0x0002($t1)
	lw      $t2, 0x0028($sp)
	li      $t4, 0x0100
	sh      $t4, 0x00AE($t2)
	b       .L80259FB8
	move    $v0, $0
	b       .L80259FB8
	nop
.L80259FB8:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_demo_80259FCC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	li      $a1, 0x1333
	li      $a2, 0x0056
	jal     pl_demo_80258B24
	li      $a3, 0x0000
	lw      $t6, 0x0018($sp)
	lh      $t7, 0x0076($t6)
	lwc1    $f4, 0x0040($t6)
	addiu   $t8, $t7, -0x0064
	mtc1    $t8, $f6
	nop
	cvt.s.w $f8, $f6
	c.lt.s  $f4, $f8
	nop
	bc1f    .L8025A020
	nop
	jal     player_80253488
	lw      $a0, 0x0018($sp)
.L8025A020:
	b       .L8025A030
	move    $v0, $0
	b       .L8025A030
	nop
.L8025A030:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_demo_8025A040:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	li.u    $a1, 0x04088081
	li.l    $a1, 0x04088081
	jal     player_80251510
	lw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	jal     player_802509B8
	li      $a1, 0x0057
	jal     pl_physics_802559B0
	lw      $a0, 0x0018($sp)
	jal     player_80250940
	lw      $a0, 0x0018($sp)
	beqz    $v0, .L8025A09C
	nop
	jal     game_8024983C
	move    $a0, $0
	li.u    $a1, 0x0C400201
	li.l    $a1, 0x0C400201
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
.L8025A09C:
	b       .L8025A0AC
	move    $v0, $0
	b       .L8025A0AC
	nop
.L8025A0AC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_demo_8025A0BC:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0030($sp)
	lw      $t6, 0x0030($sp)
	lw      $t7, 0x0080($t6)
	lwc1    $f6, 0x003C($t6)
	lwc1    $f4, 0x00A0($t7)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0024($sp)
	lw      $t8, 0x0030($sp)
	lw      $t9, 0x0080($t8)
	lwc1    $f16, 0x0044($t8)
	lwc1    $f10, 0x00A8($t9)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0020($sp)
	lwc1    $f4, 0x0024($sp)
	lwc1    $f8, 0x0020($sp)
	mul.s   $f6, $f4, $f4
	nop
	mul.s   $f10, $f8, $f8
	jal     sqrtf
	add.s   $f12, $f6, $f10
	swc1    $f0, 0x001C($sp)
	li      $at, 0x41A00000
	mtc1    $at, $f18
	lwc1    $f16, 0x001C($sp)
	c.lt.s  $f18, $f16
	nop
	bc1f    .L8025A144
	nop
	li      $at, 0x41200000
	mtc1    $at, $f4
	b       .L8025A158
	swc1    $f4, 0x0018($sp)
.L8025A144:
	li      $at, 0x40000000
	mtc1    $at, $f6
	lwc1    $f8, 0x001C($sp)
	div.s   $f10, $f8, $f6
	swc1    $f10, 0x0018($sp)
.L8025A158:
	li      $at, 0x3F000000
	mtc1    $at, $f18
	lwc1    $f16, 0x0018($sp)
	c.lt.s  $f16, $f18
	nop
	bc1f    .L8025A180
	nop
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x0018($sp)
.L8025A180:
	lw      $t0, 0x0030($sp)
	lhu     $t1, 0x0018($t0)
	sltiu   $at, $t1, 0x0005
	beqz    $at, .L8025A474
	nop
	sll     $t1, $t1, 2
	lui     $at, %hi(pl_demo_803366D4)
	addu    $at, $at, $t1
	lw      $t1, %lo(pl_demo_803366D4)($at)
	jr      $t1
	nop
.globl L8025A1AC
L8025A1AC:
	lw      $t2, 0x0030($sp)
	li      $at, 0x44000000
	mtc1    $at, $f16
	lwc1    $f8, 0x0040($t2)
	lwc1    $f6, 0x0070($t2)
	sub.s   $f10, $f8, $f6
	sub.s   $f18, $f16, $f10
	swc1    $f18, 0x002C($sp)
	lwc1    $f4, 0x002C($sp)
	mtc1    $0, $f8
	nop
	c.lt.s  $f8, $f4
	nop
	bc1f    .L8025A21C
	nop
	li      $at, 0x40800000
	mtc1    $at, $f6
	li      $at, 0x3F800000
	mtc1    $at, $f10
	mul.s   $f16, $f6, $f4
	jal     sqrtf
	add.s   $f12, $f16, $f10
	li      $at, 0x3F800000
	mtc1    $at, $f18
	lw      $t3, 0x0030($sp)
	sub.s   $f8, $f0, $f18
	b       .L8025A22C
	swc1    $f8, 0x004C($t3)
.L8025A21C:
	li      $at, 0x40000000
	mtc1    $at, $f6
	lw      $t4, 0x0030($sp)
	swc1    $f6, 0x004C($t4)
.L8025A22C:
	lw      $t7, 0x0030($sp)
	li      $t5, 0x0001
	sh      $t5, 0x0018($t7)
	lw      $t9, 0x0030($sp)
	li      $t6, 0x0064
	sh      $t6, 0x001A($t9)
.globl L8025A244
L8025A244:
	lwc1    $f12, 0x0020($sp)
	jal     atan2
	lwc1    $f14, 0x0024($sp)
	lw      $t8, 0x0030($sp)
	sh      $v0, 0x002E($t8)
	lw      $a0, 0x0030($sp)
	jal     player_80251708
	lw      $a1, 0x0018($sp)
	lw      $a0, 0x0030($sp)
	jal     player_802509B8
	li      $a1, 0x006F
	bnez    $v0, .L8025A290
	nop
	lw      $t0, 0x0030($sp)
	li.u    $a0, 0x04378081
	li.l    $a0, 0x04378081
	lw      $a1, 0x0088($t0)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
.L8025A290:
	lw      $t1, 0x0030($sp)
	li      $at, -0x0101
	lw      $t2, 0x0004($t1)
	and     $t3, $t2, $at
	sw      $t3, 0x0004($t1)
	lw      $a0, 0x0030($sp)
	jal     pl_physics_80256B24
	move    $a1, $0
	lw      $t4, 0x0030($sp)
	mtc1    $0, $f16
	lwc1    $f4, 0x004C($t4)
	c.le.s  $f4, $f16
	nop
	bc1f    .L8025A2D8
	nop
	lw      $t7, 0x0030($sp)
	li      $t5, 0x0002
	sh      $t5, 0x0018($t7)
.L8025A2D8:
	b       .L8025A474
	nop
.globl L8025A2E0
L8025A2E0:
	lwc1    $f12, 0x0020($sp)
	jal     atan2
	lwc1    $f14, 0x0024($sp)
	lw      $t6, 0x0030($sp)
	sh      $v0, 0x002E($t6)
	lw      $a0, 0x0030($sp)
	jal     player_80251708
	lw      $a1, 0x0018($sp)
	lw      $t9, 0x0030($sp)
	li      $at, -0x0101
	lw      $t8, 0x0004($t9)
	and     $t0, $t8, $at
	sw      $t0, 0x0004($t9)
	lw      $a0, 0x0030($sp)
	jal     pl_physics_80256B24
	move    $a1, $0
	li      $at, 0x0001
	bne     $v0, $at, .L8025A344
	nop
	lw      $a0, 0x0030($sp)
	jal     game_8024A9CC
	li      $a1, 0x0002
	lw      $t3, 0x0030($sp)
	li      $t2, 0x0004
	sh      $t2, 0x0018($t3)
.L8025A344:
	lw      $t1, 0x0030($sp)
	li      $at, 0x0002
	lhu     $t4, 0x0018($t1)
	bne     $t4, $at, .L8025A380
	nop
	lw      $t5, 0x0030($sp)
	lw      $t7, 0x0088($t5)
	lh      $t6, 0x0040($t7)
	bnez    $t6, .L8025A378
	nop
	lw      $t0, 0x0030($sp)
	li      $t8, 0x0003
	sh      $t8, 0x0018($t0)
.L8025A378:
	b       .L8025A3C0
	nop
.L8025A380:
	li.u    $a1, 0x0446A081
	li.l    $a1, 0x0446A081
	lw      $a0, 0x0030($sp)
	jal     player_80251120
	li      $a2, 0x00010000
	lw      $a0, 0x0030($sp)
	jal     player_802509B8
	li      $a1, 0x0088
	lw      $t9, 0x0030($sp)
	lwc1    $f14, 0x004C($t9)
	lwc1    $f12, 0x0054($t9)
	jal     atan2
	neg.s   $f14, $f14
	lw      $t2, 0x0030($sp)
	lw      $t3, 0x0088($t2)
	sh      $v0, 0x001A($t3)
.L8025A3C0:
	lw      $t4, 0x0030($sp)
	li      $t1, 0x00FF
	sb      $t1, 0x00B4($t4)
	lw      $t5, 0x0030($sp)
	lhu     $t7, 0x001A($t5)
	slti    $at, $t7, 0x000B
	bnez    $at, .L8025A448
	nop
	lw      $t6, 0x0030($sp)
	lhu     $t8, 0x001A($t6)
	addiu   $t0, $t8, -0x0006
	sh      $t0, 0x001A($t6)
	lw      $t9, 0x0030($sp)
	lhu     $t2, 0x001A($t9)
	mtc1    $t2, $f10
	bgez    $t2, .L8025A414
	cvt.s.w $f18, $f10
	li      $at, 0x4F800000
	mtc1    $at, $f8
	nop
	add.s   $f18, $f18, $f8
.L8025A414:
	li      $at, 0x42C80000
	mtc1    $at, $f6
	nop
	div.s   $f4, $f18, $f6
	swc1    $f4, 0x0028($sp)
	lwc1    $f16, 0x0028($sp)
	lw      $t3, 0x0030($sp)
	mfc1    $a1, $f16
	lw      $a0, 0x0088($t3)
	mfc1    $a2, $f16
	mfc1    $a3, $f16
	jal     vecf_set
	addiu   $a0, $a0, 0x002C
.L8025A448:
	b       .L8025A474
	nop
.globl L8025A450
L8025A450:
	jal     pl_physics_802559B0
	lw      $a0, 0x0030($sp)
	lw      $t1, 0x0030($sp)
	lw      $t4, 0x0088($t1)
	lh      $t5, 0x0002($t4)
	ori     $t7, $t5, 0x0010
	sh      $t7, 0x0002($t4)
	b       .L8025A474
	nop
.L8025A474:
	b       .L8025A484
	move    $v0, $0
	b       .L8025A484
	nop
.L8025A484:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

pl_demo_8025A494:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0030($sp)
	lw      $t7, 0x0004($t6)
	andi    $t8, $t7, 0x0004
	beqz    $t8, .L8025A4C4
	nop
	li.u    $s0, 0x04289081
	b       .L8025A4CC
	li.l    $s0, 0x04289081
.L8025A4C4:
	li.u    $s0, 0x04008081
	li.l    $s0, 0x04008081
.L8025A4CC:
	lw      $a0, 0x0030($sp)
	move    $a1, $s0
	jal     player_80251444
	li      $a2, 0x0001
	jal     player_8025118C
	lw      $a0, 0x0030($sp)
	lw      $t9, 0x0030($sp)
	lhu     $t0, 0x0018($t9)
	bnez    $t0, .L8025A5A8
	nop
	lw      $t1, 0x0030($sp)
	lw      $t2, 0x0080($t1)
	lwc1    $f6, 0x003C($t1)
	lwc1    $f4, 0x00A0($t2)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x002C($sp)
	lw      $t3, 0x0030($sp)
	lw      $t4, 0x0080($t3)
	lwc1    $f16, 0x0044($t3)
	lwc1    $f10, 0x00A8($t4)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0028($sp)
	lwc1    $f4, 0x002C($sp)
	lwc1    $f8, 0x0028($sp)
	mul.s   $f6, $f4, $f4
	nop
	mul.s   $f10, $f8, $f8
	jal     sqrtf
	add.s   $f12, $f6, $f10
	swc1    $f0, 0x0024($sp)
	li      $at, 0x42700000
	mtc1    $at, $f16
	lw      $t5, 0x0030($sp)
	swc1    $f16, 0x004C($t5)
	lwc1    $f12, 0x0028($sp)
	jal     atan2
	lwc1    $f14, 0x002C($sp)
	lw      $t6, 0x0030($sp)
	sh      $v0, 0x002E($t6)
	li      $at, 0x41A00000
	mtc1    $at, $f4
	lwc1    $f18, 0x0024($sp)
	lw      $a0, 0x0030($sp)
	div.s   $f8, $f18, $f4
	mfc1    $a1, $f8
	jal     player_80251708
	nop
	lw      $t7, 0x0030($sp)
	li      $at, -0x0101
	lw      $t8, 0x0004($t7)
	and     $t9, $t8, $at
	sw      $t9, 0x0004($t7)
	lw      $t2, 0x0030($sp)
	li      $t0, 0x0001
	sh      $t0, 0x0018($t2)
.L8025A5A8:
	lw      $a0, 0x0030($sp)
	jal     player_802509B8
	li      $a1, 0x0050
	lw      $a0, 0x0030($sp)
	jal     pl_physics_80256B24
	move    $a1, $0
	lw      $t1, 0x0030($sp)
	mtc1    $0, $f10
	lwc1    $f6, 0x004C($t1)
	c.le.s  $f6, $f10
	nop
	bc1f    .L8025A5EC
	nop
	lw      $a0, 0x0030($sp)
	li      $a1, 0x1535
	jal     player_80252CF4
	move    $a2, $0
.L8025A5EC:
	b       .L8025A5FC
	move    $v0, $0
	b       .L8025A5FC
	nop
.L8025A5FC:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

pl_demo_8025A610:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	li.u    $a1, 0x0457C081
	li.l    $a1, 0x0457C081
	lw      $a0, 0x0028($sp)
	jal     player_80251120
	li      $a2, 0x00010000
	lw      $t6, 0x0028($sp)
	li.u    $at, 0x0C008220
	li.l    $at, 0x0C008220
	lw      $t7, 0x0010($t6)
	bne     $t7, $at, .L8025A654
	nop
	b       .L8025A658
	li      $s0, 0x0098
.L8025A654:
	li      $s0, 0x00C2
.L8025A658:
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	move    $a1, $s0
	lw      $t8, 0x0028($sp)
	lw      $t9, 0x0004($t8)
	ori     $t0, $t9, 0x0080
	sw      $t0, 0x0004($t8)
	lw      $t1, 0x0028($sp)
	lhu     $t2, 0x001A($t1)
	slti    $at, $t2, 0x0020
	beqz    $at, .L8025A6A0
	nop
	lw      $t3, 0x0028($sp)
	lhu     $t4, 0x001A($t3)
	subu    $t5, $0, $t4
	sll     $t6, $t5, 3
	addiu   $t7, $t6, 0x00F8
	sb      $t7, 0x00B5($t3)
.L8025A6A0:
	lw      $t9, 0x0028($sp)
	lhu     $s0, 0x001A($t9)
	lhu     $t8, 0x001A($t9)
	xori    $t0, $s0, 0x0014
	sltiu   $t0, $t0, 0x0001
	move    $s0, $t0
	addiu   $t1, $t8, 0x0001
	beqz    $s0, .L8025A6D0
	sh      $t1, 0x001A($t9)
	lw      $a0, 0x0028($sp)
	jal     game_8024A9CC
	li      $a1, 0x0005
.L8025A6D0:
	jal     pl_physics_802559B0
	lw      $a0, 0x0028($sp)
	b       .L8025A6E8
	move    $v0, $0
	b       .L8025A6E8
	nop
.L8025A6E8:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_demo_8025A6FC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	li.u    $a1, 0x0457C081
	li.l    $a1, 0x0457C081
	lw      $a0, 0x0028($sp)
	jal     player_80251120
	li      $a2, 0x00010000
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	li      $a1, 0x00C2
	lw      $t6, 0x0028($sp)
	lhu     $t7, 0x001A($t6)
	slti    $at, $t7, 0x0020
	beqz    $at, .L8025A764
	nop
	lw      $t8, 0x0028($sp)
	lw      $t9, 0x0004($t8)
	ori     $t0, $t9, 0x0080
	sw      $t0, 0x0004($t8)
	lw      $t1, 0x0028($sp)
	lhu     $t2, 0x001A($t1)
	sll     $t3, $t2, 3
	b       .L8025A778
	sb      $t3, 0x00B5($t1)
.L8025A764:
	lw      $t4, 0x0028($sp)
	li      $at, -0x0081
	lw      $t5, 0x0004($t4)
	and     $t6, $t5, $at
	sw      $t6, 0x0004($t4)
.L8025A778:
	lw      $t7, 0x0028($sp)
	lhu     $s0, 0x001A($t7)
	lhu     $t0, 0x001A($t7)
	xori    $t9, $s0, 0x0020
	sltiu   $t9, $t9, 0x0001
	move    $s0, $t9
	addiu   $t8, $t0, 0x0001
	beqz    $s0, .L8025A82C
	sh      $t8, 0x001A($t7)
	lw      $t2, 0x0028($sp)
	lh      $t3, 0x0076($t2)
	lwc1    $f4, 0x0040($t2)
	addiu   $t1, $t3, -0x0064
	mtc1    $t1, $f6
	nop
	cvt.s.w $f8, $f6
	c.lt.s  $f4, $f8
	nop
	bc1f    .L8025A818
	nop
	lw      $t5, 0x0028($sp)
	li      $at, 0x0008
	lw      $t6, 0x0090($t5)
	lw      $t4, 0x0024($t6)
	lbu     $t9, 0x0000($t4)
	beq     $t9, $at, .L8025A7FC
	nop
	lw      $t0, 0x0028($sp)
	li      $a1, 0x0008
	li      $a2, 0x0001
	lw      $t8, 0x0090($t0)
	jal     camera_80286188
	lw      $a0, 0x0024($t8)
.L8025A7FC:
	li.u    $a1, 0x380022C0
	li.l    $a1, 0x380022C0
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L8025A82C
	nop
.L8025A818:
	li.u    $a1, 0x0C400201
	li.l    $a1, 0x0C400201
	lw      $a0, 0x0028($sp)
	jal     player_80252CF4
	move    $a2, $0
.L8025A82C:
	jal     pl_physics_802559B0
	lw      $a0, 0x0028($sp)
	b       .L8025A844
	move    $v0, $0
	b       .L8025A844
	nop
.L8025A844:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_demo_8025A858:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	li.u    $a1, 0x2410C081
	li.l    $a1, 0x2410C081
	lw      $a0, 0x0028($sp)
	jal     player_80251120
	li      $a2, 0x00010000
	lw      $t6, 0x0028($sp)
	li.u    $a0, 0x14160001
	li.l    $a0, 0x14160001
	lw      $a1, 0x0088($t6)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
	jal     camera_8027F590
	li      $a0, 0x000A
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	li      $a1, 0x007A
	bnez    $v0, .L8025A8D0
	nop
	lw      $t7, 0x0028($sp)
	lhu     $t8, 0x001A($t7)
	addiu   $t9, $t8, 0x0001
	sh      $t9, 0x001A($t7)
	lw      $t0, 0x0028($sp)
	lw      $t1, 0x0004($t0)
	ori     $t2, $t1, 0x0040
	sw      $t2, 0x0004($t0)
.L8025A8D0:
	lw      $t3, 0x0028($sp)
	lw      $t4, 0x001C($t3)
	bnez    $t4, .L8025A928
	nop
	lw      $a0, 0x0028($sp)
	jal     player_80251708
	li      $a1, 0x0000
	lw      $a0, 0x0028($sp)
	jal     pl_physics_80256B24
	li      $a1, 0x0001
	li      $at, 0x0001
	bne     $v0, $at, .L8025A920
	nop
	li.u    $a1, 0x04088081
	li.l    $a1, 0x04088081
	jal     player_802514AC
	lw      $a0, 0x0028($sp)
	lw      $t6, 0x0028($sp)
	li      $t5, 0x0001
	sw      $t5, 0x001C($t6)
.L8025A920:
	b       .L8025A988
	nop
.L8025A928:
	lw      $t8, 0x0028($sp)
	lhu     $t9, 0x001A($t8)
	slti    $at, $t9, 0x0006
	bnez    $at, .L8025A980
	nop
	lw      $t1, 0x0028($sp)
	li      $t7, 0x001E
	sh      $t7, 0x0026($t1)
	lw      $t2, 0x0028($sp)
	lh      $t0, 0x00AE($t2)
	slti    $at, $t0, 0x0100
	beqz    $at, .L8025A968
	nop
	li.u    $s0, 0x00021313
	b       .L8025A970
	li.l    $s0, 0x00021313
.L8025A968:
	li.u    $s0, 0x0C400201
	li.l    $s0, 0x0C400201
.L8025A970:
	lw      $a0, 0x0028($sp)
	move    $a1, $s0
	jal     player_80252CF4
	move    $a2, $0
.L8025A980:
	jal     pl_physics_802559B0
	lw      $a0, 0x0028($sp)
.L8025A988:
	b       .L8025A998
	move    $v0, $0
	b       .L8025A998
	nop
.L8025A998:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_demo_8025A9AC:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0038($sp)
	sw      $s0, 0x0018($sp)
	sw      $0, 0x0024($sp)
	lw      $t6, 0x0038($sp)
	mtc1    $0, $f10
	lwc1    $f4, 0x006C($t6)
	lwc1    $f6, 0x0070($t6)
	sub.s   $f8, $f4, $f6
	c.lt.s  $f8, $f10
	swc1    $f8, 0x002C($sp)
	bc1f    .L8025A9F0
	nop
	mtc1    $0, $f16
	nop
	swc1    $f16, 0x002C($sp)
.L8025A9F0:
	lw      $t7, 0x0038($sp)
	lhu     $s0, 0x0018($t7)
	beqz    $s0, .L8025AA20
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L8025AB78
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L8025ABA8
	nop
	b       .L8025AC3C
	nop
.L8025AA20:
	li      $at, 0x43200000
	mtc1    $at, $f4
	lwc1    $f18, 0x002C($sp)
	c.lt.s  $f4, $f18
	nop
	bc1f    .L8025AA60
	nop
	lw      $t8, 0x0038($sp)
	sb      $0, 0x00B4($t8)
	li.u    $a1, 0x0C400201
	li.l    $a1, 0x0C400201
	lw      $a0, 0x0038($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L8025ADF8
	nop
.L8025AA60:
	lw      $t0, 0x0038($sp)
	li      $t9, 0x00FF
	sb      $t9, 0x00B4($t0)
	lui     $at, %hi(pl_demo_803366E8)
	lwc1    $f8, %lo(pl_demo_803366E8)($at)
	lwc1    $f6, 0x002C($sp)
	c.le.s  $f8, $f6
	nop
	bc1f    .L8025AADC
	nop
	li      $at, 0x43200000
	mtc1    $at, $f16
	lwc1    $f10, 0x002C($sp)
	div.s   $f18, $f10, $f16
	swc1    $f18, 0x0030($sp)
	li      $at, 0x40000000
	lwc1    $f6, 0x0030($sp)
	mtc1    $at, $f4
	mtc1    $at, $f10
	lw      $t1, 0x0038($sp)
	sub.s   $f8, $f4, $f6
	mfc1    $a2, $f6
	lw      $a0, 0x0088($t1)
	sub.s   $f16, $f10, $f6
	mfc1    $a1, $f8
	addiu   $a0, $a0, 0x002C
	mfc1    $a3, $f16
	jal     vecf_set
	nop
	b       .L8025AB70
	nop
.L8025AADC:
	lw      $t2, 0x0038($sp)
	lw      $t3, 0x0004($t2)
	andi    $t4, $t3, 0x0004
	bnez    $t4, .L8025AB40
	nop
	lh      $t5, 0x0026($t2)
	bnez    $t5, .L8025AB40
	nop
	lw      $t6, 0x0038($sp)
	lw      $t7, 0x0004($t6)
	andi    $t8, $t7, 0x0010
	beqz    $t8, .L8025AB18
	nop
	b       .L8025AB1C
	li      $s0, 0x000C
.L8025AB18:
	li      $s0, 0x0012
.L8025AB1C:
	lw      $t9, 0x0038($sp)
	lbu     $t0, 0x00B2($t9)
	addu    $t1, $t0, $s0
	sb      $t1, 0x00B2($t9)
	li.u    $a1, 0x240AFF81
	li.l    $a1, 0x240AFF81
	lw      $a0, 0x0038($sp)
	jal     player_80251120
	li      $a2, 0x00020000
.L8025AB40:
	lw      $t3, 0x0038($sp)
	li.u    $a1, 0x3FE66666
	li.l    $a1, 0x3FE66666
	lw      $a0, 0x0088($t3)
	li.u    $a2, 0x3D4CCCCD
	li.l    $a2, 0x3D4CCCCD
	addu    $a3, $a1, $0
	jal     vecf_set
	addiu   $a0, $a0, 0x002C
	lw      $t2, 0x0038($sp)
	li      $t4, 0x0001
	sh      $t4, 0x0018($t2)
.L8025AB70:
	b       .L8025AC3C
	nop
.L8025AB78:
	li      $at, 0x41F00000
	mtc1    $at, $f4
	lwc1    $f18, 0x002C($sp)
	c.le.s  $f4, $f18
	nop
	bc1f    .L8025ABA0
	nop
	lw      $t6, 0x0038($sp)
	li      $t5, 0x0002
	sh      $t5, 0x0018($t6)
.L8025ABA0:
	b       .L8025AC3C
	nop
.L8025ABA8:
	lw      $t7, 0x0038($sp)
	lhu     $t8, 0x001A($t7)
	addiu   $t0, $t8, 0x0001
	sh      $t0, 0x001A($t7)
	lw      $t1, 0x0038($sp)
	lhu     $t9, 0x001A($t1)
	slti    $at, $t9, 0x000F
	bnez    $at, .L8025AC34
	nop
	lw      $t3, 0x0038($sp)
	lh      $t4, 0x00AE($t3)
	slti    $at, $t4, 0x0100
	beqz    $at, .L8025AC04
	nop
	lw      $a0, 0x0038($sp)
	jal     game_8024A9CC
	li      $a1, 0x0012
	lw      $a0, 0x0038($sp)
	li      $a1, 0x1300
	jal     player_80252CF4
	move    $a2, $0
	b       .L8025AC34
	nop
.L8025AC04:
	lw      $t2, 0x0038($sp)
	lbu     $t5, 0x00B2($t2)
	bnez    $t5, .L8025AC34
	nop
	lw      $t8, 0x0038($sp)
	li      $t6, 0x001E
	sb      $t6, 0x00B4($t8)
	li.u    $a1, 0x0C400201
	li.l    $a1, 0x0C400201
	lw      $a0, 0x0038($sp)
	jal     player_80252CF4
	move    $a2, $0
.L8025AC34:
	b       .L8025AC3C
	nop
.L8025AC3C:
	lw      $t0, 0x0038($sp)
	lw      $t7, 0x0068($t0)
	beqz    $t7, .L8025AC88
	nop
	li      $at, 0x3F000000
	mtc1    $at, $f10
	lwc1    $f8, 0x0020($t7)
	c.lt.s  $f8, $f10
	nop
	bc1f    .L8025AC88
	nop
	lw      $t1, 0x0038($sp)
	lw      $t9, 0x0068($t1)
	lwc1    $f12, 0x0024($t9)
	jal     atan2
	lwc1    $f14, 0x001C($t9)
	sh      $v0, 0x002A($sp)
	li      $t3, 0x0001
	sw      $t3, 0x0024($sp)
.L8025AC88:
	lw      $t4, 0x0038($sp)
	lw      $t2, 0x0064($t4)
	beqz    $t2, .L8025ACD4
	nop
	li      $at, 0xBF000000
	mtc1    $at, $f6
	lwc1    $f16, 0x0020($t2)
	c.lt.s  $f6, $f16
	nop
	bc1f    .L8025ACD4
	nop
	lw      $t5, 0x0038($sp)
	lw      $t6, 0x0064($t5)
	lwc1    $f12, 0x0024($t6)
	jal     atan2
	lwc1    $f14, 0x001C($t6)
	sh      $v0, 0x002A($sp)
	li      $t8, 0x0001
	sw      $t8, 0x0024($sp)
.L8025ACD4:
	lw      $t0, 0x0024($sp)
	beqz    $t0, .L8025AD80
	nop
	lhu     $t7, 0x002A($sp)
	lui     $at, %hi(math_sin)
	lw      $t3, 0x0038($sp)
	sra     $t1, $t7, 4
	sll     $t9, $t1, 2
	addu    $at, $at, $t9
	lwc1    $f18, %lo(math_sin)($at)
	li      $at, 0x41200000
	mtc1    $at, $f4
	nop
	mul.s   $f8, $f18, $f4
	swc1    $f8, 0x0048($t3)
	lhu     $t4, 0x002A($sp)
	lui     $at, %hi(math_cos)
	lw      $t6, 0x0038($sp)
	sra     $t2, $t4, 4
	sll     $t5, $t2, 2
	addu    $at, $at, $t5
	lwc1    $f10, %lo(math_cos)($at)
	li      $at, 0x41200000
	mtc1    $at, $f6
	nop
	mul.s   $f16, $f10, $f6
	swc1    $f16, 0x0050($t6)
	mtc1    $0, $f18
	lw      $t8, 0x0038($sp)
	swc1    $f18, 0x004C($t8)
	jal     pl_physics_80255D88
	lw      $a0, 0x0038($sp)
	bnez    $v0, .L8025AD80
	nop
	lw      $t0, 0x0038($sp)
	sb      $0, 0x00B4($t0)
	li.u    $a1, 0x0C400201
	li.l    $a1, 0x0C400201
	lw      $a0, 0x0038($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L8025ADF8
	move    $v0, $0
.L8025AD80:
	lw      $t7, 0x0038($sp)
	li      $at, 0x012C
	lw      $s0, 0x001C($t7)
	lw      $t9, 0x001C($t7)
	sltu    $t1, $at, $s0
	move    $s0, $t1
	addiu   $t3, $t9, 0x0001
	beqz    $s0, .L8025ADD4
	sw      $t3, 0x001C($t7)
	lw      $t2, 0x0038($sp)
	li      $t4, 0x00FF
	sh      $t4, 0x00AE($t2)
	lw      $t5, 0x0038($sp)
	sb      $0, 0x00B2($t5)
	lw      $a0, 0x0038($sp)
	jal     game_8024A9CC
	li      $a1, 0x0012
	lw      $a0, 0x0038($sp)
	li      $a1, 0x1300
	jal     player_80252CF4
	move    $a2, $0
.L8025ADD4:
	jal     pl_physics_802559B0
	lw      $a0, 0x0038($sp)
	lw      $a0, 0x0038($sp)
	jal     player_802509B8
	li      $a1, 0x000E
	b       .L8025ADF8
	move    $v0, $0
	b       .L8025ADF8
	nop
.L8025ADF8:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

pl_demo_8025AE0C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $a0, 0x0020($sp)
	jal     player_802509B8
	li      $a1, 0x0036
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x001C($sp)
	bnez    $t6, .L8025AE3C
	nop
	jal     obj_lib_802A4704
	nop
.L8025AE3C:
	lw      $t7, 0x001C($sp)
	li      $at, 0x001C
	bne     $t7, $at, .L8025AE54
	nop
	jal     pl_demo_80257548
	lw      $a0, 0x0020($sp)
.L8025AE54:
	jal     player_80250940
	lw      $a0, 0x0020($sp)
	beqz    $v0, .L8025AE80
	nop
	li.u    $a1, 0x0C400201
	li.l    $a1, 0x0C400201
	lw      $a0, 0x0020($sp)
	jal     player_80252CF4
	move    $a2, $0
	jal     obj_lib_802A4728
	nop
.L8025AE80:
	jal     pl_physics_80255A34
	lw      $a0, 0x0020($sp)
	b       .L8025AE98
	move    $v0, $0
	b       .L8025AE98
	nop
.L8025AE98:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_demo_8025AEA8:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	sw      $a3, 0x002C($sp)
	lw      $a0, 0x0020($sp)
	jal     player_802509B8
	lw      $a1, 0x0024($sp)
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x0020($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0002
	beqz    $t8, .L8025AF38
	nop
	lw      $t9, 0x0020($sp)
	lhu     $t0, 0x001A($t9)
	addiu   $t1, $t0, 0x0001
	sh      $t1, 0x001A($t9)
	lw      $t2, 0x0020($sp)
	lhu     $t3, 0x001A($t2)
	slti    $at, $t3, 0x0005
	bnez    $at, .L8025AF38
	nop
	lw      $t5, 0x0028($sp)
	lw      $t4, 0x001C($sp)
	addiu   $t6, $t5, -0x0001
	slt     $at, $t4, $t6
	beqz    $at, .L8025AF38
	nop
	lw      $t7, 0x0028($sp)
	addiu   $t8, $t7, -0x0001
	sw      $t8, 0x001C($sp)
	lw      $a0, 0x0020($sp)
	jal     player_80250C7C
	lw      $a1, 0x001C($sp)
.L8025AF38:
	jal     pl_physics_802559B0
	lw      $a0, 0x0020($sp)
	lw      $t0, 0x001C($sp)
	li      $at, -0x0001
	bne     $t0, $at, .L8025AF6C
	nop
	li.u    $a1, 0x04488081
	li.l    $a1, 0x04488081
	lw      $a0, 0x0020($sp)
	jal     player_80251310
	li      $a2, 0x0001
	b       .L8025AFC4
	nop
.L8025AF6C:
	lw      $t1, 0x001C($sp)
	lw      $t9, 0x0028($sp)
	bne     $t1, $t9, .L8025AF98
	nop
	li.u    $a1, 0x04438081
	li.l    $a1, 0x04438081
	lw      $a0, 0x0020($sp)
	jal     player_80251310
	li      $a2, 0x0001
	b       .L8025AFC4
	nop
.L8025AF98:
	lw      $t2, 0x001C($sp)
	lw      $t3, 0x002C($sp)
	beq     $t2, $t3, .L8025AFB4
	nop
	lw      $t5, 0x0030($sp)
	bne     $t2, $t5, .L8025AFC4
	nop
.L8025AFB4:
	li.u    $a1, 0x04088081
	li.l    $a1, 0x04088081
	jal     player_802514AC
	lw      $a0, 0x0020($sp)
.L8025AFC4:
	jal     player_80250940
	lw      $a0, 0x0020($sp)
	beqz    $v0, .L8025AFE4
	nop
	lw      $a0, 0x0020($sp)
	lw      $a1, 0x0034($sp)
	jal     player_80252CF4
	move    $a2, $0
.L8025AFE4:
	b       .L8025AFEC
	nop
.L8025AFEC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_demo_8025AFFC:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0020($sp)
	li.u    $t7, 0x0C400201
	li.l    $t7, 0x0C400201
	li      $t6, 0x0087
	sw      $t6, 0x0010($sp)
	sw      $t7, 0x0014($sp)
	lw      $a0, 0x0020($sp)
	li      $a1, 0x0039
	li      $a2, 0x0060
	jal     pl_demo_8025AEA8
	li      $a3, 0x0069
	b       .L8025B040
	move    $v0, $0
	b       .L8025B040
	nop
.L8025B040:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_demo_8025B050:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0020($sp)
	li.u    $t7, 0x0080023C
	li.l    $t7, 0x0080023C
	li      $t6, -0x0002
	sw      $t6, 0x0010($sp)
	sw      $t7, 0x0014($sp)
	lw      $a0, 0x0020($sp)
	li      $a1, 0x003E
	li      $a2, 0x007F
	jal     pl_demo_8025AEA8
	li      $a3, 0x0088
	b       .L8025B094
	move    $v0, $0
	b       .L8025B094
	nop
.L8025B094:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_demo_8025B0A4:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0020($sp)
	li.u    $t7, 0x0C400201
	li.l    $t7, 0x0C400201
	li      $t6, -0x0002
	sw      $t6, 0x0010($sp)
	sw      $t7, 0x0014($sp)
	lw      $a0, 0x0020($sp)
	li      $a1, 0x0055
	li      $a2, 0x0074
	jal     pl_demo_8025AEA8
	li      $a3, 0x0081
	b       .L8025B0E8
	move    $v0, $0
	b       .L8025B0E8
	nop
.L8025B0E8:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_demo_8025B0F8:
	sh      $0, 0x0018($a0)
	sh      $0, 0x001A($a0)
	lw      $t6, 0x001C($a0)
	addiu   $t7, $t6, 0x0001
	sw      $t7, 0x001C($a0)
	jr      $ra
	nop
	jr      $ra
	nop

pl_demo_8025B11C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $at, %hi(hud+0x0A)
	sh      $0, %lo(hud+0x0A)($at)
	lw      $t7, 0x0018($sp)
	li      $t6, 0x0009
	lw      $t8, 0x0094($t7)
	sh      $t6, 0x001E($t8)
	lw      $t9, 0x0018($sp)
	li      $at, -0x0002
	lw      $t0, 0x0088($t9)
	lh      $t1, 0x0002($t0)
	and     $t2, $t1, $at
	sh      $t2, 0x0002($t0)
	jal     pl_demo_8025B0F8
	lw      $a0, 0x0018($sp)
	b       .L8025B168
	nop
.L8025B168:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_demo_8025B178:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x0034($sp)
	sw      $a0, 0x0040($sp)
	sw      $s0, 0x0030($sp)
	lw      $t6, 0x0040($sp)
	li      $at, 0x0009
	lw      $t7, 0x0094($t6)
	lh      $t8, 0x001E($t7)
	beq     $t8, $at, .L8025B218
	nop
	lw      $t9, 0x0040($sp)
	lhu     $s0, 0x001A($t9)
	lhu     $t1, 0x001A($t9)
	xori    $t0, $s0, 0x0025
	sltiu   $t0, $t0, 0x0001
	move    $s0, $t0
	addiu   $t2, $t1, 0x0001
	beqz    $s0, .L8025B218
	sh      $t2, 0x001A($t9)
	lui     $a0, %hi(object)
	la.u    $a3, o_13002A48
	li      $t3, -0x0530
	li      $t4, 0x003C
	li      $t5, 0x1238
	li      $t6, 0x00B4
	sw      $t6, 0x0020($sp)
	sw      $t5, 0x0018($sp)
	sw      $t4, 0x0014($sp)
	sw      $t3, 0x0010($sp)
	la.l    $a3, o_13002A48
	lw      $a0, %lo(object)($a0)
	move    $a1, $0
	li      $a2, 0x0016
	sw      $0, 0x001C($sp)
	jal     obj_lib_8029E9AC
	sw      $0, 0x0024($sp)
	lui     $at, %hi(pl_demo_8033B2A0)
	sw      $v0, %lo(pl_demo_8033B2A0)($at)
	jal     pl_demo_8025B0F8
	lw      $a0, 0x0040($sp)
.L8025B218:
	b       .L8025B220
	nop
.L8025B220:
	lw      $ra, 0x0034($sp)
	lw      $s0, 0x0030($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

pl_demo_8025B234:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(pl_demo_8033B2A0)
	lw      $t6, %lo(pl_demo_8033B2A0)($t6)
	li      $at, 0x43820000
	mtc1    $at, $f14
	li      $a2, 0x41200000
	jal     camera_80289B0C
	lwc1    $f12, 0x00A4($t6)
	lui     $t7, %hi(pl_demo_8033B2A0)
	lw      $t7, %lo(pl_demo_8033B2A0)($t7)
	swc1    $f0, 0x00A4($t7)
	lw      $t8, 0x0028($sp)
	lhu     $t9, 0x001A($t8)
	bnez    $t9, .L8025B294
	nop
	lui     $a1, %hi(pl_demo_8033B2A0)
	lw      $a1, %lo(pl_demo_8033B2A0)($a1)
	li.u    $a0, 0x7017A081
	li.l    $a0, 0x7017A081
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
.L8025B294:
	lw      $t0, 0x0028($sp)
	lhu     $s0, 0x001A($t0)
	lhu     $t2, 0x001A($t0)
	xori    $t1, $s0, 0x0026
	sltiu   $t1, $t1, 0x0001
	move    $s0, $t1
	addiu   $t3, $t2, 0x0001
	beqz    $s0, .L8025B2D0
	sh      $t3, 0x001A($t0)
	li      $at, 0x42700000
	mtc1    $at, $f4
	lw      $t4, 0x0028($sp)
	swc1    $f4, 0x004C($t4)
	jal     pl_demo_8025B0F8
	lw      $a0, 0x0028($sp)
.L8025B2D0:
	b       .L8025B2D8
	nop
.L8025B2D8:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_demo_8025B2EC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	li      $at, 0x0019
	lhu     $t7, 0x001A($t6)
	bne     $t7, $at, .L8025B31C
	nop
	li      $t8, 0x003F
	lui     $at, %hi(hud+0x0A)
	sh      $t8, %lo(hud+0x0A)($at)
.L8025B31C:
	lw      $t9, 0x0028($sp)
	lhu     $s0, 0x001A($t9)
	lhu     $t1, 0x001A($t9)
	slti    $t0, $s0, 0x0076
	xori    $t0, $t0, 0x0001
	move    $s0, $t0
	addiu   $t2, $t1, 0x0001
	beqz    $s0, .L8025B3E8
	sh      $t2, 0x001A($t9)
	lw      $t3, 0x0028($sp)
	lw      $t4, 0x0088($t3)
	lh      $t5, 0x0002($t4)
	ori     $t6, $t5, 0x0001
	sh      $t6, 0x0002($t4)
	li.u    $a1, 0x24048081
	li.l    $a1, 0x24048081
	lw      $a0, 0x0028($sp)
	jal     player_80251120
	li      $a2, 0x00020000
	li.u    $a1, 0x0444A081
	li.l    $a1, 0x0444A081
	lw      $a0, 0x0028($sp)
	jal     player_80251120
	li      $a2, 0x00010000
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	li      $a1, 0x004D
	lw      $a0, 0x0028($sp)
	jal     player_80251708
	li      $a1, 0x41200000
	lw      $a0, 0x0028($sp)
	jal     pl_physics_80256B24
	move    $a1, $0
	li      $at, 0x0001
	bne     $v0, $at, .L8025B3E8
	nop
	li      $a0, 0x0002
	jal     Na_IO_unlock
	li      $a1, 0x0330
	li.u    $a1, 0x04088081
	li.l    $a1, 0x04088081
	jal     player_802514AC
	lw      $a0, 0x0028($sp)
	lw      $t7, 0x0028($sp)
	li.u    $a0, 0x24118081
	li.l    $a0, 0x24118081
	lw      $a1, 0x0088($t7)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
	jal     pl_demo_8025B0F8
	lw      $a0, 0x0028($sp)
.L8025B3E8:
	b       .L8025B3F0
	nop
.L8025B3F0:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_demo_8025B404:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	jal     player_802509B8
	li      $a1, 0x004E
	jal     player_80250940
	lw      $a0, 0x0018($sp)
	beqz    $v0, .L8025B434
	nop
	jal     pl_demo_8025B0F8
	lw      $a0, 0x0018($sp)
.L8025B434:
	jal     pl_physics_802559B0
	lw      $a0, 0x0018($sp)
	b       .L8025B444
	nop
.L8025B444:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_demo_8025B454:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lhu     $s0, 0x001A($t6)
	lhu     $t8, 0x001A($t6)
	sltiu   $t7, $s0, 0x0001
	move    $s0, $t7
	addiu   $t9, $t8, 0x0001
	beqz    $s0, .L8025B4A8
	sh      $t9, 0x001A($t6)
	lui     $a1, %hi(pl_demo_8033B2A0)
	lw      $a1, %lo(pl_demo_8033B2A0)($a1)
	li.u    $a0, 0x7016A081
	li.l    $a0, 0x7016A081
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	li      $a1, 0x00C2
.L8025B4A8:
	lui     $t0, %hi(pl_demo_8033B2A0)
	lw      $t0, %lo(pl_demo_8033B2A0)($t0)
	li      $at, 0x40A00000
	mtc1    $at, $f6
	lwc1    $f4, 0x00A4($t0)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x00A4($t0)
	lui     $t1, %hi(pl_demo_8033B2A0)
	lw      $t1, %lo(pl_demo_8033B2A0)($t1)
	li      $at, 0x42480000
	mtc1    $at, $f16
	lwc1    $f10, 0x00A4($t1)
	c.le.s  $f10, $f16
	nop
	bc1f    .L8025B4FC
	nop
	lui     $a0, %hi(pl_demo_8033B2A0)
	jal     obj_lib_802A0568
	lw      $a0, %lo(pl_demo_8033B2A0)($a0)
	jal     pl_demo_8025B0F8
	lw      $a0, 0x0028($sp)
.L8025B4FC:
	jal     pl_physics_802559B0
	lw      $a0, 0x0028($sp)
	b       .L8025B50C
	nop
.L8025B50C:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_demo_8025B520:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $t6, %hi(_camera_bss+0x6B0)
	lw      $t6, %lo(_camera_bss+0x6B0)($t6)
	lbu     $t7, 0x0030($t6)
	bnez    $t7, .L8025B56C
	nop
	lui     $t8, %hi(_camera_bss+0x328)
	lh      $t8, %lo(_camera_bss+0x328)($t8)
	li      $at, -0x2001
	and     $t9, $t8, $at
	lui     $at, %hi(_camera_bss+0x328)
	sh      $t9, %lo(_camera_bss+0x328)($at)
	li.u    $a1, 0x0C400201
	li.l    $a1, 0x0C400201
	lw      $a0, 0x0018($sp)
	jal     player_80252CF4
	move    $a2, $0
.L8025B56C:
	jal     pl_physics_802559B0
	lw      $a0, 0x0018($sp)
	b       .L8025B57C
	nop
.L8025B57C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_demo_8025B58C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lw      $t7, 0x001C($t6)
	sltiu   $at, $t7, 0x0007
	beqz    $at, .L8025B634
	nop
	sll     $t7, $t7, 2
	lui     $at, %hi(pl_demo_803366EC)
	addu    $at, $at, $t7
	lw      $t7, %lo(pl_demo_803366EC)($at)
	jr      $t7
	nop
.globl L8025B5C4
L8025B5C4:
	jal     pl_demo_8025B11C
	lw      $a0, 0x0018($sp)
	b       .L8025B634
	nop
.globl L8025B5D4
L8025B5D4:
	jal     pl_demo_8025B178
	lw      $a0, 0x0018($sp)
	b       .L8025B634
	nop
.globl L8025B5E4
L8025B5E4:
	jal     pl_demo_8025B234
	lw      $a0, 0x0018($sp)
	b       .L8025B634
	nop
.globl L8025B5F4
L8025B5F4:
	jal     pl_demo_8025B2EC
	lw      $a0, 0x0018($sp)
	b       .L8025B634
	nop
.globl L8025B604
L8025B604:
	jal     pl_demo_8025B404
	lw      $a0, 0x0018($sp)
	b       .L8025B634
	nop
.globl L8025B614
L8025B614:
	jal     pl_demo_8025B454
	lw      $a0, 0x0018($sp)
	b       .L8025B634
	nop
.globl L8025B624
L8025B624:
	jal     pl_demo_8025B520
	lw      $a0, 0x0018($sp)
	b       .L8025B634
	nop
.L8025B634:
	b       .L8025B644
	move    $v0, $0
	b       .L8025B644
	nop
.L8025B644:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_demo_8025B654:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lhu     $t7, 0x0018($t6)
	bnez    $t7, .L8025B714
	nop
	lw      $t8, 0x0018($sp)
	lhu     $t9, 0x0002($t8)
	ori     $t0, $t9, 0x0080
	sh      $t0, 0x0002($t8)
	lw      $t1, 0x0018($sp)
	lw      $t2, 0x0004($t1)
	ori     $t3, $t2, 0x0018
	sw      $t3, 0x0004($t1)
	lw      $t5, 0x0018($sp)
	li      $t4, -0x8000
	sh      $t4, 0x002E($t5)
	mtc1    $0, $f4
	lw      $t6, 0x0018($sp)
	swc1    $f4, 0x003C($t6)
	mtc1    $0, $f6
	lw      $t7, 0x0018($sp)
	swc1    $f6, 0x0044($t7)
	lw      $a0, 0x0018($sp)
	jal     player_80251708
	li      $a1, 0x0000
	lw      $a0, 0x0018($sp)
	jal     player_802509B8
	li      $a1, 0x0056
	lw      $a0, 0x0018($sp)
	jal     pl_physics_80256B24
	li      $a1, 0x0001
	li      $at, 0x0001
	bne     $v0, $at, .L8025B70C
	nop
	jal     bgm_stage_play
	li      $a0, 0x0F1F
	li.u    $a1, 0x04088081
	li.l    $a1, 0x04088081
	jal     player_802514AC
	lw      $a0, 0x0018($sp)
	lw      $t9, 0x0018($sp)
	lhu     $t0, 0x0018($t9)
	addiu   $t8, $t0, 0x0001
	sh      $t8, 0x0018($t9)
.L8025B70C:
	b       .L8025B748
	nop
.L8025B714:
	lw      $a0, 0x0018($sp)
	jal     player_802509B8
	li      $a1, 0x0057
	jal     player_80250940
	lw      $a0, 0x0018($sp)
	beqz    $v0, .L8025B748
	nop
	lw      $t3, 0x0018($sp)
	li      $t2, 0x000A
	lw      $t1, 0x0094($t3)
	sh      $t2, 0x001E($t1)
	jal     pl_demo_8025B0F8
	lw      $a0, 0x0018($sp)
.L8025B748:
	b       .L8025B750
	nop
.L8025B750:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_demo_8025B760:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0030($sp)
	lw      $t7, 0x0088($t6)
	sw      $t7, 0x002C($sp)
	lw      $t8, 0x0030($sp)
	lhu     $t9, 0x0018($t8)
	bnez    $t9, .L8025B7DC
	nop
	lw      $a0, 0x0030($sp)
	jal     player_802509B8
	li      $a1, 0x0025
	mtc1    $0, $f4
	lw      $t0, 0x002C($sp)
	swc1    $f4, 0x0110($t0)
	jal     player_8025097C
	lw      $a0, 0x0030($sp)
	beqz    $v0, .L8025B7D4
	nop
	li.u    $a1, 0x04088081
	li.l    $a1, 0x04088081
	jal     player_802514AC
	lw      $a0, 0x0030($sp)
	lw      $t1, 0x0030($sp)
	lhu     $t2, 0x0018($t1)
	addiu   $t3, $t2, 0x0001
	sh      $t3, 0x0018($t1)
.L8025B7D4:
	b       .L8025B92C
	nop
.L8025B7DC:
	lw      $a0, 0x0030($sp)
	jal     player_802509B8
	li      $a1, 0x0026
	sw      $v0, 0x0028($sp)
	lw      $t4, 0x0028($sp)
	li      $at, 0x0003
	beq     $t4, $at, .L8025B814
	nop
	li      $at, 0x001C
	beq     $t4, $at, .L8025B814
	nop
	li      $at, 0x003C
	bne     $t4, $at, .L8025B828
	nop
.L8025B814:
	li.u    $a1, 0x04008081
	li.l    $a1, 0x04008081
	lw      $a0, 0x0030($sp)
	jal     player_80251310
	li      $a2, 0x0001
.L8025B828:
	lw      $t5, 0x0028($sp)
	slti    $at, $t5, 0x0003
	bnez    $at, .L8025B850
	nop
	lw      $t6, 0x002C($sp)
	li      $at, 0x42000000
	mtc1    $at, $f8
	lwc1    $f6, 0x0110($t6)
	sub.s   $f10, $f6, $f8
	swc1    $f10, 0x0110($t6)
.L8025B850:
	lw      $s0, 0x0028($sp)
	li      $at, 0x0003
	beq     $s0, $at, .L8025B880
	nop
	li      $at, 0x001C
	beq     $s0, $at, .L8025B8C4
	nop
	li      $at, 0x003C
	beq     $s0, $at, .L8025B8E4
	nop
	b       .L8025B904
	nop
.L8025B880:
	lui     $a0, %hi(_Na_bss+0x5F18)
	lw      $a0, %lo(_Na_bss+0x5F18)($a0)
	li      $at, 0x0003
	lw      $t9, 0x0030($sp)
	divu    $0, $a0, $at
	mfhi    $t7
	move    $a0, $t7
	lw      $a1, 0x0088($t9)
	sll     $t8, $a0, 16
	li.u    $at, 0x24008081
	li.l    $at, 0x24008081
	move    $a0, $t8
	addu    $a0, $a0, $at
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
	b       .L8025B904
	nop
.L8025B8C4:
	lw      $t0, 0x0030($sp)
	li.u    $a0, 0x24038081
	li.l    $a0, 0x24038081
	lw      $a1, 0x0088($t0)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
	b       .L8025B904
	nop
.L8025B8E4:
	lw      $t2, 0x0030($sp)
	li.u    $a0, 0x24048081
	li.l    $a0, 0x24048081
	lw      $a1, 0x0088($t2)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
	b       .L8025B904
	nop
.L8025B904:
	lw      $t3, 0x0030($sp)
	lw      $t1, 0x0008($t3)
	ori     $t4, $t1, 0x0008
	sw      $t4, 0x0008($t3)
	jal     player_8025097C
	lw      $a0, 0x0030($sp)
	beqz    $v0, .L8025B92C
	nop
	jal     pl_demo_8025B0F8
	lw      $a0, 0x0030($sp)
.L8025B92C:
	lw      $a0, 0x0030($sp)
	lw      $t5, 0x002C($sp)
	li.u    $a2, 0x43998000
	li.l    $a2, 0x43998000
	li      $a1, 0x0000
	addiu   $a0, $a0, 0x003C
	jal     vecf_set
	lw      $a3, 0x0110($t5)
	jal     player_80251020
	lw      $a0, 0x0030($sp)
	lw      $a0, 0x002C($sp)
	lw      $a1, 0x0030($sp)
	addiu   $a0, $a0, 0x0020
	jal     vecf_cpy
	addiu   $a1, $a1, 0x003C
	lw      $a0, 0x002C($sp)
	lw      $t6, 0x0030($sp)
	move    $a1, $0
	move    $a3, $0
	addiu   $a0, $a0, 0x001A
	jal     vecs_set
	lh      $a2, 0x002E($t6)
	b       .L8025B994
	move    $v0, $0
	b       .L8025B994
	nop
.L8025B994:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

pl_demo_8025B9A8:
	addiu   $sp, $sp, -0x0048
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0048($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0048($sp)
	lw      $t7, 0x0088($t6)
	sw      $t7, 0x0038($sp)
	lw      $t8, 0x0048($sp)
	lhu     $s0, 0x0018($t8)
	beqz    $s0, .L8025B9F4
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L8025BA1C
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L8025BB48
	nop
	b       .L8025BB64
	nop
.L8025B9F4:
	lw      $a0, 0x0048($sp)
	jal     player_802509B8
	li      $a1, 0x002A
	la.u    $a0, pl_demo_8032DB5C
	jal     bspline_init
	la.l    $a0, pl_demo_8032DB5C
	lw      $t9, 0x0048($sp)
	lhu     $t0, 0x0018($t9)
	addiu   $t1, $t0, 0x0001
	sh      $t1, 0x0018($t9)
.L8025BA1C:
	jal     bspline_update
	addiu   $a0, $sp, 0x003C
	beqz    $v0, .L8025BA54
	nop
	li.u    $a1, 0x0100088C
	li.l    $a1, 0x0100088C
	lw      $a0, 0x0048($sp)
	jal     player_80252CF4
	move    $a2, $0
	lw      $t2, 0x0048($sp)
	lhu     $t3, 0x0018($t2)
	addiu   $t4, $t3, 0x0001
	b       .L8025BB40
	sh      $t4, 0x0018($t2)
.L8025BA54:
	lw      $t6, 0x0048($sp)
	addiu   $t5, $sp, 0x003C
	lwc1    $f4, 0x0000($t5)
	lwc1    $f6, 0x003C($t6)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0034($sp)
	lw      $t8, 0x0048($sp)
	addiu   $t7, $sp, 0x003C
	lwc1    $f10, 0x0004($t7)
	lwc1    $f16, 0x0040($t8)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0030($sp)
	lw      $t1, 0x0048($sp)
	addiu   $t0, $sp, 0x003C
	lwc1    $f4, 0x0008($t0)
	lwc1    $f6, 0x0044($t1)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x002C($sp)
	lwc1    $f10, 0x0034($sp)
	lwc1    $f18, 0x002C($sp)
	mul.s   $f16, $f10, $f10
	nop
	mul.s   $f4, $f18, $f18
	jal     sqrtf
	add.s   $f12, $f16, $f4
	swc1    $f0, 0x0028($sp)
	lwc1    $f12, 0x002C($sp)
	jal     atan2
	lwc1    $f14, 0x0034($sp)
	sh      $v0, 0x0026($sp)
	lw      $a0, 0x0048($sp)
	addiu   $a1, $sp, 0x003C
	jal     vecf_cpy
	addiu   $a0, $a0, 0x003C
	lwc1    $f12, 0x0028($sp)
	jal     atan2
	lwc1    $f14, 0x0030($sp)
	lw      $t3, 0x0048($sp)
	subu    $t9, $0, $v0
	lw      $t4, 0x0088($t3)
	sh      $t9, 0x001A($t4)
	lw      $t5, 0x0048($sp)
	lh      $t2, 0x0026($sp)
	lw      $t6, 0x0088($t5)
	sh      $t2, 0x001C($t6)
	lw      $t7, 0x0048($sp)
	lh      $t0, 0x0026($sp)
	lh      $t8, 0x002E($t7)
	lw      $t5, 0x0088($t7)
	subu    $t1, $t8, $t0
	sll     $t3, $t1, 16
	sra     $t9, $t3, 16
	sll     $t4, $t9, 2
	addu    $t4, $t4, $t9
	sll     $t4, $t4, 2
	sh      $t4, 0x001E($t5)
	lh      $t2, 0x0026($sp)
	lw      $t6, 0x0048($sp)
	sh      $t2, 0x002E($t6)
.L8025BB40:
	b       .L8025BB64
	nop
.L8025BB48:
	li.u    $a1, 0x0100088C
	li.l    $a1, 0x0100088C
	lw      $a0, 0x0048($sp)
	jal     player_80252CF4
	move    $a2, $0
	b       .L8025BB64
	nop
.L8025BB64:
	lw      $t0, 0x0048($sp)
	li      $t8, 0x0005
	lw      $t1, 0x0098($t0)
	sb      $t8, 0x0006($t1)
	lw      $t3, 0x0048($sp)
	lw      $a0, 0x0088($t3)
	addiu   $a1, $t3, 0x003C
	jal     vecf_cpy
	addiu   $a0, $a0, 0x0020
	lw      $t9, 0x0048($sp)
	lw      $t7, 0x0008($t9)
	ori     $t4, $t7, 0x0008
	sw      $t4, 0x0008($t9)
	lw      $t5, 0x0048($sp)
	lhu     $s0, 0x001A($t5)
	lhu     $t6, 0x001A($t5)
	xori    $t2, $s0, 0x01F4
	sltiu   $t2, $t2, 0x0001
	move    $s0, $t2
	addiu   $t0, $t6, 0x0001
	beqz    $s0, .L8025BBC8
	sh      $t0, 0x001A($t5)
	lw      $a0, 0x0048($sp)
	jal     game_8024A9CC
	li      $a1, 0x0017
.L8025BBC8:
	b       .L8025BBD8
	move    $v0, $0
	b       .L8025BBD8
	nop
.L8025BBD8:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0048
	jr      $ra
	nop

pl_demo_8025BBEC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lw      $s0, 0x001C($t6)
	beqz    $s0, .L8025BC2C
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L8025BC3C
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L8025BC4C
	nop
	b       .L8025BC5C
	nop
.L8025BC2C:
	jal     pl_demo_8025B654
	lw      $a0, 0x0028($sp)
	b       .L8025BC5C
	nop
.L8025BC3C:
	jal     pl_demo_8025B760
	lw      $a0, 0x0028($sp)
	b       .L8025BC5C
	nop
.L8025BC4C:
	jal     pl_demo_8025B9A8
	lw      $a0, 0x0028($sp)
	b       .L8025BC5C
	nop
.L8025BC5C:
	b       .L8025BC6C
	move    $v0, $0
	b       .L8025BC6C
	nop
.L8025BC6C:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_demo_8025BC80:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x002C($sp)
	sw      $a0, 0x0038($sp)
	sw      $a1, 0x003C($sp)
	sw      $a2, 0x0040($sp)
	sw      $a3, 0x0044($sp)
	lui     $t6, %hi(pl_demo_8032DC34+2)
	lhu     $t6, %lo(pl_demo_8032DC34+2)($t6)
	lui     $at, %hi(math_cos)
	lwc1    $f4, 0x0044($sp)
	sra     $t7, $t6, 4
	sll     $t8, $t7, 2
	addu    $at, $at, $t8
	lwc1    $f6, %lo(math_cos)($at)
	lui     $t9, %hi(pl_demo_8032DC38+2)
	lhu     $t9, %lo(pl_demo_8032DC38+2)($t9)
	mul.s   $f8, $f4, $f6
	lui     $at, %hi(math_sin)
	sra     $t0, $t9, 4
	sll     $t1, $t0, 2
	addu    $at, $at, $t1
	lwc1    $f10, %lo(math_sin)($at)
	mul.s   $f16, $f10, $f8
	trunc.w.s $f18, $f16
	mfc1    $t3, $f18
	nop
	sh      $t3, 0x0036($sp)
	lui     $t4, %hi(pl_demo_8032DC34+2)
	lhu     $t4, %lo(pl_demo_8032DC34+2)($t4)
	lui     $at, %hi(math_sin)
	lwc1    $f6, 0x0044($sp)
	sra     $t5, $t4, 4
	sll     $t6, $t5, 2
	addu    $at, $at, $t6
	lwc1    $f4, %lo(math_sin)($at)
	mul.s   $f10, $f4, $f6
	trunc.w.s $f8, $f10
	mfc1    $t8, $f8
	nop
	sh      $t8, 0x0034($sp)
	lui     $t9, %hi(pl_demo_8032DC34+2)
	lhu     $t9, %lo(pl_demo_8032DC34+2)($t9)
	la.u    $t2, math_cos
	la.l    $t2, math_cos
	sra     $t0, $t9, 4
	sll     $t1, $t0, 2
	addu    $t3, $t1, $t2
	lwc1    $f18, 0x0000($t3)
	lwc1    $f16, 0x0044($sp)
	lui     $t4, %hi(pl_demo_8032DC38+2)
	lhu     $t4, %lo(pl_demo_8032DC38+2)($t4)
	mul.s   $f4, $f16, $f18
	sra     $t5, $t4, 4
	sll     $t6, $t5, 2
	addu    $t7, $t6, $t2
	lwc1    $f6, 0x0000($t7)
	mul.s   $f10, $f6, $f4
	trunc.w.s $f8, $f10
	mfc1    $t9, $f8
	nop
	sh      $t9, 0x0032($sp)
	lh      $t0, 0x003A($sp)
	lh      $t1, 0x0036($sp)
	lh      $t4, 0x003E($sp)
	lh      $t5, 0x0034($sp)
	lh      $t2, 0x0042($sp)
	lh      $t7, 0x0032($sp)
	lui     $a0, %hi(object)
	la.u    $a3, o_13002AF0
	addu    $t3, $t0, $t1
	addu    $t6, $t4, $t5
	addu    $t8, $t2, $t7
	sw      $t8, 0x0018($sp)
	sw      $t6, 0x0014($sp)
	sw      $t3, 0x0010($sp)
	la.l    $a3, o_13002AF0
	lw      $a0, %lo(object)($a0)
	move    $a1, $0
	move    $a2, $0
	sw      $0, 0x001C($sp)
	sw      $0, 0x0020($sp)
	jal     obj_lib_8029E9AC
	sw      $0, 0x0024($sp)
	lh      $t9, 0x0036($sp)
	li      $at, 0x0003
	sll     $t0, $t9, 2
	div     $0, $t0, $at
	mflo    $t1
	sh      $t1, 0x0036($sp)
	nop
	lh      $t3, 0x0034($sp)
	li      $at, 0x0003
	sll     $t4, $t3, 2
	div     $0, $t4, $at
	mflo    $t5
	sh      $t5, 0x0036($sp)
	nop
	lh      $t6, 0x0032($sp)
	li      $at, 0x0003
	sll     $t2, $t6, 2
	div     $0, $t2, $at
	mflo    $t7
	sh      $t7, 0x0036($sp)
	nop
	lh      $t8, 0x003A($sp)
	lh      $t9, 0x0036($sp)
	lh      $t1, 0x003E($sp)
	lh      $t3, 0x0034($sp)
	lh      $t5, 0x0042($sp)
	lh      $t6, 0x0032($sp)
	lui     $a0, %hi(object)
	la.u    $a3, o_13002AF0
	subu    $t0, $t8, $t9
	subu    $t4, $t1, $t3
	subu    $t2, $t5, $t6
	sw      $t2, 0x0018($sp)
	sw      $t4, 0x0014($sp)
	sw      $t0, 0x0010($sp)
	la.l    $a3, o_13002AF0
	lw      $a0, %lo(object)($a0)
	move    $a1, $0
	move    $a2, $0
	sw      $0, 0x001C($sp)
	sw      $0, 0x0020($sp)
	jal     obj_lib_8029E9AC
	sw      $0, 0x0024($sp)
	lui     $t7, %hi(pl_demo_8032DC34)
	lw      $t7, %lo(pl_demo_8032DC34)($t7)
	lui     $at, %hi(pl_demo_8032DC34)
	addiu   $t8, $t7, 0x3800
	sw      $t8, %lo(pl_demo_8032DC34)($at)
	lui     $t9, %hi(pl_demo_8032DC38)
	lw      $t9, %lo(pl_demo_8032DC38)($t9)
	lui     $at, %hi(pl_demo_8032DC38)
	addiu   $t0, $t9, 0x6000
	sw      $t0, %lo(pl_demo_8032DC38)($at)
	b       .L8025BEA8
	nop
.L8025BEA8:
	lw      $ra, 0x002C($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

pl_demo_8025BEB8:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0030($sp)
	lw      $t6, 0x0030($sp)
	addiu   $a2, $sp, 0x0024
	move    $a0, $t6
	jal     player_80250E54
	lh      $a1, 0x001C($t6)
	addiu   $t7, $sp, 0x0024
	lh      $t8, 0x0000($t7)
	lw      $t9, 0x0030($sp)
	mtc1    $t8, $f4
	lwc1    $f8, 0x0020($t9)
	cvt.s.w $f6, $f4
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x0020($sp)
	lw      $t0, 0x0030($sp)
	li      $at, 0x41200000
	mtc1    $at, $f18
	lwc1    $f16, 0x0024($t0)
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x001C($sp)
	addiu   $t1, $sp, 0x0024
	lh      $t2, 0x0004($t1)
	lw      $t3, 0x0030($sp)
	mtc1    $t2, $f6
	lwc1    $f10, 0x0028($t3)
	cvt.s.w $f8, $f6
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x0018($sp)
	lwc1    $f12, 0x0020($sp)
	lwc1    $f14, 0x001C($sp)
	lw      $a2, 0x0018($sp)
	jal     map_80381900
	addiu   $a3, $sp, 0x002C
	b       .L8025BF54
	nop
	b       .L8025BF54
	nop
.L8025BF54:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

pl_demo_8025BF64:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	li      $at, 0x0001
	lhu     $t7, 0x001A($t6)
	bne     $t7, $at, .L8025BF94
	nop
	lw      $t9, 0x0018($sp)
	li      $t8, 0x000B
	lw      $t0, 0x0094($t9)
	sh      $t8, 0x001E($t0)
.L8025BF94:
	lw      $t1, 0x0018($sp)
	lhu     $t2, 0x0002($t1)
	ori     $t3, $t2, 0x0080
	sh      $t3, 0x0002($t1)
	lw      $t4, 0x0018($sp)
	lw      $t5, 0x0004($t4)
	ori     $t6, $t5, 0x0018
	sw      $t6, 0x0004($t4)
	lw      $a0, 0x0018($sp)
	jal     player_802509B8
	li      $a1, 0x0056
	lw      $a0, 0x0018($sp)
	jal     player_80251708
	li      $a1, 0x0000
	lw      $a0, 0x0018($sp)
	jal     pl_physics_80256B24
	move    $a1, $0
	li      $at, 0x0001
	bne     $v0, $at, .L8025BFFC
	nop
	li.u    $a1, 0x04088081
	li.l    $a1, 0x04088081
	jal     player_802514AC
	lw      $a0, 0x0018($sp)
	jal     pl_demo_8025B0F8
	lw      $a0, 0x0018($sp)
.L8025BFFC:
	b       .L8025C004
	nop
.L8025C004:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_demo_8025C014:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x002C($sp)
	sw      $a0, 0x0030($sp)
	lw      $a0, 0x0030($sp)
	jal     player_802509B8
	li      $a1, 0x0057
	jal     pl_physics_802559B0
	lw      $a0, 0x0030($sp)
	jal     player_80250940
	lw      $a0, 0x0030($sp)
	beqz    $v0, .L8025C0AC
	nop
	lw      $t7, 0x0030($sp)
	li      $t6, 0x003C
	sh      $t6, 0x00B6($t7)
	lui     $a0, %hi(object)
	la.u    $a3, o_13002A48
	li      $t8, 0x09E0
	li      $t9, -0x0708
	sw      $t9, 0x0018($sp)
	sw      $t8, 0x0014($sp)
	la.l    $a3, o_13002A48
	lw      $a0, %lo(object)($a0)
	move    $a1, $0
	li      $a2, 0x007A
	sw      $0, 0x0010($sp)
	sw      $0, 0x001C($sp)
	sw      $0, 0x0020($sp)
	jal     obj_lib_8029E9AC
	sw      $0, 0x0024($sp)
	lui     $at, %hi(pl_demo_8033B2B0)
	sw      $v0, %lo(pl_demo_8033B2B0)($at)
	lui     $a0, %hi(pl_demo_8033B2B0)
	lw      $a0, %lo(pl_demo_8033B2B0)($a0)
	jal     obj_lib_8029F404
	li      $a1, 0x40400000
	jal     pl_demo_8025B0F8
	lw      $a0, 0x0030($sp)
.L8025C0AC:
	b       .L8025C0B4
	nop
.L8025C0B4:
	lw      $ra, 0x002C($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

pl_demo_8025C0C4:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lhu     $t7, 0x0018($t6)
	bnez    $t7, .L8025C0EC
	nop
	b       .L8025C0F0
	li      $s0, 0x0020
.L8025C0EC:
	li      $s0, 0x0021
.L8025C0F0:
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	move    $a1, $s0
	lw      $t8, 0x0028($sp)
	lhu     $t9, 0x0018($t8)
	bnez    $t9, .L8025C12C
	nop
	jal     player_8025097C
	move    $a0, $t8
	beqz    $v0, .L8025C12C
	nop
	lw      $t0, 0x0028($sp)
	lhu     $t1, 0x0018($t0)
	addiu   $t2, $t1, 0x0001
	sh      $t2, 0x0018($t0)
.L8025C12C:
	lw      $t3, 0x0028($sp)
	li      $at, 0x005A
	lhu     $t4, 0x001A($t3)
	bne     $t4, $at, .L8025C148
	nop
	jal     bgm_stage_play
	li      $a0, 0x0020
.L8025C148:
	lw      $t5, 0x0028($sp)
	li      $at, 0x00FF
	lhu     $t6, 0x001A($t5)
	bne     $t6, $at, .L8025C164
	nop
	jal     pl_demo_8025B0F8
	lw      $a0, 0x0028($sp)
.L8025C164:
	lui     $t7, %hi(pl_demo_8033B2B0)
	lw      $t7, %lo(pl_demo_8033B2B0)($t7)
	lw      $t9, 0x00D4($t7)
	addiu   $t8, $t9, 0x0400
	sw      $t8, 0x00D4($t7)
	move    $a0, $0
	li      $a1, 0x09E0
	li      $a2, -0x0708
	jal     pl_demo_8025BC80
	li      $a3, 0x437A0000
	lui     $a1, %hi(pl_demo_8033B2B0)
	lw      $a1, %lo(pl_demo_8033B2B0)($a1)
	li.u    $a0, 0x600B4001
	li.l    $a0, 0x600B4001
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
	b       .L8025C1AC
	nop
.L8025C1AC:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_demo_8025C1C0:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x002C($sp)
	sw      $a0, 0x0030($sp)
	lw      $t6, 0x0030($sp)
	li      $at, 0x0001
	lhu     $t7, 0x001A($t6)
	bne     $t7, $at, .L8025C1FC
	nop
	li      $t8, 0x00FF
	sw      $t8, 0x0010($sp)
	li      $a0, 0x0001
	li      $a1, 0x000E
	li      $a2, 0x00FF
	jal     scene_wipe
	li      $a3, 0x00FF
.L8025C1FC:
	lw      $t9, 0x0030($sp)
	li      $at, 0x0002
	lhu     $t0, 0x001A($t9)
	bne     $t0, $at, .L8025C224
	nop
	li.u    $a0, 0x701EFF81
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SE_play
	li.l    $a0, 0x701EFF81
.L8025C224:
	lw      $t1, 0x0030($sp)
	li      $at, 0x002C
	lhu     $t2, 0x001A($t1)
	bne     $t2, $at, .L8025C254
	nop
	li      $t3, 0x00FF
	sw      $t3, 0x0010($sp)
	move    $a0, $0
	li      $a1, 0x00C0
	li      $a2, 0x00FF
	jal     scene_wipe
	li      $a3, 0x00FF
.L8025C254:
	lw      $t4, 0x0030($sp)
	li      $at, 0x0028
	lhu     $t5, 0x001A($t4)
	bne     $t5, $at, .L8025C3C0
	nop
	lui     $a0, %hi(pl_demo_8033B2B0)
	jal     obj_lib_802A0568
	lw      $a0, %lo(pl_demo_8033B2B0)($a0)
	lui     $a0, %hi(object)
	la.u    $a3, o_13000EAC
	li      $t6, 0x097C
	li      $t7, -0x0514
	sw      $t7, 0x0018($sp)
	sw      $t6, 0x0014($sp)
	la.l    $a3, o_13000EAC
	lw      $a0, %lo(object)($a0)
	move    $a1, $0
	li      $a2, 0x00DE
	sw      $0, 0x0010($sp)
	sw      $0, 0x001C($sp)
	sw      $0, 0x0020($sp)
	jal     obj_lib_8029E9AC
	sw      $0, 0x0024($sp)
	lui     $at, %hi(pl_demo_8033B2A4)
	sw      $v0, %lo(pl_demo_8033B2A4)($at)
	lui     $t8, %hi(pl_demo_8033B2A4)
	lw      $t8, %lo(pl_demo_8033B2A4)($t8)
	lui     $at, %hi(camera_8032DF24)
	sw      $t8, %lo(camera_8032DF24)($at)
	lui     $a0, %hi(object)
	la.u    $a3, o_13000E88
	li      $t9, 0x00C8
	li      $t0, 0x038A
	li      $t1, -0x050A
	sw      $t1, 0x0018($sp)
	sw      $t0, 0x0014($sp)
	sw      $t9, 0x0010($sp)
	la.l    $a3, o_13000E88
	lw      $a0, %lo(object)($a0)
	move    $a1, $0
	li      $a2, 0x00DD
	sw      $0, 0x001C($sp)
	sw      $0, 0x0020($sp)
	jal     obj_lib_8029E9AC
	sw      $0, 0x0024($sp)
	lui     $at, %hi(pl_demo_8033B2A8)
	sw      $v0, %lo(pl_demo_8033B2A8)($at)
	lui     $a0, %hi(object)
	la.u    $a3, o_13000E88
	li      $t2, -0x00C8
	li      $t3, 0x038A
	li      $t4, -0x050A
	sw      $t4, 0x0018($sp)
	sw      $t3, 0x0014($sp)
	sw      $t2, 0x0010($sp)
	la.l    $a3, o_13000E88
	lw      $a0, %lo(object)($a0)
	move    $a1, $0
	li      $a2, 0x00DD
	sw      $0, 0x001C($sp)
	sw      $0, 0x0020($sp)
	jal     obj_lib_8029E9AC
	sw      $0, 0x0024($sp)
	lui     $at, %hi(pl_demo_8033B2AC)
	sw      $v0, %lo(pl_demo_8033B2AC)($at)
	lui     $t6, %hi(pl_demo_8033B2A4)
	lw      $t6, %lo(pl_demo_8033B2A4)($t6)
	li      $t5, 0x007F
	sw      $t5, 0x017C($t6)
	lui     $t8, %hi(pl_demo_8033B2A8)
	lw      $t8, %lo(pl_demo_8033B2A8)($t8)
	li      $t7, 0x00FF
	sw      $t7, 0x017C($t8)
	lui     $t0, %hi(pl_demo_8033B2AC)
	lw      $t0, %lo(pl_demo_8033B2AC)($t0)
	li      $t9, 0x00FF
	sw      $t9, 0x017C($t0)
	li      $t1, 0x0004
	lui     $at, %hi(pl_demo_8032DB44)
	sb      $t1, %lo(pl_demo_8032DB44)($at)
	li      $t2, 0x0004
	lui     $at, %hi(pl_demo_8033B2B8)
	sh      $t2, %lo(pl_demo_8033B2B8)($at)
	la.u    $t4, pl_demo_8033B2BC
	la.l    $t4, pl_demo_8033B2BC
	li      $t3, 0x0004
	sh      $t3, 0x0000($t4)
	la.u    $t6, pl_demo_8033B2BC
	la.l    $t6, pl_demo_8033B2BC
	li      $t5, 0x0005
	sh      $t5, 0x0002($t6)
.L8025C3C0:
	lw      $t7, 0x0030($sp)
	lhu     $t8, 0x001A($t7)
	slti    $at, $t8, 0x0114
	bnez    $at, .L8025C410
	nop
	lui     $t9, %hi(pl_demo_8033B2A4)
	lw      $t9, %lo(pl_demo_8033B2A4)($t9)
	li      $at, 0x437F0000
	mtc1    $at, $f14
	lw      $t0, 0x017C($t9)
	li      $a2, 0x40000000
	mtc1    $t0, $f4
	jal     camera_80289B0C
	cvt.s.w $f12, $f4
	trunc.w.s $f6, $f0
	lui     $t3, %hi(pl_demo_8033B2A4)
	lw      $t3, %lo(pl_demo_8033B2A4)($t3)
	mfc1    $t2, $f6
	nop
	sw      $t2, 0x017C($t3)
.L8025C410:
	lw      $t4, 0x0030($sp)
	lhu     $t5, 0x001A($t4)
	slti    $at, $t5, 0x0028
	bnez    $at, .L8025C438
	nop
	move    $a0, $0
	li      $a1, 0x0A44
	li      $a2, -0x0514
	jal     pl_demo_8025BC80
	li      $a3, 0x43160000
.L8025C438:
	lw      $t6, 0x0030($sp)
	li      $at, 0x0163
	lhu     $t7, 0x001A($t6)
	bne     $t7, $at, .L8025C454
	nop
	jal     pl_demo_8025B0F8
	lw      $a0, 0x0030($sp)
.L8025C454:
	lw      $t8, 0x0030($sp)
	lhu     $t9, 0x001A($t8)
	slti    $at, $t9, 0x0028
	bnez    $at, .L8025C480
	nop
	lui     $a1, %hi(pl_demo_8033B2A4)
	lw      $a1, %lo(pl_demo_8033B2A4)($a1)
	li.u    $a0, 0x600B4001
	li.l    $a0, 0x600B4001
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
.L8025C480:
	b       .L8025C488
	nop
.L8025C488:
	lw      $ra, 0x002C($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

pl_demo_8025C498:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $t6, %hi(pl_demo_8033B2A4)
	lw      $t6, %lo(pl_demo_8033B2A4)($t6)
	move    $a0, $0
	li      $a2, -0x0514
	lwc1    $f4, 0x00A4($t6)
	li      $a3, 0x43160000
	trunc.w.s $f6, $f4
	mfc1    $a1, $f6
	jal     pl_demo_8025BC80
	nop
	lui     $t8, %hi(pl_demo_8033B2A4)
	lw      $t8, %lo(pl_demo_8033B2A4)($t8)
	lui     $at, %hi(pl_demo_80336708)
	lwc1    $f10, %lo(pl_demo_80336708)($at)
	lwc1    $f8, 0x00A4($t8)
	c.le.s  $f10, $f8
	nop
	bc1f    .L8025C51C
	nop
	lw      $t9, 0x0018($sp)
	lhu     $t0, 0x0018($t9)
	slti    $at, $t0, 0x003C
	beqz    $at, .L8025C514
	nop
	lw      $t1, 0x0018($sp)
	lhu     $t2, 0x0018($t1)
	addiu   $t3, $t2, 0x0005
	sh      $t3, 0x0018($t1)
.L8025C514:
	b       .L8025C54C
	nop
.L8025C51C:
	lw      $t4, 0x0018($sp)
	lhu     $t5, 0x0018($t4)
	slti    $at, $t5, 0x001B
	bnez    $at, .L8025C540
	nop
	lw      $t6, 0x0018($sp)
	lhu     $t7, 0x0018($t6)
	addiu   $t8, $t7, -0x0002
	sh      $t8, 0x0018($t6)
.L8025C540:
	lw      $a0, 0x0018($sp)
	jal     player_802509B8
	li      $a1, 0x001F
.L8025C54C:
	lw      $t0, 0x0018($sp)
	li      $at, 0x000A
	lui     $t9, %hi(pl_demo_8033B2A4)
	lhu     $t2, 0x0018($t0)
	lw      $t9, %lo(pl_demo_8033B2A4)($t9)
	lui     $t1, %hi(pl_demo_8033B2A4)
	div     $0, $t2, $at
	mflo    $t3
	mtc1    $t3, $f18
	lwc1    $f16, 0x00A4($t9)
	lui     $at, %hi(pl_demo_8033670C)
	cvt.s.w $f4, $f18
	sub.s   $f6, $f16, $f4
	swc1    $f6, 0x00A4($t9)
	lw      $t1, %lo(pl_demo_8033B2A4)($t1)
	lwc1    $f10, %lo(pl_demo_8033670C)($at)
	lwc1    $f8, 0x00A4($t1)
	c.le.s  $f8, $f10
	nop
	bc1f    .L8025C5B4
	nop
	lui     $at, %hi(pl_demo_80336710)
	lui     $t4, %hi(pl_demo_8033B2A4)
	lw      $t4, %lo(pl_demo_8033B2A4)($t4)
	lwc1    $f18, %lo(pl_demo_80336710)($at)
	swc1    $f18, 0x00A4($t4)
.L8025C5B4:
	lui     $a1, %hi(pl_demo_8033B2A4)
	lw      $a1, %lo(pl_demo_8033B2A4)($a1)
	li.u    $a0, 0x600B4001
	li.l    $a0, 0x600B4001
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
	lw      $t5, 0x0018($sp)
	lhu     $t7, 0x001A($t5)
	slti    $at, $t7, 0x0248
	bnez    $at, .L8025C5E8
	nop
	jal     pl_demo_8025B0F8
	lw      $a0, 0x0018($sp)
.L8025C5E8:
	b       .L8025C5F0
	nop
.L8025C5F0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_demo_8025C600:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	li      $at, 0x0016
	lhu     $t7, 0x001A($t6)
	bne     $t7, $at, .L8025C62C
	nop
	li      $t8, 0x0005
	lui     $at, %hi(pl_demo_8033B2B8)
	sh      $t8, %lo(pl_demo_8033B2B8)($at)
.L8025C62C:
	lw      $t9, 0x0020($sp)
	li      $at, 0x41A00000
	mtc1    $at, $f6
	lwc1    $f4, 0x0044($t9)
	lui     $at, %hi(pl_demo_80336714)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0044($t9)
	lw      $t0, 0x0020($sp)
	lwc1    $f16, %lo(pl_demo_80336714)($at)
	lwc1    $f10, 0x0044($t0)
	c.le.s  $f10, $f16
	nop
	bc1f    .L8025C67C
	nop
	lui     $at, %hi(pl_demo_80336718)
	lwc1    $f18, %lo(pl_demo_80336718)($at)
	lw      $t1, 0x0020($sp)
	swc1    $f18, 0x0044($t1)
	jal     pl_demo_8025B0F8
	lw      $a0, 0x0020($sp)
.L8025C67C:
	lw      $t2, 0x0020($sp)
	addiu   $a3, $sp, 0x001C
	lwc1    $f12, 0x003C($t2)
	lwc1    $f14, 0x0040($t2)
	jal     map_80381900
	lw      $a2, 0x0044($t2)
	lw      $t3, 0x0020($sp)
	swc1    $f0, 0x0040($t3)
	lw      $a0, 0x0020($sp)
	li      $a1, 0x0072
	jal     player_80250B04
	li      $a2, 0x00080000
	lw      $a0, 0x0020($sp)
	li      $a1, 0x0009
	jal     pl_walk_80263EE4
	li      $a2, 0x002D
	lw      $t4, 0x0020($sp)
	lw      $a0, 0x0088($t4)
	addiu   $a1, $t4, 0x003C
	jal     vecf_cpy
	addiu   $a0, $a0, 0x0020
	lw      $t5, 0x0020($sp)
	lw      $t6, 0x0008($t5)
	ori     $t7, $t6, 0x0001
	sw      $t7, 0x0008($t5)
	b       .L8025C6E8
	nop
.L8025C6E8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_demo_8025C6F8:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lhu     $t7, 0x0018($t6)
	bnez    $t7, .L8025C720
	nop
	b       .L8025C724
	li      $s0, 0x0022
.L8025C720:
	li      $s0, 0x001E
.L8025C724:
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	move    $a1, $s0
	sw      $v0, 0x0024($sp)
	lw      $t8, 0x0028($sp)
	lhu     $t9, 0x0018($t8)
	bnez    $t9, .L8025C77C
	nop
	lw      $t0, 0x0024($sp)
	li      $at, 0x0008
	bne     $t0, $at, .L8025C75C
	nop
	jal     pl_demo_802574E8
	lw      $a0, 0x0028($sp)
.L8025C75C:
	jal     player_80250940
	lw      $a0, 0x0028($sp)
	beqz    $v0, .L8025C77C
	nop
	lw      $t1, 0x0028($sp)
	lhu     $t2, 0x0018($t1)
	addiu   $t3, $t2, 0x0001
	sh      $t3, 0x0018($t1)
.L8025C77C:
	lw      $t4, 0x0028($sp)
	li      $at, 0x0050
	lhu     $s0, 0x001A($t4)
	beq     $s0, $at, .L8025C7EC
	nop
	li      $at, 0x0051
	beq     $s0, $at, .L8025C800
	nop
	li      $at, 0x0091
	beq     $s0, $at, .L8025C814
	nop
	li      $at, 0x00E4
	beq     $s0, $at, .L8025C828
	nop
	li      $at, 0x00E6
	beq     $s0, $at, .L8025C848
	nop
	li      $at, 0x0113
	beq     $s0, $at, .L8025C88C
	nop
	li      $at, 0x0122
	beq     $s0, $at, .L8025C8A4
	nop
	li      $at, 0x01E0
	beq     $s0, $at, .L8025C8D8
	nop
	b       .L8025C8E8
	nop
.L8025C7EC:
	li      $t5, 0x0006
	lui     $at, %hi(pl_demo_8033B2B8)
	sh      $t5, %lo(pl_demo_8033B2B8)($at)
	b       .L8025C8E8
	nop
.L8025C800:
	li      $t6, 0x0003
	lui     $at, %hi(pl_demo_8032DB44)
	sb      $t6, %lo(pl_demo_8032DB44)($at)
	b       .L8025C8E8
	nop
.L8025C814:
	li      $t7, 0x0002
	lui     $at, %hi(pl_demo_8032DB44)
	sb      $t7, %lo(pl_demo_8032DB44)($at)
	b       .L8025C8E8
	nop
.L8025C828:
	li      $t8, 0x0001
	lui     $at, %hi(pl_demo_8032DB44)
	sb      $t8, %lo(pl_demo_8032DB44)($at)
	li      $t9, 0x0001
	lui     $at, %hi(pl_demo_8032DB48)
	sb      $t9, %lo(pl_demo_8032DB48)($at)
	b       .L8025C8E8
	nop
.L8025C848:
	li      $a0, 0x00A0
	li      $a1, 0x00E3
	move    $a2, $0
	jal     message_802DAAE4
	li      $a3, 0x001E
	move    $a0, $0
	li      $a1, 0x003C
	jal     Na_SEQ_mute
	li      $a2, 0x0028
	lui     $a1, %hi(pl_demo_8033B2A4)
	lw      $a1, %lo(pl_demo_8033B2A4)($a1)
	li.u    $a0, 0x2438FF81
	li.l    $a0, 0x2438FF81
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
	b       .L8025C8E8
	nop
.L8025C88C:
	lui     $at, %hi(pl_demo_8032DB44)
	sb      $0, %lo(pl_demo_8032DB44)($at)
	lui     $at, %hi(pl_demo_8032DB48)
	sb      $0, %lo(pl_demo_8032DB48)($at)
	b       .L8025C8E8
	nop
.L8025C8A4:
	li      $a0, 0x00A0
	li      $a1, 0x00E3
	li      $a2, 0x0001
	jal     message_802DAAE4
	li      $a3, 0x003C
	lui     $a1, %hi(pl_demo_8033B2A4)
	lw      $a1, %lo(pl_demo_8033B2A4)($a1)
	li.u    $a0, 0x2439FF81
	li.l    $a0, 0x2439FF81
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
	b       .L8025C8E8
	nop
.L8025C8D8:
	jal     pl_demo_8025B0F8
	lw      $a0, 0x0028($sp)
	b       .L8025C8E8
	nop
.L8025C8E8:
	b       .L8025C8F0
	nop
.L8025C8F0:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_demo_8025C904:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	li      $t6, 0x0009
	lui     $at, %hi(pl_demo_8033B2B8)
	sh      $t6, %lo(pl_demo_8033B2B8)($at)
	lw      $t7, 0x0028($sp)
	li      $at, 0x001D
	lhu     $s0, 0x001A($t7)
	beq     $s0, $at, .L8025C96C
	nop
	li      $at, 0x002D
	beq     $s0, $at, .L8025C9A0
	nop
	li      $at, 0x004B
	beq     $s0, $at, .L8025C9B4
	nop
	li      $at, 0x0082
	beq     $s0, $at, .L8025C9E8
	nop
	li      $at, 0x00C8
	beq     $s0, $at, .L8025CA1C
	nop
	b       .L8025CA2C
	nop
.L8025C96C:
	li      $a0, 0x00A0
	li      $a1, 0x00E3
	li      $a2, 0x0002
	jal     message_802DAAE4
	li      $a3, 0x001E
	lui     $a1, %hi(pl_demo_8033B2A4)
	lw      $a1, %lo(pl_demo_8033B2A4)($a1)
	li.u    $a0, 0x243AFF81
	li.l    $a0, 0x243AFF81
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
	b       .L8025CA2C
	nop
.L8025C9A0:
	li      $t8, 0x0001
	lui     $at, %hi(pl_demo_8032DB48)
	sb      $t8, %lo(pl_demo_8032DB48)($at)
	b       .L8025CA2C
	nop
.L8025C9B4:
	li      $a0, 0x00A0
	li      $a1, 0x00E3
	li      $a2, 0x0003
	jal     message_802DAAE4
	li      $a3, 0x001E
	lui     $a1, %hi(pl_demo_8033B2A4)
	lw      $a1, %lo(pl_demo_8033B2A4)($a1)
	li.u    $a0, 0x243BFF81
	li.l    $a0, 0x243BFF81
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
	b       .L8025CA2C
	nop
.L8025C9E8:
	li      $a0, 0x00A0
	li      $a1, 0x00E3
	li      $a2, 0x0004
	jal     message_802DAAE4
	li      $a3, 0x0028
	lui     $a1, %hi(pl_demo_8033B2A4)
	lw      $a1, %lo(pl_demo_8033B2A4)($a1)
	li.u    $a0, 0x243CFF81
	li.l    $a0, 0x243CFF81
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
	b       .L8025CA2C
	nop
.L8025CA1C:
	jal     pl_demo_8025B0F8
	lw      $a0, 0x0028($sp)
	b       .L8025CA2C
	nop
.L8025CA2C:
	b       .L8025CA34
	nop
.L8025CA34:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_demo_8025CA48:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	li      $t6, 0x000A
	lui     $at, %hi(pl_demo_8033B2B8)
	sh      $t6, %lo(pl_demo_8033B2B8)($at)
	lw      $t7, 0x0028($sp)
	lhu     $t8, 0x001A($t7)
	slti    $at, $t8, 0x005A
	bnez    $at, .L8025CAB4
	nop
	lw      $t9, 0x0028($sp)
	lhu     $t0, 0x001A($t9)
	slti    $at, $t0, 0x006E
	beqz    $at, .L8025CAA4
	nop
	lui     $t1, %hi(pl_demo_8032DC3C-1*90)
	addu    $t1, $t1, $t0
	lbu     $t1, %lo(pl_demo_8032DC3C-1*90)($t1)
	lw      $t2, 0x0098($t9)
	b       .L8025CAB4
	sb      $t1, 0x0005($t2)
.L8025CAA4:
	lw      $t4, 0x0028($sp)
	li      $t3, 0x0002
	lw      $t5, 0x0098($t4)
	sb      $t3, 0x0005($t5)
.L8025CAB4:
	lw      $t6, 0x0028($sp)
	li      $at, 0x0008
	lhu     $s0, 0x001A($t6)
	beq     $s0, $at, .L8025CB24
	nop
	li      $at, 0x000A
	beq     $s0, $at, .L8025CB34
	nop
	li      $at, 0x0032
	beq     $s0, $at, .L8025CB48
	nop
	li      $at, 0x004B
	beq     $s0, $at, .L8025CB5C
	nop
	li      $at, 0x004C
	beq     $s0, $at, .L8025CB74
	nop
	li      $at, 0x0064
	beq     $s0, $at, .L8025CB8C
	nop
	li      $at, 0x0088
	beq     $s0, $at, .L8025CBA0
	nop
	li      $at, 0x008C
	beq     $s0, $at, .L8025CBB0
	nop
	b       .L8025CBC0
	nop
.L8025CB24:
	lui     $at, %hi(pl_demo_8032DB48)
	sb      $0, %lo(pl_demo_8032DB48)($at)
	b       .L8025CBC0
	nop
.L8025CB34:
	li      $t7, 0x0003
	lui     $at, %hi(pl_demo_8032DB44)
	sb      $t7, %lo(pl_demo_8032DB44)($at)
	b       .L8025CBC0
	nop
.L8025CB48:
	li      $t8, 0x0004
	lui     $at, %hi(pl_demo_8032DB44)
	sb      $t8, %lo(pl_demo_8032DB44)($at)
	b       .L8025CBC0
	nop
.L8025CB5C:
	lw      $t9, 0x0028($sp)
	li      $t0, 0x0002
	lw      $t1, 0x0098($t9)
	sb      $t0, 0x0005($t1)
	b       .L8025CBC0
	nop
.L8025CB74:
	lw      $t4, 0x0028($sp)
	li      $t2, 0x0003
	lw      $t3, 0x0098($t4)
	sb      $t2, 0x0005($t3)
	b       .L8025CBC0
	nop
.L8025CB8C:
	li      $t5, 0x0003
	lui     $at, %hi(pl_demo_8032DB44)
	sb      $t5, %lo(pl_demo_8032DB44)($at)
	b       .L8025CBC0
	nop
.L8025CBA0:
	lui     $at, %hi(pl_demo_8032DB44)
	sb      $0, %lo(pl_demo_8032DB44)($at)
	b       .L8025CBC0
	nop
.L8025CBB0:
	jal     pl_demo_8025B0F8
	lw      $a0, 0x0028($sp)
	b       .L8025CBC0
	nop
.L8025CBC0:
	b       .L8025CBC8
	nop
.L8025CBC8:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_demo_8025CBDC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	li      $a1, 0x0027
	sw      $v0, 0x0024($sp)
	lw      $t6, 0x0024($sp)
	li      $at, 0x004D
	bne     $t6, $at, .L8025CC14
	nop
	jal     pl_demo_80257548
	lw      $a0, 0x0028($sp)
.L8025CC14:
	lw      $t7, 0x0024($sp)
	li      $at, 0x0058
	bne     $t7, $at, .L8025CC3C
	nop
	lw      $t8, 0x0028($sp)
	li.u    $a0, 0x240C8081
	li.l    $a0, 0x240C8081
	lw      $a1, 0x0088($t8)
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
.L8025CC3C:
	lw      $t9, 0x0024($sp)
	slti    $at, $t9, 0x0062
	bnez    $at, .L8025CC5C
	nop
	lw      $t1, 0x0028($sp)
	li      $t0, 0x0002
	lw      $t2, 0x0098($t1)
	sb      $t0, 0x0006($t2)
.L8025CC5C:
	lw      $t3, 0x0028($sp)
	lhu     $t4, 0x001A($t3)
	slti    $at, $t4, 0x0034
	beqz    $at, .L8025CC80
	nop
	lw      $t6, 0x0028($sp)
	li      $t5, 0x0002
	lw      $t7, 0x0098($t6)
	sb      $t5, 0x0005($t7)
.L8025CC80:
	lw      $t8, 0x0028($sp)
	li      $at, 0x0046
	lhu     $s0, 0x001A($t8)
	beq     $s0, $at, .L8025CCD8
	nop
	li      $at, 0x0056
	beq     $s0, $at, .L8025CCEC
	nop
	li      $at, 0x005A
	beq     $s0, $at, .L8025CD00
	nop
	li      $at, 0x0078
	beq     $s0, $at, .L8025CD14
	nop
	li      $at, 0x008C
	beq     $s0, $at, .L8025CD24
	nop
	li      $at, 0x008E
	beq     $s0, $at, .L8025CD40
	nop
	b       .L8025CD50
	nop
.L8025CCD8:
	li      $t9, 0x0001
	lui     $at, %hi(pl_demo_8032DB44)
	sb      $t9, %lo(pl_demo_8032DB44)($at)
	b       .L8025CD50
	nop
.L8025CCEC:
	li      $t1, 0x0002
	lui     $at, %hi(pl_demo_8032DB44)
	sb      $t1, %lo(pl_demo_8032DB44)($at)
	b       .L8025CD50
	nop
.L8025CD00:
	li      $t0, 0x0003
	lui     $at, %hi(pl_demo_8032DB44)
	sb      $t0, %lo(pl_demo_8032DB44)($at)
	b       .L8025CD50
	nop
.L8025CD14:
	lui     $at, %hi(pl_demo_8032DB44)
	sb      $0, %lo(pl_demo_8032DB44)($at)
	b       .L8025CD50
	nop
.L8025CD24:
	move    $a0, $0
	jal     Na_SEQ_unmute
	li      $a1, 0x003C
	jal     bgm_stage_play
	li      $a0, 0x0F1A
	b       .L8025CD50
	nop
.L8025CD40:
	jal     pl_demo_8025B0F8
	lw      $a0, 0x0028($sp)
	b       .L8025CD50
	nop
.L8025CD50:
	b       .L8025CD58
	nop
.L8025CD58:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_demo_8025CD6C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	li      $a1, 0x00C2
	lui     $a0, %hi(pl_demo_8033B2A4)
	jal     pl_demo_8025BEB8
	lw      $a0, %lo(pl_demo_8033B2A4)($a0)
	lui     $t6, %hi(pl_demo_8033B2A4)
	lw      $t6, %lo(pl_demo_8033B2A4)($t6)
	swc1    $f0, 0x00A4($t6)
	lui     $a0, %hi(pl_demo_8033B2A8)
	jal     pl_demo_8025BEB8
	lw      $a0, %lo(pl_demo_8033B2A8)($a0)
	lui     $t7, %hi(pl_demo_8033B2A8)
	lw      $t7, %lo(pl_demo_8033B2A8)($t7)
	swc1    $f0, 0x00A4($t7)
	lui     $a0, %hi(pl_demo_8033B2AC)
	jal     pl_demo_8025BEB8
	lw      $a0, %lo(pl_demo_8033B2AC)($a0)
	lui     $t8, %hi(pl_demo_8033B2AC)
	lw      $t8, %lo(pl_demo_8033B2AC)($t8)
	swc1    $f0, 0x00A4($t8)
	lw      $t9, 0x0028($sp)
	li      $at, 0x0001
	lhu     $s0, 0x001A($t9)
	beq     $s0, $at, .L8025CE04
	nop
	li      $at, 0x0037
	beq     $s0, $at, .L8025CE68
	nop
	li      $at, 0x0082
	beq     $s0, $at, .L8025CE84
	nop
	b       .L8025CEB8
	nop
.L8025CE04:
	lui     $at, %hi(pl_demo_8033B2B8)
	sh      $0, %lo(pl_demo_8033B2B8)($at)
	la.u    $t0, pl_demo_8033B2BC
	la.l    $t0, pl_demo_8033B2BC
	sh      $0, 0x0000($t0)
	la.u    $t2, pl_demo_8033B2BC
	la.l    $t2, pl_demo_8033B2BC
	li      $t1, 0x0002
	sh      $t1, 0x0002($t2)
	li      $t3, 0x0001
	lui     $at, %hi(pl_demo_8032DB48)
	sb      $t3, %lo(pl_demo_8032DB48)($at)
	li      $a0, 0x00A0
	li      $a1, 0x00E3
	li      $a2, 0x0005
	jal     message_802DAAE4
	li      $a3, 0x001E
	lui     $a1, %hi(pl_demo_8033B2A4)
	lw      $a1, %lo(pl_demo_8033B2A4)($a1)
	li.u    $a0, 0x243DFF81
	li.l    $a0, 0x243DFF81
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
	b       .L8025CEB8
	nop
.L8025CE68:
	li      $a0, 0x00A0
	li      $a1, 0x00E3
	li      $a2, 0x0006
	jal     message_802DAAE4
	li      $a3, 0x0028
	b       .L8025CEB8
	nop
.L8025CE84:
	li      $a0, 0x00A0
	li      $a1, 0x00E3
	li      $a2, 0x0007
	jal     message_802DAAE4
	li      $a3, 0x0032
	lui     $a1, %hi(pl_demo_8033B2A4)
	lw      $a1, %lo(pl_demo_8033B2A4)($a1)
	li.u    $a0, 0x243EFF81
	li.l    $a0, 0x243EFF81
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
	b       .L8025CEB8
	nop
.L8025CEB8:
	lw      $t4, 0x0028($sp)
	li      $at, 0x015E
	lhu     $t5, 0x001A($t4)
	bne     $t5, $at, .L8025CED4
	nop
	jal     pl_demo_8025B0F8
	lw      $a0, 0x0028($sp)
.L8025CED4:
	b       .L8025CEDC
	nop
.L8025CEDC:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_demo_8025CEF0:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lhu     $t7, 0x0018($t6)
	bnez    $t7, .L8025CF18
	nop
	b       .L8025CF1C
	li      $s0, 0x0023
.L8025CF18:
	li      $s0, 0x0024
.L8025CF1C:
	lw      $a0, 0x0028($sp)
	jal     player_802509B8
	move    $a1, $s0
	lw      $t8, 0x0028($sp)
	jal     pl_demo_8025BEB8
	lw      $a0, 0x0088($t8)
	lw      $t9, 0x0028($sp)
	lw      $t0, 0x0088($t9)
	swc1    $f0, 0x0024($t0)
	lw      $t1, 0x0028($sp)
	lhu     $t2, 0x0018($t1)
	bnez    $t2, .L8025CF6C
	nop
	jal     player_8025097C
	move    $a0, $t1
	beqz    $v0, .L8025CF6C
	nop
	lw      $t4, 0x0028($sp)
	li      $t3, 0x0001
	sh      $t3, 0x0018($t4)
.L8025CF6C:
	lw      $t5, 0x0028($sp)
	li      $at, 0x005F
	lhu     $t6, 0x001A($t5)
	bne     $t6, $at, .L8025CFAC
	nop
	li      $a0, 0x00A0
	li      $a1, 0x00E3
	move    $a2, $0
	jal     message_802DAAE4
	li      $a3, 0x0028
	lui     $a1, %hi(pl_demo_8033B2A4)
	lw      $a1, %lo(pl_demo_8033B2A4)($a1)
	li.u    $a0, 0x243FFF81
	li.l    $a0, 0x243FFF81
	jal     Na_SE_play
	addiu   $a1, $a1, 0x0054
.L8025CFAC:
	lw      $t7, 0x0028($sp)
	li      $at, 0x0185
	lhu     $t8, 0x001A($t7)
	bne     $t8, $at, .L8025CFC8
	nop
	jal     pl_demo_8025B0F8
	lw      $a0, 0x0028($sp)
.L8025CFC8:
	b       .L8025CFD0
	nop
.L8025CFD0:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_demo_8025CFE4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lhu     $t7, 0x0018($t6)
	bnez    $t7, .L8025D028
	nop
	lw      $a0, 0x0018($sp)
	jal     game_8024A9CC
	li      $a1, 0x0018
	lui     $at, %hi(pl_demo_8033671C)
	lwc1    $f4, %lo(pl_demo_8033671C)($at)
	lui     $at, %hi(scroll_80330F3C)
	swc1    $f4, %lo(scroll_80330F3C)($at)
	lw      $t9, 0x0018($sp)
	li      $t8, 0x0001
	sh      $t8, 0x0018($t9)
.L8025D028:
	b       .L8025D030
	nop
.L8025D030:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_demo_8025D040:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	lw      $t7, 0x001C($t6)
	sltiu   $at, $t7, 0x000D
	beqz    $at, .L8025D148
	nop
	sll     $t7, $t7, 2
	lui     $at, %hi(pl_demo_80336720)
	addu    $at, $at, $t7
	lw      $t7, %lo(pl_demo_80336720)($at)
	jr      $t7
	nop
.globl L8025D078
L8025D078:
	jal     pl_demo_8025BF64
	lw      $a0, 0x0020($sp)
	b       .L8025D148
	nop
.globl L8025D088
L8025D088:
	jal     pl_demo_8025C014
	lw      $a0, 0x0020($sp)
	b       .L8025D148
	nop
.globl L8025D098
L8025D098:
	jal     pl_demo_8025C0C4
	lw      $a0, 0x0020($sp)
	b       .L8025D148
	nop
.globl L8025D0A8
L8025D0A8:
	jal     pl_demo_8025C1C0
	lw      $a0, 0x0020($sp)
	b       .L8025D148
	nop
.globl L8025D0B8
L8025D0B8:
	jal     pl_demo_8025C498
	lw      $a0, 0x0020($sp)
	b       .L8025D148
	nop
.globl L8025D0C8
L8025D0C8:
	jal     pl_demo_8025C600
	lw      $a0, 0x0020($sp)
	b       .L8025D148
	nop
.globl L8025D0D8
L8025D0D8:
	jal     pl_demo_8025C6F8
	lw      $a0, 0x0020($sp)
	b       .L8025D148
	nop
.globl L8025D0E8
L8025D0E8:
	jal     pl_demo_8025C904
	lw      $a0, 0x0020($sp)
	b       .L8025D148
	nop
.globl L8025D0F8
L8025D0F8:
	jal     pl_demo_8025CA48
	lw      $a0, 0x0020($sp)
	b       .L8025D148
	nop
.globl L8025D108
L8025D108:
	jal     pl_demo_8025CBDC
	lw      $a0, 0x0020($sp)
	b       .L8025D148
	nop
.globl L8025D118
L8025D118:
	jal     pl_demo_8025CD6C
	lw      $a0, 0x0020($sp)
	b       .L8025D148
	nop
.globl L8025D128
L8025D128:
	jal     pl_demo_8025CEF0
	lw      $a0, 0x0020($sp)
	b       .L8025D148
	nop
.globl L8025D138
L8025D138:
	jal     pl_demo_8025CFE4
	lw      $a0, 0x0020($sp)
	b       .L8025D148
	nop
.L8025D148:
	lw      $t8, 0x0020($sp)
	lhu     $t9, 0x001A($t8)
	addiu   $t0, $t9, 0x0001
	sh      $t0, 0x001A($t8)
	la.u    $t2, vp_pl_demo
	la.l    $t2, vp_pl_demo
	li      $t1, 0x0280
	sh      $t1, 0x0000($t2)
	la.u    $t4, vp_pl_demo
	la.l    $t4, vp_pl_demo
	li      $t3, 0x0168
	sh      $t3, 0x0002($t4)
	la.u    $t6, vp_pl_demo
	la.l    $t6, vp_pl_demo
	li      $t5, 0x0280
	sh      $t5, 0x0008($t6)
	la.u    $t9, vp_pl_demo
	la.l    $t9, vp_pl_demo
	li      $t7, 0x01E0
	sh      $t7, 0x000A($t9)
	la.u    $a1, vp_pl_demo
	la.l    $a1, vp_pl_demo
	move    $a0, $0
	move    $a2, $0
	move    $a3, $0
	jal     scene_vp_set
	sw      $0, 0x0010($sp)
	b       .L8025D1C4
	move    $v0, $0
	b       .L8025D1C4
	nop
.L8025D1C4:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_demo_8025D1D4:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x0024($sp)
	sw      $a0, 0x0038($sp)
	sw      $s0, 0x0020($sp)
	lw      $t7, 0x0038($sp)
	li      $t6, 0x000D
	lw      $t8, 0x0094($t7)
	sh      $t6, 0x001E($t8)
	lw      $t9, 0x0038($sp)
	lh      $t0, 0x0076($t9)
	lwc1    $f4, 0x0040($t9)
	addiu   $t1, $t0, -0x0064
	mtc1    $t1, $f6
	nop
	cvt.s.w $f8, $f6
	c.lt.s  $f4, $f8
	nop
	bc1f    .L8025D29C
	nop
	lw      $t2, 0x0038($sp)
	li      $at, 0x0003
	lw      $t3, 0x0090($t2)
	lw      $t4, 0x0024($t3)
	lbu     $t5, 0x0000($t4)
	beq     $t5, $at, .L8025D254
	nop
	lw      $t7, 0x0038($sp)
	li      $a1, 0x0003
	li      $a2, 0x0001
	lw      $t6, 0x0090($t7)
	jal     camera_80286188
	lw      $a0, 0x0024($t6)
.L8025D254:
	lw      $a0, 0x0038($sp)
	jal     player_802509B8
	li      $a1, 0x00B2
	lw      $t8, 0x0038($sp)
	lw      $a0, 0x0088($t8)
	addiu   $a1, $t8, 0x003C
	jal     vecf_cpy
	addiu   $a0, $a0, 0x0020
	lw      $t9, 0x0038($sp)
	lw      $a0, 0x0088($t9)
	addiu   $a1, $t9, 0x002C
	jal     vecs_cpy
	addiu   $a0, $a0, 0x001A
	lw      $t0, 0x0038($sp)
	lw      $t1, 0x0008($t0)
	ori     $t2, $t1, 0x0020
	b       .L8025D2C0
	sw      $t2, 0x0008($t0)
.L8025D29C:
	lw      $a0, 0x0038($sp)
	jal     player_802509B8
	li      $a1, 0x00C2
	lw      $t3, 0x0038($sp)
	lhu     $t4, 0x001A($t3)
	blez    $t4, .L8025D2C0
	nop
	jal     pl_physics_802559B0
	lw      $a0, 0x0038($sp)
.L8025D2C0:
	lw      $t5, 0x0038($sp)
	lhu     $t7, 0x001A($t5)
	slti    $at, $t7, 0x003D
	bnez    $at, .L8025D434
	nop
	lw      $t6, 0x0038($sp)
	lhu     $t8, 0x0018($t6)
	slti    $at, $t8, 0x0028
	beqz    $at, .L8025D2F8
	nop
	lw      $t9, 0x0038($sp)
	lhu     $t1, 0x0018($t9)
	addiu   $t2, $t1, 0x0002
	sh      $t2, 0x0018($t9)
.L8025D2F8:
	lw      $t0, 0x0038($sp)
	li      $at, 0x0064
	lhu     $t3, 0x0018($t0)
	sll     $t4, $t3, 2
	addu    $t4, $t4, $t3
	sll     $t4, $t4, 7
	div     $0, $t4, $at
	mflo    $t5
	sw      $t5, 0x0034($sp)
	nop
	lw      $t7, 0x0038($sp)
	li      $at, 0x0064
	lhu     $t6, 0x0018($t7)
	sll     $t8, $t6, 4
	subu    $t8, $t8, $t6
	sll     $t8, $t8, 5
	div     $0, $t8, $at
	mflo    $t1
	sw      $t1, 0x0030($sp)
	nop
	lw      $t2, 0x0034($sp)
	li      $t9, 0x0280
	la.u    $t3, vp_pl_demo
	la.l    $t3, vp_pl_demo
	subu    $t0, $t9, $t2
	sh      $t0, 0x0000($t3)
	lw      $t4, 0x0030($sp)
	li      $t5, 0x01E0
	la.u    $t6, vp_pl_demo
	la.l    $t6, vp_pl_demo
	subu    $t7, $t5, $t4
	sh      $t7, 0x0002($t6)
	lui     $t8, %hi(staff)
	lw      $t8, %lo(staff)($t8)
	lbu     $t1, 0x0002($t8)
	andi    $t9, $t1, 0x0010
	beqz    $t9, .L8025D398
	nop
	b       .L8025D3A0
	lw      $s0, 0x0034($sp)
.L8025D398:
	lw      $s0, 0x0034($sp)
	subu    $s0, $0, $s0
.L8025D3A0:
	sll     $t2, $s0, 3
	subu    $t2, $t2, $s0
	sll     $t2, $t2, 3
	li      $at, 0x0064
	div     $0, $t2, $at
	mflo    $t0
	la.u    $t5, vp_pl_demo
	la.l    $t5, vp_pl_demo
	addiu   $t3, $t0, 0x0280
	sh      $t3, 0x0008($t5)
	lui     $t4, %hi(staff)
	lw      $t4, %lo(staff)($t4)
	lbu     $t7, 0x0002($t4)
	andi    $t6, $t7, 0x0020
	beqz    $t6, .L8025D3E8
	nop
	b       .L8025D3F0
	lw      $s0, 0x0030($sp)
.L8025D3E8:
	lw      $s0, 0x0030($sp)
	subu    $s0, $0, $s0
.L8025D3F0:
	sll     $t8, $s0, 5
	addu    $t8, $t8, $s0
	sll     $t8, $t8, 1
	li      $at, 0x0064
	div     $0, $t8, $at
	mflo    $t1
	la.u    $t2, vp_pl_demo
	la.l    $t2, vp_pl_demo
	addiu   $t9, $t1, 0x01E0
	sh      $t9, 0x000A($t2)
	la.u    $a0, vp_pl_demo
	la.l    $a0, vp_pl_demo
	move    $a1, $0
	move    $a2, $0
	move    $a3, $0
	jal     scene_vp_set
	sw      $0, 0x0010($sp)
.L8025D434:
	lw      $t0, 0x0038($sp)
	li      $at, 0x005A
	lhu     $t3, 0x001A($t0)
	bne     $t3, $at, .L8025D450
	nop
	jal     message_802DA844
	nop
.L8025D450:
	lw      $t5, 0x0038($sp)
	lhu     $t4, 0x001A($t5)
	slti    $at, $t4, 0x005A
	bnez    $at, .L8025D474
	nop
	lui     $t7, %hi(staff)
	lw      $t7, %lo(staff)($t7)
	lui     $at, %hi(pl_demo_staff)
	sw      $t7, %lo(pl_demo_staff)($at)
.L8025D474:
	lw      $t6, 0x0038($sp)
	lhu     $s0, 0x001A($t6)
	lhu     $t1, 0x001A($t6)
	xori    $t8, $s0, 0x00C8
	sltiu   $t8, $t8, 0x0001
	move    $s0, $t8
	addiu   $t9, $t1, 0x0001
	beqz    $s0, .L8025D4A4
	sh      $t9, 0x001A($t6)
	lw      $a0, 0x0038($sp)
	jal     game_8024A9CC
	li      $a1, 0x0018
.L8025D4A4:
	lw      $t2, 0x0038($sp)
	lui     $t5, %hi(staff)
	lw      $t5, %lo(staff)($t5)
	lw      $t0, 0x0088($t2)
	lbu     $t4, 0x0002($t5)
	lh      $t3, 0x001C($t0)
	andi    $t7, $t4, 0x00C0
	sll     $t8, $t7, 8
	addu    $t1, $t3, $t8
	sh      $t1, 0x001C($t0)
	b       .L8025D4DC
	move    $v0, $0
	b       .L8025D4DC
	nop
.L8025D4DC:
	lw      $ra, 0x0024($sp)
	lw      $s0, 0x0020($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

pl_demo_8025D4F0:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x0034($sp)
	sw      $a0, 0x0040($sp)
	sw      $s0, 0x0030($sp)
	lw      $t6, 0x0040($sp)
	lhu     $t7, 0x0018($t6)
	bnez    $t7, .L8025D660
	nop
	lw      $t9, 0x0040($sp)
	li      $t8, 0x000C
	lw      $t0, 0x0094($t9)
	sh      $t8, 0x001E($t0)
	lui     $a0, %hi(object)
	la.u    $a3, o_13000EAC
	li      $t1, 0x003C
	li      $t2, 0x038A
	li      $t3, -0x049C
	sw      $t3, 0x0018($sp)
	sw      $t2, 0x0014($sp)
	sw      $t1, 0x0010($sp)
	la.l    $a3, o_13000EAC
	lw      $a0, %lo(object)($a0)
	move    $a1, $0
	li      $a2, 0x00DE
	sw      $0, 0x001C($sp)
	sw      $0, 0x0020($sp)
	jal     obj_lib_8029E9AC
	sw      $0, 0x0024($sp)
	lui     $at, %hi(pl_demo_8033B2A4)
	sw      $v0, %lo(pl_demo_8033B2A4)($at)
	lui     $a0, %hi(object)
	la.u    $a3, o_13000E88
	li      $t4, 0x00B4
	li      $t5, 0x038A
	li      $t6, -0x0492
	sw      $t6, 0x0018($sp)
	sw      $t5, 0x0014($sp)
	sw      $t4, 0x0010($sp)
	la.l    $a3, o_13000E88
	lw      $a0, %lo(object)($a0)
	move    $a1, $0
	li      $a2, 0x00DD
	sw      $0, 0x001C($sp)
	sw      $0, 0x0020($sp)
	jal     obj_lib_8029E9AC
	sw      $0, 0x0024($sp)
	lui     $at, %hi(pl_demo_8033B2A8)
	sw      $v0, %lo(pl_demo_8033B2A8)($at)
	lui     $a0, %hi(object)
	la.u    $a3, o_13000E88
	li      $t7, -0x00B4
	li      $t9, 0x038A
	li      $t8, -0x0492
	sw      $t8, 0x0018($sp)
	sw      $t9, 0x0014($sp)
	sw      $t7, 0x0010($sp)
	la.l    $a3, o_13000E88
	lw      $a0, %lo(object)($a0)
	move    $a1, $0
	li      $a2, 0x00DD
	sw      $0, 0x001C($sp)
	sw      $0, 0x0020($sp)
	jal     obj_lib_8029E9AC
	sw      $0, 0x0024($sp)
	lui     $at, %hi(pl_demo_8033B2AC)
	sw      $v0, %lo(pl_demo_8033B2AC)($at)
	lui     $t1, %hi(pl_demo_8033B2A4)
	lw      $t1, %lo(pl_demo_8033B2A4)($t1)
	li      $t0, 0x00FF
	sw      $t0, 0x017C($t1)
	lui     $t3, %hi(pl_demo_8033B2A8)
	lw      $t3, %lo(pl_demo_8033B2A8)($t3)
	li      $t2, 0x00FF
	sw      $t2, 0x017C($t3)
	lui     $t5, %hi(pl_demo_8033B2AC)
	lw      $t5, %lo(pl_demo_8033B2AC)($t5)
	li      $t4, 0x00FF
	sw      $t4, 0x017C($t5)
	li      $t6, 0x000B
	lui     $at, %hi(pl_demo_8033B2B8)
	sh      $t6, %lo(pl_demo_8033B2B8)($at)
	la.u    $t9, pl_demo_8033B2BC
	la.l    $t9, pl_demo_8033B2BC
	li      $t7, 0x0006
	sh      $t7, 0x0000($t9)
	la.u    $t0, pl_demo_8033B2BC
	la.l    $t0, pl_demo_8033B2BC
	li      $t8, 0x0007
	sh      $t8, 0x0002($t0)
	lw      $t2, 0x0040($sp)
	li      $t1, 0x0001
	sh      $t1, 0x0018($t2)
.L8025D660:
	lw      $a0, 0x0040($sp)
	jal     player_802509B8
	li      $a1, 0x001D
	jal     pl_physics_802559B0
	lw      $a0, 0x0040($sp)
	lw      $t3, 0x0040($sp)
	li      $at, 0x8000
	lw      $t4, 0x0088($t3)
	lh      $t5, 0x001C($t4)
	addu    $t6, $t5, $at
	sh      $t6, 0x001C($t4)
	lw      $t7, 0x0040($sp)
	li      $at, 0x42700000
	mtc1    $at, $f6
	lw      $t9, 0x0088($t7)
	lwc1    $f4, 0x0020($t9)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0020($t9)
	lw      $t0, 0x0040($sp)
	li      $t8, 0x0005
	lw      $t1, 0x0098($t0)
	sb      $t8, 0x0006($t1)
	lw      $t2, 0x0040($sp)
	lhu     $s0, 0x001A($t2)
	lhu     $t5, 0x001A($t2)
	xori    $t3, $s0, 0x012C
	sltiu   $t3, $t3, 0x0001
	move    $s0, $t3
	addiu   $t6, $t5, 0x0001
	beqz    $s0, .L8025D6E8
	sh      $t6, 0x001A($t2)
	lw      $a0, 0x0040($sp)
	jal     game_8024A9CC
	li      $a1, 0x0015
.L8025D6E8:
	b       .L8025D6F8
	move    $v0, $0
	b       .L8025D6F8
	nop
.L8025D6F8:
	lw      $ra, 0x0034($sp)
	lw      $s0, 0x0030($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

pl_demo_8025D70C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	li      $at, 0x0023
	lw      $t7, 0x0068($t6)
	lh      $t8, 0x0000($t7)
	bne     $t8, $at, .L8025D778
	nop
	lw      $t9, 0x000C($t6)
	li      $at, 0x00020000
	and     $t0, $t9, $at
	beqz    $t0, .L8025D778
	nop
	li.u    $at, 0x00021312
	li.l    $at, 0x00021312
	beq     $t9, $at, .L8025D778
	nop
	jal     player_802521A0
	lw      $a0, 0x0018($sp)
	li.u    $a1, 0x00021312
	li.l    $a1, 0x00021312
	lw      $a0, 0x0018($sp)
	jal     player_80253178
	move    $a2, $0
	b       .L8025D788
	nop
.L8025D778:
	b       .L8025D788
	move    $v0, $0
	b       .L8025D788
	nop
.L8025D788:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl pl_demo_main
pl_demo_main:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	jal     pl_demo_8025D70C
	lw      $a0, 0x0028($sp)
	beqz    $v0, .L8025D7C0
	nop
	b       .L8025DD54
	li      $v0, 0x0001
.L8025D7C0:
	lw      $t6, 0x0028($sp)
	li.u    $at, 0x0002033D
	li.l    $at, 0x0002033D
	lw      $s0, 0x000C($t6)
	sltu    $at, $s0, $at
	bnez    $at, .L8025D874
	nop
	li.u    $at, 0x04001302
	li.l    $at, 0x04001302
	sltu    $at, $s0, $at
	bnez    $at, .L8025D818
	nop
	li.u    $at, 0x20001305
	li.l    $at, 0x20001305
	beq     $s0, $at, .L8025D9A4
	nop
	li.u    $at, 0x20001306
	li.l    $at, 0x20001306
	beq     $s0, $at, .L8025D9B8
	nop
	b       L8025DD14
	nop
.L8025D818:
	li.u    $at, 0x00021318
	li.l    $at, 0x00021318
	sltu    $at, $s0, $at
	bnez    $at, .L8025D844
	nop
	li.u    $at, 0x04001301
	li.l    $at, 0x04001301
	beq     $s0, $at, .L8025D940
	nop
	b       L8025DD14
	nop
.L8025D844:
	li.u    $at, 0xFFFDECEF
	li.l    $at, 0xFFFDECEF
	addu    $t7, $s0, $at
	sltiu   $at, $t7, 0x0007
	beqz    $at, L8025DD14
	nop
	sll     $t7, $t7, 2
	lui     $at, %hi(pl_demo_80336754)
	addu    $at, $at, $t7
	lw      $t7, %lo(pl_demo_80336754)($at)
	jr      $t7
	nop
.L8025D874:
	sltiu   $at, $s0, 0x1536
	bnez    $at, .L8025D8E4
	nop
	sltiu   $at, $s0, 0x1935
	bnez    $at, .L8025D8BC
	nop
	li.u    $at, 0xFFFDFCC8
	li.l    $at, 0xFFFDFCC8
	addu    $t8, $s0, $at
	sltiu   $at, $t8, 0x0005
	beqz    $at, L8025DD14
	nop
	sll     $t8, $t8, 2
	lui     $at, %hi(pl_demo_80336770)
	addu    $at, $at, $t8
	lw      $t8, %lo(pl_demo_80336770)($at)
	jr      $t8
	nop
.L8025D8BC:
	addiu   $t9, $s0, -0x1904
	sltiu   $at, $t9, 0x0031
	beqz    $at, L8025DD14
	nop
	sll     $t9, $t9, 2
	lui     $at, %hi(pl_demo_80336784)
	addu    $at, $at, $t9
	lw      $t9, %lo(pl_demo_80336784)($at)
	jr      $t9
	nop
.L8025D8E4:
	sltiu   $at, $s0, 0x133E
	bnez    $at, .L8025D904
	nop
	li      $at, 0x1535
	beq     $s0, $at, .L8025DC60
	nop
	b       L8025DD14
	nop
.L8025D904:
	addiu   $t0, $s0, -0x1300
	sltiu   $at, $t0, 0x003E
	beqz    $at, L8025DD14
	nop
	sll     $t0, $t0, 2
	lui     $at, %hi(pl_demo_80336848)
	addu    $at, $at, $t0
	lw      $t0, %lo(pl_demo_80336848)($at)
	jr      $t0
	nop
.globl L8025D92C
L8025D92C:
	jal     pl_demo_80257A0C
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
.L8025D940:
	jal     pl_demo_8025B58C
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
.globl L8025D954
L8025D954:
	jal     pl_demo_80258420
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
.globl L8025D968
L8025D968:
	jal     pl_demo_80258420
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
.globl L8025D97C
L8025D97C:
	jal     pl_demo_802584DC
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
.globl L8025D990
L8025D990:
	jal     pl_demo_802585C0
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
.L8025D9A4:
	jal     pl_demo_80257AB0
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
.L8025D9B8:
	jal     pl_demo_80257748
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
.globl L8025D9CC
L8025D9CC:
	jal     pl_demo_80257EAC
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
.globl L8025D9E0
L8025D9E0:
	jal     pl_demo_80257CE4
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
.globl L8025D9F4
L8025D9F4:
	jal     pl_demo_8025BBEC
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
.globl L8025DA08
L8025DA08:
	jal     pl_demo_80257980
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
.globl L8025DA1C
L8025DA1C:
	jal     pl_demo_80258744
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
.globl L8025DA30
L8025DA30:
	jal     pl_demo_80258964
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
.globl L8025DA44
L8025DA44:
	jal     pl_demo_802587EC
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
.globl L8025DA58
L8025DA58:
	jal     pl_demo_8025883C
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
.globl L8025DA6C
L8025DA6C:
	jal     pl_demo_802588F8
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
.globl L8025DA80
L8025DA80:
	jal     pl_demo_8025888C
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
.globl L8025DA94
L8025DA94:
	jal     pl_demo_80258A7C
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
.globl L8025DAA8
L8025DAA8:
	jal     pl_demo_8025D040
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
.globl L8025DABC
L8025DABC:
	jal     pl_demo_8025D1D4
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
.globl L8025DAD0
L8025DAD0:
	jal     pl_demo_8025D4F0
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
.globl L8025DAE4
L8025DAE4:
	jal     pl_demo_80259264
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
.globl L8025DAF8
L8025DAF8:
	jal     pl_demo_802593CC
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
.globl L8025DB0C
L8025DB0C:
	jal     pl_demo_802594D4
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
.globl L8025DB20
L8025DB20:
	jal     pl_demo_80259608
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
.globl L8025DB34
L8025DB34:
	jal     pl_demo_80259740
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
.globl L8025DB48
L8025DB48:
	jal     pl_demo_802597AC
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
.globl L8025DB5C
L8025DB5C:
	jal     pl_demo_802598D0
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
.globl L8025DB70
L8025DB70:
	jal     pl_demo_80259C30
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
.globl L8025DB84
L8025DB84:
	jal     pl_demo_80259CE8
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
.globl L8025DB98
L8025DB98:
	jal     pl_demo_80259D74
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
.globl L8025DBAC
L8025DBAC:
	jal     pl_demo_80259E00
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
.globl L8025DBC0
L8025DBC0:
	jal     pl_demo_80259EF8
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
.globl L8025DBD4
L8025DBD4:
	jal     pl_demo_80259854
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
.globl L8025DBE8
L8025DBE8:
	jal     pl_demo_80258BA8
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
.globl L8025DBFC
L8025DBFC:
	jal     pl_demo_80258DAC
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
.globl L8025DC10
L8025DC10:
	jal     pl_demo_80258F94
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
.globl L8025DC24
L8025DC24:
	jal     pl_demo_80259FCC
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
.globl L8025DC38
L8025DC38:
	jal     pl_demo_8025A040
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
.globl L8025DC4C
L8025DC4C:
	jal     pl_demo_8025A494
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
.L8025DC60:
	jal     pl_demo_8025A0BC
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
.globl L8025DC74
L8025DC74:
	jal     pl_demo_8025A610
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
.globl L8025DC88
L8025DC88:
	jal     pl_demo_8025A6FC
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
.globl L8025DC9C
L8025DC9C:
	jal     pl_demo_8025A858
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
.globl L8025DCB0
L8025DCB0:
	jal     pl_demo_8025A9AC
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
.globl L8025DCC4
L8025DCC4:
	jal     pl_demo_8025AFFC
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
.globl L8025DCD8
L8025DCD8:
	jal     pl_demo_8025B050
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
.globl L8025DCEC
L8025DCEC:
	jal     pl_demo_8025B0A4
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
.globl L8025DD00
L8025DD00:
	jal     pl_demo_8025AE0C
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L8025DD14
	nop
.globl L8025DD14
L8025DD14:
	lw      $t1, 0x0024($sp)
	bnez    $t1, .L8025DD44
	nop
	lw      $t2, 0x0028($sp)
	lhu     $t3, 0x0002($t2)
	andi    $t4, $t3, 0x0200
	beqz    $t4, .L8025DD44
	nop
	lw      $t5, 0x0028($sp)
	lw      $t6, 0x0008($t5)
	ori     $t7, $t6, 0x0080
	sw      $t7, 0x0008($t5)
.L8025DD44:
	b       .L8025DD54
	lw      $v0, 0x0024($sp)
	b       .L8025DD54
	nop
.L8025DD54:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop
