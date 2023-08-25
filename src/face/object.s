.include "sm64/asm.inc"

.set fp=32
.set noreorder
.set noat

.align 4

.globl face_object_8017BDF0
face_object_8017BDF0:
	lui     $at, %hi(face_object_801B5CBC)
	lwc1    $f4, %lo(face_object_801B5CBC)($at)
	lui     $at, %hi(_face_bss+0x480)
	swc1    $f4, %lo(_face_bss+0x480)($at)
	lui     $at, %hi(face_object_801B5CC0)
	lwc1    $f6, %lo(face_object_801B5CC0)($at)
	lui     $at, %hi(_face_bss+0x484)
	swc1    $f6, %lo(_face_bss+0x484)($at)
	lui     $at, %hi(face_object_801B5CC4)
	lwc1    $f8, %lo(face_object_801B5CC4)($at)
	lui     $at, %hi(_face_bss+0x488)
	swc1    $f8, %lo(_face_bss+0x488)($at)
	lui     $at, %hi(face_object_801B5CC8)
	lwc1    $f10, %lo(face_object_801B5CC8)($at)
	lui     $at, %hi(_face_bss+0x48C)
	swc1    $f10, %lo(_face_bss+0x48C)($at)
	lui     $at, %hi(face_object_801B5CCC)
	lwc1    $f16, %lo(face_object_801B5CCC)($at)
	lui     $at, %hi(_face_bss+0x490)
	swc1    $f16, %lo(_face_bss+0x490)($at)
	lui     $at, %hi(face_object_801B5CD0)
	lwc1    $f18, %lo(face_object_801B5CD0)($at)
	lui     $at, %hi(_face_bss+0x494)
	swc1    $f18, %lo(_face_bss+0x494)($at)
	jr      $ra
	nop
	jr      $ra
	nop

.globl face_object_8017BE60
face_object_8017BE60:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	lw      $a0, 0x0028($sp)
	jal     face_dynlist_80186C84
	nop
	jal     dGetWorldPos
	addiu   $a0, $sp, 0x001C
	lui     $at, %hi(_face_bss+0x480)
	lwc1    $f6, %lo(_face_bss+0x480)($at)
	lwc1    $f4, 0x001C($sp)
	nop
	c.lt.s  $f4, $f6
	nop
	bc1f    .L8017BEAC
	nop
	lwc1    $f8, 0x001C($sp)
	lui     $at, %hi(_face_bss+0x480)
	swc1    $f8, %lo(_face_bss+0x480)($at)
.L8017BEAC:
	lui     $at, %hi(_face_bss+0x484)
	lwc1    $f16, %lo(_face_bss+0x484)($at)
	lwc1    $f10, 0x0020($sp)
	nop
	c.lt.s  $f10, $f16
	nop
	bc1f    .L8017BED8
	nop
	lwc1    $f18, 0x0020($sp)
	lui     $at, %hi(_face_bss+0x484)
	swc1    $f18, %lo(_face_bss+0x484)($at)
.L8017BED8:
	lui     $at, %hi(_face_bss+0x488)
	lwc1    $f6, %lo(_face_bss+0x488)($at)
	lwc1    $f4, 0x0024($sp)
	nop
	c.lt.s  $f4, $f6
	nop
	bc1f    .L8017BF04
	nop
	lwc1    $f8, 0x0024($sp)
	lui     $at, %hi(_face_bss+0x488)
	swc1    $f8, %lo(_face_bss+0x488)($at)
.L8017BF04:
	lui     $at, %hi(_face_bss+0x48C)
	lwc1    $f16, %lo(_face_bss+0x48C)($at)
	lwc1    $f10, 0x001C($sp)
	nop
	c.lt.s  $f16, $f10
	nop
	bc1f    .L8017BF30
	nop
	lwc1    $f18, 0x001C($sp)
	lui     $at, %hi(_face_bss+0x48C)
	swc1    $f18, %lo(_face_bss+0x48C)($at)
.L8017BF30:
	lui     $at, %hi(_face_bss+0x490)
	lwc1    $f6, %lo(_face_bss+0x490)($at)
	lwc1    $f4, 0x0020($sp)
	nop
	c.lt.s  $f6, $f4
	nop
	bc1f    .L8017BF5C
	nop
	lwc1    $f8, 0x0020($sp)
	lui     $at, %hi(_face_bss+0x490)
	swc1    $f8, %lo(_face_bss+0x490)($at)
.L8017BF5C:
	lui     $at, %hi(_face_bss+0x494)
	lwc1    $f16, %lo(_face_bss+0x494)($at)
	lwc1    $f10, 0x0024($sp)
	nop
	c.lt.s  $f16, $f10
	nop
	bc1f    .L8017BF88
	nop
	lwc1    $f18, 0x0024($sp)
	lui     $at, %hi(_face_bss+0x494)
	swc1    $f18, %lo(_face_bss+0x494)($at)
.L8017BF88:
	b       .L8017BF90
	nop
.L8017BF90:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl face_object_8017BFA0
face_object_8017BFA0:
	lui     $at, %hi(_face_bss+0x480)
	lwc1    $f4, %lo(_face_bss+0x480)($at)
	nop
	swc1    $f4, 0x0000($a0)
	lui     $at, %hi(_face_bss+0x484)
	lwc1    $f6, %lo(_face_bss+0x484)($at)
	nop
	swc1    $f6, 0x0004($a0)
	lui     $at, %hi(_face_bss+0x488)
	lwc1    $f8, %lo(_face_bss+0x488)($at)
	nop
	swc1    $f8, 0x0008($a0)
	lui     $at, %hi(_face_bss+0x48C)
	lwc1    $f10, %lo(_face_bss+0x48C)($at)
	nop
	swc1    $f10, 0x000C($a0)
	lui     $at, %hi(_face_bss+0x490)
	lwc1    $f16, %lo(_face_bss+0x490)($at)
	nop
	swc1    $f16, 0x0010($a0)
	lui     $at, %hi(_face_bss+0x494)
	lwc1    $f18, %lo(_face_bss+0x494)($at)
	nop
	swc1    $f18, 0x0014($a0)
	jr      $ra
	nop
	jr      $ra
	nop

.globl face_object_8017C010
face_object_8017C010:
	addiu   $sp, $sp, -0x0008
	sw      $a0, 0x0008($sp)
	sw      $a1, 0x000C($sp)
	b       .L8017C02C
	nop
	b       .L8017C02C
	nop
.L8017C02C:
	jr      $ra
	addiu   $sp, $sp, 0x0008

face_object_8017C034:
	addiu   $sp, $sp, -0x0008
	move    $a1, $a0
	slti    $at, $a1, 0x1001
	bnez    $at, .L8017C0A4
	nop
	li      $at, 0x2000
	beq     $a1, $at, .L8017C258
	nop
	li      $at, 0x4000
	beq     $a1, $at, .L8017C26C
	nop
	li      $at, 0x8000
	beq     $a1, $at, .L8017C280
	nop
	li      $at, 0x00010000
	beq     $a1, $at, .L8017C294
	nop
	li      $at, 0x00020000
	beq     $a1, $at, .L8017C2A8
	nop
	li      $at, 0x00080000
	beq     $a1, $at, .L8017C230
	nop
	li      $at, 0x00100000
	beq     $a1, $at, .L8017C2BC
	nop
	b       L8017C2D0
	nop
.L8017C0A4:
	slti    $at, $a1, 0x0101
	bnez    $at, .L8017C0DC
	nop
	li      $at, 0x0200
	beq     $a1, $at, .L8017C1F4
	nop
	li      $at, 0x0800
	beq     $a1, $at, .L8017C21C
	nop
	li      $at, 0x1000
	beq     $a1, $at, .L8017C244
	nop
	b       L8017C2D0
	nop
.L8017C0DC:
	slti    $at, $a1, 0x0041
	bnez    $at, .L8017C108
	nop
	li      $at, 0x0080
	beq     $a1, $at, .L8017C208
	nop
	li      $at, 0x0100
	beq     $a1, $at, .L8017C1E0
	nop
	b       L8017C2D0
	nop
.L8017C108:
	slti    $at, $a1, 0x0021
	bnez    $at, .L8017C128
	nop
	li      $at, 0x0040
	beq     $a1, $at, .L8017C1CC
	nop
	b       L8017C2D0
	nop
.L8017C128:
	addiu   $t6, $a1, -0x0001
	sltiu   $at, $t6, 0x0020
	beqz    $at, L8017C2D0
	nop
	sll     $t6, $t6, 2
	lui     $at, %hi(face_object_801B5CD4)
	addu    $at, $at, $t6
	lw      $t6, %lo(face_object_801B5CD4)($at)
	nop
	jr      $t6
	nop
.globl L8017C154
L8017C154:
	la.u    $t7, str_face_object_801B5920
	la.l    $t7, str_face_object_801B5920
	sw      $t7, 0x0004($sp)
	b       .L8017C2E4
	nop
.globl L8017C168
L8017C168:
	la.u    $t8, str_face_object_801B5928
	la.l    $t8, str_face_object_801B5928
	sw      $t8, 0x0004($sp)
	b       .L8017C2E4
	nop
.globl L8017C17C
L8017C17C:
	la.u    $t9, str_face_object_801B5930
	la.l    $t9, str_face_object_801B5930
	sw      $t9, 0x0004($sp)
	b       .L8017C2E4
	nop
.globl L8017C190
L8017C190:
	la.u    $t0, str_face_object_801B5938
	la.l    $t0, str_face_object_801B5938
	sw      $t0, 0x0004($sp)
	b       .L8017C2E4
	nop
.globl L8017C1A4
L8017C1A4:
	la.u    $t1, str_face_object_801B5944
	la.l    $t1, str_face_object_801B5944
	sw      $t1, 0x0004($sp)
	b       .L8017C2E4
	nop
.globl L8017C1B8
L8017C1B8:
	la.u    $t2, str_face_object_801B594C
	la.l    $t2, str_face_object_801B594C
	sw      $t2, 0x0004($sp)
	b       .L8017C2E4
	nop
.L8017C1CC:
	la.u    $t3, str_face_object_801B5954
	la.l    $t3, str_face_object_801B5954
	sw      $t3, 0x0004($sp)
	b       .L8017C2E4
	nop
.L8017C1E0:
	la.u    $t4, str_face_object_801B595C
	la.l    $t4, str_face_object_801B595C
	sw      $t4, 0x0004($sp)
	b       .L8017C2E4
	nop
.L8017C1F4:
	la.u    $t5, str_face_object_801B5968
	la.l    $t5, str_face_object_801B5968
	sw      $t5, 0x0004($sp)
	b       .L8017C2E4
	nop
.L8017C208:
	la.u    $t6, str_face_object_801B5970
	la.l    $t6, str_face_object_801B5970
	sw      $t6, 0x0004($sp)
	b       .L8017C2E4
	nop
.L8017C21C:
	la.u    $t7, str_face_object_801B5978
	la.l    $t7, str_face_object_801B5978
	sw      $t7, 0x0004($sp)
	b       .L8017C2E4
	nop
.L8017C230:
	la.u    $t8, str_face_object_801B5984
	la.l    $t8, str_face_object_801B5984
	sw      $t8, 0x0004($sp)
	b       .L8017C2E4
	nop
.L8017C244:
	la.u    $t9, str_face_object_801B598C
	la.l    $t9, str_face_object_801B598C
	sw      $t9, 0x0004($sp)
	b       .L8017C2E4
	nop
.L8017C258:
	la.u    $t0, str_face_object_801B5994
	la.l    $t0, str_face_object_801B5994
	sw      $t0, 0x0004($sp)
	b       .L8017C2E4
	nop
.L8017C26C:
	la.u    $t1, str_face_object_801B599C
	la.l    $t1, str_face_object_801B599C
	sw      $t1, 0x0004($sp)
	b       .L8017C2E4
	nop
.L8017C280:
	la.u    $t2, str_face_object_801B59A4
	la.l    $t2, str_face_object_801B59A4
	sw      $t2, 0x0004($sp)
	b       .L8017C2E4
	nop
.L8017C294:
	la.u    $t3, str_face_object_801B59AC
	la.l    $t3, str_face_object_801B59AC
	sw      $t3, 0x0004($sp)
	b       .L8017C2E4
	nop
.L8017C2A8:
	la.u    $t4, str_face_object_801B59B8
	la.l    $t4, str_face_object_801B59B8
	sw      $t4, 0x0004($sp)
	b       .L8017C2E4
	nop
.L8017C2BC:
	la.u    $t5, str_face_object_801B59C0
	la.l    $t5, str_face_object_801B59C0
	sw      $t5, 0x0004($sp)
	b       .L8017C2E4
	nop
.globl L8017C2D0
L8017C2D0:
	la.u    $t6, str_face_object_801B59C8
	la.l    $t6, str_face_object_801B59C8
	sw      $t6, 0x0004($sp)
	b       .L8017C2E4
	nop
.L8017C2E4:
	lw      $v0, 0x0004($sp)
	b       .L8017C2F8
	nop
	b       .L8017C2F8
	nop
.L8017C2F8:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl make_object
make_object:
	addiu   $sp, $sp, -0x0048
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0048($sp)
	sw      $s0, 0x0018($sp)
	li      $t6, 0x0010
	sw      $t6, 0x0028($sp)
	la.u    $a0, str_face_object_801B59D0
	jal     face_stdio_8018D560
	la.l    $a0, str_face_object_801B59D0
	lw      $s0, 0x0048($sp)
	nop
	slti    $at, $s0, 0x2001
	bnez    $at, .L8017C394
	nop
	li      $at, 0x4000
	beq     $s0, $at, .L8017C5FC
	nop
	li      $at, 0x8000
	beq     $s0, $at, .L8017C618
	nop
	li      $at, 0x00010000
	beq     $s0, $at, .L8017C634
	nop
	li      $at, 0x00020000
	beq     $s0, $at, .L8017C650
	nop
	li      $at, 0x00080000
	beq     $s0, $at, .L8017C5A8
	nop
	li      $at, 0x00100000
	beq     $s0, $at, .L8017C66C
	nop
	li      $at, 0x00200000
	beq     $s0, $at, .L8017C4DC
	nop
	b       L8017C688
	nop
.L8017C394:
	slti    $at, $s0, 0x0101
	bnez    $at, .L8017C3D8
	nop
	li      $at, 0x0200
	beq     $s0, $at, .L8017C54C
	nop
	li      $at, 0x0800
	beq     $s0, $at, .L8017C58C
	nop
	li      $at, 0x1000
	beq     $s0, $at, .L8017C5C4
	nop
	li      $at, 0x2000
	beq     $s0, $at, .L8017C5E0
	nop
	b       L8017C688
	nop
.L8017C3D8:
	slti    $at, $s0, 0x0041
	bnez    $at, .L8017C404
	nop
	li      $at, 0x0080
	beq     $s0, $at, .L8017C568
	nop
	li      $at, 0x0100
	beq     $s0, $at, .L8017C530
	nop
	b       L8017C688
	nop
.L8017C404:
	slti    $at, $s0, 0x0021
	bnez    $at, .L8017C424
	nop
	li      $at, 0x0040
	beq     $s0, $at, .L8017C514
	nop
	b       L8017C688
	nop
.L8017C424:
	addiu   $t7, $s0, -0x0001
	sltiu   $at, $t7, 0x0020
	beqz    $at, L8017C688
	nop
	sll     $t7, $t7, 2
	lui     $at, %hi(face_object_801B5D54)
	addu    $at, $at, $t7
	lw      $t7, %lo(face_object_801B5D54)($at)
	nop
	jr      $t7
	nop
.globl L8017C450
L8017C450:
	li      $t8, 0x022C
	sw      $t8, 0x003C($sp)
	la.u    $t9, face_draw_8017A7E4
	la.l    $t9, face_draw_8017A7E4
	sw      $t9, 0x0034($sp)
	b       .L8017C694
	nop
.globl L8017C46C
L8017C46C:
	li      $t0, 0x0124
	sw      $t0, 0x003C($sp)
	la.u    $t1, face_draw_8017A690
	la.l    $t1, face_draw_8017A690
	sw      $t1, 0x0034($sp)
	b       .L8017C694
	nop
.globl L8017C488
L8017C488:
	li      $t2, 0x0078
	sw      $t2, 0x003C($sp)
	la.u    $t3, Draw_Group
	la.l    $t3, Draw_Group
	sw      $t3, 0x0034($sp)
	b       .L8017C694
	nop
.globl L8017C4A4
L8017C4A4:
	li      $t4, 0x00C0
	sw      $t4, 0x003C($sp)
	la.u    $t5, face_draw_8017A44C
	la.l    $t5, face_draw_8017A44C
	sw      $t5, 0x0034($sp)
	b       .L8017C694
	nop
.globl L8017C4C0
L8017C4C0:
	li      $t6, 0x009C
	sw      $t6, 0x003C($sp)
	la.u    $t7, face_draw_8017A344
	la.l    $t7, face_draw_8017A344
	sw      $t7, 0x0034($sp)
	b       .L8017C694
	nop
.L8017C4DC:
	li      $t8, 0x0038
	sw      $t8, 0x003C($sp)
	la.u    $t9, face_draw_8017A344
	la.l    $t9, face_draw_8017A344
	sw      $t9, 0x0034($sp)
	b       .L8017C694
	nop
.globl L8017C4F8
L8017C4F8:
	li      $t0, 0x0220
	sw      $t0, 0x003C($sp)
	la.u    $t1, face_draw_80179768
	la.l    $t1, face_draw_80179768
	sw      $t1, 0x0034($sp)
	b       .L8017C694
	nop
.L8017C514:
	li      $t2, 0x0044
	sw      $t2, 0x003C($sp)
	la.u    $t3, face_draw_8017A958
	la.l    $t3, face_draw_8017A958
	sw      $t3, 0x0034($sp)
	b       .L8017C694
	nop
.L8017C530:
	li      $t4, 0x0048
	sw      $t4, 0x003C($sp)
	la.u    $t5, face_draw_8017A344
	la.l    $t5, face_draw_8017A344
	sw      $t5, 0x0034($sp)
	b       .L8017C694
	nop
.L8017C54C:
	li      $t6, 0x0190
	sw      $t6, 0x003C($sp)
	la.u    $t7, Draw_Camera
	la.l    $t7, Draw_Camera
	sw      $t7, 0x0034($sp)
	b       .L8017C694
	nop
.L8017C568:
	li      $t8, 0x004C
	sw      $t8, 0x003C($sp)
	la.u    $t9, Draw_Face
	la.l    $t9, Draw_Face
	sw      $t9, 0x0034($sp)
	li      $t0, 0x0001
	sw      $t0, 0x0028($sp)
	b       .L8017C694
	nop
.L8017C58C:
	li      $t1, 0x0060
	sw      $t1, 0x003C($sp)
	la.u    $t2, Draw_Material
	la.l    $t2, Draw_Material
	sw      $t2, 0x0034($sp)
	b       .L8017C694
	nop
.L8017C5A8:
	li      $t3, 0x00A0
	sw      $t3, 0x003C($sp)
	la.u    $t4, face_draw_80178A40
	la.l    $t4, face_draw_80178A40
	sw      $t4, 0x0034($sp)
	b       .L8017C694
	nop
.L8017C5C4:
	li      $t5, 0x0040
	sw      $t5, 0x003C($sp)
	la.u    $t6, face_draw_8017A344
	la.l    $t6, face_draw_8017A344
	sw      $t6, 0x0034($sp)
	b       .L8017C694
	nop
.L8017C5E0:
	li      $t7, 0x0060
	sw      $t7, 0x003C($sp)
	la.u    $t8, face_draw_801798AC
	la.l    $t8, face_draw_801798AC
	sw      $t8, 0x0034($sp)
	b       .L8017C694
	nop
.L8017C5FC:
	li      $t9, 0x00A0
	sw      $t9, 0x003C($sp)
	la.u    $t0, face_draw_8017A344
	la.l    $t0, face_draw_8017A344
	sw      $t0, 0x0034($sp)
	b       .L8017C694
	nop
.L8017C618:
	li      $t1, 0x0034
	sw      $t1, 0x003C($sp)
	la.u    $t2, face_draw_80179490
	la.l    $t2, face_draw_80179490
	sw      $t2, 0x0034($sp)
	b       .L8017C694
	nop
.L8017C634:
	li      $t3, 0x0058
	sw      $t3, 0x003C($sp)
	la.u    $t4, face_draw_8017A344
	la.l    $t4, face_draw_8017A344
	sw      $t4, 0x0034($sp)
	b       .L8017C694
	nop
.L8017C650:
	li      $t5, 0x0024
	sw      $t5, 0x003C($sp)
	la.u    $t6, face_draw_8017A344
	la.l    $t6, face_draw_8017A344
	sw      $t6, 0x0034($sp)
	b       .L8017C694
	nop
.L8017C66C:
	li      $t7, 0x0038
	sw      $t7, 0x003C($sp)
	la.u    $t8, face_draw_8017A344
	la.l    $t8, face_draw_8017A344
	sw      $t8, 0x0034($sp)
	b       .L8017C694
	nop
.globl L8017C688
L8017C688:
	la.u    $a0, str_face_object_801B59DC
	jal     face_stdio_8018D1F8
	la.l    $a0, str_face_object_801B59DC
.L8017C694:
	lw      $a0, 0x0048($sp)
	jal     face_object_8017C034
	nop
	sw      $v0, 0x0030($sp)
	lw      $a0, 0x0030($sp)
	jal     face_stdio_8018C44C
	nop
	lw      $a0, 0x003C($sp)
	lw      $a1, 0x0028($sp)
	jal     face_gfx_8019BC88
	nop
	sw      $v0, 0x0044($sp)
	lw      $t9, 0x0044($sp)
	nop
	bnez    $t9, .L8017C6E4
	nop
	la.u    $a0, str_face_object_801B59FC
	lw      $a1, 0x0030($sp)
	jal     face_stdio_8018D298
	la.l    $a0, str_face_object_801B59FC
.L8017C6E4:
	lw      $a0, 0x0030($sp)
	jal     face_stdio_8018C598
	nop
	lw      $t0, 0x0044($sp)
	nop
	sw      $t0, 0x002C($sp)
	lw      $t1, 0x003C($sp)
	sw      $0, 0x0038($sp)
	blez    $t1, .L8017C738
	nop
.L8017C70C:
	lw      $t2, 0x002C($sp)
	lw      $t3, 0x0038($sp)
	nop
	addu    $t4, $t2, $t3
	sb      $0, 0x0000($t4)
	lw      $t5, 0x0038($sp)
	lw      $t7, 0x003C($sp)
	addiu   $t6, $t5, 0x0001
	slt     $at, $t6, $t7
	bnez    $at, .L8017C70C
	sw      $t6, 0x0038($sp)
.L8017C738:
	lui     $t8, %hi(_face_bss+0x538)
	lw      $t8, %lo(_face_bss+0x538)($t8)
	lui     $at, %hi(_face_bss+0x538)
	addiu   $t9, $t8, 0x0001
	sw      $t9, %lo(_face_bss+0x538)($at)
	lui     $t0, %hi(_face_bss+0x56C)
	lw      $t0, %lo(_face_bss+0x56C)($t0)
	nop
	sw      $t0, 0x0040($sp)
	lw      $t1, 0x0044($sp)
	lui     $at, %hi(_face_bss+0x56C)
	sw      $t1, %lo(_face_bss+0x56C)($at)
	lw      $t2, 0x0044($sp)
	nop
	sw      $0, 0x0000($t2)
	lw      $t3, 0x0040($sp)
	nop
	beqz    $t3, .L8017C7A4
	nop
	lw      $t4, 0x0040($sp)
	lw      $t5, 0x0044($sp)
	nop
	sw      $t4, 0x0004($t5)
	lw      $t6, 0x0044($sp)
	lw      $t7, 0x0040($sp)
	nop
	sw      $t6, 0x0000($t7)
.L8017C7A4:
	lui     $t8, %hi(_face_bss+0x538)
	lw      $t8, %lo(_face_bss+0x538)($t8)
	lw      $t9, 0x0044($sp)
	nop
	sh      $t8, 0x0010($t9)
	lw      $t0, 0x0048($sp)
	lw      $t1, 0x0044($sp)
	nop
	sw      $t0, 0x000C($t1)
	lw      $t2, 0x0034($sp)
	lw      $t3, 0x0044($sp)
	nop
	sw      $t2, 0x0008($t3)
	lw      $t4, 0x0044($sp)
	nop
	sh      $0, 0x0012($t4)
	jal     imout
	nop
	lw      $v0, 0x0044($sp)
	b       .L8017C800
	nop
	b       .L8017C800
	nop
.L8017C800:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0048

.globl face_object_8017C810
face_object_8017C810:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	jal     make_object
	li      $a0, 0x00100000
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x0024($sp)
	lw      $t7, 0x001C($sp)
	lwc1    $f4, 0x0000($t6)
	nop
	swc1    $f4, 0x0014($t7)
	lw      $t8, 0x0024($sp)
	lw      $t9, 0x001C($sp)
	lwc1    $f6, 0x0004($t8)
	nop
	swc1    $f6, 0x0018($t9)
	lw      $t0, 0x0024($sp)
	lw      $t1, 0x001C($sp)
	lwc1    $f8, 0x0008($t0)
	nop
	swc1    $f8, 0x001C($t1)
	lw      $t2, 0x0024($sp)
	lw      $t3, 0x001C($sp)
	lwc1    $f10, 0x000C($t2)
	nop
	swc1    $f10, 0x0020($t3)
	lw      $t4, 0x0024($sp)
	lw      $t5, 0x001C($sp)
	lwc1    $f16, 0x0010($t4)
	nop
	swc1    $f16, 0x0024($t5)
	lw      $t6, 0x0024($sp)
	lw      $t7, 0x001C($sp)
	lwc1    $f18, 0x0014($t6)
	nop
	swc1    $f18, 0x0028($t7)
	lw      $t8, 0x0028($sp)
	lw      $t9, 0x001C($sp)
	nop
	sw      $t8, 0x002C($t9)
	lw      $t0, 0x0020($sp)
	lw      $t1, 0x001C($sp)
	nop
	sw      $t0, 0x0030($t1)
	b       .L8017C8D0
	nop
.L8017C8D0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

face_object_8017C8E0:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	jal     make_object
	li      $a0, 0x00200000
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x0020($sp)
	lw      $t7, 0x001C($sp)
	nop
	sw      $t6, 0x0030($t7)
	lw      $t8, 0x0024($sp)
	lw      $t9, 0x001C($sp)
	nop
	sw      $t8, 0x0034($t9)
	lw      $v0, 0x001C($sp)
	b       .L8017C930
	nop
	b       .L8017C930
	nop
.L8017C930:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl face_object_8017C940
face_object_8017C940:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	la.u    $a0, str_face_object_801B5A20
	jal     face_stdio_8018C44C
	la.l    $a0, str_face_object_801B5A20
	jal     gd_malloc
	li      $a0, 0x000C
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x001C($sp)
	nop
	bnez    $t6, .L8017C984
	nop
	la.u    $a0, str_face_object_801B5A28
	jal     face_stdio_8018D1F8
	la.l    $a0, str_face_object_801B5A28
.L8017C984:
	la.u    $a0, str_face_object_801B5A44
	jal     face_stdio_8018C598
	la.l    $a0, str_face_object_801B5A44
	lw      $t7, 0x0020($sp)
	nop
	beqz    $t7, .L8017C9B0
	nop
	lw      $t8, 0x001C($sp)
	lw      $t9, 0x0020($sp)
	nop
	sw      $t8, 0x0004($t9)
.L8017C9B0:
	lw      $t0, 0x0020($sp)
	lw      $t1, 0x001C($sp)
	nop
	sw      $t0, 0x0000($t1)
	lw      $t2, 0x001C($sp)
	nop
	sw      $0, 0x0004($t2)
	lw      $t3, 0x0024($sp)
	lw      $t4, 0x001C($sp)
	nop
	sw      $t3, 0x0008($t4)
	lw      $v0, 0x001C($sp)
	b       .L8017C9F0
	nop
	b       .L8017C9F0
	nop
.L8017C9F0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl face_object_8017CA00
face_object_8017CA00:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	jal     gd_malloc
	li      $a0, 0x000C
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x001C($sp)
	nop
	bnez    $t6, .L8017CA38
	nop
	la.u    $a0, str_face_object_801B5A4C
	jal     face_stdio_8018D1F8
	la.l    $a0, str_face_object_801B5A4C
.L8017CA38:
	lw      $t7, 0x0020($sp)
	nop
	beqz    $t7, .L8017CA58
	nop
	lw      $t8, 0x001C($sp)
	lw      $t9, 0x0020($sp)
	nop
	sw      $t8, 0x0004($t9)
.L8017CA58:
	lw      $t0, 0x0020($sp)
	lw      $t1, 0x001C($sp)
	nop
	sw      $t0, 0x0000($t1)
	lw      $t2, 0x001C($sp)
	nop
	sw      $0, 0x0004($t2)
	lw      $t3, 0x0024($sp)
	lw      $t4, 0x001C($sp)
	nop
	sw      $t3, 0x0008($t4)
	lw      $t5, 0x001C($sp)
	li      $at, 0x3F800000
	bne     $t5, $at, .L8017CAA0
	nop
	la.u    $a0, str_face_object_801B5A68
	jal     face_stdio_8018D298
	la.l    $a0, str_face_object_801B5A68
.L8017CAA0:
	lw      $v0, 0x001C($sp)
	b       .L8017CAB4
	nop
	b       .L8017CAB4
	nop
.L8017CAB4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl face_object_8017CAC4
face_object_8017CAC4:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	sw      $a3, 0x002C($sp)
	jal     make_object
	li      $a0, 0x00020000
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x0020($sp)
	lw      $t7, 0x001C($sp)
	nop
	sw      $t6, 0x0014($t7)
	lw      $t8, 0x0024($sp)
	lw      $t9, 0x001C($sp)
	nop
	sw      $t8, 0x0020($t9)
	lw      $t0, 0x002C($sp)
	lw      $t1, 0x001C($sp)
	nop
	sw      $t0, 0x0018($t1)
	lw      $t2, 0x0028($sp)
	lw      $t3, 0x001C($sp)
	nop
	sw      $t2, 0x001C($t3)
	lw      $v0, 0x001C($sp)
	b       .L8017CB3C
	nop
	b       .L8017CB3C
	nop
.L8017CB3C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl reset_plane
reset_plane:
	addiu   $sp, $sp, -0x0050
	sw      $ra, 0x0024($sp)
	sw      $a0, 0x0050($sp)
	sw      $s0, 0x0020($sp)
	swc1    $f21, 0x0018($sp)
	swc1    $f20, 0x001C($sp)
	la.u    $a0, str_face_object_801B5A70
	jal     face_stdio_8018D560
	la.l    $a0, str_face_object_801B5A70
	lw      $t6, 0x0050($sp)
	nop
	lw      $t7, 0x0040($t6)
	nop
	sw      $t7, 0x004C($sp)
	lw      $a0, 0x004C($sp)
	jal     calc_facenormal
	nop
	lw      $t8, 0x004C($sp)
	nop
	lw      $a0, 0x0034($t8)
	addiu   $a1, $t8, 0x0024
	jal     face_math_80194EF8
	addiu   $a0, $a0, 0x0020
	lw      $t9, 0x0050($sp)
	nop
	swc1    $f0, 0x001C($t9)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x0048($sp)
	lw      $t0, 0x004C($sp)
	mtc1    $0, $f8
	lwc1    $f6, 0x0024($t0)
	nop
	c.lt.s  $f6, $f8
	nop
	bc1f    .L8017CBE8
	nop
	b       .L8017CBF8
	neg.s   $f20, $f6
.L8017CBE8:
	lw      $t1, 0x004C($sp)
	nop
	lwc1    $f20, 0x0024($t1)
	nop
.L8017CBF8:
	swc1    $f20, 0x0044($sp)
	lwc1    $f10, 0x0044($sp)
	lwc1    $f16, 0x0048($sp)
	nop
	c.lt.s  $f16, $f10
	nop
	bc1f    .L8017CC28
	nop
	sw      $0, 0x0030($sp)
	lwc1    $f18, 0x0044($sp)
	nop
	swc1    $f18, 0x0048($sp)
.L8017CC28:
	lw      $t2, 0x004C($sp)
	mtc1    $0, $f8
	lwc1    $f4, 0x0028($t2)
	nop
	c.lt.s  $f4, $f8
	nop
	bc1f    .L8017CC50
	nop
	b       .L8017CC60
	neg.s   $f20, $f4
.L8017CC50:
	lw      $t3, 0x004C($sp)
	nop
	lwc1    $f20, 0x0028($t3)
	nop
.L8017CC60:
	swc1    $f20, 0x0044($sp)
	lwc1    $f6, 0x0044($sp)
	lwc1    $f10, 0x0048($sp)
	nop
	c.lt.s  $f10, $f6
	nop
	bc1f    .L8017CC94
	nop
	li      $t4, 0x0001
	sw      $t4, 0x0030($sp)
	lwc1    $f16, 0x0044($sp)
	nop
	swc1    $f16, 0x0048($sp)
.L8017CC94:
	lw      $t5, 0x004C($sp)
	mtc1    $0, $f8
	lwc1    $f18, 0x002C($t5)
	nop
	c.lt.s  $f18, $f8
	nop
	bc1f    .L8017CCBC
	nop
	b       .L8017CCCC
	neg.s   $f20, $f18
.L8017CCBC:
	lw      $t6, 0x004C($sp)
	nop
	lwc1    $f20, 0x002C($t6)
	nop
.L8017CCCC:
	swc1    $f20, 0x0044($sp)
	lwc1    $f4, 0x0044($sp)
	lwc1    $f6, 0x0048($sp)
	nop
	c.lt.s  $f6, $f4
	nop
	bc1f    .L8017CCF4
	nop
	li      $t7, 0x0002
	sw      $t7, 0x0030($sp)
.L8017CCF4:
	lw      $s0, 0x0030($sp)
	nop
	beqz    $s0, .L8017CD24
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L8017CD44
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L8017CD64
	nop
	b       .L8017CD84
	nop
.L8017CD24:
	lw      $t9, 0x0050($sp)
	li      $t8, 0x0001
	sw      $t8, 0x0020($t9)
	lw      $t1, 0x0050($sp)
	li      $t0, 0x0002
	sw      $t0, 0x0024($t1)
	b       .L8017CD84
	nop
.L8017CD44:
	lw      $t2, 0x0050($sp)
	nop
	sw      $0, 0x0020($t2)
	lw      $t4, 0x0050($sp)
	li      $t3, 0x0002
	sw      $t3, 0x0024($t4)
	b       .L8017CD84
	nop
.L8017CD64:
	lw      $t5, 0x0050($sp)
	nop
	sw      $0, 0x0020($t5)
	lw      $t7, 0x0050($sp)
	li      $t6, 0x0001
	sw      $t6, 0x0024($t7)
	b       .L8017CD84
	nop
.L8017CD84:
	jal     face_object_8017BDF0
	nop
	lw      $t8, 0x004C($sp)
	sw      $0, 0x0034($sp)
	lw      $t9, 0x0030($t8)
	nop
	blez    $t9, .L8017CDE4
	nop
.L8017CDA4:
	lw      $t1, 0x0034($sp)
	lw      $t0, 0x004C($sp)
	sll     $t2, $t1, 2
	addu    $t3, $t0, $t2
	lw      $a0, 0x0034($t3)
	jal     face_object_8017BE60
	nop
	lw      $t4, 0x0034($sp)
	lw      $t6, 0x004C($sp)
	addiu   $t5, $t4, 0x0001
	sw      $t5, 0x0034($sp)
	lw      $t7, 0x0030($t6)
	nop
	slt     $at, $t5, $t7
	bnez    $at, .L8017CDA4
	nop
.L8017CDE4:
	lui     $at, %hi(_face_bss+0x480)
	lwc1    $f10, %lo(_face_bss+0x480)($at)
	lw      $t8, 0x0050($sp)
	nop
	swc1    $f10, 0x0028($t8)
	lui     $at, %hi(_face_bss+0x484)
	lwc1    $f16, %lo(_face_bss+0x484)($at)
	lw      $t9, 0x0050($sp)
	nop
	swc1    $f16, 0x002C($t9)
	lui     $at, %hi(_face_bss+0x488)
	lwc1    $f8, %lo(_face_bss+0x488)($at)
	lw      $t1, 0x0050($sp)
	nop
	swc1    $f8, 0x0030($t1)
	lui     $at, %hi(_face_bss+0x48C)
	lwc1    $f18, %lo(_face_bss+0x48C)($at)
	lw      $t0, 0x0050($sp)
	nop
	swc1    $f18, 0x0034($t0)
	lui     $at, %hi(_face_bss+0x490)
	lwc1    $f4, %lo(_face_bss+0x490)($at)
	lw      $t2, 0x0050($sp)
	nop
	swc1    $f4, 0x0038($t2)
	lui     $at, %hi(_face_bss+0x494)
	lwc1    $f6, %lo(_face_bss+0x494)($at)
	lw      $t3, 0x0050($sp)
	nop
	swc1    $f6, 0x003C($t3)
	lw      $t4, 0x0050($sp)
	li      $at, 0x42C80000
	lwc1    $f10, 0x0034($t4)
	lwc1    $f16, 0x0028($t4)
	mtc1    $at, $f18
	sub.s   $f8, $f10, $f16
	c.lt.s  $f8, $f18
	nop
	bc1f    .L8017CEBC
	nop
	lw      $t6, 0x0050($sp)
	li      $at, 0x42480000
	mtc1    $at, $f6
	lwc1    $f4, 0x0034($t6)
	nop
	add.s   $f10, $f4, $f6
	swc1    $f10, 0x0034($t6)
	lw      $t5, 0x0050($sp)
	li      $at, 0x42480000
	mtc1    $at, $f8
	lwc1    $f16, 0x0028($t5)
	nop
	sub.s   $f18, $f16, $f8
	swc1    $f18, 0x0028($t5)
.L8017CEBC:
	lw      $t7, 0x0050($sp)
	li      $at, 0x43480000
	mtc1    $at, $f6
	lwc1    $f4, 0x0038($t7)
	nop
	add.s   $f10, $f4, $f6
	swc1    $f10, 0x0038($t7)
	lw      $t8, 0x0050($sp)
	li      $at, 0x43480000
	mtc1    $at, $f8
	lwc1    $f16, 0x002C($t8)
	nop
	sub.s   $f18, $f16, $f8
	swc1    $f18, 0x002C($t8)
	lw      $t9, 0x0050($sp)
	li      $at, 0x42C80000
	lwc1    $f4, 0x003C($t9)
	lwc1    $f6, 0x0030($t9)
	mtc1    $at, $f16
	sub.s   $f10, $f4, $f6
	c.lt.s  $f10, $f16
	nop
	bc1f    .L8017CF54
	nop
	lw      $t1, 0x0050($sp)
	li      $at, 0x42480000
	mtc1    $at, $f18
	lwc1    $f8, 0x003C($t1)
	nop
	add.s   $f4, $f8, $f18
	swc1    $f4, 0x003C($t1)
	lw      $t0, 0x0050($sp)
	li      $at, 0x42480000
	mtc1    $at, $f10
	lwc1    $f6, 0x0030($t0)
	nop
	sub.s   $f16, $f6, $f10
	swc1    $f16, 0x0030($t0)
.L8017CF54:
	jal     imout
	nop
	b       .L8017CF64
	nop
