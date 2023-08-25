.include "sm64/asm.inc"

.set noreorder
.set noat

.align 4

.globl face_sfx_801781E0
face_sfx_801781E0:
	lui     $at, %hi(_face_bss+0x204)
	sw      $0, %lo(_face_bss+0x204)($at)
	lui     $at, %hi(_face_bss+0x200)
	sw      $0, %lo(_face_bss+0x200)($at)
	jr      $ra
	nop
	jr      $ra
	nop

.globl face_sfx_80178200
face_sfx_80178200:
	lui     $t6, %hi(_face_bss+0x204)
	lw      $t6, %lo(_face_bss+0x204)($t6)
	lui     $t8, %hi(_face_bss+0x200)
	lw      $t8, %lo(_face_bss+0x200)($t8)
	nor     $t7, $t6, $0
	jr      $ra
	and     $v0, $t7, $t8
	jr      $ra
	nop
	jr      $ra
	nop

.globl face_sfx_8017822C
face_sfx_8017822C:
	lui     $t6, %hi(_face_bss+0x200)
	lw      $t6, %lo(_face_bss+0x200)($t6)
	lui     $at, %hi(_face_bss+0x204)
	sw      $t6, %lo(_face_bss+0x204)($at)
	lui     $at, %hi(_face_bss+0x200)
	sw      $0, %lo(_face_bss+0x200)($at)
	jr      $ra
	nop
	jr      $ra
	nop

.globl face_sfx_80178254
face_sfx_80178254:
	lui     $t6, %hi(_face_bss+0x200)
	lw      $t6, %lo(_face_bss+0x200)($t6)
	lui     $at, %hi(_face_bss+0x200)
	or      $t7, $t6, $a0
	sw      $t7, %lo(_face_bss+0x200)($at)
	jr      $ra
	nop
	jr      $ra
	nop
