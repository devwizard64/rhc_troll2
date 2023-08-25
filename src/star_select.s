.include "sm64/asm.inc"

.set fp=32
.set noreorder
.set noat

.align 4

.globl star_select_801768E0
star_select_801768E0:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x00F4($t6)
	beqz    $s0, .L80176920
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L8017699C
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L80176A18
	nop
	b       .L80176A34
	nop
.L80176920:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $at, %hi(star_select_801A81C0)
	ldc1    $f8, %lo(star_select_801A81C0)($at)
	lwc1    $f4, 0x0108($t7)
	cvt.d.s $f6, $f4
	sub.d   $f10, $f6, $f8
	cvt.s.d $f16, $f10
	swc1    $f16, 0x0108($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x3FF00000
	mtc1    $at, $f7
	lwc1    $f18, 0x0108($t8)
	mtc1    $0, $f6
	cvt.d.s $f4, $f18
	c.lt.d  $f4, $f6
	nop
	bc1f    .L80176988
	nop
	li      $at, 0x3F800000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x0108($t9)
.L80176988:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x00D4($t0)
	b       .L80176A34
	nop
.L8017699C:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lui     $at, %hi(star_select_801A81C8)
	ldc1    $f18, %lo(star_select_801A81C8)($at)
	lwc1    $f10, 0x0108($t1)
	cvt.d.s $f16, $f10
	add.d   $f4, $f16, $f18
	cvt.s.d $f6, $f4
	swc1    $f6, 0x0108($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lui     $at, %hi(star_select_801A81D0)
	ldc1    $f16, %lo(star_select_801A81D0)($at)
	lwc1    $f8, 0x0108($t2)
	cvt.d.s $f10, $f8
	c.lt.d  $f16, $f10
	nop
	bc1f    .L801769FC
	nop
	lui     $at, %hi(star_select_801A81D8)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lwc1    $f18, %lo(star_select_801A81D8)($at)
	swc1    $f18, 0x0108($t3)
.L801769FC:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x00D4($t4)
	addiu   $t6, $t5, 0x0800
	sw      $t6, 0x00D4($t4)
	b       .L80176A34
	nop
.L80176A18:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x00D4($t7)
	addiu   $t9, $t8, 0x0800
	sw      $t9, 0x00D4($t7)
	b       .L80176A34
	nop
.L80176A34:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	jal     obj_lib_8029F430
	lwc1    $f12, 0x0108($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00F8($t1)
	addiu   $t3, $t2, 0x0001
	sw      $t3, 0x00F8($t1)
	b       .L80176A60
	nop
.L80176A60:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

star_select_80176A74:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x002C($sp)
	sw      $a0, 0x0030($sp)
	lbu     $t6, 0x0033($sp)
	andi    $t7, $t6, 0x0040
	beqz    $t7, .L80176B08
	nop
	lui     $a0, %hi(object)
	la.u    $a3, o_1300302C
	li      $t8, 0x0172
	li      $t9, 0x0018
	li      $t0, -0x012C
	sw      $t0, 0x0018($sp)
	sw      $t9, 0x0014($sp)
	sw      $t8, 0x0010($sp)
	la.l    $a3, o_1300302C
	lw      $a0, %lo(object)($a0)
	move    $a1, $0
	li      $a2, 0x007A
	sw      $0, 0x001C($sp)
	sw      $0, 0x0020($sp)
	jal     obj_lib_8029E9AC
	sw      $0, 0x0024($sp)
	la.u    $t1, star_select_801B9A80
	la.l    $t1, star_select_801B9A80
	sw      $v0, 0x0018($t1)
	la.u    $t2, star_select_801B9A80
	la.l    $t2, star_select_801B9A80
	lui     $at, %hi(star_select_801A81DC)
	lwc1    $f4, %lo(star_select_801A81DC)($at)
	lw      $t3, 0x0018($t2)
	swc1    $f4, 0x0108($t3)
	la.u    $t5, star_select_801B9A80
	la.l    $t5, star_select_801B9A80
	lw      $t6, 0x0018($t5)
	li      $t4, 0x0002
	sw      $t4, 0x00F4($t6)
.L80176B08:
	b       .L80176B10
	nop
.L80176B10:
	lw      $ra, 0x002C($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

.globl star_select_80176B20
star_select_80176B20:
	addiu   $sp, $sp, -0x0060
	sw      $ra, 0x002C($sp)
	sh      $0, 0x005E($sp)
	lui     $a0, %hi(save_index)
	lui     $a1, %hi(course_index)
	lh      $a1, %lo(course_index)($a1)
	lh      $a0, %lo(save_index)($a0)
	addiu   $a1, $a1, -0x0001
	jal     save_file_star_get
	addiu   $a0, $a0, -0x0001
	sb      $v0, 0x0033($sp)
	lui     $at, %hi(star_select_801B9AA2)
	sb      $0, %lo(star_select_801B9AA2)($at)
	lui     $t7, %hi(star_select_801B9AA1)
	lbu     $t7, %lo(star_select_801B9AA1)($t7)
	lh      $t6, 0x005E($sp)
	beq     $t6, $t7, .L80176C24
	nop
.L80176B68:
	lui     $t9, %hi(star_select_801B9AA2)
	lb      $t9, %lo(star_select_801B9AA2)($t9)
	lbu     $t8, 0x0033($sp)
	li      $t0, 0x0001
	sllv    $t1, $t0, $t9
	and     $t2, $t8, $t1
	beqz    $t2, .L80176BB0
	nop
	lui     $t4, %hi(star_select_801B9AA2)
	lb      $t4, %lo(star_select_801B9AA2)($t4)
	li      $t3, 0x007A
	sll     $t5, $t4, 2
	addu    $t6, $sp, $t5
	sw      $t3, 0x0034($t6)
	lh      $t7, 0x005E($sp)
	addiu   $t0, $t7, 0x0001
	b       .L80176BFC
	sh      $t0, 0x005E($sp)
.L80176BB0:
	lui     $t8, %hi(star_select_801B9AA2)
	lb      $t8, %lo(star_select_801B9AA2)($t8)
	li      $t9, 0x0079
	sll     $t1, $t8, 2
	addu    $t2, $sp, $t1
	sw      $t9, 0x0034($t2)
	lui     $t4, %hi(star_select_801B9AA3)
	lbu     $t4, %lo(star_select_801B9AA3)($t4)
	bnez    $t4, .L80176BFC
	nop
	lui     $t3, %hi(star_select_801B9AA2)
	lb      $t3, %lo(star_select_801B9AA2)($t3)
	lui     $at, %hi(star_select_801B9AA3)
	addiu   $t5, $t3, 0x0001
	sb      $t5, %lo(star_select_801B9AA3)($at)
	lui     $t6, %hi(star_select_801B9AA2)
	lb      $t6, %lo(star_select_801B9AA2)($t6)
	lui     $at, %hi(star_select_801A81A4)
	sb      $t6, %lo(star_select_801A81A4)($at)
.L80176BFC:
	lui     $t7, %hi(star_select_801B9AA2)
	lb      $t7, %lo(star_select_801B9AA2)($t7)
	lui     $at, %hi(star_select_801B9AA2)
	addiu   $t0, $t7, 0x0001
	sb      $t0, %lo(star_select_801B9AA2)($at)
	lui     $t9, %hi(star_select_801B9AA1)
	lbu     $t9, %lo(star_select_801B9AA1)($t9)
	lh      $t8, 0x005E($sp)
	bne     $t8, $t9, .L80176B68
	nop
.L80176C24:
	lui     $t1, %hi(star_select_801B9AA2)
	lui     $t2, %hi(star_select_801B9AA1)
	lbu     $t2, %lo(star_select_801B9AA1)($t2)
	lb      $t1, %lo(star_select_801B9AA2)($t1)
	bne     $t1, $t2, .L80176C98
	nop
	li      $at, 0x0006
	beq     $t1, $at, .L80176C98
	nop
	lui     $t3, %hi(star_select_801B9AA2)
	lb      $t3, %lo(star_select_801B9AA2)($t3)
	li      $t4, 0x0079
	sll     $t5, $t3, 2
	addu    $t6, $sp, $t5
	sw      $t4, 0x0034($t6)
	lui     $t7, %hi(star_select_801B9AA2)
	lb      $t7, %lo(star_select_801B9AA2)($t7)
	lui     $at, %hi(star_select_801B9AA3)
	addiu   $t0, $t7, 0x0001
	sb      $t0, %lo(star_select_801B9AA3)($at)
	lui     $t8, %hi(star_select_801B9AA2)
	lb      $t8, %lo(star_select_801B9AA2)($t8)
	lui     $at, %hi(star_select_801A81A4)
	sb      $t8, %lo(star_select_801A81A4)($at)
	lui     $t9, %hi(star_select_801B9AA2)
	lb      $t9, %lo(star_select_801B9AA2)($t9)
	lui     $at, %hi(star_select_801B9AA2)
	addiu   $t2, $t9, 0x0001
	sb      $t2, %lo(star_select_801B9AA2)($at)
.L80176C98:
	lui     $t1, %hi(star_select_801B9AA1)
	lbu     $t1, %lo(star_select_801B9AA1)($t1)
	li      $at, 0x0006
	bne     $t1, $at, .L80176CBC
	nop
	lui     $t3, %hi(star_select_801B9AA2)
	lb      $t3, %lo(star_select_801B9AA2)($t3)
	lui     $at, %hi(star_select_801B9AA3)
	sb      $t3, %lo(star_select_801B9AA3)($at)
.L80176CBC:
	lui     $t4, %hi(star_select_801B9AA1)
	lbu     $t4, %lo(star_select_801B9AA1)($t4)
	bnez    $t4, .L80176CD8
	nop
	li      $t5, 0x0001
	lui     $at, %hi(star_select_801B9AA3)
	sb      $t5, %lo(star_select_801B9AA3)($at)
.L80176CD8:
	lui     $t6, %hi(star_select_801B9AA2)
	lb      $t6, %lo(star_select_801B9AA2)($t6)
	sh      $0, 0x005E($sp)
	blez    $t6, .L80176DD0
	nop
.L80176CEC:
	lui     $t8, %hi(star_select_801B9AA2)
	lb      $t8, %lo(star_select_801B9AA2)($t8)
	lh      $t7, 0x005E($sp)
	lui     $a0, %hi(object)
	subu    $at, $0, $t8
	sll     $t9, $at, 2
	addu    $t9, $t9, $at
	sll     $t0, $t7, 2
	sll     $t2, $t7, 2
	addu    $a2, $sp, $t0
	sll     $t9, $t9, 2
	addu    $t2, $t2, $t7
	sll     $t2, $t2, 2
	subu    $t9, $t9, $at
	lw      $a2, 0x0034($a2)
	sll     $t9, $t9, 2
	subu    $t2, $t2, $t7
	sll     $t2, $t2, 3
	subu    $t9, $t9, $at
	addu    $t1, $t9, $t2
	addiu   $t3, $t1, 0x004B
	la.u    $a3, o_1300302C
	li      $t4, 0x00F8
	li      $t5, -0x012C
	sw      $t5, 0x0018($sp)
	sw      $t4, 0x0014($sp)
	la.l    $a3, o_1300302C
	sw      $t3, 0x0010($sp)
	sw      $0, 0x0024($sp)
	sw      $0, 0x0020($sp)
	sw      $0, 0x001C($sp)
	lw      $a0, %lo(object)($a0)
	jal     obj_lib_8029E9AC
	move    $a1, $0
	lh      $t6, 0x005E($sp)
	lui     $at, %hi(star_select_801B9A80)
	sll     $t0, $t6, 2
	addu    $at, $at, $t0
	sw      $v0, %lo(star_select_801B9A80)($at)
	lh      $t8, 0x005E($sp)
	lui     $t9, %hi(star_select_801B9A80)
	li      $at, 0x3F800000
	sll     $t7, $t8, 2
	addu    $t9, $t9, $t7
	lw      $t9, %lo(star_select_801B9A80)($t9)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0108($t9)
	lh      $t2, 0x005E($sp)
	lui     $t5, %hi(star_select_801B9AA2)
	lb      $t5, %lo(star_select_801B9AA2)($t5)
	addiu   $t1, $t2, 0x0001
	sll     $t3, $t1, 16
	sra     $t4, $t3, 16
	slt     $at, $t4, $t5
	bnez    $at, .L80176CEC
	sh      $t1, 0x005E($sp)
.L80176DD0:
	jal     star_select_80176A74
	lbu     $a0, 0x0033($sp)
	b       .L80176DE0
	nop
.L80176DE0:
	lw      $ra, 0x002C($sp)
	addiu   $sp, $sp, 0x0060
	jr      $ra
	nop

.globl star_select_80176DF0
star_select_80176DF0:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(save_index)
	lui     $a1, %hi(course_index)
	lh      $a1, %lo(course_index)($a1)
	lh      $a0, %lo(save_index)($a0)
	addiu   $a1, $a1, -0x0001
	jal     save_file_star_get
	addiu   $a0, $a0, -0x0001
	sb      $v0, 0x001D($sp)
	lui     $t6, %hi(star_select_801B9AA1)
	lbu     $t6, %lo(star_select_801B9AA1)($t6)
	li      $at, 0x0006
	beq     $t6, $at, .L80176EF8
	nop
	lui     $at, %hi(star_select_801A81A0)
	sb      $0, %lo(star_select_801A81A0)($at)
	la.u    $a1, star_select_801A81A4
	lui     $a3, %hi(star_select_801B9AA1)
	lbu     $a3, %lo(star_select_801B9AA1)($a3)
	la.l    $a1, star_select_801A81A4
	li      $a0, 0x0002
	jal     message_802D862C
	move    $a2, $0
	lui     $t7, %hi(star_select_801A81A4)
	lb      $t7, %lo(star_select_801A81A4)($t7)
	sb      $t7, 0x001E($sp)
	lui     $t8, %hi(star_select_801B9AA2)
	lb      $t8, %lo(star_select_801B9AA2)($t8)
	sb      $0, 0x001F($sp)
	blez    $t8, .L80176EF0
	nop
.L80176E70:
	lb      $t0, 0x001F($sp)
	lbu     $t9, 0x001D($sp)
	li      $t1, 0x0001
	sllv    $t2, $t1, $t0
	and     $t3, $t9, $t2
	bnez    $t3, .L80176EA0
	nop
	lui     $t5, %hi(star_select_801B9AA3)
	lbu     $t5, %lo(star_select_801B9AA3)($t5)
	addiu   $t4, $t0, 0x0001
	bne     $t4, $t5, .L80176ECC
	nop
.L80176EA0:
	lbu     $t6, 0x001E($sp)
	bnez    $t6, .L80176EC0
	nop
	lb      $t7, 0x001F($sp)
	lui     $at, %hi(star_select_801A81A0)
	sb      $t7, %lo(star_select_801A81A0)($at)
	b       .L80176EF0
	nop
.L80176EC0:
	lbu     $t8, 0x001E($sp)
	addiu   $t1, $t8, -0x0001
	sb      $t1, 0x001E($sp)
.L80176ECC:
	lb      $t9, 0x001F($sp)
	lui     $t4, %hi(star_select_801B9AA2)
	lb      $t4, %lo(star_select_801B9AA2)($t4)
	addiu   $t2, $t9, 0x0001
	sll     $t3, $t2, 24
	sra     $t0, $t3, 24
	slt     $at, $t0, $t4
	bnez    $at, .L80176E70
	sb      $t2, 0x001F($sp)
.L80176EF0:
	b       .L80176F28
	nop
.L80176EF8:
	lui     $a3, %hi(star_select_801B9AA2)
	lb      $a3, %lo(star_select_801B9AA2)($a3)
	la.u    $a1, star_select_801A81A4
	la.l    $a1, star_select_801A81A4
	li      $a0, 0x0002
	move    $a2, $0
	jal     message_802D862C
	addiu   $a3, $a3, -0x0001
	lui     $t5, %hi(star_select_801A81A4)
	lb      $t5, %lo(star_select_801A81A4)($t5)
	lui     $at, %hi(star_select_801A81A0)
	sb      $t5, %lo(star_select_801A81A0)($at)
.L80176F28:
	lui     $t6, %hi(star_select_801B9AA2)
	lb      $t6, %lo(star_select_801B9AA2)($t6)
	sb      $0, 0x001F($sp)
	blez    $t6, .L80176FAC
	nop
.L80176F3C:
	lui     $t7, %hi(star_select_801A81A0)
	lb      $t7, %lo(star_select_801A81A0)($t7)
	lb      $t8, 0x001F($sp)
	bne     $t7, $t8, .L80176F70
	nop
	lb      $t9, 0x001F($sp)
	lui     $t3, %hi(star_select_801B9A80)
	li      $t1, 0x0001
	sll     $t2, $t9, 2
	addu    $t3, $t3, $t2
	lw      $t3, %lo(star_select_801B9A80)($t3)
	b       .L80176F88
	sw      $t1, 0x00F4($t3)
.L80176F70:
	lb      $t0, 0x001F($sp)
	lui     $t5, %hi(star_select_801B9A80)
	sll     $t4, $t0, 2
	addu    $t5, $t5, $t4
	lw      $t5, %lo(star_select_801B9A80)($t5)
	sw      $0, 0x00F4($t5)
.L80176F88:
	lb      $t6, 0x001F($sp)
	lui     $t2, %hi(star_select_801B9AA2)
	lb      $t2, %lo(star_select_801B9AA2)($t2)
	addiu   $t7, $t6, 0x0001
	sll     $t8, $t7, 24
	sra     $t9, $t8, 24
	slt     $at, $t9, $t2
	bnez    $at, .L80176F3C
	sb      $t7, 0x001F($sp)
.L80176FAC:
	b       .L80176FB4
	nop
.L80176FB4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

star_select_80176FC4:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0014($sp)
	li      $a0, 0x0001
	li      $a1, 0x431E0000
	li      $a2, 0x42A20000
	jal     message_802D7070
	li      $a3, 0x0000
	lui     $t6, %hi(gfx_ptr)
	lw      $t6, %lo(gfx_ptr)($t6)
	lui     $at, %hi(gfx_ptr)
	addiu   $t7, $t6, 0x0008
	sw      $t7, %lo(gfx_ptr)($at)
	sw      $t6, 0x0028($sp)
	lw      $t9, 0x0028($sp)
	li      $t8, 0x06000000
	sw      $t8, 0x0000($t9)
	lw      $t1, 0x0028($sp)
	la.u    $t0, gfx_select_course
	la.l    $t0, gfx_select_course
	sw      $t0, 0x0004($t1)
	lui     $t2, %hi(gfx_ptr)
	lw      $t2, %lo(gfx_ptr)($t2)
	lui     $at, %hi(gfx_ptr)
	addiu   $t3, $t2, 0x0008
	sw      $t3, %lo(gfx_ptr)($at)
	sw      $t2, 0x0024($sp)
	lw      $t5, 0x0024($sp)
	li      $t4, 0xBD000000
	sw      $t4, 0x0000($t5)
	lw      $t6, 0x0024($sp)
	sw      $0, 0x0004($t6)
	lui     $t7, %hi(gfx_ptr)
	lw      $t7, %lo(gfx_ptr)($t7)
	lui     $at, %hi(gfx_ptr)
	addiu   $t8, $t7, 0x0008
	sw      $t8, %lo(gfx_ptr)($at)
	sw      $t7, 0x0020($sp)
	lw      $t0, 0x0020($sp)
	li      $t9, 0x06000000
	sw      $t9, 0x0000($t0)
	lw      $t2, 0x0020($sp)
	la.u    $t1, gfx_dprint_1cyc_start
	la.l    $t1, gfx_dprint_1cyc_start
	sw      $t1, 0x0004($t2)
	lui     $t3, %hi(gfx_ptr)
	lw      $t3, %lo(gfx_ptr)($t3)
	lui     $at, %hi(gfx_ptr)
	addiu   $t4, $t3, 0x0008
	sw      $t4, %lo(gfx_ptr)($at)
	sw      $t3, 0x001C($sp)
	lw      $t6, 0x001C($sp)
	li      $t5, 0xFB000000
	sw      $t5, 0x0000($t6)
	lw      $t8, 0x001C($sp)
	li      $t7, -0x0001
	sw      $t7, 0x0004($t8)
	lui     $a0, %hi(course_index)
	lh      $a0, %lo(course_index)($a0)
	jal     message_802D8B34
	addiu   $a1, $sp, 0x002C
	lui     $t9, %hi(course_index)
	lh      $t9, %lo(course_index)($t9)
	slti    $at, $t9, 0x000A
	beqz    $at, .L801770E4
	nop
	li      $a0, 0x0002
	li      $a1, 0x0098
	li      $a2, 0x009E
	jal     message_802D7B84
	addiu   $a3, $sp, 0x002C
	b       .L801770F8
	nop
.L801770E4:
	li      $a0, 0x0002
	li      $a1, 0x008F
	li      $a2, 0x009E
	jal     message_802D7B84
	addiu   $a3, $sp, 0x002C
.L801770F8:
	lui     $t0, %hi(gfx_ptr)
	lw      $t0, %lo(gfx_ptr)($t0)
	lui     $at, %hi(gfx_ptr)
	addiu   $t1, $t0, 0x0008
	sw      $t1, %lo(gfx_ptr)($at)
	sw      $t0, 0x0018($sp)
	lw      $t3, 0x0018($sp)
	li      $t2, 0x06000000
	sw      $t2, 0x0000($t3)
	lw      $t5, 0x0018($sp)
	la.u    $t4, gfx_dprint_1cyc_end
	la.l    $t4, gfx_dprint_1cyc_end
	sw      $t4, 0x0004($t5)
	b       .L80177134
	nop
.L80177134:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

star_select_80177144:
	addiu   $sp, $sp, -0x0068
	sw      $ra, 0x001C($sp)
	la.u    $t7, str_801A81AC
	la.l    $t7, str_801A81AC
	lw      $at, 0x0000($t7)
	lw      $t0, 0x0004($t7)
	addiu   $t6, $sp, 0x0060
	sw      $at, 0x0000($t6)
	sw      $t0, 0x0004($t6)
	lui     $t1, %hi(star_select_801A81B4)
	lhu     $t1, %lo(star_select_801A81B4)($t1)
	sh      $t1, 0x005C($sp)
	la.u    $a0, str_course
	jal     segment_to_virtual
	la.l    $a0, str_course
	sw      $v0, 0x0058($sp)
	lui     $t3, %hi(course_index)
	lh      $t3, %lo(course_index)($t3)
	lw      $t2, 0x0058($sp)
	sll     $t4, $t3, 2
	addu    $t5, $t2, $t4
	jal     segment_to_virtual
	lw      $a0, -0x0004($t5)
	sw      $v0, 0x0054($sp)
	la.u    $a0, str_level
	jal     segment_to_virtual
	la.l    $a0, str_level
	sw      $v0, 0x0050($sp)
	jal     message_802D7384
	nop
	lui     $t9, %hi(gfx_ptr)
	lw      $t9, %lo(gfx_ptr)($t9)
	lui     $at, %hi(gfx_ptr)
	addiu   $t8, $t9, 0x0008
	sw      $t8, %lo(gfx_ptr)($at)
	sw      $t9, 0x0040($sp)
	lw      $t7, 0x0040($sp)
	li      $t6, 0x06000000
	sw      $t6, 0x0000($t7)
	lw      $t1, 0x0040($sp)
	la.u    $t0, gfx_dprint_1cyc_start
	la.l    $t0, gfx_dprint_1cyc_start
	sw      $t0, 0x0004($t1)
	lui     $t3, %hi(gfx_ptr)
	lw      $t3, %lo(gfx_ptr)($t3)
	lui     $at, %hi(gfx_ptr)
	addiu   $t2, $t3, 0x0008
	sw      $t2, %lo(gfx_ptr)($at)
	sw      $t3, 0x003C($sp)
	lw      $t5, 0x003C($sp)
	li      $t4, 0xFB000000
	sw      $t4, 0x0000($t5)
	lw      $t8, 0x003C($sp)
	li      $t9, -0x0001
	sw      $t9, 0x0004($t8)
	lui     $a1, %hi(save_index)
	lui     $a2, %hi(course_index)
	lh      $a2, %lo(course_index)($a2)
	lh      $a1, %lo(save_index)($a1)
	li      $t6, 0x006A
	sw      $t6, 0x0010($sp)
	li      $a0, 0x0001
	li      $a3, 0x009B
	addiu   $a2, $a2, -0x0001
	jal     message_802D89B8
	addiu   $a1, $a1, -0x0001
	lui     $t7, %hi(gfx_ptr)
	lw      $t7, %lo(gfx_ptr)($t7)
	lui     $at, %hi(gfx_ptr)
	addiu   $t0, $t7, 0x0008
	sw      $t0, %lo(gfx_ptr)($at)
	sw      $t7, 0x0038($sp)
	lw      $t3, 0x0038($sp)
	li      $t1, 0x06000000
	sw      $t1, 0x0000($t3)
	lw      $t4, 0x0038($sp)
	la.u    $t2, gfx_dprint_1cyc_end
	la.l    $t2, gfx_dprint_1cyc_end
	sw      $t2, 0x0004($t4)
	lui     $t5, %hi(gfx_ptr)
	lw      $t5, %lo(gfx_ptr)($t5)
	lui     $at, %hi(gfx_ptr)
	addiu   $t9, $t5, 0x0008
	sw      $t9, %lo(gfx_ptr)($at)
	sw      $t5, 0x0034($sp)
	lw      $t6, 0x0034($sp)
	li      $t8, 0x06000000
	sw      $t8, 0x0000($t6)
	lw      $t0, 0x0034($sp)
	la.u    $t7, gfx_message_start
	la.l    $t7, gfx_message_start
	sw      $t7, 0x0004($t0)
	lui     $t1, %hi(gfx_ptr)
	lw      $t1, %lo(gfx_ptr)($t1)
	lui     $at, %hi(gfx_ptr)
	addiu   $t3, $t1, 0x0008
	sw      $t3, %lo(gfx_ptr)($at)
	sw      $t1, 0x0030($sp)
	lw      $t4, 0x0030($sp)
	li      $t2, 0xFB000000
	sw      $t2, 0x0000($t4)
	lw      $t9, 0x0030($sp)
	li      $t5, 0x00FF
	sw      $t5, 0x0004($t9)
	lui     $a0, %hi(save_index)
	lui     $a1, %hi(course_index)
	lh      $a1, %lo(course_index)($a1)
	lh      $a0, %lo(save_index)($a0)
	addiu   $a1, $a1, -0x0001
	jal     save_file_coin_get
	addiu   $a0, $a0, -0x0001
	beqz    $v0, .L80177318
	nop
	li      $a0, 0x0066
	li      $a1, 0x0076
	jal     message_802D77DC
	addiu   $a2, $sp, 0x0060
.L80177318:
	lw      $a1, 0x0054($sp)
	li      $a0, 0x00A0
	li      $a2, 0x41200000
	jal     message_802D8844
	addiu   $a1, $a1, 0x0003
	sh      $v0, 0x004A($sp)
	lw      $a2, 0x0054($sp)
	lh      $a0, 0x004A($sp)
	li      $a1, 0x0021
	jal     message_802D77DC
	addiu   $a2, $a2, 0x0003
	lui     $t8, %hi(gfx_ptr)
	lw      $t8, %lo(gfx_ptr)($t8)
	lui     $at, %hi(gfx_ptr)
	addiu   $t6, $t8, 0x0008
	sw      $t6, %lo(gfx_ptr)($at)
	sw      $t8, 0x002C($sp)
	lw      $t0, 0x002C($sp)
	li      $t7, 0x06000000
	sw      $t7, 0x0000($t0)
	lw      $t3, 0x002C($sp)
	la.u    $t1, gfx_message_end
	la.l    $t1, gfx_message_end
	sw      $t1, 0x0004($t3)
	jal     star_select_80176FC4
	nop
	lui     $t2, %hi(gfx_ptr)
	lw      $t2, %lo(gfx_ptr)($t2)
	lui     $at, %hi(gfx_ptr)
	addiu   $t4, $t2, 0x0008
	sw      $t4, %lo(gfx_ptr)($at)
	sw      $t2, 0x0028($sp)
	lw      $t9, 0x0028($sp)
	li      $t5, 0x06000000
	sw      $t5, 0x0000($t9)
	lw      $t6, 0x0028($sp)
	la.u    $t8, gfx_msg8_start
	la.l    $t8, gfx_msg8_start
	sw      $t8, 0x0004($t6)
	lui     $t7, %hi(gfx_ptr)
	lw      $t7, %lo(gfx_ptr)($t7)
	lui     $at, %hi(gfx_ptr)
	addiu   $t0, $t7, 0x0008
	sw      $t0, %lo(gfx_ptr)($at)
	sw      $t7, 0x0024($sp)
	lw      $t3, 0x0024($sp)
	li      $t1, 0xFB000000
	sw      $t1, 0x0000($t3)
	lw      $t4, 0x0024($sp)
	li      $t2, 0x00FF
	sw      $t2, 0x0004($t4)
	lui     $t5, %hi(star_select_801B9AA2)
	lb      $t5, %lo(star_select_801B9AA2)($t5)
	beqz    $t5, .L80177450
	nop
	lui     $t9, %hi(course_index)
	lh      $t9, %lo(course_index)($t9)
	lui     $t6, %hi(star_select_801A81A0)
	lb      $t6, %lo(star_select_801A81A0)($t6)
	sll     $t8, $t9, 2
	subu    $t8, $t8, $t9
	lw      $t1, 0x0050($sp)
	sll     $t8, $t8, 1
	addu    $t7, $t8, $t6
	sll     $t0, $t7, 2
	addu    $t3, $t1, $t0
	jal     segment_to_virtual
	lw      $a0, -0x0018($t3)
	sw      $v0, 0x004C($sp)
	li      $a0, 0x00A3
	lw      $a1, 0x004C($sp)
	jal     message_802D8844
	li      $a2, 0x41000000
	sh      $v0, 0x0048($sp)
	lh      $a0, 0x0048($sp)
	li      $a1, 0x0051
	jal     message_802D7E88
	lw      $a2, 0x004C($sp)
.L80177450:
	lui     $t4, %hi(star_select_801B9AA2)
	lb      $t4, %lo(star_select_801B9AA2)($t4)
	li      $t2, 0x0001
	sb      $t2, 0x0047($sp)
	blez    $t4, .L801774CC
	nop
.L80177468:
	lb      $t5, 0x0047($sp)
	addiu   $t9, $sp, 0x005C
	sb      $t5, 0x0000($t9)
	lb      $t8, 0x0047($sp)
	lui     $t7, %hi(star_select_801B9AA2)
	lb      $t7, %lo(star_select_801B9AA2)($t7)
	sll     $t6, $t8, 4
	addu    $t6, $t6, $t8
	sll     $t1, $t7, 4
	sll     $t6, $t6, 1
	addu    $t1, $t1, $t7
	subu    $a0, $t6, $t1
	addiu   $a0, $a0, 0x008B
	li      $a1, 0x0026
	jal     message_802D7E88
	addiu   $a2, $sp, 0x005C
	lb      $t0, 0x0047($sp)
	lui     $t5, %hi(star_select_801B9AA2)
	lb      $t5, %lo(star_select_801B9AA2)($t5)
	addiu   $t3, $t0, 0x0001
	sll     $t2, $t3, 24
	sra     $t4, $t2, 24
	slt     $at, $t5, $t4
	beqz    $at, .L80177468
	sb      $t3, 0x0047($sp)
.L801774CC:
	lui     $t9, %hi(gfx_ptr)
	lw      $t9, %lo(gfx_ptr)($t9)
	lui     $at, %hi(gfx_ptr)
	addiu   $t8, $t9, 0x0008
	sw      $t8, %lo(gfx_ptr)($at)
	sw      $t9, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	li      $t7, 0x06000000
	sw      $t7, 0x0000($t6)
	lw      $t0, 0x0020($sp)
	la.u    $t1, gfx_msg8_end
	la.l    $t1, gfx_msg8_end
	sw      $t1, 0x0004($t0)
	b       .L80177508
	nop
.L80177508:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0068
	jr      $ra
	nop

.globl s_star_select_main
s_star_select_main:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	lh      $t6, 0x001A($sp)
	li      $at, 0x0001
	bne     $t6, $at, .L80177540
	nop
	jal     star_select_80177144
	nop
.L80177540:
	b       .L80177550
	move    $v0, $0
	b       .L80177550
	nop
.L80177550:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl p_star_select_init
p_star_select_init:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	lui     $a0, %hi(save_index)
	lui     $a1, %hi(course_index)
	lh      $a1, %lo(course_index)($a1)
	lh      $a0, %lo(save_index)($a0)
	addiu   $a1, $a1, -0x0001
	jal     save_file_star_get
	addiu   $a0, $a0, -0x0001
	sb      $v0, 0x001F($sp)
	lui     $at, %hi(star_select_801B9AA0)
	sb      $0, %lo(star_select_801B9AA0)($at)
	lui     $at, %hi(star_select_801B9AA3)
	sb      $0, %lo(star_select_801B9AA3)($at)
	lui     $at, %hi(star_select_801B9AA2)
	sb      $0, %lo(star_select_801B9AA2)($at)
	lui     $at, %hi(star_select_801A81A8)
	sw      $0, %lo(star_select_801A81A8)($at)
	lui     $a0, %hi(save_index)
	lui     $a1, %hi(course_index)
	lh      $a1, %lo(course_index)($a1)
	lh      $a0, %lo(save_index)($a0)
	addiu   $a1, $a1, -0x0001
	jal     save_file_star_count
	addiu   $a0, $a0, -0x0001
	lui     $at, %hi(star_select_801B9AA1)
	sb      $v0, %lo(star_select_801B9AA1)($at)
	lbu     $t6, 0x001F($sp)
	andi    $t7, $t6, 0x0040
	beqz    $t7, .L801775F8
	nop
	lui     $t8, %hi(star_select_801B9AA1)
	lbu     $t8, %lo(star_select_801B9AA1)($t8)
	lui     $at, %hi(star_select_801B9AA1)
	addiu   $t9, $t8, -0x0001
	sb      $t9, %lo(star_select_801B9AA1)($at)
.L801775F8:
	b       .L80177600
	nop
.L80177600:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl p_star_select_update
p_star_select_update:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	lui     $t6, %hi(star_select_801A81A8)
	lw      $t6, %lo(star_select_801A81A8)($t6)
	slti    $at, $t6, 0x000B
	bnez    $at, .L801776D0
	nop
	lui     $t7, %hi(controller)
	lw      $t7, %lo(controller)($t7)
	lhu     $t8, 0x0012($t7)
	andi    $t9, $t8, 0x8000
	bnez    $t9, .L80177664
	nop
	andi    $t0, $t8, 0x1000
	bnez    $t0, .L80177664
	nop
	andi    $t1, $t8, 0x4000
	beqz    $t1, .L801776D0
	nop
.L80177664:
	li.u    $a0, 0x7024FF81
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SE_play
	li.l    $a0, 0x7024FF81
	lui     $t2, %hi(star_select_801B9AA3)
	lui     $t3, %hi(star_select_801A81A0)
	lb      $t3, %lo(star_select_801A81A0)($t3)
	lbu     $t2, %lo(star_select_801B9AA3)($t2)
	slt     $at, $t3, $t2
	beqz    $at, .L801776AC
	nop
	lui     $t4, %hi(star_select_801A81A0)
	lb      $t4, %lo(star_select_801A81A0)($t4)
	lui     $at, %hi(star_select_801B9AA0)
	addiu   $t5, $t4, 0x0001
	b       .L801776BC
	sb      $t5, %lo(star_select_801B9AA0)($at)
.L801776AC:
	lui     $t6, %hi(star_select_801B9AA3)
	lbu     $t6, %lo(star_select_801B9AA3)($t6)
	lui     $at, %hi(star_select_801B9AA0)
	sb      $t6, %lo(star_select_801B9AA0)($at)
.L801776BC:
	lui     $t7, %hi(star_select_801A81A0)
	lb      $t7, %lo(star_select_801A81A0)($t7)
	lui     $at, %hi(message_80331620)
	addiu   $t9, $t7, 0x0001
	sb      $t9, %lo(message_80331620)($at)
.L801776D0:
	jal     scene_update
	nop
	lui     $t0, %hi(star_select_801A81A8)
	lw      $t0, %lo(star_select_801A81A8)($t0)
	lui     $at, %hi(star_select_801A81A8)
	addiu   $t8, $t0, 0x0001
	sw      $t8, %lo(star_select_801A81A8)($at)
	lui     $v0, %hi(star_select_801B9AA0)
	b       .L80177700
	lb      $v0, %lo(star_select_801B9AA0)($v0)
	b       .L80177700
	nop
.L80177700:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop
