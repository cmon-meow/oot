.rdata
glabel D_809E907C
    .asciz "../z_en_dekubaba.c"
    .balign 4

glabel D_809E9090
    .asciz "../z_en_dekubaba.c"
    .balign 4

glabel D_809E90A4
    .asciz "../z_en_dekubaba.c"
    .balign 4

.late_rodata
glabel D_809E91CC
    .float 0.01

.text
glabel func_809E86B8
/* 02EE8 809E86B8 27BDFF10 */  addiu   $sp, $sp, 0xFF10           ## $sp = FFFFFF10
/* 02EEC 809E86BC AFBF005C */  sw      $ra, 0x005C($sp)
/* 02EF0 809E86C0 AFBE0058 */  sw      $s8, 0x0058($sp)
/* 02EF4 809E86C4 AFB70054 */  sw      $s7, 0x0054($sp)
/* 02EF8 809E86C8 AFB60050 */  sw      $s6, 0x0050($sp)
/* 02EFC 809E86CC AFB5004C */  sw      $s5, 0x004C($sp)
/* 02F00 809E86D0 AFB40048 */  sw      $s4, 0x0048($sp)
/* 02F04 809E86D4 AFB30044 */  sw      $s3, 0x0044($sp)
/* 02F08 809E86D8 AFB20040 */  sw      $s2, 0x0040($sp)
/* 02F0C 809E86DC AFB1003C */  sw      $s1, 0x003C($sp)
/* 02F10 809E86E0 AFB00038 */  sw      $s0, 0x0038($sp)
/* 02F14 809E86E4 F7BA0030 */  sdc1    $f26, 0x0030($sp)
/* 02F18 809E86E8 F7B80028 */  sdc1    $f24, 0x0028($sp)
/* 02F1C 809E86EC F7B60020 */  sdc1    $f22, 0x0020($sp)
/* 02F20 809E86F0 F7B40018 */  sdc1    $f20, 0x0018($sp)
/* 02F24 809E86F4 AFA500F4 */  sw      $a1, 0x00F4($sp)
/* 02F28 809E86F8 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 02F2C 809E86FC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02F30 809E8700 3C06809F */  lui     $a2, %hi(D_809E907C)       ## $a2 = 809F0000
/* 02F34 809E8704 24C6907C */  addiu   $a2, $a2, %lo(D_809E907C)  ## $a2 = 809E907C
/* 02F38 809E8708 27A40088 */  addiu   $a0, $sp, 0x0088           ## $a0 = FFFFFF98
/* 02F3C 809E870C 240709B7 */  addiu   $a3, $zero, 0x09B7         ## $a3 = 000009B7
/* 02F40 809E8710 0C031AB1 */  jal     Graph_OpenDisps
/* 02F44 809E8714 00A0A025 */  or      $s4, $a1, $zero            ## $s4 = 00000000
/* 02F48 809E8718 8E1801C0 */  lw      $t8, 0x01C0($s0)           ## 000001C0
/* 02F4C 809E871C 3C0F809E */  lui     $t7, %hi(func_809E7BB0)    ## $t7 = 809E0000
/* 02F50 809E8720 25EF7BB0 */  addiu   $t7, $t7, %lo(func_809E7BB0) ## $t7 = 809E7BB0
/* 02F54 809E8724 15F80004 */  bne     $t7, $t8, .L809E8738
/* 02F58 809E8728 3C01809F */  lui     $at, %hi(D_809E91CC)       ## $at = 809F0000
/* 02F5C 809E872C 24190002 */  addiu   $t9, $zero, 0x0002         ## $t9 = 00000002
/* 02F60 809E8730 10000003 */  beq     $zero, $zero, .L809E8740
/* 02F64 809E8734 AFB9009C */  sw      $t9, 0x009C($sp)
.L809E8738:
/* 02F68 809E8738 24080003 */  addiu   $t0, $zero, 0x0003         ## $t0 = 00000003
/* 02F6C 809E873C AFA8009C */  sw      $t0, 0x009C($sp)
.L809E8740:
/* 02F70 809E8740 C6040230 */  lwc1    $f4, 0x0230($s0)           ## 00000230
/* 02F74 809E8744 C42691CC */  lwc1    $f6, %lo(D_809E91CC)($at)
/* 02F78 809E8748 C60C0024 */  lwc1    $f12, 0x0024($s0)          ## 00000024
/* 02F7C 809E874C C60E0028 */  lwc1    $f14, 0x0028($s0)          ## 00000028
/* 02F80 809E8750 46062502 */  mul.s   $f20, $f4, $f6
/* 02F84 809E8754 8E06002C */  lw      $a2, 0x002C($s0)           ## 0000002C
/* 02F88 809E8758 0C034261 */  jal     Matrix_Translate
/* 02F8C 809E875C 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 02F90 809E8760 4406A000 */  mfc1    $a2, $f20
/* 02F94 809E8764 4600A306 */  mov.s   $f12, $f20
/* 02F98 809E8768 4600A386 */  mov.s   $f14, $f20
/* 02F9C 809E876C 0C0342A3 */  jal     Matrix_Scale
/* 02FA0 809E8770 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 02FA4 809E8774 0C034236 */  jal     Matrix_Get
/* 02FA8 809E8778 27A400B0 */  addiu   $a0, $sp, 0x00B0           ## $a0 = FFFFFFC0
/* 02FAC 809E877C 92090114 */  lbu     $t1, 0x0114($s0)           ## 00000114
/* 02FB0 809E8780 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 02FB4 809E8784 00009025 */  or      $s2, $zero, $zero          ## $s2 = 00000000
/* 02FB8 809E8788 1120000C */  beq     $t1, $zero, .L809E87BC
/* 02FBC 809E878C 02009825 */  or      $s3, $s0, $zero            ## $s3 = 00000000
/* 02FC0 809E8790 4481B000 */  mtc1    $at, $f22                  ## $f22 = 20.00
/* 02FC4 809E8794 C6080230 */  lwc1    $f8, 0x0230($s0)           ## 00000230
/* 02FC8 809E8798 C6100028 */  lwc1    $f16, 0x0028($s0)          ## 00000028
/* 02FCC 809E879C C60A0024 */  lwc1    $f10, 0x0024($s0)          ## 00000024
/* 02FD0 809E87A0 46164682 */  mul.s   $f26, $f8, $f22
/* 02FD4 809E87A4 C604002C */  lwc1    $f4, 0x002C($s0)           ## 0000002C
/* 02FD8 809E87A8 E60A0164 */  swc1    $f10, 0x0164($s0)          ## 00000164
/* 02FDC 809E87AC E604016C */  swc1    $f4, 0x016C($s0)           ## 0000016C
/* 02FE0 809E87B0 461A8481 */  sub.s   $f18, $f16, $f26
/* 02FE4 809E87B4 E6120168 */  swc1    $f18, 0x0168($s0)          ## 00000168
/* 02FE8 809E87B8 E7BA00A4 */  swc1    $f26, 0x00A4($sp)
.L809E87BC:
/* 02FEC 809E87BC 8FAA009C */  lw      $t2, 0x009C($sp)
/* 02FF0 809E87C0 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 02FF4 809E87C4 4481B000 */  mtc1    $at, $f22                  ## $f22 = 20.00
/* 02FF8 809E87C8 1940006F */  blez    $t2, .L809E8988
/* 02FFC 809E87CC C7BA00A4 */  lwc1    $f26, 0x00A4($sp)
/* 03000 809E87D0 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 03004 809E87D4 3C15809F */  lui     $s5, %hi(D_809E902C)       ## $s5 = 809F0000
/* 03008 809E87D8 4481C000 */  mtc1    $at, $f24                  ## $f24 = 40.00
/* 0300C 809E87DC 26B5902C */  addiu   $s5, $s5, %lo(D_809E902C)  ## $s5 = 809E902C
/* 03010 809E87E0 24160033 */  addiu   $s6, $zero, 0x0033         ## $s6 = 00000033
/* 03014 809E87E4 261E0238 */  addiu   $s8, $s0, 0x0238           ## $s8 = 00000238
/* 03018 809E87E8 24170034 */  addiu   $s7, $zero, 0x0034         ## $s7 = 00000034
.L809E87EC:
/* 0301C 809E87EC 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 03020 809E87F0 866401CA */  lh      $a0, 0x01CA($s3)           ## 000001CA
/* 03024 809E87F4 4600B182 */  mul.s   $f6, $f22, $f0
/* 03028 809E87F8 C6080230 */  lwc1    $f8, 0x0230($s0)           ## 00000230
/* 0302C 809E87FC C7B000E4 */  lwc1    $f16, 0x00E4($sp)
/* 03030 809E8800 46083282 */  mul.s   $f10, $f6, $f8
/* 03034 809E8804 460A8480 */  add.s   $f18, $f16, $f10
/* 03038 809E8808 E7B200E4 */  swc1    $f18, 0x00E4($sp)
/* 0303C 809E880C 0C01DE0D */  jal     Math_CosS
              ## coss?