.L8017CF64:
	lw      $ra, 0x0024($sp)
	lwc1    $f21, 0x0018($sp)
	lwc1    $f20, 0x001C($sp)
	lw      $s0, 0x0020($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0050

.globl face_object_8017CF7C
face_object_8017CF7C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	jal     make_object
	li      $a0, 0x0040
	sw      $v0, 0x0018($sp)
	lui     $t6, %hi(_face_bss+0x540)
	lw      $t6, %lo(_face_bss+0x540)($t6)
	lui     $at, %hi(_face_bss+0x540)
	addiu   $t7, $t6, 0x0001
	sw      $t7, %lo(_face_bss+0x540)($at)
	lui     $t8, %hi(_face_bss+0x540)
	lw      $t8, %lo(_face_bss+0x540)($t8)
	lw      $t9, 0x0018($sp)
	nop
	sw      $t8, 0x0014($t9)
	lw      $t0, 0x0020($sp)
	lw      $t1, 0x0018($sp)
	nop
	sw      $t0, 0x0018($t1)
	lw      $t2, 0x0024($sp)
	lw      $t3, 0x0018($sp)
	nop
	sw      $t2, 0x0040($t3)
	lw      $a0, 0x0018($sp)
	jal     reset_plane
	nop
	lw      $v0, 0x0018($sp)
	b       .L8017D000
	nop
	b       .L8017D000
	nop
.L8017D000:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl face_object_8017D010
face_object_8017D010:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	swc1    $f21, 0x0010($sp)
	swc1    $f20, 0x0014($sp)
	jal     make_object
	li      $a0, 0x0200
	sw      $v0, 0x002C($sp)
	lui     $t6, %hi(_face_bss+0x544)
	lw      $t6, %lo(_face_bss+0x544)($t6)
	lui     $at, %hi(_face_bss+0x544)
	addiu   $t7, $t6, 0x0001
	sw      $t7, %lo(_face_bss+0x544)($at)
	lui     $t8, %hi(_face_bss+0x544)
	lw      $t8, %lo(_face_bss+0x544)($t8)
	lw      $t9, 0x002C($sp)
	nop
	sw      $t8, 0x0028($t9)
	lui     $t0, %hi(_face_bss+0x52C)
	lw      $t0, %lo(_face_bss+0x52C)($t0)
	nop
	sw      $t0, 0x0028($sp)
	lw      $t1, 0x002C($sp)
	lui     $at, %hi(_face_bss+0x52C)
	sw      $t1, %lo(_face_bss+0x52C)($at)
	lw      $t2, 0x0028($sp)
	nop
	beqz    $t2, .L8017D0A8
	nop
	lw      $t3, 0x0028($sp)
	lw      $t4, 0x002C($sp)
	nop
	sw      $t3, 0x0024($t4)
	lw      $t5, 0x002C($sp)
	lw      $t6, 0x0028($sp)
	nop
	sw      $t5, 0x0020($t6)
.L8017D0A8:
	lw      $t7, 0x0030($sp)
	lw      $t9, 0x002C($sp)
	ori     $t8, $t7, 0x0010
	sw      $t8, 0x002C($t9)
	lw      $t0, 0x0034($sp)
	lw      $t1, 0x002C($sp)
	nop
	sw      $t0, 0x0030($t1)
	lw      $a0, 0x002C($sp)
	jal     face_math_801963C0
	addiu   $a0, $a0, 0x0064
	lw      $a0, 0x002C($sp)
	jal     face_math_801963C0
	addiu   $a0, $a0, 0x00A8
	li      $at, 0x3F800000
	mtc1    $at, $f4
	lw      $t2, 0x002C($sp)
	nop
	swc1    $f4, 0x0180($t2)
	lui     $at, %hi(face_object_801B5DD4)
	lwc1    $f6, %lo(face_object_801B5DD4)($at)
	lw      $t3, 0x002C($sp)
	nop
	swc1    $f6, 0x0184($t3)
	li      $at, 0x3F800000
	mtc1    $at, $f8
	lw      $t4, 0x002C($sp)
	nop
	swc1    $f8, 0x0188($t4)
	li      $at, 0x40800000
	mtc1    $at, $f10
	lw      $t5, 0x002C($sp)
	nop
	swc1    $f10, 0x0134($t5)
	li      $at, 0x40800000
	mtc1    $at, $f16
	lw      $t6, 0x002C($sp)
	nop
	swc1    $f16, 0x0138($t6)
	li      $at, 0x40800000
	mtc1    $at, $f18
	lw      $t7, 0x002C($sp)
	nop
	swc1    $f18, 0x013C($t7)
	mtc1    $0, $f4
	lw      $t8, 0x002C($sp)
	nop
	swc1    $f4, 0x0178($t8)
	li      $at, 0x3E800000
	mtc1    $at, $f6
	lw      $t9, 0x002C($sp)
	nop
	swc1    $f6, 0x017C($t9)
	lw      $t0, 0x002C($sp)
	nop
	sw      $0, 0x0174($t0)
	lw      $t2, 0x002C($sp)
	li      $t1, -0x0001
	sw      $t1, 0x0170($t2)
	mtc1    $0, $f8
	lw      $t3, 0x002C($sp)
	nop
	swc1    $f8, 0x00A4($t3)
	mtc1    $0, $f10
	lw      $t4, 0x002C($sp)
	nop
	swc1    $f10, 0x003C($t4)
	lw      $t5, 0x002C($sp)
	nop
	lwc1    $f20, 0x003C($t5)
	nop
	swc1    $f20, 0x0038($t5)
	lw      $t6, 0x002C($sp)
	nop
	swc1    $f20, 0x0034($t6)
	mtc1    $0, $f16
	lw      $t7, 0x002C($sp)
	nop
	swc1    $f16, 0x001C($t7)
	lw      $t8, 0x002C($sp)
	nop
	lwc1    $f20, 0x001C($t8)
	nop
	swc1    $f20, 0x0018($t8)
	lw      $t9, 0x002C($sp)
	nop
	swc1    $f20, 0x0014($t9)
	lw      $v0, 0x002C($sp)
	b       .L8017D218
	nop
	b       .L8017D218
	nop
.L8017D218:
	lw      $ra, 0x001C($sp)
	lwc1    $f21, 0x0010($sp)
	lwc1    $f20, 0x0014($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0030

.globl face_object_8017D22C
face_object_8017D22C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	jal     make_object
	li      $a0, 0x0800
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x0024($sp)
	nop
	beqz    $t6, .L8017D274
	nop
	lw      $a0, 0x001C($sp)
	lw      $a1, 0x0024($sp)
	jal     face_stdio_8018DDD8
	addiu   $a0, $a0, 0x0020
	b       .L8017D288
	nop
.L8017D274:
	lw      $a0, 0x001C($sp)
	la.u    $a1, str_face_object_801B5A7C
	la.l    $a1, str_face_object_801B5A7C
	jal     face_stdio_8018DDD8
	addiu   $a0, $a0, 0x0020
.L8017D288:
	lw      $t7, 0x0028($sp)
	lw      $t8, 0x001C($sp)
	nop
	sw      $t7, 0x001C($t8)
	lw      $t9, 0x001C($sp)
	nop
	sw      $0, 0x005C($t9)
	lw      $t1, 0x001C($sp)
	li      $t0, 0x0010
	sw      $t0, 0x0028($t1)
	lw      $v0, 0x001C($sp)
	b       .L8017D2C4
	nop
	b       .L8017D2C4
	nop
.L8017D2C4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl face_object_8017D2D4
face_object_8017D2D4:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	swc1    $f21, 0x0010($sp)
	swc1    $f20, 0x0014($sp)
	jal     make_object
	li      $a0, 0x00080000
	sw      $v0, 0x0024($sp)
	lw      $t6, 0x002C($sp)
	nop
	beqz    $t6, .L8017D324
	nop
	lw      $a0, 0x0024($sp)
	lw      $a1, 0x002C($sp)
	jal     face_stdio_8018DDD8
	addiu   $a0, $a0, 0x0020
	b       .L8017D338
	nop
.L8017D324:
	lw      $a0, 0x0024($sp)
	la.u    $a1, str_face_object_801B5A84
	la.l    $a1, str_face_object_801B5A84
	jal     face_stdio_8018DDD8
	addiu   $a0, $a0, 0x0020
.L8017D338:
	lw      $t7, 0x0030($sp)
	lw      $t8, 0x0024($sp)
	nop
	sw      $t7, 0x001C($t8)
	li      $at, 0x3F800000
	mtc1    $at, $f4
	lw      $t9, 0x0024($sp)
	nop
	swc1    $f4, 0x0030($t9)
	lw      $t0, 0x0024($sp)
	nop
	sw      $0, 0x004C($t0)
	lw      $t1, 0x0028($sp)
	lw      $t3, 0x0024($sp)
	ori     $t2, $t1, 0x0010
	sw      $t2, 0x002C($t3)
	lw      $t4, 0x0024($sp)
	nop
	sw      $0, 0x0098($t4)
	lw      $t5, 0x0024($sp)
	nop
	sw      $0, 0x0040($t5)
	mtc1    $0, $f6
	lw      $t6, 0x0024($sp)
	nop
	swc1    $f6, 0x0070($t6)
	lw      $t7, 0x0024($sp)
	nop
	lwc1    $f20, 0x0070($t7)
	nop
	swc1    $f20, 0x006C($t7)
	lw      $t8, 0x0024($sp)
	nop
	swc1    $f20, 0x0068($t8)
	lw      $v0, 0x0024($sp)
	b       .L8017D3D4
	nop
	b       .L8017D3D4
	nop
.L8017D3D4:
	lw      $ra, 0x001C($sp)
	lwc1    $f21, 0x0010($sp)
	lwc1    $f20, 0x0014($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

.globl face_object_8017D3E8
face_object_8017D3E8:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	sw      $a3, 0x0034($sp)
	jal     make_object
	li      $a0, 0x4000
	sw      $v0, 0x0024($sp)
	lui     $t6, %hi(_face_bss+0x570)
	lw      $t6, %lo(_face_bss+0x570)($t6)
	nop
	bnez    $t6, .L8017D430
	nop
	jal     make_group
	move    $a0, $0
	lui     $at, %hi(_face_bss+0x570)
	sw      $v0, %lo(_face_bss+0x570)($at)
.L8017D430:
	lui     $a0, %hi(_face_bss+0x570)
	lw      $a0, %lo(_face_bss+0x570)($a0)
	lw      $a1, 0x0024($sp)
	jal     addto_group
	nop
	lw      $t7, 0x002C($sp)
	lw      $t0, 0x0024($sp)
	li      $at, 0x00200000
	ori     $t8, $t7, 0x0800
	or      $t9, $t8, $at
	sw      $t9, 0x0034($t0)
	lui     $t1, %hi(_face_bss+0x548)
	lw      $t1, %lo(_face_bss+0x548)($t1)
	lw      $t2, 0x0024($sp)
	lui     $t3, %hi(_face_bss+0x548)
	sw      $t1, 0x0020($t2)
	lw      $t3, %lo(_face_bss+0x548)($t3)
	lui     $at, %hi(_face_bss+0x548)
	addiu   $t4, $t3, 0x0001
	sw      $t4, %lo(_face_bss+0x548)($at)
	lw      $t5, 0x0044($sp)
	lw      $t6, 0x0024($sp)
	nop
	sw      $t5, 0x0028($t6)
	lw      $t7, 0x0024($sp)
	nop
	lw      $t8, 0x0028($t7)
	nop
	beqz    $t8, .L8017D4B4
	nop
	lw      $a0, 0x0044($sp)
	jal     face_object_80181634
	nop
.L8017D4B4:
	lw      $t9, 0x0024($sp)
	nop
	sw      $0, 0x0078($t9)
	lw      $t0, 0x0030($sp)
	lw      $t1, 0x0024($sp)
	nop
	sw      $t0, 0x0038($t1)
	li      $at, 0x41F00000
	mtc1    $at, $f4
	lw      $t2, 0x0024($sp)
	nop
	swc1    $f4, 0x0060($t2)
	lui     $at, %hi(face_object_801B5DD8)
	lwc1    $f6, %lo(face_object_801B5DD8)($at)
	lw      $t3, 0x0024($sp)
	nop
	swc1    $f6, 0x0064($t3)
	li      $at, 0x42340000
	mtc1    $at, $f8
	lw      $t4, 0x0024($sp)
	nop
	swc1    $f8, 0x0068($t4)
	lw      $t5, 0x0034($sp)
	lw      $t6, 0x0024($sp)
	mtc1    $t5, $f10
	nop
	cvt.s.w $f16, $f10
	swc1    $f16, 0x003C($t6)
	lw      $t7, 0x0038($sp)
	lw      $t8, 0x0024($sp)
	mtc1    $t7, $f18
	nop
	cvt.s.w $f4, $f18
	swc1    $f4, 0x0040($t8)
	lw      $t9, 0x003C($sp)
	lw      $t0, 0x0024($sp)
	mtc1    $t9, $f6
	nop
	cvt.s.w $f8, $f6
	swc1    $f8, 0x0054($t0)
	lw      $t1, 0x0040($sp)
	lw      $t2, 0x0024($sp)
	mtc1    $t1, $f10
	nop
	cvt.s.w $f16, $f10
	swc1    $f16, 0x0058($t2)
	li      $at, 0x3F800000
	mtc1    $at, $f18
	lw      $t3, 0x0024($sp)
	nop
	swc1    $f18, 0x0048($t3)
	li      $at, 0x3F800000
	mtc1    $at, $f4
	lw      $t4, 0x0024($sp)
	nop
	swc1    $f4, 0x004C($t4)
	lw      $t5, 0x0024($sp)
	lui     $at, %hi(face_object_801B5DE0+4)
	lw      $t6, 0x0020($t5)
	lwc1    $f11, %lo(face_object_801B5DE0+0)($at)
	mtc1    $t6, $f6
	lwc1    $f10, %lo(face_object_801B5DE0+4)($at)
	cvt.d.w $f8, $f6
	mul.d   $f16, $f8, $f10
	cvt.s.d $f18, $f16
	swc1    $f18, 0x007C($t5)
	lui     $at, %hi(face_object_801B5DE8)
	lwc1    $f4, %lo(face_object_801B5DE8)($at)
	lw      $t7, 0x0024($sp)
	nop
	swc1    $f4, 0x0080($t7)
	li      $at, 0x3F800000
	mtc1    $at, $f6
	lw      $t8, 0x0024($sp)
	nop
	swc1    $f6, 0x0084($t8)
	lw      $t9, 0x0024($sp)
	nop
	sw      $0, 0x0098($t9)
	lw      $t0, 0x0024($sp)
	nop
	sw      $0, 0x009C($t0)
	lw      $t1, 0x0028($sp)
	nop
	beqz    $t1, .L8017D63C
	nop
	lw      $t2, 0x003C($sp)
	lw      $t3, 0x0040($sp)
	lw      $a0, 0x0028($sp)
	lw      $a1, 0x0024($sp)
	lw      $a2, 0x0034($sp)
	lw      $a3, 0x0038($sp)
	sw      $t2, 0x0010($sp)
	jal     face_gfx_801A3F9C
	sw      $t3, 0x0014($sp)
	lw      $t4, 0x0024($sp)
	nop
	sw      $v0, 0x001C($t4)
.L8017D63C:
	lw      $t6, 0x0028($sp)
	lw      $t5, 0x0024($sp)
	nop
	sw      $t6, 0x006C($t5)
	lw      $t7, 0x0024($sp)
	nop
	sw      $0, 0x002C($t7)
	lw      $v0, 0x0024($sp)
	b       .L8017D66C
	nop
	b       .L8017D66C
	nop
.L8017D66C:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl face_object_8017D67C
face_object_8017D67C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	jal     make_object
	li      $a0, 0x00010000
	sw      $v0, 0x001C($sp)
	li      $at, 0x3F800000
	mtc1    $at, $f4
	lw      $t6, 0x001C($sp)
	nop
	swc1    $f4, 0x0024($t6)
	li      $at, 0x3F800000
	mtc1    $at, $f6
	lw      $t7, 0x001C($sp)
	nop
	swc1    $f6, 0x0028($t7)
	lw      $t8, 0x001C($sp)
	nop
	sw      $0, 0x0048($t8)
	lw      $t9, 0x001C($sp)
	nop
	sw      $0, 0x004C($t9)
	lw      $v0, 0x001C($sp)
	b       .L8017D6E4
	nop
	b       .L8017D6E4
	nop
.L8017D6E4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl face_object_8017D6F4
face_object_8017D6F4:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	sw      $a3, 0x002C($sp)
	jal     make_object
	li      $a0, 0x1000
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x0024($sp)
	lw      $t7, 0x001C($sp)
	nop
	sw      $t6, 0x001C($t7)
	lwc1    $f4, 0x002C($sp)
	lw      $t8, 0x001C($sp)
	nop
	swc1    $f4, 0x0038($t8)
	lw      $t9, 0x0028($sp)
	lw      $t0, 0x001C($sp)
	nop
	sw      $t9, 0x003C($t0)
	lw      $v0, 0x001C($sp)
	b       .L8017D75C
	nop
	b       .L8017D75C
	nop
.L8017D75C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl face_object_8017D76C
face_object_8017D76C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	jal     make_group
	move    $a0, $0
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x0024($sp)
	nop
	sw      $t6, 0x0018($sp)
	lw      $t7, 0x0018($sp)
	nop
	beqz    $t7, .L8017D814
	nop
.L8017D7A8:
	lw      $t8, 0x0018($sp)
	lw      $t0, 0x0020($sp)
	lw      $t9, 0x000C($t8)
	nop
	and     $t1, $t9, $t0
	beqz    $t1, .L8017D7D4
	nop
	lw      $a0, 0x001C($sp)
	lw      $a1, 0x0018($sp)
	jal     addto_group
	nop
.L8017D7D4:
	lw      $t2, 0x0018($sp)
	lw      $t3, 0x0028($sp)
	nop
	bne     $t2, $t3, .L8017D7F0
	nop
	b       .L8017D814
	nop
.L8017D7F0:
	lw      $t4, 0x0018($sp)
	nop
	lw      $t5, 0x0000($t4)
	nop
	sw      $t5, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	nop
	bnez    $t6, .L8017D7A8
	nop
.L8017D814:
	lw      $v0, 0x001C($sp)
	b       .L8017D828
	nop
	b       .L8017D828
	nop
.L8017D828:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl face_object_8017D838
face_object_8017D838:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x002C($sp)
	nop
	lw      $t7, 0x000C($t6)
	nop
	sw      $t7, 0x0024($sp)
	lw      $s0, 0x0024($sp)
	nop
	slti    $at, $s0, 0x0041
	bnez    $at, .L8017D894
	nop
	li      $at, 0x0100
	beq     $s0, $at, .L8017D998
	nop
	li      $at, 0x0200
	beq     $s0, $at, .L8017D978
	nop
	b       L8017D9D0
	nop
.L8017D894:
	slti    $at, $s0, 0x0021
	bnez    $at, .L8017D8B4
	nop
	li      $at, 0x0040
	beq     $s0, $at, .L8017D9B0
	nop
	b       L8017D9D0
	nop
.L8017D8B4:
	addiu   $t8, $s0, -0x0001
	sltiu   $at, $t8, 0x0020
	beqz    $at, L8017D9D0
	nop
	sll     $t8, $t8, 2
	lui     $at, %hi(face_object_801B5DEC)
	addu    $at, $at, $t8
	lw      $t8, %lo(face_object_801B5DEC)($at)
	nop
	jr      $t8
	nop
.globl L8017D8E0
L8017D8E0:
	lw      $t9, 0x002C($sp)
	lw      $a0, 0x0028($sp)
	la.u    $a1, str_face_object_801B5A8C
	lw      $a2, 0x0108($t9)
	jal     sprintf
	la.l    $a1, str_face_object_801B5A8C
	b       .L8017D9EC
	nop
.globl L8017D900
L8017D900:
	lw      $t0, 0x002C($sp)
	lw      $a0, 0x0028($sp)
	la.u    $a1, str_face_object_801B5A94
	lw      $a2, 0x01B4($t0)
	jal     sprintf
	la.l    $a1, str_face_object_801B5A94
	b       .L8017D9EC
	nop
.globl L8017D920
L8017D920:
	lw      $t1, 0x002C($sp)
	lw      $a0, 0x0028($sp)
	la.u    $a1, str_face_object_801B5A9C
	lw      $a2, 0x0074($t1)
	jal     sprintf
	la.l    $a1, str_face_object_801B5A9C
	b       .L8017D9EC
	nop
.globl L8017D940
L8017D940:
	lw      $t2, 0x002C($sp)
	lw      $a0, 0x0028($sp)
	la.u    $a1, str_face_object_801B5AA4
	lw      $a2, 0x0050($t2)
	jal     sprintf
	la.l    $a1, str_face_object_801B5AA4
	b       .L8017D9EC
	nop
.globl L8017D960
L8017D960:
	lw      $a0, 0x0028($sp)
	la.u    $a1, str_face_object_801B5AAC
	jal     sprintf
	la.l    $a1, str_face_object_801B5AAC
	b       .L8017D9EC
	nop
.L8017D978:
	lw      $t3, 0x002C($sp)
	lw      $a0, 0x0028($sp)
	la.u    $a1, str_face_object_801B5AB8
	lw      $a2, 0x0028($t3)
	jal     sprintf
	la.l    $a1, str_face_object_801B5AB8
	b       .L8017D9EC
	nop
.L8017D998:
	lw      $a0, 0x0028($sp)
	la.u    $a1, str_face_object_801B5AC0
	jal     sprintf
	la.l    $a1, str_face_object_801B5AC0
	b       .L8017D9EC
	nop
.L8017D9B0:
	lw      $t4, 0x002C($sp)
	lw      $a0, 0x0028($sp)
	la.u    $a1, str_face_object_801B5ACC
	lw      $a2, 0x0014($t4)
	jal     sprintf
	la.l    $a1, str_face_object_801B5ACC
	b       .L8017D9EC
	nop
.globl L8017D9D0
L8017D9D0:
	lw      $a0, 0x0028($sp)
	la.u    $a1, str_face_object_801B5AD4
	lw      $a2, 0x0024($sp)
	jal     sprintf
	la.l    $a1, str_face_object_801B5AD4
	b       .L8017D9EC
	nop
.L8017D9EC:
	b       .L8017D9F4
	nop
.L8017D9F4:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

.globl make_group
make_group:
	addiu   $sp, $sp, -0x0068
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0068($sp)
	sw      $a1, 0x006C($sp)
	sw      $a2, 0x0070($sp)
	sw      $a3, 0x0074($sp)
	jal     make_object
	li      $a0, 0x0001
	sw      $v0, 0x0048($sp)
	lui     $t6, %hi(_face_bss+0x53C)
	lw      $t6, %lo(_face_bss+0x53C)($t6)
	lw      $t8, 0x0048($sp)
	lui     $at, %hi(_face_bss+0x53C)
	addiu   $t7, $t6, 0x0001
	sw      $t7, %lo(_face_bss+0x53C)($at)
	sw      $t7, 0x0074($t8)
	lw      $t9, 0x0048($sp)
	nop
	sw      $0, 0x0028($t9)
	lw      $t0, 0x0048($sp)
	nop
	sw      $0, 0x0020($t0)
	lw      $t1, 0x0048($sp)
	nop
	lw      $t2, 0x0020($t1)
	nop
	sw      $t2, 0x001C($t1)
	lui     $t3, %hi(_face_bss+0x534)
	lw      $t3, %lo(_face_bss+0x534)($t3)
	nop
	sw      $t3, 0x0044($sp)
	lw      $t4, 0x0048($sp)
	lui     $at, %hi(_face_bss+0x534)
	sw      $t4, %lo(_face_bss+0x534)($at)
	lw      $t5, 0x0044($sp)
	nop
	beqz    $t5, .L8017DABC
	nop
	lw      $t6, 0x0044($sp)
	lw      $t7, 0x0048($sp)
	nop
	sw      $t6, 0x0018($t7)
	lw      $t8, 0x0048($sp)
	lw      $t9, 0x0044($sp)
	nop
	sw      $t8, 0x0014($t9)
.L8017DABC:
	lw      $t0, 0x0068($sp)
	nop
	bnez    $t0, .L8017DAD8
	nop
	lw      $v0, 0x0048($sp)
	b       .L8017DC04
	nop
.L8017DAD8:
	addiu   $t2, $sp, 0x0068
	addiu   $t1, $t2, 0x0004
	sw      $t1, 0x0064($sp)
	sw      $0, 0x001C($sp)
	lw      $t3, 0x0068($sp)
	sw      $0, 0x0060($sp)
	blez    $t3, .L8017DB88
	nop
.L8017DAF8:
	lw      $t4, 0x0064($sp)
	li      $at, -0x0004
	addiu   $t5, $t4, 0x0003
	and     $t6, $t5, $at
	addiu   $t7, $t6, 0x0004
	sw      $t7, 0x0064($sp)
	lw      $t8, 0x0000($t6)
	nop
	sw      $t8, 0x0040($sp)
	lw      $t9, 0x0040($sp)
	nop
	bnez    $t9, .L8017DB38
	nop
	la.u    $a0, str_face_object_801B5AF0
	jal     face_stdio_8018D298
	la.l    $a0, str_face_object_801B5AF0
.L8017DB38:
	lw      $t0, 0x0040($sp)
	nop
	sw      $t0, 0x0058($sp)
	lw      $t2, 0x0048($sp)
	lw      $t3, 0x0058($sp)
	lw      $t1, 0x0024($t2)
	lw      $t4, 0x000C($t3)
	nop
	or      $t5, $t1, $t4
	sw      $t5, 0x0024($t2)
	lw      $a0, 0x0048($sp)
	lw      $a1, 0x0040($sp)
	jal     addto_group
	nop
	lw      $t7, 0x0060($sp)
	lw      $t8, 0x0068($sp)
	addiu   $t6, $t7, 0x0001
	slt     $at, $t6, $t8
	bnez    $at, .L8017DAF8
	sw      $t6, 0x0060($sp)
.L8017DB88:
	lw      $t9, 0x0048($sp)
	nop
	lw      $t0, 0x001C($t9)
	nop
	sw      $t0, 0x001C($sp)
	lw      $t3, 0x001C($sp)
	nop
	beqz    $t3, .L8017DBF0
	nop
.L8017DBAC:
	lw      $t1, 0x001C($sp)
	nop
	lw      $t4, 0x0008($t1)
	nop
	sw      $t4, 0x0058($sp)
	lw      $a1, 0x0058($sp)
	jal     face_object_8017D838
	addiu   $a0, $sp, 0x0020
	lw      $t5, 0x001C($sp)
	nop
	lw      $t2, 0x0004($t5)
	nop
	sw      $t2, 0x001C($sp)
	lw      $t7, 0x001C($sp)
	nop
	bnez    $t7, .L8017DBAC
	nop
.L8017DBF0:
	lw      $v0, 0x0048($sp)
	b       .L8017DC04
	nop
	b       .L8017DC04
	nop
.L8017DC04:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0068
	jr      $ra
	nop

.globl addto_group
addto_group:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0040($sp)
	sw      $a1, 0x0044($sp)
	la.u    $a0, str_face_object_801B5B2C
	jal     face_stdio_8018D560
	la.l    $a0, str_face_object_801B5B2C
	lw      $t6, 0x0040($sp)
	nop
	lw      $t7, 0x001C($t6)
	nop
	bnez    $t7, .L8017DC74
	nop
	lw      $a1, 0x0044($sp)
	jal     face_object_8017C940
	move    $a0, $0
	lw      $t8, 0x0040($sp)
	nop
	sw      $v0, 0x001C($t8)
	lw      $t9, 0x0040($sp)
	nop
	lw      $t0, 0x001C($t9)
	b       .L8017DC94
	sw      $t0, 0x0020($t9)
.L8017DC74:
	lw      $t1, 0x0040($sp)
	lw      $a1, 0x0044($sp)
	lw      $a0, 0x0020($t1)
	jal     face_object_8017C940
	nop
	lw      $t2, 0x0040($sp)
	nop
	sw      $v0, 0x0020($t2)
.L8017DC94:
	lw      $t3, 0x0040($sp)
	lw      $t5, 0x0044($sp)
	lw      $t4, 0x0024($t3)
	lw      $t6, 0x000C($t5)
	nop
	or      $t7, $t4, $t6
	sw      $t7, 0x0024($t3)
	lw      $t8, 0x0040($sp)
	nop
	lw      $t0, 0x0028($t8)
	nop
	addiu   $t9, $t0, 0x0001
	sw      $t9, 0x0028($t8)
	lw      $a1, 0x0044($sp)
	jal     face_object_8017D838
	addiu   $a0, $sp, 0x0020
	lw      $a1, 0x0040($sp)
	jal     face_object_8017D838
	addiu   $a0, $sp, 0x0020
	jal     imout
	nop
	b       .L8017DCF0
	nop
.L8017DCF0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

.globl addto_groupfirst
addto_groupfirst:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	la.u    $a0, str_face_object_801B5B54
	jal     face_stdio_8018D560
	la.l    $a0, str_face_object_801B5B54
	lw      $t6, 0x0020($sp)
	nop
	lw      $t7, 0x001C($t6)
	nop
	bnez    $t7, .L8017DD60
	nop
	lw      $a1, 0x0024($sp)
	jal     face_object_8017C940
	move    $a0, $0
	lw      $t8, 0x0020($sp)
	nop
	sw      $v0, 0x001C($t8)
	lw      $t9, 0x0020($sp)
	nop
	lw      $t0, 0x001C($t9)
	b       .L8017DDA8
	sw      $t0, 0x0020($t9)
.L8017DD60:
	lw      $a1, 0x0024($sp)
	jal     face_object_8017C940
	move    $a0, $0
	sw      $v0, 0x001C($sp)
	lw      $t2, 0x0020($sp)
	lw      $t1, 0x001C($sp)
	lw      $t3, 0x001C($t2)
	nop
	sw      $t1, 0x0000($t3)
	lw      $t4, 0x0020($sp)
	lw      $t6, 0x001C($sp)
	lw      $t5, 0x001C($t4)
	nop
	sw      $t5, 0x0004($t6)
	lw      $t7, 0x001C($sp)
	lw      $t8, 0x0020($sp)
	nop
	sw      $t7, 0x001C($t8)
.L8017DDA8:
	lw      $t0, 0x0020($sp)
	lw      $t2, 0x0024($sp)
	lw      $t9, 0x0024($t0)
	lw      $t1, 0x000C($t2)
	nop
	or      $t3, $t9, $t1
	sw      $t3, 0x0024($t0)
	lw      $t4, 0x0020($sp)
	nop
	lw      $t5, 0x0028($t4)
	nop
	addiu   $t6, $t5, 0x0001
	sw      $t6, 0x0028($t4)
	jal     imout
	nop
	b       .L8017DDEC
	nop
.L8017DDEC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl face_object_8017DDFC
face_object_8017DDFC:
	addiu   $sp, $sp, -0x0008
	lw      $t6, 0x001C($a0)
	nop
	sw      $t6, 0x0004($sp)
	lw      $t7, 0x0004($sp)
	nop
	beqz    $t7, .L8017DE68
	nop
.L8017DE1C:
	lw      $t8, 0x0004($sp)
	lh      $t1, 0x0010($a1)
	lw      $t9, 0x0008($t8)
	nop
	lh      $t0, 0x0010($t9)
	nop
	bne     $t0, $t1, .L8017DE44
	nop
	b       .L8017DE78
	li      $v0, 0x0001
.L8017DE44:
	lw      $t2, 0x0004($sp)
	nop
	lw      $t3, 0x0004($t2)
	nop
	sw      $t3, 0x0004($sp)
	lw      $t4, 0x0004($sp)
	nop
	bnez    $t4, .L8017DE1C
	nop
.L8017DE68:
	b       .L8017DE78
	move    $v0, $0
	b       .L8017DE78
	nop
.L8017DE78:
	jr      $ra
	addiu   $sp, $sp, 0x0008

face_object_8017DE80:
	addiu   $sp, $sp, -0x0060
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0060($sp)
	sw      $s0, 0x0018($sp)
	la.u    $a0, str_face_object_801B5B68
	jal     gd_printf
	la.l    $a0, str_face_object_801B5B68
	lw      $s0, 0x0060($sp)
	li      $at, 0x0001
	beq     $s0, $at, .L8017DED8
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L8017DEEC
	nop
	li      $at, 0x0004
	beq     $s0, $at, .L8017DF00
	nop
	li      $at, 0x0008
	beq     $s0, $at, .L8017DF14
	nop
	b       .L8017DF28
	nop
.L8017DED8:
	la.u    $a0, str_face_object_801B5B7C
	jal     gd_printf
	la.l    $a0, str_face_object_801B5B7C
	b       .L8017DF3C
	nop
.L8017DEEC:
	la.u    $a0, str_face_object_801B5B84
	jal     gd_printf
	la.l    $a0, str_face_object_801B5B84
	b       .L8017DF3C
	nop
.L8017DF00:
	la.u    $a0, str_face_object_801B5B8C
	jal     gd_printf
	la.l    $a0, str_face_object_801B5B8C
	b       .L8017DF3C
	nop
.L8017DF14:
	la.u    $a0, str_face_object_801B5B94
	jal     gd_printf
	la.l    $a0, str_face_object_801B5B94
	b       .L8017DF3C
	nop
.L8017DF28:
	la.u    $a0, str_face_object_801B5BA0
	jal     gd_printf
	la.l    $a0, str_face_object_801B5BA0
	b       .L8017DF3C
	nop
.L8017DF3C:
	lui     $t6, %hi(_face_bss+0x56C)
	lw      $t6, %lo(_face_bss+0x56C)($t6)
	nop
	sw      $t6, 0x0050($sp)
	lw      $t7, 0x0050($sp)
	nop
	beqz    $t7, .L8017E310
	nop
.L8017DF5C:
	lw      $t8, 0x0050($sp)
	nop
	lw      $t9, 0x000C($t8)
	nop
	sw      $t9, 0x005C($sp)
	lw      $t0, 0x005C($sp)
	lw      $t1, 0x0060($sp)
	nop
	bne     $t0, $t1, .L8017E2EC
	nop
	lw      $a1, 0x0050($sp)
	jal     face_object_8017D838
	addiu   $a0, $sp, 0x002C
	lw      $s0, 0x005C($sp)
	li      $at, 0x0001
	beq     $s0, $at, .L8017DFC0
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L8017E1A4
	nop
	li      $at, 0x0004
	beq     $s0, $at, .L8017E248
	nop
	b       .L8017E2EC
	nop
.L8017DFC0:
	la.u    $a0, str_face_object_801B5BB0
	la.l    $a0, str_face_object_801B5BB0
	jal     gd_printf
	addiu   $a1, $sp, 0x002C
	lw      $t2, 0x0050($sp)
	nop
	lw      $t3, 0x0024($t2)
	nop
	sw      $t3, 0x0028($sp)
	lw      $t4, 0x0028($sp)
	nop
	andi    $t5, $t4, 0x0001
	beqz    $t5, .L8017E004
	nop
	la.u    $a0, str_face_object_801B5BBC
	jal     gd_printf
	la.l    $a0, str_face_object_801B5BBC
.L8017E004:
	lw      $t6, 0x0028($sp)
	nop
	andi    $t7, $t6, 0x0002
	beqz    $t7, .L8017E024
	nop
	la.u    $a0, str_face_object_801B5BC4
	jal     gd_printf
	la.l    $a0, str_face_object_801B5BC4
.L8017E024:
	lw      $t8, 0x0028($sp)
	nop
	andi    $t9, $t8, 0x0004
	beqz    $t9, .L8017E044
	nop
	la.u    $a0, str_face_object_801B5BCC
	jal     gd_printf
	la.l    $a0, str_face_object_801B5BCC
.L8017E044:
	lw      $t0, 0x0028($sp)
	nop
	andi    $t1, $t0, 0x0008
	beqz    $t1, .L8017E064
	nop
	la.u    $a0, str_face_object_801B5BD4
	jal     gd_printf
	la.l    $a0, str_face_object_801B5BD4
.L8017E064:
	lw      $t2, 0x0028($sp)
	nop
	andi    $t3, $t2, 0x0200
	beqz    $t3, .L8017E084
	nop
	la.u    $a0, str_face_object_801B5BE0
	jal     gd_printf
	la.l    $a0, str_face_object_801B5BE0
.L8017E084:
	lw      $t4, 0x0028($sp)
	nop
	andi    $t5, $t4, 0x0020
	beqz    $t5, .L8017E0A4
	nop
	la.u    $a0, str_face_object_801B5BEC
	jal     gd_printf
	la.l    $a0, str_face_object_801B5BEC
.L8017E0A4:
	lw      $t6, 0x0028($sp)
	nop
	andi    $t7, $t6, 0x2000
	beqz    $t7, .L8017E0C4
	nop
	la.u    $a0, str_face_object_801B5BF4
	jal     gd_printf
	la.l    $a0, str_face_object_801B5BF4
.L8017E0C4:
	lw      $t8, 0x0028($sp)
	nop
	andi    $t9, $t8, 0x8000
	beqz    $t9, .L8017E0E4
	nop
	la.u    $a0, str_face_object_801B5C00
	jal     gd_printf
	la.l    $a0, str_face_object_801B5C00
.L8017E0E4:
	lw      $t0, 0x0028($sp)
	nop
	andi    $t1, $t0, 0x0080
	beqz    $t1, .L8017E104
	nop
	la.u    $a0, str_face_object_801B5C08
	jal     gd_printf
	la.l    $a0, str_face_object_801B5C08
.L8017E104:
	lw      $t2, 0x0028($sp)
	nop
	andi    $t3, $t2, 0x0100
	beqz    $t3, .L8017E124
	nop
	la.u    $a0, str_face_object_801B5C10
	jal     gd_printf
	la.l    $a0, str_face_object_801B5C10
.L8017E124:
	lw      $t4, 0x0050($sp)
	nop
	lw      $t5, 0x001C($t4)
	nop
	sw      $t5, 0x0058($sp)
	lw      $t6, 0x0058($sp)
	nop
	beqz    $t6, .L8017E190
	nop
.L8017E148:
	lw      $t7, 0x0058($sp)
	addiu   $a0, $sp, 0x002C
	lw      $a1, 0x0008($t7)
	jal     face_object_8017D838
	nop
	la.u    $a0, str_face_object_801B5C18
	la.l    $a0, str_face_object_801B5C18
	jal     gd_printf
	addiu   $a1, $sp, 0x002C
	lw      $t8, 0x0058($sp)
	nop
	lw      $t9, 0x0004($t8)
	nop
	sw      $t9, 0x0058($sp)
	lw      $t0, 0x0058($sp)
	nop
	bnez    $t0, .L8017E148
	nop
.L8017E190:
	la.u    $a0, str_face_object_801B5C1C
	jal     gd_printf
	la.l    $a0, str_face_object_801B5C1C
	b       .L8017E2EC
	nop
.L8017E1A4:
	la.u    $a0, str_face_object_801B5C20
	la.l    $a0, str_face_object_801B5C20
	jal     gd_printf
	addiu   $a1, $sp, 0x002C
	lw      $t1, 0x0050($sp)
	nop
	lw      $t2, 0x010C($t1)
	nop
	sw      $t2, 0x0054($sp)
	lw      $t3, 0x0054($sp)
	nop
	lw      $t4, 0x001C($t3)
	nop
	sw      $t4, 0x0058($sp)
	lw      $t5, 0x0058($sp)
	nop
	beqz    $t5, .L8017E234
	nop
.L8017E1EC:
	lw      $t6, 0x0058($sp)
	addiu   $a0, $sp, 0x002C
	lw      $a1, 0x0008($t6)
	jal     face_object_8017D838
	nop
	la.u    $a0, str_face_object_801B5C2C
	la.l    $a0, str_face_object_801B5C2C
	jal     gd_printf
	addiu   $a1, $sp, 0x002C
	lw      $t7, 0x0058($sp)
	nop
	lw      $t8, 0x0004($t7)
	nop
	sw      $t8, 0x0058($sp)
	lw      $t9, 0x0058($sp)
	nop
	bnez    $t9, .L8017E1EC
	nop
.L8017E234:
	la.u    $a0, str_face_object_801B5C30
	jal     gd_printf
	la.l    $a0, str_face_object_801B5C30
	b       .L8017E2EC
	nop
.L8017E248:
	la.u    $a0, str_face_object_801B5C34
	la.l    $a0, str_face_object_801B5C34
	jal     gd_printf
	addiu   $a1, $sp, 0x002C
	lw      $t0, 0x0050($sp)
	nop
	lw      $t1, 0x01C4($t0)
	nop
	sw      $t1, 0x0054($sp)
	lw      $t2, 0x0054($sp)
	nop
	lw      $t3, 0x001C($t2)
	nop
	sw      $t3, 0x0058($sp)
	lw      $t4, 0x0058($sp)
	nop
	beqz    $t4, .L8017E2D8
	nop
.L8017E290:
	lw      $t5, 0x0058($sp)
	addiu   $a0, $sp, 0x002C
	lw      $a1, 0x0008($t5)
	jal     face_object_8017D838
	nop
	la.u    $a0, str_face_object_801B5C40
	la.l    $a0, str_face_object_801B5C40
	jal     gd_printf
	addiu   $a1, $sp, 0x002C
	lw      $t6, 0x0058($sp)
	nop
	lw      $t7, 0x0004($t6)
	nop
	sw      $t7, 0x0058($sp)
	lw      $t8, 0x0058($sp)
	nop
	bnez    $t8, .L8017E290
	nop
.L8017E2D8:
	la.u    $a0, str_face_object_801B5C44
	jal     gd_printf
	la.l    $a0, str_face_object_801B5C44
	b       .L8017E2EC
	nop
.L8017E2EC:
	lw      $t9, 0x0050($sp)
	nop
	lw      $t0, 0x0004($t9)
	nop
	sw      $t0, 0x0050($sp)
	lw      $t1, 0x0050($sp)
	nop
	bnez    $t1, .L8017DF5C
	nop
.L8017E310:
	b       .L8017E318
	nop
.L8017E318:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0060

face_object_8017E328:
	addiu   $sp, $sp, -0x0008
	sw      $0, 0x0004($sp)
	lw      $v0, 0x0004($sp)
	b       .L8017E344
	nop
	b       .L8017E344
	nop
.L8017E344:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl make_scene
make_scene:
	addiu   $sp, $sp, -0x0008
	sw      $0, 0x0004($sp)
	lw      $v0, 0x0004($sp)
	b       .L8017E368
	nop
	b       .L8017E368
	nop
.L8017E368:
	jr      $ra
	addiu   $sp, $sp, 0x0008

face_object_8017E370:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	nop
	sw      $t6, 0x0024($sp)
	lw      $t7, 0x0028($sp)
	li      $at, 0x0004
	lw      $s0, 0x000C($t7)
	nop
	beq     $s0, $at, .L8017E3B8
	nop
	li      $at, 0x0020
	beq     $s0, $at, .L8017E3CC
	nop
	b       .L8017E3E0
	nop
.L8017E3B8:
	lw      $a0, 0x0024($sp)
	jal     face_joint_80191744
	nop
	b       .L8017E3E0
	nop
.L8017E3CC:
	lw      $a0, 0x0024($sp)
	jal     reset_net
	nop
	b       .L8017E3E0
	nop
.L8017E3E0:
	b       .L8017E3E8
	nop
.L8017E3E8:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

.globl face_object_8017E3F8
face_object_8017E3F8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $a2, %hi(_face_bss+0x4F4)
	lw      $a2, %lo(_face_bss+0x4F4)($a2)
	la.u    $a1, face_object_8017E370
	la.l    $a1, face_object_8017E370
	jal     face_object_8017E520
	li      $a0, 0x0020
	b       .L8017E420
	nop
.L8017E420:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

face_object_8017E430:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0030($sp)
	nop
	lw      $t7, 0x000C($t6)
	nop
	sw      $t7, 0x0028($sp)
	lw      $s0, 0x0028($sp)
	li      $at, 0x0001
	beq     $s0, $at, .L8017E47C
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L8017E4E0
	nop
	b       .L8017E4E8
	nop
.L8017E47C:
	lw      $t8, 0x0030($sp)
	nop
	lw      $t9, 0x001C($t8)
	nop
	sw      $t9, 0x0024($sp)
	lw      $t0, 0x0024($sp)
	nop
	beqz    $t0, .L8017E4D8
	nop
.L8017E4A0:
	lw      $t1, 0x0024($sp)
	lw      $a1, 0x0034($sp)
	lw      $a0, 0x0008($t1)
	jal     face_object_8017E430
	nop
	lw      $t2, 0x0024($sp)
	nop
	lw      $t3, 0x0004($t2)
	nop
	sw      $t3, 0x0024($sp)
	lw      $t4, 0x0024($sp)
	nop
	bnez    $t4, .L8017E4A0
	nop
.L8017E4D8:
	b       .L8017E4E8
	nop
.L8017E4E0:
	b       .L8017E4E8
	nop
.L8017E4E8:
	lw      $t5, 0x0028($sp)
	lw      $t6, 0x0034($sp)
	nop
	bne     $t5, $t6, .L8017E508
	nop
	lw      $v0, 0x0030($sp)
	b       .L8017E510
	nop
.L8017E508:
	b       .L8017E510
	nop
.L8017E510:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0030

.globl face_object_8017E520
face_object_8017E520:
	addiu   $sp, $sp, -0x0060
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0060($sp)
	sw      $a1, 0x0064($sp)
	sw      $a2, 0x0068($sp)
	sw      $s0, 0x0018($sp)
	sw      $0, 0x0028($sp)
	lw      $t6, 0x0068($sp)
	nop
	bnez    $t6, .L8017E554
	nop
	b       .L8017E6B4
	nop
.L8017E554:
	lw      $t7, 0x0068($sp)
	nop
	lw      $t8, 0x0030($t7)
	nop
	andi    $t9, $t8, 0x0001
	beqz    $t9, .L8017E57C
	nop
	lw      $v0, 0x0028($sp)
	b       .L8017E6B4
	nop
.L8017E57C:
	lw      $t0, 0x0068($sp)
	lw      $t2, 0x0060($sp)
	lw      $t1, 0x0024($t0)
	nop
	and     $t3, $t1, $t2
	andi    $t4, $t1, 0x0001
	or      $t5, $t4, $t3
	bnez    $t5, .L8017E5AC
	nop
	lw      $v0, 0x0028($sp)
	b       .L8017E6B4
	nop
.L8017E5AC:
	lw      $t6, 0x0064($sp)
	nop
	sw      $t6, 0x004C($sp)
	lw      $t7, 0x0068($sp)
	nop
	lw      $t8, 0x001C($t7)
	nop
	sw      $t8, 0x005C($sp)
	lw      $t9, 0x005C($sp)
	nop
	beqz    $t9, .L8017E6A0
	nop
.L8017E5DC:
	lw      $t0, 0x005C($sp)
	nop
	lw      $t2, 0x0008($t0)
	nop
	sw      $t2, 0x0054($sp)
	lw      $t1, 0x0054($sp)
	nop
	lw      $t4, 0x000C($t1)
	nop
	sw      $t4, 0x0050($sp)
	lw      $t3, 0x005C($sp)
	nop
	lw      $t5, 0x0004($t3)
	nop
	sw      $t5, 0x0058($sp)
	lw      $t6, 0x0050($sp)
	li      $at, 0x0001
	bne     $t6, $at, .L8017E64C
	nop
	lw      $a0, 0x0060($sp)
	lw      $a1, 0x0064($sp)
	lw      $a2, 0x0054($sp)
	jal     face_object_8017E520
	nop
	lw      $t7, 0x0028($sp)
	move    $s0, $v0
	addu    $t8, $t7, $s0
	sw      $t8, 0x0028($sp)
.L8017E64C:
	lw      $t9, 0x0050($sp)
	lw      $t0, 0x0060($sp)
	nop
	and     $t2, $t9, $t0
	beqz    $t2, .L8017E684
	nop
	lw      $t9, 0x004C($sp)
	lw      $a0, 0x0054($sp)
	jalr    $t9
	nop
	lw      $t1, 0x0028($sp)
	nop
	addiu   $t4, $t1, 0x0001
	sw      $t4, 0x0028($sp)
.L8017E684:
	lw      $t3, 0x0058($sp)
	nop
	sw      $t3, 0x005C($sp)
	lw      $t5, 0x005C($sp)
	nop
	bnez    $t5, .L8017E5DC
	nop
.L8017E6A0:
	lw      $v0, 0x0028($sp)
	b       .L8017E6B4
	nop
	b       .L8017E6B4
	nop
.L8017E6B4:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0060

.globl face_object_8017E6C4
face_object_8017E6C4:
	addiu   $sp, $sp, -0x00A0
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x00A0($sp)
	sw      $a1, 0x00A4($sp)
	sw      $a2, 0x00A8($sp)
	lw      $t6, 0x00A8($sp)
	nop
	lwc1    $f4, 0x0000($t6)
	nop
	swc1    $f4, 0x0070($sp)
	lw      $t7, 0x00A8($sp)
	nop
	lwc1    $f6, 0x0004($t7)
	nop
	swc1    $f6, 0x0074($sp)
	lw      $t8, 0x00A8($sp)
	nop
	lwc1    $f8, 0x0008($t8)
	nop
	swc1    $f8, 0x0078($sp)
	jal     face_math_80194D34
	addiu   $a0, $sp, 0x0070
	lw      $t9, 0x00A4($sp)
	nop
	lwc1    $f10, 0x0000($t9)
	nop
	swc1    $f10, 0x007C($sp)
	lw      $t0, 0x00A4($sp)
	nop
	lwc1    $f16, 0x0004($t0)
	nop
	swc1    $f16, 0x0080($sp)
	lw      $t1, 0x00A4($sp)
	nop
	lwc1    $f18, 0x0008($t1)
	nop
	swc1    $f18, 0x0084($sp)
	lw      $t2, 0x00A0($sp)
	nop
	lwc1    $f4, 0x00B0($t2)
	nop
	swc1    $f4, 0x001C($sp)
	lw      $t3, 0x00A0($sp)
	nop
	lwc1    $f6, 0x00B4($t3)
	nop
	swc1    $f6, 0x0020($sp)
	lw      $t4, 0x00A0($sp)
	nop
	lwc1    $f8, 0x00B8($t4)
	nop
	swc1    $f8, 0x0024($sp)
	lw      $a1, 0x00A0($sp)
	addiu   $a0, $sp, 0x001C
	jal     face_math_80196570
	addiu   $a1, $a1, 0x0128
	lwc1    $f10, 0x007C($sp)
	lwc1    $f16, 0x001C($sp)
	nop
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x007C($sp)
	lwc1    $f4, 0x0080($sp)
	lwc1    $f6, 0x0020($sp)
	nop
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0080($sp)
	lwc1    $f10, 0x0084($sp)
	lwc1    $f16, 0x0024($sp)
	nop
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0084($sp)
	jal     face_math_80194D34
	addiu   $a0, $sp, 0x007C
	bnez    $v0, .L8017E820
	nop
	lwc1    $f4, 0x0070($sp)
	nop
	neg.s   $f6, $f4
	swc1    $f6, 0x007C($sp)
	lwc1    $f8, 0x0074($sp)
	nop
	neg.s   $f10, $f8
	swc1    $f10, 0x0080($sp)
	lwc1    $f16, 0x0078($sp)
	nop
	neg.s   $f18, $f16
	swc1    $f18, 0x0084($sp)
.L8017E820:
	lw      $a1, 0x00A4($sp)
	addiu   $a0, $sp, 0x0070
	jal     face_math_80194E54
	addiu   $a2, $sp, 0x0094
	lwc1    $f4, 0x0094($sp)
	lwc1    $f8, 0x009C($sp)
	mul.s   $f6, $f4, $f4
	nop
	mul.s   $f10, $f8, $f8
	add.s   $f16, $f6, $f10
	jal     face_gfx_8019B49C
	cvt.d.s $f12, $f16
	cvt.s.d $f18, $f0
	swc1    $f18, 0x002C($sp)
	lui     $at, %hi(face_object_801B5E70+4)
	lwc1    $f4, 0x002C($sp)
	lwc1    $f7, %lo(face_object_801B5E70+0)($at)
	lwc1    $f6, %lo(face_object_801B5E70+4)($at)
	cvt.d.s $f8, $f4
	c.lt.d  $f6, $f8
	nop
	bc1f    .L8017E88C
	nop
	li      $at, 0x447A0000
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x002C($sp)
.L8017E88C:
	lui     $at, %hi(face_object_801B5E78+4)
	lwc1    $f16, 0x002C($sp)
	lwc1    $f5, %lo(face_object_801B5E78+0)($at)
	lwc1    $f4, %lo(face_object_801B5E78+4)($at)
	cvt.d.s $f18, $f16
	nop
	div.d   $f8, $f18, $f4
	cvt.s.d $f6, $f8
	swc1    $f6, 0x002C($sp)
	lwc1    $f16, 0x002C($sp)
	li      $at, 0x3FF00000
	mtc1    $at, $f11
	mtc1    $0, $f10
	cvt.d.s $f18, $f16
	sub.d   $f4, $f10, $f18
	cvt.s.d $f8, $f4
	swc1    $f8, 0x002C($sp)
	lw      $t5, 0x00A8($sp)
	lwc1    $f16, 0x002C($sp)
	lwc1    $f6, 0x0000($t5)
	nop
	mul.s   $f10, $f6, $f16
	swc1    $f10, 0x0088($sp)
	lw      $t6, 0x00A8($sp)
	lwc1    $f4, 0x002C($sp)
	lwc1    $f18, 0x0004($t6)
	nop
	mul.s   $f8, $f18, $f4
	swc1    $f8, 0x008C($sp)
	lw      $t7, 0x00A8($sp)
	lwc1    $f16, 0x002C($sp)
	lwc1    $f6, 0x0008($t7)
	nop
	mul.s   $f10, $f6, $f16
	swc1    $f10, 0x0090($sp)
	lw      $t8, 0x00A0($sp)
	lwc1    $f4, 0x0088($sp)
	lwc1    $f18, 0x0074($t8)
	nop
	add.s   $f8, $f18, $f4
	swc1    $f8, 0x0074($t8)
	lw      $t9, 0x00A0($sp)
	lwc1    $f16, 0x008C($sp)
	lwc1    $f6, 0x0078($t9)
	nop
	add.s   $f10, $f6, $f16
	swc1    $f10, 0x0078($t9)
	lw      $t0, 0x00A0($sp)
	lwc1    $f4, 0x0090($sp)
	lwc1    $f18, 0x007C($t0)
	nop
	add.s   $f8, $f18, $f4
	swc1    $f8, 0x007C($t0)
	b       .L8017E968
	nop
.L8017E968:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x00A0
	jr      $ra
	nop

.globl face_object_8017E978
face_object_8017E978:
	addiu   $sp, $sp, -0x0088
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0088($sp)
	sw      $a1, 0x008C($sp)
	sw      $a2, 0x0090($sp)
	lw      $t6, 0x008C($sp)
	nop
	lwc1    $f4, 0x0000($t6)
	nop
	swc1    $f4, 0x0064($sp)
	lw      $t7, 0x008C($sp)
	nop
	lwc1    $f6, 0x0004($t7)
	nop
	swc1    $f6, 0x0068($sp)
	lw      $t8, 0x008C($sp)
	nop
	lwc1    $f8, 0x0008($t8)
	nop
	swc1    $f8, 0x006C($sp)
	lw      $t9, 0x0088($sp)
	nop
	lwc1    $f10, 0x00B0($t9)
	nop
	swc1    $f10, 0x0018($sp)
	lw      $t0, 0x0088($sp)
	nop
	lwc1    $f16, 0x00B4($t0)
	nop
	swc1    $f16, 0x001C($sp)
	lw      $t1, 0x0088($sp)
	nop
	lwc1    $f18, 0x00B8($t1)
	nop
	swc1    $f18, 0x0020($sp)
	lw      $a1, 0x0088($sp)
	addiu   $a0, $sp, 0x0018
	jal     face_math_80196570
	addiu   $a1, $a1, 0x0128
	lwc1    $f4, 0x0064($sp)
	lwc1    $f6, 0x0018($sp)
	nop
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0064($sp)
	lwc1    $f10, 0x0068($sp)
	lwc1    $f16, 0x001C($sp)
	nop
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0068($sp)
	lwc1    $f4, 0x006C($sp)
	lwc1    $f6, 0x0020($sp)
	nop
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x006C($sp)
	lui     $at, %hi(face_object_801B5E80+4)
	lwc1    $f10, 0x0064($sp)
	lwc1    $f19, %lo(face_object_801B5E80+0)($at)
	lwc1    $f18, %lo(face_object_801B5E80+4)($at)
	cvt.d.s $f16, $f10
	mul.d   $f4, $f16, $f18
	cvt.s.d $f6, $f4
	swc1    $f6, 0x0064($sp)
	lui     $at, %hi(face_object_801B5E88+4)
	lwc1    $f8, 0x0068($sp)
	lwc1    $f17, %lo(face_object_801B5E88+0)($at)
	lwc1    $f16, %lo(face_object_801B5E88+4)($at)
	cvt.d.s $f10, $f8
	mul.d   $f18, $f10, $f16
	cvt.s.d $f4, $f18
	swc1    $f4, 0x0068($sp)
	lui     $at, %hi(face_object_801B5E90+4)
	lwc1    $f6, 0x006C($sp)
	lwc1    $f11, %lo(face_object_801B5E90+0)($at)
	lwc1    $f10, %lo(face_object_801B5E90+4)($at)
	cvt.d.s $f8, $f6
	mul.d   $f16, $f8, $f10
	cvt.s.d $f18, $f16
	swc1    $f18, 0x006C($sp)
	lw      $a0, 0x0090($sp)
	addiu   $a1, $sp, 0x0064
	jal     face_math_80194E54
	addiu   $a2, $sp, 0x0070
	addiu   $a0, $sp, 0x0070
	jal     face_math_801948B0
	li      $a1, 0x40A00000
	lw      $t2, 0x0088($sp)
	lwc1    $f6, 0x0070($sp)
	lwc1    $f4, 0x0080($t2)
	nop
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0080($t2)
	lw      $t3, 0x0088($sp)
	lwc1    $f16, 0x0074($sp)
	lwc1    $f10, 0x0084($t3)
	nop
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x0084($t3)
	lw      $t4, 0x0088($sp)
	lwc1    $f6, 0x0078($sp)
	lwc1    $f4, 0x0088($t4)
	nop
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0088($t4)
	b       .L8017EB1C
	nop
.L8017EB1C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0088
	jr      $ra
	nop

.globl face_object_8017EB2C
face_object_8017EB2C:
	addiu   $sp, $sp, -0x0068
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0068($sp)
	lw      $t6, 0x0068($sp)
	nop
	lwc1    $f4, 0x00A4($t6)
	nop
	swc1    $f4, 0x005C($sp)
	lw      $t7, 0x0068($sp)
	nop
	lwc1    $f6, 0x00A8($t7)
	nop
	swc1    $f6, 0x0060($sp)
	lw      $t8, 0x0068($sp)
	nop
	lwc1    $f8, 0x00AC($t8)
	nop
	swc1    $f8, 0x0064($sp)
	jal     face_math_80194D34
	addiu   $a0, $sp, 0x005C
	lw      $a0, 0x0068($sp)
	jal     face_math_80194CD8
	addiu   $a0, $a0, 0x00A4
	swc1    $f0, 0x0018($sp)
	lwc1    $f10, 0x0018($sp)
	addiu   $a0, $sp, 0x001C
	neg.s   $f16, $f10
	mfc1    $a2, $f16
	jal     face_math_80196334
	addiu   $a1, $sp, 0x005C
	la.u    $t9, _face_bss+0x4A8
	la.l    $t9, _face_bss+0x4A8
	move    $a0, $t9
	move    $a2, $t9
	jal     face_math_80196754
	addiu   $a1, $sp, 0x001C
	b       .L8017EBC4
	nop
.L8017EBC4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0068
	jr      $ra
	nop

face_object_8017EBD4:
	lwc1    $f4, 0x0000($a0)
	lwc1    $f6, 0x0028($a1)
	nop
	c.le.s  $f6, $f4
	nop
	bc1f    .L8017EC4C
	nop
	lwc1    $f8, 0x0000($a0)
	lwc1    $f10, 0x0034($a1)
	nop
	c.le.s  $f8, $f10
	nop
	bc1f    .L8017EC4C
	nop
	lwc1    $f16, 0x0008($a0)
	lwc1    $f18, 0x0030($a1)
	nop
	c.le.s  $f18, $f16
	nop
	bc1f    .L8017EC4C
	nop
	lwc1    $f4, 0x0008($a0)
	lwc1    $f6, 0x003C($a1)
	nop
	c.le.s  $f4, $f6
	nop
	bc1f    .L8017EC4C
	nop
	jr      $ra
	li      $v0, 0x0001
.L8017EC4C:
	jr      $ra
	move    $v0, $0
	jr      $ra
	nop
	jr      $ra
	nop

face_object_8017EC64:
	addiu   $sp, $sp, -0x0050
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0050($sp)
	sw      $a1, 0x0054($sp)
	lw      $a0, 0x0050($sp)
	jal     face_dynlist_80186C84
	nop
	jal     dGetWorldPos
	addiu   $a0, $sp, 0x0044
	jal     face_dynlist_8018AEDC
	nop
	sw      $v0, 0x0034($sp)
	lw      $a0, 0x0054($sp)
	jal     face_dynlist_80186C84
	nop
	jal     dGetWorldPos
	addiu   $a0, $sp, 0x0038
	jal     face_dynlist_8018AEDC
	nop
	sw      $v0, 0x0030($sp)
	lw      $t6, 0x0034($sp)
	lw      $t7, 0x0030($sp)
	lwc1    $f4, 0x0000($t6)
	lwc1    $f6, 0x0000($t7)
	nop
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0018($sp)
	lw      $t8, 0x0034($sp)
	lw      $t9, 0x0030($sp)
	lwc1    $f10, 0x0004($t8)
	lwc1    $f16, 0x0004($t9)
	nop
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x001C($sp)
	lw      $t0, 0x0034($sp)
	lw      $t1, 0x0030($sp)
	lwc1    $f4, 0x0008($t0)
	lwc1    $f6, 0x0008($t1)
	nop
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0020($sp)
	lw      $t2, 0x0034($sp)
	lw      $t3, 0x0030($sp)
	lwc1    $f10, 0x000C($t2)
	lwc1    $f16, 0x000C($t3)
	nop
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x0024($sp)
	lw      $t4, 0x0034($sp)
	lw      $t5, 0x0030($sp)
	lwc1    $f4, 0x0010($t4)
	lwc1    $f6, 0x0010($t5)
	nop
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0028($sp)
	lw      $t6, 0x0034($sp)
	lw      $t7, 0x0030($sp)
	lwc1    $f10, 0x0014($t6)
	lwc1    $f16, 0x0014($t7)
	nop
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x002C($sp)
	lwc1    $f4, 0x0038($sp)
	lwc1    $f6, 0x0044($sp)
	lui     $at, %hi(_face_bss+0x4E8)
	sub.s   $f8, $f4, $f6
	swc1    $f8, %lo(_face_bss+0x4E8)($at)
	lwc1    $f10, 0x003C($sp)
	lwc1    $f16, 0x0048($sp)
	lui     $at, %hi(_face_bss+0x4EC)
	sub.s   $f18, $f10, $f16
	swc1    $f18, %lo(_face_bss+0x4EC)($at)
	lwc1    $f4, 0x0040($sp)
	lwc1    $f6, 0x004C($sp)
	lui     $at, %hi(_face_bss+0x4F0)
	sub.s   $f8, $f4, $f6
	swc1    $f8, %lo(_face_bss+0x4F0)($at)
	lui     $at, %hi(_face_bss+0x4E8)
	lwc1    $f10, %lo(_face_bss+0x4E8)($at)
	lwc1    $f16, 0x0018($sp)
	nop
	c.le.s  $f16, $f10
	nop
	bc1f    .L8017EE20
	nop
	lui     $at, %hi(_face_bss+0x4E8)
	lwc1    $f18, %lo(_face_bss+0x4E8)($at)
	lwc1    $f4, 0x0024($sp)
	nop
	c.le.s  $f18, $f4
	nop
	bc1f    .L8017EE20
	nop
	lui     $at, %hi(_face_bss+0x4F0)
	lwc1    $f6, %lo(_face_bss+0x4F0)($at)
	lwc1    $f8, 0x0020($sp)
	nop
	c.le.s  $f8, $f6
	nop
	bc1f    .L8017EE20
	nop
	lui     $at, %hi(_face_bss+0x4F0)
	lwc1    $f10, %lo(_face_bss+0x4F0)($at)
	lwc1    $f16, 0x002C($sp)
	nop
	c.le.s  $f10, $f16
	nop
	bc1f    .L8017EE20
	nop
	b       .L8017EE30
	li      $v0, 0x0001
.L8017EE20:
	b       .L8017EE30
	move    $v0, $0
	b       .L8017EE30
	nop
.L8017EE30:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0050
	jr      $ra
	nop

face_object_8017EE40:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	lw      $a0, 0x0028($sp)
	jal     face_dynlist_80186C84
	nop
	jal     dGetWorldPos
	addiu   $a0, $sp, 0x001C
	lw      $t6, 0x002C($sp)
	lwc1    $f4, 0x001C($sp)
	lwc1    $f6, 0x0000($t6)
	nop
	c.le.s  $f6, $f4
	nop
	bc1f    .L8017EEEC
	nop
	lw      $t7, 0x002C($sp)
	lwc1    $f8, 0x001C($sp)
	lwc1    $f10, 0x000C($t7)
	nop
	c.le.s  $f8, $f10
	nop
	bc1f    .L8017EEEC
	nop
	lw      $t8, 0x002C($sp)
	lwc1    $f16, 0x0024($sp)
	lwc1    $f18, 0x0008($t8)
	nop
	c.le.s  $f18, $f16
	nop
	bc1f    .L8017EEEC
	nop
	lw      $t9, 0x002C($sp)
	lwc1    $f4, 0x0024($sp)
	lwc1    $f6, 0x0014($t9)
	nop
	c.le.s  $f4, $f6
	nop
	bc1f    .L8017EEEC
	nop
	b       .L8017EEFC
	li      $v0, 0x0001
.L8017EEEC:
	b       .L8017EEFC
	move    $v0, $0
	b       .L8017EEFC
	nop
.L8017EEFC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

face_object_8017EF0C:
	lwc1    $f4, 0x0000($a0)
	lwc1    $f6, 0x0000($a1)
	nop
	c.le.s  $f6, $f4
	nop
	bc1f    .L8017EF84
	nop
	lwc1    $f8, 0x0000($a0)
	lwc1    $f10, 0x000C($a1)
	nop
	c.le.s  $f8, $f10
	nop
	bc1f    .L8017EF84
	nop
	lwc1    $f16, 0x0008($a0)
	lwc1    $f18, 0x0008($a1)
	nop
	c.le.s  $f18, $f16
	nop
	bc1f    .L8017EF84
	nop
	lwc1    $f4, 0x0008($a0)
	lwc1    $f6, 0x0014($a1)
	nop
	c.le.s  $f4, $f6
	nop
	bc1f    .L8017EF84
	nop
	jr      $ra
	li      $v0, 0x0001
.L8017EF84:
	jr      $ra
	move    $v0, $0
	jr      $ra
	nop
	jr      $ra
	nop

.globl face_object_8017EF9C
face_object_8017EF9C:
	lwc1    $f4, 0x0000($a0)
	lwc1    $f6, 0x0000($a1)
	nop
	c.le.s  $f6, $f4
	nop
	bc1f    .L8017F014
	nop
	lwc1    $f8, 0x0000($a0)
	lwc1    $f10, 0x000C($a1)
	nop
	c.le.s  $f8, $f10
	nop
	bc1f    .L8017F014
	nop
	lwc1    $f16, 0x0008($a0)
	lwc1    $f18, 0x0008($a1)
	nop
	c.le.s  $f18, $f16
	nop
	bc1f    .L8017F014
	nop
	lwc1    $f4, 0x0008($a0)
	lwc1    $f6, 0x0014($a1)
	nop
	c.le.s  $f4, $f6
	nop
	bc1f    .L8017F014
	nop
	jr      $ra
	li      $v0, 0x0001
.L8017F014:
	lwc1    $f8, 0x000C($a0)
	lwc1    $f10, 0x0000($a1)
	nop
	c.le.s  $f10, $f8
	nop
	bc1f    .L8017F08C
	nop
	lwc1    $f16, 0x000C($a0)
	lwc1    $f18, 0x000C($a1)
	nop
	c.le.s  $f16, $f18
	nop
	bc1f    .L8017F08C
	nop
	lwc1    $f4, 0x0008($a0)
	lwc1    $f6, 0x0008($a1)
	nop
	c.le.s  $f6, $f4
	nop
	bc1f    .L8017F08C
	nop
	lwc1    $f8, 0x0008($a0)
	lwc1    $f10, 0x0014($a1)
	nop
	c.le.s  $f8, $f10
	nop
	bc1f    .L8017F08C
	nop
	jr      $ra
	li      $v0, 0x0001
.L8017F08C:
	lwc1    $f16, 0x000C($a0)
	lwc1    $f18, 0x0000($a1)
	nop
	c.le.s  $f18, $f16
	nop
	bc1f    .L8017F104
	nop
	lwc1    $f4, 0x000C($a0)
	lwc1    $f6, 0x000C($a1)
	nop
	c.le.s  $f4, $f6
	nop
	bc1f    .L8017F104
	nop
	lwc1    $f8, 0x0014($a0)
	lwc1    $f10, 0x0008($a1)
	nop
	c.le.s  $f10, $f8
	nop
	bc1f    .L8017F104
	nop
	lwc1    $f16, 0x0014($a0)
	lwc1    $f18, 0x0014($a1)
	nop
	c.le.s  $f16, $f18
	nop
	bc1f    .L8017F104
	nop
	jr      $ra
	li      $v0, 0x0001
.L8017F104:
	lwc1    $f4, 0x0000($a0)
	lwc1    $f6, 0x0000($a1)
	nop
	c.le.s  $f6, $f4
	nop
	bc1f    .L8017F17C
	nop
	lwc1    $f8, 0x0000($a0)
	lwc1    $f10, 0x000C($a1)
	nop
	c.le.s  $f8, $f10
	nop
	bc1f    .L8017F17C
	nop
	lwc1    $f16, 0x0014($a0)
	lwc1    $f18, 0x0008($a1)
	nop
	c.le.s  $f18, $f16
	nop
	bc1f    .L8017F17C
	nop
	lwc1    $f4, 0x0014($a0)
	lwc1    $f6, 0x0014($a1)
	nop
	c.le.s  $f4, $f6
	nop
	bc1f    .L8017F17C
	nop
	jr      $ra
	li      $v0, 0x0001
.L8017F17C:
	jr      $ra
	move    $v0, $0
	jr      $ra
	nop
	jr      $ra
	nop

.globl face_object_8017F194
face_object_8017F194:
	addiu   $sp, $sp, -0x0060
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0060($sp)
	sw      $a1, 0x0064($sp)
	lw      $t6, 0x0064($sp)
	nop
	beqz    $t6, .L8017F24C
	nop
	lw      $a0, 0x0064($sp)
	jal     face_dynlist_80186C84
	nop
	jal     dGetMatrixPtr
	nop
	sw      $v0, 0x0050($sp)
	jal     dGetRMatrixPtr
	nop
	sw      $v0, 0x0044($sp)
	lw      $a0, 0x0060($sp)
	jal     face_dynlist_80186C84
	nop
	jal     dGetIMatrixPtr
	nop
	sw      $v0, 0x004C($sp)
	jal     dGetRMatrixPtr
	nop
	sw      $v0, 0x0040($sp)
	jal     dGetScale
	addiu   $a0, $sp, 0x001C
	jal     dGetMatrixPtr
	nop
	sw      $v0, 0x0048($sp)
	lw      $a0, 0x004C($sp)
	lw      $a1, 0x0050($sp)
	lw      $a2, 0x0048($sp)
	jal     face_math_80196754
	nop
	lw      $a0, 0x004C($sp)
	lw      $a1, 0x0044($sp)
	lw      $a2, 0x0040($sp)
	jal     face_math_80196754
	nop
	lw      $a0, 0x0040($sp)
	jal     face_math_8019429C
	addiu   $a1, $sp, 0x001C
	b       .L8017F2AC
	nop
.L8017F24C:
	lw      $a0, 0x0060($sp)
	jal     face_dynlist_80186C84
	nop
	jal     dGetMatrixPtr
	nop
	sw      $v0, 0x0048($sp)
	jal     dGetIMatrixPtr
	nop
	sw      $v0, 0x004C($sp)
	jal     dGetRMatrixPtr
	nop
	sw      $v0, 0x0044($sp)
	jal     dGetScale
	addiu   $a0, $sp, 0x001C
	lw      $a0, 0x0048($sp)
	jal     face_math_801963C0
	nop
	lw      $a0, 0x004C($sp)
	lw      $a1, 0x0044($sp)
	jal     face_math_801964A0
	nop
	lw      $a0, 0x0044($sp)
	jal     face_math_8019429C
	addiu   $a1, $sp, 0x001C
.L8017F2AC:
	lw      $a0, 0x0060($sp)
	jal     face_dynlist_80186C84
	nop
	jal     dGetAttObjGroup
	nop
	sw      $v0, 0x0058($sp)
	lw      $t7, 0x0058($sp)
	nop
	beqz    $t7, .L8017F330
	nop
	lw      $t8, 0x0058($sp)
	nop
	lw      $t9, 0x001C($t8)
	nop
	sw      $t9, 0x005C($sp)
	lw      $t0, 0x005C($sp)
	nop
	beqz    $t0, .L8017F330
	nop
.L8017F2F8:
	lw      $t1, 0x005C($sp)
	lw      $a1, 0x0060($sp)
	lw      $a0, 0x0008($t1)
	jal     face_object_8017F194
	nop
	lw      $t2, 0x005C($sp)
	nop
	lw      $t3, 0x0004($t2)
	nop
	sw      $t3, 0x005C($sp)
	lw      $t4, 0x005C($sp)
	nop
	bnez    $t4, .L8017F2F8
	nop
.L8017F330:
	b       .L8017F340
	move    $v0, $0
	b       .L8017F340
	nop
.L8017F340:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0060
	jr      $ra
	nop

face_object_8017F350:
	addiu   $sp, $sp, -0x0070
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0070($sp)
	sw      $a1, 0x0074($sp)
	sw      $s0, 0x0018($sp)
	sw      $0, 0x0028($sp)
	lw      $t6, 0x0028($sp)
	nop
	addiu   $t7, $t6, 0x0001
	sw      $t7, 0x0028($sp)
	lw      $t8, 0x0074($sp)
	nop
	beqz    $t8, .L8017F400
	nop
	lw      $a0, 0x0074($sp)
	jal     face_dynlist_80186C84
	nop
	jal     dGetMatrixPtr
	nop
	sw      $v0, 0x0060($sp)
	jal     dGetRMatrixPtr
	nop
	sw      $v0, 0x0054($sp)
	lw      $a0, 0x0070($sp)
	jal     face_dynlist_80186C84
	nop
	jal     dGetIMatrixPtr
	nop
	sw      $v0, 0x005C($sp)
	jal     dGetRMatrixPtr
	nop
	sw      $v0, 0x0050($sp)
	jal     dGetScale
	addiu   $a0, $sp, 0x002C
	lw      $a0, 0x005C($sp)
	lw      $a1, 0x0054($sp)
	lw      $a2, 0x0050($sp)
	jal     face_math_80196754
	nop
	lw      $a0, 0x0050($sp)
	jal     face_math_8019429C
	addiu   $a1, $sp, 0x002C
	b       .L8017F454
	nop
.L8017F400:
	lw      $a0, 0x0070($sp)
	jal     face_dynlist_80186C84
	nop
	jal     dGetMatrixPtr
	nop
	sw      $v0, 0x0058($sp)
	jal     dGetIMatrixPtr
	nop
	sw      $v0, 0x005C($sp)
	jal     dGetRMatrixPtr
	nop
	sw      $v0, 0x0054($sp)
	jal     dGetScale
	addiu   $a0, $sp, 0x002C
	lw      $a0, 0x005C($sp)
	lw      $a1, 0x0054($sp)
	jal     face_math_801964A0
	nop
	lw      $a0, 0x0054($sp)
	jal     face_math_8019429C
	addiu   $a1, $sp, 0x002C
.L8017F454:
	lw      $a0, 0x0070($sp)
	jal     face_dynlist_80186C84
	nop
	jal     dGetAttObjGroup
	nop
	sw      $v0, 0x0068($sp)
	lw      $t9, 0x0068($sp)
	nop
	beqz    $t9, .L8017F4E8
	nop
	lw      $t0, 0x0068($sp)
	nop
	lw      $t1, 0x001C($t0)
	nop
	sw      $t1, 0x006C($sp)
	lw      $t2, 0x006C($sp)
	nop
	beqz    $t2, .L8017F4E8
	nop
.L8017F4A0:
	lw      $t3, 0x006C($sp)
	lw      $a1, 0x0070($sp)
	lw      $a0, 0x0008($t3)
	jal     face_object_8017F350
	nop
	lw      $t4, 0x0028($sp)
	move    $s0, $v0
	addu    $t5, $t4, $s0
	sw      $t5, 0x0028($sp)
	lw      $t6, 0x006C($sp)
	nop
	lw      $t7, 0x0004($t6)
	nop
	sw      $t7, 0x006C($sp)
	lw      $t8, 0x006C($sp)
	nop
	bnez    $t8, .L8017F4A0
	nop
.L8017F4E8:
	lw      $v0, 0x0028($sp)
	b       .L8017F4FC
	nop
	b       .L8017F4FC
	nop
.L8017F4FC:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0070

face_object_8017F50C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	lui     $a1, %hi(_face_bss+0x528)
	lw      $a1, %lo(_face_bss+0x528)($a1)
	jal     face_math_80196570
	addiu   $a0, $a0, 0x0020
	b       .L8017F534
	nop
.L8017F534:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

face_object_8017F544:
	addiu   $sp, $sp, -0x0030
	sw      $a1, 0x0034($sp)
	sw      $a2, 0x0038($sp)
	swc1    $f12, 0x0030($sp)
	b       .L8017F55C
	nop
.L8017F55C:
	jr      $ra
	addiu   $sp, $sp, 0x0030

face_object_8017F564:
	addiu   $sp, $sp, -0x0080
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0080($sp)
	sw      $a1, 0x0084($sp)
	sw      $a2, 0x0088($sp)
	jal     face_math_801963C0
	addiu   $a0, $sp, 0x0040
	lwc1    $f4, 0x0088($sp)
	mtc1    $0, $f6
	nop
	c.eq.s  $f4, $f6
	nop
	bc1t    .L8017F6A8
	nop
	lw      $t6, 0x0084($sp)
	lw      $t7, 0x0080($sp)
	lwc1    $f8, 0x000C($t6)
	lwc1    $f10, 0x000C($t7)
	lwc1    $f18, 0x0088($sp)
	sub.s   $f16, $f8, $f10
	mul.s   $f4, $f16, $f18
	add.s   $f6, $f10, $f4
	swc1    $f6, 0x0028($sp)
	lw      $t8, 0x0084($sp)
	lw      $t9, 0x0080($sp)
	lwc1    $f8, 0x0010($t8)
	lwc1    $f16, 0x0010($t9)
	lwc1    $f10, 0x0088($sp)
	sub.s   $f18, $f8, $f16
	mul.s   $f4, $f18, $f10
	add.s   $f6, $f16, $f4
	swc1    $f6, 0x002C($sp)
	lw      $t0, 0x0084($sp)
	lw      $t1, 0x0080($sp)
	lwc1    $f8, 0x0014($t0)
	lwc1    $f18, 0x0014($t1)
	lwc1    $f16, 0x0088($sp)
	sub.s   $f10, $f8, $f18
	mul.s   $f4, $f10, $f16
	add.s   $f6, $f18, $f4
	swc1    $f6, 0x0030($sp)
	lw      $t2, 0x0084($sp)
	lw      $t3, 0x0080($sp)
	lwc1    $f8, 0x0018($t2)
	lwc1    $f10, 0x0018($t3)
	lwc1    $f18, 0x0088($sp)
	sub.s   $f16, $f8, $f10
	mul.s   $f4, $f16, $f18
	add.s   $f6, $f10, $f4
	swc1    $f6, 0x0034($sp)
	lw      $t4, 0x0084($sp)
	lw      $t5, 0x0080($sp)
	lwc1    $f8, 0x001C($t4)
	lwc1    $f16, 0x001C($t5)
	lwc1    $f10, 0x0088($sp)
	sub.s   $f18, $f8, $f16
	mul.s   $f4, $f18, $f10
	add.s   $f6, $f16, $f4
	swc1    $f6, 0x0038($sp)
	lw      $t6, 0x0084($sp)
	lw      $t7, 0x0080($sp)
	lwc1    $f8, 0x0020($t6)
	lwc1    $f18, 0x0020($t7)
	lwc1    $f16, 0x0088($sp)
	sub.s   $f10, $f8, $f18
	mul.s   $f4, $f10, $f16
	add.s   $f6, $f18, $f4
	swc1    $f6, 0x003C($sp)
	lw      $a1, 0x0080($sp)
	jal     face_math_8019429C
	addiu   $a0, $sp, 0x0040
	addiu   $a1, $sp, 0x001C
	addiu   $a1, $a1, 0x000C
	jal     face_math_80194360
	addiu   $a0, $sp, 0x0040
	addiu   $a1, $sp, 0x001C
	addiu   $a1, $a1, 0x0018
	jal     face_math_80194424
	addiu   $a0, $sp, 0x0040
	b       .L8017F6E4
	nop
.L8017F6A8:
	lw      $t8, 0x0080($sp)
	nop
	lwc1    $f12, 0x0000($t8)
	lwc1    $f14, 0x0004($t8)
	lw      $a2, 0x0008($t8)
	jal     dSetScale
	nop
	lw      $a1, 0x0080($sp)
	addiu   $a0, $sp, 0x0040
	jal     face_math_80194360
	addiu   $a1, $a1, 0x000C
	lw      $a1, 0x0080($sp)
	addiu   $a0, $sp, 0x0040
	jal     face_math_80194424
	addiu   $a1, $a1, 0x0018
.L8017F6E4:
	jal     dSetIMatrix
	addiu   $a0, $sp, 0x0040
	b       .L8017F6F4
	nop
.L8017F6F4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0080
	jr      $ra
	nop

move_animator:
	addiu   $sp, $sp, -0x0100
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0100($sp)
	sw      $s0, 0x0018($sp)
	sw      $0, 0x0058($sp)
	sw      $0, 0x0054($sp)
	lui     $at, %hi(face_object_801B5E98)
	lwc1    $f4, %lo(face_object_801B5E98)($at)
	nop
	swc1    $f4, 0x002C($sp)
	lw      $t6, 0x0100($sp)
	nop
	lw      $t7, 0x0048($t6)
	nop
	beqz    $t7, .L8017F75C
	nop
	lw      $t8, 0x0100($sp)
	nop
	lw      $t9, 0x0048($t8)
	move    $a0, $t8
	jalr    $t9
	nop
.L8017F75C:
	lw      $t0, 0x0100($sp)
	nop
	lw      $t1, 0x0014($t0)
	nop
	bnez    $t1, .L8017F77C
	nop
	b       .L80180754
	nop
.L8017F77C:
	lw      $t2, 0x0100($sp)
	nop
	lw      $t3, 0x0018($t2)
	nop
	lw      $t4, 0x001C($t3)
	nop
	lw      $t5, 0x0008($t4)
	nop
	sw      $t5, 0x00FC($sp)
	lw      $t6, 0x0100($sp)
	nop
	lw      $t7, 0x0044($t6)
	nop
	beqz    $t7, .L8017F808
	nop
	lw      $t8, 0x0100($sp)
	nop
	lw      $t9, 0x0044($t8)
	nop
	lwc1    $f6, 0x0028($t9)
	lwc1    $f8, 0x0024($t9)
	nop
	div.s   $f10, $f6, $f8
	swc1    $f10, 0x0028($t8)
	lw      $t1, 0x0100($sp)
	lw      $t0, 0x00FC($sp)
	lw      $t2, 0x0044($t1)
	nop
	lw      $t3, 0x0020($t2)
	nop
	sll     $t4, $t3, 2
	subu    $t4, $t4, $t3
	sll     $t4, $t4, 2
	addu    $t5, $t0, $t4
	sw      $t5, 0x00FC($sp)
.L8017F808:
	lw      $t6, 0x00FC($sp)
	nop
	lw      $t7, 0x0004($t6)
	nop
	bnez    $t7, .L8017F828
	nop
	b       .L80180754
	nop
.L8017F828:
	li      $at, 0x40800000
	mtc1    $at, $f16
	nop
	swc1    $f16, 0x003C($sp)
	li      $at, 0x3F800000
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x0040($sp)
	li      $at, 0x3F800000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0044($sp)
	lw      $t8, 0x00FC($sp)
	lw      $t9, 0x0100($sp)
	lw      $t1, 0x0000($t8)
	lwc1    $f6, 0x0028($t9)
	mtc1    $t1, $f8
	nop
	cvt.s.w $f10, $f8
	c.lt.s  $f10, $f6
	nop
	bc1f    .L8017F898
	nop
	li      $at, 0x3F800000
	mtc1    $at, $f16
	lw      $t2, 0x0100($sp)
	b       .L8017F8D8
	swc1    $f16, 0x0028($t2)
.L8017F898:
	lw      $t3, 0x0100($sp)
	mtc1    $0, $f4
	lwc1    $f18, 0x0028($t3)
	nop
	c.lt.s  $f18, $f4
	nop
	bc1f    .L8017F8D8
	nop
	lw      $t0, 0x00FC($sp)
	lw      $t5, 0x0100($sp)
	lw      $t4, 0x0000($t0)
	nop
	mtc1    $t4, $f8
	nop
	cvt.s.w $f6, $f8
	swc1    $f6, 0x0028($t5)
.L8017F8D8:
	cfc1    $t7, $31
	lw      $t6, 0x0100($sp)
	ori     $at, $t7, 0x0003
	xori    $at, $at, 0x0002
	ctc1    $at, $31
	lwc1    $f10, 0x0028($t6)
	nop
	cvt.w.s $f16, $f10
	mfc1    $t9, $f16
	ctc1    $t7, $31
	sw      $t9, 0x0038($sp)
	nop
	lw      $t1, 0x0038($sp)
	lw      $t8, 0x0100($sp)
	mtc1    $t1, $f4
	lwc1    $f18, 0x0028($t8)
	cvt.s.w $f8, $f4
	sub.s   $f6, $f18, $f8
	swc1    $f6, 0x0030($sp)
	lw      $t2, 0x0038($sp)
	nop
	addiu   $t3, $t2, 0x0001
	sw      $t3, 0x0034($sp)
	lw      $t4, 0x00FC($sp)
	lw      $t0, 0x0034($sp)
	lw      $t5, 0x0000($t4)
	nop
	slt     $at, $t5, $t0
	beqz    $at, .L8017F958
	nop
	li      $t6, 0x0001
	sw      $t6, 0x0034($sp)
.L8017F958:
	lw      $t7, 0x0038($sp)
	nop
	addiu   $t9, $t7, -0x0001
	sw      $t9, 0x0038($sp)
	lw      $t8, 0x0034($sp)
	nop
	addiu   $t1, $t8, -0x0001
	sw      $t1, 0x0034($sp)
	lw      $t2, 0x0100($sp)
	nop
	lw      $t3, 0x0014($t2)
	nop
	lw      $s0, 0x001C($t3)
	nop
	beqz    $s0, .L8018074C
	nop
.L8017F998:
	lw      $t4, 0x0008($s0)
	nop
	sw      $t4, 0x0020($sp)
	lw      $a0, 0x0020($sp)
	jal     face_dynlist_80186C84
	nop
	lw      $t0, 0x00FC($sp)
	nop
	lw      $t5, 0x0004($t0)
	nop
	addiu   $t6, $t5, -0x0001
	sltiu   $at, $t6, 0x000B
	beqz    $at, L80180730
	nop
	sll     $t6, $t6, 2
	lui     $at, %hi(face_object_801B5E9C)
	addu    $at, $at, $t6
	lw      $t6, %lo(face_object_801B5E9C)($at)
	nop
	jr      $t6
	nop
.globl L8017F9EC
L8017F9EC:
	lw      $t7, 0x00FC($sp)
	nop
	lw      $t9, 0x0008($t7)
	nop
	sw      $t9, 0x00F8($sp)
	cfc1    $t1, $31
	lw      $t8, 0x0100($sp)
	ori     $at, $t1, 0x0003
	xori    $at, $at, 0x0002
	ctc1    $at, $31
	lwc1    $f10, 0x0028($t8)
	lw      $t4, 0x00F8($sp)
	cvt.w.s $f16, $f10
	mfc1    $t2, $f16
	ctc1    $t1, $31
	sll     $t3, $t2, 6
	jal     dSetIMatrix
	addu    $a0, $t3, $t4
	b       .L8018073C
	nop
.globl L8017FA3C
L8017FA3C:
	lw      $t0, 0x00FC($sp)
	nop
	lw      $t5, 0x0008($t0)
	nop
	sw      $t5, 0x0064($sp)
	jal     dGetScale
	addiu   $a0, $sp, 0x0090
	lwc1    $f4, 0x0090($sp)
	nop
	swc1    $f4, 0x006C($sp)
	lwc1    $f18, 0x0094($sp)
	nop
	swc1    $f18, 0x0070($sp)
	lwc1    $f8, 0x0098($sp)
	nop
	swc1    $f8, 0x0074($sp)
	addiu   $a0, $sp, 0x0090
	jal     dGetInitPos
	addiu   $a0, $a0, 0x0018
	lwc1    $f6, 0x00A8($sp)
	nop
	swc1    $f6, 0x0084($sp)
	lwc1    $f10, 0x00AC($sp)
	nop
	swc1    $f10, 0x0088($sp)
	lwc1    $f16, 0x00B0($sp)
	nop
	swc1    $f16, 0x008C($sp)
	lw      $t7, 0x0038($sp)
	lw      $t6, 0x0064($sp)
	sll     $t9, $t7, 2
	subu    $t9, $t9, $t7
	sll     $t9, $t9, 1
	addu    $t8, $t6, $t9
	lh      $t1, 0x0000($t8)
	lwc1    $f8, 0x002C($sp)
	mtc1    $t1, $f4
	nop
	cvt.s.w $f18, $f4
	mul.s   $f6, $f18, $f8
	swc1    $f6, 0x009C($sp)
	lw      $t3, 0x0038($sp)
	lw      $t2, 0x0064($sp)
	sll     $t4, $t3, 2
	subu    $t4, $t4, $t3
	sll     $t4, $t4, 1
	addu    $t0, $t2, $t4
	lh      $t5, 0x0002($t0)
	lwc1    $f4, 0x002C($sp)
	mtc1    $t5, $f10
	nop
	cvt.s.w $f16, $f10
	mul.s   $f18, $f16, $f4
	swc1    $f18, 0x00A0($sp)
	lw      $t6, 0x0038($sp)
	lw      $t7, 0x0064($sp)
	sll     $t9, $t6, 2
	subu    $t9, $t9, $t6
	sll     $t9, $t9, 1
	addu    $t8, $t7, $t9
	lh      $t1, 0x0004($t8)
	lwc1    $f10, 0x002C($sp)
	mtc1    $t1, $f8
	nop
	cvt.s.w $f6, $f8
	mul.s   $f16, $f6, $f10
	swc1    $f16, 0x00A4($sp)
	lw      $t2, 0x0034($sp)
	lw      $t3, 0x0064($sp)
	sll     $t4, $t2, 2
	subu    $t4, $t4, $t2
	sll     $t4, $t4, 1
	addu    $t0, $t3, $t4
	lh      $t5, 0x0000($t0)
	lwc1    $f8, 0x002C($sp)
	mtc1    $t5, $f4
	nop
	cvt.s.w $f18, $f4
	mul.s   $f6, $f18, $f8
	swc1    $f6, 0x0078($sp)
	lw      $t7, 0x0034($sp)
	lw      $t6, 0x0064($sp)
	sll     $t9, $t7, 2
	subu    $t9, $t9, $t7
	sll     $t9, $t9, 1
	addu    $t8, $t6, $t9
	lh      $t1, 0x0002($t8)
	lwc1    $f4, 0x002C($sp)
	mtc1    $t1, $f10
	nop
	cvt.s.w $f16, $f10
	mul.s   $f18, $f16, $f4
	swc1    $f18, 0x007C($sp)
	lw      $t3, 0x0034($sp)
	lw      $t2, 0x0064($sp)
	sll     $t4, $t3, 2
	subu    $t4, $t4, $t3
	sll     $t4, $t4, 1
	addu    $t0, $t2, $t4
	lh      $t5, 0x0004($t0)
	lwc1    $f10, 0x002C($sp)
	mtc1    $t5, $f8
	nop
	cvt.s.w $f6, $f8
	mul.s   $f16, $f6, $f10
	swc1    $f16, 0x0080($sp)
	lw      $a2, 0x0030($sp)
	addiu   $a0, $sp, 0x0090
	jal     face_object_8017F564
	addiu   $a1, $sp, 0x006C
	b       .L8018073C
	nop
.globl L8017FBFC
L8017FBFC:
	lw      $t7, 0x00FC($sp)
	nop
	lw      $t6, 0x0008($t7)
	nop
	sw      $t6, 0x0064($sp)
	jal     dGetScale
	addiu   $a0, $sp, 0x0090
	lwc1    $f4, 0x0090($sp)
	nop
	swc1    $f4, 0x006C($sp)
	lwc1    $f18, 0x0094($sp)
	nop
	swc1    $f18, 0x0070($sp)
	lwc1    $f8, 0x0098($sp)
	nop
	swc1    $f8, 0x0074($sp)
	addiu   $a0, $sp, 0x0090
	jal     dGetInitRot
	addiu   $a0, $a0, 0x000C
	lwc1    $f6, 0x009C($sp)
	nop
	swc1    $f6, 0x0078($sp)
	lwc1    $f10, 0x00A0($sp)
	nop
	swc1    $f10, 0x007C($sp)
	lwc1    $f16, 0x00A4($sp)
	nop
	swc1    $f16, 0x0080($sp)
	lw      $t8, 0x0038($sp)
	lw      $t9, 0x0064($sp)
	sll     $t1, $t8, 2
	subu    $t1, $t1, $t8
	sll     $t1, $t1, 1
	addu    $t3, $t9, $t1
	lh      $t2, 0x0000($t3)
	nop
	mtc1    $t2, $f4
	nop
	cvt.s.w $f18, $f4
	swc1    $f18, 0x00A8($sp)
	lw      $t0, 0x0038($sp)
	lw      $t4, 0x0064($sp)
	sll     $t5, $t0, 2
	subu    $t5, $t5, $t0
	sll     $t5, $t5, 1
	addu    $t7, $t4, $t5
	lh      $t6, 0x0002($t7)
	nop
	mtc1    $t6, $f8
	nop
	cvt.s.w $f6, $f8
	swc1    $f6, 0x00AC($sp)
	lw      $t9, 0x0038($sp)
	lw      $t8, 0x0064($sp)
	sll     $t1, $t9, 2
	subu    $t1, $t1, $t9
	sll     $t1, $t1, 1
	addu    $t3, $t8, $t1
	lh      $t2, 0x0004($t3)
	nop
	mtc1    $t2, $f10
	nop
	cvt.s.w $f16, $f10
	swc1    $f16, 0x00B0($sp)
	lw      $t4, 0x0034($sp)
	lw      $t0, 0x0064($sp)
	sll     $t5, $t4, 2
	subu    $t5, $t5, $t4
	sll     $t5, $t5, 1
	addu    $t7, $t0, $t5
	lh      $t6, 0x0000($t7)
	nop
	mtc1    $t6, $f4
	nop
	cvt.s.w $f18, $f4
	swc1    $f18, 0x0084($sp)
	lw      $t8, 0x0034($sp)
	lw      $t9, 0x0064($sp)
	sll     $t1, $t8, 2
	subu    $t1, $t1, $t8
	sll     $t1, $t1, 1
	addu    $t3, $t9, $t1
	lh      $t2, 0x0002($t3)
	nop
	mtc1    $t2, $f8
	nop
	cvt.s.w $f6, $f8
	swc1    $f6, 0x0088($sp)
	lw      $t0, 0x0034($sp)
	lw      $t4, 0x0064($sp)
	sll     $t5, $t0, 2
	subu    $t5, $t5, $t0
	sll     $t5, $t5, 1
	addu    $t7, $t4, $t5
	lh      $t6, 0x0004($t7)
	nop
	mtc1    $t6, $f10
	nop
	cvt.s.w $f16, $f10
	swc1    $f16, 0x008C($sp)
	lw      $a2, 0x0030($sp)
	addiu   $a0, $sp, 0x0090
	jal     face_object_8017F564
	addiu   $a1, $sp, 0x006C
	b       .L8018073C
	nop
.globl L8017FDA4
L8017FDA4:
	lw      $t8, 0x00FC($sp)
	nop
	lw      $t9, 0x0008($t8)
	nop
	sw      $t9, 0x0060($sp)
	jal     dGetScale
	addiu   $a0, $sp, 0x0090
	lwc1    $f4, 0x0090($sp)
	nop
	swc1    $f4, 0x006C($sp)
	lwc1    $f18, 0x0094($sp)
	nop
	swc1    $f18, 0x0070($sp)
	lwc1    $f8, 0x0098($sp)
	nop
	swc1    $f8, 0x0074($sp)
	lw      $t3, 0x0038($sp)
	lw      $t1, 0x0060($sp)
	sll     $t2, $t3, 2
	subu    $t2, $t2, $t3
	sll     $t2, $t2, 2
	addu    $t0, $t1, $t2
	lh      $t4, 0x0000($t0)
	lwc1    $f16, 0x002C($sp)
	mtc1    $t4, $f6
	nop
	cvt.s.w $f10, $f6
	mul.s   $f4, $f10, $f16
	swc1    $f4, 0x009C($sp)
	lw      $t7, 0x0038($sp)
	lw      $t5, 0x0060($sp)
	sll     $t6, $t7, 2
	subu    $t6, $t6, $t7
	sll     $t6, $t6, 2
	addu    $t8, $t5, $t6
	lh      $t9, 0x0002($t8)
	lwc1    $f6, 0x002C($sp)
	mtc1    $t9, $f18
	nop
	cvt.s.w $f8, $f18
	mul.s   $f10, $f8, $f6
	swc1    $f10, 0x00A0($sp)
	lw      $t1, 0x0038($sp)
	lw      $t3, 0x0060($sp)
	sll     $t2, $t1, 2
	subu    $t2, $t2, $t1
	sll     $t2, $t2, 2
	addu    $t0, $t3, $t2
	lh      $t4, 0x0004($t0)
	lwc1    $f18, 0x002C($sp)
	mtc1    $t4, $f16
	nop
	cvt.s.w $f4, $f16
	mul.s   $f8, $f4, $f18
	swc1    $f8, 0x00A4($sp)
	lw      $t5, 0x0034($sp)
	lw      $t7, 0x0060($sp)
	sll     $t6, $t5, 2
	subu    $t6, $t6, $t5
	sll     $t6, $t6, 2
	addu    $t8, $t7, $t6
	lh      $t9, 0x0000($t8)
	lwc1    $f16, 0x002C($sp)
	mtc1    $t9, $f6
	nop
	cvt.s.w $f10, $f6
	mul.s   $f4, $f10, $f16
	swc1    $f4, 0x0078($sp)
	lw      $t3, 0x0034($sp)
	lw      $t1, 0x0060($sp)
	sll     $t2, $t3, 2
	subu    $t2, $t2, $t3
	sll     $t2, $t2, 2
	addu    $t0, $t1, $t2
	lh      $t4, 0x0002($t0)
	lwc1    $f6, 0x002C($sp)
	mtc1    $t4, $f18
	nop
	cvt.s.w $f8, $f18
	mul.s   $f10, $f8, $f6
	swc1    $f10, 0x007C($sp)
	lw      $t7, 0x0034($sp)
	lw      $t5, 0x0060($sp)
	sll     $t6, $t7, 2
	subu    $t6, $t6, $t7
	sll     $t6, $t6, 2
	addu    $t8, $t5, $t6
	lh      $t9, 0x0004($t8)
	lwc1    $f18, 0x002C($sp)
	mtc1    $t9, $f16
	nop
	cvt.s.w $f4, $f16
	mul.s   $f8, $f4, $f18
	swc1    $f8, 0x0080($sp)
	lw      $t1, 0x0038($sp)
	lw      $t3, 0x0060($sp)
	sll     $t2, $t1, 2
	subu    $t2, $t2, $t1
	sll     $t2, $t2, 2
	addu    $t0, $t3, $t2
	lh      $t4, 0x0006($t0)
	nop
	mtc1    $t4, $f6
	nop
	cvt.s.w $f10, $f6
	swc1    $f10, 0x00A8($sp)
	lw      $t5, 0x0038($sp)
	lw      $t7, 0x0060($sp)
	sll     $t6, $t5, 2
	subu    $t6, $t6, $t5
	sll     $t6, $t6, 2
	addu    $t8, $t7, $t6
	lh      $t9, 0x0008($t8)
	nop
	mtc1    $t9, $f16
	nop
	cvt.s.w $f4, $f16
	swc1    $f4, 0x00AC($sp)
	lw      $t3, 0x0038($sp)
	lw      $t1, 0x0060($sp)
	sll     $t2, $t3, 2
	subu    $t2, $t2, $t3
	sll     $t2, $t2, 2
	addu    $t0, $t1, $t2
	lh      $t4, 0x000A($t0)
	nop
	mtc1    $t4, $f18
	nop
	cvt.s.w $f8, $f18
	swc1    $f8, 0x00B0($sp)
	lw      $t7, 0x0034($sp)
	lw      $t5, 0x0060($sp)
	sll     $t6, $t7, 2
	subu    $t6, $t6, $t7
	sll     $t6, $t6, 2
	addu    $t8, $t5, $t6
	lh      $t9, 0x0006($t8)
	nop
	mtc1    $t9, $f6
	nop
	cvt.s.w $f10, $f6
	swc1    $f10, 0x0084($sp)
	lw      $t1, 0x0034($sp)
	lw      $t3, 0x0060($sp)
	sll     $t2, $t1, 2
	subu    $t2, $t2, $t1
	sll     $t2, $t2, 2
	addu    $t0, $t3, $t2
	lh      $t4, 0x0008($t0)
	nop
	mtc1    $t4, $f16
	nop
	cvt.s.w $f4, $f16
	swc1    $f4, 0x0088($sp)
	lw      $t5, 0x0034($sp)
	lw      $t7, 0x0060($sp)
	sll     $t6, $t5, 2
	subu    $t6, $t6, $t5
	sll     $t6, $t6, 2
	addu    $t8, $t7, $t6
	lh      $t9, 0x000A($t8)
	nop
	mtc1    $t9, $f18
	nop
	cvt.s.w $f8, $f18
	swc1    $f8, 0x008C($sp)
	lw      $a2, 0x0030($sp)
	addiu   $a0, $sp, 0x0090
	jal     face_object_8017F564
	addiu   $a1, $sp, 0x006C
	b       .L8018073C
	nop
.globl L80180054
L80180054:
	lw      $t1, 0x00FC($sp)
	nop
	lw      $t3, 0x0008($t1)
	nop
	sw      $t3, 0x0068($sp)
	lw      $t0, 0x0038($sp)
	lw      $t2, 0x0068($sp)
	sll     $t4, $t0, 3
	addu    $t4, $t4, $t0
	sll     $t4, $t4, 1
	addu    $t5, $t2, $t4
	lh      $t7, 0x0000($t5)
	lwc1    $f16, 0x002C($sp)
	mtc1    $t7, $f6
	nop
	cvt.s.w $f10, $f6
	mul.s   $f4, $f10, $f16
	swc1    $f4, 0x0090($sp)
	lw      $t8, 0x0038($sp)
	lw      $t6, 0x0068($sp)
	sll     $t9, $t8, 3
	addu    $t9, $t9, $t8
	sll     $t9, $t9, 1
	addu    $t1, $t6, $t9
	lh      $t3, 0x0002($t1)
	lwc1    $f6, 0x002C($sp)
	mtc1    $t3, $f18
	nop
	cvt.s.w $f8, $f18
	mul.s   $f10, $f8, $f6
	swc1    $f10, 0x0094($sp)
	lw      $t2, 0x0038($sp)
	lw      $t0, 0x0068($sp)
	sll     $t4, $t2, 3
	addu    $t4, $t4, $t2
	sll     $t4, $t4, 1
	addu    $t5, $t0, $t4
	lh      $t7, 0x0004($t5)
	lwc1    $f18, 0x002C($sp)
	mtc1    $t7, $f16
	nop
	cvt.s.w $f4, $f16
	mul.s   $f8, $f4, $f18
	swc1    $f8, 0x0098($sp)
	lw      $t6, 0x0038($sp)
	lw      $t8, 0x0068($sp)
	sll     $t9, $t6, 3
	addu    $t9, $t9, $t6
	sll     $t9, $t9, 1
	addu    $t1, $t8, $t9
	lh      $t3, 0x0006($t1)
	lwc1    $f16, 0x002C($sp)
	mtc1    $t3, $f6
	nop
	cvt.s.w $f10, $f6
	mul.s   $f4, $f10, $f16
	swc1    $f4, 0x009C($sp)
	lw      $t0, 0x0038($sp)
	lw      $t2, 0x0068($sp)
	sll     $t4, $t0, 3
	addu    $t4, $t4, $t0
	sll     $t4, $t4, 1
	addu    $t5, $t2, $t4
	lh      $t7, 0x0008($t5)
	lwc1    $f6, 0x002C($sp)
	mtc1    $t7, $f18
	nop
	cvt.s.w $f8, $f18
	mul.s   $f10, $f8, $f6
	swc1    $f10, 0x00A0($sp)
	lw      $t8, 0x0038($sp)
	lw      $t6, 0x0068($sp)
	sll     $t9, $t8, 3
	addu    $t9, $t9, $t8
	sll     $t9, $t9, 1
	addu    $t1, $t6, $t9
	lh      $t3, 0x000A($t1)
	lwc1    $f18, 0x002C($sp)
	mtc1    $t3, $f16
	nop
	cvt.s.w $f4, $f16
	mul.s   $f8, $f4, $f18
	swc1    $f8, 0x00A4($sp)
	lw      $t2, 0x0038($sp)
	lw      $t0, 0x0068($sp)
	sll     $t4, $t2, 3
	addu    $t4, $t4, $t2
	sll     $t4, $t4, 1
	addu    $t5, $t0, $t4
	lh      $t7, 0x000C($t5)
	nop
	mtc1    $t7, $f6
	nop
	cvt.s.w $f10, $f6
	swc1    $f10, 0x00A8($sp)
	lw      $t6, 0x0038($sp)
	lw      $t8, 0x0068($sp)
	sll     $t9, $t6, 3
	addu    $t9, $t9, $t6
	sll     $t9, $t9, 1
	addu    $t1, $t8, $t9
	lh      $t3, 0x000E($t1)
	nop
	mtc1    $t3, $f16
	nop
	cvt.s.w $f4, $f16
	swc1    $f4, 0x00AC($sp)
	lw      $t0, 0x0038($sp)
	lw      $t2, 0x0068($sp)
	sll     $t4, $t0, 3
	addu    $t4, $t4, $t0
	sll     $t4, $t4, 1
	addu    $t5, $t2, $t4
	lh      $t7, 0x0010($t5)
	nop
	mtc1    $t7, $f18
	nop
	cvt.s.w $f8, $f18
	swc1    $f8, 0x00B0($sp)
	lw      $t8, 0x0034($sp)
	lw      $t6, 0x0068($sp)
	sll     $t9, $t8, 3
	addu    $t9, $t9, $t8
	sll     $t9, $t9, 1
	addu    $t1, $t6, $t9
	lh      $t3, 0x0000($t1)
	lwc1    $f16, 0x002C($sp)
	mtc1    $t3, $f6
	nop
	cvt.s.w $f10, $f6
	mul.s   $f4, $f10, $f16
	swc1    $f4, 0x006C($sp)
	lw      $t2, 0x0034($sp)
	lw      $t0, 0x0068($sp)
	sll     $t4, $t2, 3
	addu    $t4, $t4, $t2
	sll     $t4, $t4, 1
	addu    $t5, $t0, $t4
	lh      $t7, 0x0002($t5)
	lwc1    $f6, 0x002C($sp)
	mtc1    $t7, $f18
	nop
	cvt.s.w $f8, $f18
	mul.s   $f10, $f8, $f6
	swc1    $f10, 0x0070($sp)
	lw      $t6, 0x0034($sp)
	lw      $t8, 0x0068($sp)
	sll     $t9, $t6, 3
	addu    $t9, $t9, $t6
	sll     $t9, $t9, 1
	addu    $t1, $t8, $t9
	lh      $t3, 0x0004($t1)
	lwc1    $f18, 0x002C($sp)
	mtc1    $t3, $f16
	nop
	cvt.s.w $f4, $f16
	mul.s   $f8, $f4, $f18
	swc1    $f8, 0x0074($sp)
	lw      $t0, 0x0034($sp)
	lw      $t2, 0x0068($sp)
	sll     $t4, $t0, 3
	addu    $t4, $t4, $t0
	sll     $t4, $t4, 1
	addu    $t5, $t2, $t4
	lh      $t7, 0x0006($t5)
	lwc1    $f16, 0x002C($sp)
	mtc1    $t7, $f6
	nop
	cvt.s.w $f10, $f6
	mul.s   $f4, $f10, $f16
	swc1    $f4, 0x0078($sp)
	lw      $t8, 0x0034($sp)
	lw      $t6, 0x0068($sp)
	sll     $t9, $t8, 3
	addu    $t9, $t9, $t8
	sll     $t9, $t9, 1
	addu    $t1, $t6, $t9
	lh      $t3, 0x0008($t1)
	lwc1    $f6, 0x002C($sp)
	mtc1    $t3, $f18
	nop
	cvt.s.w $f8, $f18
	mul.s   $f10, $f8, $f6
	swc1    $f10, 0x007C($sp)
	lw      $t2, 0x0034($sp)
	lw      $t0, 0x0068($sp)
	sll     $t4, $t2, 3
	addu    $t4, $t4, $t2
	sll     $t4, $t4, 1
	addu    $t5, $t0, $t4
	lh      $t7, 0x000A($t5)
	lwc1    $f18, 0x002C($sp)
	mtc1    $t7, $f16
	nop
	cvt.s.w $f4, $f16
	mul.s   $f8, $f4, $f18
	swc1    $f8, 0x0080($sp)
	lw      $t6, 0x0034($sp)
	lw      $t8, 0x0068($sp)
	sll     $t9, $t6, 3
	addu    $t9, $t9, $t6
	sll     $t9, $t9, 1
	addu    $t1, $t8, $t9
	lh      $t3, 0x000C($t1)
	nop
	mtc1    $t3, $f6
	nop
	cvt.s.w $f10, $f6
	swc1    $f10, 0x0084($sp)
	lw      $t0, 0x0034($sp)
	lw      $t2, 0x0068($sp)
	sll     $t4, $t0, 3
	addu    $t4, $t4, $t0
	sll     $t4, $t4, 1
	addu    $t5, $t2, $t4
	lh      $t7, 0x000E($t5)
	nop
	mtc1    $t7, $f16
	nop
	cvt.s.w $f4, $f16
	swc1    $f4, 0x0088($sp)
	lw      $t8, 0x0034($sp)
	lw      $t6, 0x0068($sp)
	sll     $t9, $t8, 3
	addu    $t9, $t9, $t8
	sll     $t9, $t9, 1
	addu    $t1, $t6, $t9
	lh      $t3, 0x0010($t1)
	nop
	mtc1    $t3, $f18
	nop
	cvt.s.w $f8, $f18
	swc1    $f8, 0x008C($sp)
	lw      $a2, 0x0030($sp)
	addiu   $a0, $sp, 0x0090
	jal     face_object_8017F564
	addiu   $a1, $sp, 0x006C
	b       .L8018073C
	nop
.globl L80180410
L80180410:
	lw      $t0, 0x0020($sp)
	li      $at, 0x0200
	lw      $t2, 0x000C($t0)
	nop
	bne     $t2, $at, .L801805BC
	nop
	lw      $t4, 0x00FC($sp)
	nop
	lw      $t5, 0x0008($t4)
	nop
	sw      $t5, 0x005C($sp)
	lw      $t8, 0x0038($sp)
	lw      $t7, 0x005C($sp)
	sll     $t6, $t8, 2
	subu    $t6, $t6, $t8
	sll     $t6, $t6, 2
	addu    $t9, $t7, $t6
	lh      $t1, 0x0000($t9)
	nop
	mtc1    $t1, $f6
	nop
	cvt.s.w $f10, $f6
	swc1    $f10, 0x00A8($sp)
	lw      $t0, 0x0038($sp)
	lw      $t3, 0x005C($sp)
	sll     $t2, $t0, 2
	subu    $t2, $t2, $t0
	sll     $t2, $t2, 2
	addu    $t4, $t3, $t2
	lh      $t5, 0x0002($t4)
	nop
	mtc1    $t5, $f16
	nop
	cvt.s.w $f4, $f16
	swc1    $f4, 0x00AC($sp)
	lw      $t7, 0x0038($sp)
	lw      $t8, 0x005C($sp)
	sll     $t6, $t7, 2
	subu    $t6, $t6, $t7
	sll     $t6, $t6, 2
	addu    $t9, $t8, $t6
	lh      $t1, 0x0004($t9)
	nop
	mtc1    $t1, $f18
	nop
	cvt.s.w $f8, $f18
	swc1    $f8, 0x00B0($sp)
	lw      $t3, 0x0038($sp)
	lw      $t0, 0x005C($sp)
	sll     $t2, $t3, 2
	subu    $t2, $t2, $t3
	sll     $t2, $t2, 2
	addu    $t4, $t0, $t2
	lh      $t5, 0x0006($t4)
	nop
	mtc1    $t5, $f6
	nop
	cvt.s.w $f10, $f6
	swc1    $f10, 0x0084($sp)
	lw      $t8, 0x0038($sp)
	lw      $t7, 0x005C($sp)
	sll     $t6, $t8, 2
	subu    $t6, $t6, $t8
	sll     $t6, $t6, 2
	addu    $t9, $t7, $t6
	lh      $t1, 0x0008($t9)
	nop
	mtc1    $t1, $f16
	nop
	cvt.s.w $f4, $f16
	swc1    $f4, 0x0088($sp)
	lw      $t0, 0x0038($sp)
	lw      $t3, 0x005C($sp)
	sll     $t2, $t0, 2
	subu    $t2, $t2, $t0
	sll     $t2, $t2, 2
	addu    $t4, $t3, $t2
	lh      $t5, 0x000A($t4)
	nop
	mtc1    $t5, $f18
	nop
	cvt.s.w $f8, $f18
	swc1    $f8, 0x008C($sp)
	lwc1    $f6, 0x00A8($sp)
	lw      $t8, 0x0020($sp)
	nop
	swc1    $f6, 0x0014($t8)
	lwc1    $f10, 0x00AC($sp)
	lw      $t7, 0x0020($sp)
	nop
	swc1    $f10, 0x0018($t7)
	lwc1    $f16, 0x00B0($sp)
	lw      $t6, 0x0020($sp)
	nop
	swc1    $f16, 0x001C($t6)
	lwc1    $f4, 0x0084($sp)
	lw      $t9, 0x0020($sp)
	nop
	swc1    $f4, 0x0034($t9)
	lwc1    $f18, 0x0088($sp)
	lw      $t1, 0x0020($sp)
	nop
	swc1    $f18, 0x0038($t1)
	lwc1    $f8, 0x008C($sp)
	lw      $t0, 0x0020($sp)
	nop
	swc1    $f8, 0x003C($t0)
.L801805BC:
	b       .L8018073C
	nop
.globl L801805C4
L801805C4:
	lw      $t3, 0x00FC($sp)
	nop
	lw      $t2, 0x0008($t3)
	nop
	sw      $t2, 0x00B4($sp)
	lw      $t4, 0x0038($sp)
	lw      $t7, 0x0034($sp)
	lw      $t8, 0x00B4($sp)
	sll     $t5, $t4, 3
	sll     $t6, $t7, 3
	addu    $t5, $t5, $t4
	addu    $t6, $t6, $t7
	sll     $t6, $t6, 2
	sll     $t5, $t5, 2
	lw      $a2, 0x0030($sp)
	addu    $a0, $t5, $t8
	jal     face_object_8017F564
	addu    $a1, $t6, $t8
	b       .L8018073C
	nop
.globl L80180614
L80180614:
	lw      $t0, 0x0038($sp)
	lw      $t9, 0x00FC($sp)
	sll     $t3, $t0, 2
	addu    $t3, $t3, $t0
	sll     $t3, $t3, 2
	lw      $t1, 0x0008($t9)
	subu    $t3, $t3, $t0
	sll     $t3, $t3, 2
	addu    $t2, $t1, $t3
	sw      $t2, 0x0028($sp)
	lw      $a0, 0x0028($sp)
	jal     dSetIMatrix
	nop
	lw      $t4, 0x0028($sp)
	nop
	lwc1    $f12, 0x0040($t4)
	lwc1    $f14, 0x0044($t4)
	lw      $a2, 0x0048($t4)
	jal     dSetScale
	nop
	b       .L8018073C
	nop
.globl L8018066C
L8018066C:
	lw      $t5, 0x00FC($sp)
	nop
	lw      $t7, 0x0008($t5)
	nop
	sw      $t7, 0x00B4($sp)
	jal     face_math_801963C0
	addiu   $a0, $sp, 0x00B8
	lw      $a1, 0x00B4($sp)
	jal     face_math_8019429C
	addiu   $a0, $sp, 0x00B8
	lw      $a1, 0x00B4($sp)
	addiu   $a0, $sp, 0x00B8
	jal     face_math_80194360
	addiu   $a1, $a1, 0x000C
	lw      $a1, 0x00B4($sp)
	addiu   $a0, $sp, 0x00B8
	jal     face_math_80194424
	addiu   $a1, $a1, 0x0018
	jal     dSetIMatrix
	addiu   $a0, $sp, 0x00B8
	b       .L8018073C
	nop
.globl L801806C4
L801806C4:
	lw      $t6, 0x0058($sp)
	nop
	bnez    $t6, .L801806E0
	nop
	lw      $t8, 0x0020($sp)
	b       .L80180728
	sw      $t8, 0x0058($sp)
.L801806E0:
	lw      $t9, 0x0054($sp)
	nop
	bnez    $t9, .L8018071C
	nop
	lw      $t0, 0x0020($sp)
	nop
	sw      $t0, 0x0054($sp)
	lw      $t1, 0x0100($sp)
	lw      $a1, 0x0058($sp)
	lw      $a2, 0x0054($sp)
	lwc1    $f12, 0x0028($t1)
	jal     face_object_8017F544
	nop
	b       .L80180728
	nop
.L8018071C:
	la.u    $a0, str_face_object_801B5C48
	jal     face_stdio_8018D298
	la.l    $a0, str_face_object_801B5C48
.L80180728:
	b       .L8018073C
	nop
.globl L80180730
L80180730:
	la.u    $a0, str_face_object_801B5C64
	jal     face_stdio_8018D298
	la.l    $a0, str_face_object_801B5C64
.L8018073C:
	lw      $s0, 0x0004($s0)
	nop
	bnez    $s0, .L8017F998
	nop
.L8018074C:
	b       .L80180754
	nop
.L80180754:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0100

face_object_80180764:
	addiu   $sp, $sp, -0x00E8
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x00E8($sp)
	sw      $s1, 0x0018($sp)
	sw      $s0, 0x0014($sp)
	la.u    $t6, _face_bss+0x00
	la.l    $t6, _face_bss+0x00
	sw      $t6, 0x00C0($sp)
	lui     $t7, %hi(_face_draw_data+0x88)
	lw      $t7, %lo(_face_draw_data+0x88)($t7)
	nop
	bnez    $t7, .L801807A0
	nop
	b       .L80180A50
	nop
.L801807A0:
	lui     $a0, %hi(_face_draw_data+0x88)
	lw      $a0, %lo(_face_draw_data+0x88)($a0)
	jal     face_math_80194CD8
	addiu   $a0, $a0, 0x0040
	swc1    $f0, 0x0028($sp)
	li      $at, 0x447A0000
	mtc1    $at, $f6
	lwc1    $f4, 0x0028($sp)
	nop
	div.s   $f8, $f4, $f6
	swc1    $f8, 0x0028($sp)
	lw      $t8, 0x00C0($sp)
	lwc1    $f18, 0x0028($sp)
	lw      $t9, 0x00D0($t8)
	lw      $t0, 0x00B8($t8)
	nop
	subu    $t1, $t9, $t0
	mtc1    $t1, $f10
	nop
	cvt.s.w $f16, $f10
	mul.s   $f4, $f16, $f18
	swc1    $f4, 0x00D0($sp)
	lw      $t2, 0x00C0($sp)
	lwc1    $f10, 0x0028($sp)
	lw      $t3, 0x00D4($t2)
	lw      $t4, 0x00BC($t2)
	nop
	subu    $t5, $t3, $t4
	subu    $t6, $0, $t5
	mtc1    $t6, $f6
	nop
	cvt.s.w $f8, $f6
	mul.s   $f16, $f8, $f10
	swc1    $f16, 0x00D4($sp)
	mtc1    $0, $f18
	nop
	swc1    $f18, 0x00D8($sp)
	lui     $a0, %hi(_face_draw_data+0x88)
	lw      $a0, %lo(_face_draw_data+0x88)($a0)
	addiu   $a1, $sp, 0x0040
	jal     face_math_80194FBC
	addiu   $a0, $a0, 0x00E8
	addiu   $a0, $sp, 0x00D0
	jal     face_math_80196680
	addiu   $a1, $sp, 0x0040
	lw      $t7, 0x00E8($sp)
	nop
	sw      $t7, 0x0030($sp)
	lw      $t8, 0x00E8($sp)
	nop
	lhu     $t9, 0x0012($t8)
	nop
	andi    $t0, $t9, 0x0004
	beqz    $t0, .L80180A48
	nop
	lui     $t1, %hi(_face_bss+0xD8)
	lw      $t1, %lo(_face_bss+0xD8)($t1)
	nop
	srl     $t2, $t1, 31
	beqz    $t2, .L80180A48
	nop
	jal     face_sfx_80178254
	li      $a0, 0x0008
	lw      $t3, 0x00C0($sp)
	nop
	lw      $t4, 0x00C0($t3)
	nop
	bgez    $t4, .L801808BC
	nop
	b       .L801808CC
	subu    $s1, $0, $t4
.L801808BC:
	lw      $t5, 0x00C0($sp)
	nop
	lw      $s1, 0x00C0($t5)
	nop
.L801808CC:
	lw      $t6, 0x00C0($sp)
	nop
	lw      $t7, 0x00C4($t6)
	nop
	bgez    $t7, .L801808EC
	nop
	b       .L801808FC
	subu    $s0, $0, $t7
.L801808EC:
	lw      $t8, 0x00C0($sp)
	nop
	lw      $s0, 0x00C4($t8)
	nop
.L801808FC:
	addu    $t9, $s0, $s1
	slti    $at, $t9, 0x000B
	bnez    $at, .L80180914
	nop
	jal     face_sfx_80178254
	li      $a0, 0x0010
.L80180914:
	lw      $t0, 0x00E8($sp)
	li      $at, 0x0004
	lw      $s0, 0x000C($t0)
	nop
	beq     $s0, $at, .L80180958
	nop
	li      $at, 0x0008
	beq     $s0, $at, .L80180A40
	nop
	li      $at, 0x0020
	beq     $s0, $at, .L801809B0
	nop
	li      $at, 0x2000
	beq     $s0, $at, .L801809A8
	nop
	b       .L80180A48
	nop
.L80180958:
	lw      $t1, 0x0030($sp)
	lwc1    $f6, 0x00D0($sp)
	lwc1    $f4, 0x0158($t1)
	nop
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0158($t1)
	lw      $t2, 0x0030($sp)
	lwc1    $f16, 0x00D4($sp)
	lwc1    $f10, 0x015C($t2)
	nop
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x015C($t2)
	lw      $t3, 0x0030($sp)
	lwc1    $f6, 0x00D8($sp)
	lwc1    $f4, 0x0160($t3)
	nop
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0160($t3)
	b       .L80180A48
	nop
.L801809A8:
	b       .L80180A48
	nop
.L801809B0:
	lw      $a0, 0x0030($sp)
	addiu   $a1, $sp, 0x0080
	jal     face_math_80194FBC
	addiu   $a0, $a0, 0x0128
	lwc1    $f10, 0x00D0($sp)
	nop
	swc1    $f10, 0x00C4($sp)
	lwc1    $f16, 0x00D4($sp)
	nop
	swc1    $f16, 0x00C8($sp)
	lwc1    $f18, 0x00D8($sp)
	nop
	swc1    $f18, 0x00CC($sp)
	addiu   $a0, $sp, 0x00C4
	jal     face_math_80196680
	addiu   $a1, $sp, 0x0080
	lw      $t4, 0x0030($sp)
	lwc1    $f6, 0x00D0($sp)
	lwc1    $f4, 0x0118($t4)
	nop
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0118($t4)
	lw      $t5, 0x0030($sp)
	lwc1    $f16, 0x00D4($sp)
	lwc1    $f10, 0x011C($t5)
	nop
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x011C($t5)
	lw      $t6, 0x0030($sp)
	lwc1    $f6, 0x00D8($sp)
	lwc1    $f4, 0x0120($t6)
	nop
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0120($t6)
	b       .L80180A48
	nop
.L80180A40:
	b       .L80180A48
	nop
.L80180A48:
	b       .L80180A50
	nop
.L80180A50:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0014($sp)
	lw      $s1, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x00E8

move_animators:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a0, str_face_object_801B5C90
	jal     restart_timer
	la.l    $a0, str_face_object_801B5C90
	la.u    $a1, move_animator
	lw      $a2, 0x0018($sp)
	la.l    $a1, move_animator
	jal     face_object_8017E520
	li      $a0, 0x00010000
	la.u    $a0, str_face_object_801B5CA0
	jal     face_stdio_8018D02C
	la.l    $a0, str_face_object_801B5CA0
	b       .L80180AA4
	nop
.L80180AA4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl face_object_80180AB4
face_object_80180AB4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	li.u    $a0, 0x00FFFFFF
	la.u    $a1, face_object_80180764
	lw      $a2, 0x0018($sp)
	la.l    $a1, face_object_80180764
	jal     face_object_8017E520
	li.l    $a0, 0x00FFFFFF
	b       .L80180AE0
	nop
.L80180AE0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

face_object_80180AF0:
	addiu   $sp, $sp, -0x00F0
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x00F0($sp)
	sw      $s0, 0x0018($sp)
	la.u    $t6, _face_bss+0x00
	la.l    $t6, _face_bss+0x00
	sw      $t6, 0x0028($sp)
	lw      $t7, 0x00F0($sp)
	nop
	lw      $t8, 0x002C($t7)
	nop
	andi    $t9, $t8, 0x0010
	bnez    $t9, .L80180B30
	nop
	b       .L80181104
	nop
.L80180B30:
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00E8($sp)
	swc1    $f4, 0x00E4($sp)
	swc1    $f4, 0x00E0($sp)
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x00B8($sp)
	swc1    $f6, 0x00B4($sp)
	swc1    $f6, 0x00B0($sp)
	lw      $t0, 0x00F0($sp)
	nop
	lw      $t1, 0x0030($t0)
	nop
	beqz    $t1, .L80180CB8
	sw      $t1, 0x00EC($sp)
	lw      $a0, 0x00EC($sp)
	jal     face_dynlist_80186C84
	nop
	jal     dGetWorldPos
	addiu   $a0, $sp, 0x00E0
	jal     dGetMatrix
	addiu   $a0, $sp, 0x0070
	lw      $t3, 0x00F0($sp)
	addiu   $t2, $sp, 0x0070
	lwc1    $f8, 0x0020($t2)
	lwc1    $f10, 0x0058($t3)
	nop
	sub.s   $f16, $f8, $f10
	swc1    $f16, 0x00C8($sp)
	lw      $t5, 0x00F0($sp)
	addiu   $t4, $sp, 0x0070
	lwc1    $f18, 0x0028($t4)
	lwc1    $f4, 0x0060($t5)
	nop
	sub.s   $f6, $f18, $f4
	swc1    $f6, 0x00D0($sp)
	lw      $t6, 0x00F0($sp)
	lwc1    $f8, 0x00C8($sp)
	lwc1    $f10, 0x0184($t6)
	lwc1    $f18, 0x0058($t6)
	mul.s   $f16, $f8, $f10
	add.s   $f4, $f18, $f16
	swc1    $f4, 0x0058($t6)
	lw      $t7, 0x00F0($sp)
	lwc1    $f6, 0x00D0($sp)
	lwc1    $f8, 0x0184($t7)
	lwc1    $f18, 0x0060($t7)
	mul.s   $f10, $f6, $f8
	add.s   $f16, $f18, $f10
	swc1    $f16, 0x0060($t7)
	lw      $t8, 0x00F0($sp)
	nop
	lwc1    $f4, 0x0058($t8)
	nop
	swc1    $f4, 0x00C8($t8)
	mtc1    $0, $f6
	lw      $t9, 0x00F0($sp)
	nop
	swc1    $f6, 0x00CC($t9)
	lw      $t0, 0x00F0($sp)
	nop
	lwc1    $f8, 0x0060($t0)
	nop
	swc1    $f8, 0x00D0($t0)
	lw      $t1, 0x00F0($sp)
	nop
	lwc1    $f18, 0x00D0($t1)
	nop
	swc1    $f18, 0x00A8($t1)
	mtc1    $0, $f10
	lw      $t2, 0x00F0($sp)
	nop
	swc1    $f10, 0x00AC($t2)
	lw      $t3, 0x00F0($sp)
	nop
	lwc1    $f16, 0x00C8($t3)
	nop
	neg.s   $f4, $f16
	swc1    $f4, 0x00B0($t3)
	mtc1    $0, $f6
	lw      $t4, 0x00F0($sp)
	nop
	swc1    $f6, 0x00B8($t4)
	li      $at, 0x3F800000
	mtc1    $at, $f8
	lw      $t5, 0x00F0($sp)
	nop
	swc1    $f8, 0x00BC($t5)
	mtc1    $0, $f18
	lw      $t6, 0x00F0($sp)
	nop
	swc1    $f18, 0x00C0($t6)
	lw      $a0, 0x00F0($sp)
	jal     face_math_801963C0
	addiu   $a0, $a0, 0x00A8
	b       .L80180CC4
	nop
.L80180CB8:
	lw      $a0, 0x00F0($sp)
	jal     face_math_801963C0
	addiu   $a0, $a0, 0x00A8
.L80180CC4:
	lw      $t7, 0x00F0($sp)
	nop
	addiu   $t8, $t7, 0x0064
	sw      $t8, 0x002C($sp)
	lw      $t9, 0x00F0($sp)
	nop
	lw      $t0, 0x002C($t9)
	nop
	andi    $t1, $t0, 0x0004
	beqz    $t1, .L80180FD8
	nop
	lw      $t2, 0x0028($sp)
	nop
	lw      $t3, 0x0038($t2)
	nop
	beqz    $t3, .L80180DBC
	nop
	lw      $t4, 0x00F0($t2)
	nop
	lw      $t5, 0x0038($t4)
	nop
	bnez    $t5, .L80180DBC
	nop
	lw      $t6, 0x00F0($sp)
	nop
	lw      $t7, 0x0174($t6)
	nop
	addiu   $t8, $t7, 0x0001
	sw      $t8, 0x0174($t6)
	lw      $t9, 0x00F0($sp)
	nop
	lw      $t0, 0x0174($t9)
	lw      $t1, 0x0170($t9)
	nop
	slt     $at, $t1, $t0
	beqz    $at, .L80180D64
	nop
	lw      $t3, 0x00F0($sp)
	nop
	sw      $0, 0x0174($t3)
.L80180D64:
	lw      $t2, 0x00F0($sp)
	nop
	lw      $s0, 0x0174($t2)
	nop
	beqz    $s0, .L80180D9C
	nop
	li      $at, 0x0001
	beq     $s0, $at, .L80180DAC
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L80180DAC
	nop
	b       .L80180DBC
	nop
.L80180D9C:
	jal     face_sfx_80178254
	li      $a0, 0x0040
	b       .L80180DBC
	nop
.L80180DAC:
	jal     face_sfx_80178254
	li      $a0, 0x0080
	b       .L80180DBC
	nop
.L80180DBC:
	lw      $t4, 0x0028($sp)
	nop
	lw      $t5, 0x0018($t4)
	nop
	beqz    $t5, .L80180DF0
	nop
	lw      $t7, 0x00F0($sp)
	nop
	lwc1    $f10, 0x012C($t7)
	lwc1    $f16, 0x0138($t7)
	nop
	add.s   $f4, $f10, $f16
	swc1    $f4, 0x012C($t7)
.L80180DF0:
	lw      $t8, 0x0028($sp)
	nop
	lw      $t6, 0x001C($t8)
	nop
	beqz    $t6, .L80180E24
	nop
	lw      $t9, 0x00F0($sp)
	nop
	lwc1    $f6, 0x012C($t9)
	lwc1    $f8, 0x0138($t9)
	nop
	sub.s   $f18, $f6, $f8
	swc1    $f18, 0x012C($t9)
.L80180E24:
	lw      $t0, 0x0028($sp)
	nop
	lw      $t1, 0x0020($t0)
	nop
	beqz    $t1, .L80180E58
	nop
	lw      $t3, 0x00F0($sp)
	nop
	lwc1    $f10, 0x0128($t3)
	lwc1    $f16, 0x0134($t3)
	nop
	add.s   $f4, $f10, $f16
	swc1    $f4, 0x0128($t3)
.L80180E58:
	lw      $t2, 0x0028($sp)
	nop
	lw      $t4, 0x0024($t2)
	nop
	beqz    $t4, .L80180E8C
	nop
	lw      $t5, 0x00F0($sp)
	nop
	lwc1    $f6, 0x0128($t5)
	lwc1    $f8, 0x0134($t5)
	nop
	sub.s   $f18, $f6, $f8
	swc1    $f18, 0x0128($t5)
.L80180E8C:
	lw      $t7, 0x00F0($sp)
	li      $at, 0x42A00000
	mtc1    $at, $f14
	lwc1    $f12, 0x0128($t7)
	jal     face_math_80194868
	nop
	lw      $t8, 0x00F0($sp)
	nop
	swc1    $f0, 0x0128($t8)
	lw      $t6, 0x00F0($sp)
	nop
	lw      $t9, 0x0174($t6)
	nop
	sll     $t0, $t9, 2
	subu    $t0, $t0, $t9
	sll     $t0, $t0, 2
	addu    $t1, $t6, $t0
	lwc1    $f10, 0x0140($t1)
	nop
	swc1    $f10, 0x004C($t6)
	lw      $t3, 0x00F0($sp)
	nop
	lw      $t2, 0x0174($t3)
	nop
	sll     $t4, $t2, 2
	subu    $t4, $t4, $t2
	sll     $t4, $t4, 2
	addu    $t5, $t3, $t4
	lwc1    $f16, 0x0144($t5)
	nop
	swc1    $f16, 0x0050($t3)
	lw      $t7, 0x00F0($sp)
	nop
	lw      $t8, 0x0174($t7)
	nop
	sll     $t9, $t8, 2
	subu    $t9, $t9, $t8
	sll     $t9, $t9, 2
	addu    $t0, $t7, $t9
	lwc1    $f4, 0x0148($t0)
	nop
	swc1    $f4, 0x0054($t7)
	lw      $t1, 0x00F0($sp)
	nop
	lwc1    $f12, 0x0128($t1)
	addiu   $a1, $t1, 0x0050
	jal     face_math_801949C0
	addiu   $a2, $t1, 0x0054
	lw      $t6, 0x00F0($sp)
	nop
	lwc1    $f12, 0x012C($t6)
	addiu   $a1, $t6, 0x004C
	addiu   $a2, $t6, 0x0054
	jal     face_math_801949C0
	neg.s   $f12, $f12
	lw      $t2, 0x00F0($sp)
	nop
	lwc1    $f6, 0x004C($t2)
	lwc1    $f8, 0x0040($t2)
	lwc1    $f10, 0x017C($t2)
	sub.s   $f18, $f6, $f8
	mul.s   $f16, $f18, $f10
	add.s   $f4, $f8, $f16
	swc1    $f4, 0x0040($t2)
	lw      $t4, 0x00F0($sp)
	nop
	lwc1    $f6, 0x0050($t4)
	lwc1    $f18, 0x0044($t4)
	lwc1    $f8, 0x017C($t4)
	sub.s   $f10, $f6, $f18
	mul.s   $f16, $f10, $f8
	add.s   $f4, $f18, $f16
	swc1    $f4, 0x0044($t4)
	lw      $t5, 0x00F0($sp)
	nop
	lwc1    $f6, 0x0054($t5)
	lwc1    $f10, 0x0048($t5)
	lwc1    $f18, 0x017C($t5)
	sub.s   $f8, $f6, $f10
	mul.s   $f16, $f8, $f18
	add.s   $f4, $f10, $f16
	b       .L80180FE4
	swc1    $f4, 0x0048($t5)
.L80180FD8:
	lw      $a0, 0x002C($sp)
	jal     face_math_801963C0
	nop
.L80180FE4:
	lw      $t3, 0x00F0($sp)
	nop
	lwc1    $f6, 0x0040($t3)
	nop
	swc1    $f6, 0x00D4($sp)
	lw      $t8, 0x00F0($sp)
	nop
	lwc1    $f8, 0x0044($t8)
	nop
	swc1    $f8, 0x00D8($sp)
	lw      $t9, 0x00F0($sp)
	nop
	lwc1    $f18, 0x0048($t9)
	nop
	swc1    $f18, 0x00DC($sp)
	lwc1    $f10, 0x00D4($sp)
	lwc1    $f16, 0x00B0($sp)
	nop
	add.s   $f4, $f10, $f16
	swc1    $f4, 0x00D4($sp)
	lwc1    $f6, 0x00D8($sp)
	lwc1    $f8, 0x00B4($sp)
	nop
	add.s   $f18, $f6, $f8
	swc1    $f18, 0x00D8($sp)
	lwc1    $f10, 0x00DC($sp)
	lwc1    $f16, 0x00B8($sp)
	nop
	add.s   $f4, $f10, $f16
	swc1    $f4, 0x00DC($sp)
	lw      $t0, 0x00F0($sp)
	lw      $a0, 0x002C($sp)
	addiu   $t7, $t0, 0x00A8
	move    $a1, $t7
	jal     face_math_80196754
	move    $a2, $t7
	lw      $a1, 0x00F0($sp)
	addiu   $a0, $sp, 0x00D4
	jal     face_math_80196680
	addiu   $a1, $a1, 0x00A8
	lwc1    $f6, 0x00D4($sp)
	lw      $t1, 0x00F0($sp)
	nop
	swc1    $f6, 0x0014($t1)
	lwc1    $f8, 0x00D8($sp)
	lw      $t6, 0x00F0($sp)
	nop
	swc1    $f8, 0x0018($t6)
	lwc1    $f18, 0x00DC($sp)
	lw      $t2, 0x00F0($sp)
	nop
	swc1    $f18, 0x001C($t2)
	lw      $t4, 0x00F0($sp)
	lwc1    $f16, 0x00E0($sp)
	lwc1    $f10, 0x0014($t4)
	nop
	add.s   $f4, $f10, $f16
	swc1    $f4, 0x0014($t4)
	lw      $t5, 0x00F0($sp)
	lwc1    $f8, 0x00E4($sp)
	lwc1    $f6, 0x0018($t5)
	nop
	add.s   $f18, $f6, $f8
	swc1    $f18, 0x0018($t5)
	lw      $t3, 0x00F0($sp)
	lwc1    $f16, 0x00E8($sp)
	lwc1    $f10, 0x001C($t3)
	nop
	add.s   $f4, $f10, $f16
	swc1    $f4, 0x001C($t3)
	b       .L80181104
	nop
.L80181104:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x00F0

face_object_80181114:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a1, face_object_80180AF0
	lw      $a2, 0x0018($sp)
	la.l    $a1, face_object_80180AF0
	jal     face_object_8017E520
	li      $a0, 0x0200
	b       .L8018113C
	nop
.L8018113C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

face_object_8018114C:
	addiu   $sp, $sp, -0x0068
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0068($sp)
	lw      $t6, 0x0068($sp)
	li      $at, 0x0003
	lw      $t7, 0x0040($t6)
	nop
	bne     $t7, $at, .L80181230
	nop
	lw      $t8, 0x0068($sp)
	mtc1    $0, $f9
	lwc1    $f4, 0x0030($t8)
	mtc1    $0, $f8
	cvt.d.s $f6, $f4
	c.lt.d  $f8, $f6
	nop
	bc1f    .L801811B8
	nop
	lw      $t9, 0x0068($sp)
	lui     $at, %hi(face_object_801B5EC8+4)
	lwc1    $f10, 0x0030($t9)
	lwc1    $f19, %lo(face_object_801B5EC8+0)($at)
	lwc1    $f18, %lo(face_object_801B5EC8+4)($at)
	cvt.d.s $f16, $f10
	sub.d   $f4, $f16, $f18
	cvt.s.d $f6, $f4
	swc1    $f6, 0x0030($t9)
.L801811B8:
	lw      $t0, 0x0068($sp)
	mtc1    $0, $f10
	lwc1    $f8, 0x0030($t0)
	nop
	c.lt.s  $f8, $f10
	nop
	bc1f    .L801811E8
	nop
	mtc1    $0, $f16
	lw      $t1, 0x0068($sp)
	nop
	swc1    $f16, 0x0030($t1)
.L801811E8:
	lw      $t2, 0x0068($sp)
	nop
	lw      $t3, 0x003C($t2)
	nop
	andi    $t4, $t3, 0x0001
	beqz    $t4, .L80181218
	nop
	li      $at, 0x3F800000
	mtc1    $at, $f18
	lw      $t5, 0x0068($sp)
	nop
	swc1    $f18, 0x0030($t5)
.L80181218:
	lw      $t6, 0x0068($sp)
	li      $at, -0x0002
	lw      $t7, 0x003C($t6)
	nop
	and     $t8, $t7, $at
	sw      $t8, 0x003C($t6)
.L80181230:
	b       .L801814A8
	nop
	lw      $t9, 0x0068($sp)
	nop
	lwc1    $f4, 0x0074($t9)
	lwc1    $f6, 0x0080($t9)
	nop
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0074($t9)
	lw      $t0, 0x0068($sp)
	nop
	lwc1    $f10, 0x0078($t0)
	lwc1    $f16, 0x0084($t0)
	nop
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x0078($t0)
	lw      $t1, 0x0068($sp)
	nop
	lwc1    $f4, 0x007C($t1)
	lwc1    $f6, 0x0088($t1)
	nop
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x007C($t1)
	lw      $t2, 0x0068($sp)
	li      $at, 0x43FA0000
	mtc1    $at, $f16
	lwc1    $f10, 0x0074($t2)
	nop
	c.lt.s  $f16, $f10
	nop
	bc1t    .L801812D0
	nop
	li      $at, 0xC3FA0000
	mtc1    $at, $f4
	lwc1    $f18, 0x0078($t2)
	nop
	c.lt.s  $f18, $f4
	nop
	bc1f    .L801812E8
	nop
.L801812D0:
	lw      $t3, 0x0068($sp)
	nop
	lwc1    $f6, 0x0080($t3)
	nop
	neg.s   $f8, $f6
	swc1    $f8, 0x0080($t3)
.L801812E8:
	lw      $t4, 0x0068($sp)
	li      $at, 0x43FA0000
	mtc1    $at, $f16
	lwc1    $f10, 0x0078($t4)
	nop
	c.lt.s  $f16, $f10
	nop
	bc1t    .L80181328
	nop
	li      $at, 0xC3FA0000
	mtc1    $at, $f18
	nop
	c.lt.s  $f10, $f18
	nop
	bc1f    .L80181340
	nop
.L80181328:
	lw      $t5, 0x0068($sp)
	nop
	lwc1    $f4, 0x0084($t5)
	nop
	neg.s   $f6, $f4
	swc1    $f6, 0x0084($t5)
.L80181340:
	lw      $t7, 0x0068($sp)
	li      $at, 0x43FA0000
	mtc1    $at, $f16
	lwc1    $f8, 0x007C($t7)
	nop
	c.lt.s  $f16, $f8
	nop
	bc1t    .L80181380
	nop
	li      $at, 0xC3FA0000
	mtc1    $at, $f10
	nop
	c.lt.s  $f8, $f10
	nop
	bc1f    .L80181398
	nop
.L80181380:
	lw      $t8, 0x0068($sp)
	nop
	lwc1    $f18, 0x0088($t8)
	nop
	neg.s   $f4, $f18
	swc1    $f4, 0x0088($t8)
.L80181398:
	b       .L801814A8
	nop
	lui     $at, %hi(_face_object_data+0x10)
	lwc1    $f6, %lo(_face_object_data+0x10)($at)
	li      $at, 0x3FF00000
	mtc1    $at, $f9
	mtc1    $0, $f8
	cvt.d.s $f16, $f6
	add.d   $f10, $f16, $f8
	lui     $at, %hi(_face_object_data+0x10)
	cvt.s.d $f18, $f10
	swc1    $f18, %lo(_face_object_data+0x10)($at)
	lui     $at, %hi(_face_object_data+0x14)
	lwc1    $f4, %lo(_face_object_data+0x14)($at)
	lui     $at, %hi(face_object_801B5ED0+4)
	lwc1    $f17, %lo(face_object_801B5ED0+0)($at)
	lwc1    $f16, %lo(face_object_801B5ED0+4)($at)
	cvt.d.s $f6, $f4
	add.d   $f8, $f6, $f16
	lui     $at, %hi(_face_object_data+0x14)
	cvt.s.d $f10, $f8
	swc1    $f10, %lo(_face_object_data+0x14)($at)
	jal     face_math_801963C0
	addiu   $a0, $sp, 0x0028
	lw      $t6, 0x0068($sp)
	addiu   $a0, $sp, 0x0028
	lw      $a2, 0x006C($t6)
	jal     absrot_matrix4
	li      $a1, 0x0001
	lw      $t9, 0x0068($sp)
	addiu   $a0, $sp, 0x0028
	lw      $a2, 0x0068($t9)
	jal     absrot_matrix4
	move    $a1, $0
	lw      $t0, 0x0068($sp)
	addiu   $a0, $sp, 0x0028
	lw      $a2, 0x0070($t0)
	jal     absrot_matrix4
	li      $a1, 0x0002
	lw      $a0, 0x0068($sp)
	addiu   $a1, $sp, 0x0028
	jal     face_math_80196680
	addiu   $a0, $a0, 0x008C
	lw      $t1, 0x0068($sp)
	nop
	lwc1    $f18, 0x008C($t1)
	nop
	swc1    $f18, 0x0074($t1)
	lw      $t2, 0x0068($sp)
	nop
	lwc1    $f4, 0x0090($t2)
	nop
	swc1    $f4, 0x0078($t2)
	lw      $t3, 0x0068($sp)
	nop
	lwc1    $f6, 0x0094($t3)
	nop
	swc1    $f6, 0x007C($t3)
	b       .L801814A8
	nop
	lw      $a0, 0x0068($sp)
	addiu   $a1, $sp, 0x0028
	jal     face_math_80196680
	addiu   $a0, $a0, 0x0080
	jal     imout
	nop
	b       .L801814A8
	nop
.L801814A8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0068
	jr      $ra
	nop

face_object_801814B8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a1, face_object_8018114C
	lw      $a2, 0x0018($sp)
	la.l    $a1, face_object_8018114C
	jal     face_object_8017E520
	li      $a0, 0x00080000
	b       .L801814E0
	nop
.L801814E0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

face_object_801814F0:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(face_movement)
	lw      $t6, %lo(face_movement)($t6)
	nop
	beqz    $t6, .L80181584
	nop
	lui     $a0, %hi(_face_bss+0x4F4)
	lw      $a0, %lo(_face_bss+0x4F4)($a0)
	jal     face_gadget_8018C2B0
	nop
	lui     $a0, %hi(_face_bss+0x4F4)
	lw      $a0, %lo(_face_bss+0x4F4)($a0)
	jal     face_object_801814B8
	nop
	lui     $a0, %hi(_face_bss+0x4F4)
	lw      $a0, %lo(_face_bss+0x4F4)($a0)
	jal     face_particle_801836B0
	nop
	lui     $a0, %hi(_face_bss+0x4F4)
	lw      $a0, %lo(_face_bss+0x4F4)($a0)
	jal     move_animators
	nop
	sw      $0, 0x001C($sp)
.L80181550:
	lui     $a0, %hi(_face_bss+0x4F4)
	lw      $a0, %lo(_face_bss+0x4F4)($a0)
	jal     move_nets
	nop
	lw      $t7, 0x001C($sp)
	nop
	addiu   $t8, $t7, 0x0001
	blez    $t8, .L80181550
	sw      $t8, 0x001C($sp)
	lui     $a0, %hi(_face_bss+0x4F4)
	lw      $a0, %lo(_face_bss+0x4F4)($a0)
	jal     face_object_80181114
	nop
.L80181584:
	b       .L8018158C
	nop
.L8018158C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl face_object_8018159C
face_object_8018159C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a0, str_face_object_801B5CB0
	jal     face_stdio_8018D560
	la.l    $a0, str_face_object_801B5CB0
	lw      $t6, 0x0018($sp)
	lui     $at, %hi(_face_bss+0x498)
	lw      $t7, 0x0024($t6)
	nop
	sw      $t7, %lo(_face_bss+0x498)($at)
	lw      $t8, 0x0018($sp)
	lui     $at, %hi(_face_bss+0x49C)
	sw      $t8, %lo(_face_bss+0x49C)($at)
	lw      $t9, 0x0018($sp)
	lui     $at, %hi(_face_bss+0x4F4)
	lw      $t0, 0x0028($t9)
	nop
	beqz    $t0, .L801815F4
	sw      $t0, %lo(_face_bss+0x4F4)($at)
	jal     face_object_801814F0
	nop
.L801815F4:
	lw      $t1, 0x0018($sp)
	lui     $at, %hi(_face_bss+0x4F4)
	lw      $t2, 0x002C($t1)
	nop
	beqz    $t2, .L80181614
	sw      $t2, %lo(_face_bss+0x4F4)($at)
	jal     face_object_801814F0
	nop
.L80181614:
	jal     imout
	nop
	b       .L80181624
	nop
.L80181624:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl face_object_80181634
face_object_80181634:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	jal     face_net_80193988
	nop
	la.u    $a1, reset_gadget
	lw      $a2, 0x0018($sp)
	la.l    $a1, reset_gadget
	jal     face_object_8017E520
	li      $a0, 0x2000
	b       .L80181668
	nop
.L80181668:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl face_object_80181678
face_object_80181678:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $at, %hi(_face_bss+0x524)
	sw      $0, %lo(_face_bss+0x524)($at)
	lui     $at, %hi(_face_bss+0x538)
	sw      $0, %lo(_face_bss+0x538)($at)
	lui     $at, %hi(_face_bss+0x53C)
	sw      $0, %lo(_face_bss+0x53C)($at)
	lui     $at, %hi(_face_bss+0x540)
	sw      $0, %lo(_face_bss+0x540)($at)
	lui     $at, %hi(_face_bss+0x544)
	sw      $0, %lo(_face_bss+0x544)($at)
	lui     $at, %hi(_face_bss+0x548)
	sw      $0, %lo(_face_bss+0x548)($at)
	lui     $at, %hi(_face_bss+0x52C)
	sw      $0, %lo(_face_bss+0x52C)($at)
	lui     $at, %hi(_face_bss+0x530)
	sw      $0, %lo(_face_bss+0x530)($at)
	lui     $at, %hi(_face_bss+0x568)
	sw      $0, %lo(_face_bss+0x568)($at)
	lui     $at, %hi(_face_bss+0x564)
	sw      $0, %lo(_face_bss+0x564)($at)
	lui     $at, %hi(_face_bss+0x534)
	sw      $0, %lo(_face_bss+0x534)($at)
	lui     $at, %hi(_face_bss+0x560)
	sw      $0, %lo(_face_bss+0x560)($at)
	lui     $at, %hi(_face_bss+0x56C)
	sw      $0, %lo(_face_bss+0x56C)($at)
	lui     $at, %hi(_face_bss+0x570)
	sw      $0, %lo(_face_bss+0x570)($at)
	jal     face_net_80193C50
	nop
	jal     face_joint_80192028
	nop
	b       .L80181708
	nop
.L80181708:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.data
.align 4

.globl _face_object_data
_face_object_data:
.incbin "src/face/object.data.bin"
