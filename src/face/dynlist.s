.include "sm64/asm.inc"

.set fp=32
.set noreorder
.set noat

.align 4

.globl face_dynlist_80183A50
face_dynlist_80183A50:
	lui     $t6, %hi(_face_bss+0x610)
	lw      $t6, %lo(_face_bss+0x610)($t6)
	lui     $at, %hi(_face_bss+0x618)
	sw      $t6, %lo(_face_bss+0x618)($at)
	lui     $t7, %hi(_face_dynlist_data+0x04)
	lw      $t7, %lo(_face_dynlist_data+0x04)($t7)
	lui     $at, %hi(_face_bss+0x61C)
	sw      $t7, %lo(_face_bss+0x61C)($at)
	jr      $ra
	nop
	jr      $ra
	nop

.globl face_dynlist_80183A80
face_dynlist_80183A80:
	lui     $t6, %hi(_face_bss+0x61C)
	lw      $t6, %lo(_face_bss+0x61C)($t6)
	lui     $at, %hi(_face_dynlist_data+0x04)
	sw      $t6, %lo(_face_dynlist_data+0x04)($at)
	lui     $t7, %hi(_face_bss+0x618)
	lw      $t7, %lo(_face_bss+0x618)($t7)
	lui     $at, %hi(_face_bss+0x610)
	sw      $t7, %lo(_face_bss+0x610)($at)
	jr      $ra
	nop
	jr      $ra
	nop

.globl face_dynlist_80183AB0
face_dynlist_80183AB0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $at, %hi(_face_bss+0x608)
	sw      $0, %lo(_face_bss+0x608)($at)
	lui     $at, %hi(_face_bss+0x60C)
	sw      $0, %lo(_face_bss+0x60C)($at)
	la.u    $t6, _face_bss+0x600
	la.l    $t6, _face_bss+0x600
	sb      $0, 0x0000($t6)
	lui     $at, %hi(_face_dynlist_data+0x00)
	sw      $0, %lo(_face_dynlist_data+0x00)($at)
	lui     $at, %hi(_face_dynlist_data+0x04)
	sw      $0, %lo(_face_dynlist_data+0x04)($at)
	lui     $at, %hi(_face_bss+0x620)
	sw      $0, %lo(_face_bss+0x620)($at)
	lui     $at, %hi(_face_dynlist_data+0x20)
	sw      $0, %lo(_face_dynlist_data+0x20)($at)
	la.u    $a0, _face_bss+0x5E8
	la.u    $a1, str_face_dynlist_801B5FE0
	la.l    $a1, str_face_dynlist_801B5FE0
	jal     face_stdio_8018DDD8
	la.l    $a0, _face_bss+0x5E8
	b       .L80183B10
	nop
.L80183B10:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl proc_dynlist
proc_dynlist:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0030($sp)
	nop
	lw      $s0, 0x0000($t6)
	addiu   $t8, $t6, 0x0018
	xori    $t7, $s0, 0xD1D4
	sltu    $t7, $0, $t7
	move    $s0, $t7
	beqz    $s0, .L80183B60
	sw      $t8, 0x0030($sp)
	la.u    $a0, str_face_dynlist_801B5FE8
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B5FE8
.L80183B60:
	lw      $t9, 0x0030($sp)
	li      $at, 0x003A
	lw      $t0, 0x0000($t9)
	nop
	beq     $t0, $at, .L80184334
	nop
.L80183B78:
	lw      $t1, 0x0030($sp)
	nop
	lw      $t2, 0x0000($t1)
	nop
	sltiu   $at, $t2, 0x0038
	beqz    $at, L80184300
	nop
	sll     $t2, $t2, 2
	lui     $at, %hi(face_dynlist_801B7ED8)
	addu    $at, $at, $t2
	lw      $t2, %lo(face_dynlist_801B7ED8)($at)
	nop
	jr      $t2
	nop
.globl L80183BB0
L80183BB0:
	lw      $t3, 0x0030($sp)
	nop
	lw      $a0, 0x0004($t3)
	jal     face_dynlist_8018435C
	nop
	b       .L8018430C
	nop
.globl L80183BCC
L80183BCC:
	lw      $t4, 0x0030($sp)
	nop
	lw      $a0, 0x0008($t4)
	lw      $a1, 0x0004($t4)
	jal     dMakeObj
	nop
	b       .L8018430C
	nop
.globl L80183BEC
L80183BEC:
	lw      $t5, 0x0030($sp)
	nop
	lw      $a0, 0x0008($t5)
	lw      $a1, 0x0004($t5)
	jal     face_dynlist_8018468C
	nop
	b       .L8018430C
	nop
.globl L80183C0C
L80183C0C:
	lw      $t7, 0x0030($sp)
	nop
	lw      $a0, 0x0004($t7)
	jal     face_dynlist_80184740
	nop
	b       .L8018430C
	nop
.globl L80183C28
L80183C28:
	lw      $t6, 0x0030($sp)
	nop
	lw      $a0, 0x0008($t6)
	lw      $a1, 0x0004($t6)
	jal     face_dynlist_801847AC
	nop
	b       .L8018430C
	nop
.globl L80183C48
L80183C48:
	lw      $t8, 0x0030($sp)
	nop
	lw      $a0, 0x0004($t8)
	jal     face_dynlist_80186CAC
	nop
	b       .L8018430C
	nop
.globl L80183C64
L80183C64:
	lw      $t9, 0x0030($sp)
	nop
	lw      $a0, 0x0004($t9)
	jal     dEndGroup
	nop
	b       .L8018430C
	nop
.globl L80183C80
L80183C80:
	lw      $t0, 0x0030($sp)
	nop
	lw      $a0, 0x0004($t0)
	jal     dAddToGroup
	nop
	b       .L8018430C
	nop
.globl L80183C9C
L80183C9C:
	lw      $t1, 0x0030($sp)
	nop
	lw      $a0, 0x0004($t1)
	jal     dUseObj
	nop
	b       .L8018430C
	nop
.globl L80183CB8
L80183CB8:
	lw      $t2, 0x0030($sp)
	nop
	lw      $a0, 0x0004($t2)
	jal     dLinkWith
	nop
	b       .L8018430C
	nop
.globl L80183CD4
L80183CD4:
	lw      $t3, 0x0030($sp)
	cfc1    $t4, $31
	li      $a1, 0x0001
	ctc1    $a1, $31
	lwc1    $f4, 0x0010($t3)
	lw      $a0, 0x0004($t3)
	cvt.w.s $f6, $f4
	cfc1    $a1, $31
	nop
	andi    $at, $a1, 0x0004
	andi    $a1, $a1, 0x0078
	beqz    $a1, .L80183D54
	nop
	li      $at, 0x4F000000
	mtc1    $at, $f6
	li      $a1, 0x0001
	sub.s   $f6, $f4, $f6
	ctc1    $a1, $31
	nop
	cvt.w.s $f6, $f6
	cfc1    $a1, $31
	nop
	andi    $at, $a1, 0x0004
	andi    $a1, $a1, 0x0078
	bnez    $a1, .L80183D4C
	nop
	mfc1    $a1, $f6
	li      $at, 0x80000000
	b       .L80183D64
	or      $a1, $a1, $at
.L80183D4C:
	b       .L80183D64
	li      $a1, -0x0001
.L80183D54:
	mfc1    $a1, $f6
	nop
	bltz    $a1, .L80183D4C
	nop
.L80183D64:
	ctc1    $t4, $31
	li      $a3, 0x0001
	lwc1    $f8, 0x000C($t3)
	cfc1    $t5, $31
	ctc1    $a3, $31
	lw      $a2, 0x0008($t3)
	cvt.w.s $f10, $f8
	cfc1    $a3, $31
	nop
	andi    $at, $a3, 0x0004
	andi    $a3, $a3, 0x0078
	beqz    $a3, .L80183DE4
	nop
	li      $at, 0x4F000000
	mtc1    $at, $f10
	li      $a3, 0x0001
	sub.s   $f10, $f8, $f10
	ctc1    $a3, $31
	nop
	cvt.w.s $f10, $f10
	cfc1    $a3, $31
	nop
	andi    $at, $a3, 0x0004
	andi    $a3, $a3, 0x0078
	bnez    $a3, .L80183DDC
	nop
	mfc1    $a3, $f10
	li      $at, 0x80000000
	b       .L80183DF4
	or      $a3, $a3, $at
.L80183DDC:
	b       .L80183DF4
	li      $a3, -0x0001
.L80183DE4:
	mfc1    $a3, $f10
	nop
	bltz    $a3, .L80183DDC
	nop
.L80183DF4:
	ctc1    $t5, $31
	jal     dAddValPtr
	nop
	b       .L8018430C
	nop
.globl L80183E08
L80183E08:
	lw      $t7, 0x0030($sp)
	nop
	lw      $a0, 0x0004($t7)
	jal     dLinkWithPtr
	nop
	b       .L8018430C
	nop
.globl L80183E24
L80183E24:
	lw      $t6, 0x0030($sp)
	nop
	lw      $a0, 0x0004($t6)
	jal     proc_dynlist
	nop
	b       .L8018430C
	nop
.globl L80183E40
L80183E40:
	lw      $t8, 0x0030($sp)
	nop
	lw      $a0, 0x0008($t8)
	jal     face_dynlist_80186E5C
	nop
	b       .L8018430C
	nop
.globl L80183E5C
L80183E5C:
	lw      $t9, 0x0030($sp)
	nop
	lwc1    $f12, 0x000C($t9)
	lwc1    $f14, 0x0010($t9)
	lw      $a2, 0x0014($t9)
	jal     dSetInitPos
	nop
	b       .L8018430C
	nop
.globl L80183E80
L80183E80:
	lw      $t0, 0x0030($sp)
	nop
	lwc1    $f12, 0x000C($t0)
	lwc1    $f14, 0x0010($t0)
	lw      $a2, 0x0014($t0)
	jal     dSetRelPos
	nop
	b       .L8018430C
	nop
.globl L80183EA4
L80183EA4:
	lw      $t1, 0x0030($sp)
	nop
	lwc1    $f12, 0x000C($t1)
	lwc1    $f14, 0x0010($t1)
	lw      $a2, 0x0014($t1)
	jal     dSetWorldPos
	nop
	b       .L8018430C
	nop
.globl L80183EC8
L80183EC8:
	lw      $t2, 0x0030($sp)
	nop
	lwc1    $f12, 0x000C($t2)
	lwc1    $f14, 0x0010($t2)
	lw      $a2, 0x0014($t2)
	jal     dSetNormal
	nop
	b       .L8018430C
	nop
.globl L80183EEC
L80183EEC:
	lw      $t4, 0x0030($sp)
	nop
	lwc1    $f12, 0x000C($t4)
	lwc1    $f14, 0x0010($t4)
	lw      $a2, 0x0014($t4)
	jal     dSetScale
	nop
	b       .L8018430C
	nop
.globl L80183F10
L80183F10:
	lw      $a0, 0x0030($sp)
	jal     face_dynlist_801891F4
	addiu   $a0, $a0, 0x000C
	b       .L8018430C
	nop
.globl L80183F24
L80183F24:
	lw      $t3, 0x0030($sp)
	nop
	lwc1    $f12, 0x000C($t3)
	lwc1    $f14, 0x0010($t3)
	lw      $a2, 0x0014($t3)
	jal     dSetRotation
	nop
	b       .L8018430C
	nop
.globl L80183F48
L80183F48:
	lw      $t5, 0x0030($sp)
	nop
	lwc1    $f12, 0x000C($t5)
	lwc1    $f14, 0x0010($t5)
	lw      $a2, 0x0014($t5)
	jal     dCofG
	nop
	b       .L8018430C
	nop
.globl L80183F6C
L80183F6C:
	lw      $t7, 0x0030($sp)
	nop
	lwc1    $f12, 0x000C($t7)
	lwc1    $f14, 0x0010($t7)
	lw      $a2, 0x0014($t7)
	jal     dShapeOffset
	nop
	b       .L8018430C
	nop
.globl L80183F90
L80183F90:
	lw      $t6, 0x0030($sp)
	nop
	lw      $a0, 0x0008($t6)
	lw      $a1, 0x000C($t6)
	jal     dSetParmf
	nop
	b       .L8018430C
	nop
.globl L80183FB0
L80183FB0:
	lw      $t8, 0x0030($sp)
	nop
	lw      $a0, 0x0008($t8)
	lw      $a1, 0x0004($t8)
	jal     dSetParmp
	nop
	b       .L8018430C
	nop
.globl L80183FD0
L80183FD0:
	lw      $t9, 0x0030($sp)
	nop
	lw      $a0, 0x0008($t9)
	jal     dSetFlags
	nop
	b       .L8018430C
	nop
.globl L80183FEC
L80183FEC:
	lw      $t0, 0x0030($sp)
	nop
	lw      $a0, 0x0008($t0)
	jal     dClrFlags
	nop
	b       .L8018430C
	nop
.globl L80184008
L80184008:
	lw      $t1, 0x0030($sp)
	nop
	lw      $a0, 0x0008($t1)
	jal     face_dynlist_8018A530
	nop
	b       .L8018430C
	nop
.globl L80184024
L80184024:
	lw      $t2, 0x0030($sp)
	nop
	lw      $a0, 0x0004($t2)
	jal     dAttach
	nop
	b       .L8018430C
	nop
.globl L80184040
L80184040:
	lw      $t4, 0x0030($sp)
	nop
	lw      $a0, 0x0008($t4)
	lw      $a1, 0x0004($t4)
	jal     dAttachTo
	nop
	b       .L8018430C
	nop
.globl L80184060
L80184060:
	lw      $a0, 0x0030($sp)
	jal     dSetAttOffset
	addiu   $a0, $a0, 0x000C
	b       .L8018430C
	nop
.globl L80184074
L80184074:
	lw      $t3, 0x0030($sp)
	nop
	lw      $a0, 0x0004($t3)
	jal     dSetNodeGroup
	nop
	b       .L8018430C
	nop
.globl L80184090
L80184090:
	lw      $t5, 0x0030($sp)
	nop
	lw      $a0, 0x0004($t5)
	jal     dSetMatGroup
	nop
	b       .L8018430C
	nop
.globl L801840AC
L801840AC:
	lw      $t7, 0x0030($sp)
	nop
	lw      $a0, 0x0004($t7)
	jal     dSetSkinShape
	nop
	b       .L8018430C
	nop
.globl L801840C8
L801840C8:
	lw      $t6, 0x0030($sp)
	nop
	lw      $a0, 0x0004($t6)
	jal     dSetPlaneGroup
	nop
	b       .L8018430C
	nop
.globl L801840E4
L801840E4:
	lw      $t8, 0x0030($sp)
	nop
	lw      $a0, 0x0004($t8)
	jal     dSetShapePtrPtr
	nop
	b       .L8018430C
	nop
.globl L80184100
L80184100:
	lw      $t9, 0x0030($sp)
	nop
	lw      $a0, 0x0004($t9)
	jal     dSetShapePtr
	nop
	b       .L8018430C
	nop
.globl L8018411C
L8018411C:
	lw      $t0, 0x0030($sp)
	nop
	lw      $a0, 0x0008($t0)
	jal     dSetType
	nop
	b       .L8018430C
	nop
.globl L80184138
L80184138:
	lw      $t1, 0x0030($sp)
	nop
	lw      $a0, 0x0008($t1)
	jal     dSetColNum
	nop
	b       .L8018430C
	nop
.globl L80184154
L80184154:
	lw      $t2, 0x0030($sp)
	nop
	lwc1    $f12, 0x000C($t2)
	lwc1    $f14, 0x0010($t2)
	lw      $a2, 0x0014($t2)
	jal     dFriction
	nop
	b       .L8018430C
	nop
.globl L80184178
L80184178:
	lw      $t4, 0x0030($sp)
	nop
	lwc1    $f12, 0x000C($t4)
	jal     dSetSpring
	nop
	b       .L8018430C
	nop
.globl L80184194
L80184194:
	lw      $t3, 0x0030($sp)
	nop
	lwc1    $f12, 0x000C($t3)
	lwc1    $f14, 0x0010($t3)
	lw      $a2, 0x0014($t3)
	jal     dSetAmbient
	nop
	b       .L8018430C
	nop
.globl L801841B8
L801841B8:
	lw      $t5, 0x0030($sp)
	nop
	lwc1    $f12, 0x000C($t5)
	lwc1    $f14, 0x0010($t5)
	lw      $a2, 0x0014($t5)
	jal     dSetDiffuse
	nop
	b       .L8018430C
	nop
.globl L801841DC
L801841DC:
	lw      $t7, 0x0030($sp)
	nop
	lw      $a0, 0x0008($t7)
	jal     dControlType
	nop
	b       .L8018430C
	nop
.globl L801841F8
L801841F8:
	lw      $t6, 0x0030($sp)
	nop
	lw      $a0, 0x0008($t6)
	lw      $a1, 0x000C($t6)
	jal     dSetSkinWeight
	nop
	b       .L8018430C
	nop
.globl L80184218
L80184218:
	lw      $t8, 0x0030($sp)
	nop
	lw      $a0, 0x0008($t8)
	jal     dSetID
	nop
	b       .L8018430C
	nop
.globl L80184234
L80184234:
	lw      $t9, 0x0030($sp)
	nop
	lw      $a0, 0x0004($t9)
	lw      $a1, 0x0008($t9)
	jal     dSetMaterial
	nop
	b       .L8018430C
	nop
.globl L80184254
L80184254:
	lw      $t0, 0x0030($sp)
	nop
	lw      $a0, 0x0004($t0)
	jal     dMapMaterials
	nop
	b       .L8018430C
	nop
.globl L80184270
L80184270:
	lw      $t1, 0x0030($sp)
	nop
	lw      $a0, 0x0004($t1)
	jal     dMapVertices
	nop
	b       .L8018430C
	nop
.globl L8018428C
L8018428C:
	lw      $t2, 0x0030($sp)
	nop
	lwc1    $f12, 0x000C($t2)
	lwc1    $f14, 0x0010($t2)
	jal     dSetTextureST
	nop
	b       .L8018430C
	nop
.globl L801842AC
L801842AC:
	lw      $t4, 0x0030($sp)
	nop
	lw      $a0, 0x0008($t4)
	jal     dUseTexture
	nop
	b       .L8018430C
	nop
.globl L801842C8
L801842C8:
	lw      $t3, 0x0030($sp)
	nop
	lw      $a0, 0x0004($t3)
	jal     dMakeNetFromShape
	nop
	b       .L8018430C
	nop
.globl L801842E4
L801842E4:
	lw      $t5, 0x0030($sp)
	nop
	lw      $a0, 0x0004($t5)
	jal     dMakeNetFromShapePtrPtr
	nop
	b       .L8018430C
	nop
.globl L80184300
L80184300:
	la.u    $a0, str_face_dynlist_801B600C
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B600C
.L8018430C:
	lw      $t7, 0x0030($sp)
	nop
	addiu   $t6, $t7, 0x0018
	sw      $t6, 0x0030($sp)
	lw      $t8, 0x0030($sp)
	li      $at, 0x003A
	lw      $t9, 0x0000($t8)
	nop
	bne     $t9, $at, .L80183B78
	nop
.L80184334:
	lui     $v0, %hi(_face_dynlist_data+0x04)
	lw      $v0, %lo(_face_dynlist_data+0x04)($v0)
	b       .L8018434C
	nop
	b       .L8018434C
	nop
.L8018434C:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0030

.globl face_dynlist_8018435C
face_dynlist_8018435C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	nop
	beqz    $t6, .L801843DC
	nop
	lw      $t7, 0x0018($sp)
	nop
	lb      $t8, 0x0000($t7)
	nop
	bnez    $t8, .L801843C4
	nop
	lui     $t9, %hi(_face_bss+0x608)
	lw      $t9, %lo(_face_bss+0x608)($t9)
	la.u    $a0, _face_bss+0x600
	la.u    $a1, str_face_dynlist_801B602C
	lui     $at, %hi(_face_bss+0x608)
	addiu   $t0, $t9, 0x0001
	sw      $t0, %lo(_face_bss+0x608)($at)
	move    $a2, $t0
	la.l    $a1, str_face_dynlist_801B602C
	jal     sprintf
	la.l    $a0, _face_bss+0x600
	b       .L801843D4
	nop
.L801843C4:
	la.u    $a0, _face_bss+0x600
	lw      $a1, 0x0018($sp)
	jal     face_stdio_8018DDD8
	la.l    $a0, _face_bss+0x600
.L801843D4:
	b       .L801843E8
	nop
.L801843DC:
	la.u    $t1, _face_bss+0x600
	la.l    $t1, _face_bss+0x600
	sb      $0, 0x0000($t1)
.L801843E8:
	b       .L801843F0
	nop
.L801843F0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

face_dynlist_80184400:
	addiu   $sp, $sp, -0x0118
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0118($sp)
	lw      $t6, 0x0118($sp)
	nop
	beqz    $t6, .L80184478
	nop
	lw      $t7, 0x0118($sp)
	nop
	lb      $t8, 0x0000($t7)
	nop
	bnez    $t8, .L80184464
	nop
	lui     $t9, %hi(_face_bss+0x608)
	lw      $t9, %lo(_face_bss+0x608)($t9)
	la.u    $a1, str_face_dynlist_801B6034
	lui     $at, %hi(_face_bss+0x608)
	addiu   $t0, $t9, 0x0001
	sw      $t0, %lo(_face_bss+0x608)($at)
	move    $a2, $t0
	la.l    $a1, str_face_dynlist_801B6034
	jal     sprintf
	addiu   $a0, $sp, 0x0018
	b       .L80184470
	nop
.L80184464:
	lw      $a1, 0x0118($sp)
	jal     face_stdio_8018DDD8
	addiu   $a0, $sp, 0x0018
.L80184470:
	b       .L80184480
	nop
.L80184478:
	addiu   $t1, $sp, 0x0018
	sb      $0, 0x0000($t1)
.L80184480:
	la.u    $a0, _face_bss+0x600
	la.l    $a0, _face_bss+0x600
	jal     face_stdio_8018DF6C
	addiu   $a1, $sp, 0x0018
	b       .L80184498
	nop
.L80184498:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0118
	jr      $ra
	nop

face_dynlist_801844A8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	la.u    $a0, _face_bss+0x648
	la.u    $a1, _face_bss+0x600
	la.l    $a1, _face_bss+0x600
	jal     face_stdio_8018DDD8
	la.l    $a0, _face_bss+0x648
	b       .L801844CC
	nop
.L801844CC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

face_dynlist_801844DC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	la.u    $a0, _face_bss+0x600
	la.u    $a1, _face_bss+0x648
	la.l    $a1, _face_bss+0x648
	jal     face_stdio_8018DDD8
	la.l    $a0, _face_bss+0x600
	b       .L80184500
	nop
.L80184500:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

face_dynlist_80184510:
	addiu   $sp, $sp, -0x0120
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0120($sp)
	lui     $t6, %hi(_face_bss+0x60C)
	lw      $t6, %lo(_face_bss+0x60C)($t6)
	nop
	bnez    $t6, .L80184538
	nop
	b       .L80184620
	move    $v0, $0
.L80184538:
	lui     $t7, %hi(_face_dynlist_data+0x20)
	lw      $t7, %lo(_face_dynlist_data+0x20)($t7)
	nop
	beqz    $t7, .L80184568
	nop
	la.u    $a1, str_face_dynlist_801B603C
	lw      $a2, 0x0120($sp)
	la.l    $a1, str_face_dynlist_801B603C
	jal     sprintf
	addiu   $a0, $sp, 0x001C
	b       .L80184574
	nop
.L80184568:
	lw      $a1, 0x0120($sp)
	jal     face_stdio_8018DDD8
	addiu   $a0, $sp, 0x001C
.L80184574:
	la.u    $a1, _face_bss+0x600
	la.l    $a1, _face_bss+0x600
	jal     face_stdio_8018DF6C
	addiu   $a0, $sp, 0x001C
	sw      $0, 0x011C($sp)
	lui     $t8, %hi(_face_bss+0x60C)
	lw      $t8, %lo(_face_bss+0x60C)($t8)
	sw      $0, 0x0018($sp)
	blez    $t8, .L8018460C
	nop
.L8018459C:
	lw      $t0, 0x0018($sp)
	lui     $t9, %hi(_face_dynlist_data+0x00)
	sll     $t1, $t0, 2
	lw      $t9, %lo(_face_dynlist_data+0x00)($t9)
	addu    $t1, $t1, $t0
	sll     $t1, $t1, 2
	addiu   $a1, $sp, 0x001C
	jal     face_stdio_8018DFF0
	addu    $a0, $t9, $t1
	bnez    $v0, .L801845F0
	nop
	lw      $t2, 0x0018($sp)
	lui     $t4, %hi(_face_dynlist_data+0x00)
	sll     $t3, $t2, 2
	lw      $t4, %lo(_face_dynlist_data+0x00)($t4)
	addu    $t3, $t3, $t2
	sll     $t3, $t3, 2
	addu    $t5, $t3, $t4
	sw      $t5, 0x011C($sp)
	b       .L8018460C
	nop
.L801845F0:
	lw      $t6, 0x0018($sp)
	lui     $t8, %hi(_face_bss+0x60C)
	lw      $t8, %lo(_face_bss+0x60C)($t8)
	addiu   $t7, $t6, 0x0001
	slt     $at, $t7, $t8
	bnez    $at, .L8018459C
	sw      $t7, 0x0018($sp)
.L8018460C:
	lw      $v0, 0x011C($sp)
	b       .L80184620
	nop
	b       .L80184620
	nop
.L80184620:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0120
	jr      $ra
	nop

face_dynlist_80184630:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(_face_bss+0x60C)
	lw      $t6, %lo(_face_bss+0x60C)($t6)
	nop
	bnez    $t6, .L80184654
	nop
	b       .L8018467C
	nop
.L80184654:
	lui     $a0, %hi(_face_dynlist_data+0x00)
	lw      $a0, %lo(_face_dynlist_data+0x00)($a0)
	jal     gd_free
	nop
	lui     $at, %hi(_face_bss+0x60C)
	sw      $0, %lo(_face_bss+0x60C)($at)
	lui     $at, %hi(_face_dynlist_data+0x00)
	sw      $0, %lo(_face_dynlist_data+0x00)($at)
	b       .L8018467C
	nop
.L8018467C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

face_dynlist_8018468C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	lw      $a1, 0x001C($sp)
	jal     dMakeObj
	li      $a0, 0x0001
	jal     face_dynlist_8018A530
	li      $a0, 0x0002
	lui     $t6, %hi(_face_bss+0x620)
	lw      $t6, %lo(_face_bss+0x620)($t6)
	la.u    $a0, _face_bss+0x628
	la.u    $a1, str_face_dynlist_801B6040
	lui     $at, %hi(_face_bss+0x620)
	addiu   $t7, $t6, 0x0001
	sw      $t7, %lo(_face_bss+0x620)($at)
	move    $a2, $t7
	la.l    $a1, str_face_dynlist_801B6040
	jal     sprintf
	la.l    $a0, _face_bss+0x628
	jal     dSetType
	li      $a0, 0x0004
	jal     face_dynlist_801844A8
	nop
	la.u    $a0, _face_bss+0x628
	jal     face_dynlist_8018435C
	la.l    $a0, _face_bss+0x628
	lw      $a0, 0x001C($sp)
	jal     face_dynlist_80186CAC
	nop
	jal     face_dynlist_801844DC
	nop
	lw      $a0, 0x001C($sp)
	jal     dUseObj
	nop
	lui     $t8, %hi(_face_bss+0x610)
	lw      $t8, %lo(_face_bss+0x610)($t8)
	lui     $at, %hi(_face_bss+0x614)
	sw      $t8, %lo(_face_bss+0x614)($at)
	b       .L80184730
	nop
.L80184730:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

face_dynlist_80184740:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	jal     dUseObj
	nop
	jal     face_dynlist_801844A8
	nop
	la.u    $a0, _face_bss+0x628
	jal     face_dynlist_8018435C
	la.l    $a0, _face_bss+0x628
	lw      $a0, 0x0018($sp)
	jal     dEndGroup
	nop
	lw      $a0, 0x0018($sp)
	jal     dSetNodeGroup
	nop
	jal     face_dynlist_801844DC
	nop
	lui     $at, %hi(_face_bss+0x614)
	sw      $0, %lo(_face_bss+0x614)($at)
	b       .L8018479C
	nop
.L8018479C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

face_dynlist_801847AC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	lui     $t6, %hi(_face_bss+0x610)
	lw      $t6, %lo(_face_bss+0x610)($t6)
	nop
	sw      $t6, 0x0024($sp)
	lw      $a1, 0x002C($sp)
	jal     dMakeObj
	li      $a0, 0x0002
	jal     dSetType
	li      $a0, 0x0003
	jal     dSetShapePtrPtr
	move    $a0, $0
	lui     $t7, %hi(_face_bss+0x614)
	lw      $t7, %lo(_face_bss+0x614)($t7)
	li      $a0, 0x000D
	lw      $a1, 0x0008($t7)
	jal     face_dynlist_80184FC4
	nop
	lui     $t8, %hi(_face_bss+0x610)
	lw      $t8, %lo(_face_bss+0x610)($t8)
	lui     $at, %hi(_face_bss+0x614)
	sw      $t8, %lo(_face_bss+0x614)($at)
	b       .L80184818
	nop
.L80184818:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

dMakeNetFromShape:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $a0, 0x0020($sp)
	jal     face_dynlist_80184510
	nop
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x001C($sp)
	nop
	bnez    $t6, .L80184864
	nop
	la.u    $a0, str_face_dynlist_801B6044
	lw      $a1, 0x0020($sp)
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6044
.L80184864:
	lw      $t7, 0x001C($sp)
	nop
	lw      $a0, 0x0008($t7)
	jal     make_netfromshape
	nop
	sw      $v0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	jal     face_dynlist_801848E8
	move    $a1, $0
	b       .L80184890
	nop
.L80184890:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

dMakeNetFromShapePtrPtr:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	nop
	lw      $a0, 0x0000($t6)
	jal     make_netfromshape
	nop
	sw      $v0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	jal     face_dynlist_801848E8
	move    $a1, $0
	b       .L801848D8
	nop
.L801848D8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

face_dynlist_801848E8:
	addiu   $sp, $sp, -0x0120
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0120($sp)
	sw      $a1, 0x0124($sp)
	la.u    $a0, str_face_dynlist_801B608C
	jal     face_stdio_8018C44C
	la.l    $a0, str_face_dynlist_801B608C
	lui     $t6, %hi(_face_dynlist_data+0x00)
	lw      $t6, %lo(_face_dynlist_data+0x00)($t6)
	nop
	bnez    $t6, .L80184948
	nop
	jal     face_gfx_8019BD90
	li      $a0, 0xEA60
	lui     $at, %hi(_face_dynlist_data+0x00)
	sw      $v0, %lo(_face_dynlist_data+0x00)($at)
	lui     $t7, %hi(_face_dynlist_data+0x00)
	lw      $t7, %lo(_face_dynlist_data+0x00)($t7)
	nop
	bnez    $t7, .L80184948
	nop
	la.u    $a0, str_face_dynlist_801B6094
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6094
.L80184948:
	la.u    $a0, str_face_dynlist_801B60C0
	jal     face_stdio_8018C598
	la.l    $a0, str_face_dynlist_801B60C0
	lui     $t8, %hi(_face_dynlist_data+0x20)
	lw      $t8, %lo(_face_dynlist_data+0x20)($t8)
	nop
	beqz    $t8, .L80184984
	nop
	la.u    $a1, str_face_dynlist_801B60C8
	lw      $a2, 0x0124($sp)
	la.l    $a1, str_face_dynlist_801B60C8
	jal     sprintf
	addiu   $a0, $sp, 0x001C
	b       .L801849A0
	sw      $0, 0x0124($sp)
.L80184984:
	lui     $a2, %hi(_face_bss+0x60C)
	lw      $a2, %lo(_face_bss+0x60C)($a2)
	la.u    $a1, str_face_dynlist_801B60CC
	la.l    $a1, str_face_dynlist_801B60CC
	addiu   $a0, $sp, 0x001C
	jal     sprintf
	addiu   $a2, $a2, 0x0001
.L801849A0:
	lw      $t9, 0x0124($sp)
	nop
	beqz    $t9, .L80184A04
	nop
	lw      $a0, 0x0124($sp)
	jal     face_dynlist_80184510
	nop
	beqz    $v0, .L801849D4
	nop
	la.u    $a0, str_face_dynlist_801B60D0
	lw      $a1, 0x0124($sp)
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B60D0
.L801849D4:
	lui     $t1, %hi(_face_bss+0x60C)
	lw      $t1, %lo(_face_bss+0x60C)($t1)
	lui     $t0, %hi(_face_dynlist_data+0x00)
	sll     $t2, $t1, 2
	lw      $t0, %lo(_face_dynlist_data+0x00)($t0)
	addu    $t2, $t2, $t1
	sll     $t2, $t2, 2
	lw      $a1, 0x0124($sp)
	jal     face_stdio_8018DDD8
	addu    $a0, $t0, $t2
	b       .L80184A2C
	nop
.L80184A04:
	lui     $t4, %hi(_face_bss+0x60C)
	lw      $t4, %lo(_face_bss+0x60C)($t4)
	lui     $t3, %hi(_face_dynlist_data+0x00)
	sll     $t5, $t4, 2
	lw      $t3, %lo(_face_dynlist_data+0x00)($t3)
	addu    $t5, $t5, $t4
	sll     $t5, $t5, 2
	addiu   $a1, $sp, 0x001C
	jal     face_stdio_8018DDD8
	addu    $a0, $t3, $t5
.L80184A2C:
	lui     $t7, %hi(_face_bss+0x60C)
	lw      $t7, %lo(_face_bss+0x60C)($t7)
	lui     $t6, %hi(_face_dynlist_data+0x00)
	sll     $t8, $t7, 2
	lw      $t6, %lo(_face_dynlist_data+0x00)($t6)
	addu    $t8, $t8, $t7
	sll     $t8, $t8, 2
	la.u    $a1, _face_bss+0x600
	la.l    $a1, _face_bss+0x600
	jal     face_stdio_8018DF6C
	addu    $a0, $t6, $t8
	lui     $t1, %hi(_face_bss+0x60C)
	lw      $t1, %lo(_face_bss+0x60C)($t1)
	lui     $t9, %hi(_face_dynlist_data+0x00)
	sll     $t0, $t1, 2
	lw      $t9, %lo(_face_dynlist_data+0x00)($t9)
	addu    $t0, $t0, $t1
	sll     $t0, $t0, 2
	jal     face_stdio_8018DF18
	addu    $a0, $t9, $t0
	sltiu   $at, $v0, 0x0008
	bnez    $at, .L80184AB4
	nop
	lui     $t4, %hi(_face_bss+0x60C)
	lw      $t4, %lo(_face_bss+0x60C)($t4)
	lui     $t2, %hi(_face_dynlist_data+0x00)
	sll     $t3, $t4, 2
	lw      $t2, %lo(_face_dynlist_data+0x00)($t2)
	addu    $t3, $t3, $t4
	sll     $t3, $t3, 2
	la.u    $a0, str_face_dynlist_801B6108
	la.l    $a0, str_face_dynlist_801B6108
	jal     face_stdio_8018D298
	addu    $a1, $t2, $t3
