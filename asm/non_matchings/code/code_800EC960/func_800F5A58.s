glabel func_800F5A58
/* B6CBF8 800F5A58 308300FF */  andi  $v1, $a0, 0xff
/* B6CBFC 800F5A5C 306E00FF */  andi  $t6, $v1, 0xff
/* B6CC00 800F5A60 3C028013 */  lui   $v0, %hi(D_80130658)
/* B6CC04 800F5A64 004E1021 */  addu  $v0, $v0, $t6
/* B6CC08 800F5A68 90420658 */  lbu   $v0, %lo(D_80130658)($v0)
/* B6CC0C 800F5A6C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B6CC10 800F5A70 AFBF0014 */  sw    $ra, 0x14($sp)
/* B6CC14 800F5A74 304F0002 */  andi  $t7, $v0, 2
/* B6CC18 800F5A78 AFA40020 */  sw    $a0, 0x20($sp)
/* B6CC1C 800F5A7C 11E00003 */  beqz  $t7, .L800F5A8C
/* B6CC20 800F5A80 00002825 */   move  $a1, $zero
/* B6CC24 800F5A84 10000005 */  b     .L800F5A9C
/* B6CC28 800F5A88 24050001 */   li    $a1, 1
.L800F5A8C:
/* B6CC2C 800F5A8C 30580004 */  andi  $t8, $v0, 4
/* B6CC30 800F5A90 53000003 */  beql  $t8, $zero, .L800F5AA0
/* B6CC34 800F5A94 30A400FF */   andi  $a0, $a1, 0xff
/* B6CC38 800F5A98 24050001 */  li    $a1, 1
.L800F5A9C:
/* B6CC3C 800F5A9C 30A400FF */  andi  $a0, $a1, 0xff
.L800F5AA0:
/* B6CC40 800F5AA0 0C03E82D */  jal   func_800FA0B4
/* B6CC44 800F5AA4 AFA30018 */   sw    $v1, 0x18($sp)
/* B6CC48 800F5AA8 8FA30018 */  lw    $v1, 0x18($sp)
/* B6CC4C 800F5AAC 305900FF */  andi  $t9, $v0, 0xff
/* B6CC50 800F5AB0 00001025 */  move  $v0, $zero
/* B6CC54 800F5AB4 14790003 */  bne   $v1, $t9, .L800F5AC4
/* B6CC58 800F5AB8 8FBF0014 */   lw    $ra, 0x14($sp)
/* B6CC5C 800F5ABC 10000001 */  b     .L800F5AC4
/* B6CC60 800F5AC0 24020001 */   li    $v0, 1
.L800F5AC4:
/* B6CC64 800F5AC4 03E00008 */  jr    $ra
/* B6CC68 800F5AC8 27BD0020 */   addiu $sp, $sp, 0x20