/* 03040 809E8810 866401CA */  lh      $a0, 0x01CA($s3)           ## 000001CA
/* 03044 809E8814 46160102 */  mul.s   $f4, $f0, $f22
/* 03048 809E8818 C6060230 */  lwc1    $f6, 0x0230($s0)           ## 00000230
/* 0304C 809E881C 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 03050 809E8820 46062502 */  mul.s   $f20, $f4, $f6
/* 03054 809E8824 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 03058 809E8828 00000000 */  nop
/* 0305C 809E882C 4600A402 */  mul.s   $f16, $f20, $f0
/* 03060 809E8830 C7A800E0 */  lwc1    $f8, 0x00E0($sp)
/* 03064 809E8834 46104281 */  sub.s   $f10, $f8, $f16
/* 03068 809E8838 E7AA00E0 */  swc1    $f10, 0x00E0($sp)
/* 0306C 809E883C 0C01DE0D */  jal     Math_CosS
              ## coss?
/* 03070 809E8840 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 03074 809E8844 4600A102 */  mul.s   $f4, $f20, $f0
/* 03078 809E8848 C7B200E8 */  lwc1    $f18, 0x00E8($sp)
/* 0307C 809E884C 27A400B0 */  addiu   $a0, $sp, 0x00B0           ## $a0 = FFFFFFC0
/* 03080 809E8850 46049181 */  sub.s   $f6, $f18, $f4
/* 03084 809E8854 0C03423F */  jal     Matrix_Put
/* 03088 809E8858 E7A600E8 */  swc1    $f6, 0x00E8($sp)
/* 0308C 809E885C 866401CA */  lh      $a0, 0x01CA($s3)           ## 000001CA
/* 03090 809E8860 860500B6 */  lh      $a1, 0x00B6($s0)           ## 000000B6
/* 03094 809E8864 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 03098 809E8868 0C034421 */  jal     Matrix_RotateRPY
/* 0309C 809E886C 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 030A0 809E8870 8E8202C0 */  lw      $v0, 0x02C0($s4)           ## 000002C0
/* 030A4 809E8874 3C0CDA38 */  lui     $t4, 0xDA38                ## $t4 = DA380000
/* 030A8 809E8878 358C0003 */  ori     $t4, $t4, 0x0003           ## $t4 = DA380003
/* 030AC 809E887C 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 030B0 809E8880 AE8B02C0 */  sw      $t3, 0x02C0($s4)           ## 000002C0
/* 030B4 809E8884 AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
/* 030B8 809E8888 8FAD00F4 */  lw      $t5, 0x00F4($sp)
/* 030BC 809E888C 3C05809F */  lui     $a1, %hi(D_809E9090)       ## $a1 = 809F0000
/* 030C0 809E8890 24A59090 */  addiu   $a1, $a1, %lo(D_809E9090)  ## $a1 = 809E9090
/* 030C4 809E8894 240609E5 */  addiu   $a2, $zero, 0x09E5         ## $a2 = 000009E5
/* 030C8 809E8898 00408825 */  or      $s1, $v0, $zero            ## $s1 = 00000000
/* 030CC 809E889C 0C0346A2 */  jal     Matrix_NewMtx
/* 030D0 809E88A0 8DA40000 */  lw      $a0, 0x0000($t5)           ## 00000000
/* 030D4 809E88A4 AE220004 */  sw      $v0, 0x0004($s1)           ## 00000004
/* 030D8 809E88A8 8E8202C0 */  lw      $v0, 0x02C0($s4)           ## 000002C0
/* 030DC 809E88AC 3C0FDE00 */  lui     $t7, 0xDE00                ## $t7 = DE000000
/* 030E0 809E88B0 02C02025 */  or      $a0, $s6, $zero            ## $a0 = 00000033
/* 030E4 809E88B4 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 030E8 809E88B8 AE8E02C0 */  sw      $t6, 0x02C0($s4)           ## 000002C0
/* 030EC 809E88BC AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 030F0 809E88C0 8EB80000 */  lw      $t8, 0x0000($s5)           ## 809E902C
/* 030F4 809E88C4 03C02825 */  or      $a1, $s8, $zero            ## $a1 = 00000238
/* 030F8 809E88C8 0C018A29 */  jal     Collider_UpdateSpheres
/* 030FC 809E88CC AC580004 */  sw      $t8, 0x0004($v0)           ## 00000004
/* 03100 809E88D0 02E02025 */  or      $a0, $s7, $zero            ## $a0 = 00000034
/* 03104 809E88D4 0C018A29 */  jal     Collider_UpdateSpheres
/* 03108 809E88D8 03C02825 */  or      $a1, $s8, $zero            ## $a1 = 00000238
/* 0310C 809E88DC 16400015 */  bne     $s2, $zero, .L809E8934
/* 03110 809E88E0 2A410002 */  slti    $at, $s2, 0x0002
/* 03114 809E88E4 8E0801C0 */  lw      $t0, 0x01C0($s0)           ## 000001C0
/* 03118 809E88E8 3C19809E */  lui     $t9, %hi(func_809E7A88)    ## $t9 = 809E0000
/* 0311C 809E88EC 27397A88 */  addiu   $t9, $t9, %lo(func_809E7A88) ## $t9 = 809E7A88
/* 03120 809E88F0 13280007 */  beq     $t9, $t0, .L809E8910
/* 03124 809E88F4 C7A800E0 */  lwc1    $f8, 0x00E0($sp)
/* 03128 809E88F8 E6080038 */  swc1    $f8, 0x0038($s0)           ## 00000038
/* 0312C 809E88FC C7B000E4 */  lwc1    $f16, 0x00E4($sp)
/* 03130 809E8900 E610003C */  swc1    $f16, 0x003C($s0)          ## 0000003C
/* 03134 809E8904 C7AA00E8 */  lwc1    $f10, 0x00E8($sp)
/* 03138 809E8908 1000000A */  beq     $zero, $zero, .L809E8934
/* 0313C 809E890C E60A0040 */  swc1    $f10, 0x0040($s0)          ## 00000040
.L809E8910:
/* 03140 809E8910 C6060230 */  lwc1    $f6, 0x0230($s0)           ## 00000230
/* 03144 809E8914 C604000C */  lwc1    $f4, 0x000C($s0)           ## 0000000C
/* 03148 809E8918 C6120008 */  lwc1    $f18, 0x0008($s0)          ## 00000008
/* 0314C 809E891C 4606C202 */  mul.s   $f8, $f24, $f6
/* 03150 809E8920 C60A0010 */  lwc1    $f10, 0x0010($s0)          ## 00000010
/* 03154 809E8924 E6120038 */  swc1    $f18, 0x0038($s0)          ## 00000038
/* 03158 809E8928 E60A0040 */  swc1    $f10, 0x0040($s0)          ## 00000040
/* 0315C 809E892C 46082400 */  add.s   $f16, $f4, $f8
/* 03160 809E8930 E610003C */  swc1    $f16, 0x003C($s0)          ## 0000003C
.L809E8934:
/* 03164 809E8934 1020000E */  beq     $at, $zero, .L809E8970
/* 03168 809E8938 26730002 */  addiu   $s3, $s3, 0x0002           ## $s3 = 00000002
/* 0316C 809E893C 92090114 */  lbu     $t1, 0x0114($s0)           ## 00000114
/* 03170 809E8940 00125080 */  sll     $t2, $s2,  2
/* 03174 809E8944 01525023 */  subu    $t2, $t2, $s2
/* 03178 809E8948 11200009 */  beq     $t1, $zero, .L809E8970
/* 0317C 809E894C C7B200E0 */  lwc1    $f18, 0x00E0($sp)
/* 03180 809E8950 000A5080 */  sll     $t2, $t2,  2
/* 03184 809E8954 020A1021 */  addu    $v0, $s0, $t2
/* 03188 809E8958 E452014C */  swc1    $f18, 0x014C($v0)          ## 0000014C
/* 0318C 809E895C C7A600E4 */  lwc1    $f6, 0x00E4($sp)
/* 03190 809E8960 461A3101 */  sub.s   $f4, $f6, $f26
/* 03194 809E8964 E4440150 */  swc1    $f4, 0x0150($v0)           ## 00000150
/* 03198 809E8968 C7A800E8 */  lwc1    $f8, 0x00E8($sp)
/* 0319C 809E896C E4480154 */  swc1    $f8, 0x0154($v0)           ## 00000154
.L809E8970:
/* 031A0 809E8970 8FAB009C */  lw      $t3, 0x009C($sp)
/* 031A4 809E8974 26520001 */  addiu   $s2, $s2, 0x0001           ## $s2 = 00000001
/* 031A8 809E8978 26B50004 */  addiu   $s5, $s5, 0x0004           ## $s5 = 809E9030
/* 031AC 809E897C 26D60002 */  addiu   $s6, $s6, 0x0002           ## $s6 = 00000035
/* 031B0 809E8980 164BFF9A */  bne     $s2, $t3, .L809E87EC
/* 031B4 809E8984 26F70002 */  addiu   $s7, $s7, 0x0002           ## $s7 = 00000036
.L809E8988:
/* 031B8 809E8988 8FAC00F4 */  lw      $t4, 0x00F4($sp)
/* 031BC 809E898C 3C06809F */  lui     $a2, %hi(D_809E90A4)       ## $a2 = 809F0000
/* 031C0 809E8990 24C690A4 */  addiu   $a2, $a2, %lo(D_809E90A4)  ## $a2 = 809E90A4
/* 031C4 809E8994 27A40088 */  addiu   $a0, $sp, 0x0088           ## $a0 = FFFFFF98
/* 031C8 809E8998 24070A09 */  addiu   $a3, $zero, 0x0A09         ## $a3 = 00000A09
/* 031CC 809E899C 0C031AD5 */  jal     Graph_CloseDisps
/* 031D0 809E89A0 8D850000 */  lw      $a1, 0x0000($t4)           ## 00000000
/* 031D4 809E89A4 8FBF005C */  lw      $ra, 0x005C($sp)
/* 031D8 809E89A8 D7B40018 */  ldc1    $f20, 0x0018($sp)
/* 031DC 809E89AC D7B60020 */  ldc1    $f22, 0x0020($sp)
/* 031E0 809E89B0 D7B80028 */  ldc1    $f24, 0x0028($sp)
/* 031E4 809E89B4 D7BA0030 */  ldc1    $f26, 0x0030($sp)
/* 031E8 809E89B8 8FB00038 */  lw      $s0, 0x0038($sp)
/* 031EC 809E89BC 8FB1003C */  lw      $s1, 0x003C($sp)
/* 031F0 809E89C0 8FB20040 */  lw      $s2, 0x0040($sp)
/* 031F4 809E89C4 8FB30044 */  lw      $s3, 0x0044($sp)
/* 031F8 809E89C8 8FB40048 */  lw      $s4, 0x0048($sp)
/* 031FC 809E89CC 8FB5004C */  lw      $s5, 0x004C($sp)
/* 03200 809E89D0 8FB60050 */  lw      $s6, 0x0050($sp)
/* 03204 809E89D4 8FB70054 */  lw      $s7, 0x0054($sp)
/* 03208 809E89D8 8FBE0058 */  lw      $s8, 0x0058($sp)
/* 0320C 809E89DC 03E00008 */  jr      $ra
/* 03210 809E89E0 27BD00F0 */  addiu   $sp, $sp, 0x00F0           ## $sp = 00000000