.L80184AB4:
	lui     $t5, %hi(_face_bss+0x60C)
	lw      $t5, %lo(_face_bss+0x60C)($t5)
	lui     $t7, %hi(_face_dynlist_data+0x00)
	sll     $t6, $t5, 2
	lw      $t7, %lo(_face_dynlist_data+0x00)($t7)
	addu    $t6, $t6, $t5
	sll     $t6, $t6, 2
	addu    $t8, $t7, $t6
	sw      $t5, 0x000C($t8)
	lui     $t1, %hi(_face_bss+0x60C)
	lw      $t1, %lo(_face_bss+0x60C)($t1)
	lui     $t0, %hi(_face_dynlist_data+0x00)
	sll     $t9, $t1, 2
	lw      $t0, %lo(_face_dynlist_data+0x00)($t0)
	addu    $t9, $t9, $t1
	sll     $t9, $t9, 2
	lui     $at, %hi(_face_bss+0x610)
	addu    $t4, $t9, $t0
	sw      $t4, %lo(_face_bss+0x610)($at)
	lui     $t7, %hi(_face_bss+0x60C)
	lw      $t7, %lo(_face_bss+0x60C)($t7)
	lui     $t3, %hi(_face_dynlist_data+0x00)
	sll     $t6, $t7, 2
	lw      $t3, %lo(_face_dynlist_data+0x00)($t3)
	addu    $t6, $t6, $t7
	lw      $t2, 0x0120($sp)
	sll     $t6, $t6, 2
	addu    $t5, $t3, $t6
	lui     $t8, %hi(_face_bss+0x60C)
	sw      $t2, 0x0008($t5)
	lw      $t8, %lo(_face_bss+0x60C)($t8)
	lui     $at, %hi(_face_bss+0x60C)
	addiu   $t1, $t8, 0x0001
	sw      $t1, %lo(_face_bss+0x60C)($at)
	lui     $t9, %hi(_face_bss+0x60C)
	lw      $t9, %lo(_face_bss+0x60C)($t9)
	nop
	slti    $at, $t9, 0x0BB8
	bnez    $at, .L80184B60
	nop
	la.u    $a0, str_face_dynlist_801B6128
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6128
.L80184B60:
	lw      $t0, 0x0120($sp)
	lui     $at, %hi(_face_dynlist_data+0x04)
	sw      $t0, %lo(_face_dynlist_data+0x04)($at)
	b       .L80184B74
	nop
.L80184B74:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0120
	jr      $ra
	nop

face_dynlist_80184B84:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	nop
	beqz    $t6, .L80184BD8
	nop
	lui     $t7, %hi(_face_dynlist_data+0x20)
	lw      $t7, %lo(_face_dynlist_data+0x20)($t7)
	nop
	beqz    $t7, .L80184BD8
	nop
	la.u    $a0, _face_bss+0x5E0
	la.u    $a1, str_face_dynlist_801B6150
	lw      $a2, 0x0018($sp)
	la.l    $a1, str_face_dynlist_801B6150
	jal     sprintf
	la.l    $a0, _face_bss+0x5E0
	la.u    $v0, _face_bss+0x5E0
	b       .L80184BE8
	la.l    $v0, _face_bss+0x5E0
.L80184BD8:
	b       .L80184BE8
	move    $v0, $0
	b       .L80184BE8
	nop
.L80184BE8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl dMakeObj
dMakeObj:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x002C($sp)
	sw      $a0, 0x0040($sp)
	sw      $a1, 0x0044($sp)
	sw      $s0, 0x0028($sp)
	lw      $t6, 0x0040($sp)
	nop
	sltiu   $at, $t6, 0x0013
	beqz    $at, .L80184EBC
	nop
	sll     $t6, $t6, 2
	lui     $at, %hi(face_dynlist_801B7FB8)
	addu    $at, $at, $t6
	lw      $t6, %lo(face_dynlist_801B7FB8)($at)
	nop
	jr      $t6
	nop
.globl L80184C3C
L80184C3C:
	la.u    $a0, str_face_dynlist_801B6154
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6154
	b       .L80184EC8
	nop
.globl L80184C50
L80184C50:
	move    $a0, $0
	li      $a1, 0x0000
	li      $a2, 0x0000
	jal     face_joint_8018F188
	li      $a3, 0x0000
	sw      $v0, 0x003C($sp)
	b       .L80184EC8
	nop
.globl L80184C70
L80184C70:
	move    $a0, $0
	li      $a1, 0x0000
	li      $a2, 0x0000
	jal     face_joint_8018F188
	li      $a3, 0x0000
	sw      $v0, 0x003C($sp)
	b       .L80184EC8
	nop
.globl L80184C90
L80184C90:
	move    $a0, $0
	move    $a1, $0
	move    $a2, $0
	move    $a3, $0
	jal     face_net_801924F4
	sw      $0, 0x0010($sp)
	sw      $v0, 0x003C($sp)
	b       .L80184EC8
	nop
.globl L80184CB4
L80184CB4:
	jal     make_group
	move    $a0, $0
	sw      $v0, 0x003C($sp)
	lw      $t7, 0x003C($sp)
	nop
	sw      $t7, 0x0038($sp)
	b       .L80184EC8
	nop
.globl L80184CD4
L80184CD4:
	lw      $a1, 0x0044($sp)
	jal     dMakeObj
	li      $a0, 0x0012
	lui     $t9, %hi(_face_dynlist_data+0x04)
	lw      $t9, %lo(_face_dynlist_data+0x04)($t9)
	li      $t8, 0x0001
	sw      $t8, 0x0030($t9)
	b       .L80184EEC
	nop
.globl L80184CF8
L80184CF8:
	move    $a0, $0
	jal     face_object_8017D010
	move    $a1, $0
	sw      $v0, 0x003C($sp)
	b       .L80184EC8
	nop
.globl L80184D10
L80184D10:
	move    $a0, $0
	move    $a1, $0
	move    $a2, $0
	jal     face_joint_8018FEDC
	move    $a3, $0
	sw      $v0, 0x003C($sp)
	b       .L80184EC8
	nop
.globl L80184D30
L80184D30:
	mtc1    $0, $f4
	move    $a0, $0
	move    $a1, $0
	li      $a2, 0x0000
	li      $a3, 0x0000
	jal     face_particle_80182630
	swc1    $f4, 0x0010($sp)
	sw      $v0, 0x003C($sp)
	b       .L80184EC8
	nop
.globl L80184D58
L80184D58:
	mtc1    $0, $f12
	mtc1    $0, $f14
	jal     face_shape_8019764C
	li      $a2, 0x0000
	sw      $v0, 0x003C($sp)
	b       .L80184EC8
	nop
.globl L80184D74
L80184D74:
	li      $at, 0x3FF00000
	mtc1    $at, $f7
	mtc1    $0, $f6
	mtc1    $at, $f13
	mtc1    $at, $f15
	mtc1    $0, $f12
	mtc1    $0, $f14
	swc1    $f7, 0x0010($sp)
	jal     make_face
	swc1    $f6, 0x0014($sp)
	sw      $v0, 0x003C($sp)
	b       .L80184EC8
	nop
.globl L80184DA8
L80184DA8:
	move    $a0, $0
	jal     face_object_8017CF7C
	move    $a1, $0
	sw      $v0, 0x003C($sp)
	b       .L80184EC8
	nop
.globl L80184DC0
L80184DC0:
	move    $a0, $0
	move    $a1, $0
	jal     face_object_8017D22C
	move    $a2, $0
	sw      $v0, 0x003C($sp)
	b       .L80184EC8
	nop
.globl L80184DDC
L80184DDC:
	lw      $a0, 0x0044($sp)
	jal     face_dynlist_80184B84
	nop
	move    $s0, $v0
	move    $a1, $s0
	jal     face_shape_8019797C
	move    $a0, $0
	sw      $v0, 0x003C($sp)
	b       .L80184EC8
	nop
.globl L80184E04
L80184E04:
	move    $a0, $0
	jal     face_gadget_8018BBC0
	move    $a1, $0
	sw      $v0, 0x003C($sp)
	b       .L80184EC8
	nop
.globl L80184E1C
L80184E1C:
	move    $a0, $0
	move    $a1, $0
	li      $a2, 0x0008
	move    $a3, $0
	sw      $0, 0x0010($sp)
	jal     face_gadget_8018BB00
	sw      $0, 0x0014($sp)
	sw      $v0, 0x003C($sp)
	b       .L80184EC8
	nop
.globl L80184E44
L80184E44:
	li.u    $a1, 0x000E6018
	li.l    $a1, 0x000E6018
	move    $a0, $0
	li      $a2, 0x0002
	move    $a3, $0
	sw      $0, 0x0010($sp)
	sw      $0, 0x0014($sp)
	sw      $0, 0x0018($sp)
	jal     face_object_8017D3E8
	sw      $0, 0x001C($sp)
	sw      $v0, 0x003C($sp)
	b       .L80184EC8
	nop
.globl L80184E78
L80184E78:
	jal     face_object_8017D67C
	nop
	sw      $v0, 0x003C($sp)
	b       .L80184EC8
	nop
.globl L80184E8C
L80184E8C:
	move    $a0, $0
	move    $a1, $0
	jal     face_object_8017D2D4
	move    $a2, $0
	sw      $v0, 0x003C($sp)
	lui     $a0, %hi(_face_bss+0x298)
	lw      $a0, %lo(_face_bss+0x298)($a0)
	lw      $a1, 0x003C($sp)
	jal     addto_group
	nop
	b       .L80184EC8
	nop
.L80184EBC:
	la.u    $a0, str_face_dynlist_801B617C
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B617C
.L80184EC8:
	lw      $a0, 0x003C($sp)
	lw      $a1, 0x0044($sp)
	jal     face_dynlist_801848E8
	nop
	lw      $v0, 0x003C($sp)
	b       .L80184EEC
	nop
	b       .L80184EEC
	nop
