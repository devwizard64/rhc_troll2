.include "sm64/asm.inc"

.set noreorder
.set noat

.align 4

face_main:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	la.u    $a0, str_face_main_801B54C0
	la.u    $a1, face_config_2
	la.u    $a2, face_movement
	la.l    $a2, face_movement
	la.l    $a1, face_config_2
	jal     gd_printf
	la.l    $a0, str_face_main_801B54C0
	la.u    $a0, str_face_main_801B54C8
	jal     face_stdio_8018D560
	la.l    $a0, str_face_main_801B54C8
	jal     gd_init
	nop
	lui     $at, %hi(face_main_801B54F4)
	lwc1    $f4, %lo(face_main_801B54F4)($at)
	lui     $at, %hi(_face_bss+0x88)
	swc1    $f4, %lo(_face_bss+0x88)($at)
	li      $at, 0xC2080000
	mtc1    $at, $f6
	lui     $at, %hi(_face_bss+0xA0)
	swc1    $f6, %lo(_face_bss+0xA0)($at)
	li      $at, 0x42080000
	mtc1    $at, $f8
	lui     $at, %hi(_face_bss+0xAC)
	swc1    $f8, %lo(_face_bss+0xAC)($at)
	li      $t6, 0x0002
	lui     $at, %hi(_face_bss+0x00)
	sw      $t6, %lo(_face_bss+0x00)($at)
	lui     $at, %hi(_face_bss+0x54)
	sw      $0, %lo(_face_bss+0x54)($at)
	la.u    $t7, _face_bss+0xF8
	la.l    $t7, _face_bss+0xF8
	lui     $at, %hi(_face_bss+0xF0)
	sw      $t7, %lo(_face_bss+0xF0)($at)
	la.u    $a0, str_face_main_801B54D0
	jal     face_stdio_8018D560
	la.l    $a0, str_face_main_801B54D0
	jal     make_scene
	nop
	jal     imout
	nop
	jal     face_gfx_801A4468
	nop
	jal     face_stdio_8018C7B4
	nop
	la.u    $a0, str_face_main_801B54E4
	jal     start_timer
	la.l    $a0, str_face_main_801B54E4
	la.u    $a0, str_face_main_801B54EC
	jal     face_stdio_8018D088
	la.l    $a0, str_face_main_801B54EC
	jal     face_mem_801780B0
	nop
.L801777E8:
	jal     face_gfx_801A534C
	nop
	b       .L801777E8
	nop
	jal     imout
	nop
	b       .L80177810
	move    $v0, $0
	b       .L80177810
	nop
.L80177810:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop
