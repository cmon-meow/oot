glabel func_800F2A04
/* B69BA4 800F2A04 3C0E8017 */  lui   $t6, %hi(D_8016BAB0) # $t6, 0x8017
/* B69BA8 800F2A08 8DCEBAB0 */  lw    $t6, %lo(D_8016BAB0)($t6)
/* B69BAC 800F2A0C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B69BB0 800F2A10 AFBF001C */  sw    $ra, 0x1c($sp)
/* B69BB4 800F2A14 31CF0002 */  andi  $t7, $t6, 2
/* B69BB8 800F2A18 11E00003 */  beqz  $t7, .L800F2A28
/* B69BBC 800F2A1C 3C058017 */   lui   $a1, %hi(D_8016BAB8) # $a1, 0x8017
/* B69BC0 800F2A20 10000002 */  b     .L800F2A2C
/* B69BC4 800F2A24 24060008 */   li    $a2, 8
.L800F2A28:
/* B69BC8 800F2A28 24060001 */  li    $a2, 1
.L800F2A2C:
/* B69BCC 800F2A2C 8CA5BAB8 */  lw    $a1, %lo(D_8016BAB8)($a1)
/* B69BD0 800F2A30 3C098013 */  lui   $t1, %hi(D_80131F18) # $t1, 0x8013
/* B69BD4 800F2A34 25291F18 */  addiu $t1, %lo(D_80131F18) # addiu $t1, $t1, 0x1f18
/* B69BD8 800F2A38 30B80800 */  andi  $t8, $a1, 0x800
/* B69BDC 800F2A3C 13000008 */  beqz  $t8, .L800F2A60
/* B69BE0 800F2A40 30AC0400 */   andi  $t4, $a1, 0x400
/* B69BE4 800F2A44 91230000 */  lbu   $v1, ($t1)
/* B69BE8 800F2A48 240B0003 */  li    $t3, 3
/* B69BEC 800F2A4C 18600003 */  blez  $v1, .L800F2A5C
/* B69BF0 800F2A50 2479FFFF */   addiu $t9, $v1, -1
/* B69BF4 800F2A54 10000002 */  b     .L800F2A60
/* B69BF8 800F2A58 A1390000 */   sb    $t9, ($t1)
.L800F2A5C:
/* B69BFC 800F2A5C A12B0000 */  sb    $t3, ($t1)
.L800F2A60:
/* B69C00 800F2A60 3C098013 */  lui   $t1, %hi(D_80131F18) # $t1, 0x8013
/* B69C04 800F2A64 11800008 */  beqz  $t4, .L800F2A88
/* B69C08 800F2A68 25291F18 */   addiu $t1, %lo(D_80131F18) # addiu $t1, $t1, 0x1f18
/* B69C0C 800F2A6C 91230000 */  lbu   $v1, ($t1)
/* B69C10 800F2A70 28610003 */  slti  $at, $v1, 3
/* B69C14 800F2A74 10200003 */  beqz  $at, .L800F2A84
/* B69C18 800F2A78 246D0001 */   addiu $t5, $v1, 1
/* B69C1C 800F2A7C 10000002 */  b     .L800F2A88
/* B69C20 800F2A80 A12D0000 */   sb    $t5, ($t1)
.L800F2A84:
/* B69C24 800F2A84 A1200000 */  sb    $zero, ($t1)
.L800F2A88:
/* B69C28 800F2A88 30AE0200 */  andi  $t6, $a1, 0x200
/* B69C2C 800F2A8C 11C00036 */  beqz  $t6, .L800F2B68
/* B69C30 800F2A90 00000000 */   nop   
/* B69C34 800F2A94 91230000 */  lbu   $v1, ($t1)
/* B69C38 800F2A98 28610002 */  slti  $at, $v1, 2
/* B69C3C 800F2A9C 1020001A */  beqz  $at, .L800F2B08
/* B69C40 800F2AA0 00602025 */   move  $a0, $v1
/* B69C44 800F2AA4 1460000F */  bnez  $v1, .L800F2AE4
/* B69C48 800F2AA8 3C088013 */   lui   $t0, %hi(D_80131F20)
/* B69C4C 800F2AAC 3C088013 */  lui   $t0, %hi(D_80131F20) # $t0, 0x8013
/* B69C50 800F2AB0 25081F20 */  addiu $t0, %lo(D_80131F20) # addiu $t0, $t0, 0x1f20
/* B69C54 800F2AB4 00037840 */  sll   $t7, $v1, 1
/* B69C58 800F2AB8 010F1021 */  addu  $v0, $t0, $t7
/* B69C5C 800F2ABC 94440000 */  lhu   $a0, ($v0)
/* B69C60 800F2AC0 3C198013 */  lui   $t9, %hi(D_80131E24) # $t9, 0x8013
/* B69C64 800F2AC4 18800003 */  blez  $a0, .L800F2AD4
/* B69C68 800F2AC8 2498FFFF */   addiu $t8, $a0, -1
/* B69C6C 800F2ACC 10000026 */  b     .L800F2B68
/* B69C70 800F2AD0 A4580000 */   sh    $t8, ($v0)
.L800F2AD4:
/* B69C74 800F2AD4 97391E24 */  lhu   $t9, %lo(D_80131E24)($t9)
/* B69C78 800F2AD8 272BFFFF */  addiu $t3, $t9, -1
/* B69C7C 800F2ADC 10000022 */  b     .L800F2B68
/* B69C80 800F2AE0 A44B0000 */   sh    $t3, ($v0)
.L800F2AE4:
/* B69C84 800F2AE4 25081F20 */  addiu $t0, %lo(D_80131F20)
/* B69C88 800F2AE8 00036040 */  sll   $t4, $v1, 1
/* B69C8C 800F2AEC 010C1021 */  addu  $v0, $t0, $t4
/* B69C90 800F2AF0 944D0000 */  lhu   $t5, ($v0)
/* B69C94 800F2AF4 01A67823 */  subu  $t7, $t5, $a2
/* B69C98 800F2AF8 A44F0000 */  sh    $t7, ($v0)
/* B69C9C 800F2AFC 31F801FF */  andi  $t8, $t7, 0x1ff
/* B69CA0 800F2B00 10000019 */  b     .L800F2B68
/* B69CA4 800F2B04 A4580000 */   sh    $t8, ($v0)
.L800F2B08:
/* B69CA8 800F2B08 24010003 */  li    $at, 3
/* B69CAC 800F2B0C 14810010 */  bne   $a0, $at, .L800F2B50
/* B69CB0 800F2B10 3C088013 */   lui   $t0, %hi(D_80131F20) # $t0, 0x8013
/* B69CB4 800F2B14 25081F20 */  addiu $t0, %lo(D_80131F20) # addiu $t0, $t0, 0x1f20
/* B69CB8 800F2B18 95190000 */  lhu   $t9, ($t0)
/* B69CBC 800F2B1C 3C0C8013 */  lui   $t4, %hi(D_8013331C)
/* B69CC0 800F2B20 950D0002 */  lhu   $t5, 2($t0)
/* B69CC4 800F2B24 00195880 */  sll   $t3, $t9, 2
/* B69CC8 800F2B28 018B6021 */  addu  $t4, $t4, $t3
/* B69CCC 800F2B2C 8D8C331C */  lw    $t4, %lo(D_8013331C)($t4)
/* B69CD0 800F2B30 000D7080 */  sll   $t6, $t5, 2
/* B69CD4 800F2B34 3C058017 */  lui   $a1, %hi(D_8016BAB8) # $a1, 0x8017
/* B69CD8 800F2B38 018E1021 */  addu  $v0, $t4, $t6
/* B69CDC 800F2B3C 904F0000 */  lbu   $t7, ($v0)
/* B69CE0 800F2B40 01E6C023 */  subu  $t8, $t7, $a2
/* B69CE4 800F2B44 A0580000 */  sb    $t8, ($v0)
/* B69CE8 800F2B48 10000007 */  b     .L800F2B68
/* B69CEC 800F2B4C 8CA5BAB8 */   lw    $a1, %lo(D_8016BAB8)($a1)
.L800F2B50:
/* B69CF0 800F2B50 3C0A8013 */  lui   $t2, %hi(D_80131F1C) # $t2, 0x8013
/* B69CF4 800F2B54 254A1F1C */  addiu $t2, %lo(D_80131F1C) # addiu $t2, $t2, 0x1f1c
/* B69CF8 800F2B58 91590000 */  lbu   $t9, ($t2)
/* B69CFC 800F2B5C 272BFFFF */  addiu $t3, $t9, -1
/* B69D00 800F2B60 316D000F */  andi  $t5, $t3, 0xf
/* B69D04 800F2B64 A14D0000 */  sb    $t5, ($t2)
.L800F2B68:
/* B69D08 800F2B68 3C088013 */  lui   $t0, %hi(D_80131F20) # $t0, 0x8013
/* B69D0C 800F2B6C 3C0A8013 */  lui   $t2, %hi(D_80131F1C) # $t2, 0x8013
/* B69D10 800F2B70 30AC0100 */  andi  $t4, $a1, 0x100
/* B69D14 800F2B74 254A1F1C */  addiu $t2, %lo(D_80131F1C) # addiu $t2, $t2, 0x1f1c
/* B69D18 800F2B78 1180002E */  beqz  $t4, .L800F2C34
/* B69D1C 800F2B7C 25081F20 */   addiu $t0, %lo(D_80131F20) # addiu $t0, $t0, 0x1f20
/* B69D20 800F2B80 91230000 */  lbu   $v1, ($t1)
/* B69D24 800F2B84 28610002 */  slti  $at, $v1, 2
/* B69D28 800F2B88 10200015 */  beqz  $at, .L800F2BE0
/* B69D2C 800F2B8C 00602025 */   move  $a0, $v1
/* B69D30 800F2B90 00037040 */  sll   $t6, $v1, 1
/* B69D34 800F2B94 1460000C */  bnez  $v1, .L800F2BC8
/* B69D38 800F2B98 010E1021 */   addu  $v0, $t0, $t6
/* B69D3C 800F2B9C 3C0F8013 */  lui   $t7, %hi(D_80131E24) # $t7, 0x8013
/* B69D40 800F2BA0 95EF1E24 */  lhu   $t7, %lo(D_80131E24)($t7)
/* B69D44 800F2BA4 94440000 */  lhu   $a0, ($v0)
/* B69D48 800F2BA8 25F8FFFF */  addiu $t8, $t7, -1
/* B69D4C 800F2BAC 0098082A */  slt   $at, $a0, $t8
/* B69D50 800F2BB0 10200003 */  beqz  $at, .L800F2BC0
/* B69D54 800F2BB4 24990001 */   addiu $t9, $a0, 1
/* B69D58 800F2BB8 1000001E */  b     .L800F2C34
/* B69D5C 800F2BBC A4590000 */   sh    $t9, ($v0)
.L800F2BC0:
/* B69D60 800F2BC0 1000001C */  b     .L800F2C34
/* B69D64 800F2BC4 A4400000 */   sh    $zero, ($v0)
.L800F2BC8:
/* B69D68 800F2BC8 944B0000 */  lhu   $t3, ($v0)
/* B69D6C 800F2BCC 01666021 */  addu  $t4, $t3, $a2
/* B69D70 800F2BD0 A44C0000 */  sh    $t4, ($v0)
/* B69D74 800F2BD4 318E01FF */  andi  $t6, $t4, 0x1ff
/* B69D78 800F2BD8 10000016 */  b     .L800F2C34
/* B69D7C 800F2BDC A44E0000 */   sh    $t6, ($v0)
.L800F2BE0:
/* B69D80 800F2BE0 24010003 */  li    $at, 3
/* B69D84 800F2BE4 54810010 */  bnel  $a0, $at, .L800F2C28
/* B69D88 800F2BE8 914F0000 */   lbu   $t7, ($t2)
/* B69D8C 800F2BEC 950F0000 */  lhu   $t7, ($t0)
/* B69D90 800F2BF0 3C198013 */  lui   $t9, %hi(D_8013331C)
/* B69D94 800F2BF4 950B0002 */  lhu   $t3, 2($t0)
/* B69D98 800F2BF8 000FC080 */  sll   $t8, $t7, 2
/* B69D9C 800F2BFC 0338C821 */  addu  $t9, $t9, $t8
/* B69DA0 800F2C00 8F39331C */  lw    $t9, %lo(D_8013331C)($t9)
/* B69DA4 800F2C04 000B6880 */  sll   $t5, $t3, 2
/* B69DA8 800F2C08 3C058017 */  lui   $a1, %hi(D_8016BAB8) # $a1, 0x8017
/* B69DAC 800F2C0C 032D1021 */  addu  $v0, $t9, $t5
/* B69DB0 800F2C10 904C0000 */  lbu   $t4, ($v0)
/* B69DB4 800F2C14 01867021 */  addu  $t6, $t4, $a2
/* B69DB8 800F2C18 A04E0000 */  sb    $t6, ($v0)
/* B69DBC 800F2C1C 10000005 */  b     .L800F2C34
/* B69DC0 800F2C20 8CA5BAB8 */   lw    $a1, %lo(D_8016BAB8)($a1)
/* B69DC4 800F2C24 914F0000 */  lbu   $t7, ($t2)
.L800F2C28:
/* B69DC8 800F2C28 25F80001 */  addiu $t8, $t7, 1
/* B69DCC 800F2C2C 330B000F */  andi  $t3, $t8, 0xf
/* B69DD0 800F2C30 A14B0000 */  sb    $t3, ($t2)
.L800F2C34:
/* B69DD4 800F2C34 30B98000 */  andi  $t9, $a1, 0x8000
/* B69DD8 800F2C38 5320001A */  beql  $t9, $zero, .L800F2CA4
/* B69DDC 800F2C3C 30AB4000 */   andi  $t3, $a1, 0x4000
/* B69DE0 800F2C40 950C0000 */  lhu   $t4, ($t0)
/* B69DE4 800F2C44 950D0002 */  lhu   $t5, 2($t0)
/* B69DE8 800F2C48 3C078013 */  lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* B69DEC 800F2C4C 000C7B00 */  sll   $t7, $t4, 0xc
/* B69DF0 800F2C50 3C188013 */  lui   $t8, %hi(D_801333E8) # $t8, 0x8013
/* B69DF4 800F2C54 01AF2021 */  addu  $a0, $t5, $t7
/* B69DF8 800F2C58 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* B69DFC 800F2C5C 24840800 */  addiu $a0, $a0, 0x800
/* B69E00 800F2C60 271833E8 */  addiu $t8, %lo(D_801333E8) # addiu $t8, $t8, 0x33e8
/* B69E04 800F2C64 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* B69E08 800F2C68 3084FFFF */  andi  $a0, $a0, 0xffff
/* B69E0C 800F2C6C 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* B69E10 800F2C70 AFB80014 */  sw    $t8, 0x14($sp)
/* B69E14 800F2C74 AFA70010 */  sw    $a3, 0x10($sp)
/* B69E18 800F2C78 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* B69E1C 800F2C7C 24060004 */   li    $a2, 4
/* B69E20 800F2C80 3C088013 */  lui   $t0, %hi(D_80131F20) # $t0, 0x8013
/* B69E24 800F2C84 3C098013 */  lui   $t1, %hi(D_80131F18) # $t1, 0x8013
/* B69E28 800F2C88 3C0A8013 */  lui   $t2, %hi(D_80131F1C) # $t2, 0x8013
/* B69E2C 800F2C8C 3C058017 */  lui   $a1, %hi(D_8016BAB8) # $a1, 0x8017
/* B69E30 800F2C90 8CA5BAB8 */  lw    $a1, %lo(D_8016BAB8)($a1)
/* B69E34 800F2C94 254A1F1C */  addiu $t2, %lo(D_80131F1C) # addiu $t2, $t2, 0x1f1c
/* B69E38 800F2C98 25291F18 */  addiu $t1, %lo(D_80131F18) # addiu $t1, $t1, 0x1f18
/* B69E3C 800F2C9C 25081F20 */  addiu $t0, %lo(D_80131F20) # addiu $t0, $t0, 0x1f20
/* B69E40 800F2CA0 30AB4000 */  andi  $t3, $a1, 0x4000
.L800F2CA4:
/* B69E44 800F2CA4 5160000C */  beql  $t3, $zero, .L800F2CD8
/* B69E48 800F2CA8 30B90004 */   andi  $t9, $a1, 4
/* B69E4C 800F2CAC 0C03E1E8 */  jal   func_800F87A0
/* B69E50 800F2CB0 91040001 */   lbu   $a0, 1($t0)
/* B69E54 800F2CB4 3C088013 */  lui   $t0, %hi(D_80131F20) # $t0, 0x8013
/* B69E58 800F2CB8 3C098013 */  lui   $t1, %hi(D_80131F18) # $t1, 0x8013
/* B69E5C 800F2CBC 3C0A8013 */  lui   $t2, %hi(D_80131F1C) # $t2, 0x8013
/* B69E60 800F2CC0 3C058017 */  lui   $a1, %hi(D_8016BAB8) # $a1, 0x8017
/* B69E64 800F2CC4 8CA5BAB8 */  lw    $a1, %lo(D_8016BAB8)($a1)
/* B69E68 800F2CC8 254A1F1C */  addiu $t2, %lo(D_80131F1C) # addiu $t2, $t2, 0x1f1c
/* B69E6C 800F2CCC 25291F18 */  addiu $t1, %lo(D_80131F18) # addiu $t1, $t1, 0x1f18
/* B69E70 800F2CD0 25081F20 */  addiu $t0, %lo(D_80131F20) # addiu $t0, $t0, 0x1f20
/* B69E74 800F2CD4 30B90004 */  andi  $t9, $a1, 4
.L800F2CD8:
/* B69E78 800F2CD8 53200018 */  beql  $t9, $zero, .L800F2D3C
/* B69E7C 800F2CDC 30AE0008 */   andi  $t6, $a1, 8
/* B69E80 800F2CE0 912C0000 */  lbu   $t4, ($t1)
/* B69E84 800F2CE4 24010002 */  li    $at, 2
/* B69E88 800F2CE8 3C0F8013 */  lui   $t7, %hi(D_8013331C)
/* B69E8C 800F2CEC 55810013 */  bnel  $t4, $at, .L800F2D3C
/* B69E90 800F2CF0 30AE0008 */   andi  $t6, $a1, 8
/* B69E94 800F2CF4 950E0000 */  lhu   $t6, ($t0)
/* B69E98 800F2CF8 95180002 */  lhu   $t8, 2($t0)
/* B69E9C 800F2CFC 914C0000 */  lbu   $t4, ($t2)
/* B69EA0 800F2D00 000E6880 */  sll   $t5, $t6, 2
/* B69EA4 800F2D04 01ED7821 */  addu  $t7, $t7, $t5
/* B69EA8 800F2D08 8DEF331C */  lw    $t7, %lo(D_8013331C)($t7)
/* B69EAC 800F2D0C 00185880 */  sll   $t3, $t8, 2
/* B69EB0 800F2D10 240E000F */  li    $t6, 15
/* B69EB4 800F2D14 01EB1021 */  addu  $v0, $t7, $t3
/* B69EB8 800F2D18 94590002 */  lhu   $t9, 2($v0)
/* B69EBC 800F2D1C 24180001 */  li    $t8, 1
/* B69EC0 800F2D20 01CC6823 */  subu  $t5, $t6, $t4
/* B69EC4 800F2D24 01B87804 */  sllv  $t7, $t8, $t5
/* B69EC8 800F2D28 032F5826 */  xor   $t3, $t9, $t7
/* B69ECC 800F2D2C A44B0002 */  sh    $t3, 2($v0)
/* B69ED0 800F2D30 3C058017 */  lui   $a1, %hi(D_8016BAB8) # $a1, 0x8017
/* B69ED4 800F2D34 8CA5BAB8 */  lw    $a1, %lo(D_8016BAB8)($a1)
/* B69ED8 800F2D38 30AE0008 */  andi  $t6, $a1, 8
.L800F2D3C:
/* B69EDC 800F2D3C 51C00008 */  beql  $t6, $zero, .L800F2D60
/* B69EE0 800F2D40 8FBF001C */   lw    $ra, 0x1c($sp)
/* B69EE4 800F2D44 91230000 */  lbu   $v1, ($t1)
/* B69EE8 800F2D48 28610002 */  slti  $at, $v1, 2
/* B69EEC 800F2D4C 10200003 */  beqz  $at, .L800F2D5C
/* B69EF0 800F2D50 00036040 */   sll   $t4, $v1, 1
/* B69EF4 800F2D54 010CC021 */  addu  $t8, $t0, $t4
/* B69EF8 800F2D58 A7000000 */  sh    $zero, ($t8)
.L800F2D5C:
/* B69EFC 800F2D5C 8FBF001C */  lw    $ra, 0x1c($sp)
.L800F2D60:
/* B69F00 800F2D60 27BD0020 */  addiu $sp, $sp, 0x20
/* B69F04 800F2D64 03E00008 */  jr    $ra
/* B69F08 800F2D68 00000000 */   nop   