.L80184EEC:
	lw      $ra, 0x002C($sp)
	lw      $s0, 0x0028($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0040

dAttach:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lui     $t6, %hi(_face_dynlist_data+0x04)
	lw      $t6, %lo(_face_dynlist_data+0x04)($t6)
	nop
	bnez    $t6, .L80184F28
	nop
	la.u    $a0, str_face_dynlist_801B619C
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B619C
.L80184F28:
	lw      $a0, 0x0020($sp)
	jal     face_dynlist_80184510
	nop
	sw      $v0, 0x001C($sp)
	lw      $t7, 0x001C($sp)
	nop
	bnez    $t7, .L80184F58
	nop
	la.u    $a0, str_face_dynlist_801B61C0
	lw      $a1, 0x0020($sp)
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B61C0
.L80184F58:
	lui     $t8, %hi(_face_dynlist_data+0x04)
	lw      $t8, %lo(_face_dynlist_data+0x04)($t8)
	li      $at, 0x0004
	lw      $t9, 0x000C($t8)
	nop
	bne     $t9, $at, .L80184F84
	nop
	b       .L80184F7C
	nop
.L80184F7C:
	b       .L80184FAC
	nop
.L80184F84:
	lui     $t0, %hi(_face_dynlist_data+0x04)
	lw      $t0, %lo(_face_dynlist_data+0x04)($t0)
	lui     $a2, %hi(_face_bss+0x610)
	lw      $a2, %lo(_face_bss+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B61E0
	la.u    $a1, str_face_dynlist_801B6214
	lw      $a3, 0x000C($t0)
	la.l    $a1, str_face_dynlist_801B6214
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B61E0
.L80184FAC:
	b       .L80184FB4
	nop
.L80184FB4:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

face_dynlist_80184FC4:
	addiu   $sp, $sp, -0x0050
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0050($sp)
	sw      $a1, 0x0054($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(_face_bss+0x610)
	lw      $t6, %lo(_face_bss+0x610)($t6)
	nop
	sw      $t6, 0x003C($sp)
	jal     face_dynlist_80183A50
	nop
	lui     $t7, %hi(_face_dynlist_data+0x04)
	lw      $t7, %lo(_face_dynlist_data+0x04)($t7)
	nop
	bnez    $t7, .L80185010
	nop
	la.u    $a0, str_face_dynlist_801B6220
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6220
.L80185010:
	lw      $t8, 0x0054($sp)
	li      $at, 0x0004
	lw      $s0, 0x000C($t8)
	nop
	beq     $s0, $at, .L80185054
	nop
	li      $at, 0x0008
	beq     $s0, $at, .L801850C4
	nop
	li      $at, 0x0020
	beq     $s0, $at, .L8018508C
	nop
	li      $at, 0x00010000
	beq     $s0, $at, .L801850FC
	nop
	b       .L80185134
	nop
.L80185054:
	lw      $t9, 0x0054($sp)
	nop
	lw      $t0, 0x01F8($t9)
	nop
	bnez    $t0, .L80185084
	sw      $t0, 0x0048($sp)
	jal     make_group
	move    $a0, $0
	lw      $t1, 0x0054($sp)
	move    $s0, $v0
	sw      $s0, 0x01F8($t1)
	sw      $s0, 0x0048($sp)
.L80185084:
	b       .L8018515C
	nop
.L8018508C:
	lw      $t2, 0x0054($sp)
	nop
	lw      $t3, 0x01D4($t2)
	nop
	bnez    $t3, .L801850BC
	sw      $t3, 0x0048($sp)
	jal     make_group
	move    $a0, $0
	lw      $t4, 0x0054($sp)
	move    $s0, $v0
	sw      $s0, 0x01D4($t4)
	sw      $s0, 0x0048($sp)
.L801850BC:
	b       .L8018515C
	nop
.L801850C4:
	lw      $t5, 0x0054($sp)
	nop
	lw      $t6, 0x00B4($t5)
	nop
	bnez    $t6, .L801850F4
	sw      $t6, 0x0048($sp)
	jal     make_group
	move    $a0, $0
	lw      $t7, 0x0054($sp)
	move    $s0, $v0
	sw      $s0, 0x00B4($t7)
	sw      $s0, 0x0048($sp)
.L801850F4:
	b       .L8018515C
	nop
.L801850FC:
	lw      $t8, 0x0054($sp)
	nop
	lw      $t9, 0x0030($t8)
	nop
	bnez    $t9, .L8018512C
	sw      $t9, 0x0048($sp)
	jal     make_group
	move    $a0, $0
	lw      $t0, 0x0054($sp)
	move    $s0, $v0
	sw      $s0, 0x0030($t0)
	sw      $s0, 0x0048($sp)
.L8018512C:
	b       .L8018515C
	nop
.L80185134:
	lui     $t1, %hi(_face_dynlist_data+0x04)
	lw      $t1, %lo(_face_dynlist_data+0x04)($t1)
	lui     $a2, %hi(_face_bss+0x610)
	lw      $a2, %lo(_face_bss+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B6244
	la.u    $a1, str_face_dynlist_801B6278
	lw      $a3, 0x000C($t1)
	la.l    $a1, str_face_dynlist_801B6278
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6244
.L8018515C:
	lui     $a1, %hi(_face_dynlist_data+0x04)
	lw      $a1, %lo(_face_dynlist_data+0x04)($a1)
	lw      $a0, 0x0048($sp)
	jal     face_object_8017DDFC
	nop
	beqz    $v0, .L80185180
	nop
	b       .L8018535C
	nop
.L80185180:
	lui     $a1, %hi(_face_dynlist_data+0x04)
	lw      $a1, %lo(_face_dynlist_data+0x04)($a1)
	lw      $a0, 0x0048($sp)
	jal     addto_group
	nop
	lw      $t2, 0x0050($sp)
	nop
	andi    $t3, $t2, 0x0009
	beqz    $t3, .L80185200
	nop
	jal     dGetWorldPos
	addiu   $a0, $sp, 0x0030
	lw      $a0, 0x0054($sp)
	jal     face_dynlist_80186C84
	nop
	jal     dGetWorldPos
	addiu   $a0, $sp, 0x0024
	lwc1    $f4, 0x0030($sp)
	lwc1    $f6, 0x0024($sp)
	nop
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0030($sp)
	lwc1    $f10, 0x0034($sp)
	lwc1    $f16, 0x0028($sp)
	nop
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0034($sp)
	lwc1    $f4, 0x0038($sp)
	lwc1    $f6, 0x002C($sp)
	nop
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0038($sp)
.L80185200:
	jal     face_dynlist_80183A80
	nop
	lui     $t4, %hi(_face_dynlist_data+0x04)
	lw      $t4, %lo(_face_dynlist_data+0x04)($t4)
	li      $at, 0x0004
	lw      $s0, 0x000C($t4)
	nop
	beq     $s0, $at, .L80185250
	nop
	li      $at, 0x0008
	beq     $s0, $at, .L801852B0
	nop
	li      $at, 0x0020
	beq     $s0, $at, .L80185280
	nop
	li      $at, 0x00010000
	beq     $s0, $at, .L801852E0
	nop
	b       .L80185310
	nop
.L80185250:
	lui     $t6, %hi(_face_dynlist_data+0x04)
	lw      $t6, %lo(_face_dynlist_data+0x04)($t6)
	lw      $t5, 0x0050($sp)
	nop
	sw      $t5, 0x01FC($t6)
	lui     $t8, %hi(_face_dynlist_data+0x04)
	lw      $t8, %lo(_face_dynlist_data+0x04)($t8)
	lw      $t7, 0x0054($sp)
	nop
	sw      $t7, 0x020C($t8)
	b       .L80185338
	nop
.L80185280:
	lui     $t0, %hi(_face_dynlist_data+0x04)
	lw      $t0, %lo(_face_dynlist_data+0x04)($t0)
	lw      $t9, 0x0050($sp)
	nop
	sw      $t9, 0x01E4($t0)
	lui     $t2, %hi(_face_dynlist_data+0x04)
	lw      $t2, %lo(_face_dynlist_data+0x04)($t2)
	lw      $t1, 0x0054($sp)
	nop
	sw      $t1, 0x01E8($t2)
	b       .L80185338
	nop
.L801852B0:
	lui     $t4, %hi(_face_dynlist_data+0x04)
	lw      $t4, %lo(_face_dynlist_data+0x04)($t4)
	lw      $t3, 0x0050($sp)
	nop
	sw      $t3, 0x00B8($t4)
	lui     $t6, %hi(_face_dynlist_data+0x04)
	lw      $t6, %lo(_face_dynlist_data+0x04)($t6)
	lw      $t5, 0x0054($sp)
	nop
	sw      $t5, 0x00BC($t6)
	b       .L80185338
	nop
.L801852E0:
	lui     $t8, %hi(_face_dynlist_data+0x04)
	lw      $t8, %lo(_face_dynlist_data+0x04)($t8)
	lw      $t7, 0x0050($sp)
	nop
	sw      $t7, 0x0034($t8)
	lui     $t0, %hi(_face_dynlist_data+0x04)
	lw      $t0, %lo(_face_dynlist_data+0x04)($t0)
	lw      $t9, 0x0054($sp)
	nop
	sw      $t9, 0x0044($t0)
	b       .L80185338
	nop
.L80185310:
	lui     $t1, %hi(_face_dynlist_data+0x04)
	lw      $t1, %lo(_face_dynlist_data+0x04)($t1)
	lui     $a2, %hi(_face_bss+0x610)
	lw      $a2, %lo(_face_bss+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B6284
	la.u    $a1, str_face_dynlist_801B62B8
	lw      $a3, 0x000C($t1)
	la.l    $a1, str_face_dynlist_801B62B8
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6284
.L80185338:
	lw      $t2, 0x0050($sp)
	nop
	andi    $t3, $t2, 0x0009
	beqz    $t3, .L80185354
	nop
	jal     dSetAttOffset
	addiu   $a0, $sp, 0x0030
.L80185354:
	b       .L8018535C
	nop
.L8018535C:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0050

dAttachTo:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	lw      $t6, 0x0024($sp)
	nop
	bnez    $t6, .L80185394
	nop
	b       .L80185400
	nop
.L80185394:
	lui     $t7, %hi(_face_dynlist_data+0x04)
	lw      $t7, %lo(_face_dynlist_data+0x04)($t7)
	nop
	bnez    $t7, .L801853B4
	nop
	la.u    $a0, str_face_dynlist_801B62C4
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B62C4
.L801853B4:
	lw      $a0, 0x0024($sp)
	jal     face_dynlist_80184510
	nop
	sw      $v0, 0x001C($sp)
	lw      $t8, 0x001C($sp)
	nop
	bnez    $t8, .L801853E4
	nop
	la.u    $a0, str_face_dynlist_801B62E8
	lw      $a1, 0x0024($sp)
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B62E8
.L801853E4:
	lw      $t9, 0x001C($sp)
	lw      $a0, 0x0020($sp)
	lw      $a1, 0x0008($t9)
	jal     face_dynlist_80184FC4
	nop
	b       .L80185400
	nop
.L80185400:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

face_dynlist_80185410:
	addiu   $sp, $sp, -0x0008
	bnez    $a2, .L80185424
	nop
	b       .L80185454
	nop
.L80185424:
	move    $a3, $a2
	beqz    $a3, .L8018544C
	addiu   $a2, $a2, -0x0001
.L80185430:
	lbu     $t6, 0x0000($a0)
	addiu   $a1, $a1, 0x0001
	addiu   $a0, $a0, 0x0001
	sb      $t6, -0x0001($a1)
	move    $a3, $a2
	bnez    $a3, .L80185430
	addiu   $a2, $a2, -0x0001
.L8018544C:
	b       .L80185454
	nop
.L80185454:
	jr      $ra
	addiu   $sp, $sp, 0x0008

animdata:
	addiu   $sp, $sp, -0x0080
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0080($sp)
	sw      $s0, 0x0018($sp)
	lui     $at, %hi(face_dynlist_801B8004)
	lwc1    $f4, %lo(face_dynlist_801B8004)($at)
	nop
	swc1    $f4, 0x002C($sp)
	la.u    $a0, str_face_dynlist_801B630C
	jal     face_stdio_8018C44C
	la.l    $a0, str_face_dynlist_801B630C
	lw      $t6, 0x0080($sp)
	nop
	lw      $t7, 0x0018($t6)
	nop
	bnez    $t7, .L801854AC
	sw      $t7, 0x0044($sp)
	la.u    $a0, str_face_dynlist_801B6318
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6318
.L801854AC:
	lw      $t8, 0x0044($sp)
	nop
	lw      $t9, 0x001C($t8)
	nop
	lw      $t0, 0x0008($t9)
	nop
	bnez    $t0, .L801854D8
	sw      $t0, 0x0050($sp)
	la.u    $a0, str_face_dynlist_801B6328
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6328
.L801854D8:
	lw      $t1, 0x0050($sp)
	nop
	sw      $t1, 0x004C($sp)
	sw      $0, 0x0038($sp)
	lw      $t2, 0x004C($sp)
	nop
	lw      $s0, 0x0000($t2)
	addiu   $t4, $t2, 0x000C
	slti    $t3, $s0, 0x0000
	xori    $t3, $t3, 0x0001
	move    $s0, $t3
	beqz    $s0, .L80185540
	sw      $t4, 0x004C($sp)
.L8018550C:
	lw      $t5, 0x0038($sp)
	nop
	addiu   $t6, $t5, 0x0001
	sw      $t6, 0x0038($sp)
	lw      $t7, 0x004C($sp)
	nop
	lw      $s0, 0x0000($t7)
	addiu   $t9, $t7, 0x000C
	slti    $t8, $s0, 0x0000
	xori    $t8, $t8, 0x0001
	move    $s0, $t8
	bnez    $s0, .L8018550C
	sw      $t9, 0x004C($sp)
.L80185540:
	lw      $a0, 0x0038($sp)
	nop
	sll     $t0, $a0, 2
	subu    $t0, $t0, $a0
	sll     $t0, $t0, 2
	jal     gd_malloc
	move    $a0, $t0
	sw      $v0, 0x004C($sp)
	lw      $t1, 0x004C($sp)
	nop
	bnez    $t1, .L8018557C
	sw      $t1, 0x0048($sp)
	la.u    $a0, str_face_dynlist_801B633C
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B633C
.L8018557C:
	lw      $t3, 0x0038($sp)
	sw      $0, 0x0034($sp)
	blez    $t3, .L801859E0
	nop
.L8018558C:
	sw      $0, 0x0030($sp)
	lw      $t2, 0x0050($sp)
	nop
	lw      $t4, 0x0004($t2)
	nop
	beqz    $t4, .L80185950
	nop
	lw      $t5, 0x0050($sp)
	nop
	lw      $t6, 0x0004($t5)
	nop
	addiu   $t8, $t6, -0x0001
	sltiu   $at, $t8, 0x000B
	beqz    $at, L80185654
	nop
	sll     $t8, $t8, 2
	lui     $at, %hi(face_dynlist_801B8008)
	addu    $at, $at, $t8
	lw      $t8, %lo(face_dynlist_801B8008)($at)
	nop
	jr      $t8
	nop
.globl L801855E4
L801855E4:
	li      $t7, 0x000C
	sw      $t7, 0x0040($sp)
	b       .L80185668
	nop
.globl L801855F4
L801855F4:
	li      $t9, 0x0006
	sw      $t9, 0x0040($sp)
	b       .L80185668
	nop
.globl L80185604
L80185604:
	li      $t0, 0x0006
	sw      $t0, 0x0040($sp)
	b       .L80185668
	nop
.globl L80185614
L80185614:
	li      $t1, 0x000C
	sw      $t1, 0x0040($sp)
	b       .L80185668
	nop
.globl L80185624
L80185624:
	li      $t3, 0x0024
	sw      $t3, 0x0040($sp)
	b       .L80185668
	nop
.globl L80185634
L80185634:
	li      $t2, 0x004C
	sw      $t2, 0x0040($sp)
	b       .L80185668
	nop
.globl L80185644
L80185644:
	li      $t4, 0x0040
	sw      $t4, 0x0040($sp)
	b       .L80185668
	nop
.globl L80185654
L80185654:
	la.u    $a0, str_face_dynlist_801B635C
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B635C
	b       .L80185668
	nop
.L80185668:
	lw      $t5, 0x0050($sp)
	lw      $t8, 0x0040($sp)
	lw      $t6, 0x0000($t5)
	nop
	multu   $t6, $t8
	mflo    $a0
	jal     gd_malloc
	nop
	sw      $v0, 0x0030($sp)
	lw      $t7, 0x0030($sp)
	nop
	bnez    $t7, .L801856A8
	nop
	la.u    $a0, str_face_dynlist_801B6380
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6380
.L801856A8:
	lw      $t9, 0x0050($sp)
	li      $at, 0x0003
	lw      $t0, 0x0004($t9)
	nop
	bne     $t0, $at, .L8018592C
	nop
	lw      $t1, 0x0050($sp)
	sw      $0, 0x003C($sp)
	lw      $t3, 0x0000($t1)
	nop
	blez    $t3, .L8018591C
	nop
.L801856D8:
	lw      $t5, 0x003C($sp)
	lw      $t2, 0x0050($sp)
	sll     $t6, $t5, 3
	lw      $t4, 0x0008($t2)
	addu    $t6, $t6, $t5
	sll     $t6, $t6, 1
	addu    $t8, $t4, $t6
	sw      $t8, 0x0054($sp)
	lw      $t9, 0x003C($sp)
	lw      $t7, 0x0030($sp)
	sll     $t0, $t9, 2
	addu    $t0, $t0, $t9
	sll     $t0, $t0, 2
	subu    $t0, $t0, $t9
	sll     $t0, $t0, 2
	addu    $t1, $t7, $t0
	sw      $t1, 0x0028($sp)
	lw      $t3, 0x0054($sp)
	lwc1    $f10, 0x002C($sp)
	lh      $t2, 0x0000($t3)
	nop
	mtc1    $t2, $f6
	nop
	cvt.s.w $f8, $f6
	mul.s   $f16, $f8, $f10
	swc1    $f16, 0x0058($sp)
	lw      $t5, 0x0054($sp)
	lwc1    $f6, 0x002C($sp)
	lh      $t4, 0x0002($t5)
	nop
	mtc1    $t4, $f18
	nop
	cvt.s.w $f4, $f18
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x005C($sp)
	lw      $t6, 0x0054($sp)
	lwc1    $f18, 0x002C($sp)
	lh      $t8, 0x0004($t6)
	nop
	mtc1    $t8, $f10
	nop
	cvt.s.w $f16, $f10
	mul.s   $f4, $f16, $f18
	swc1    $f4, 0x0060($sp)
	lw      $t9, 0x0054($sp)
	lwc1    $f10, 0x002C($sp)
	lh      $t7, 0x0006($t9)
	nop
	mtc1    $t7, $f6
	nop
	cvt.s.w $f8, $f6
	mul.s   $f16, $f8, $f10
	swc1    $f16, 0x0064($sp)
	lw      $t0, 0x0054($sp)
	lwc1    $f6, 0x002C($sp)
	lh      $t1, 0x0008($t0)
	nop
	mtc1    $t1, $f18
	nop
	cvt.s.w $f4, $f18
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x0068($sp)
	lw      $t3, 0x0054($sp)
	lwc1    $f18, 0x002C($sp)
	lh      $t2, 0x000A($t3)
	nop
	mtc1    $t2, $f10
	nop
	cvt.s.w $f16, $f10
	mul.s   $f4, $f16, $f18
	swc1    $f4, 0x006C($sp)
	lw      $t5, 0x0054($sp)
	nop
	lh      $t4, 0x000C($t5)
	nop
	mtc1    $t4, $f6
	nop
	cvt.s.w $f8, $f6
	swc1    $f8, 0x0070($sp)
	lw      $t6, 0x0054($sp)
	nop
	lh      $t8, 0x000E($t6)
	nop
	mtc1    $t8, $f10
	nop
	cvt.s.w $f16, $f10
	swc1    $f16, 0x0074($sp)
	lw      $t9, 0x0054($sp)
	nop
	lh      $t7, 0x0010($t9)
	nop
	mtc1    $t7, $f18
	nop
	cvt.s.w $f4, $f18
	swc1    $f4, 0x0078($sp)
	lw      $a0, 0x0028($sp)
	jal     face_math_801963C0
	nop
	lw      $a0, 0x0028($sp)
	addiu   $a1, $sp, 0x0058
	jal     face_math_80194360
	addiu   $a1, $a1, 0x000C
	lw      $a0, 0x0028($sp)
	addiu   $a1, $sp, 0x0058
	jal     face_math_80194424
	addiu   $a1, $a1, 0x0018
	lw      $t1, 0x003C($sp)
	lw      $t0, 0x0030($sp)
	sll     $t3, $t1, 2
	addu    $t3, $t3, $t1
	sll     $t3, $t3, 2
	subu    $t3, $t3, $t1
	lwc1    $f6, 0x0058($sp)
	sll     $t3, $t3, 2
	addu    $t2, $t0, $t3
	swc1    $f6, 0x0040($t2)
	lw      $t4, 0x003C($sp)
	lw      $t5, 0x0030($sp)
	sll     $t6, $t4, 2
	addu    $t6, $t6, $t4
	sll     $t6, $t6, 2
	subu    $t6, $t6, $t4
	lwc1    $f8, 0x005C($sp)
	sll     $t6, $t6, 2
	addu    $t8, $t5, $t6
	swc1    $f8, 0x0044($t8)
	lw      $t7, 0x003C($sp)
	lw      $t9, 0x0030($sp)
	sll     $t1, $t7, 2
	addu    $t1, $t1, $t7
	sll     $t1, $t1, 2
	subu    $t1, $t1, $t7
	lwc1    $f10, 0x0060($sp)
	sll     $t1, $t1, 2
	addu    $t0, $t9, $t1
	swc1    $f10, 0x0048($t0)
	lw      $t3, 0x003C($sp)
	lw      $t4, 0x0050($sp)
	addiu   $t2, $t3, 0x0001
	sw      $t2, 0x003C($sp)
	lw      $t5, 0x0000($t4)
	nop
	slt     $at, $t2, $t5
	bnez    $at, .L801856D8
	nop
.L8018591C:
	lw      $t8, 0x0050($sp)
	li      $t6, 0x0009
	b       .L80185950
	sw      $t6, 0x0004($t8)
.L8018592C:
	lw      $t7, 0x0050($sp)
	lw      $t1, 0x0040($sp)
	lw      $t9, 0x0000($t7)
	lw      $a1, 0x0030($sp)
	multu   $t9, $t1
	lw      $a0, 0x0008($t7)
	mflo    $a2
	jal     face_dynlist_80185410
	nop
.L80185950:
	lw      $t2, 0x0034($sp)
	lw      $t0, 0x0050($sp)
	sll     $t5, $t2, 2
	lw      $t4, 0x004C($sp)
	subu    $t5, $t5, $t2
	lw      $t3, 0x0004($t0)
	sll     $t5, $t5, 2
	addu    $t6, $t4, $t5
	sw      $t3, 0x0004($t6)
	lw      $t1, 0x0034($sp)
	lw      $t8, 0x0050($sp)
	sll     $t0, $t1, 2
	lw      $t9, 0x004C($sp)
	subu    $t0, $t0, $t1
	lw      $t7, 0x0000($t8)
	sll     $t0, $t0, 2
	addu    $t2, $t9, $t0
	sw      $t7, 0x0000($t2)
	lw      $t3, 0x0034($sp)
	lw      $t5, 0x004C($sp)
	sll     $t6, $t3, 2
	subu    $t6, $t6, $t3
	lw      $t4, 0x0030($sp)
	sll     $t6, $t6, 2
	addu    $t8, $t5, $t6
	sw      $t4, 0x0008($t8)
	lw      $t1, 0x0050($sp)
	nop
	addiu   $t9, $t1, 0x000C
	sw      $t9, 0x0050($sp)
	lw      $t0, 0x0034($sp)
	lw      $t2, 0x0038($sp)
	addiu   $t7, $t0, 0x0001
	slt     $at, $t7, $t2
	bnez    $at, .L8018558C
	sw      $t7, 0x0034($sp)
.L801859E0:
	lw      $t5, 0x0044($sp)
	lw      $t3, 0x0048($sp)
	lw      $t6, 0x001C($t5)
	nop
	sw      $t3, 0x0008($t6)
	la.u    $a0, str_face_dynlist_801B63A0
	jal     face_stdio_8018C598
	la.l    $a0, str_face_dynlist_801B63A0
	b       .L80185A08
	nop
.L80185A08:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0080

chk_shapegen:
	addiu   $sp, $sp, -0x0060
	sw      $ra, 0x0024($sp)
	sw      $a0, 0x0060($sp)
	swc1    $f21, 0x0018($sp)
	swc1    $f20, 0x001C($sp)
	la.u    $a0, str_face_dynlist_801B63AC
	jal     face_stdio_8018C44C
	la.l    $a0, str_face_dynlist_801B63AC
	la.u    $a0, str_face_dynlist_801B63BC
	jal     face_stdio_8018D560
	la.l    $a0, str_face_dynlist_801B63BC
	lw      $t6, 0x0060($sp)
	nop
	lw      $t7, 0x002C($t6)
	nop
	sw      $t7, 0x0050($sp)
	lw      $t8, 0x0060($sp)
	nop
	lw      $t9, 0x001C($t8)
	nop
	sw      $t9, 0x004C($sp)
	lw      $t0, 0x0060($sp)
	nop
	lw      $t1, 0x0020($t0)
	nop
	sw      $t1, 0x0048($sp)
	lw      $t2, 0x0048($sp)
	nop
	beqz    $t2, .L80186130
	nop
	lw      $t3, 0x004C($sp)
	nop
	beqz    $t3, .L80186130
	nop
	lw      $t4, 0x0048($sp)
	nop
	lw      $t5, 0x0030($t4)
	nop
	andi    $t6, $t5, 0x0001
	beqz    $t6, .L80186130
	nop
	lw      $t7, 0x004C($sp)
	nop
	lw      $t8, 0x0030($t7)
	nop
	andi    $t9, $t8, 0x0001
	beqz    $t9, .L80186130
	nop
	lw      $t0, 0x0048($sp)
	nop
	lw      $t1, 0x001C($t0)
	nop
	lw      $t2, 0x0008($t1)
	nop
	sw      $t2, 0x0034($sp)
	lw      $t3, 0x004C($sp)
	nop
	lw      $t4, 0x001C($t3)
	nop
	lw      $t5, 0x0008($t4)
	nop
	sw      $t5, 0x0030($sp)
	lw      $t6, 0x0030($sp)
	li      $at, 0x0001
	lw      $t7, 0x0004($t6)
	nop
	beq     $t7, $at, .L80185B34
	nop
	la.u    $a0, str_face_dynlist_801B63CC
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B63CC
.L80185B34:
	lw      $t8, 0x0034($sp)
	li      $at, 0x0001
	lw      $t9, 0x0004($t8)
	nop
	beq     $t9, $at, .L80185B58
	nop
	la.u    $a0, str_face_dynlist_801B63E4
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B63E4
.L80185B58:
	lw      $t0, 0x0034($sp)
	nop
	lw      $t1, 0x0000($t0)
	nop
	sltiu   $at, $t1, 0x0BB8
	bnez    $at, .L80185B80
	nop
	la.u    $a0, str_face_dynlist_801B63FC
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B63FC
.L80185B80:
	jal     face_gfx_8019BD90
	li      $a0, 0x2EE0
	sw      $v0, 0x0054($sp)
	lui     $t2, %hi(_face_bss+0x56C)
	lw      $t2, %lo(_face_bss+0x56C)($t2)
	nop
	sw      $t2, 0x002C($sp)
	lw      $t3, 0x0034($sp)
	sw      $0, 0x0038($sp)
	lw      $t4, 0x0000($t3)
	nop
	beqz    $t4, .L80185C6C
	nop
.L80185BB4:
	lw      $t7, 0x0038($sp)
	lw      $t5, 0x0034($sp)
	sll     $t8, $t7, 2
	lw      $t6, 0x0008($t5)
	subu    $t8, $t8, $t7
	sll     $t8, $t8, 1
	addu    $t9, $t6, $t8
	lh      $t2, 0x0004($t9)
	lh      $t0, 0x0000($t9)
	mtc1    $t2, $f8
	lh      $t1, 0x0002($t9)
	cvt.s.w $f8, $f8
	mtc1    $t0, $f4
	mtc1    $t1, $f6
	mfc1    $a2, $f8
	cvt.s.w $f12, $f4
	jal     face_shape_8019764C
	cvt.s.w $f14, $f6
	sw      $v0, 0x0058($sp)
	mtc1    $0, $f10
	lw      $t3, 0x0058($sp)
	nop
	swc1    $f10, 0x0034($t3)
	lw      $t4, 0x0058($sp)
	nop
	lwc1    $f20, 0x0034($t4)
	nop
	swc1    $f20, 0x0030($t4)
	lw      $t5, 0x0058($sp)
	nop
	swc1    $f20, 0x002C($t5)
	lw      $t8, 0x0038($sp)
	lw      $t6, 0x0054($sp)
	lw      $t7, 0x0058($sp)
	sll     $t0, $t8, 2
	addu    $t1, $t6, $t0
	sw      $t7, 0x0000($t1)
	lw      $t9, 0x0038($sp)
	lw      $t3, 0x0034($sp)
	addiu   $t2, $t9, 0x0001
	sw      $t2, 0x0038($sp)
	lw      $t4, 0x0000($t3)
	nop
	sltu    $at, $t2, $t4
	bnez    $at, .L80185BB4
	nop
.L80185C6C:
	lw      $a1, 0x002C($sp)
	li      $a0, 0x0100
	jal     face_object_8017D76C
	move    $a2, $0
	sw      $v0, 0x003C($sp)
	lui     $t5, %hi(_face_bss+0x56C)
	lw      $t5, %lo(_face_bss+0x56C)($t5)
	nop
	sw      $t5, 0x002C($sp)
	lw      $t8, 0x0030($sp)
	sw      $0, 0x0038($sp)
	lw      $t6, 0x0000($t8)
	nop
	beqz    $t6, .L80185FB0
	nop
.L80185CA8:
	li      $at, 0x3FF00000
	mtc1    $at, $f17
	mtc1    $0, $f16
	mtc1    $at, $f13
	mtc1    $at, $f15
	mtc1    $0, $f12
	mtc1    $0, $f14
	swc1    $f17, 0x0010($sp)
	jal     make_face
	swc1    $f16, 0x0014($sp)
	sw      $v0, 0x005C($sp)
	lw      $t0, 0x0030($sp)
	lw      $t1, 0x0038($sp)
	lw      $t7, 0x0008($t0)
	sll     $t9, $t1, 3
	addu    $t3, $t7, $t9
	lhu     $t2, 0x0000($t3)
	lw      $t4, 0x005C($sp)
	nop
	sw      $t2, 0x0044($t4)
	lw      $t5, 0x0030($sp)
	lw      $t6, 0x0038($sp)
	lw      $t8, 0x0008($t5)
	sll     $t0, $t6, 3
	addu    $t1, $t8, $t0
	lhu     $t7, 0x0002($t1)
	lw      $t3, 0x0054($sp)
	lhu     $t4, 0x0004($t1)
	lhu     $t8, 0x0006($t1)
	sll     $t9, $t7, 2
	sll     $t5, $t4, 2
	sll     $t0, $t8, 2
	addu    $t7, $t3, $t0
	addu    $t6, $t3, $t5
	addu    $t2, $t3, $t9
	lw      $a1, 0x0000($t2)
	lw      $a2, 0x0000($t6)
	lw      $a3, 0x0000($t7)
	lw      $a0, 0x005C($sp)
	jal     face_shape_80197904
	nop
	lw      $t9, 0x0030($sp)
	lw      $t4, 0x0038($sp)
	lw      $t2, 0x0008($t9)
	sll     $t5, $t4, 3
	addu    $t6, $t2, $t5
	lhu     $t1, 0x0002($t6)
	lw      $t3, 0x0054($sp)
	sll     $t8, $t1, 2
	addu    $t0, $t3, $t8
	lw      $t7, 0x0000($t0)
	lw      $t9, 0x005C($sp)
	lwc1    $f18, 0x002C($t7)
	lwc1    $f4, 0x0024($t9)
	nop
	add.s   $f6, $f18, $f4
	swc1    $f6, 0x002C($t7)
	lw      $t4, 0x0030($sp)
	lw      $t5, 0x0038($sp)
	lw      $t2, 0x0008($t4)
	sll     $t6, $t5, 3
	addu    $t1, $t2, $t6
	lhu     $t3, 0x0002($t1)
	lw      $t0, 0x0054($sp)
	sll     $t8, $t3, 2
	addu    $t9, $t0, $t8
	lw      $t7, 0x0000($t9)
	lw      $t4, 0x005C($sp)
	lwc1    $f8, 0x0030($t7)
	lwc1    $f10, 0x0028($t4)
	nop
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x0030($t7)
	lw      $t5, 0x0030($sp)
	lw      $t6, 0x0038($sp)
	lw      $t2, 0x0008($t5)
	sll     $t1, $t6, 3
	addu    $t3, $t2, $t1
	lhu     $t0, 0x0002($t3)
	lw      $t9, 0x0054($sp)
	sll     $t8, $t0, 2
	addu    $t4, $t9, $t8
	lw      $t7, 0x0000($t4)
	lw      $t5, 0x005C($sp)
	lwc1    $f18, 0x0034($t7)
	lwc1    $f4, 0x002C($t5)
	nop
	add.s   $f6, $f18, $f4
	swc1    $f6, 0x0034($t7)
	lw      $t6, 0x0030($sp)
	lw      $t1, 0x0038($sp)
	lw      $t2, 0x0008($t6)
	sll     $t3, $t1, 3
	addu    $t0, $t2, $t3
	lhu     $t9, 0x0004($t0)
	lw      $t4, 0x0054($sp)
	sll     $t8, $t9, 2
	addu    $t5, $t4, $t8
	lw      $t7, 0x0000($t5)
	lw      $t6, 0x005C($sp)
	lwc1    $f8, 0x002C($t7)
	lwc1    $f10, 0x0024($t6)
	nop
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x002C($t7)
	lw      $t1, 0x0030($sp)
	lw      $t3, 0x0038($sp)
	lw      $t2, 0x0008($t1)
	sll     $t0, $t3, 3
	addu    $t9, $t2, $t0
	lhu     $t4, 0x0004($t9)
	lw      $t5, 0x0054($sp)
	sll     $t8, $t4, 2
	addu    $t6, $t5, $t8
	lw      $t7, 0x0000($t6)
	lw      $t1, 0x005C($sp)
	lwc1    $f18, 0x0030($t7)
	lwc1    $f4, 0x0028($t1)
	nop
	add.s   $f6, $f18, $f4
	swc1    $f6, 0x0030($t7)
	lw      $t3, 0x0030($sp)
	lw      $t0, 0x0038($sp)
	lw      $t2, 0x0008($t3)
	sll     $t9, $t0, 3
	addu    $t4, $t2, $t9
	lhu     $t5, 0x0004($t4)
	lw      $t6, 0x0054($sp)
	sll     $t8, $t5, 2
	addu    $t1, $t6, $t8
	lw      $t7, 0x0000($t1)
	lw      $t3, 0x005C($sp)
	lwc1    $f8, 0x0034($t7)
	lwc1    $f10, 0x002C($t3)
	nop
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x0034($t7)
	lw      $t0, 0x0030($sp)
	lw      $t9, 0x0038($sp)
	lw      $t2, 0x0008($t0)
	sll     $t4, $t9, 3
	addu    $t5, $t2, $t4
	lhu     $t6, 0x0006($t5)
	lw      $t1, 0x0054($sp)
	sll     $t8, $t6, 2
	addu    $t3, $t1, $t8
	lw      $t7, 0x0000($t3)
	lw      $t0, 0x005C($sp)
	lwc1    $f18, 0x002C($t7)
	lwc1    $f4, 0x0024($t0)
	nop
	add.s   $f6, $f18, $f4
	swc1    $f6, 0x002C($t7)
	lw      $t9, 0x0030($sp)
	lw      $t4, 0x0038($sp)
	lw      $t2, 0x0008($t9)
	sll     $t5, $t4, 3
	addu    $t6, $t2, $t5
	lhu     $t1, 0x0006($t6)
	lw      $t3, 0x0054($sp)
	sll     $t8, $t1, 2
	addu    $t0, $t3, $t8
	lw      $t7, 0x0000($t0)
	lw      $t9, 0x005C($sp)
	lwc1    $f8, 0x0030($t7)
	lwc1    $f10, 0x0028($t9)
	nop
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x0030($t7)
	lw      $t4, 0x0030($sp)
	lw      $t5, 0x0038($sp)
	lw      $t2, 0x0008($t4)
	sll     $t6, $t5, 3
	addu    $t1, $t2, $t6
	lhu     $t3, 0x0006($t1)
	lw      $t0, 0x0054($sp)
	sll     $t8, $t3, 2
	addu    $t9, $t0, $t8
	lw      $t7, 0x0000($t9)
	lw      $t4, 0x005C($sp)
	lwc1    $f18, 0x0034($t7)
	lwc1    $f4, 0x002C($t4)
	nop
	add.s   $f6, $f18, $f4
	swc1    $f6, 0x0034($t7)
	lw      $t5, 0x0038($sp)
	lw      $t6, 0x0030($sp)
	addiu   $t2, $t5, 0x0001
	sw      $t2, 0x0038($sp)
	lw      $t1, 0x0000($t6)
	nop
	sltu    $at, $t2, $t1
	bnez    $at, .L80185CA8
	nop
.L80185FB0:
	lw      $t3, 0x0060($sp)
	nop
	lw      $t0, 0x0044($t3)
	nop
	andi    $t8, $t0, 0x0010
	beqz    $t8, .L80186098
	nop
	lw      $t9, 0x0034($sp)
	sw      $0, 0x0038($sp)
	lw      $t4, 0x0000($t9)
	nop
	beqz    $t4, .L80186090
	nop
.L80185FE4:
	lw      $t5, 0x0038($sp)
	lw      $t7, 0x0054($sp)
	sll     $t6, $t5, 2
	addu    $t2, $t7, $t6
	lw      $t1, 0x0000($t2)
	nop
	lwc1    $f8, 0x0020($t1)
	nop
	swc1    $f8, 0x002C($t1)
	lw      $t0, 0x0038($sp)
	lw      $t3, 0x0054($sp)
	sll     $t8, $t0, 2
	addu    $t9, $t3, $t8
	lw      $t4, 0x0000($t9)
	nop
	lwc1    $f10, 0x0024($t4)
	nop
	swc1    $f10, 0x0030($t4)
	lw      $t7, 0x0038($sp)
	lw      $t5, 0x0054($sp)
	sll     $t6, $t7, 2
	addu    $t2, $t5, $t6
	lw      $t1, 0x0000($t2)
	nop
	lwc1    $f16, 0x0028($t1)
	nop
	swc1    $f16, 0x0034($t1)
	lw      $t3, 0x0038($sp)
	lw      $t0, 0x0054($sp)
	sll     $t8, $t3, 2
	addu    $t9, $t0, $t8
	lw      $a0, 0x0000($t9)
	jal     face_math_80194D34
	addiu   $a0, $a0, 0x002C
	lw      $t4, 0x0038($sp)
	lw      $t5, 0x0034($sp)
	addiu   $t7, $t4, 0x0001
	sw      $t7, 0x0038($sp)
	lw      $t6, 0x0000($t5)
	nop
	sltu    $at, $t7, $t6
	bnez    $at, .L80185FE4
	nop
.L80186090:
	b       .L801860F0
	nop
.L80186098:
	lw      $t2, 0x0034($sp)
	sw      $0, 0x0038($sp)
	lw      $t1, 0x0000($t2)
	nop
	beqz    $t1, .L801860F0
	nop
.L801860B0:
	lw      $t0, 0x0038($sp)
	lw      $t3, 0x0054($sp)
	sll     $t8, $t0, 2
	addu    $t9, $t3, $t8
	lw      $a0, 0x0000($t9)
	jal     face_math_80194D34
	addiu   $a0, $a0, 0x002C
	lw      $t4, 0x0038($sp)
	lw      $t7, 0x0034($sp)
	addiu   $t5, $t4, 0x0001
	sw      $t5, 0x0038($sp)
	lw      $t6, 0x0000($t7)
	nop
	sltu    $at, $t5, $t6
	bnez    $at, .L801860B0
	nop
.L801860F0:
	lw      $a0, 0x0054($sp)
	jal     gd_free
	nop
	lw      $a1, 0x002C($sp)
	li      $a0, 0x0080
	jal     face_object_8017D76C
	move    $a2, $0
	sw      $v0, 0x0040($sp)
	lw      $t2, 0x0040($sp)
	lw      $t1, 0x0060($sp)
	nop
	sw      $t2, 0x001C($t1)
	lw      $t0, 0x003C($sp)
	lw      $t3, 0x0060($sp)
	nop
	sw      $t0, 0x0020($t3)
.L80186130:
	lw      $t8, 0x0050($sp)
	nop
	beqz    $t8, .L80186180
	nop
	lw      $t9, 0x0060($sp)
	nop
	lw      $t4, 0x001C($t9)
	nop
	beqz    $t4, .L80186174
	nop
	lw      $t7, 0x0060($sp)
	lw      $a1, 0x0050($sp)
	lw      $a0, 0x001C($t7)
	jal     face_draw_8017B1A4
	nop
	b       .L80186180
	nop
.L80186174:
	la.u    $a0, str_face_dynlist_801B641C
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B641C
.L80186180:
	jal     imout
	nop
	la.u    $a0, str_face_dynlist_801B6450
	jal     face_stdio_8018C598
	la.l    $a0, str_face_dynlist_801B6450
	b       .L8018619C
	nop
.L8018619C:
	lw      $ra, 0x0024($sp)
	lwc1    $f21, 0x0018($sp)
	lwc1    $f20, 0x001C($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0060

dSetNodeGroup:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(_face_dynlist_data+0x04)
	lw      $t6, %lo(_face_dynlist_data+0x04)($t6)
	nop
	bnez    $t6, .L801861E0
	nop
	la.u    $a0, str_face_dynlist_801B6460
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6460
.L801861E0:
	lw      $a0, 0x0030($sp)
	jal     face_dynlist_80184510
	nop
	sw      $v0, 0x002C($sp)
	lw      $t7, 0x002C($sp)
	nop
	bnez    $t7, .L80186210
	nop
	la.u    $a0, str_face_dynlist_801B6484
	lw      $a1, 0x0030($sp)
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6484
.L80186210:
	lui     $t8, %hi(_face_dynlist_data+0x04)
	lw      $t8, %lo(_face_dynlist_data+0x04)($t8)
	li      $at, 0x0010
	lw      $s0, 0x000C($t8)
	nop
	beq     $s0, $at, .L80186290
	nop
	li      $at, 0x0020
	beq     $s0, $at, .L80186258
	nop
	li      $at, 0x2000
	beq     $s0, $at, .L801862C0
	nop
	li      $at, 0x00010000
	beq     $s0, $at, .L801862E0
	nop
	b       .L80186310
	nop
.L80186258:
	lw      $t9, 0x002C($sp)
	lui     $t1, %hi(_face_dynlist_data+0x04)
	lw      $t1, %lo(_face_dynlist_data+0x04)($t1)
	lw      $t0, 0x0008($t9)
	nop
	sw      $t0, 0x01C8($t1)
	lw      $t2, 0x002C($sp)
	lui     $t4, %hi(_face_dynlist_data+0x04)
	lw      $t4, %lo(_face_dynlist_data+0x04)($t4)
	lw      $t3, 0x0008($t2)
	nop
	sw      $t3, 0x01D0($t4)
	b       .L80186338
	nop
.L80186290:
	lw      $t5, 0x002C($sp)
	lui     $t7, %hi(_face_dynlist_data+0x04)
	lw      $t7, %lo(_face_dynlist_data+0x04)($t7)
	lw      $t6, 0x0008($t5)
	nop
	sw      $t6, 0x0020($t7)
	lui     $a0, %hi(_face_dynlist_data+0x04)
	lw      $a0, %lo(_face_dynlist_data+0x04)($a0)
	jal     chk_shapegen
	nop
	b       .L80186338
	nop
.L801862C0:
	lw      $t8, 0x002C($sp)
	lui     $t0, %hi(_face_dynlist_data+0x04)
	lw      $t0, %lo(_face_dynlist_data+0x04)($t0)
	lw      $t9, 0x0008($t8)
	nop
	sw      $t9, 0x0054($t0)
	b       .L80186338
	nop
.L801862E0:
	lw      $t1, 0x002C($sp)
	lui     $t3, %hi(_face_dynlist_data+0x04)
	lw      $t3, %lo(_face_dynlist_data+0x04)($t3)
	lw      $t2, 0x0008($t1)
	nop
	sw      $t2, 0x0018($t3)
	lui     $a0, %hi(_face_dynlist_data+0x04)
	lw      $a0, %lo(_face_dynlist_data+0x04)($a0)
	jal     animdata
	nop
	b       .L80186338
	nop
.L80186310:
	lui     $t4, %hi(_face_dynlist_data+0x04)
	lw      $t4, %lo(_face_dynlist_data+0x04)($t4)
	lui     $a2, %hi(_face_bss+0x610)
	lw      $a2, %lo(_face_bss+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B64AC
	la.u    $a1, str_face_dynlist_801B64E0
	lw      $a3, 0x000C($t4)
	la.l    $a1, str_face_dynlist_801B64E0
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B64AC
.L80186338:
	b       .L80186340
	nop
.L80186340:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0030

dSetMatGroup:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lui     $t6, %hi(_face_dynlist_data+0x04)
	lw      $t6, %lo(_face_dynlist_data+0x04)($t6)
	nop
	bnez    $t6, .L8018637C
	nop
	la.u    $a0, str_face_dynlist_801B64F0
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B64F0
.L8018637C:
	lw      $a0, 0x0020($sp)
	jal     face_dynlist_80184510
	nop
	sw      $v0, 0x001C($sp)
	lw      $t7, 0x001C($sp)
	nop
	bnez    $t7, .L801863AC
	nop
	la.u    $a0, str_face_dynlist_801B6514
	lw      $a1, 0x0020($sp)
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6514
.L801863AC:
	lui     $t8, %hi(_face_dynlist_data+0x04)
	lw      $t8, %lo(_face_dynlist_data+0x04)($t8)
	li      $at, 0x0010
	lw      $t9, 0x000C($t8)
	nop
	bne     $t9, $at, .L80186400
	nop
	b       .L801863D0
	nop
.L801863D0:
	lw      $t0, 0x001C($sp)
	lui     $t2, %hi(_face_dynlist_data+0x04)
	lw      $t2, %lo(_face_dynlist_data+0x04)($t2)
	lw      $t1, 0x0008($t0)
	nop
	sw      $t1, 0x002C($t2)
	lui     $a0, %hi(_face_dynlist_data+0x04)
	lw      $a0, %lo(_face_dynlist_data+0x04)($a0)
	jal     chk_shapegen
	nop
	b       .L80186428
	nop
.L80186400:
	lui     $t3, %hi(_face_dynlist_data+0x04)
	lw      $t3, %lo(_face_dynlist_data+0x04)($t3)
	lui     $a2, %hi(_face_bss+0x610)
	lw      $a2, %lo(_face_bss+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B6538
	la.u    $a1, str_face_dynlist_801B656C
	lw      $a3, 0x000C($t3)
	la.l    $a1, str_face_dynlist_801B656C
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6538
.L80186428:
	b       .L80186430
	nop
.L80186430:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

dSetTextureST:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	swc1    $f12, 0x0020($sp)
	swc1    $f14, 0x0024($sp)
	lui     $t6, %hi(_face_dynlist_data+0x04)
	lw      $t6, %lo(_face_dynlist_data+0x04)($t6)
	nop
	bnez    $t6, .L80186470
	nop
	la.u    $a0, str_face_dynlist_801B657C
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B657C
.L80186470:
	lui     $t7, %hi(_face_dynlist_data+0x04)
	lw      $t7, %lo(_face_dynlist_data+0x04)($t7)
	li      $at, 0x0100
	lw      $t8, 0x000C($t7)
	nop
	bne     $t8, $at, .L8018649C
	nop
	b       .L80186494
	nop
.L80186494:
	b       .L801864C4
	nop
.L8018649C:
	lui     $t9, %hi(_face_dynlist_data+0x04)
	lw      $t9, %lo(_face_dynlist_data+0x04)($t9)
	lui     $a2, %hi(_face_bss+0x610)
	lw      $a2, %lo(_face_bss+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B65A0
	la.u    $a1, str_face_dynlist_801B65D4
	lw      $a3, 0x000C($t9)
	la.l    $a1, str_face_dynlist_801B65D4
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B65A0
.L801864C4:
	b       .L801864CC
	nop
.L801864CC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

dUseTexture:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $t6, %hi(_face_dynlist_data+0x04)
	lw      $t6, %lo(_face_dynlist_data+0x04)($t6)
	nop
	bnez    $t6, .L80186508
	nop
	la.u    $a0, str_face_dynlist_801B65E4
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B65E4
.L80186508:
	lui     $t7, %hi(_face_dynlist_data+0x04)
	lw      $t7, %lo(_face_dynlist_data+0x04)($t7)
	li      $at, 0x0800
	lw      $t8, 0x000C($t7)
	nop
	bne     $t8, $at, .L80186548
	nop
	b       .L8018652C
	nop
.L8018652C:
	lui     $t0, %hi(_face_dynlist_data+0x04)
	lw      $t0, %lo(_face_dynlist_data+0x04)($t0)
	lw      $t9, 0x0018($sp)
	nop
	sw      $t9, 0x0058($t0)
	b       .L80186570
	nop
.L80186548:
	lui     $t1, %hi(_face_dynlist_data+0x04)
	lw      $t1, %lo(_face_dynlist_data+0x04)($t1)
	lui     $a2, %hi(_face_bss+0x610)
	lw      $a2, %lo(_face_bss+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B6608
	la.u    $a1, str_face_dynlist_801B663C
	lw      $a3, 0x000C($t1)
	la.l    $a1, str_face_dynlist_801B663C
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6608
.L80186570:
	b       .L80186578
	nop
.L80186578:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

dSetSkinShape:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lui     $t6, %hi(_face_dynlist_data+0x04)
	lw      $t6, %lo(_face_dynlist_data+0x04)($t6)
	nop
	bnez    $t6, .L801865B4
	nop
	la.u    $a0, str_face_dynlist_801B664C
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B664C
.L801865B4:
	lw      $a0, 0x0020($sp)
	jal     face_dynlist_80184510
	nop
	sw      $v0, 0x001C($sp)
	lw      $t7, 0x001C($sp)
	nop
	bnez    $t7, .L801865E4
	nop
	la.u    $a0, str_face_dynlist_801B6670
	lw      $a1, 0x0020($sp)
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6670
.L801865E4:
	lui     $t8, %hi(_face_dynlist_data+0x04)
	lw      $t8, %lo(_face_dynlist_data+0x04)($t8)
	li      $at, 0x0020
	lw      $t9, 0x000C($t8)
	nop
	bne     $t9, $at, .L8018662C
	nop
	b       .L80186608
	nop
.L80186608:
	lw      $t0, 0x001C($sp)
	lui     $t3, %hi(_face_dynlist_data+0x04)
	lw      $t1, 0x0008($t0)
	lw      $t3, %lo(_face_dynlist_data+0x04)($t3)
	lw      $t2, 0x0020($t1)
	nop
	sw      $t2, 0x01C4($t3)
	b       .L80186654
	nop
.L8018662C:
	lui     $t4, %hi(_face_dynlist_data+0x04)
	lw      $t4, %lo(_face_dynlist_data+0x04)($t4)
	lui     $a2, %hi(_face_bss+0x610)
	lw      $a2, %lo(_face_bss+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B6698
	la.u    $a1, str_face_dynlist_801B66CC
	lw      $a3, 0x000C($t4)
	la.l    $a1, str_face_dynlist_801B66CC
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6698
.L80186654:
	b       .L8018665C
	nop
.L8018665C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

dMapMaterials:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lui     $t6, %hi(_face_dynlist_data+0x04)
	lw      $t6, %lo(_face_dynlist_data+0x04)($t6)
	nop
	bnez    $t6, .L80186698
	nop
	la.u    $a0, str_face_dynlist_801B66DC
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B66DC
.L80186698:
	lw      $a0, 0x0020($sp)
	jal     face_dynlist_80184510
	nop
	sw      $v0, 0x001C($sp)
	lw      $t7, 0x001C($sp)
	nop
	bnez    $t7, .L801866C8
	nop
	la.u    $a0, str_face_dynlist_801B6700
	lw      $a1, 0x0020($sp)
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6700
.L801866C8:
	lw      $t8, 0x001C($sp)
	lui     $a0, %hi(_face_dynlist_data+0x04)
	lw      $a0, %lo(_face_dynlist_data+0x04)($a0)
	lw      $a1, 0x0008($t8)
	jal     face_draw_8017B1A4
	nop
	b       .L801866E8
	nop
.L801866E8:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

dMapVertices:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lui     $t6, %hi(_face_dynlist_data+0x04)
	lw      $t6, %lo(_face_dynlist_data+0x04)($t6)
	nop
	bnez    $t6, .L80186724
	nop
	la.u    $a0, str_face_dynlist_801B6728
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6728
.L80186724:
	lw      $a0, 0x0020($sp)
	jal     face_dynlist_80184510
	nop
	sw      $v0, 0x001C($sp)
	lw      $t7, 0x001C($sp)
	nop
	bnez    $t7, .L80186754
	nop
	la.u    $a0, str_face_dynlist_801B674C
	lw      $a1, 0x0020($sp)
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B674C
.L80186754:
	lw      $t8, 0x001C($sp)
	lui     $a0, %hi(_face_dynlist_data+0x04)
	lw      $a0, %lo(_face_dynlist_data+0x04)($a0)
	lw      $a1, 0x0008($t8)
	jal     map_vertices
	nop
	b       .L80186774
	nop
.L80186774:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

dSetPlaneGroup:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(_face_dynlist_data+0x04)
	lw      $t6, %lo(_face_dynlist_data+0x04)($t6)
	nop
	bnez    $t6, .L801867B4
	nop
	la.u    $a0, str_face_dynlist_801B6770
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6770
.L801867B4:
	lw      $a0, 0x0030($sp)
	jal     face_dynlist_80184510
	nop
	sw      $v0, 0x002C($sp)
	lw      $t7, 0x002C($sp)
	nop
	bnez    $t7, .L801867E4
	nop
	la.u    $a0, str_face_dynlist_801B6794
	lw      $a1, 0x0030($sp)
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6794
.L801867E4:
	lui     $t8, %hi(_face_dynlist_data+0x04)
	lw      $t8, %lo(_face_dynlist_data+0x04)($t8)
	li      $at, 0x0010
	lw      $s0, 0x000C($t8)
	nop
	beq     $s0, $at, .L80186834
	nop
	li      $at, 0x0020
	beq     $s0, $at, .L80186814
	nop
	b       .L80186864
	nop
.L80186814:
	lw      $t9, 0x002C($sp)
	lui     $t1, %hi(_face_dynlist_data+0x04)
	lw      $t1, %lo(_face_dynlist_data+0x04)($t1)
	lw      $t0, 0x0008($t9)
	nop
	sw      $t0, 0x01CC($t1)
	b       .L8018688C
	nop
.L80186834:
	lw      $t2, 0x002C($sp)
	lui     $t4, %hi(_face_dynlist_data+0x04)
	lw      $t4, %lo(_face_dynlist_data+0x04)($t4)
	lw      $t3, 0x0008($t2)
	nop
	sw      $t3, 0x001C($t4)
	lui     $a0, %hi(_face_dynlist_data+0x04)
	lw      $a0, %lo(_face_dynlist_data+0x04)($a0)
	jal     chk_shapegen
	nop
	b       .L8018688C
	nop
.L80186864:
	lui     $t5, %hi(_face_dynlist_data+0x04)
	lw      $t5, %lo(_face_dynlist_data+0x04)($t5)
	lui     $a2, %hi(_face_bss+0x610)
	lw      $a2, %lo(_face_bss+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B67BC
	la.u    $a1, str_face_dynlist_801B67F0
	lw      $a3, 0x000C($t5)
	la.l    $a1, str_face_dynlist_801B67F0
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B67BC
.L8018688C:
	b       .L80186894
	nop
.L80186894:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0030

.globl dSetShapePtrPtr
dSetShapePtrPtr:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	sw      $0, 0x0024($sp)
	lui     $t6, %hi(_face_dynlist_data+0x04)
	lw      $t6, %lo(_face_dynlist_data+0x04)($t6)
	nop
	bnez    $t6, .L801868D8
	nop
	la.u    $a0, str_face_dynlist_801B6804
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6804
.L801868D8:
	lw      $t7, 0x0028($sp)
	nop
	bnez    $t7, .L801868F0
	nop
	addiu   $t8, $sp, 0x0024
	sw      $t8, 0x0028($sp)
.L801868F0:
	lui     $t9, %hi(_face_dynlist_data+0x04)
	lw      $t9, %lo(_face_dynlist_data+0x04)($t9)
	li      $at, 0x0002
	lw      $s0, 0x000C($t9)
	nop
	beq     $s0, $at, .L801869A0
	nop
	li      $at, 0x0004
	beq     $s0, $at, .L80186950
	nop
	li      $at, 0x0008
	beq     $s0, $at, .L801869E0
	nop
	li      $at, 0x0020
	beq     $s0, $at, .L80186980
	nop
	li      $at, 0x2000
	beq     $s0, $at, .L801869C0
	nop
	li      $at, 0x00080000
	beq     $s0, $at, .L80186A00
	nop
	b       .L80186A20
	nop
.L80186950:
	lw      $t0, 0x0028($sp)
	lui     $t2, %hi(_face_dynlist_data+0x04)
	lw      $t2, %lo(_face_dynlist_data+0x04)($t2)
	lw      $t1, 0x0000($t0)
	nop
	sw      $t1, 0x0020($t2)
	lui     $t3, %hi(_face_dynlist_data+0x04)
	lw      $t3, %lo(_face_dynlist_data+0x04)($t3)
	nop
	sw      $0, 0x01C8($t3)
	b       .L80186A48
	nop
.L80186980:
	lw      $t4, 0x0028($sp)
	lui     $t6, %hi(_face_dynlist_data+0x04)
	lw      $t6, %lo(_face_dynlist_data+0x04)($t6)
	lw      $t5, 0x0000($t4)
	nop
	sw      $t5, 0x01A8($t6)
	b       .L80186A48
	nop
.L801869A0:
	lw      $t7, 0x0028($sp)
	lui     $t9, %hi(_face_dynlist_data+0x04)
	lw      $t9, %lo(_face_dynlist_data+0x04)($t9)
	lw      $t8, 0x0000($t7)
	nop
	sw      $t8, 0x00F0($t9)
	b       .L80186A48
	nop
.L801869C0:
	lw      $t0, 0x0028($sp)
	lui     $t2, %hi(_face_dynlist_data+0x04)
	lw      $t2, %lo(_face_dynlist_data+0x04)($t2)
	lw      $t1, 0x0000($t0)
	nop
	sw      $t1, 0x0050($t2)
	b       .L80186A48
	nop
.L801869E0:
	lw      $t3, 0x0028($sp)
	lui     $t5, %hi(_face_dynlist_data+0x04)
	lw      $t5, %lo(_face_dynlist_data+0x04)($t5)
	lw      $t4, 0x0000($t3)
	nop
	sw      $t4, 0x001C($t5)
	b       .L80186A48
	nop
.L80186A00:
	lw      $t6, 0x0028($sp)
	lui     $t8, %hi(_face_dynlist_data+0x04)
	lw      $t8, %lo(_face_dynlist_data+0x04)($t8)
	lw      $t7, 0x0000($t6)
	nop
	sw      $t7, 0x009C($t8)
	b       .L80186A48
	nop
.L80186A20:
	lui     $t9, %hi(_face_dynlist_data+0x04)
	lw      $t9, %lo(_face_dynlist_data+0x04)($t9)
	lui     $a2, %hi(_face_bss+0x610)
	lw      $a2, %lo(_face_bss+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B6828
	la.u    $a1, str_face_dynlist_801B685C
	lw      $a3, 0x000C($t9)
	la.l    $a1, str_face_dynlist_801B685C
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6828
.L80186A48:
	b       .L80186A50
	nop
.L80186A50:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

dSetShapePtr:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	nop
	bnez    $t6, .L80186A88
	nop
	b       .L80186BEC
	nop
.L80186A88:
	lw      $a0, 0x0028($sp)
	jal     face_dynlist_80184510
	nop
	sw      $v0, 0x0024($sp)
	lw      $t7, 0x0024($sp)
	nop
	bnez    $t7, .L80186AB8
	nop
	la.u    $a0, str_face_dynlist_801B6870
	lw      $a1, 0x0028($sp)
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6870
.L80186AB8:
	lui     $t8, %hi(_face_dynlist_data+0x04)
	lw      $t8, %lo(_face_dynlist_data+0x04)($t8)
	li      $at, 0x0002
	lw      $s0, 0x000C($t8)
	nop
	beq     $s0, $at, .L80186B5C
	nop
	li      $at, 0x0004
	beq     $s0, $at, .L80186B0C
	nop
	li      $at, 0x0008
	beq     $s0, $at, .L80186B9C
	nop
	li      $at, 0x0020
	beq     $s0, $at, .L80186B3C
	nop
	li      $at, 0x2000
	beq     $s0, $at, .L80186B7C
	nop
	b       .L80186BBC
	nop
.L80186B0C:
	lw      $t9, 0x0024($sp)
	lui     $t1, %hi(_face_dynlist_data+0x04)
	lw      $t1, %lo(_face_dynlist_data+0x04)($t1)
	lw      $t0, 0x0008($t9)
	nop
	sw      $t0, 0x0020($t1)
	lui     $t2, %hi(_face_dynlist_data+0x04)
	lw      $t2, %lo(_face_dynlist_data+0x04)($t2)
	nop
	sw      $0, 0x01C8($t2)
	b       .L80186BE4
	nop
.L80186B3C:
	lw      $t3, 0x0024($sp)
	lui     $t5, %hi(_face_dynlist_data+0x04)
	lw      $t5, %lo(_face_dynlist_data+0x04)($t5)
	lw      $t4, 0x0008($t3)
	nop
	sw      $t4, 0x01A8($t5)
	b       .L80186BE4
	nop
.L80186B5C:
	lw      $t6, 0x0024($sp)
	lui     $t8, %hi(_face_dynlist_data+0x04)
	lw      $t8, %lo(_face_dynlist_data+0x04)($t8)
	lw      $t7, 0x0008($t6)
	nop
	sw      $t7, 0x00F0($t8)
	b       .L80186BE4
	nop
.L80186B7C:
	lw      $t9, 0x0024($sp)
	lui     $t1, %hi(_face_dynlist_data+0x04)
	lw      $t1, %lo(_face_dynlist_data+0x04)($t1)
	lw      $t0, 0x0008($t9)
	nop
	sw      $t0, 0x0050($t1)
	b       .L80186BE4
	nop
.L80186B9C:
	lw      $t2, 0x0024($sp)
	lui     $t4, %hi(_face_dynlist_data+0x04)
	lw      $t4, %lo(_face_dynlist_data+0x04)($t4)
	lw      $t3, 0x0008($t2)
	nop
	sw      $t3, 0x001C($t4)
	b       .L80186BE4
	nop
.L80186BBC:
	lui     $t5, %hi(_face_dynlist_data+0x04)
	lw      $t5, %lo(_face_dynlist_data+0x04)($t5)
	lui     $a2, %hi(_face_bss+0x610)
	lw      $a2, %lo(_face_bss+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B6898
	la.u    $a1, str_face_dynlist_801B68CC
	lw      $a3, 0x000C($t5)
	la.l    $a1, str_face_dynlist_801B68CC
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6898
.L80186BE4:
	b       .L80186BEC
	nop
.L80186BEC:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

.globl dUseObj
dUseObj:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $a0, 0x0020($sp)
	jal     face_dynlist_80184510
	nop
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x001C($sp)
	nop
	bnez    $t6, .L80186C38
	nop
	la.u    $a0, str_face_dynlist_801B68DC
	lw      $a1, 0x0020($sp)
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B68DC
.L80186C38:
	lw      $t7, 0x001C($sp)
	lui     $at, %hi(_face_dynlist_data+0x04)
	lw      $t8, 0x0008($t7)
	nop
	sw      $t8, %lo(_face_dynlist_data+0x04)($at)
	lw      $t9, 0x001C($sp)
	lui     $at, %hi(_face_bss+0x610)
	sw      $t9, %lo(_face_bss+0x610)($at)
	lw      $t0, 0x001C($sp)
	nop
	lw      $v0, 0x0008($t0)
	b       .L80186C74
	nop
	b       .L80186C74
	nop
.L80186C74:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl face_dynlist_80186C84
face_dynlist_80186C84:
	lui     $at, %hi(_face_dynlist_data+0x04)
	sw      $a0, %lo(_face_dynlist_data+0x04)($at)
	la.u    $t6, _face_bss+0x5E8
	la.l    $t6, _face_bss+0x5E8
	lui     $at, %hi(_face_bss+0x610)
	sw      $t6, %lo(_face_bss+0x610)($at)
	jr      $ra
	nop
	jr      $ra
	nop

.globl face_dynlist_80186CAC
face_dynlist_80186CAC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a1, 0x0018($sp)
	jal     dMakeObj
	li      $a0, 0x0012
	b       .L80186CCC
	nop
.L80186CCC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl dEndGroup
dEndGroup:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	lw      $a0, 0x0028($sp)
	jal     face_dynlist_80184510
	nop
	sw      $v0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	nop
	bnez    $t6, .L80186D18
	nop
	la.u    $a0, str_face_dynlist_801B68FC
	lw      $a1, 0x0028($sp)
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B68FC
.L80186D18:
	lw      $t7, 0x0020($sp)
	nop
	lw      $t8, 0x0008($t7)
	nop
	sw      $t8, 0x001C($sp)
	lw      $t9, 0x0020($sp)
	lui     $t2, %hi(_face_bss+0x60C)
	lw      $t0, 0x000C($t9)
	lw      $t2, %lo(_face_bss+0x60C)($t2)
	addiu   $t1, $t0, 0x0001
	slt     $at, $t1, $t2
	beqz    $at, .L80186DC8
	sw      $t1, 0x0018($sp)
.L80186D4C:
	lw      $t4, 0x0018($sp)
	lui     $t3, %hi(_face_dynlist_data+0x00)
	sll     $t5, $t4, 2
	lw      $t3, %lo(_face_dynlist_data+0x00)($t3)
	addu    $t5, $t5, $t4
	sll     $t5, $t5, 2
	addu    $t6, $t3, $t5
	lw      $t7, 0x0008($t6)
	li      $at, 0x0001
	lw      $t8, 0x000C($t7)
	nop
	beq     $t8, $at, .L80186DAC
	nop
	lw      $t0, 0x0018($sp)
	lui     $t9, %hi(_face_dynlist_data+0x00)
	sll     $t1, $t0, 2
	lw      $t9, %lo(_face_dynlist_data+0x00)($t9)
	addu    $t1, $t1, $t0
	sll     $t1, $t1, 2
	addu    $t2, $t9, $t1
	lw      $a1, 0x0008($t2)
	lw      $a0, 0x001C($sp)
	jal     addto_group
	nop
.L80186DAC:
	lw      $t4, 0x0018($sp)
	lui     $t5, %hi(_face_bss+0x60C)
	lw      $t5, %lo(_face_bss+0x60C)($t5)
	addiu   $t3, $t4, 0x0001
	slt     $at, $t3, $t5
	bnez    $at, .L80186D4C
	sw      $t3, 0x0018($sp)
.L80186DC8:
	b       .L80186DD0
	nop
.L80186DD0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

dAddToGroup:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	lw      $a0, 0x0028($sp)
	jal     face_dynlist_80184510
	nop
	sw      $v0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	nop
	bnez    $t6, .L80186E1C
	nop
	la.u    $a0, str_face_dynlist_801B6920
	lw      $a1, 0x0028($sp)
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6920
.L80186E1C:
	lw      $t7, 0x0020($sp)
	nop
	lw      $t8, 0x0008($t7)
	nop
	sw      $t8, 0x001C($sp)
	lui     $a1, %hi(_face_dynlist_data+0x04)
	lw      $a1, %lo(_face_dynlist_data+0x04)($a1)
	lw      $a0, 0x001C($sp)
	jal     addto_group
	nop
	b       .L80186E4C
	nop
.L80186E4C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl face_dynlist_80186E5C
face_dynlist_80186E5C:
	lui     $at, %hi(_face_dynlist_data+0x20)
	sw      $a0, %lo(_face_dynlist_data+0x20)($at)
	jr      $ra
	nop
	jr      $ra
	nop

.globl dSetInitPos
dSetInitPos:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x001C($sp)
	sw      $a2, 0x0040($sp)
	swc1    $f12, 0x0038($sp)
	swc1    $f14, 0x003C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(_face_dynlist_data+0x04)
	lw      $t6, %lo(_face_dynlist_data+0x04)($t6)
	nop
	sw      $t6, 0x0028($sp)
	lui     $t7, %hi(_face_dynlist_data+0x04)
	lw      $t7, %lo(_face_dynlist_data+0x04)($t7)
	nop
	bnez    $t7, .L80186EBC
	nop
	la.u    $a0, str_face_dynlist_801B6944
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6944
.L80186EBC:
	lui     $t8, %hi(_face_dynlist_data+0x04)
	lw      $t8, %lo(_face_dynlist_data+0x04)($t8)
	li      $at, 0x0004
	lw      $s0, 0x000C($t8)
	nop
	beq     $s0, $at, .L80186F10
	nop
	li      $at, 0x0008
	beq     $s0, $at, .L80187010
	nop
	li      $at, 0x0020
	beq     $s0, $at, .L80186FA8
	nop
	li      $at, 0x0100
	beq     $s0, $at, .L80187080
	nop
	li      $at, 0x0200
	beq     $s0, $at, .L80187048
	nop
	b       .L801870CC
	nop
.L80186F10:
	lwc1    $f4, 0x0038($sp)
	lw      $t9, 0x0028($sp)
	nop
	swc1    $f4, 0x0014($t9)
	lwc1    $f6, 0x003C($sp)
	lw      $t0, 0x0028($sp)
	nop
	swc1    $f6, 0x0018($t0)
	lwc1    $f8, 0x0040($sp)
	lw      $t1, 0x0028($sp)
	nop
	swc1    $f8, 0x001C($t1)
	lwc1    $f10, 0x0038($sp)
	lw      $t2, 0x0028($sp)
	nop
	swc1    $f10, 0x003C($t2)
	lwc1    $f16, 0x003C($sp)
	lw      $t3, 0x0028($sp)
	nop
	swc1    $f16, 0x0040($t3)
	lwc1    $f18, 0x0040($sp)
	lw      $t4, 0x0028($sp)
	nop
	swc1    $f18, 0x0044($t4)
	lwc1    $f4, 0x0038($sp)
	lw      $t5, 0x0028($sp)
	nop
	swc1    $f4, 0x0054($t5)
	lwc1    $f6, 0x003C($sp)
	lw      $t6, 0x0028($sp)
	nop
	swc1    $f6, 0x0058($t6)
	lwc1    $f8, 0x0040($sp)
	lw      $t7, 0x0028($sp)
	nop
	swc1    $f8, 0x005C($t7)
	b       .L801870F4
	nop
.L80186FA8:
	lwc1    $f10, 0x0038($sp)
	lw      $t8, 0x0028($sp)
	nop
	swc1    $f10, 0x0014($t8)
	lwc1    $f16, 0x003C($sp)
	lw      $t9, 0x0028($sp)
	nop
	swc1    $f16, 0x0018($t9)
	lwc1    $f18, 0x0040($sp)
	lw      $t0, 0x0028($sp)
	nop
	swc1    $f18, 0x001C($t0)
	lwc1    $f4, 0x0038($sp)
	lw      $t1, 0x0028($sp)
	nop
	swc1    $f4, 0x0020($t1)
	lwc1    $f6, 0x003C($sp)
	lw      $t2, 0x0028($sp)
	nop
	swc1    $f6, 0x0024($t2)
	lwc1    $f8, 0x0040($sp)
	lw      $t3, 0x0028($sp)
	nop
	swc1    $f8, 0x0028($t3)
	b       .L801870F4
	nop
.L80187010:
	lwc1    $f10, 0x0038($sp)
	lw      $t4, 0x0028($sp)
	nop
	swc1    $f10, 0x0020($t4)
	lwc1    $f16, 0x003C($sp)
	lw      $t5, 0x0028($sp)
	nop
	swc1    $f16, 0x0024($t5)
	lwc1    $f18, 0x0040($sp)
	lw      $t6, 0x0028($sp)
	nop
	swc1    $f18, 0x0028($t6)
	b       .L801870F4
	nop
.L80187048:
	lwc1    $f4, 0x0038($sp)
	lw      $t7, 0x0028($sp)
	nop
	swc1    $f4, 0x0014($t7)
	lwc1    $f6, 0x003C($sp)
	lw      $t8, 0x0028($sp)
	nop
	swc1    $f6, 0x0018($t8)
	lwc1    $f8, 0x0040($sp)
	lw      $t9, 0x0028($sp)
	nop
	swc1    $f8, 0x001C($t9)
	b       .L801870F4
	nop
.L80187080:
	lwc1    $f12, 0x0038($sp)
	lwc1    $f14, 0x003C($sp)
	lw      $a2, 0x0040($sp)
	jal     dSetRelPos
	nop
	lwc1    $f10, 0x0038($sp)
	lw      $t0, 0x0028($sp)
	nop
	swc1    $f10, 0x0014($t0)
	lwc1    $f16, 0x003C($sp)
	lw      $t1, 0x0028($sp)
	nop
	swc1    $f16, 0x0018($t1)
	lwc1    $f18, 0x0040($sp)
	lw      $t2, 0x0028($sp)
	nop
	swc1    $f18, 0x001C($t2)
	b       .L801870F4
	nop
.L801870CC:
	lui     $t3, %hi(_face_dynlist_data+0x04)
	lw      $t3, %lo(_face_dynlist_data+0x04)($t3)
	lui     $a2, %hi(_face_bss+0x610)
	lw      $a2, %lo(_face_bss+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B6968
	la.u    $a1, str_face_dynlist_801B699C
	lw      $a3, 0x000C($t3)
	la.l    $a1, str_face_dynlist_801B699C
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6968
.L801870F4:
	b       .L801870FC
	nop
.L801870FC:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0038

dSetVelocity:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(_face_dynlist_data+0x04)
	lw      $t6, %lo(_face_dynlist_data+0x04)($t6)
	nop
	sw      $t6, 0x0024($sp)
	lui     $t7, %hi(_face_dynlist_data+0x04)
	lw      $t7, %lo(_face_dynlist_data+0x04)($t7)
	nop
	bnez    $t7, .L8018714C
	nop
	la.u    $a0, str_face_dynlist_801B69AC
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B69AC
.L8018714C:
	lui     $t8, %hi(_face_dynlist_data+0x04)
	lw      $t8, %lo(_face_dynlist_data+0x04)($t8)
	li      $at, 0x0004
	lw      $s0, 0x000C($t8)
	nop
	beq     $s0, $at, .L8018717C
	nop
	li      $at, 0x0020
	beq     $s0, $at, .L801871C0
	nop
	b       .L80187204
	nop
.L8018717C:
	lw      $t9, 0x0028($sp)
	lw      $t0, 0x0024($sp)
	lwc1    $f4, 0x0000($t9)
	nop
	swc1    $f4, 0x0078($t0)
	lw      $t1, 0x0028($sp)
	lw      $t2, 0x0024($sp)
	lwc1    $f6, 0x0004($t1)
	nop
	swc1    $f6, 0x007C($t2)
	lw      $t3, 0x0028($sp)
	lw      $t4, 0x0024($sp)
	lwc1    $f8, 0x0008($t3)
	nop
	swc1    $f8, 0x0080($t4)
	b       .L8018722C
	nop
.L801871C0:
	lw      $t5, 0x0028($sp)
	lw      $t6, 0x0024($sp)
	lwc1    $f10, 0x0000($t5)
	nop
	swc1    $f10, 0x0050($t6)
	lw      $t7, 0x0028($sp)
	lw      $t8, 0x0024($sp)
	lwc1    $f16, 0x0004($t7)
	nop
	swc1    $f16, 0x0054($t8)
	lw      $t9, 0x0028($sp)
	lw      $t0, 0x0024($sp)
	lwc1    $f18, 0x0008($t9)
	nop
	swc1    $f18, 0x0058($t0)
	b       .L8018722C
	nop
.L80187204:
	lui     $t1, %hi(_face_dynlist_data+0x04)
	lw      $t1, %lo(_face_dynlist_data+0x04)($t1)
	lui     $a2, %hi(_face_bss+0x610)
	lw      $a2, %lo(_face_bss+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B69D0
	la.u    $a1, str_face_dynlist_801B6A04
	lw      $a3, 0x000C($t1)
	la.l    $a1, str_face_dynlist_801B6A04
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B69D0
.L8018722C:
	b       .L80187234
	nop
.L80187234:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

face_dynlist_80187244:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x0024($sp)
	sw      $a0, 0x0038($sp)
	sw      $s0, 0x0020($sp)
	swc1    $f21, 0x0018($sp)
	swc1    $f20, 0x001C($sp)
	lui     $t6, %hi(_face_dynlist_data+0x04)
	lw      $t6, %lo(_face_dynlist_data+0x04)($t6)
	nop
	sw      $t6, 0x0034($sp)
	lui     $t7, %hi(_face_dynlist_data+0x04)
	lw      $t7, %lo(_face_dynlist_data+0x04)($t7)
	nop
	bnez    $t7, .L8018728C
	nop
	la.u    $a0, str_face_dynlist_801B6A14
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6A14
.L8018728C:
	lui     $t8, %hi(_face_dynlist_data+0x04)
	lw      $t8, %lo(_face_dynlist_data+0x04)($t8)
	li      $at, 0x0004
	lw      $s0, 0x000C($t8)
	nop
	beq     $s0, $at, .L801872BC
	nop
	li      $at, 0x0020
	beq     $s0, $at, .L80187300
	nop
	b       .L80187344
	nop
.L801872BC:
	lw      $t9, 0x0034($sp)
	lw      $t0, 0x0038($sp)
	lwc1    $f4, 0x0078($t9)
	nop
	swc1    $f4, 0x0000($t0)
	lw      $t1, 0x0034($sp)
	lw      $t2, 0x0038($sp)
	lwc1    $f6, 0x007C($t1)
	nop
	swc1    $f6, 0x0004($t2)
	lw      $t3, 0x0034($sp)
	lw      $t4, 0x0038($sp)
	lwc1    $f8, 0x0080($t3)
	nop
	swc1    $f8, 0x0008($t4)
	b       .L8018737C
	nop
.L80187300:
	lw      $t5, 0x0034($sp)
	lw      $t6, 0x0038($sp)
	lwc1    $f10, 0x0050($t5)
	nop
	swc1    $f10, 0x0000($t6)
	lw      $t7, 0x0034($sp)
	lw      $t8, 0x0038($sp)
	lwc1    $f16, 0x0054($t7)
	nop
	swc1    $f16, 0x0004($t8)
	lw      $t9, 0x0034($sp)
	lw      $t0, 0x0038($sp)
	lwc1    $f18, 0x0058($t9)
	nop
	swc1    $f18, 0x0008($t0)
	b       .L8018737C
	nop
.L80187344:
	mtc1    $0, $f4
	lw      $t1, 0x0038($sp)
	nop
	swc1    $f4, 0x0008($t1)
	lw      $t2, 0x0038($sp)
	nop
	lwc1    $f20, 0x0008($t2)
	nop
	swc1    $f20, 0x0004($t2)
	lw      $t3, 0x0038($sp)
	nop
	swc1    $f20, 0x0000($t3)
	b       .L8018737C
	nop
.L8018737C:
	b       .L80187384
	nop
.L80187384:
	lw      $ra, 0x0024($sp)
	lwc1    $f21, 0x0018($sp)
	lwc1    $f20, 0x001C($sp)
	lw      $s0, 0x0020($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0038

dSetTorque:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lui     $t6, %hi(_face_dynlist_data+0x04)
	lw      $t6, %lo(_face_dynlist_data+0x04)($t6)
	nop
	sw      $t6, 0x001C($sp)
	lui     $t7, %hi(_face_dynlist_data+0x04)
	lw      $t7, %lo(_face_dynlist_data+0x04)($t7)
	nop
	bnez    $t7, .L801873D8
	nop
	la.u    $a0, str_face_dynlist_801B6A38
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6A38
.L801873D8:
	lui     $t8, %hi(_face_dynlist_data+0x04)
	lw      $t8, %lo(_face_dynlist_data+0x04)($t8)
	li      $at, 0x0020
	lw      $t9, 0x000C($t8)
	nop
	bne     $t9, $at, .L80187440
	nop
	b       .L801873FC
	nop
.L801873FC:
	lw      $t0, 0x0020($sp)
	lw      $t1, 0x001C($sp)
	lwc1    $f4, 0x0000($t0)
	nop
	swc1    $f4, 0x00A4($t1)
	lw      $t2, 0x0020($sp)
	lw      $t3, 0x001C($sp)
	lwc1    $f6, 0x0004($t2)
	nop
	swc1    $f6, 0x00A8($t3)
	lw      $t4, 0x0020($sp)
	lw      $t5, 0x001C($sp)
	lwc1    $f8, 0x0008($t4)
	nop
	swc1    $f8, 0x00AC($t5)
	b       .L80187468
	nop
.L80187440:
	lui     $t6, %hi(_face_dynlist_data+0x04)
	lw      $t6, %lo(_face_dynlist_data+0x04)($t6)
	lui     $a2, %hi(_face_bss+0x610)
	lw      $a2, %lo(_face_bss+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B6A5C
	la.u    $a1, str_face_dynlist_801B6A90
	lw      $a3, 0x000C($t6)
	la.l    $a1, str_face_dynlist_801B6A90
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6A5C
.L80187468:
	b       .L80187470
	nop
.L80187470:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl dGetInitPos
dGetInitPos:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(_face_dynlist_data+0x04)
	lw      $t6, %lo(_face_dynlist_data+0x04)($t6)
	nop
	sw      $t6, 0x0024($sp)
	lui     $t7, %hi(_face_dynlist_data+0x04)
	lw      $t7, %lo(_face_dynlist_data+0x04)($t7)
	nop
	bnez    $t7, .L801874C0
	nop
	la.u    $a0, str_face_dynlist_801B6AA0
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6AA0
.L801874C0:
	lui     $t8, %hi(_face_dynlist_data+0x04)
	lw      $t8, %lo(_face_dynlist_data+0x04)($t8)
	li      $at, 0x0004
	lw      $s0, 0x000C($t8)
	nop
	beq     $s0, $at, .L801874FC
	nop
	li      $at, 0x0020
	beq     $s0, $at, .L80187540
	nop
	li      $at, 0x0100
	beq     $s0, $at, .L80187584
	nop
	b       .L801875C8
	nop
.L801874FC:
	lw      $t9, 0x0024($sp)
	lw      $t0, 0x0028($sp)
	lwc1    $f4, 0x0054($t9)
	nop
	swc1    $f4, 0x0000($t0)
	lw      $t1, 0x0024($sp)
	lw      $t2, 0x0028($sp)
	lwc1    $f6, 0x0058($t1)
	nop
	swc1    $f6, 0x0004($t2)
	lw      $t3, 0x0024($sp)
	lw      $t4, 0x0028($sp)
	lwc1    $f8, 0x005C($t3)
	nop
	swc1    $f8, 0x0008($t4)
	b       .L801875F0
	nop
.L80187540:
	lw      $t5, 0x0024($sp)
	lw      $t6, 0x0028($sp)
	lwc1    $f10, 0x0020($t5)
	nop
	swc1    $f10, 0x0000($t6)
	lw      $t7, 0x0024($sp)
	lw      $t8, 0x0028($sp)
	lwc1    $f16, 0x0024($t7)
	nop
	swc1    $f16, 0x0004($t8)
	lw      $t9, 0x0024($sp)
	lw      $t0, 0x0028($sp)
	lwc1    $f18, 0x0028($t9)
	nop
	swc1    $f18, 0x0008($t0)
	b       .L801875F0
	nop
.L80187584:
	lw      $t1, 0x0024($sp)
	lw      $t2, 0x0028($sp)
	lwc1    $f4, 0x0014($t1)
	nop
	swc1    $f4, 0x0000($t2)
	lw      $t3, 0x0024($sp)
	lw      $t4, 0x0028($sp)
	lwc1    $f6, 0x0018($t3)
	nop
	swc1    $f6, 0x0004($t4)
	lw      $t5, 0x0024($sp)
	lw      $t6, 0x0028($sp)
	lwc1    $f8, 0x001C($t5)
	nop
	swc1    $f8, 0x0008($t6)
	b       .L801875F0
	nop
.L801875C8:
	lui     $t7, %hi(_face_dynlist_data+0x04)
	lw      $t7, %lo(_face_dynlist_data+0x04)($t7)
	lui     $a2, %hi(_face_bss+0x610)
	lw      $a2, %lo(_face_bss+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B6AC4
	la.u    $a1, str_face_dynlist_801B6AF8
	lw      $a3, 0x000C($t7)
	la.l    $a1, str_face_dynlist_801B6AF8
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6AC4
.L801875F0:
	b       .L801875F8
	nop
.L801875F8:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

.globl dGetInitRot
dGetInitRot:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x0024($sp)
	sw      $a0, 0x0038($sp)
	sw      $s0, 0x0020($sp)
	swc1    $f21, 0x0018($sp)
	swc1    $f20, 0x001C($sp)
	lui     $t6, %hi(_face_dynlist_data+0x04)
	lw      $t6, %lo(_face_dynlist_data+0x04)($t6)
	nop
	sw      $t6, 0x0034($sp)
	lui     $t7, %hi(_face_dynlist_data+0x04)
	lw      $t7, %lo(_face_dynlist_data+0x04)($t7)
	nop
	bnez    $t7, .L80187650
	nop
	la.u    $a0, str_face_dynlist_801B6B08
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6B08
.L80187650:
	lui     $t8, %hi(_face_dynlist_data+0x04)
	lw      $t8, %lo(_face_dynlist_data+0x04)($t8)
	li      $at, 0x0004
	lw      $s0, 0x000C($t8)
	nop
	beq     $s0, $at, .L8018768C
	nop
	li      $at, 0x0020
	beq     $s0, $at, .L801876D0
	nop
	li      $at, 0x00080000
	beq     $s0, $at, .L80187714
	nop
	b       .L8018774C
	nop
.L8018768C:
	lw      $t9, 0x0034($sp)
	lw      $t0, 0x0038($sp)
	lwc1    $f4, 0x006C($t9)
	nop
	swc1    $f4, 0x0000($t0)
	lw      $t1, 0x0034($sp)
	lw      $t2, 0x0038($sp)
	lwc1    $f6, 0x0070($t1)
	nop
	swc1    $f6, 0x0004($t2)
	lw      $t3, 0x0034($sp)
	lw      $t4, 0x0038($sp)
	lwc1    $f8, 0x0074($t3)
	nop
	swc1    $f8, 0x0008($t4)
	b       .L80187774
	nop
.L801876D0:
	lw      $t5, 0x0034($sp)
	lw      $t6, 0x0038($sp)
	lwc1    $f10, 0x0068($t5)
	nop
	swc1    $f10, 0x0000($t6)
	lw      $t7, 0x0034($sp)
	lw      $t8, 0x0038($sp)
	lwc1    $f16, 0x006C($t7)
	nop
	swc1    $f16, 0x0004($t8)
	lw      $t9, 0x0034($sp)
	lw      $t0, 0x0038($sp)
	lwc1    $f18, 0x0070($t9)
	nop
	swc1    $f18, 0x0008($t0)
	b       .L80187774
	nop
.L80187714:
	mtc1    $0, $f4
	lw      $t1, 0x0038($sp)
	nop
	swc1    $f4, 0x0008($t1)
	lw      $t2, 0x0038($sp)
	nop
	lwc1    $f20, 0x0008($t2)
	nop
	swc1    $f20, 0x0004($t2)
	lw      $t3, 0x0038($sp)
	nop
	swc1    $f20, 0x0000($t3)
	b       .L80187774
	nop
.L8018774C:
	lui     $t4, %hi(_face_dynlist_data+0x04)
	lw      $t4, %lo(_face_dynlist_data+0x04)($t4)
	lui     $a2, %hi(_face_bss+0x610)
	lw      $a2, %lo(_face_bss+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B6B2C
	la.u    $a1, str_face_dynlist_801B6B60
	lw      $a3, 0x000C($t4)
	la.l    $a1, str_face_dynlist_801B6B60
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6B2C
.L80187774:
	b       .L8018777C
	nop
.L8018777C:
	lw      $ra, 0x0024($sp)
	lwc1    $f21, 0x0018($sp)
	lwc1    $f20, 0x001C($sp)
	lw      $s0, 0x0020($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0038

.globl dSetRelPos
dSetRelPos:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x001C($sp)
	sw      $a2, 0x0040($sp)
	swc1    $f12, 0x0038($sp)
	swc1    $f14, 0x003C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(_face_dynlist_data+0x04)
	lw      $t6, %lo(_face_dynlist_data+0x04)($t6)
	nop
	sw      $t6, 0x0034($sp)
	lui     $t7, %hi(_face_dynlist_data+0x04)
	lw      $t7, %lo(_face_dynlist_data+0x04)($t7)
	nop
	bnez    $t7, .L801877DC
	nop
	la.u    $a0, str_face_dynlist_801B6B70
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6B70
.L801877DC:
	lui     $t8, %hi(_face_dynlist_data+0x04)
	lw      $t8, %lo(_face_dynlist_data+0x04)($t8)
	li      $at, 0x0004
	lw      $s0, 0x000C($t8)
	nop
	beq     $s0, $at, .L8018783C
	nop
	li      $at, 0x0008
	beq     $s0, $at, .L80187A30
	nop
	li      $at, 0x0020
	beq     $s0, $at, .L80187A68
	nop
	li      $at, 0x0100
	beq     $s0, $at, .L801879C0
	nop
	li      $at, 0x0200
	beq     $s0, $at, .L80187874
	nop
	li      $at, 0x8000
	beq     $s0, $at, .L801879F8
	nop
	b       .L80187A70
	nop
.L8018783C:
	lwc1    $f4, 0x0038($sp)
	lw      $t9, 0x0034($sp)
	nop
	swc1    $f4, 0x003C($t9)
	lwc1    $f6, 0x003C($sp)
	lw      $t0, 0x0034($sp)
	nop
	swc1    $f6, 0x0040($t0)
	lwc1    $f8, 0x0040($sp)
	lw      $t1, 0x0034($sp)
	nop
	swc1    $f8, 0x0044($t1)
	b       .L80187A98
	nop
.L80187874:
	lwc1    $f10, 0x0038($sp)
	nop
	swc1    $f10, 0x0028($sp)
	lwc1    $f16, 0x003C($sp)
	nop
	swc1    $f16, 0x002C($sp)
	lwc1    $f18, 0x0040($sp)
	nop
	swc1    $f18, 0x0030($sp)
	lwc1    $f4, 0x0038($sp)
	lw      $t2, 0x0034($sp)
	nop
	swc1    $f4, 0x0040($t2)
	lwc1    $f6, 0x003C($sp)
	lw      $t3, 0x0034($sp)
	nop
	swc1    $f6, 0x0044($t3)
	lwc1    $f8, 0x0040($sp)
	lw      $t4, 0x0034($sp)
	nop
	swc1    $f8, 0x0048($t4)
	lwc1    $f10, 0x0038($sp)
	lw      $t5, 0x0034($sp)
	nop
	swc1    $f10, 0x0140($t5)
	lwc1    $f16, 0x003C($sp)
	lw      $t6, 0x0034($sp)
	nop
	swc1    $f16, 0x0144($t6)
	lwc1    $f18, 0x0040($sp)
	lw      $t7, 0x0034($sp)
	nop
	swc1    $f18, 0x0148($t7)
	lwc1    $f4, 0x0038($sp)
	li      $at, 0x3FF80000
	mtc1    $at, $f9
	mtc1    $0, $f8
	cvt.d.s $f6, $f4
	mul.d   $f10, $f6, $f8
	lw      $t8, 0x0034($sp)
	cvt.s.d $f16, $f10
	swc1    $f16, 0x014C($t8)
	lwc1    $f18, 0x003C($sp)
	li      $at, 0x3FF80000
	mtc1    $at, $f7
	mtc1    $0, $f6
	cvt.d.s $f4, $f18
	mul.d   $f8, $f4, $f6
	lw      $t9, 0x0034($sp)
	cvt.s.d $f10, $f8
	swc1    $f10, 0x0150($t9)
	lwc1    $f16, 0x0040($sp)
	li      $at, 0x3FF80000
	mtc1    $at, $f5
	mtc1    $0, $f4
	cvt.d.s $f18, $f16
	mul.d   $f6, $f18, $f4
	lw      $t0, 0x0034($sp)
	cvt.s.d $f8, $f6
	swc1    $f8, 0x0154($t0)
	li      $at, 0x40000000
	mtc1    $at, $f16
	lwc1    $f10, 0x0038($sp)
	lw      $t1, 0x0034($sp)
	mul.s   $f18, $f10, $f16
	swc1    $f18, 0x0158($t1)
	li      $at, 0x40000000
	mtc1    $at, $f6
	lwc1    $f4, 0x003C($sp)
	lw      $t2, 0x0034($sp)
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x015C($t2)
	li      $at, 0x40000000
	mtc1    $at, $f16
	lwc1    $f10, 0x0040($sp)
	lw      $t3, 0x0034($sp)
	mul.s   $f18, $f10, $f16
	swc1    $f18, 0x0160($t3)
	lw      $t5, 0x0034($sp)
	li      $t4, 0x0002
	sw      $t4, 0x0170($t5)
	b       .L80187A98
	nop
.L801879C0:
	lwc1    $f4, 0x0038($sp)
	lw      $t6, 0x0034($sp)
	nop
	swc1    $f4, 0x0020($t6)
	lwc1    $f6, 0x003C($sp)
	lw      $t7, 0x0034($sp)
	nop
	swc1    $f6, 0x0024($t7)
	lwc1    $f8, 0x0040($sp)
	lw      $t8, 0x0034($sp)
	nop
	swc1    $f8, 0x0028($t8)
	b       .L80187A98
	nop
.L801879F8:
	lwc1    $f10, 0x0038($sp)
	lw      $t9, 0x0034($sp)
	nop
	swc1    $f10, 0x0014($t9)
	lwc1    $f16, 0x003C($sp)
	lw      $t0, 0x0034($sp)
	nop
	swc1    $f16, 0x0018($t0)
	lwc1    $f18, 0x0040($sp)
	lw      $t1, 0x0034($sp)
	nop
	swc1    $f18, 0x001C($t1)
	b       .L80187A98
	nop
.L80187A30:
	lwc1    $f4, 0x0038($sp)
	lw      $t2, 0x0034($sp)
	nop
	swc1    $f4, 0x0020($t2)
	lwc1    $f6, 0x003C($sp)
	lw      $t3, 0x0034($sp)
	nop
	swc1    $f6, 0x0024($t3)
	lwc1    $f8, 0x0040($sp)
	lw      $t4, 0x0034($sp)
	nop
	swc1    $f8, 0x0028($t4)
	b       .L80187A98
	nop
.L80187A68:
	b       .L80187A98
	nop
.L80187A70:
	lui     $t5, %hi(_face_dynlist_data+0x04)
	lw      $t5, %lo(_face_dynlist_data+0x04)($t5)
	lui     $a2, %hi(_face_bss+0x610)
	lw      $a2, %lo(_face_bss+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B6B94
	la.u    $a1, str_face_dynlist_801B6BC8
	lw      $a3, 0x000C($t5)
	la.l    $a1, str_face_dynlist_801B6BC8
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6B94
.L80187A98:
	b       .L80187AA0
	nop
.L80187AA0:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0038

dAddToRelPos:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(_face_dynlist_data+0x04)
	lw      $t6, %lo(_face_dynlist_data+0x04)($t6)
	nop
	sw      $t6, 0x0024($sp)
	lui     $t7, %hi(_face_dynlist_data+0x04)
	lw      $t7, %lo(_face_dynlist_data+0x04)($t7)
	nop
	bnez    $t7, .L80187AF0
	nop
	la.u    $a0, str_face_dynlist_801B6BD8
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6BD8
.L80187AF0:
	lui     $t8, %hi(_face_dynlist_data+0x04)
	lw      $t8, %lo(_face_dynlist_data+0x04)($t8)
	li      $at, 0x0004
	lw      $s0, 0x000C($t8)
	nop
	beq     $s0, $at, .L80187B88
	nop
	li      $at, 0x0008
	beq     $s0, $at, .L80187BE4
	nop
	li      $at, 0x0100
	beq     $s0, $at, .L80187B2C
	nop
	b       .L80187C40
	nop
.L80187B2C:
	lw      $t9, 0x0024($sp)
	lw      $t0, 0x0028($sp)
	lwc1    $f4, 0x0020($t9)
	lwc1    $f6, 0x0000($t0)
	nop
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0020($t9)
	lw      $t1, 0x0024($sp)
	lw      $t2, 0x0028($sp)
	lwc1    $f10, 0x0024($t1)
	lwc1    $f16, 0x0004($t2)
	nop
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x0024($t1)
	lw      $t3, 0x0024($sp)
	lw      $t4, 0x0028($sp)
	lwc1    $f4, 0x0028($t3)
	lwc1    $f6, 0x0008($t4)
	nop
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0028($t3)
	b       .L80187C68
	nop
.L80187B88:
	lw      $t5, 0x0024($sp)
	lw      $t6, 0x0028($sp)
	lwc1    $f10, 0x003C($t5)
	lwc1    $f16, 0x0000($t6)
	nop
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x003C($t5)
	lw      $t7, 0x0024($sp)
	lw      $t8, 0x0028($sp)
	lwc1    $f4, 0x0040($t7)
	lwc1    $f6, 0x0004($t8)
	nop
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0040($t7)
	lw      $t0, 0x0024($sp)
	lw      $t9, 0x0028($sp)
	lwc1    $f10, 0x0044($t0)
	lwc1    $f16, 0x0008($t9)
	nop
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x0044($t0)
	b       .L80187C68
	nop
.L80187BE4:
	lw      $t2, 0x0024($sp)
	lw      $t1, 0x0028($sp)
	lwc1    $f4, 0x0020($t2)
	lwc1    $f6, 0x0000($t1)
	nop
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0020($t2)
	lw      $t4, 0x0024($sp)
	lw      $t3, 0x0028($sp)
	lwc1    $f10, 0x0024($t4)
	lwc1    $f16, 0x0004($t3)
	nop
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x0024($t4)
	lw      $t6, 0x0024($sp)
	lw      $t5, 0x0028($sp)
	lwc1    $f4, 0x0028($t6)
	lwc1    $f6, 0x0008($t5)
	nop
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0028($t6)
	b       .L80187C68
	nop
.L80187C40:
	lui     $t8, %hi(_face_dynlist_data+0x04)
	lw      $t8, %lo(_face_dynlist_data+0x04)($t8)
	lui     $a2, %hi(_face_bss+0x610)
	lw      $a2, %lo(_face_bss+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B6BFC
	la.u    $a1, str_face_dynlist_801B6C30
	lw      $a3, 0x000C($t8)
	la.l    $a1, str_face_dynlist_801B6C30
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6BFC
.L80187C68:
	b       .L80187C70
	nop
.L80187C70:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

.globl dGetRelPos
dGetRelPos:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(_face_dynlist_data+0x04)
	lw      $t6, %lo(_face_dynlist_data+0x04)($t6)
	nop
	bnez    $t6, .L80187CB0
	nop
	la.u    $a0, str_face_dynlist_801B6C40
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6C40
.L80187CB0:
	lui     $t7, %hi(_face_dynlist_data+0x04)
	lw      $t7, %lo(_face_dynlist_data+0x04)($t7)
	li      $at, 0x0004
	lw      $s0, 0x000C($t7)
	nop
	beq     $s0, $at, .L80187D48
	nop
	li      $at, 0x0008
	beq     $s0, $at, .L80187DE8
	nop
	li      $at, 0x0100
	beq     $s0, $at, .L80187CF8
	nop
	li      $at, 0x0200
	beq     $s0, $at, .L80187D98
	nop
	b       .L80187E38
	nop
.L80187CF8:
	lui     $t8, %hi(_face_dynlist_data+0x04)
	lw      $t8, %lo(_face_dynlist_data+0x04)($t8)
	lw      $t9, 0x0028($sp)
	lwc1    $f4, 0x0020($t8)
	nop
	swc1    $f4, 0x0000($t9)
	lui     $t0, %hi(_face_dynlist_data+0x04)
	lw      $t0, %lo(_face_dynlist_data+0x04)($t0)
	lw      $t1, 0x0028($sp)
	lwc1    $f6, 0x0024($t0)
	nop
	swc1    $f6, 0x0004($t1)
	lui     $t2, %hi(_face_dynlist_data+0x04)
	lw      $t2, %lo(_face_dynlist_data+0x04)($t2)
	lw      $t3, 0x0028($sp)
	lwc1    $f8, 0x0028($t2)
	nop
	swc1    $f8, 0x0008($t3)
	b       .L80187E60
	nop
.L80187D48:
	lui     $t4, %hi(_face_dynlist_data+0x04)
	lw      $t4, %lo(_face_dynlist_data+0x04)($t4)
	lw      $t5, 0x0028($sp)
	lwc1    $f10, 0x003C($t4)
	nop
	swc1    $f10, 0x0000($t5)
	lui     $t6, %hi(_face_dynlist_data+0x04)
	lw      $t6, %lo(_face_dynlist_data+0x04)($t6)
	lw      $t7, 0x0028($sp)
	lwc1    $f16, 0x0040($t6)
	nop
	swc1    $f16, 0x0004($t7)
	lui     $t8, %hi(_face_dynlist_data+0x04)
	lw      $t8, %lo(_face_dynlist_data+0x04)($t8)
	lw      $t9, 0x0028($sp)
	lwc1    $f18, 0x0044($t8)
	nop
	swc1    $f18, 0x0008($t9)
	b       .L80187E60
	nop
.L80187D98:
	lui     $t0, %hi(_face_dynlist_data+0x04)
	lw      $t0, %lo(_face_dynlist_data+0x04)($t0)
	lw      $t1, 0x0028($sp)
	lwc1    $f4, 0x0040($t0)
	nop
	swc1    $f4, 0x0000($t1)
	lui     $t2, %hi(_face_dynlist_data+0x04)
	lw      $t2, %lo(_face_dynlist_data+0x04)($t2)
	lw      $t3, 0x0028($sp)
	lwc1    $f6, 0x0044($t2)
	nop
	swc1    $f6, 0x0004($t3)
	lui     $t4, %hi(_face_dynlist_data+0x04)
	lw      $t4, %lo(_face_dynlist_data+0x04)($t4)
	lw      $t5, 0x0028($sp)
	lwc1    $f8, 0x0048($t4)
	nop
	swc1    $f8, 0x0008($t5)
	b       .L80187E60
	nop
.L80187DE8:
	lui     $t6, %hi(_face_dynlist_data+0x04)
	lw      $t6, %lo(_face_dynlist_data+0x04)($t6)
	lw      $t7, 0x0028($sp)
	lwc1    $f10, 0x0020($t6)
	nop
	swc1    $f10, 0x0000($t7)
	lui     $t8, %hi(_face_dynlist_data+0x04)
	lw      $t8, %lo(_face_dynlist_data+0x04)($t8)
	lw      $t9, 0x0028($sp)
	lwc1    $f16, 0x0024($t8)
	nop
	swc1    $f16, 0x0004($t9)
	lui     $t0, %hi(_face_dynlist_data+0x04)
	lw      $t0, %lo(_face_dynlist_data+0x04)($t0)
	lw      $t1, 0x0028($sp)
	lwc1    $f18, 0x0028($t0)
	nop
	swc1    $f18, 0x0008($t1)
	b       .L80187E60
	nop
.L80187E38:
	lui     $t2, %hi(_face_dynlist_data+0x04)
	lw      $t2, %lo(_face_dynlist_data+0x04)($t2)
	lui     $a2, %hi(_face_bss+0x610)
	lw      $a2, %lo(_face_bss+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B6C64
	la.u    $a1, str_face_dynlist_801B6C98
	lw      $a3, 0x000C($t2)
	la.l    $a1, str_face_dynlist_801B6C98
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6C64
.L80187E60:
	b       .L80187E68
	nop
.L80187E68:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

.globl dGetAttObjGroup
dGetAttObjGroup:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(_face_dynlist_data+0x04)
	lw      $t6, %lo(_face_dynlist_data+0x04)($t6)
	nop
	bnez    $t6, .L80187EA4
	nop
	la.u    $a0, str_face_dynlist_801B6CA8
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6CA8
.L80187EA4:
	lui     $t7, %hi(_face_dynlist_data+0x04)
	lw      $t7, %lo(_face_dynlist_data+0x04)($t7)
	li      $at, 0x0004
	lw      $s0, 0x000C($t7)
	nop
	beq     $s0, $at, .L80187ED4
	nop
	li      $at, 0x0020
	beq     $s0, $at, .L80187EF4
	nop
	b       .L80187F14
	nop
.L80187ED4:
	lui     $t8, %hi(_face_dynlist_data+0x04)
	lw      $t8, %lo(_face_dynlist_data+0x04)($t8)
	nop
	lw      $v0, 0x01F8($t8)
	b       .L80187F44
	nop
	b       .L80187F3C
	nop
.L80187EF4:
	lui     $t9, %hi(_face_dynlist_data+0x04)
	lw      $t9, %lo(_face_dynlist_data+0x04)($t9)
	nop
	lw      $v0, 0x01D4($t9)
	b       .L80187F44
	nop
	b       .L80187F3C
	nop
.L80187F14:
	lui     $t0, %hi(_face_dynlist_data+0x04)
	lw      $t0, %lo(_face_dynlist_data+0x04)($t0)
	lui     $a2, %hi(_face_bss+0x610)
	lw      $a2, %lo(_face_bss+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B6CCC
	la.u    $a1, str_face_dynlist_801B6D00
	lw      $a3, 0x000C($t0)
	la.l    $a1, str_face_dynlist_801B6D00
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6CCC
.L80187F3C:
	b       .L80187F44
	nop
.L80187F44:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

dGetAttToObj:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(_face_dynlist_data+0x04)
	lw      $t6, %lo(_face_dynlist_data+0x04)($t6)
	nop
	bnez    $t6, .L80187F80
	nop
	la.u    $a0, str_face_dynlist_801B6D14
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6D14
.L80187F80:
	lui     $t7, %hi(_face_dynlist_data+0x04)
	lw      $t7, %lo(_face_dynlist_data+0x04)($t7)
	li      $at, 0x0004
	lw      $s0, 0x000C($t7)
	nop
	beq     $s0, $at, .L80187FB0
	nop
	li      $at, 0x0020
	beq     $s0, $at, .L80187FD0
	nop
	b       .L80187FF0
	nop
.L80187FB0:
	lui     $t8, %hi(_face_dynlist_data+0x04)
	lw      $t8, %lo(_face_dynlist_data+0x04)($t8)
	nop
	lw      $v0, 0x020C($t8)
	b       .L80188020
	nop
	b       .L80188018
	nop
.L80187FD0:
	lui     $t9, %hi(_face_dynlist_data+0x04)
	lw      $t9, %lo(_face_dynlist_data+0x04)($t9)
	nop
	lw      $v0, 0x01E8($t9)
	b       .L80188020
	nop
	b       .L80188018
	nop
.L80187FF0:
	lui     $t0, %hi(_face_dynlist_data+0x04)
	lw      $t0, %lo(_face_dynlist_data+0x04)($t0)
	lui     $a2, %hi(_face_bss+0x610)
	lw      $a2, %lo(_face_bss+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B6D38
	la.u    $a1, str_face_dynlist_801B6D6C
	lw      $a3, 0x000C($t0)
	la.l    $a1, str_face_dynlist_801B6D6C
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6D38
.L80188018:
	b       .L80188020
	nop
.L80188020:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

.globl dGetScale
dGetScale:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(_face_dynlist_data+0x04)
	lw      $t6, %lo(_face_dynlist_data+0x04)($t6)
	nop
	bnez    $t6, .L80188060
	nop
	la.u    $a0, str_face_dynlist_801B6D7C
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6D7C
.L80188060:
	lui     $t7, %hi(_face_dynlist_data+0x04)
	lw      $t7, %lo(_face_dynlist_data+0x04)($t7)
	nop
	sw      $t7, 0x0024($sp)
	lui     $t8, %hi(_face_dynlist_data+0x04)
	lw      $t8, %lo(_face_dynlist_data+0x04)($t8)
	li      $at, 0x0004
	lw      $s0, 0x000C($t8)
	nop
	beq     $s0, $at, .L801880AC
	nop
	li      $at, 0x0020
	beq     $s0, $at, .L801880F0
	nop
	li      $at, 0x00080000
	beq     $s0, $at, .L80188134
	nop
	b       .L80188178
	nop
.L801880AC:
	lw      $t9, 0x0024($sp)
	lw      $t0, 0x0028($sp)
	lwc1    $f4, 0x009C($t9)
	nop
	swc1    $f4, 0x0000($t0)
	lw      $t1, 0x0024($sp)
	lw      $t2, 0x0028($sp)
	lwc1    $f6, 0x00A0($t1)
	nop
	swc1    $f6, 0x0004($t2)
	lw      $t3, 0x0024($sp)
	lw      $t4, 0x0028($sp)
	lwc1    $f8, 0x00A4($t3)
	nop
	swc1    $f8, 0x0008($t4)
	b       .L801881A0
	nop
.L801880F0:
	lw      $t5, 0x0024($sp)
	lw      $t6, 0x0028($sp)
	lwc1    $f10, 0x01AC($t5)
	nop
	swc1    $f10, 0x0000($t6)
	lw      $t7, 0x0024($sp)
	lw      $t8, 0x0028($sp)
	lwc1    $f16, 0x01B0($t7)
	nop
	swc1    $f16, 0x0004($t8)
	lw      $t9, 0x0024($sp)
	lw      $t0, 0x0028($sp)
	lwc1    $f18, 0x01B4($t9)
	nop
	swc1    $f18, 0x0008($t0)
	b       .L801881A0
	nop
.L80188134:
	li      $at, 0x3F800000
	mtc1    $at, $f4
	lw      $t1, 0x0028($sp)
	nop
	swc1    $f4, 0x0000($t1)
	li      $at, 0x3F800000
	mtc1    $at, $f6
	lw      $t2, 0x0028($sp)
	nop
	swc1    $f6, 0x0004($t2)
	li      $at, 0x3F800000
	mtc1    $at, $f8
	lw      $t3, 0x0028($sp)
	nop
	swc1    $f8, 0x0008($t3)
	b       .L801881A0
	nop
.L80188178:
	lui     $t4, %hi(_face_dynlist_data+0x04)
	lw      $t4, %lo(_face_dynlist_data+0x04)($t4)
	lui     $a2, %hi(_face_bss+0x610)
	lw      $a2, %lo(_face_bss+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B6DA0
	la.u    $a1, str_face_dynlist_801B6DD4
	lw      $a3, 0x000C($t4)
	la.l    $a1, str_face_dynlist_801B6DD4
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6DA0
.L801881A0:
	b       .L801881A8
	nop
.L801881A8:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

dSetAttOffset:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(_face_dynlist_data+0x04)
	lw      $t6, %lo(_face_dynlist_data+0x04)($t6)
	nop
	bnez    $t6, .L801881E8
	nop
	la.u    $a0, str_face_dynlist_801B6DE0
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6DE0
.L801881E8:
	lui     $t7, %hi(_face_dynlist_data+0x04)
	lw      $t7, %lo(_face_dynlist_data+0x04)($t7)
	nop
	sw      $t7, 0x0024($sp)
	lui     $t8, %hi(_face_dynlist_data+0x04)
	lw      $t8, %lo(_face_dynlist_data+0x04)($t8)
	li      $at, 0x0004
	lw      $s0, 0x000C($t8)
	nop
	beq     $s0, $at, .L80188234
	nop
	li      $at, 0x0008
	beq     $s0, $at, .L80188334
	nop
	li      $at, 0x0020
	beq     $s0, $at, .L801882B4
	nop
	b       .L8018833C
	nop
.L80188234:
	lw      $t9, 0x0028($sp)
	lw      $t0, 0x0024($sp)
	lwc1    $f4, 0x0000($t9)
	nop
	swc1    $f4, 0x0200($t0)
	lw      $t1, 0x0028($sp)
	lw      $t2, 0x0024($sp)
	lwc1    $f6, 0x0004($t1)
	nop
	swc1    $f6, 0x0204($t2)
	lw      $t3, 0x0028($sp)
	lw      $t4, 0x0024($sp)
	lwc1    $f8, 0x0008($t3)
	nop
	swc1    $f8, 0x0208($t4)
	lw      $t5, 0x0028($sp)
	lw      $t6, 0x0024($sp)
	lwc1    $f10, 0x0000($t5)
	nop
	swc1    $f10, 0x0054($t6)
	lw      $t7, 0x0028($sp)
	lw      $t8, 0x0024($sp)
	lwc1    $f16, 0x0004($t7)
	nop
	swc1    $f16, 0x0058($t8)
	lw      $t9, 0x0028($sp)
	lw      $t0, 0x0024($sp)
	lwc1    $f18, 0x0008($t9)
	nop
	swc1    $f18, 0x005C($t0)
	b       .L80188364
	nop
.L801882B4:
	lw      $t1, 0x0028($sp)
	lw      $t2, 0x0024($sp)
	lwc1    $f4, 0x0000($t1)
	nop
	swc1    $f4, 0x01D8($t2)
	lw      $t3, 0x0028($sp)
	lw      $t4, 0x0024($sp)
	lwc1    $f6, 0x0004($t3)
	nop
	swc1    $f6, 0x01DC($t4)
	lw      $t5, 0x0028($sp)
	lw      $t6, 0x0024($sp)
	lwc1    $f8, 0x0008($t5)
	nop
	swc1    $f8, 0x01E0($t6)
	lw      $t7, 0x0028($sp)
	lw      $t8, 0x0024($sp)
	lwc1    $f10, 0x0000($t7)
	nop
	swc1    $f10, 0x0020($t8)
	lw      $t9, 0x0028($sp)
	lw      $t0, 0x0024($sp)
	lwc1    $f16, 0x0004($t9)
	nop
	swc1    $f16, 0x0024($t0)
	lw      $t1, 0x0028($sp)
	lw      $t2, 0x0024($sp)
	lwc1    $f18, 0x0008($t1)
	nop
	swc1    $f18, 0x0028($t2)
	b       .L80188364
	nop
.L80188334:
	b       .L80188364
	nop
.L8018833C:
	lui     $t3, %hi(_face_dynlist_data+0x04)
	lw      $t3, %lo(_face_dynlist_data+0x04)($t3)
	lui     $a2, %hi(_face_bss+0x610)
	lw      $a2, %lo(_face_bss+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B6E04
	la.u    $a1, str_face_dynlist_801B6E38
	lw      $a3, 0x000C($t3)
	la.l    $a1, str_face_dynlist_801B6E38
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6E04
.L80188364:
	b       .L8018836C
	nop
.L8018836C:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

dSetAttToOffset:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0040($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(_face_dynlist_data+0x04)
	lw      $t6, %lo(_face_dynlist_data+0x04)($t6)
	nop
	bnez    $t6, .L801883AC
	nop
	la.u    $a0, str_face_dynlist_801B6E48
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6E48
.L801883AC:
	lui     $t7, %hi(_face_dynlist_data+0x04)
	lw      $t7, %lo(_face_dynlist_data+0x04)($t7)
	nop
	sw      $t7, 0x003C($sp)
	jal     face_dynlist_80183A50
	nop
	lui     $t8, %hi(_face_dynlist_data+0x04)
	lw      $t8, %lo(_face_dynlist_data+0x04)($t8)
	li      $at, 0x0004
	lw      $s0, 0x000C($t8)
	nop
	beq     $s0, $at, .L80188400
	nop
	li      $at, 0x0008
	beq     $s0, $at, .L80188438
	nop
	li      $at, 0x0020
	beq     $s0, $at, .L8018841C
	nop
	b       .L80188454
	nop
.L80188400:
	lw      $t9, 0x003C($sp)
	nop
	lw      $a0, 0x020C($t9)
	jal     face_dynlist_80186C84
	nop
	b       .L8018847C
	nop
.L8018841C:
	lw      $t0, 0x003C($sp)
	nop
	lw      $a0, 0x01E8($t0)
	jal     face_dynlist_80186C84
	nop
	b       .L8018847C
	nop
.L80188438:
	lw      $t1, 0x003C($sp)
	nop
	lw      $a0, 0x00BC($t1)
	jal     face_dynlist_80186C84
	nop
	b       .L8018847C
	nop
.L80188454:
	lui     $t2, %hi(_face_dynlist_data+0x04)
	lw      $t2, %lo(_face_dynlist_data+0x04)($t2)
	lui     $a2, %hi(_face_bss+0x610)
	lw      $a2, %lo(_face_bss+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B6E6C
	la.u    $a1, str_face_dynlist_801B6EA0
	lw      $a3, 0x000C($t2)
	la.l    $a1, str_face_dynlist_801B6EA0
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6E6C
.L8018847C:
	lui     $t3, %hi(_face_dynlist_data+0x04)
	lw      $t3, %lo(_face_dynlist_data+0x04)($t3)
	nop
	bnez    $t3, .L801884A4
	nop
	lui     $a1, %hi(_face_bss+0x618)
	lw      $a1, %lo(_face_bss+0x618)($a1)
	la.u    $a0, str_face_dynlist_801B6EB4
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6EB4
.L801884A4:
	lw      $a0, 0x0040($sp)
	jal     dSetAttToOffset
	nop
	jal     face_dynlist_80183A80
	nop
	b       .L801884C0
	nop
.L801884C0:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0040

dGetAttOffset:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(_face_dynlist_data+0x04)
	lw      $t6, %lo(_face_dynlist_data+0x04)($t6)
	nop
	bnez    $t6, .L80188500
	nop
	la.u    $a0, str_face_dynlist_801B6EEC
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6EEC
.L80188500:
	lui     $t7, %hi(_face_dynlist_data+0x04)
	lw      $t7, %lo(_face_dynlist_data+0x04)($t7)
	li      $at, 0x0004
	lw      $s0, 0x000C($t7)
	nop
	beq     $s0, $at, .L8018853C
	nop
	li      $at, 0x0008
	beq     $s0, $at, .L801885DC
	nop
	li      $at, 0x0020
	beq     $s0, $at, .L8018858C
	nop
	b       .L801885E4
	nop
.L8018853C:
	lui     $t8, %hi(_face_dynlist_data+0x04)
	lw      $t8, %lo(_face_dynlist_data+0x04)($t8)
	lw      $t9, 0x0028($sp)
	lwc1    $f4, 0x0200($t8)
	nop
	swc1    $f4, 0x0000($t9)
	lui     $t0, %hi(_face_dynlist_data+0x04)
	lw      $t0, %lo(_face_dynlist_data+0x04)($t0)
	lw      $t1, 0x0028($sp)
	lwc1    $f6, 0x0204($t0)
	nop
	swc1    $f6, 0x0004($t1)
	lui     $t2, %hi(_face_dynlist_data+0x04)
	lw      $t2, %lo(_face_dynlist_data+0x04)($t2)
	lw      $t3, 0x0028($sp)
	lwc1    $f8, 0x0208($t2)
	nop
	swc1    $f8, 0x0008($t3)
	b       .L8018860C
	nop
.L8018858C:
	lui     $t4, %hi(_face_dynlist_data+0x04)
	lw      $t4, %lo(_face_dynlist_data+0x04)($t4)
	lw      $t5, 0x0028($sp)
	lwc1    $f10, 0x01D8($t4)
	nop
	swc1    $f10, 0x0000($t5)
	lui     $t6, %hi(_face_dynlist_data+0x04)
	lw      $t6, %lo(_face_dynlist_data+0x04)($t6)
	lw      $t7, 0x0028($sp)
	lwc1    $f16, 0x01DC($t6)
	nop
	swc1    $f16, 0x0004($t7)
	lui     $t8, %hi(_face_dynlist_data+0x04)
	lw      $t8, %lo(_face_dynlist_data+0x04)($t8)
	lw      $t9, 0x0028($sp)
	lwc1    $f18, 0x01E0($t8)
	nop
	swc1    $f18, 0x0008($t9)
	b       .L8018860C
	nop
.L801885DC:
	b       .L8018860C
	nop
.L801885E4:
	lui     $t0, %hi(_face_dynlist_data+0x04)
	lw      $t0, %lo(_face_dynlist_data+0x04)($t0)
	lui     $a2, %hi(_face_bss+0x610)
	lw      $a2, %lo(_face_bss+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B6F10
	la.u    $a1, str_face_dynlist_801B6F44
	lw      $a3, 0x000C($t0)
	la.l    $a1, str_face_dynlist_801B6F44
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6F10
.L8018860C:
	b       .L80188614
	nop
.L80188614:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

dGetAttFlags:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(_face_dynlist_data+0x04)
	lw      $t6, %lo(_face_dynlist_data+0x04)($t6)
	nop
	bnez    $t6, .L80188650
	nop
	la.u    $a0, str_face_dynlist_801B6F54
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6F54
.L80188650:
	lui     $t7, %hi(_face_dynlist_data+0x04)
	lw      $t7, %lo(_face_dynlist_data+0x04)($t7)
	li      $at, 0x0004
	lw      $s0, 0x000C($t7)
	nop
	beq     $s0, $at, .L8018868C
	nop
	li      $at, 0x0008
	beq     $s0, $at, .L801886CC
	nop
	li      $at, 0x0020
	beq     $s0, $at, .L801886AC
	nop
	b       .L801886EC
	nop
.L8018868C:
	lui     $t8, %hi(_face_dynlist_data+0x04)
	lw      $t8, %lo(_face_dynlist_data+0x04)($t8)
	nop
	lw      $t9, 0x01FC($t8)
	nop
	sw      $t9, 0x0024($sp)
	b       .L80188714
	nop
.L801886AC:
	lui     $t0, %hi(_face_dynlist_data+0x04)
	lw      $t0, %lo(_face_dynlist_data+0x04)($t0)
	nop
	lw      $t1, 0x01E4($t0)
	nop
	sw      $t1, 0x0024($sp)
	b       .L80188714
	nop
.L801886CC:
	lui     $t2, %hi(_face_dynlist_data+0x04)
	lw      $t2, %lo(_face_dynlist_data+0x04)($t2)
	nop
	lw      $t3, 0x00B8($t2)
	nop
	sw      $t3, 0x0024($sp)
	b       .L80188714
	nop
.L801886EC:
	lui     $t4, %hi(_face_dynlist_data+0x04)
	lw      $t4, %lo(_face_dynlist_data+0x04)($t4)
	lui     $a2, %hi(_face_bss+0x610)
	lw      $a2, %lo(_face_bss+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B6F78
	la.u    $a1, str_face_dynlist_801B6FAC
	lw      $a3, 0x000C($t4)
	la.l    $a1, str_face_dynlist_801B6FAC
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6F78
.L80188714:
	lw      $v0, 0x0024($sp)
	b       .L80188728
	nop
	b       .L80188728
	nop
.L80188728:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

.globl dSetWorldPos
dSetWorldPos:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a2, 0x0030($sp)
	swc1    $f12, 0x0028($sp)
	swc1    $f14, 0x002C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(_face_dynlist_data+0x04)
	lw      $t6, %lo(_face_dynlist_data+0x04)($t6)
	nop
	bnez    $t6, .L80188770
	nop
	la.u    $a0, str_face_dynlist_801B6FBC
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6FBC
.L80188770:
	lui     $t7, %hi(_face_dynlist_data+0x04)
	lw      $t7, %lo(_face_dynlist_data+0x04)($t7)
	li      $at, 0x0004
	lw      $s0, 0x000C($t7)
	nop
	beq     $s0, $at, .L80188814
	nop
	li      $at, 0x0020
	beq     $s0, $at, .L80188858
	nop
	li      $at, 0x0100
	beq     $s0, $at, .L80188924
	nop
	li      $at, 0x0200
	beq     $s0, $at, .L801887D0
	nop
	li      $at, 0x2000
	beq     $s0, $at, .L8018889C
	nop
	li      $at, 0x4000
	beq     $s0, $at, .L801888E0
	nop
	b       .L80188968
	nop
.L801887D0:
	lui     $t8, %hi(_face_dynlist_data+0x04)
	lw      $t8, %lo(_face_dynlist_data+0x04)($t8)
	lwc1    $f4, 0x0028($sp)
	nop
	swc1    $f4, 0x0014($t8)
	lui     $t9, %hi(_face_dynlist_data+0x04)
	lw      $t9, %lo(_face_dynlist_data+0x04)($t9)
	lwc1    $f6, 0x002C($sp)
	nop
	swc1    $f6, 0x0018($t9)
	lui     $t0, %hi(_face_dynlist_data+0x04)
	lw      $t0, %lo(_face_dynlist_data+0x04)($t0)
	lwc1    $f8, 0x0030($sp)
	nop
	swc1    $f8, 0x001C($t0)
	b       .L80188990
	nop
.L80188814:
	lui     $t1, %hi(_face_dynlist_data+0x04)
	lw      $t1, %lo(_face_dynlist_data+0x04)($t1)
	lwc1    $f10, 0x0028($sp)
	nop
	swc1    $f10, 0x0014($t1)
	lui     $t2, %hi(_face_dynlist_data+0x04)
	lw      $t2, %lo(_face_dynlist_data+0x04)($t2)
	lwc1    $f16, 0x002C($sp)
	nop
	swc1    $f16, 0x0018($t2)
	lui     $t3, %hi(_face_dynlist_data+0x04)
	lw      $t3, %lo(_face_dynlist_data+0x04)($t3)
	lwc1    $f18, 0x0030($sp)
	nop
	swc1    $f18, 0x001C($t3)
	b       .L80188990
	nop
.L80188858:
	lui     $t4, %hi(_face_dynlist_data+0x04)
	lw      $t4, %lo(_face_dynlist_data+0x04)($t4)
	lwc1    $f4, 0x0028($sp)
	nop
	swc1    $f4, 0x0014($t4)
	lui     $t5, %hi(_face_dynlist_data+0x04)
	lw      $t5, %lo(_face_dynlist_data+0x04)($t5)
	lwc1    $f6, 0x002C($sp)
	nop
	swc1    $f6, 0x0018($t5)
	lui     $t6, %hi(_face_dynlist_data+0x04)
	lw      $t6, %lo(_face_dynlist_data+0x04)($t6)
	lwc1    $f8, 0x0030($sp)
	nop
	swc1    $f8, 0x001C($t6)
	b       .L80188990
	nop
.L8018889C:
	lui     $t7, %hi(_face_dynlist_data+0x04)
	lw      $t7, %lo(_face_dynlist_data+0x04)($t7)
	lwc1    $f10, 0x0028($sp)
	nop
	swc1    $f10, 0x0014($t7)
	lui     $t8, %hi(_face_dynlist_data+0x04)
	lw      $t8, %lo(_face_dynlist_data+0x04)($t8)
	lwc1    $f16, 0x002C($sp)
	nop
	swc1    $f16, 0x0018($t8)
	lui     $t9, %hi(_face_dynlist_data+0x04)
	lw      $t9, %lo(_face_dynlist_data+0x04)($t9)
	lwc1    $f18, 0x0030($sp)
	nop
	swc1    $f18, 0x001C($t9)
	b       .L80188990
	nop
.L801888E0:
	lui     $t0, %hi(_face_dynlist_data+0x04)
	lw      $t0, %lo(_face_dynlist_data+0x04)($t0)
	lwc1    $f4, 0x0028($sp)
	nop
	swc1    $f4, 0x003C($t0)
	lui     $t1, %hi(_face_dynlist_data+0x04)
	lw      $t1, %lo(_face_dynlist_data+0x04)($t1)
	lwc1    $f6, 0x002C($sp)
	nop
	swc1    $f6, 0x0040($t1)
	lui     $t2, %hi(_face_dynlist_data+0x04)
	lw      $t2, %lo(_face_dynlist_data+0x04)($t2)
	lwc1    $f8, 0x0030($sp)
	nop
	swc1    $f8, 0x0044($t2)
	b       .L80188990
	nop
.L80188924:
	lui     $t3, %hi(_face_dynlist_data+0x04)
	lw      $t3, %lo(_face_dynlist_data+0x04)($t3)
	lwc1    $f10, 0x0028($sp)
	nop
	swc1    $f10, 0x0020($t3)
	lui     $t4, %hi(_face_dynlist_data+0x04)
	lw      $t4, %lo(_face_dynlist_data+0x04)($t4)
	lwc1    $f16, 0x002C($sp)
	nop
	swc1    $f16, 0x0024($t4)
	lui     $t5, %hi(_face_dynlist_data+0x04)
	lw      $t5, %lo(_face_dynlist_data+0x04)($t5)
	lwc1    $f18, 0x0030($sp)
	nop
	swc1    $f18, 0x0028($t5)
	b       .L80188990
	nop
.L80188968:
	lui     $t6, %hi(_face_dynlist_data+0x04)
	lw      $t6, %lo(_face_dynlist_data+0x04)($t6)
	lui     $a2, %hi(_face_bss+0x610)
	lw      $a2, %lo(_face_bss+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B6FE0
	la.u    $a1, str_face_dynlist_801B7014
	lw      $a3, 0x000C($t6)
	la.l    $a1, str_face_dynlist_801B7014
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B6FE0
.L80188990:
	b       .L80188998
	nop
.L80188998:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

dSetNormal:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a2, 0x0030($sp)
	swc1    $f12, 0x0028($sp)
	swc1    $f14, 0x002C($sp)
	lui     $t6, %hi(_face_dynlist_data+0x04)
	lw      $t6, %lo(_face_dynlist_data+0x04)($t6)
	nop
	bnez    $t6, .L801889DC
	nop
	la.u    $a0, str_face_dynlist_801B7024
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B7024
.L801889DC:
	lwc1    $f4, 0x0028($sp)
	nop
	swc1    $f4, 0x001C($sp)
	lwc1    $f6, 0x002C($sp)
	nop
	swc1    $f6, 0x0020($sp)
	lwc1    $f8, 0x0030($sp)
	nop
	swc1    $f8, 0x0024($sp)
	jal     face_math_80194D34
	addiu   $a0, $sp, 0x001C
	lui     $t7, %hi(_face_dynlist_data+0x04)
	lw      $t7, %lo(_face_dynlist_data+0x04)($t7)
	li      $at, 0x0100
	lw      $t8, 0x000C($t7)
	nop
	bne     $t8, $at, .L80188A70
	nop
	b       .L80188A2C
	nop
.L80188A2C:
	lui     $t9, %hi(_face_dynlist_data+0x04)
	lw      $t9, %lo(_face_dynlist_data+0x04)($t9)
	lwc1    $f10, 0x001C($sp)
	nop
	swc1    $f10, 0x002C($t9)
	lui     $t0, %hi(_face_dynlist_data+0x04)
	lw      $t0, %lo(_face_dynlist_data+0x04)($t0)
	lwc1    $f16, 0x0020($sp)
	nop
	swc1    $f16, 0x0030($t0)
	lui     $t1, %hi(_face_dynlist_data+0x04)
	lw      $t1, %lo(_face_dynlist_data+0x04)($t1)
	lwc1    $f18, 0x0024($sp)
	nop
	swc1    $f18, 0x0034($t1)
	b       .L80188A98
	nop
.L80188A70:
	lui     $t2, %hi(_face_dynlist_data+0x04)
	lw      $t2, %lo(_face_dynlist_data+0x04)($t2)
	lui     $a2, %hi(_face_bss+0x610)
	lw      $a2, %lo(_face_bss+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B7048
	la.u    $a1, str_face_dynlist_801B707C
	lw      $a3, 0x000C($t2)
	la.l    $a1, str_face_dynlist_801B707C
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B7048
.L80188A98:
	b       .L80188AA0
	nop
.L80188AA0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

dGetWorldPosPtr:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(_face_dynlist_data+0x04)
	lw      $t6, %lo(_face_dynlist_data+0x04)($t6)
	nop
	bnez    $t6, .L80188ADC
	nop
	la.u    $a0, str_face_dynlist_801B708C
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B708C
.L80188ADC:
	lui     $t7, %hi(_face_dynlist_data+0x04)
	lw      $t7, %lo(_face_dynlist_data+0x04)($t7)
	li      $at, 0x0008
	lw      $s0, 0x000C($t7)
	nop
	beq     $s0, $at, .L80188B24
	nop
	li      $at, 0x0100
	beq     $s0, $at, .L80188B0C
	nop
	b       .L80188B3C
	nop
.L80188B0C:
	lui     $v0, %hi(_face_dynlist_data+0x04)
	lw      $v0, %lo(_face_dynlist_data+0x04)($v0)
	b       .L80188B6C
	addiu   $v0, $v0, 0x0020
	b       .L80188B64
	nop
.L80188B24:
	lui     $v0, %hi(_face_dynlist_data+0x04)
	lw      $v0, %lo(_face_dynlist_data+0x04)($v0)
	b       .L80188B6C
	addiu   $v0, $v0, 0x0020
	b       .L80188B64
	nop
.L80188B3C:
	lui     $t8, %hi(_face_dynlist_data+0x04)
	lw      $t8, %lo(_face_dynlist_data+0x04)($t8)
	lui     $a2, %hi(_face_bss+0x610)
	lw      $a2, %lo(_face_bss+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B70B0
	la.u    $a1, str_face_dynlist_801B70E4
	lw      $a3, 0x000C($t8)
	la.l    $a1, str_face_dynlist_801B70E4
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B70B0
.L80188B64:
	b       .L80188B6C
	nop
.L80188B6C:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

.globl dGetWorldPos
dGetWorldPos:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0024($sp)
	sw      $a0, 0x0030($sp)
	sw      $s0, 0x0020($sp)
	swc1    $f21, 0x0018($sp)
	swc1    $f20, 0x001C($sp)
	lui     $t6, %hi(_face_dynlist_data+0x04)
	lw      $t6, %lo(_face_dynlist_data+0x04)($t6)
	nop
	bnez    $t6, .L80188BB4
	nop
	la.u    $a0, str_face_dynlist_801B70F8
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B70F8
.L80188BB4:
	lui     $t7, %hi(_face_dynlist_data+0x04)
	lw      $t7, %lo(_face_dynlist_data+0x04)($t7)
	nop
	lw      $s0, 0x000C($t7)
	nop
	slti    $at, $s0, 0x0201
	bnez    $at, .L80188C0C
	nop
	li      $at, 0x2000
	beq     $s0, $at, .L80188ED4
	nop
	li      $at, 0x8000
	beq     $s0, $at, .L80188E9C
	nop
	li      $at, 0x00080000
	beq     $s0, $at, .L8018915C
	nop
	li      $at, 0x00100000
	beq     $s0, $at, .L80189040
	nop
	b       L801891AC
	nop
.L80188C0C:
	slti    $at, $s0, 0x0041
	bnez    $at, .L80188C38
	nop
	li      $at, 0x0100
	beq     $s0, $at, .L80188C84
	nop
	li      $at, 0x0200
	beq     $s0, $at, .L80188DC4
	nop
	b       L801891AC
	nop
.L80188C38:
	slti    $at, $s0, 0x0021
	bnez    $at, .L80188C58
	nop
	li      $at, 0x0040
	beq     $s0, $at, .L80188F24
	nop
	b       L801891AC
	nop
.L80188C58:
	addiu   $t8, $s0, -0x0002
	sltiu   $at, $t8, 0x001F
	beqz    $at, L801891AC
	nop
	sll     $t8, $t8, 2
	lui     $at, %hi(face_dynlist_801B8034)
	addu    $at, $at, $t8
	lw      $t8, %lo(face_dynlist_801B8034)($at)
	nop
	jr      $t8
	nop
.L80188C84:
	lui     $t9, %hi(_face_dynlist_data+0x04)
	lw      $t9, %lo(_face_dynlist_data+0x04)($t9)
	lw      $t0, 0x0030($sp)
	lwc1    $f4, 0x0020($t9)
	nop
	swc1    $f4, 0x0000($t0)
	lui     $t1, %hi(_face_dynlist_data+0x04)
	lw      $t1, %lo(_face_dynlist_data+0x04)($t1)
	lw      $t2, 0x0030($sp)
	lwc1    $f6, 0x0024($t1)
	nop
	swc1    $f6, 0x0004($t2)
	lui     $t3, %hi(_face_dynlist_data+0x04)
	lw      $t3, %lo(_face_dynlist_data+0x04)($t3)
	lw      $t4, 0x0030($sp)
	lwc1    $f8, 0x0028($t3)
	nop
	swc1    $f8, 0x0008($t4)
	b       .L801891D4
	nop
.globl L80188CD4
L80188CD4:
	lui     $t5, %hi(_face_dynlist_data+0x04)
	lw      $t5, %lo(_face_dynlist_data+0x04)($t5)
	lw      $t6, 0x0030($sp)
	lwc1    $f10, 0x0014($t5)
	nop
	swc1    $f10, 0x0000($t6)
	lui     $t7, %hi(_face_dynlist_data+0x04)
	lw      $t7, %lo(_face_dynlist_data+0x04)($t7)
	lw      $t8, 0x0030($sp)
	lwc1    $f16, 0x0018($t7)
	nop
	swc1    $f16, 0x0004($t8)
	lui     $t9, %hi(_face_dynlist_data+0x04)
	lw      $t9, %lo(_face_dynlist_data+0x04)($t9)
	lw      $t0, 0x0030($sp)
	lwc1    $f18, 0x001C($t9)
	nop
	swc1    $f18, 0x0008($t0)
	b       .L801891D4
	nop
.globl L80188D24
L80188D24:
	lui     $t1, %hi(_face_dynlist_data+0x04)
	lw      $t1, %lo(_face_dynlist_data+0x04)($t1)
	lw      $t2, 0x0030($sp)
	lwc1    $f4, 0x0014($t1)
	nop
	swc1    $f4, 0x0000($t2)
	lui     $t3, %hi(_face_dynlist_data+0x04)
	lw      $t3, %lo(_face_dynlist_data+0x04)($t3)
	lw      $t4, 0x0030($sp)
	lwc1    $f6, 0x0018($t3)
	nop
	swc1    $f6, 0x0004($t4)
	lui     $t5, %hi(_face_dynlist_data+0x04)
	lw      $t5, %lo(_face_dynlist_data+0x04)($t5)
	lw      $t6, 0x0030($sp)
	lwc1    $f8, 0x001C($t5)
	nop
	swc1    $f8, 0x0008($t6)
	b       .L801891D4
	nop
.globl L80188D74
L80188D74:
	lui     $t7, %hi(_face_dynlist_data+0x04)
	lw      $t7, %lo(_face_dynlist_data+0x04)($t7)
	lw      $t8, 0x0030($sp)
	lwc1    $f10, 0x0020($t7)
	nop
	swc1    $f10, 0x0000($t8)
	lui     $t9, %hi(_face_dynlist_data+0x04)
	lw      $t9, %lo(_face_dynlist_data+0x04)($t9)
	lw      $t0, 0x0030($sp)
	lwc1    $f16, 0x0024($t9)
	nop
	swc1    $f16, 0x0004($t0)
	lui     $t1, %hi(_face_dynlist_data+0x04)
	lw      $t1, %lo(_face_dynlist_data+0x04)($t1)
	lw      $t2, 0x0030($sp)
	lwc1    $f18, 0x0028($t1)
	nop
	swc1    $f18, 0x0008($t2)
	b       .L801891D4
	nop
.L80188DC4:
	lui     $t3, %hi(_face_dynlist_data+0x04)
	lw      $t3, %lo(_face_dynlist_data+0x04)($t3)
	lw      $t4, 0x0030($sp)
	lwc1    $f4, 0x0014($t3)
	nop
	swc1    $f4, 0x0000($t4)
	lui     $t5, %hi(_face_dynlist_data+0x04)
	lw      $t5, %lo(_face_dynlist_data+0x04)($t5)
	lw      $t6, 0x0030($sp)
	lwc1    $f6, 0x0018($t5)
	nop
	swc1    $f6, 0x0004($t6)
	lui     $t7, %hi(_face_dynlist_data+0x04)
	lw      $t7, %lo(_face_dynlist_data+0x04)($t7)
	lw      $t8, 0x0030($sp)
	lwc1    $f8, 0x001C($t7)
	nop
	swc1    $f8, 0x0008($t8)
	b       .L801891D4
	nop
.globl L80188E14
L80188E14:
	lui     $t9, %hi(_face_dynlist_data+0x04)
	lw      $t9, %lo(_face_dynlist_data+0x04)($t9)
	lw      $t0, 0x0030($sp)
	lwc1    $f10, 0x0014($t9)
	nop
	swc1    $f10, 0x0000($t0)
	lui     $t1, %hi(_face_dynlist_data+0x04)
	lw      $t1, %lo(_face_dynlist_data+0x04)($t1)
	lw      $t2, 0x0030($sp)
	lwc1    $f16, 0x0018($t1)
	nop
	swc1    $f16, 0x0004($t2)
	lui     $t3, %hi(_face_dynlist_data+0x04)
	lw      $t3, %lo(_face_dynlist_data+0x04)($t3)
	lw      $t4, 0x0030($sp)
	lwc1    $f18, 0x001C($t3)
	nop
	swc1    $f18, 0x0008($t4)
	b       .L801891D4
	nop
.globl L80188E64
L80188E64:
	mtc1    $0, $f4
	lw      $t5, 0x0030($sp)
	nop
	swc1    $f4, 0x0008($t5)
	lw      $t6, 0x0030($sp)
	nop
	lwc1    $f20, 0x0008($t6)
	nop
	swc1    $f20, 0x0004($t6)
	lw      $t7, 0x0030($sp)
	nop
	swc1    $f20, 0x0000($t7)
	b       .L801891D4
	nop
.L80188E9C:
	mtc1    $0, $f6
	lw      $t8, 0x0030($sp)
	nop
	swc1    $f6, 0x0008($t8)
	lw      $t9, 0x0030($sp)
	nop
	lwc1    $f20, 0x0008($t9)
	nop
	swc1    $f20, 0x0004($t9)
	lw      $t0, 0x0030($sp)
	nop
	swc1    $f20, 0x0000($t0)
	b       .L801891D4
	nop
.L80188ED4:
	lui     $t1, %hi(_face_dynlist_data+0x04)
	lw      $t1, %lo(_face_dynlist_data+0x04)($t1)
	lw      $t2, 0x0030($sp)
	lwc1    $f8, 0x0014($t1)
	nop
	swc1    $f8, 0x0000($t2)
	lui     $t3, %hi(_face_dynlist_data+0x04)
	lw      $t3, %lo(_face_dynlist_data+0x04)($t3)
	lw      $t4, 0x0030($sp)
	lwc1    $f10, 0x0018($t3)
	nop
	swc1    $f10, 0x0004($t4)
	lui     $t5, %hi(_face_dynlist_data+0x04)
	lw      $t5, %lo(_face_dynlist_data+0x04)($t5)
	lw      $t6, 0x0030($sp)
	lwc1    $f16, 0x001C($t5)
	nop
	swc1    $f16, 0x0008($t6)
	b       .L801891D4
	nop
.L80188F24:
	lui     $t7, %hi(_face_dynlist_data+0x04)
	lw      $t7, %lo(_face_dynlist_data+0x04)($t7)
	lw      $t8, 0x0030($sp)
	lwc1    $f18, 0x0028($t7)
	nop
	swc1    $f18, 0x0000($t8)
	lui     $t9, %hi(_face_dynlist_data+0x04)
	lw      $t9, %lo(_face_dynlist_data+0x04)($t9)
	lw      $t0, 0x0030($sp)
	lwc1    $f4, 0x002C($t9)
	nop
	swc1    $f4, 0x0004($t0)
	lui     $t1, %hi(_face_dynlist_data+0x04)
	lw      $t1, %lo(_face_dynlist_data+0x04)($t1)
	lw      $t2, 0x0030($sp)
	lwc1    $f6, 0x0030($t1)
	nop
	swc1    $f6, 0x0008($t2)
	lui     $t4, %hi(_face_dynlist_data+0x04)
	lw      $t4, %lo(_face_dynlist_data+0x04)($t4)
	lw      $t3, 0x0030($sp)
	lwc1    $f10, 0x0034($t4)
	lwc1    $f8, 0x0000($t3)
	nop
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x0000($t3)
	lui     $t6, %hi(_face_dynlist_data+0x04)
	lw      $t6, %lo(_face_dynlist_data+0x04)($t6)
	lw      $t5, 0x0030($sp)
	lwc1    $f4, 0x0038($t6)
	lwc1    $f18, 0x0004($t5)
	nop
	add.s   $f6, $f18, $f4
	swc1    $f6, 0x0004($t5)
	lui     $t8, %hi(_face_dynlist_data+0x04)
	lw      $t8, %lo(_face_dynlist_data+0x04)($t8)
	lw      $t7, 0x0030($sp)
	lwc1    $f10, 0x003C($t8)
	lwc1    $f8, 0x0008($t7)
	nop
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x0008($t7)
	lw      $t9, 0x0030($sp)
	li      $at, 0x3FE00000
	lwc1    $f18, 0x0000($t9)
	mtc1    $at, $f7
	mtc1    $0, $f6
	cvt.d.s $f4, $f18
	mul.d   $f8, $f4, $f6
	cvt.s.d $f10, $f8
	swc1    $f10, 0x0000($t9)
	lw      $t0, 0x0030($sp)
	li      $at, 0x3FE00000
	lwc1    $f16, 0x0004($t0)
	mtc1    $at, $f5
	mtc1    $0, $f4
	cvt.d.s $f18, $f16
	mul.d   $f6, $f18, $f4
	cvt.s.d $f8, $f6
	swc1    $f8, 0x0004($t0)
	lw      $t1, 0x0030($sp)
	li      $at, 0x3FE00000
	lwc1    $f10, 0x0008($t1)
	mtc1    $at, $f19
	mtc1    $0, $f18
	cvt.d.s $f16, $f10
	mul.d   $f4, $f16, $f18
	cvt.s.d $f6, $f4
	swc1    $f6, 0x0008($t1)
	b       .L801891D4
	nop
.L80189040:
	lui     $t2, %hi(_face_dynlist_data+0x04)
	lw      $t2, %lo(_face_dynlist_data+0x04)($t2)
	lw      $t4, 0x0030($sp)
	lwc1    $f8, 0x0014($t2)
	nop
	swc1    $f8, 0x0000($t4)
	lui     $t3, %hi(_face_dynlist_data+0x04)
	lw      $t3, %lo(_face_dynlist_data+0x04)($t3)
	lw      $t6, 0x0030($sp)
	lwc1    $f10, 0x0018($t3)
	nop
	swc1    $f10, 0x0004($t6)
	lui     $t5, %hi(_face_dynlist_data+0x04)
	lw      $t5, %lo(_face_dynlist_data+0x04)($t5)
	lw      $t8, 0x0030($sp)
	lwc1    $f16, 0x001C($t5)
	nop
	swc1    $f16, 0x0008($t8)
	lui     $t9, %hi(_face_dynlist_data+0x04)
	lw      $t9, %lo(_face_dynlist_data+0x04)($t9)
	lw      $t7, 0x0030($sp)
	lwc1    $f4, 0x0020($t9)
	lwc1    $f18, 0x0000($t7)
	nop
	add.s   $f6, $f18, $f4
	swc1    $f6, 0x0000($t7)
	lui     $t1, %hi(_face_dynlist_data+0x04)
	lw      $t1, %lo(_face_dynlist_data+0x04)($t1)
	lw      $t0, 0x0030($sp)
	lwc1    $f10, 0x0024($t1)
	lwc1    $f8, 0x0004($t0)
	nop
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x0004($t0)
	lui     $t4, %hi(_face_dynlist_data+0x04)
	lw      $t4, %lo(_face_dynlist_data+0x04)($t4)
	lw      $t2, 0x0030($sp)
	lwc1    $f4, 0x0028($t4)
	lwc1    $f18, 0x0008($t2)
	nop
	add.s   $f6, $f18, $f4
	swc1    $f6, 0x0008($t2)
	lw      $t3, 0x0030($sp)
	li      $at, 0x3FE00000
	lwc1    $f8, 0x0000($t3)
	mtc1    $at, $f17
	mtc1    $0, $f16
	cvt.d.s $f10, $f8
	mul.d   $f18, $f10, $f16
	cvt.s.d $f4, $f18
	swc1    $f4, 0x0000($t3)
	lw      $t6, 0x0030($sp)
	li      $at, 0x3FE00000
	lwc1    $f6, 0x0004($t6)
	mtc1    $at, $f11
	mtc1    $0, $f10
	cvt.d.s $f8, $f6
	mul.d   $f16, $f8, $f10
	cvt.s.d $f18, $f16
	swc1    $f18, 0x0004($t6)
	lw      $t5, 0x0030($sp)
	li      $at, 0x3FE00000
	lwc1    $f4, 0x0008($t5)
	mtc1    $at, $f9
	mtc1    $0, $f8
	cvt.d.s $f6, $f4
	mul.d   $f10, $f6, $f8
	cvt.s.d $f16, $f10
	swc1    $f16, 0x0008($t5)
	b       .L801891D4
	nop
.L8018915C:
	lui     $t8, %hi(_face_dynlist_data+0x04)
	lw      $t8, %lo(_face_dynlist_data+0x04)($t8)
	lw      $t9, 0x0030($sp)
	lwc1    $f18, 0x0074($t8)
	nop
	swc1    $f18, 0x0000($t9)
	lui     $t7, %hi(_face_dynlist_data+0x04)
	lw      $t7, %lo(_face_dynlist_data+0x04)($t7)
	lw      $t1, 0x0030($sp)
	lwc1    $f4, 0x0078($t7)
	nop
	swc1    $f4, 0x0004($t1)
	lui     $t0, %hi(_face_dynlist_data+0x04)
	lw      $t0, %lo(_face_dynlist_data+0x04)($t0)
	lw      $t4, 0x0030($sp)
	lwc1    $f6, 0x007C($t0)
	nop
	swc1    $f6, 0x0008($t4)
	b       .L801891D4
	nop
.globl L801891AC
L801891AC:
	lui     $t2, %hi(_face_dynlist_data+0x04)
	lw      $t2, %lo(_face_dynlist_data+0x04)($t2)
	lui     $a2, %hi(_face_bss+0x610)
	lw      $a2, %lo(_face_bss+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B711C
	la.u    $a1, str_face_dynlist_801B7150
	lw      $a3, 0x000C($t2)
	la.l    $a1, str_face_dynlist_801B7150
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B711C
.L801891D4:
	b       .L801891DC
	nop
.L801891DC:
	lw      $ra, 0x0024($sp)
	lwc1    $f21, 0x0018($sp)
	lwc1    $f20, 0x001C($sp)
	lw      $s0, 0x0020($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0030

face_dynlist_801891F4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	li      $a0, 0x0005
	jal     dMakeObj
	move    $a1, $0
	lw      $t6, 0x0018($sp)
	nop
	lwc1    $f12, 0x0000($t6)
	lwc1    $f14, 0x0004($t6)
	lw      $a2, 0x0008($t6)
	jal     dSetInitPos
	nop
	b       .L80189230
	nop
.L80189230:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl dSetScale
dSetScale:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a2, 0x0030($sp)
	swc1    $f12, 0x0028($sp)
	swc1    $f14, 0x002C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(_face_dynlist_data+0x04)
	lw      $t6, %lo(_face_dynlist_data+0x04)($t6)
	nop
	bnez    $t6, .L80189278
	nop
	la.u    $a0, str_face_dynlist_801B7160
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B7160
.L80189278:
	lui     $t7, %hi(_face_dynlist_data+0x04)
	lw      $t7, %lo(_face_dynlist_data+0x04)($t7)
	nop
	sw      $t7, 0x0024($sp)
	jal     face_dynlist_80183A50
	nop
	lui     $t8, %hi(_face_dynlist_data+0x04)
	lw      $t8, %lo(_face_dynlist_data+0x04)($t8)
	li      $at, 0x0004
	lw      $s0, 0x000C($t8)
	nop
	beq     $s0, $at, .L801892F0
	nop
	li      $at, 0x0008
	beq     $s0, $at, .L80189398
	nop
	li      $at, 0x0020
	beq     $s0, $at, .L80189328
	nop
	li      $at, 0x2000
	beq     $s0, $at, .L801893A0
	nop
	li      $at, 0x4000
	beq     $s0, $at, .L80189360
	nop
	li      $at, 0x00080000
	beq     $s0, $at, .L8018940C
	nop
	b       .L80189414
	nop
.L801892F0:
	lwc1    $f4, 0x0028($sp)
	lw      $t9, 0x0024($sp)
	nop
	swc1    $f4, 0x009C($t9)
	lwc1    $f6, 0x002C($sp)
	lw      $t0, 0x0024($sp)
	nop
	swc1    $f6, 0x00A0($t0)
	lwc1    $f8, 0x0030($sp)
	lw      $t1, 0x0024($sp)
	nop
	swc1    $f8, 0x00A4($t1)
	b       .L8018943C
	nop
.L80189328:
	lwc1    $f10, 0x0028($sp)
	lw      $t2, 0x0024($sp)
	nop
	swc1    $f10, 0x01AC($t2)
	lwc1    $f16, 0x002C($sp)
	lw      $t3, 0x0024($sp)
	nop
	swc1    $f16, 0x01B0($t3)
	lwc1    $f18, 0x0030($sp)
	lw      $t4, 0x0024($sp)
	nop
	swc1    $f18, 0x01B4($t4)
	b       .L8018943C
	nop
.L80189360:
	lwc1    $f4, 0x0028($sp)
	lw      $t5, 0x0024($sp)
	nop
	swc1    $f4, 0x0054($t5)
	lwc1    $f6, 0x002C($sp)
	lw      $t6, 0x0024($sp)
	nop
	swc1    $f6, 0x0058($t6)
	lwc1    $f8, 0x0030($sp)
	lw      $t7, 0x0024($sp)
	nop
	swc1    $f8, 0x005C($t7)
	b       .L8018943C
	nop
.L80189398:
	b       .L8018943C
	nop
.L801893A0:
	lw      $t8, 0x0024($sp)
	nop
	lw      $t9, 0x0050($t8)
	nop
	beqz    $t9, .L801893D4
	nop
	lw      $t0, 0x0024($sp)
	lw      $a1, 0x0028($sp)
	lw      $a2, 0x002C($sp)
	lw      $a3, 0x0030($sp)
	lw      $a0, 0x0050($t0)
	jal     face_shape_8019848C
	nop
.L801893D4:
	lwc1    $f10, 0x0028($sp)
	lw      $t1, 0x0024($sp)
	nop
	swc1    $f10, 0x0040($t1)
	lwc1    $f16, 0x002C($sp)
	lw      $t2, 0x0024($sp)
	nop
	swc1    $f16, 0x0044($t2)
	lwc1    $f18, 0x0030($sp)
	lw      $t3, 0x0024($sp)
	nop
	swc1    $f18, 0x0048($t3)
	b       .L8018943C
	nop
.L8018940C:
	b       .L8018943C
	nop
.L80189414:
	lui     $t4, %hi(_face_dynlist_data+0x04)
	lw      $t4, %lo(_face_dynlist_data+0x04)($t4)
	lui     $a2, %hi(_face_bss+0x610)
	lw      $a2, %lo(_face_bss+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B7184
	la.u    $a1, str_face_dynlist_801B71B8
	lw      $a3, 0x000C($t4)
	la.l    $a1, str_face_dynlist_801B71B8
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B7184
.L8018943C:
	jal     face_dynlist_80183A80
	nop
	b       .L8018944C
	nop
.L8018944C:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

dSetRotation:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a2, 0x0038($sp)
	swc1    $f12, 0x0030($sp)
	swc1    $f14, 0x0034($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(_face_dynlist_data+0x04)
	lw      $t6, %lo(_face_dynlist_data+0x04)($t6)
	nop
	bnez    $t6, .L80189494
	nop
	la.u    $a0, str_face_dynlist_801B71C4
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B71C4
.L80189494:
	lui     $t7, %hi(_face_dynlist_data+0x04)
	lw      $t7, %lo(_face_dynlist_data+0x04)($t7)
	nop
	sw      $t7, 0x002C($sp)
	lui     $t8, %hi(_face_dynlist_data+0x04)
	lw      $t8, %lo(_face_dynlist_data+0x04)($t8)
	li      $at, 0x0004
	lw      $s0, 0x000C($t8)
	nop
	beq     $s0, $at, .L801894D4
	nop
	li      $at, 0x0020
	beq     $s0, $at, .L8018950C
	nop
	b       .L80189544
	nop
.L801894D4:
	lwc1    $f4, 0x0030($sp)
	lw      $t9, 0x002C($sp)
	nop
	swc1    $f4, 0x006C($t9)
	lwc1    $f6, 0x0034($sp)
	lw      $t0, 0x002C($sp)
	nop
	swc1    $f6, 0x0070($t0)
	lwc1    $f8, 0x0038($sp)
	lw      $t1, 0x002C($sp)
	nop
	swc1    $f8, 0x0074($t1)
	b       .L8018956C
	nop
.L8018950C:
	lwc1    $f10, 0x0030($sp)
	lw      $t2, 0x002C($sp)
	nop
	swc1    $f10, 0x0068($t2)
	lwc1    $f16, 0x0034($sp)
	lw      $t3, 0x002C($sp)
	nop
	swc1    $f16, 0x006C($t3)
	lwc1    $f18, 0x0038($sp)
	lw      $t4, 0x002C($sp)
	nop
	swc1    $f18, 0x0070($t4)
	b       .L8018956C
	nop
.L80189544:
	lui     $t5, %hi(_face_dynlist_data+0x04)
	lw      $t5, %lo(_face_dynlist_data+0x04)($t5)
	lui     $a2, %hi(_face_bss+0x610)
	lw      $a2, %lo(_face_bss+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B71E8
	la.u    $a1, str_face_dynlist_801B721C
	lw      $a3, 0x000C($t5)
	la.l    $a1, str_face_dynlist_801B721C
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B71E8
.L8018956C:
	b       .L80189574
	nop
.L80189574:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0030

dCofG:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a2, 0x0020($sp)
	swc1    $f12, 0x0018($sp)
	swc1    $f14, 0x001C($sp)
	lui     $t6, %hi(_face_dynlist_data+0x04)
	lw      $t6, %lo(_face_dynlist_data+0x04)($t6)
	nop
	bnez    $t6, .L801895B8
	nop
	la.u    $a0, str_face_dynlist_801B722C
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B722C
.L801895B8:
	lui     $t7, %hi(_face_dynlist_data+0x04)
	lw      $t7, %lo(_face_dynlist_data+0x04)($t7)
	li      $at, 0x0020
	lw      $t8, 0x000C($t7)
	nop
	bne     $t8, $at, .L80189620
	nop
	b       .L801895DC
	nop
.L801895DC:
	lui     $t9, %hi(_face_dynlist_data+0x04)
	lw      $t9, %lo(_face_dynlist_data+0x04)($t9)
	lwc1    $f4, 0x0018($sp)
	nop
	swc1    $f4, 0x00B0($t9)
	lui     $t0, %hi(_face_dynlist_data+0x04)
	lw      $t0, %lo(_face_dynlist_data+0x04)($t0)
	lwc1    $f6, 0x001C($sp)
	nop
	swc1    $f6, 0x00B4($t0)
	lui     $t1, %hi(_face_dynlist_data+0x04)
	lw      $t1, %lo(_face_dynlist_data+0x04)($t1)
	lwc1    $f8, 0x0020($sp)
	nop
	swc1    $f8, 0x00B8($t1)
	b       .L80189648
	nop
.L80189620:
	lui     $t2, %hi(_face_dynlist_data+0x04)
	lw      $t2, %lo(_face_dynlist_data+0x04)($t2)
	lui     $a2, %hi(_face_bss+0x610)
	lw      $a2, %lo(_face_bss+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B7250
	la.u    $a1, str_face_dynlist_801B7284
	lw      $a3, 0x000C($t2)
	la.l    $a1, str_face_dynlist_801B7284
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B7250
.L80189648:
	b       .L80189650
	nop
.L80189650:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

dShapeOffset:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a2, 0x0020($sp)
	swc1    $f12, 0x0018($sp)
	swc1    $f14, 0x001C($sp)
	lui     $t6, %hi(_face_dynlist_data+0x04)
	lw      $t6, %lo(_face_dynlist_data+0x04)($t6)
	nop
	bnez    $t6, .L80189694
	nop
	la.u    $a0, str_face_dynlist_801B728C
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B728C
.L80189694:
	lui     $t7, %hi(_face_dynlist_data+0x04)
	lw      $t7, %lo(_face_dynlist_data+0x04)($t7)
	li      $at, 0x0004
	lw      $t8, 0x000C($t7)
	nop
	bne     $t8, $at, .L801896FC
	nop
	b       .L801896B8
	nop
.L801896B8:
	lui     $t9, %hi(_face_dynlist_data+0x04)
	lw      $t9, %lo(_face_dynlist_data+0x04)($t9)
	lwc1    $f4, 0x0018($sp)
	nop
	swc1    $f4, 0x00C0($t9)
	lui     $t0, %hi(_face_dynlist_data+0x04)
	lw      $t0, %lo(_face_dynlist_data+0x04)($t0)
	lwc1    $f6, 0x001C($sp)
	nop
	swc1    $f6, 0x00C4($t0)
	lui     $t1, %hi(_face_dynlist_data+0x04)
	lw      $t1, %lo(_face_dynlist_data+0x04)($t1)
	lwc1    $f8, 0x0020($sp)
	nop
	swc1    $f8, 0x00C8($t1)
	b       .L80189724
	nop
.L801896FC:
	lui     $t2, %hi(_face_dynlist_data+0x04)
	lw      $t2, %lo(_face_dynlist_data+0x04)($t2)
	lui     $a2, %hi(_face_bss+0x610)
	lw      $a2, %lo(_face_bss+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B72B0
	la.u    $a1, str_face_dynlist_801B72E4
	lw      $a3, 0x000C($t2)
	la.l    $a1, str_face_dynlist_801B72E4
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B72B0
.L80189724:
	b       .L8018972C
	nop
.L8018972C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl dAddValPtr
dAddValPtr:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $a2, 0x0038($sp)
	sw      $a3, 0x003C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(_face_dynlist_data+0x04)
	lw      $t6, %lo(_face_dynlist_data+0x04)($t6)
	nop
	bnez    $t6, .L80189778
	nop
	la.u    $a0, str_face_dynlist_801B72F4
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B72F4
.L80189778:
	lui     $t7, %hi(_face_dynlist_data+0x04)
	lw      $t7, %lo(_face_dynlist_data+0x04)($t7)
	nop
	sw      $t7, 0x002C($sp)
	lw      $t8, 0x0034($sp)
	li      $at, 0x00040000
	bne     $t8, $at, .L801897EC
	nop
	lw      $a0, 0x0030($sp)
	jal     face_dynlist_80184510
	nop
	sw      $v0, 0x0024($sp)
	lw      $t9, 0x0024($sp)
	nop
	bnez    $t9, .L801897C8
	nop
	la.u    $a0, str_face_dynlist_801B7318
	lw      $a1, 0x0030($sp)
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B7318
.L801897C8:
	lw      $t0, 0x0024($sp)
	lw      $a1, 0x0034($sp)
	lw      $a2, 0x0038($sp)
	lw      $a3, 0x003C($sp)
	lw      $a0, 0x0008($t0)
	jal     face_object_8017CAC4
	nop
	b       .L80189808
	sw      $v0, 0x0028($sp)
.L801897EC:
	lw      $a0, 0x0030($sp)
	lw      $a1, 0x0034($sp)
	lw      $a2, 0x0038($sp)
	lw      $a3, 0x003C($sp)
	jal     face_object_8017CAC4
	nop
	sw      $v0, 0x0028($sp)
.L80189808:
	lui     $t1, %hi(_face_dynlist_data+0x04)
	lw      $t1, %lo(_face_dynlist_data+0x04)($t1)
	li      $at, 0x2000
	lw      $s0, 0x000C($t1)
	nop
	beq     $s0, $at, .L80189838
	nop
	li      $at, 0x8000
	beq     $s0, $at, .L80189880
	nop
	b       .L80189898
	nop
.L80189838:
	lw      $t2, 0x002C($sp)
	nop
	lw      $t3, 0x004C($t2)
	nop
	bnez    $t3, .L80189864
	nop
	jal     make_group
	move    $a0, $0
	lw      $t4, 0x002C($sp)
	nop
	sw      $v0, 0x004C($t4)
.L80189864:
	lw      $t5, 0x002C($sp)
	lw      $a1, 0x0028($sp)
	lw      $a0, 0x004C($t5)
	jal     addto_group
	nop
	b       .L801898C0
	nop
.L80189880:
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x002C($sp)
	nop
	sw      $t6, 0x0028($t7)
	b       .L801898C0
	nop
.L80189898:
	lui     $t8, %hi(_face_dynlist_data+0x04)
	lw      $t8, %lo(_face_dynlist_data+0x04)($t8)
	lui     $a2, %hi(_face_bss+0x610)
	lw      $a2, %lo(_face_bss+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B733C
	la.u    $a1, str_face_dynlist_801B7370
	lw      $a3, 0x000C($t8)
	la.l    $a1, str_face_dynlist_801B7370
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B733C
.L801898C0:
	b       .L801898C8
	nop
.L801898C8:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0030

.globl dAddValProc
dAddValProc:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lui     $t6, %hi(_face_dynlist_data+0x04)
	lw      $t6, %lo(_face_dynlist_data+0x04)($t6)
	nop
	bnez    $t6, .L80189904
	nop
	la.u    $a0, str_face_dynlist_801B7380
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B7380
.L80189904:
	lui     $t7, %hi(_face_dynlist_data+0x04)
	lw      $t7, %lo(_face_dynlist_data+0x04)($t7)
	nop
	sw      $t7, 0x001C($sp)
	lui     $t8, %hi(_face_dynlist_data+0x04)
	lw      $t8, %lo(_face_dynlist_data+0x04)($t8)
	li      $at, 0x8000
	lw      $t9, 0x000C($t8)
	nop
	bne     $t9, $at, .L80189950
	nop
	b       .L80189938
	nop
.L80189938:
	lw      $t0, 0x0020($sp)
	lw      $t1, 0x001C($sp)
	nop
	sw      $t0, 0x002C($t1)
	b       .L80189978
	nop
.L80189950:
	lui     $t2, %hi(_face_dynlist_data+0x04)
	lw      $t2, %lo(_face_dynlist_data+0x04)($t2)
	lui     $a2, %hi(_face_bss+0x610)
	lw      $a2, %lo(_face_bss+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B73A4
	la.u    $a1, str_face_dynlist_801B73D8
	lw      $a3, 0x000C($t2)
	la.l    $a1, str_face_dynlist_801B73D8
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B73A4
.L80189978:
	b       .L80189980
	nop
.L80189980:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

dLinkWithPtr:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x0024($sp)
	sw      $a0, 0x0038($sp)
	sw      $s0, 0x0020($sp)
	lui     $t6, %hi(_face_dynlist_data+0x04)
	lw      $t6, %lo(_face_dynlist_data+0x04)($t6)
	nop
	bnez    $t6, .L801899C0
	nop
	la.u    $a0, str_face_dynlist_801B73E8
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B73E8
.L801899C0:
	lui     $t7, %hi(_face_dynlist_data+0x04)
	lw      $t7, %lo(_face_dynlist_data+0x04)($t7)
	nop
	sw      $t7, 0x0034($sp)
	la.u    $a0, str_face_dynlist_801B740C
	jal     face_stdio_8018D560
	la.l    $a0, str_face_dynlist_801B740C
	lui     $t8, %hi(_face_dynlist_data+0x04)
	lw      $t8, %lo(_face_dynlist_data+0x04)($t8)
	li      $at, 0x0001
	lw      $s0, 0x000C($t8)
	nop
	beq     $s0, $at, .L80189A60
	nop
	li      $at, 0x0002
	beq     $s0, $at, .L80189A88
	nop
	li      $at, 0x0080
	beq     $s0, $at, .L80189B88
	nop
	li      $at, 0x0200
	beq     $s0, $at, .L80189A48
	nop
	li      $at, 0x4000
	beq     $s0, $at, .L80189AA0
	nop
	li      $at, 0x8000
	beq     $s0, $at, .L80189C5C
	nop
	li      $at, 0x00010000
	beq     $s0, $at, .L80189C14
	nop
	b       .L80189C90
	nop
.L80189A48:
	lw      $t9, 0x0038($sp)
	lw      $t0, 0x0034($sp)
	nop
	sw      $t9, 0x0030($t0)
	b       .L80189CB8
	nop
.L80189A60:
	lw      $a1, 0x0038($sp)
	jal     face_object_8017C940
	move    $a0, $0
	sw      $v0, 0x002C($sp)
	lw      $t1, 0x002C($sp)
	lw      $t2, 0x0034($sp)
	nop
	sw      $t1, 0x001C($t2)
	b       .L80189CB8
	nop
.L80189A88:
	lw      $a0, 0x0034($sp)
	lw      $a1, 0x0038($sp)
	jal     add_joint2bone
	nop
	b       .L80189CB8
	nop
.L80189AA0:
	lw      $t3, 0x0038($sp)
	lw      $t4, 0x0034($sp)
	nop
	sw      $t3, 0x0028($t4)
	cfc1    $t6, $31
	lw      $t5, 0x0034($sp)
	ori     $at, $t6, 0x0003
	xori    $at, $at, 0x0002
	ctc1    $at, $31
	lwc1    $f4, 0x003C($t5)
	lwc1    $f8, 0x0040($t5)
	cvt.w.s $f6, $f4
	lwc1    $f16, 0x0054($t5)
	ctc1    $t6, $31
	lw      $a0, 0x006C($t5)
	mfc1    $a2, $f6
	cfc1    $t7, $31
	move    $a1, $t5
	ori     $at, $t7, 0x0003
	xori    $at, $at, 0x0002
	ctc1    $at, $31
	nop
	cvt.w.s $f10, $f8
	ctc1    $t7, $31
	mfc1    $a3, $f10
	nop
	cfc1    $t8, $31
	nop
	ori     $at, $t8, 0x0003
	xori    $at, $at, 0x0002
	ctc1    $at, $31
	nop
	cvt.w.s $f18, $f16
	ctc1    $t8, $31
	mfc1    $t9, $f18
	nop
	cfc1    $t0, $31
	sw      $t9, 0x0010($sp)
	ori     $at, $t0, 0x0003
	xori    $at, $at, 0x0002
	ctc1    $at, $31
	lwc1    $f4, 0x0058($t5)
	nop
	cvt.w.s $f6, $f4
	mfc1    $t1, $f6
	ctc1    $t0, $31
	jal     face_gfx_801A3F9C
	sw      $t1, 0x0014($sp)
	lw      $t2, 0x0034($sp)
	nop
	sw      $v0, 0x001C($t2)
	lw      $t3, 0x0034($sp)
	nop
	lw      $a0, 0x0028($t3)
	jal     face_object_80181634
	nop
	b       .L80189CB8
	nop
.L80189B88:
	lw      $t4, 0x0034($sp)
	nop
	lw      $t6, 0x0030($t4)
	nop
	slti    $at, $t6, 0x0004
	bnez    $at, .L80189BB0
	nop
	la.u    $a0, str_face_dynlist_801B741C
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B741C
.L80189BB0:
	lw      $t8, 0x0034($sp)
	lw      $t7, 0x0038($sp)
	lw      $t9, 0x0030($t8)
	nop
	sll     $t5, $t9, 2
	addu    $t0, $t8, $t5
	sw      $t7, 0x0034($t0)
	lw      $t1, 0x0034($sp)
	nop
	lw      $t2, 0x0030($t1)
	nop
	addiu   $t3, $t2, 0x0001
	sw      $t3, 0x0030($t1)
	lw      $t4, 0x0034($sp)
	nop
	lw      $t6, 0x0030($t4)
	nop
	slti    $at, $t6, 0x0003
	bnez    $at, .L80189C0C
	nop
	lw      $a0, 0x0034($sp)
	jal     calc_facenormal
	nop
.L80189C0C:
	b       .L80189CB8
	nop
.L80189C14:
	lw      $t9, 0x0034($sp)
	nop
	lw      $t8, 0x0014($t9)
	nop
	bnez    $t8, .L80189C40
	nop
	jal     make_group
	move    $a0, $0
	lw      $t5, 0x0034($sp)
	nop
	sw      $v0, 0x0014($t5)
.L80189C40:
	lw      $t7, 0x0034($sp)
	lw      $a1, 0x0038($sp)
	lw      $a0, 0x0014($t7)
	jal     addto_group
	nop
	b       .L80189CB8
	nop
.L80189C5C:
	lw      $a0, 0x0038($sp)
	li.u    $a1, 0x00FFFFFF
	li.l    $a1, 0x00FFFFFF
	move    $a2, $0
	jal     face_object_8017CAC4
	move    $a3, $0
	sw      $v0, 0x0030($sp)
	lw      $t0, 0x0030($sp)
	lw      $t2, 0x0034($sp)
	nop
	sw      $t0, 0x0028($t2)
	b       .L80189CB8
	nop
.L80189C90:
	lui     $t3, %hi(_face_dynlist_data+0x04)
	lw      $t3, %lo(_face_dynlist_data+0x04)($t3)
	lui     $a2, %hi(_face_bss+0x610)
	lw      $a2, %lo(_face_bss+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B742C
	la.u    $a1, str_face_dynlist_801B7460
	lw      $a3, 0x000C($t3)
	la.l    $a1, str_face_dynlist_801B7460
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B742C
.L80189CB8:
	jal     imout
	nop
	b       .L80189CC8
	nop
.L80189CC8:
	lw      $ra, 0x0024($sp)
	lw      $s0, 0x0020($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0038

dLinkWith:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lui     $t6, %hi(_face_bss+0x610)
	lw      $t6, %lo(_face_bss+0x610)($t6)
	nop
	sw      $t6, 0x0018($sp)
	lui     $t7, %hi(_face_dynlist_data+0x04)
	lw      $t7, %lo(_face_dynlist_data+0x04)($t7)
	nop
	bnez    $t7, .L80189D14
	nop
	la.u    $a0, str_face_dynlist_801B7470
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B7470
.L80189D14:
	lw      $t8, 0x0020($sp)
	nop
	bnez    $t8, .L80189D2C
	nop
	b       .L80189D98
	nop
.L80189D2C:
	lw      $a0, 0x0020($sp)
	jal     face_dynlist_80184510
	nop
	sw      $v0, 0x001C($sp)
	lw      $t9, 0x001C($sp)
	nop
	bnez    $t9, .L80189D5C
	nop
	la.u    $a0, str_face_dynlist_801B7494
	lw      $a1, 0x0020($sp)
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B7494
.L80189D5C:
	lw      $t0, 0x001C($sp)
	nop
	lw      $a0, 0x0008($t0)
	jal     dLinkWithPtr
	nop
	lw      $t1, 0x0018($sp)
	nop
	lw      $a0, 0x0008($t1)
	jal     face_dynlist_80186C84
	nop
	lw      $t2, 0x0018($sp)
	lui     $at, %hi(_face_bss+0x610)
	sw      $t2, %lo(_face_bss+0x610)($at)
	b       .L80189D98
	nop
.L80189D98:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl dSetFlags
dSetFlags:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(_face_dynlist_data+0x04)
	lw      $t6, %lo(_face_dynlist_data+0x04)($t6)
	nop
	bnez    $t6, .L80189DD8
	nop
	la.u    $a0, str_face_dynlist_801B74B8
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B74B8
.L80189DD8:
	lui     $t7, %hi(_face_dynlist_data+0x04)
	lw      $t7, %lo(_face_dynlist_data+0x04)($t7)
	nop
	sw      $t7, 0x0024($sp)
	lui     $t8, %hi(_face_dynlist_data+0x04)
	lw      $t8, %lo(_face_dynlist_data+0x04)($t8)
	nop
	lw      $s0, 0x000C($t8)
	nop
	slti    $at, $s0, 0x0201
	bnez    $at, .L80189E28
	nop
	li      $at, 0x4000
	beq     $s0, $at, .L80189EF4
	nop
	li      $at, 0x00080000
	beq     $s0, $at, .L80189F54
	nop
	b       L80189F74
	nop
.L80189E28:
	slti    $at, $s0, 0x0021
	bnez    $at, .L80189E48
	nop
	li      $at, 0x0200
	beq     $s0, $at, .L80189ED4
	nop
	b       L80189F74
	nop
.L80189E48:
	addiu   $t9, $s0, -0x0002
	sltiu   $at, $t9, 0x001F
	beqz    $at, L80189F74
	nop
	sll     $t9, $t9, 2
	lui     $at, %hi(face_dynlist_801B80B0)
	addu    $at, $at, $t9
	lw      $t9, %lo(face_dynlist_801B80B0)($at)
	nop
	jr      $t9
	nop
.globl L80189E74
L80189E74:
	lw      $t0, 0x0024($sp)
	lw      $t2, 0x0028($sp)
	lw      $t1, 0x01BC($t0)
	nop
	or      $t3, $t1, $t2
	sw      $t3, 0x01BC($t0)
	b       .L80189F9C
	nop
.globl L80189E94
L80189E94:
	lw      $t4, 0x0024($sp)
	lw      $t6, 0x0028($sp)
	lw      $t5, 0x0104($t4)
	nop
	or      $t7, $t5, $t6
	sw      $t7, 0x0104($t4)
	b       .L80189F9C
	nop
.globl L80189EB4
L80189EB4:
	lw      $t8, 0x0024($sp)
	lw      $t1, 0x0028($sp)
	lw      $t9, 0x0034($t8)
	nop
	or      $t2, $t9, $t1
	sw      $t2, 0x0034($t8)
	b       .L80189F9C
	nop
.L80189ED4:
	lw      $t3, 0x0024($sp)
	lw      $t5, 0x0028($sp)
	lw      $t0, 0x002C($t3)
	nop
	or      $t6, $t0, $t5
	sw      $t6, 0x002C($t3)
	b       .L80189F9C
	nop
.L80189EF4:
	lw      $t7, 0x0024($sp)
	lw      $t9, 0x0028($sp)
	lw      $t4, 0x0034($t7)
	nop
	or      $t1, $t4, $t9
	sw      $t1, 0x0034($t7)
	b       .L80189F9C
	nop
.globl L80189F14
L80189F14:
	lw      $t2, 0x0024($sp)
	lw      $t0, 0x0028($sp)
	lw      $t8, 0x0044($t2)
	nop
	or      $t5, $t8, $t0
	sw      $t5, 0x0044($t2)
	b       .L80189F9C
	nop
.globl L80189F34
L80189F34:
	lw      $t6, 0x0024($sp)
	lw      $t4, 0x0028($sp)
	lw      $t3, 0x0054($t6)
	nop
	or      $t9, $t3, $t4
	sw      $t9, 0x0054($t6)
	b       .L80189F9C
	nop
.L80189F54:
	lw      $t1, 0x0024($sp)
	lw      $t8, 0x0028($sp)
	lw      $t7, 0x002C($t1)
	nop
	or      $t0, $t7, $t8
	sw      $t0, 0x002C($t1)
	b       .L80189F9C
	nop
.globl L80189F74
L80189F74:
	lui     $t5, %hi(_face_dynlist_data+0x04)
	lw      $t5, %lo(_face_dynlist_data+0x04)($t5)
	lui     $a2, %hi(_face_bss+0x610)
	lw      $a2, %lo(_face_bss+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B74DC
	la.u    $a1, str_face_dynlist_801B7510
	lw      $a3, 0x000C($t5)
	la.l    $a1, str_face_dynlist_801B7510
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B74DC
.L80189F9C:
	b       .L80189FA4
	nop
.L80189FA4:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

dClrFlags:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(_face_dynlist_data+0x04)
	lw      $t6, %lo(_face_dynlist_data+0x04)($t6)
	nop
	bnez    $t6, .L80189FE4
	nop
	la.u    $a0, str_face_dynlist_801B751C
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B751C
.L80189FE4:
	lui     $t7, %hi(_face_dynlist_data+0x04)
	lw      $t7, %lo(_face_dynlist_data+0x04)($t7)
	li      $at, 0x0002
	lw      $s0, 0x000C($t7)
	nop
	beq     $s0, $at, .L8018A05C
	nop
	li      $at, 0x0004
	beq     $s0, $at, .L8018A038
	nop
	li      $at, 0x0008
	beq     $s0, $at, .L8018A0C8
	nop
	li      $at, 0x0020
	beq     $s0, $at, .L8018A080
	nop
	li      $at, 0x0200
	beq     $s0, $at, .L8018A0A4
	nop
	b       .L8018A0EC
	nop
.L8018A038:
	lui     $t8, %hi(_face_dynlist_data+0x04)
	lw      $t8, %lo(_face_dynlist_data+0x04)($t8)
	lw      $t0, 0x0028($sp)
	lw      $t9, 0x01BC($t8)
	nor     $t1, $t0, $0
	and     $t2, $t9, $t1
	sw      $t2, 0x01BC($t8)
	b       .L8018A114
	nop
.L8018A05C:
	lui     $t3, %hi(_face_dynlist_data+0x04)
	lw      $t3, %lo(_face_dynlist_data+0x04)($t3)
	lw      $t5, 0x0028($sp)
	lw      $t4, 0x0104($t3)
	nor     $t6, $t5, $0
	and     $t7, $t4, $t6
	sw      $t7, 0x0104($t3)
	b       .L8018A114
	nop
.L8018A080:
	lui     $t0, %hi(_face_dynlist_data+0x04)
	lw      $t0, %lo(_face_dynlist_data+0x04)($t0)
	lw      $t1, 0x0028($sp)
	lw      $t9, 0x0034($t0)
	nor     $t2, $t1, $0
	and     $t8, $t9, $t2
	sw      $t8, 0x0034($t0)
	b       .L8018A114
	nop
.L8018A0A4:
	lui     $t5, %hi(_face_dynlist_data+0x04)
	lw      $t5, %lo(_face_dynlist_data+0x04)($t5)
	lw      $t6, 0x0028($sp)
	lw      $t4, 0x002C($t5)
	nor     $t7, $t6, $0
	and     $t3, $t4, $t7
	sw      $t3, 0x002C($t5)
	b       .L8018A114
	nop
.L8018A0C8:
	lui     $t1, %hi(_face_dynlist_data+0x04)
	lw      $t1, %lo(_face_dynlist_data+0x04)($t1)
	lw      $t2, 0x0028($sp)
	lw      $t9, 0x0054($t1)
	nor     $t8, $t2, $0
	and     $t0, $t9, $t8
	sw      $t0, 0x0054($t1)
	b       .L8018A114
	nop
.L8018A0EC:
	lui     $t6, %hi(_face_dynlist_data+0x04)
	lw      $t6, %lo(_face_dynlist_data+0x04)($t6)
	lui     $a2, %hi(_face_bss+0x610)
	lw      $a2, %lo(_face_bss+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B7540
	la.u    $a1, str_face_dynlist_801B7574
	lw      $a3, 0x000C($t6)
	la.l    $a1, str_face_dynlist_801B7574
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B7540
.L8018A114:
	b       .L8018A11C
	nop
.L8018A11C:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

.globl dSetParmf
dSetParmf:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(_face_dynlist_data+0x04)
	lw      $t6, %lo(_face_dynlist_data+0x04)($t6)
	nop
	bnez    $t6, .L8018A160
	nop
	la.u    $a0, str_face_dynlist_801B7580
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B7580
.L8018A160:
	lui     $t7, %hi(_face_dynlist_data+0x04)
	lw      $t7, %lo(_face_dynlist_data+0x04)($t7)
	li      $at, 0x0010
	lw      $s0, 0x000C($t7)
	nop
	beq     $s0, $at, .L8018A19C
	nop
	li      $at, 0x0100
	beq     $s0, $at, .L8018A2B4
	nop
	li      $at, 0x2000
	beq     $s0, $at, .L8018A200
	nop
	b       .L8018A318
	nop
.L8018A19C:
	lw      $t8, 0x0028($sp)
	li      $at, 0x0001
	bne     $t8, $at, .L8018A1D0
	nop
	b       .L8018A1B4
	nop
.L8018A1B4:
	lui     $t9, %hi(_face_dynlist_data+0x04)
	lw      $t9, %lo(_face_dynlist_data+0x04)($t9)
	lwc1    $f4, 0x002C($sp)
	nop
	swc1    $f4, 0x0058($t9)
	b       .L8018A1F8
	nop
.L8018A1D0:
	lui     $t0, %hi(_face_dynlist_data+0x04)
	lw      $t0, %lo(_face_dynlist_data+0x04)($t0)
	lui     $a2, %hi(_face_bss+0x610)
	lw      $a2, %lo(_face_bss+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B75A4
	la.u    $a1, str_face_dynlist_801B75D8
	lw      $a3, 0x000C($t0)
	la.l    $a1, str_face_dynlist_801B75D8
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B75A4
.L8018A1F8:
	b       .L8018A340
	nop
.L8018A200:
	lw      $s0, 0x0028($sp)
	li      $at, 0x0002
	beq     $s0, $at, .L8018A230
	nop
	li      $at, 0x0003
	beq     $s0, $at, .L8018A24C
	nop
	li      $at, 0x0006
	beq     $s0, $at, .L8018A268
	nop
	b       .L8018A284
	nop
.L8018A230:
	lui     $t1, %hi(_face_dynlist_data+0x04)
	lw      $t1, %lo(_face_dynlist_data+0x04)($t1)
	lwc1    $f6, 0x002C($sp)
	nop
	swc1    $f6, 0x0038($t1)
	b       .L8018A2AC
	nop
.L8018A24C:
	lui     $t2, %hi(_face_dynlist_data+0x04)
	lw      $t2, %lo(_face_dynlist_data+0x04)($t2)
	lwc1    $f8, 0x002C($sp)
	nop
	swc1    $f8, 0x003C($t2)
	b       .L8018A2AC
	nop
.L8018A268:
	lui     $t3, %hi(_face_dynlist_data+0x04)
	lw      $t3, %lo(_face_dynlist_data+0x04)($t3)
	lwc1    $f10, 0x002C($sp)
	nop
	swc1    $f10, 0x0030($t3)
	b       .L8018A2AC
	nop
.L8018A284:
	lui     $t4, %hi(_face_dynlist_data+0x04)
	lw      $t4, %lo(_face_dynlist_data+0x04)($t4)
	lui     $a2, %hi(_face_bss+0x610)
	lw      $a2, %lo(_face_bss+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B75F8
	la.u    $a1, str_face_dynlist_801B762C
	lw      $a3, 0x000C($t4)
	la.l    $a1, str_face_dynlist_801B762C
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B75F8
.L8018A2AC:
	b       .L8018A340
	nop
.L8018A2B4:
	lw      $t5, 0x0028($sp)
	li      $at, 0x0001
	bne     $t5, $at, .L8018A2E8
	nop
	b       .L8018A2CC
	nop
.L8018A2CC:
	lui     $t6, %hi(_face_dynlist_data+0x04)
	lw      $t6, %lo(_face_dynlist_data+0x04)($t6)
	lwc1    $f16, 0x002C($sp)
	nop
	swc1    $f16, 0x0040($t6)
	b       .L8018A310
	nop
.L8018A2E8:
	lui     $t7, %hi(_face_dynlist_data+0x04)
	lw      $t7, %lo(_face_dynlist_data+0x04)($t7)
	lui     $a2, %hi(_face_bss+0x610)
	lw      $a2, %lo(_face_bss+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B764C
	la.u    $a1, str_face_dynlist_801B7680
	lw      $a3, 0x000C($t7)
	la.l    $a1, str_face_dynlist_801B7680
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B764C
.L8018A310:
	b       .L8018A340
	nop
.L8018A318:
	lui     $t8, %hi(_face_dynlist_data+0x04)
	lw      $t8, %lo(_face_dynlist_data+0x04)($t8)
	lui     $a2, %hi(_face_bss+0x610)
	lw      $a2, %lo(_face_bss+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B76A0
	la.u    $a1, str_face_dynlist_801B76D4
	lw      $a3, 0x000C($t8)
	la.l    $a1, str_face_dynlist_801B76D4
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B76A0
.L8018A340:
	b       .L8018A348
	nop
.L8018A348:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

.globl dSetParmp
dSetParmp:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(_face_dynlist_data+0x04)
	lw      $t6, %lo(_face_dynlist_data+0x04)($t6)
	nop
	bnez    $t6, .L8018A38C
	nop
	la.u    $a0, str_face_dynlist_801B76E0
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B76E0
.L8018A38C:
	lui     $t7, %hi(_face_dynlist_data+0x04)
	lw      $t7, %lo(_face_dynlist_data+0x04)($t7)
	li      $at, 0x0080
	lw      $s0, 0x000C($t7)
	nop
	beq     $s0, $at, .L8018A458
	nop
	li      $at, 0x4000
	beq     $s0, $at, .L8018A410
	nop
	li      $at, 0x8000
	beq     $s0, $at, .L8018A3C8
	nop
	b       .L8018A4F0
	nop
.L8018A3C8:
	lw      $t8, 0x0028($sp)
	li      $at, 0x0005
	bne     $t8, $at, .L8018A3FC
	nop
	b       .L8018A3E0
	nop
.L8018A3E0:
	lui     $t0, %hi(_face_dynlist_data+0x04)
	lw      $t0, %lo(_face_dynlist_data+0x04)($t0)
	lw      $t9, 0x002C($sp)
	nop
	sw      $t9, 0x0020($t0)
	b       .L8018A408
	nop
.L8018A3FC:
	la.u    $a0, str_face_dynlist_801B7704
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B7704
.L8018A408:
	b       .L8018A518
	nop
.L8018A410:
	lw      $t1, 0x0028($sp)
	li      $at, 0x0005
	bne     $t1, $at, .L8018A444
	nop
	b       .L8018A428
	nop
.L8018A428:
	lui     $t3, %hi(_face_dynlist_data+0x04)
	lw      $t3, %lo(_face_dynlist_data+0x04)($t3)
	lw      $t2, 0x002C($sp)
	nop
	sw      $t2, 0x006C($t3)
	b       .L8018A450
	nop
.L8018A444:
	la.u    $a0, str_face_dynlist_801B7710
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B7710
.L8018A450:
	b       .L8018A518
	nop
.L8018A458:
	lw      $t4, 0x0028($sp)
	li      $at, 0x0001
	bne     $t4, $at, .L8018A4DC
	nop
	b       .L8018A470
	nop
.L8018A470:
	lui     $t5, %hi(_face_dynlist_data+0x04)
	lw      $t5, %lo(_face_dynlist_data+0x04)($t5)
	nop
	lw      $t6, 0x0030($t5)
	nop
	slti    $at, $t6, 0x0004
	bnez    $at, .L8018A49C
	nop
	la.u    $a0, str_face_dynlist_801B771C
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B771C
.L8018A49C:
	lui     $t8, %hi(_face_dynlist_data+0x04)
	lw      $t8, %lo(_face_dynlist_data+0x04)($t8)
	lw      $t7, 0x002C($sp)
	lw      $t9, 0x0030($t8)
	lui     $t2, %hi(_face_dynlist_data+0x04)
	sll     $t0, $t9, 2
	addu    $t1, $t8, $t0
	sw      $t7, 0x0034($t1)
	lw      $t2, %lo(_face_dynlist_data+0x04)($t2)
	nop
	lw      $t3, 0x0030($t2)
	nop
	addiu   $t4, $t3, 0x0001
	sw      $t4, 0x0030($t2)
	b       .L8018A4E8
	nop
.L8018A4DC:
	la.u    $a0, str_face_dynlist_801B7738
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B7738
.L8018A4E8:
	b       .L8018A518
	nop
.L8018A4F0:
	lui     $t5, %hi(_face_dynlist_data+0x04)
	lw      $t5, %lo(_face_dynlist_data+0x04)($t5)
	lui     $a2, %hi(_face_bss+0x610)
	lw      $a2, %lo(_face_bss+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B7744
	la.u    $a1, str_face_dynlist_801B7778
	lw      $a3, 0x000C($t5)
	la.l    $a1, str_face_dynlist_801B7778
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B7744
.L8018A518:
	b       .L8018A520
	nop
.L8018A520:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

.globl face_dynlist_8018A530
face_dynlist_8018A530:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $t6, %hi(_face_dynlist_data+0x04)
	lw      $t6, %lo(_face_dynlist_data+0x04)($t6)
	nop
	bnez    $t6, .L8018A55C
	nop
	la.u    $a0, str_face_dynlist_801B7784
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B7784
.L8018A55C:
	lui     $t7, %hi(_face_dynlist_data+0x04)
	lw      $t7, %lo(_face_dynlist_data+0x04)($t7)
	lw      $t9, 0x0018($sp)
	lhu     $t8, 0x0012($t7)
	nop
	or      $t0, $t8, $t9
	sh      $t0, 0x0012($t7)
	b       .L8018A580
	nop
.L8018A580:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl dSetType
dSetType:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(_face_dynlist_data+0x04)
	lw      $t6, %lo(_face_dynlist_data+0x04)($t6)
	nop
	sw      $t6, 0x0024($sp)
	lui     $t7, %hi(_face_dynlist_data+0x04)
	lw      $t7, %lo(_face_dynlist_data+0x04)($t7)
	nop
	bnez    $t7, .L8018A5D0
	nop
	la.u    $a0, str_face_dynlist_801B77A8
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B77A8
.L8018A5D0:
	lui     $t8, %hi(_face_dynlist_data+0x04)
	lw      $t8, %lo(_face_dynlist_data+0x04)($t8)
	li      $at, 0x0001
	lw      $s0, 0x000C($t8)
	nop
	beq     $s0, $at, .L8018A660
	nop
	li      $at, 0x0004
	beq     $s0, $at, .L8018A678
	nop
	li      $at, 0x0008
	beq     $s0, $at, .L8018A690
	nop
	li      $at, 0x0020
	beq     $s0, $at, .L8018A630
	nop
	li      $at, 0x0800
	beq     $s0, $at, .L8018A6A8
	nop
	li      $at, 0x2000
	beq     $s0, $at, .L8018A648
	nop
	b       .L8018A6C0
	nop
.L8018A630:
	lw      $t9, 0x0028($sp)
	lw      $t0, 0x0024($sp)
	nop
	sw      $t9, 0x01EC($t0)
	b       .L8018A6E8
	nop
.L8018A648:
	lw      $t1, 0x0028($sp)
	lw      $t2, 0x0024($sp)
	nop
	sw      $t1, 0x0024($t2)
	b       .L8018A6E8
	nop
.L8018A660:
	lw      $t3, 0x0028($sp)
	lw      $t4, 0x0024($sp)
	nop
	sw      $t3, 0x002C($t4)
	b       .L8018A6E8
	nop
.L8018A678:
	lw      $t5, 0x0028($sp)
	lw      $t6, 0x0024($sp)
	nop
	sw      $t5, 0x01CC($t6)
	b       .L8018A6E8
	nop
.L8018A690:
	lw      $t7, 0x0028($sp)
	lw      $t8, 0x0024($sp)
	nop
	sw      $t7, 0x0060($t8)
	b       .L8018A6E8
	nop
.L8018A6A8:
	lw      $t9, 0x0028($sp)
	lw      $t0, 0x0024($sp)
	nop
	sw      $t9, 0x0028($t0)
	b       .L8018A6E8
	nop
.L8018A6C0:
	lui     $t1, %hi(_face_dynlist_data+0x04)
	lw      $t1, %lo(_face_dynlist_data+0x04)($t1)
	lui     $a2, %hi(_face_bss+0x610)
	lw      $a2, %lo(_face_bss+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B77CC
	la.u    $a1, str_face_dynlist_801B7800
	lw      $a3, 0x000C($t1)
	la.l    $a1, str_face_dynlist_801B7800
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B77CC
.L8018A6E8:
	b       .L8018A6F0
	nop
.L8018A6F0:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

dSetID:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(_face_dynlist_data+0x04)
	lw      $t6, %lo(_face_dynlist_data+0x04)($t6)
	nop
	sw      $t6, 0x0024($sp)
	lui     $t7, %hi(_face_dynlist_data+0x04)
	lw      $t7, %lo(_face_dynlist_data+0x04)($t7)
	nop
	bnez    $t7, .L8018A740
	nop
	la.u    $a0, str_face_dynlist_801B780C
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B780C
.L8018A740:
	lui     $t8, %hi(_face_dynlist_data+0x04)
	lw      $t8, %lo(_face_dynlist_data+0x04)($t8)
	li      $at, 0x0004
	lw      $s0, 0x000C($t8)
	nop
	beq     $s0, $at, .L8018A7A0
	nop
	li      $at, 0x0100
	beq     $s0, $at, .L8018A7B8
	nop
	li      $at, 0x0800
	beq     $s0, $at, .L8018A788
	nop
	li      $at, 0x00080000
	beq     $s0, $at, .L8018A7D0
	nop
	b       .L8018A7E8
	nop
.L8018A788:
	lw      $t9, 0x0028($sp)
	lw      $t0, 0x0024($sp)
	nop
	sw      $t9, 0x001C($t0)
	b       .L8018A810
	nop
.L8018A7A0:
	lw      $t1, 0x0028($sp)
	lw      $t2, 0x0024($sp)
	nop
	sw      $t1, 0x01B4($t2)
	b       .L8018A810
	nop
.L8018A7B8:
	lw      $t3, 0x0028($sp)
	lw      $t4, 0x0024($sp)
	nop
	sh      $t3, 0x0038($t4)
	b       .L8018A810
	nop
.L8018A7D0:
	lw      $t5, 0x0028($sp)
	lw      $t6, 0x0024($sp)
	nop
	sw      $t5, 0x001C($t6)
	b       .L8018A810
	nop
.L8018A7E8:
	lui     $t7, %hi(_face_dynlist_data+0x04)
	lw      $t7, %lo(_face_dynlist_data+0x04)($t7)
	lui     $a2, %hi(_face_bss+0x610)
	lw      $a2, %lo(_face_bss+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B7830
	la.u    $a1, str_face_dynlist_801B7864
	lw      $a3, 0x000C($t7)
	la.l    $a1, str_face_dynlist_801B7864
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B7830
.L8018A810:
	b       .L8018A818
	nop
.L8018A818:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

.globl dSetColNum
dSetColNum:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(_face_dynlist_data+0x04)
	lw      $t6, %lo(_face_dynlist_data+0x04)($t6)
	nop
	bnez    $t6, .L8018A858
	nop
	la.u    $a0, str_face_dynlist_801B7870
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B7870
.L8018A858:
	lui     $t7, %hi(_face_dynlist_data+0x04)
	lw      $t7, %lo(_face_dynlist_data+0x04)($t7)
	li      $at, 0x0004
	lw      $s0, 0x000C($t7)
	nop
	beq     $s0, $at, .L8018A8AC
	nop
	li      $at, 0x0008
	beq     $s0, $at, .L8018A8C8
	nop
	li      $at, 0x0020
	beq     $s0, $at, .L8018A8E4
	nop
	li      $at, 0x0080
	beq     $s0, $at, .L8018A91C
	nop
	li      $at, 0x2000
	beq     $s0, $at, .L8018A900
	nop
	b       .L8018A9AC
	nop
.L8018A8AC:
	lui     $t9, %hi(_face_dynlist_data+0x04)
	lw      $t9, %lo(_face_dynlist_data+0x04)($t9)
	lw      $t8, 0x0028($sp)
	nop
	sw      $t8, 0x01C8($t9)
	b       .L8018A9D4
	nop
.L8018A8C8:
	lui     $t1, %hi(_face_dynlist_data+0x04)
	lw      $t1, %lo(_face_dynlist_data+0x04)($t1)
	lw      $t0, 0x0028($sp)
	nop
	sw      $t0, 0x0058($t1)
	b       .L8018A9D4
	nop
.L8018A8E4:
	lui     $t3, %hi(_face_dynlist_data+0x04)
	lw      $t3, %lo(_face_dynlist_data+0x04)($t3)
	lw      $t2, 0x0028($sp)
	nop
	sw      $t2, 0x0040($t3)
	b       .L8018A9D4
	nop
.L8018A900:
	lui     $t5, %hi(_face_dynlist_data+0x04)
	lw      $t5, %lo(_face_dynlist_data+0x04)($t5)
	lw      $t4, 0x0028($sp)
	nop
	sw      $t4, 0x005C($t5)
	b       .L8018A9D4
	nop
.L8018A91C:
	lw      $a0, 0x0028($sp)
	jal     face_draw_80178ED8
	nop
	sw      $v0, 0x0024($sp)
	lw      $t6, 0x0024($sp)
	nop
	beqz    $t6, .L8018A998
	nop
	lw      $t7, 0x0024($sp)
	lui     $t8, %hi(_face_dynlist_data+0x04)
	lw      $t8, %lo(_face_dynlist_data+0x04)($t8)
	lwc1    $f4, 0x0000($t7)
	nop
	swc1    $f4, 0x0014($t8)
	lw      $t9, 0x0024($sp)
	lui     $t0, %hi(_face_dynlist_data+0x04)
	lw      $t0, %lo(_face_dynlist_data+0x04)($t0)
	lwc1    $f6, 0x0004($t9)
	nop
	swc1    $f6, 0x0018($t0)
	lw      $t1, 0x0024($sp)
	lui     $t2, %hi(_face_dynlist_data+0x04)
	lw      $t2, %lo(_face_dynlist_data+0x04)($t2)
	lwc1    $f8, 0x0008($t1)
	nop
	swc1    $f8, 0x001C($t2)
	lui     $t4, %hi(_face_dynlist_data+0x04)
	lw      $t4, %lo(_face_dynlist_data+0x04)($t4)
	lw      $t3, 0x0028($sp)
	b       .L8018A9A4
	sw      $t3, 0x0020($t4)
.L8018A998:
	la.u    $a0, str_face_dynlist_801B7894
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B7894
.L8018A9A4:
	b       .L8018A9D4
	nop
.L8018A9AC:
	lui     $t5, %hi(_face_dynlist_data+0x04)
	lw      $t5, %lo(_face_dynlist_data+0x04)($t5)
	lui     $a2, %hi(_face_bss+0x610)
	lw      $a2, %lo(_face_bss+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B78B8
	la.u    $a1, str_face_dynlist_801B78EC
	lw      $a3, 0x000C($t5)
	la.l    $a1, str_face_dynlist_801B78EC
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B78B8
.L8018A9D4:
	b       .L8018A9DC
	nop
.L8018A9DC:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

dSetMaterial:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	lui     $t6, %hi(_face_dynlist_data+0x04)
	lw      $t6, %lo(_face_dynlist_data+0x04)($t6)
	nop
	bnez    $t6, .L8018AA1C
	nop
	la.u    $a0, str_face_dynlist_801B78FC
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B78FC
.L8018AA1C:
	lui     $t7, %hi(_face_dynlist_data+0x04)
	lw      $t7, %lo(_face_dynlist_data+0x04)($t7)
	li      $at, 0x0080
	lw      $t8, 0x000C($t7)
	nop
	bne     $t8, $at, .L8018AA5C
	nop
	b       .L8018AA40
	nop
.L8018AA40:
	lui     $t0, %hi(_face_dynlist_data+0x04)
	lw      $t0, %lo(_face_dynlist_data+0x04)($t0)
	lw      $t9, 0x001C($sp)
	nop
	sw      $t9, 0x0044($t0)
	b       .L8018AA84
	nop
.L8018AA5C:
	lui     $t1, %hi(_face_dynlist_data+0x04)
	lw      $t1, %lo(_face_dynlist_data+0x04)($t1)
	lui     $a2, %hi(_face_bss+0x610)
	lw      $a2, %lo(_face_bss+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B7920
	la.u    $a1, str_face_dynlist_801B7954
	lw      $a3, 0x000C($t1)
	la.l    $a1, str_face_dynlist_801B7954
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B7920
.L8018AA84:
	b       .L8018AA8C
	nop
.L8018AA8C:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

dFriction:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a2, 0x0020($sp)
	swc1    $f12, 0x0018($sp)
	swc1    $f14, 0x001C($sp)
	lui     $t6, %hi(_face_dynlist_data+0x04)
	lw      $t6, %lo(_face_dynlist_data+0x04)($t6)
	nop
	bnez    $t6, .L8018AAD0
	nop
	la.u    $a0, str_face_dynlist_801B7964
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B7964
.L8018AAD0:
	lui     $t7, %hi(_face_dynlist_data+0x04)
	lw      $t7, %lo(_face_dynlist_data+0x04)($t7)
	li      $at, 0x0004
	lw      $t8, 0x000C($t7)
	nop
	bne     $t8, $at, .L8018AB38
	nop
	b       .L8018AAF4
	nop
.L8018AAF4:
	lui     $t9, %hi(_face_dynlist_data+0x04)
	lw      $t9, %lo(_face_dynlist_data+0x04)($t9)
	lwc1    $f4, 0x0018($sp)
	nop
	swc1    $f4, 0x00DC($t9)
	lui     $t0, %hi(_face_dynlist_data+0x04)
	lw      $t0, %lo(_face_dynlist_data+0x04)($t0)
	lwc1    $f6, 0x001C($sp)
	nop
	swc1    $f6, 0x00E0($t0)
	lui     $t1, %hi(_face_dynlist_data+0x04)
	lw      $t1, %lo(_face_dynlist_data+0x04)($t1)
	lwc1    $f8, 0x0020($sp)
	nop
	swc1    $f8, 0x00E4($t1)
	b       .L8018AB60
	nop
.L8018AB38:
	lui     $t2, %hi(_face_dynlist_data+0x04)
	lw      $t2, %lo(_face_dynlist_data+0x04)($t2)
	lui     $a2, %hi(_face_bss+0x610)
	lw      $a2, %lo(_face_bss+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B7988
	la.u    $a1, str_face_dynlist_801B79BC
	lw      $a3, 0x000C($t2)
	la.l    $a1, str_face_dynlist_801B79BC
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B7988
.L8018AB60:
	b       .L8018AB68
	nop
.L8018AB68:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

dSetSpring:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	swc1    $f12, 0x0018($sp)
	lui     $t6, %hi(_face_dynlist_data+0x04)
	lw      $t6, %lo(_face_dynlist_data+0x04)($t6)
	nop
	bnez    $t6, .L8018ABA4
	nop
	la.u    $a0, str_face_dynlist_801B79C8
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B79C8
.L8018ABA4:
	lui     $t7, %hi(_face_dynlist_data+0x04)
	lw      $t7, %lo(_face_dynlist_data+0x04)($t7)
	li      $at, 0x0002
	lw      $t8, 0x000C($t7)
	nop
	bne     $t8, $at, .L8018ABE4
	nop
	b       .L8018ABC8
	nop
.L8018ABC8:
	lui     $t9, %hi(_face_dynlist_data+0x04)
	lw      $t9, %lo(_face_dynlist_data+0x04)($t9)
	lwc1    $f4, 0x0018($sp)
	nop
	swc1    $f4, 0x0110($t9)
	b       .L8018AC0C
	nop
.L8018ABE4:
	lui     $t0, %hi(_face_dynlist_data+0x04)
	lw      $t0, %lo(_face_dynlist_data+0x04)($t0)
	lui     $a2, %hi(_face_bss+0x610)
	lw      $a2, %lo(_face_bss+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B79EC
	la.u    $a1, str_face_dynlist_801B7A20
	lw      $a3, 0x000C($t0)
	la.l    $a1, str_face_dynlist_801B7A20
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B79EC
.L8018AC0C:
	b       .L8018AC14
	nop
.L8018AC14:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

dSetAmbient:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a2, 0x0020($sp)
	swc1    $f12, 0x0018($sp)
	swc1    $f14, 0x001C($sp)
	lui     $t6, %hi(_face_dynlist_data+0x04)
	lw      $t6, %lo(_face_dynlist_data+0x04)($t6)
	nop
	bnez    $t6, .L8018AC58
	nop
	la.u    $a0, str_face_dynlist_801B7A30
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B7A30
.L8018AC58:
	lui     $t7, %hi(_face_dynlist_data+0x04)
	lw      $t7, %lo(_face_dynlist_data+0x04)($t7)
	li      $at, 0x0800
	lw      $t8, 0x000C($t7)
	nop
	bne     $t8, $at, .L8018ACC0
	nop
	b       .L8018AC7C
	nop
.L8018AC7C:
	lui     $t9, %hi(_face_dynlist_data+0x04)
	lw      $t9, %lo(_face_dynlist_data+0x04)($t9)
	lwc1    $f4, 0x0018($sp)
	nop
	swc1    $f4, 0x0030($t9)
	lui     $t0, %hi(_face_dynlist_data+0x04)
	lw      $t0, %lo(_face_dynlist_data+0x04)($t0)
	lwc1    $f6, 0x001C($sp)
	nop
	swc1    $f6, 0x0034($t0)
	lui     $t1, %hi(_face_dynlist_data+0x04)
	lw      $t1, %lo(_face_dynlist_data+0x04)($t1)
	lwc1    $f8, 0x0020($sp)
	nop
	swc1    $f8, 0x0038($t1)
	b       .L8018ACE8
	nop
.L8018ACC0:
	lui     $t2, %hi(_face_dynlist_data+0x04)
	lw      $t2, %lo(_face_dynlist_data+0x04)($t2)
	lui     $a2, %hi(_face_bss+0x610)
	lw      $a2, %lo(_face_bss+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B7A54
	la.u    $a1, str_face_dynlist_801B7A88
	lw      $a3, 0x000C($t2)
	la.l    $a1, str_face_dynlist_801B7A88
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B7A54
.L8018ACE8:
	b       .L8018ACF0
	nop
.L8018ACF0:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl dSetDiffuse
dSetDiffuse:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a2, 0x0030($sp)
	swc1    $f12, 0x0028($sp)
	swc1    $f14, 0x002C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(_face_dynlist_data+0x04)
	lw      $t6, %lo(_face_dynlist_data+0x04)($t6)
	nop
	bnez    $t6, .L8018AD38
	nop
	la.u    $a0, str_face_dynlist_801B7A98
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B7A98
.L8018AD38:
	lui     $t7, %hi(_face_dynlist_data+0x04)
	lw      $t7, %lo(_face_dynlist_data+0x04)($t7)
	li      $at, 0x0800
	lw      $s0, 0x000C($t7)
	nop
	beq     $s0, $at, .L8018AD68
	nop
	li      $at, 0x00080000
	beq     $s0, $at, .L8018ADAC
	nop
	b       .L8018ADF0
	nop
.L8018AD68:
	lui     $t8, %hi(_face_dynlist_data+0x04)
	lw      $t8, %lo(_face_dynlist_data+0x04)($t8)
	lwc1    $f4, 0x0028($sp)
	nop
	swc1    $f4, 0x003C($t8)
	lui     $t9, %hi(_face_dynlist_data+0x04)
	lw      $t9, %lo(_face_dynlist_data+0x04)($t9)
	lwc1    $f6, 0x002C($sp)
	nop
	swc1    $f6, 0x0040($t9)
	lui     $t0, %hi(_face_dynlist_data+0x04)
	lw      $t0, %lo(_face_dynlist_data+0x04)($t0)
	lwc1    $f8, 0x0030($sp)
	nop
	swc1    $f8, 0x0044($t0)
	b       .L8018AE18
	nop
.L8018ADAC:
	lui     $t1, %hi(_face_dynlist_data+0x04)
	lw      $t1, %lo(_face_dynlist_data+0x04)($t1)
	lwc1    $f10, 0x0028($sp)
	nop
	swc1    $f10, 0x0050($t1)
	lui     $t2, %hi(_face_dynlist_data+0x04)
	lw      $t2, %lo(_face_dynlist_data+0x04)($t2)
	lwc1    $f16, 0x002C($sp)
	nop
	swc1    $f16, 0x0054($t2)
	lui     $t3, %hi(_face_dynlist_data+0x04)
	lw      $t3, %lo(_face_dynlist_data+0x04)($t3)
	lwc1    $f18, 0x0030($sp)
	nop
	swc1    $f18, 0x0058($t3)
	b       .L8018AE18
	nop
.L8018ADF0:
	lui     $t4, %hi(_face_dynlist_data+0x04)
	lw      $t4, %lo(_face_dynlist_data+0x04)($t4)
	lui     $a2, %hi(_face_bss+0x610)
	lw      $a2, %lo(_face_bss+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B7ABC
	la.u    $a1, str_face_dynlist_801B7AF0
	lw      $a3, 0x000C($t4)
	la.l    $a1, str_face_dynlist_801B7AF0
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B7ABC
.L8018AE18:
	b       .L8018AE20
	nop
.L8018AE20:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

dControlType:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $t6, %hi(_face_dynlist_data+0x04)
	lw      $t6, %lo(_face_dynlist_data+0x04)($t6)
	nop
	bnez    $t6, .L8018AE5C
	nop
	la.u    $a0, str_face_dynlist_801B7B00
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B7B00
.L8018AE5C:
	lui     $t7, %hi(_face_dynlist_data+0x04)
	lw      $t7, %lo(_face_dynlist_data+0x04)($t7)
	li      $at, 0x0020
	lw      $t8, 0x000C($t7)
	nop
	bne     $t8, $at, .L8018AE9C
	nop
	b       .L8018AE80
	nop
.L8018AE80:
	lui     $t0, %hi(_face_dynlist_data+0x04)
	lw      $t0, %lo(_face_dynlist_data+0x04)($t0)
	lw      $t9, 0x0018($sp)
	nop
	sw      $t9, 0x0210($t0)
	b       .L8018AEC4
	nop
.L8018AE9C:
	lui     $t1, %hi(_face_dynlist_data+0x04)
	lw      $t1, %lo(_face_dynlist_data+0x04)($t1)
	lui     $a2, %hi(_face_bss+0x610)
	lw      $a2, %lo(_face_bss+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B7B24
	la.u    $a1, str_face_dynlist_801B7B58
	lw      $a3, 0x000C($t1)
	la.l    $a1, str_face_dynlist_801B7B58
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B7B24
.L8018AEC4:
	b       .L8018AECC
	nop
.L8018AECC:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl face_dynlist_8018AEDC
face_dynlist_8018AEDC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(_face_dynlist_data+0x04)
	lw      $t6, %lo(_face_dynlist_data+0x04)($t6)
	nop
	bnez    $t6, .L8018AF08
	nop
	la.u    $a0, str_face_dynlist_801B7B68
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B7B68
.L8018AF08:
	lui     $t7, %hi(_face_dynlist_data+0x04)
	lw      $t7, %lo(_face_dynlist_data+0x04)($t7)
	li      $at, 0x0020
	lw      $s0, 0x000C($t7)
	nop
	beq     $s0, $at, .L8018AF44
	nop
	li      $at, 0x0040
	beq     $s0, $at, .L8018AF5C
	nop
	li      $at, 0x00100000
	beq     $s0, $at, .L8018AF74
	nop
	b       .L8018AF8C
	nop
.L8018AF44:
	lui     $v0, %hi(_face_dynlist_data+0x04)
	lw      $v0, %lo(_face_dynlist_data+0x04)($v0)
	b       .L8018AFA0
	addiu   $v0, $v0, 0x00BC
	b       .L8018AF98
	nop
.L8018AF5C:
	lui     $v0, %hi(_face_dynlist_data+0x04)
	lw      $v0, %lo(_face_dynlist_data+0x04)($v0)
	b       .L8018AFA0
	addiu   $v0, $v0, 0x0028
	b       .L8018AF98
	nop
.L8018AF74:
	lui     $v0, %hi(_face_dynlist_data+0x04)
	lw      $v0, %lo(_face_dynlist_data+0x04)($v0)
	b       .L8018AFA0
	addiu   $v0, $v0, 0x0014
	b       .L8018AF98
	nop
.L8018AF8C:
	la.u    $v0, _face_dynlist_data+0x08
	b       .L8018AFA0
	la.l    $v0, _face_dynlist_data+0x08
.L8018AF98:
	b       .L8018AFA0
	nop
.L8018AFA0:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

.globl dGetMatrix
dGetMatrix:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(_face_dynlist_data+0x04)
	lw      $t6, %lo(_face_dynlist_data+0x04)($t6)
	nop
	bnez    $t6, .L8018AFE0
	nop
	la.u    $a0, str_face_dynlist_801B7B8C
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B7B8C
.L8018AFE0:
	lui     $t7, %hi(_face_dynlist_data+0x04)
	lw      $t7, %lo(_face_dynlist_data+0x04)($t7)
	nop
	sw      $t7, 0x0024($sp)
	lui     $t8, %hi(_face_dynlist_data+0x04)
	lw      $t8, %lo(_face_dynlist_data+0x04)($t8)
	li      $at, 0x0004
	lw      $s0, 0x000C($t8)
	nop
	beq     $s0, $at, .L8018B064
	nop
	li      $at, 0x0008
	beq     $s0, $at, .L8018B094
	nop
	li      $at, 0x0010
	beq     $s0, $at, .L8018B0A8
	nop
	li      $at, 0x0020
	beq     $s0, $at, .L8018B044
	nop
	li      $at, 0x0200
	beq     $s0, $at, .L8018B07C
	nop
	b       .L8018B0BC
	nop
.L8018B044:
	lw      $a0, 0x0024($sp)
	lw      $a1, 0x0028($sp)
	jal     face_math_801964A0
	addiu   $a0, $a0, 0x0128
	b       .L8018B0E4
	nop
	b       .L8018B0E4
	nop
.L8018B064:
	lw      $a0, 0x0024($sp)
	lw      $a1, 0x0028($sp)
	jal     face_math_801964A0
	addiu   $a0, $a0, 0x00E8
	b       .L8018B0E4
	nop
.L8018B07C:
	lw      $a0, 0x0024($sp)
	lw      $a1, 0x0028($sp)
	jal     face_math_801964A0
	addiu   $a0, $a0, 0x00E8
	b       .L8018B0E4
	nop
.L8018B094:
	lw      $a0, 0x0028($sp)
	jal     face_math_801963C0
	nop
	b       .L8018B0E4
	nop
.L8018B0A8:
	lw      $a0, 0x0028($sp)
	jal     face_math_801963C0
	nop
	b       .L8018B0E4
	nop
.L8018B0BC:
	lui     $t9, %hi(_face_dynlist_data+0x04)
	lw      $t9, %lo(_face_dynlist_data+0x04)($t9)
	lui     $a2, %hi(_face_bss+0x610)
	lw      $a2, %lo(_face_bss+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B7BB0
	la.u    $a1, str_face_dynlist_801B7BE4
	lw      $a3, 0x000C($t9)
	la.l    $a1, str_face_dynlist_801B7BE4
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B7BB0
.L8018B0E4:
	b       .L8018B0EC
	nop
.L8018B0EC:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

dSetMatrix:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(_face_dynlist_data+0x04)
	lw      $t6, %lo(_face_dynlist_data+0x04)($t6)
	nop
	bnez    $t6, .L8018B12C
	nop
	la.u    $a0, str_face_dynlist_801B7BF4
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B7BF4
.L8018B12C:
	lui     $t7, %hi(_face_dynlist_data+0x04)
	lw      $t7, %lo(_face_dynlist_data+0x04)($t7)
	li      $at, 0x0004
	lw      $s0, 0x000C($t7)
	nop
	beq     $s0, $at, .L8018B198
	nop
	li      $at, 0x0020
	beq     $s0, $at, .L8018B168
	nop
	li      $at, 0x0200
	beq     $s0, $at, .L8018B1B4
	nop
	b       .L8018B1D0
	nop
.L8018B168:
	lui     $a1, %hi(_face_dynlist_data+0x04)
	lw      $a1, %lo(_face_dynlist_data+0x04)($a1)
	lw      $a0, 0x0028($sp)
	jal     face_math_801964A0
	addiu   $a1, $a1, 0x0128
	lui     $a1, %hi(_face_dynlist_data+0x04)
	lw      $a1, %lo(_face_dynlist_data+0x04)($a1)
	lw      $a0, 0x0028($sp)
	jal     face_math_801964A0
	addiu   $a1, $a1, 0x0128
	b       .L8018B1F8
	nop
.L8018B198:
	lui     $a1, %hi(_face_dynlist_data+0x04)
	lw      $a1, %lo(_face_dynlist_data+0x04)($a1)
	lw      $a0, 0x0028($sp)
	jal     face_math_801964A0
	addiu   $a1, $a1, 0x00E8
	b       .L8018B1F8
	nop
.L8018B1B4:
	lui     $a1, %hi(_face_dynlist_data+0x04)
	lw      $a1, %lo(_face_dynlist_data+0x04)($a1)
	lw      $a0, 0x0028($sp)
	jal     face_math_801964A0
	addiu   $a1, $a1, 0x0064
	b       .L8018B1F8
	nop
.L8018B1D0:
	lui     $t8, %hi(_face_dynlist_data+0x04)
	lw      $t8, %lo(_face_dynlist_data+0x04)($t8)
	lui     $a2, %hi(_face_bss+0x610)
	lw      $a2, %lo(_face_bss+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B7C18
	la.u    $a1, str_face_dynlist_801B7C4C
	lw      $a3, 0x000C($t8)
	la.l    $a1, str_face_dynlist_801B7C4C
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B7C18
.L8018B1F8:
	b       .L8018B200
	nop
.L8018B200:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

face_dynlist_8018B210:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(_face_dynlist_data+0x04)
	lw      $t6, %lo(_face_dynlist_data+0x04)($t6)
	nop
	bnez    $t6, .L8018B240
	nop
	la.u    $a0, str_face_dynlist_801B7C5C
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B7C5C
.L8018B240:
	lui     $t7, %hi(_face_dynlist_data+0x04)
	lw      $t7, %lo(_face_dynlist_data+0x04)($t7)
	li      $at, 0x0004
	lw      $s0, 0x000C($t7)
	nop
	beq     $s0, $at, .L8018B270
	nop
	li      $at, 0x0020
	beq     $s0, $at, .L8018B28C
	nop
	b       .L8018B2A8
	nop
.L8018B270:
	lui     $a1, %hi(_face_dynlist_data+0x04)
	lw      $a1, %lo(_face_dynlist_data+0x04)($a1)
	lw      $a0, 0x0028($sp)
	jal     face_math_801964A0
	addiu   $a1, $a1, 0x0128
	b       .L8018B2D0
	nop
.L8018B28C:
	lui     $a1, %hi(_face_dynlist_data+0x04)
	lw      $a1, %lo(_face_dynlist_data+0x04)($a1)
	lw      $a0, 0x0028($sp)
	jal     face_math_801964A0
	addiu   $a1, $a1, 0x0168
	b       .L8018B2D0
	nop
.L8018B2A8:
	lui     $t8, %hi(_face_dynlist_data+0x04)
	lw      $t8, %lo(_face_dynlist_data+0x04)($t8)
	lui     $a2, %hi(_face_bss+0x610)
	lw      $a2, %lo(_face_bss+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B7C80
	la.u    $a1, str_face_dynlist_801B7CB4
	lw      $a3, 0x000C($t8)
	la.l    $a1, str_face_dynlist_801B7CB4
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B7C80
.L8018B2D0:
	b       .L8018B2D8
	nop
.L8018B2D8:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

.globl dGetRMatrixPtr
dGetRMatrixPtr:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(_face_dynlist_data+0x04)
	lw      $t6, %lo(_face_dynlist_data+0x04)($t6)
	nop
	bnez    $t6, .L8018B314
	nop
	la.u    $a0, str_face_dynlist_801B7CC4
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B7CC4
.L8018B314:
	lui     $t7, %hi(_face_dynlist_data+0x04)
	lw      $t7, %lo(_face_dynlist_data+0x04)($t7)
	li      $at, 0x0004
	lw      $s0, 0x000C($t7)
	nop
	beq     $s0, $at, .L8018B344
	nop
	li      $at, 0x0020
	beq     $s0, $at, .L8018B354
	nop
	b       .L8018B364
	nop
.L8018B344:
	lui     $v0, %hi(_face_dynlist_data+0x04)
	lw      $v0, %lo(_face_dynlist_data+0x04)($v0)
	b       .L8018B394
	addiu   $v0, $v0, 0x0128
.L8018B354:
	lui     $v0, %hi(_face_dynlist_data+0x04)
	lw      $v0, %lo(_face_dynlist_data+0x04)($v0)
	b       .L8018B394
	addiu   $v0, $v0, 0x0168
.L8018B364:
	lui     $t8, %hi(_face_dynlist_data+0x04)
	lw      $t8, %lo(_face_dynlist_data+0x04)($t8)
	lui     $a2, %hi(_face_bss+0x610)
	lw      $a2, %lo(_face_bss+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B7CE8
	la.u    $a1, str_face_dynlist_801B7D1C
	lw      $a3, 0x000C($t8)
	la.l    $a1, str_face_dynlist_801B7D1C
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B7CE8
	b       .L8018B394
	nop
.L8018B394:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

.globl dSetIMatrix
dSetIMatrix:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(_face_dynlist_data+0x04)
	lw      $t6, %lo(_face_dynlist_data+0x04)($t6)
	nop
	bnez    $t6, .L8018B3D4
	nop
	la.u    $a0, str_face_dynlist_801B7D30
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B7D30
.L8018B3D4:
	lui     $t7, %hi(_face_dynlist_data+0x04)
	lw      $t7, %lo(_face_dynlist_data+0x04)($t7)
	nop
	sw      $t7, 0x0024($sp)
	lui     $t8, %hi(_face_dynlist_data+0x04)
	lw      $t8, %lo(_face_dynlist_data+0x04)($t8)
	li      $at, 0x0004
	lw      $s0, 0x000C($t8)
	nop
	beq     $s0, $at, .L8018B438
	nop
	li      $at, 0x0020
	beq     $s0, $at, .L8018B420
	nop
	li      $at, 0x00080000
	beq     $s0, $at, .L8018B450
	nop
	b       .L8018B494
	nop
.L8018B420:
	lw      $a1, 0x0024($sp)
	lw      $a0, 0x0028($sp)
	jal     face_math_801964A0
	addiu   $a1, $a1, 0x00E8
	b       .L8018B4BC
	nop
.L8018B438:
	lw      $a1, 0x0024($sp)
	lw      $a0, 0x0028($sp)
	jal     face_math_801964A0
	addiu   $a1, $a1, 0x0168
	b       .L8018B4BC
	nop
.L8018B450:
	lw      $t9, 0x0028($sp)
	lw      $t0, 0x0024($sp)
	lwc1    $f4, 0x0030($t9)
	nop
	swc1    $f4, 0x0074($t0)
	lw      $t1, 0x0028($sp)
	lw      $t2, 0x0024($sp)
	lwc1    $f6, 0x0034($t1)
	nop
	swc1    $f6, 0x0078($t2)
	lw      $t3, 0x0028($sp)
	lw      $t4, 0x0024($sp)
	lwc1    $f8, 0x0038($t3)
	nop
	swc1    $f8, 0x007C($t4)
	b       .L8018B4BC
	nop
.L8018B494:
	lui     $t5, %hi(_face_dynlist_data+0x04)
	lw      $t5, %lo(_face_dynlist_data+0x04)($t5)
	lui     $a2, %hi(_face_bss+0x610)
	lw      $a2, %lo(_face_bss+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B7D54
	la.u    $a1, str_face_dynlist_801B7D88
	lw      $a3, 0x000C($t5)
	la.l    $a1, str_face_dynlist_801B7D88
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B7D54
.L8018B4BC:
	b       .L8018B4C4
	nop
.L8018B4C4:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

.globl dGetMatrixPtr
dGetMatrixPtr:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(_face_dynlist_data+0x04)
	lw      $t6, %lo(_face_dynlist_data+0x04)($t6)
	nop
	bnez    $t6, .L8018B500
	nop
	la.u    $a0, str_face_dynlist_801B7D98
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B7D98
.L8018B500:
	lui     $t7, %hi(_face_dynlist_data+0x04)
	lw      $t7, %lo(_face_dynlist_data+0x04)($t7)
	li      $at, 0x0002
	lw      $s0, 0x000C($t7)
	nop
	beq     $s0, $at, .L8018B578
	nop
	li      $at, 0x0004
	beq     $s0, $at, .L8018B590
	nop
	li      $at, 0x0020
	beq     $s0, $at, .L8018B548
	nop
	li      $at, 0x0200
	beq     $s0, $at, .L8018B560
	nop
	b       .L8018B5A8
	nop
.L8018B548:
	lui     $v0, %hi(_face_dynlist_data+0x04)
	lw      $v0, %lo(_face_dynlist_data+0x04)($v0)
	b       .L8018B5D8
	addiu   $v0, $v0, 0x0128
	b       .L8018B5D0
	nop
.L8018B560:
	lui     $v0, %hi(_face_dynlist_data+0x04)
	lw      $v0, %lo(_face_dynlist_data+0x04)($v0)
	b       .L8018B5D8
	addiu   $v0, $v0, 0x0064
	b       .L8018B5D0
	nop
.L8018B578:
	lui     $v0, %hi(_face_dynlist_data+0x04)
	lw      $v0, %lo(_face_dynlist_data+0x04)($v0)
	b       .L8018B5D8
	addiu   $v0, $v0, 0x0070
	b       .L8018B5D0
	nop
.L8018B590:
	lui     $v0, %hi(_face_dynlist_data+0x04)
	lw      $v0, %lo(_face_dynlist_data+0x04)($v0)
	b       .L8018B5D8
	addiu   $v0, $v0, 0x00E8
	b       .L8018B5D0
	nop
.L8018B5A8:
	lui     $t8, %hi(_face_dynlist_data+0x04)
	lw      $t8, %lo(_face_dynlist_data+0x04)($t8)
	lui     $a2, %hi(_face_bss+0x610)
	lw      $a2, %lo(_face_bss+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B7DBC
	la.u    $a1, str_face_dynlist_801B7DF0
	lw      $a3, 0x000C($t8)
	la.l    $a1, str_face_dynlist_801B7DF0
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B7DBC
.L8018B5D0:
	b       .L8018B5D8
	nop
.L8018B5D8:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

.globl dGetIMatrixPtr
dGetIMatrixPtr:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(_face_dynlist_data+0x04)
	lw      $t6, %lo(_face_dynlist_data+0x04)($t6)
	nop
	bnez    $t6, .L8018B614
	nop
	la.u    $a0, str_face_dynlist_801B7E00
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B7E00
.L8018B614:
	lui     $t7, %hi(_face_dynlist_data+0x04)
	lw      $t7, %lo(_face_dynlist_data+0x04)($t7)
	nop
	sw      $t7, 0x0024($sp)
	lui     $t8, %hi(_face_dynlist_data+0x04)
	lw      $t8, %lo(_face_dynlist_data+0x04)($t8)
	li      $at, 0x0004
	lw      $s0, 0x000C($t8)
	nop
	beq     $s0, $at, .L8018B668
	nop
	li      $at, 0x0020
	beq     $s0, $at, .L8018B654
	nop
	b       .L8018B67C
	nop
.L8018B654:
	lw      $v0, 0x0024($sp)
	b       .L8018B6AC
	addiu   $v0, $v0, 0x00E8
	b       .L8018B6A4
	nop
.L8018B668:
	lw      $v0, 0x0024($sp)
	b       .L8018B6AC
	addiu   $v0, $v0, 0x0168
	b       .L8018B6A4
	nop
.L8018B67C:
	lui     $t9, %hi(_face_dynlist_data+0x04)
	lw      $t9, %lo(_face_dynlist_data+0x04)($t9)
	lui     $a2, %hi(_face_bss+0x610)
	lw      $a2, %lo(_face_bss+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B7E24
	la.u    $a1, str_face_dynlist_801B7E58
	lw      $a3, 0x000C($t9)
	la.l    $a1, str_face_dynlist_801B7E58
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B7E24
.L8018B6A4:
	b       .L8018B6AC
	nop
.L8018B6AC:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

.globl face_dynlist_8018B6BC
face_dynlist_8018B6BC:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0040($sp)
	sw      $a1, 0x0044($sp)
	lw      $a0, 0x0040($sp)
	jal     face_dynlist_80186C84
	nop
	jal     dGetWorldPos
	addiu   $a0, $sp, 0x0034
	lw      $a0, 0x0044($sp)
	jal     face_dynlist_80186C84
	nop
	jal     dGetWorldPos
	addiu   $a0, $sp, 0x0028
	lwc1    $f4, 0x0028($sp)
	lwc1    $f6, 0x0034($sp)
	nop
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x001C($sp)
	lwc1    $f10, 0x002C($sp)
	lwc1    $f16, 0x0038($sp)
	nop
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0020($sp)
	lwc1    $f4, 0x0030($sp)
	lwc1    $f6, 0x003C($sp)
	nop
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0024($sp)
	jal     face_math_80194CD8
	addiu   $a0, $sp, 0x001C
	b       .L8018B748
	nop
	b       .L8018B748
	nop
.L8018B748:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

dSetSkinWeight:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	lui     $t6, %hi(_face_dynlist_data+0x04)
	lw      $t6, %lo(_face_dynlist_data+0x04)($t6)
	nop
	bnez    $t6, .L8018B788
	nop
	la.u    $a0, str_face_dynlist_801B7E6C
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B7E6C
.L8018B788:
	lui     $t7, %hi(_face_dynlist_data+0x04)
	lw      $t7, %lo(_face_dynlist_data+0x04)($t7)
	li      $at, 0x0004
	lw      $t8, 0x000C($t7)
	nop
	bne     $t8, $at, .L8018B7F0
	nop
	b       .L8018B7AC
	nop
.L8018B7AC:
	lwc1    $f4, 0x001C($sp)
	li      $at, 0x40590000
	mtc1    $at, $f9
	mtc1    $0, $f8
	cvt.d.s $f6, $f4
	nop
	div.d   $f10, $f6, $f8
	lui     $a0, %hi(_face_dynlist_data+0x04)
	lw      $a0, %lo(_face_dynlist_data+0x04)($a0)
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	cvt.s.d $f16, $f10
	mfc1    $a3, $f16
	jal     face_joint_8018FC08
	nop
	b       .L8018B818
	nop
.L8018B7F0:
	lui     $t9, %hi(_face_dynlist_data+0x04)
	lw      $t9, %lo(_face_dynlist_data+0x04)($t9)
	lui     $a2, %hi(_face_bss+0x610)
	lw      $a2, %lo(_face_bss+0x610)($a2)
	la.u    $a0, str_face_dynlist_801B7E90
	la.u    $a1, str_face_dynlist_801B7EC4
	lw      $a3, 0x000C($t9)
	la.l    $a1, str_face_dynlist_801B7EC4
	jal     face_stdio_8018D298
	la.l    $a0, str_face_dynlist_801B7E90
.L8018B818:
	b       .L8018B820
	nop
.L8018B820:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.data
.align 4

.globl _face_dynlist_data
_face_dynlist_data:
.incbin "src/face/dynlist.data.bin"
