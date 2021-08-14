.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel clear_enemies
/* 97B0 80008BB0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 97B4 80008BB4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 97B8 80008BB8 3C018008 */  lui        $at, %hi(NumberOfEnemies)
/* 97BC 80008BBC AC20C990 */  sw         $zero, %lo(NumberOfEnemies)($at)
/* 97C0 80008BC0 3C018008 */  lui        $at, %hi(D_8007D08C)
/* 97C4 80008BC4 AC20D08C */  sw         $zero, %lo(D_8007D08C)($at)
/* 97C8 80008BC8 3C018008 */  lui        $at, %hi(enemyModelID)
/* 97CC 80008BCC 2403FFFF */  addiu      $v1, $zero, -1
/* 97D0 80008BD0 3C028008 */  lui        $v0, %hi(Enemy2Struct)
/* 97D4 80008BD4 2442CAC0 */  addiu      $v0, $v0, %lo(Enemy2Struct)
/* 97D8 80008BD8 A423CA0C */  sh         $v1, %lo(enemyModelID)($at)
/* 97DC 80008BDC A4430074 */  sh         $v1, 0x74($v0)
/* 97E0 80008BE0 A443019C */  sh         $v1, 0x19c($v0)
/* 97E4 80008BE4 A4430514 */  sh         $v1, 0x514($v0)
/* 97E8 80008BE8 A44303EC */  sh         $v1, 0x3ec($v0)
/* 97EC 80008BEC A44302C4 */  sh         $v1, 0x2c4($v0)
/* 97F0 80008BF0 3C0E8008 */  lui        $t6, %hi(mapFlagAllowBattles)
/* 97F4 80008BF4 95CE4F10 */  lhu        $t6, %lo(mapFlagAllowBattles)($t6)
/* 97F8 80008BF8 244204A0 */  addiu      $v0, $v0, 0x4a0
/* 97FC 80008BFC 31CF0001 */  andi       $t7, $t6, 1
/* 9800 80008C00 51E00004 */  beql       $t7, $zero, .L80008C14
/* 9804 80008C04 8FBF0014 */   lw        $ra, 0x14($sp)
/* 9808 80008C08 0C0023BD */  jal        func_80008EF4
/* 980C 80008C0C 00000000 */   nop
/* 9810 80008C10 8FBF0014 */  lw         $ra, 0x14($sp)
.L80008C14:
/* 9814 80008C14 27BD0018 */  addiu      $sp, $sp, 0x18
/* 9818 80008C18 03E00008 */  jr         $ra
/* 981C 80008C1C 00000000 */   nop

glabel unk_loadMonsters
/* 9820 80008C20 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 9824 80008C24 AFBF002C */  sw         $ra, 0x2c($sp)
/* 9828 80008C28 AFB40028 */  sw         $s4, 0x28($sp)
/* 982C 80008C2C AFB30024 */  sw         $s3, 0x24($sp)
/* 9830 80008C30 AFB20020 */  sw         $s2, 0x20($sp)
/* 9834 80008C34 AFB1001C */  sw         $s1, 0x1c($sp)
/* 9838 80008C38 AFB00018 */  sw         $s0, 0x18($sp)
/* 983C 80008C3C 3C118008 */  lui        $s1, %hi(NumberOfEnemies)
/* 9840 80008C40 8E31C990 */  lw         $s1, %lo(NumberOfEnemies)($s1)
/* 9844 80008C44 3C108008 */  lui        $s0, %hi(EnemyData)
/* 9848 80008C48 1220001B */  beqz       $s1, .L80008CB8
/* 984C 80008C4C 00000000 */   nop
/* 9850 80008C50 12200019 */  beqz       $s1, .L80008CB8
/* 9854 80008C54 2610C998 */   addiu     $s0, $s0, %lo(EnemyData)
/* 9858 80008C58 3C148005 */  lui        $s4, %hi(EnemyBattleStateFuncs)
/* 985C 80008C5C 3C138008 */  lui        $s3, %hi(tbl_MonsterModelPtrs)
/* 9860 80008C60 2673D0A8 */  addiu      $s3, $s3, %lo(tbl_MonsterModelPtrs)
/* 9864 80008C64 2694C290 */  addiu      $s4, $s4, %lo(EnemyBattleStateFuncs)
/* 9868 80008C68 2412FFFF */  addiu      $s2, $zero, -1
.L80008C6C:
/* 986C 80008C6C 860E0074 */  lh         $t6, 0x74($s0)
/* 9870 80008C70 26040024 */  addiu      $a0, $s0, 0x24
/* 9874 80008C74 124E000E */  beq        $s2, $t6, .L80008CB0
/* 9878 80008C78 00000000 */   nop
/* 987C 80008C7C 84980050 */  lh         $t8, 0x50($a0)
/* 9880 80008C80 96090000 */  lhu        $t1, ($s0)
/* 9884 80008C84 8E6F0000 */  lw         $t7, ($s3)
/* 9888 80008C88 0018C880 */  sll        $t9, $t8, 2
/* 988C 80008C8C 00095080 */  sll        $t2, $t1, 2
/* 9890 80008C90 028A5821 */  addu       $t3, $s4, $t2
/* 9894 80008C94 01F94021 */  addu       $t0, $t7, $t9
/* 9898 80008C98 8D790000 */  lw         $t9, ($t3)
/* 989C 80008C9C 8D060000 */  lw         $a2, ($t0)
/* 98A0 80008CA0 02002825 */  or         $a1, $s0, $zero
/* 98A4 80008CA4 0320F809 */  jalr       $t9
/* 98A8 80008CA8 00000000 */   nop
/* 98AC 80008CAC 2631FFFF */  addiu      $s1, $s1, -1
.L80008CB0:
/* 98B0 80008CB0 1620FFEE */  bnez       $s1, .L80008C6C
/* 98B4 80008CB4 26100128 */   addiu     $s0, $s0, 0x128
.L80008CB8:
/* 98B8 80008CB8 3C0C8009 */  lui        $t4, %hi(BattleState)
/* 98BC 80008CBC 958CC592 */  lhu        $t4, %lo(BattleState)($t4)
/* 98C0 80008CC0 318D0100 */  andi       $t5, $t4, 0x100
/* 98C4 80008CC4 51A00004 */  beql       $t5, $zero, .L80008CD8
/* 98C8 80008CC8 8FBF002C */   lw        $ra, 0x2c($sp)
/* 98CC 80008CCC 0C002CC0 */  jal        func_8000B300
/* 98D0 80008CD0 00000000 */   nop
/* 98D4 80008CD4 8FBF002C */  lw         $ra, 0x2c($sp)
.L80008CD8:
/* 98D8 80008CD8 8FB00018 */  lw         $s0, 0x18($sp)
/* 98DC 80008CDC 8FB1001C */  lw         $s1, 0x1c($sp)
/* 98E0 80008CE0 8FB20020 */  lw         $s2, 0x20($sp)
/* 98E4 80008CE4 8FB30024 */  lw         $s3, 0x24($sp)
/* 98E8 80008CE8 8FB40028 */  lw         $s4, 0x28($sp)
/* 98EC 80008CEC 03E00008 */  jr         $ra
/* 98F0 80008CF0 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_80008CF4
/* 98F4 80008CF4 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 98F8 80008CF8 AFB60048 */  sw         $s6, 0x48($sp)
/* 98FC 80008CFC 3C168008 */  lui        $s6, %hi(D_8007D08C)
/* 9900 80008D00 3C058008 */  lui        $a1, %hi(DLPtr)
/* 9904 80008D04 24A5B2FC */  addiu      $a1, $a1, %lo(DLPtr)
/* 9908 80008D08 26D6D08C */  addiu      $s6, $s6, %lo(D_8007D08C)
/* 990C 80008D0C AFBF0054 */  sw         $ra, 0x54($sp)
/* 9910 80008D10 AFBE0050 */  sw         $fp, 0x50($sp)
/* 9914 80008D14 AFB7004C */  sw         $s7, 0x4c($sp)
/* 9918 80008D18 AFB50044 */  sw         $s5, 0x44($sp)
/* 991C 80008D1C AFB40040 */  sw         $s4, 0x40($sp)
/* 9920 80008D20 AFB3003C */  sw         $s3, 0x3c($sp)
/* 9924 80008D24 AFB20038 */  sw         $s2, 0x38($sp)
/* 9928 80008D28 AFB10034 */  sw         $s1, 0x34($sp)
/* 992C 80008D2C AFB00030 */  sw         $s0, 0x30($sp)
/* 9930 80008D30 F7B40028 */  sdc1       $f20, 0x28($sp)
/* 9934 80008D34 AFA40058 */  sw         $a0, 0x58($sp)
/* 9938 80008D38 3C148008 */  lui        $s4, %hi(D_8007D090)
/* 993C 80008D3C AEC00000 */  sw         $zero, ($s6)
/* 9940 80008D40 2694D090 */  addiu      $s4, $s4, %lo(D_8007D090)
/* 9944 80008D44 8CA30000 */  lw         $v1, ($a1)
/* 9948 80008D48 3C0FBA00 */  lui        $t7, 0xba00
/* 994C 80008D4C 35EF0C02 */  ori        $t7, $t7, 0xc02
/* 9950 80008D50 246E0008 */  addiu      $t6, $v1, 8
/* 9954 80008D54 ACAE0000 */  sw         $t6, ($a1)
/* 9958 80008D58 24182000 */  addiu      $t8, $zero, 0x2000
/* 995C 80008D5C AC780004 */  sw         $t8, 4($v1)
/* 9960 80008D60 AC6F0000 */  sw         $t7, ($v1)
/* 9964 80008D64 3C138008 */  lui        $s3, %hi(NumberOfEnemies)
/* 9968 80008D68 8E73C990 */  lw         $s3, %lo(NumberOfEnemies)($s3)
/* 996C 80008D6C 3C128008 */  lui        $s2, %hi(EnemyData)
/* 9970 80008D70 2652C998 */  addiu      $s2, $s2, %lo(EnemyData)
/* 9974 80008D74 12600052 */  beqz       $s3, .L80008EC0
/* 9978 80008D78 3C1E8008 */   lui       $fp, %hi(tbl_MonsterModelPtrs)
/* 997C 80008D7C 27DED0A8 */  addiu      $fp, $fp, %lo(tbl_MonsterModelPtrs)
/* 9980 80008D80 2417FFFF */  addiu      $s7, $zero, -1
/* 9984 80008D84 2415000C */  addiu      $s5, $zero, 0xc
.L80008D88:
/* 9988 80008D88 86590074 */  lh         $t9, 0x74($s2)
/* 998C 80008D8C 26500024 */  addiu      $s0, $s2, 0x24
/* 9990 80008D90 24010001 */  addiu      $at, $zero, 1
/* 9994 80008D94 12F90048 */  beq        $s7, $t9, .L80008EB8
/* 9998 80008D98 00000000 */   nop
/* 999C 80008D9C 8E020064 */  lw         $v0, 0x64($s0)
/* 99A0 80008DA0 86090050 */  lh         $t1, 0x50($s0)
/* 99A4 80008DA4 8FC80000 */  lw         $t0, ($fp)
/* 99A8 80008DA8 944C0000 */  lhu        $t4, ($v0)
/* 99AC 80008DAC C6000004 */  lwc1       $f0, 4($s0)
/* 99B0 80008DB0 00095080 */  sll        $t2, $t1, 2
/* 99B4 80008DB4 010A5821 */  addu       $t3, $t0, $t2
/* 99B8 80008DB8 8D710000 */  lw         $s1, ($t3)
/* 99BC 80008DBC 15810010 */  bne        $t4, $at, .L80008E00
/* 99C0 80008DC0 46000506 */   mov.s     $f20, $f0
/* 99C4 80008DC4 3C018008 */  lui        $at, %hi(BrianYPos)
/* 99C8 80008DC8 C422BAD0 */  lwc1       $f2, %lo(BrianYPos)($at)
/* 99CC 80008DCC C444001C */  lwc1       $f4, 0x1c($v0)
/* 99D0 80008DD0 C6060024 */  lwc1       $f6, 0x24($s0)
/* 99D4 80008DD4 4602003C */  c.lt.s     $f0, $f2
/* 99D8 80008DD8 46062302 */  mul.s      $f12, $f4, $f6
/* 99DC 80008DDC 45020004 */  bc1fl      .L80008DF0
/* 99E0 80008DE0 460C0200 */   add.s     $f8, $f0, $f12
/* 99E4 80008DE4 E6020004 */  swc1       $f2, 4($s0)
/* 99E8 80008DE8 C6000004 */  lwc1       $f0, 4($s0)
/* 99EC 80008DEC 460C0200 */  add.s      $f8, $f0, $f12
.L80008DF0:
/* 99F0 80008DF0 8E0D0068 */  lw         $t5, 0x68($s0)
/* 99F4 80008DF4 E6080004 */  swc1       $f8, 4($s0)
/* 99F8 80008DF8 C60A0004 */  lwc1       $f10, 4($s0)
/* 99FC 80008DFC E5AA0094 */  swc1       $f10, 0x94($t5)
.L80008E00:
/* 9A00 80008E00 860E0052 */  lh         $t6, 0x52($s0)
/* 9A04 80008E04 24040001 */  addiu      $a0, $zero, 1
/* 9A08 80008E08 02002825 */  or         $a1, $s0, $zero
/* 9A0C 80008E0C 01D50019 */  multu      $t6, $s5
/* 9A10 80008E10 8FA70058 */  lw         $a3, 0x58($sp)
/* 9A14 80008E14 00007812 */  mflo       $t7
/* 9A18 80008E18 01F13021 */  addu       $a2, $t7, $s1
/* 9A1C 80008E1C 0C0076CE */  jal        func_8001DB38
/* 9A20 80008E20 00000000 */   nop
/* 9A24 80008E24 86180052 */  lh         $t8, 0x52($s0)
/* 9A28 80008E28 96040058 */  lhu        $a0, 0x58($s0)
/* 9A2C 80008E2C 02002825 */  or         $a1, $s0, $zero
/* 9A30 80008E30 03150019 */  multu      $t8, $s5
/* 9A34 80008E34 0000C812 */  mflo       $t9
/* 9A38 80008E38 03313021 */  addu       $a2, $t9, $s1
/* 9A3C 80008E3C 0C00782B */  jal        animateBrian
/* 9A40 80008E40 00000000 */   nop
/* 9A44 80008E44 8E090064 */  lw         $t1, 0x64($s0)
/* 9A48 80008E48 E6140004 */  swc1       $f20, 4($s0)
/* 9A4C 80008E4C 24010002 */  addiu      $at, $zero, 2
/* 9A50 80008E50 95280000 */  lhu        $t0, ($t1)
/* 9A54 80008E54 51010013 */  beql       $t0, $at, .L80008EA4
/* 9A58 80008E58 AE900000 */   sw        $s0, ($s4)
/* 9A5C 80008E5C 960A0062 */  lhu        $t2, 0x62($s0)
/* 9A60 80008E60 314B8000 */  andi       $t3, $t2, 0x8000
/* 9A64 80008E64 5560000F */  bnel       $t3, $zero, .L80008EA4
/* 9A68 80008E68 AE900000 */   sw        $s0, ($s4)
/* 9A6C 80008E6C C6100030 */  lwc1       $f16, 0x30($s0)
/* 9A70 80008E70 C60C0000 */  lwc1       $f12, ($s0)
/* 9A74 80008E74 C60E0004 */  lwc1       $f14, 4($s0)
/* 9A78 80008E78 8E060008 */  lw         $a2, 8($s0)
/* 9A7C 80008E7C 8E07002C */  lw         $a3, 0x2c($s0)
/* 9A80 80008E80 E7B00010 */  swc1       $f16, 0x10($sp)
/* 9A84 80008E84 C6120034 */  lwc1       $f18, 0x34($s0)
/* 9A88 80008E88 E7B20014 */  swc1       $f18, 0x14($sp)
/* 9A8C 80008E8C C6060024 */  lwc1       $f6, 0x24($s0)
/* 9A90 80008E90 C6040028 */  lwc1       $f4, 0x28($s0)
/* 9A94 80008E94 46062202 */  mul.s      $f8, $f4, $f6
/* 9A98 80008E98 0C004618 */  jal        setShadowTrans
/* 9A9C 80008E9C E7A80018 */   swc1      $f8, 0x18($sp)
/* 9AA0 80008EA0 AE900000 */  sw         $s0, ($s4)
.L80008EA4:
/* 9AA4 80008EA4 8ECC0000 */  lw         $t4, ($s6)
/* 9AA8 80008EA8 26940004 */  addiu      $s4, $s4, 4
/* 9AAC 80008EAC 2673FFFF */  addiu      $s3, $s3, -1
/* 9AB0 80008EB0 258D0001 */  addiu      $t5, $t4, 1
/* 9AB4 80008EB4 AECD0000 */  sw         $t5, ($s6)
.L80008EB8:
/* 9AB8 80008EB8 1660FFB3 */  bnez       $s3, .L80008D88
/* 9ABC 80008EBC 26520128 */   addiu     $s2, $s2, 0x128
.L80008EC0:
/* 9AC0 80008EC0 8FBF0054 */  lw         $ra, 0x54($sp)
/* 9AC4 80008EC4 D7B40028 */  ldc1       $f20, 0x28($sp)
/* 9AC8 80008EC8 8FB00030 */  lw         $s0, 0x30($sp)
/* 9ACC 80008ECC 8FB10034 */  lw         $s1, 0x34($sp)
/* 9AD0 80008ED0 8FB20038 */  lw         $s2, 0x38($sp)
/* 9AD4 80008ED4 8FB3003C */  lw         $s3, 0x3c($sp)
/* 9AD8 80008ED8 8FB40040 */  lw         $s4, 0x40($sp)
/* 9ADC 80008EDC 8FB50044 */  lw         $s5, 0x44($sp)
/* 9AE0 80008EE0 8FB60048 */  lw         $s6, 0x48($sp)
/* 9AE4 80008EE4 8FB7004C */  lw         $s7, 0x4c($sp)
/* 9AE8 80008EE8 8FBE0050 */  lw         $fp, 0x50($sp)
/* 9AEC 80008EEC 03E00008 */  jr         $ra
/* 9AF0 80008EF0 27BD0058 */   addiu     $sp, $sp, 0x58

glabel func_80008EF4
/* 9AF4 80008EF4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 9AF8 80008EF8 3C078008 */  lui        $a3, %hi(D_8007D0BC)
/* 9AFC 80008EFC 24E7D0BC */  addiu      $a3, $a3, %lo(D_8007D0BC)
/* 9B00 80008F00 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9B04 80008F04 3C0E8008 */  lui        $t6, %hi(D_80084F1C)
/* 9B08 80008F08 8DCE4F1C */  lw         $t6, %lo(D_80084F1C)($t6)
/* 9B0C 80008F0C 3C198005 */  lui        $t9, %hi(tbl_MonsterFileBounds)
/* 9B10 80008F10 27394160 */  addiu      $t9, $t9, %lo(tbl_MonsterFileBounds)
/* 9B14 80008F14 95CF0012 */  lhu        $t7, 0x12($t6)
/* 9B18 80008F18 3C018008 */  lui        $at, 0x8008
/* 9B1C 80008F1C 3C058021 */  lui        $a1, 0x8021
/* 9B20 80008F20 000FC080 */  sll        $t8, $t7, 2
/* 9B24 80008F24 030FC021 */  addu       $t8, $t8, $t7
/* 9B28 80008F28 0018C080 */  sll        $t8, $t8, 2
/* 9B2C 80008F2C 03194021 */  addu       $t0, $t8, $t9
/* 9B30 80008F30 ACE80000 */  sw         $t0, ($a3)
/* 9B34 80008F34 8D090008 */  lw         $t1, 8($t0)
/* 9B38 80008F38 24A5E6F0 */  addiu      $a1, $a1, -0x1910
/* 9B3C 80008F3C AC29D0A8 */  sw         $t1, -0x2f58($at)
/* 9B40 80008F40 8D0A0010 */  lw         $t2, 0x10($t0)
/* 9B44 80008F44 3C018008 */  lui        $at, %hi(D_8007D0AC)
/* 9B48 80008F48 AC2AD0AC */  sw         $t2, %lo(D_8007D0AC)($at)
/* 9B4C 80008F4C 8D040000 */  lw         $a0, ($t0)
/* 9B50 80008F50 8D030004 */  lw         $v1, 4($t0)
/* 9B54 80008F54 0C009098 */  jal        loadData
/* 9B58 80008F58 00643023 */   subu      $a2, $v1, $a0
/* 9B5C 80008F5C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9B60 80008F60 27BD0018 */  addiu      $sp, $sp, 0x18
/* 9B64 80008F64 03E00008 */  jr         $ra
/* 9B68 80008F68 00000000 */   nop

glabel VOID_EscapeBattle_CONFIRM
/* 9B6C 80008F6C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 9B70 80008F70 AFBF0024 */  sw         $ra, 0x24($sp)
/* 9B74 80008F74 AFB30020 */  sw         $s3, 0x20($sp)
/* 9B78 80008F78 AFB2001C */  sw         $s2, 0x1c($sp)
/* 9B7C 80008F7C AFB10018 */  sw         $s1, 0x18($sp)
/* 9B80 80008F80 AFB00014 */  sw         $s0, 0x14($sp)
/* 9B84 80008F84 3C108008 */  lui        $s0, %hi(EnemyData)
/* 9B88 80008F88 2610C998 */  addiu      $s0, $s0, %lo(EnemyData)
/* 9B8C 80008F8C 24110006 */  addiu      $s1, $zero, 6
/* 9B90 80008F90 2413FFFF */  addiu      $s3, $zero, -1
.L80008F94:
/* 9B94 80008F94 860E0074 */  lh         $t6, 0x74($s0)
/* 9B98 80008F98 26120024 */  addiu      $s2, $s0, 0x24
/* 9B9C 80008F9C 526E0005 */  beql       $s3, $t6, .L80008FB4
/* 9BA0 80008FA0 2631FFFF */   addiu     $s1, $s1, -1
/* 9BA4 80008FA4 0C0080B9 */  jal        unk_UsesBrianOREnemyPos
/* 9BA8 80008FA8 02402025 */   or        $a0, $s2, $zero
/* 9BAC 80008FAC A6530050 */  sh         $s3, 0x50($s2)
/* 9BB0 80008FB0 2631FFFF */  addiu      $s1, $s1, -1
.L80008FB4:
/* 9BB4 80008FB4 1620FFF7 */  bnez       $s1, .L80008F94
/* 9BB8 80008FB8 26100128 */   addiu     $s0, $s0, 0x128
/* 9BBC 80008FBC 3C018008 */  lui        $at, %hi(NumberOfEnemies)
/* 9BC0 80008FC0 AC20C990 */  sw         $zero, %lo(NumberOfEnemies)($at)
/* 9BC4 80008FC4 8FBF0024 */  lw         $ra, 0x24($sp)
/* 9BC8 80008FC8 8FB00014 */  lw         $s0, 0x14($sp)
/* 9BCC 80008FCC 8FB10018 */  lw         $s1, 0x18($sp)
/* 9BD0 80008FD0 8FB2001C */  lw         $s2, 0x1c($sp)
/* 9BD4 80008FD4 8FB30020 */  lw         $s3, 0x20($sp)
/* 9BD8 80008FD8 03E00008 */  jr         $ra
/* 9BDC 80008FDC 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_80008FE0
/* 9BE0 80008FE0 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 9BE4 80008FE4 AFB00020 */  sw         $s0, 0x20($sp)
/* 9BE8 80008FE8 8FB00040 */  lw         $s0, 0x40($sp)
/* 9BEC 80008FEC AFBF0024 */  sw         $ra, 0x24($sp)
/* 9BF0 80008FF0 AFA40030 */  sw         $a0, 0x30($sp)
/* 9BF4 80008FF4 AFA50034 */  sw         $a1, 0x34($sp)
/* 9BF8 80008FF8 AFA60038 */  sw         $a2, 0x38($sp)
/* 9BFC 80008FFC AFA7003C */  sw         $a3, 0x3c($sp)
/* 9C00 80009000 3C0E8008 */  lui        $t6, %hi(D_8007D0BC)
/* 9C04 80009004 8DCED0BC */  lw         $t6, %lo(D_8007D0BC)($t6)
/* 9C08 80009008 8FB80030 */  lw         $t8, 0x30($sp)
/* 9C0C 8000900C 24090001 */  addiu      $t1, $zero, 1
/* 9C10 80009010 8DCF000C */  lw         $t7, 0xc($t6)
/* 9C14 80009014 0018C8C0 */  sll        $t9, $t8, 3
/* 9C18 80009018 0338C823 */  subu       $t9, $t9, $t8
/* 9C1C 8000901C 0019C8C0 */  sll        $t9, $t9, 3
/* 9C20 80009020 01F91821 */  addu       $v1, $t7, $t9
/* 9C24 80009024 84680002 */  lh         $t0, 2($v1)
/* 9C28 80009028 240A0001 */  addiu      $t2, $zero, 1
/* 9C2C 8000902C 02002025 */  or         $a0, $s0, $zero
/* 9C30 80009030 A6080050 */  sh         $t0, 0x50($s0)
/* 9C34 80009034 AFA30028 */  sw         $v1, 0x28($sp)
/* 9C38 80009038 AFAA0014 */  sw         $t2, 0x14($sp)
/* 9C3C 8000903C AFA90010 */  sw         $t1, 0x10($sp)
/* 9C40 80009040 00002825 */  or         $a1, $zero, $zero
/* 9C44 80009044 24060001 */  addiu      $a2, $zero, 1
/* 9C48 80009048 0C00762C */  jal        updateAnim
/* 9C4C 8000904C 00003825 */   or        $a3, $zero, $zero
/* 9C50 80009050 0C008BF4 */  jal        srand
/* 9C54 80009054 24040010 */   addiu     $a0, $zero, 0x10
/* 9C58 80009058 8FA30028 */  lw         $v1, 0x28($sp)
/* 9C5C 8000905C 8FA40044 */  lw         $a0, 0x44($sp)
/* 9C60 80009060 A6020054 */  sh         $v0, 0x54($s0)
/* 9C64 80009064 C4640020 */  lwc1       $f4, 0x20($v1)
/* 9C68 80009068 248B0090 */  addiu      $t3, $a0, 0x90
/* 9C6C 8000906C 3C014F80 */  lui        $at, 0x4f80
/* 9C70 80009070 E6040024 */  swc1       $f4, 0x24($s0)
/* 9C74 80009074 C4660018 */  lwc1       $f6, 0x18($v1)
/* 9C78 80009078 AE0B0068 */  sw         $t3, 0x68($s0)
/* 9C7C 8000907C AE030064 */  sw         $v1, 0x64($s0)
/* 9C80 80009080 E6060028 */  swc1       $f6, 0x28($s0)
/* 9C84 80009084 AC830020 */  sw         $v1, 0x20($a0)
/* 9C88 80009088 946C0006 */  lhu        $t4, 6($v1)
/* 9C8C 8000908C A48C000A */  sh         $t4, 0xa($a0)
/* 9C90 80009090 946D0006 */  lhu        $t5, 6($v1)
/* 9C94 80009094 A4800000 */  sh         $zero, ($a0)
/* 9C98 80009098 A4800008 */  sh         $zero, 8($a0)
/* 9C9C 8000909C A48D000C */  sh         $t5, 0xc($a0)
/* 9CA0 800090A0 946E000C */  lhu        $t6, 0xc($v1)
/* 9CA4 800090A4 448E4000 */  mtc1       $t6, $f8
/* 9CA8 800090A8 05C10004 */  bgez       $t6, .L800090BC
/* 9CAC 800090AC 468042A0 */   cvt.s.w   $f10, $f8
/* 9CB0 800090B0 44818000 */  mtc1       $at, $f16
/* 9CB4 800090B4 00000000 */  nop
/* 9CB8 800090B8 46105280 */  add.s      $f10, $f10, $f16
.L800090BC:
/* 9CBC 800090BC 3C018007 */  lui        $at, %hi(D_80071150)
/* 9CC0 800090C0 D4241150 */  ldc1       $f4, %lo(D_80071150)($at)
/* 9CC4 800090C4 460054A1 */  cvt.d.s    $f18, $f10
/* 9CC8 800090C8 3C014031 */  lui        $at, 0x4031
/* 9CCC 800090CC 46249182 */  mul.d      $f6, $f18, $f4
/* 9CD0 800090D0 44814800 */  mtc1       $at, $f9
/* 9CD4 800090D4 44804000 */  mtc1       $zero, $f8
/* 9CD8 800090D8 3C028008 */  lui        $v0, %hi(D_8007D0E0)
/* 9CDC 800090DC 2442D0E0 */  addiu      $v0, $v0, %lo(D_8007D0E0)
/* 9CE0 800090E0 44807000 */  mtc1       $zero, $f14
/* 9CE4 800090E4 24070A01 */  addiu      $a3, $zero, 0xa01
/* 9CE8 800090E8 46283400 */  add.d      $f16, $f6, $f8
/* 9CEC 800090EC 462082A0 */  cvt.s.d    $f10, $f16
/* 9CF0 800090F0 E48A0010 */  swc1       $f10, 0x10($a0)
/* 9CF4 800090F4 8E030064 */  lw         $v1, 0x64($s0)
/* 9CF8 800090F8 8FA60038 */  lw         $a2, 0x38($sp)
/* 9CFC 800090FC C7AC0034 */  lwc1       $f12, 0x34($sp)
/* 9D00 80009100 C4720018 */  lwc1       $f18, 0x18($v1)
/* 9D04 80009104 C4640020 */  lwc1       $f4, 0x20($v1)
/* 9D08 80009108 AFA20010 */  sw         $v0, 0x10($sp)
/* 9D0C 8000910C 46049182 */  mul.s      $f6, $f18, $f4
/* 9D10 80009110 0C003B98 */  jal        func_8000EE60
/* 9D14 80009114 E4460000 */   swc1      $f6, ($v0)
/* 9D18 80009118 3C028008 */  lui        $v0, %hi(D_8007D0E0)
/* 9D1C 8000911C 2442D0E0 */  addiu      $v0, $v0, %lo(D_8007D0E0)
/* 9D20 80009120 94580018 */  lhu        $t8, 0x18($v0)
/* 9D24 80009124 8FA40044 */  lw         $a0, 0x44($sp)
/* 9D28 80009128 330F8000 */  andi       $t7, $t8, 0x8000
/* 9D2C 8000912C 51E00024 */  beql       $t7, $zero, .L800091C0
/* 9D30 80009130 C4520000 */   lwc1      $f18, ($v0)
/* 9D34 80009134 8E190064 */  lw         $t9, 0x64($s0)
/* 9D38 80009138 C7B20038 */  lwc1       $f18, 0x38($sp)
/* 9D3C 8000913C 3C018008 */  lui        $at, 0x8008
/* 9D40 80009140 97280000 */  lhu        $t0, ($t9)
/* 9D44 80009144 1500001B */  bnez       $t0, .L800091B4
/* 9D48 80009148 00000000 */   nop
/* 9D4C 8000914C 3C013FE0 */  lui        $at, 0x3fe0
/* 9D50 80009150 44810800 */  mtc1       $at, $f1
/* 9D54 80009154 44800000 */  mtc1       $zero, $f0
/* 9D58 80009158 46009121 */  cvt.d.s    $f4, $f18
/* 9D5C 8000915C C7A80034 */  lwc1       $f8, 0x34($sp)
/* 9D60 80009160 46202180 */  add.d      $f6, $f4, $f0
/* 9D64 80009164 44807000 */  mtc1       $zero, $f14
/* 9D68 80009168 24070A01 */  addiu      $a3, $zero, 0xa01
/* 9D6C 8000916C 46004421 */  cvt.d.s    $f16, $f8
/* 9D70 80009170 46203220 */  cvt.s.d    $f8, $f6
/* 9D74 80009174 AFA20010 */  sw         $v0, 0x10($sp)
/* 9D78 80009178 46208280 */  add.d      $f10, $f16, $f0
/* 9D7C 8000917C 44064000 */  mfc1       $a2, $f8
/* 9D80 80009180 0C003B98 */  jal        func_8000EE60
/* 9D84 80009184 46205320 */   cvt.s.d   $f12, $f10
/* 9D88 80009188 3C028008 */  lui        $v0, %hi(D_8007D0E0)
/* 9D8C 8000918C 2442D0E0 */  addiu      $v0, $v0, %lo(D_8007D0E0)
/* 9D90 80009190 94490018 */  lhu        $t1, 0x18($v0)
/* 9D94 80009194 8FA40044 */  lw         $a0, 0x44($sp)
/* 9D98 80009198 3C018008 */  lui        $at, %hi(BrianYPos)
/* 9D9C 8000919C 312A8000 */  andi       $t2, $t1, 0x8000
/* 9DA0 800091A0 51400007 */  beql       $t2, $zero, .L800091C0
/* 9DA4 800091A4 C4520000 */   lwc1      $f18, ($v0)
/* 9DA8 800091A8 C430BAD0 */  lwc1       $f16, %lo(BrianYPos)($at)
/* 9DAC 800091AC 10000003 */  b          .L800091BC
/* 9DB0 800091B0 E4500004 */   swc1      $f16, 4($v0)
.L800091B4:
/* 9DB4 800091B4 C42ABAD0 */  lwc1       $f10, -0x4530($at)
/* 9DB8 800091B8 E44A0004 */  swc1       $f10, 4($v0)
.L800091BC:
/* 9DBC 800091BC C4520000 */  lwc1       $f18, ($v0)
.L800091C0:
/* 9DC0 800091C0 240C0001 */  addiu      $t4, $zero, 1
/* 9DC4 800091C4 24180010 */  addiu      $t8, $zero, 0x10
/* 9DC8 800091C8 E6120000 */  swc1       $f18, ($s0)
/* 9DCC 800091CC C4440004 */  lwc1       $f4, 4($v0)
/* 9DD0 800091D0 3C013F80 */  lui        $at, 0x3f80
/* 9DD4 800091D4 E6040004 */  swc1       $f4, 4($s0)
/* 9DD8 800091D8 C4460008 */  lwc1       $f6, 8($v0)
/* 9DDC 800091DC 44812000 */  mtc1       $at, $f4
/* 9DE0 800091E0 E6060008 */  swc1       $f6, 8($s0)
/* 9DE4 800091E4 C7A8003C */  lwc1       $f8, 0x3c($sp)
/* 9DE8 800091E8 E6080010 */  swc1       $f8, 0x10($s0)
/* 9DEC 800091EC C450000C */  lwc1       $f16, 0xc($v0)
/* 9DF0 800091F0 E610002C */  swc1       $f16, 0x2c($s0)
/* 9DF4 800091F4 C44A0010 */  lwc1       $f10, 0x10($v0)
/* 9DF8 800091F8 E60A0030 */  swc1       $f10, 0x30($s0)
/* 9DFC 800091FC C4520014 */  lwc1       $f18, 0x14($v0)
/* 9E00 80009200 E6120034 */  swc1       $f18, 0x34($s0)
/* 9E04 80009204 944B0018 */  lhu        $t3, 0x18($v0)
/* 9E08 80009208 A60C005E */  sh         $t4, 0x5e($s0)
/* 9E0C 8000920C A6000060 */  sh         $zero, 0x60($s0)
/* 9E10 80009210 A60B0062 */  sh         $t3, 0x62($s0)
/* 9E14 80009214 8C8D0020 */  lw         $t5, 0x20($a0)
/* 9E18 80009218 A4800090 */  sh         $zero, 0x90($a0)
/* 9E1C 8000921C A480011C */  sh         $zero, 0x11c($a0)
/* 9E20 80009220 95AE002A */  lhu        $t6, 0x2a($t5)
/* 9E24 80009224 A498011A */  sh         $t8, 0x11a($a0)
/* 9E28 80009228 A48E0114 */  sh         $t6, 0x114($a0)
/* 9E2C 8000922C 8E0F0064 */  lw         $t7, 0x64($s0)
/* 9E30 80009230 95F9000C */  lhu        $t9, 0xc($t7)
/* 9E34 80009234 A4990116 */  sh         $t9, 0x116($a0)
/* 9E38 80009238 8E080064 */  lw         $t0, 0x64($s0)
/* 9E3C 8000923C 9509000E */  lhu        $t1, 0xe($t0)
/* 9E40 80009240 E4840120 */  swc1       $f4, 0x120($a0)
/* 9E44 80009244 A4890118 */  sh         $t1, 0x118($a0)
/* 9E48 80009248 C6060004 */  lwc1       $f6, 4($s0)
/* 9E4C 8000924C E4860124 */  swc1       $f6, 0x124($a0)
/* 9E50 80009250 8FBF0024 */  lw         $ra, 0x24($sp)
/* 9E54 80009254 8FB00020 */  lw         $s0, 0x20($sp)
/* 9E58 80009258 03E00008 */  jr         $ra
/* 9E5C 8000925C 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_80009260
/* 9E60 80009260 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 9E64 80009264 3C038008 */  lui        $v1, %hi(NumberOfEnemies)
/* 9E68 80009268 8C63C990 */  lw         $v1, %lo(NumberOfEnemies)($v1)
/* 9E6C 8000926C 00001025 */  or         $v0, $zero, $zero
/* 9E70 80009270 3C0B8008 */  lui        $t3, 0x8008
/* 9E74 80009274 10600010 */  beqz       $v1, .L800092B8
/* 9E78 80009278 00602025 */   or        $a0, $v1, $zero
/* 9E7C 8000927C 3C058008 */  lui        $a1, %hi(D_8007D0B0)
/* 9E80 80009280 3C078008 */  lui        $a3, %hi(EnemyData)
/* 9E84 80009284 24E7C998 */  addiu      $a3, $a3, %lo(EnemyData)
/* 9E88 80009288 24A5D0B0 */  addiu      $a1, $a1, %lo(D_8007D0B0)
/* 9E8C 8000928C 27A60018 */  addiu      $a2, $sp, 0x18
.L80009290:
/* 9E90 80009290 8CEE0020 */  lw         $t6, 0x20($a3)
/* 9E94 80009294 A4A20000 */  sh         $v0, ($a1)
/* 9E98 80009298 24420001 */  addiu      $v0, $v0, 1
/* 9E9C 8000929C 95CF000C */  lhu        $t7, 0xc($t6)
/* 9EA0 800092A0 0044082B */  sltu       $at, $v0, $a0
/* 9EA4 800092A4 24A50002 */  addiu      $a1, $a1, 2
/* 9EA8 800092A8 24C60002 */  addiu      $a2, $a2, 2
/* 9EAC 800092AC 24E70128 */  addiu      $a3, $a3, 0x128
/* 9EB0 800092B0 1420FFF7 */  bnez       $at, .L80009290
/* 9EB4 800092B4 A4CFFFFE */   sh        $t7, -2($a2)
.L800092B8:
/* 9EB8 800092B8 2464FFFF */  addiu      $a0, $v1, -1
/* 9EBC 800092BC 256BD0B0 */  addiu      $t3, $t3, -0x2f50
.L800092C0:
/* 9EC0 800092C0 10800016 */  beqz       $a0, .L8000931C
/* 9EC4 800092C4 00001825 */   or        $v1, $zero, $zero
/* 9EC8 800092C8 27A60018 */  addiu      $a2, $sp, 0x18
/* 9ECC 800092CC 0004C840 */  sll        $t9, $a0, 1
/* 9ED0 800092D0 03265021 */  addu       $t2, $t9, $a2
/* 9ED4 800092D4 00001025 */  or         $v0, $zero, $zero
.L800092D8:
/* 9ED8 800092D8 94C70000 */  lhu        $a3, ($a2)
/* 9EDC 800092DC 94C80002 */  lhu        $t0, 2($a2)
/* 9EE0 800092E0 01622821 */  addu       $a1, $t3, $v0
/* 9EE4 800092E4 00E8082A */  slt        $at, $a3, $t0
/* 9EE8 800092E8 50200009 */  beql       $at, $zero, .L80009310
/* 9EEC 800092EC 24C60002 */   addiu     $a2, $a2, 2
/* 9EF0 800092F0 94A90000 */  lhu        $t1, ($a1)
/* 9EF4 800092F4 94AC0002 */  lhu        $t4, 2($a1)
/* 9EF8 800092F8 A4C80000 */  sh         $t0, ($a2)
/* 9EFC 800092FC A4C70002 */  sh         $a3, 2($a2)
/* 9F00 80009300 24630001 */  addiu      $v1, $v1, 1
/* 9F04 80009304 A4A90002 */  sh         $t1, 2($a1)
/* 9F08 80009308 A4AC0000 */  sh         $t4, ($a1)
/* 9F0C 8000930C 24C60002 */  addiu      $a2, $a2, 2
.L80009310:
/* 9F10 80009310 00CA082B */  sltu       $at, $a2, $t2
/* 9F14 80009314 1420FFF0 */  bnez       $at, .L800092D8
/* 9F18 80009318 24420002 */   addiu     $v0, $v0, 2
.L8000931C:
/* 9F1C 8000931C 1460FFE8 */  bnez       $v1, .L800092C0
/* 9F20 80009320 00000000 */   nop
/* 9F24 80009324 03E00008 */  jr         $ra
/* 9F28 80009328 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_8000932C
/* 9F2C 8000932C 3C0E8009 */  lui        $t6, %hi(currTurnEnemyNum)
/* 9F30 80009330 95CEC598 */  lhu        $t6, %lo(currTurnEnemyNum)($t6)
/* 9F34 80009334 3C188008 */  lui        $t8, %hi(D_8007D0B0)
/* 9F38 80009338 3C088008 */  lui        $t0, %hi(EnemyData)
/* 9F3C 8000933C 000E7840 */  sll        $t7, $t6, 1
/* 9F40 80009340 030FC021 */  addu       $t8, $t8, $t7
/* 9F44 80009344 9718D0B0 */  lhu        $t8, %lo(D_8007D0B0)($t8)
/* 9F48 80009348 2508C998 */  addiu      $t0, $t0, %lo(EnemyData)
/* 9F4C 8000934C 0018C8C0 */  sll        $t9, $t8, 3
/* 9F50 80009350 0338C821 */  addu       $t9, $t9, $t8
/* 9F54 80009354 0019C880 */  sll        $t9, $t9, 2
/* 9F58 80009358 0338C821 */  addu       $t9, $t9, $t8
/* 9F5C 8000935C 0019C8C0 */  sll        $t9, $t9, 3
/* 9F60 80009360 03281021 */  addu       $v0, $t9, $t0
/* 9F64 80009364 94490008 */  lhu        $t1, 8($v0)
/* 9F68 80009368 352A0001 */  ori        $t2, $t1, 1
/* 9F6C 8000936C A44A0008 */  sh         $t2, 8($v0)
/* 9F70 80009370 03E00008 */  jr         $ra
/* 9F74 80009374 00000000 */   nop

glabel enemyIdle
/* 9F78 80009378 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 9F7C 8000937C AFB10020 */  sw         $s1, 0x20($sp)
/* 9F80 80009380 AFB0001C */  sw         $s0, 0x1c($sp)
/* 9F84 80009384 00A08025 */  or         $s0, $a1, $zero
/* 9F88 80009388 00808825 */  or         $s1, $a0, $zero
/* 9F8C 8000938C AFBF0024 */  sw         $ra, 0x24($sp)
/* 9F90 80009390 AFA60030 */  sw         $a2, 0x30($sp)
/* 9F94 80009394 3C058008 */  lui        $a1, %hi(D_8007D0D0)
/* 9F98 80009398 24A5D0D0 */  addiu      $a1, $a1, %lo(D_8007D0D0)
/* 9F9C 8000939C 0C0029F6 */  jal        func_8000A7D8
/* 9FA0 800093A0 02202025 */   or        $a0, $s1, $zero
/* 9FA4 800093A4 3C028008 */  lui        $v0, %hi(D_8007D0D0)
/* 9FA8 800093A8 2442D0D0 */  addiu      $v0, $v0, %lo(D_8007D0D0)
/* 9FAC 800093AC 8C450000 */  lw         $a1, ($v0)
/* 9FB0 800093B0 8C460004 */  lw         $a2, 4($v0)
/* 9FB4 800093B4 00002025 */  or         $a0, $zero, $zero
/* 9FB8 800093B8 02203825 */  or         $a3, $s1, $zero
/* 9FBC 800093BC 0C002942 */  jal        func_8000A508
/* 9FC0 800093C0 AFB00010 */   sw        $s0, 0x10($sp)
/* 9FC4 800093C4 960E0008 */  lhu        $t6, 8($s0)
/* 9FC8 800093C8 3C018008 */  lui        $at, %hi(D_8007D088)
/* 9FCC 800093CC 2418003C */  addiu      $t8, $zero, 0x3c
/* 9FD0 800093D0 31CF0001 */  andi       $t7, $t6, 1
/* 9FD4 800093D4 51E00068 */  beql       $t7, $zero, .L80009578
/* 9FD8 800093D8 8FBF0024 */   lw        $ra, 0x24($sp)
/* 9FDC 800093DC AC30D088 */  sw         $s0, %lo(D_8007D088)($at)
/* 9FE0 800093E0 3C018009 */  lui        $at, %hi(enemyNametagDisplayed)
/* 9FE4 800093E4 A438C630 */  sh         $t8, %lo(enemyNametagDisplayed)($at)
/* 9FE8 800093E8 96190008 */  lhu        $t9, 8($s0)
/* 9FEC 800093EC 96090090 */  lhu        $t1, 0x90($s0)
/* 9FF0 800093F0 02002025 */  or         $a0, $s0, $zero
/* 9FF4 800093F4 3328FFFC */  andi       $t0, $t9, 0xfffc
/* 9FF8 800093F8 312A0008 */  andi       $t2, $t1, 8
/* 9FFC 800093FC 11400005 */  beqz       $t2, .L80009414
/* A000 80009400 A6080008 */   sh        $t0, 8($s0)
/* A004 80009404 0C0074D6 */  jal        func_8001D358
/* A008 80009408 02202025 */   or        $a0, $s1, $zero
/* A00C 8000940C 1000005A */  b          .L80009578
/* A010 80009410 8FBF0024 */   lw        $ra, 0x24($sp)
.L80009414:
/* A014 80009414 0C002802 */  jal        func_8000A008
/* A018 80009418 02202825 */   or        $a1, $s1, $zero
/* A01C 8000941C 10400030 */  beqz       $v0, .L800094E0
/* A020 80009420 00403025 */   or        $a2, $v0, $zero
/* A024 80009424 960B0008 */  lhu        $t3, 8($s0)
/* A028 80009428 240D0001 */  addiu      $t5, $zero, 1
/* A02C 8000942C 240E0004 */  addiu      $t6, $zero, 4
/* A030 80009430 316C0010 */  andi       $t4, $t3, 0x10
/* A034 80009434 15800006 */  bnez       $t4, .L80009450
/* A038 80009438 3C0F8009 */   lui       $t7, 0x8009
/* A03C 8000943C 02002025 */  or         $a0, $s0, $zero
/* A040 80009440 0C0028A1 */  jal        func_8000A284
/* A044 80009444 02202825 */   or        $a1, $s1, $zero
/* A048 80009448 1000004B */  b          .L80009578
/* A04C 8000944C 8FBF0024 */   lw        $ra, 0x24($sp)
.L80009450:
/* A050 80009450 A60D0000 */  sh         $t5, ($s0)
/* A054 80009454 A60E0004 */  sh         $t6, 4($s0)
/* A058 80009458 95EFC592 */  lhu        $t7, -0x3a6e($t7)
/* A05C 8000945C 8FAB0030 */  lw         $t3, 0x30($sp)
/* A060 80009460 2401000A */  addiu      $at, $zero, 0xa
/* A064 80009464 31F80100 */  andi       $t8, $t7, 0x100
/* A068 80009468 1300000F */  beqz       $t8, .L800094A8
/* A06C 8000946C 02202025 */   or        $a0, $s1, $zero
/* A070 80009470 8FB90030 */  lw         $t9, 0x30($sp)
/* A074 80009474 24090001 */  addiu      $t1, $zero, 1
/* A078 80009478 240A0001 */  addiu      $t2, $zero, 1
/* A07C 8000947C 8728000E */  lh         $t0, 0xe($t9)
/* A080 80009480 02202025 */  or         $a0, $s1, $zero
/* A084 80009484 24050001 */  addiu      $a1, $zero, 1
/* A088 80009488 A6080002 */  sh         $t0, 2($s0)
/* A08C 8000948C AFAA0014 */  sw         $t2, 0x14($sp)
/* A090 80009490 AFA90010 */  sw         $t1, 0x10($sp)
/* A094 80009494 24060001 */  addiu      $a2, $zero, 1
/* A098 80009498 0C00762C */  jal        updateAnim
/* A09C 8000949C 24070001 */   addiu     $a3, $zero, 1
/* A0A0 800094A0 10000035 */  b          .L80009578
/* A0A4 800094A4 8FBF0024 */   lw        $ra, 0x24($sp)
.L800094A8:
/* A0A8 800094A8 856C000E */  lh         $t4, 0xe($t3)
/* A0AC 800094AC 240E000A */  addiu      $t6, $zero, 0xa
/* A0B0 800094B0 240F0001 */  addiu      $t7, $zero, 1
/* A0B4 800094B4 0181001A */  div        $zero, $t4, $at
/* A0B8 800094B8 00006812 */  mflo       $t5
/* A0BC 800094BC A60D0002 */  sh         $t5, 2($s0)
/* A0C0 800094C0 AFAF0014 */  sw         $t7, 0x14($sp)
/* A0C4 800094C4 AFAE0010 */  sw         $t6, 0x10($sp)
/* A0C8 800094C8 24050001 */  addiu      $a1, $zero, 1
/* A0CC 800094CC 2406000A */  addiu      $a2, $zero, 0xa
/* A0D0 800094D0 0C00762C */  jal        updateAnim
/* A0D4 800094D4 24070001 */   addiu     $a3, $zero, 1
/* A0D8 800094D8 10000027 */  b          .L80009578
/* A0DC 800094DC 8FBF0024 */   lw        $ra, 0x24($sp)
.L800094E0:
/* A0E0 800094E0 24180001 */  addiu      $t8, $zero, 1
/* A0E4 800094E4 24190004 */  addiu      $t9, $zero, 4
/* A0E8 800094E8 A6180000 */  sh         $t8, ($s0)
/* A0EC 800094EC A6190004 */  sh         $t9, 4($s0)
/* A0F0 800094F0 3C088009 */  lui        $t0, %hi(BattleState)
/* A0F4 800094F4 9508C592 */  lhu        $t0, %lo(BattleState)($t0)
/* A0F8 800094F8 8FAE0030 */  lw         $t6, 0x30($sp)
/* A0FC 800094FC 2401000A */  addiu      $at, $zero, 0xa
/* A100 80009500 31090100 */  andi       $t1, $t0, 0x100
/* A104 80009504 1120000F */  beqz       $t1, .L80009544
/* A108 80009508 02202025 */   or        $a0, $s1, $zero
/* A10C 8000950C 8FAA0030 */  lw         $t2, 0x30($sp)
/* A110 80009510 240C0001 */  addiu      $t4, $zero, 1
/* A114 80009514 240D0001 */  addiu      $t5, $zero, 1
/* A118 80009518 854B000E */  lh         $t3, 0xe($t2)
/* A11C 8000951C 02202025 */  or         $a0, $s1, $zero
/* A120 80009520 24050001 */  addiu      $a1, $zero, 1
/* A124 80009524 A60B0002 */  sh         $t3, 2($s0)
/* A128 80009528 AFAD0014 */  sw         $t5, 0x14($sp)
/* A12C 8000952C AFAC0010 */  sw         $t4, 0x10($sp)
/* A130 80009530 24060001 */  addiu      $a2, $zero, 1
/* A134 80009534 0C00762C */  jal        updateAnim
/* A138 80009538 24070001 */   addiu     $a3, $zero, 1
/* A13C 8000953C 1000000E */  b          .L80009578
/* A140 80009540 8FBF0024 */   lw        $ra, 0x24($sp)
.L80009544:
/* A144 80009544 85CF000E */  lh         $t7, 0xe($t6)
/* A148 80009548 2419000A */  addiu      $t9, $zero, 0xa
/* A14C 8000954C 24080001 */  addiu      $t0, $zero, 1
/* A150 80009550 01E1001A */  div        $zero, $t7, $at
/* A154 80009554 0000C012 */  mflo       $t8
/* A158 80009558 A6180002 */  sh         $t8, 2($s0)
/* A15C 8000955C AFA80014 */  sw         $t0, 0x14($sp)
/* A160 80009560 AFB90010 */  sw         $t9, 0x10($sp)
/* A164 80009564 24050001 */  addiu      $a1, $zero, 1
/* A168 80009568 2406000A */  addiu      $a2, $zero, 0xa
/* A16C 8000956C 0C00762C */  jal        updateAnim
/* A170 80009570 24070001 */   addiu     $a3, $zero, 1
/* A174 80009574 8FBF0024 */  lw         $ra, 0x24($sp)
.L80009578:
/* A178 80009578 8FB0001C */  lw         $s0, 0x1c($sp)
/* A17C 8000957C 8FB10020 */  lw         $s1, 0x20($sp)
/* A180 80009580 03E00008 */  jr         $ra
/* A184 80009584 27BD0028 */   addiu     $sp, $sp, 0x28

glabel enemyAdvance
/* A188 80009588 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* A18C 8000958C AFB10020 */  sw         $s1, 0x20($sp)
/* A190 80009590 AFB0001C */  sw         $s0, 0x1c($sp)
/* A194 80009594 3C028008 */  lui        $v0, %hi(brianAction)
/* A198 80009598 2442BAB8 */  addiu      $v0, $v0, %lo(brianAction)
/* A19C 8000959C 00A08025 */  or         $s0, $a1, $zero
/* A1A0 800095A0 00808825 */  or         $s1, $a0, $zero
/* A1A4 800095A4 AFBF0024 */  sw         $ra, 0x24($sp)
/* A1A8 800095A8 AFA60030 */  sw         $a2, 0x30($sp)
/* A1AC 800095AC 02202025 */  or         $a0, $s1, $zero
/* A1B0 800095B0 8C450014 */  lw         $a1, 0x14($v0)
/* A1B4 800095B4 0C0028FD */  jal        func_8000A3F4
/* A1B8 800095B8 8C46001C */   lw        $a2, 0x1c($v0)
/* A1BC 800095BC 3C0E8009 */  lui        $t6, %hi(BattleState)
/* A1C0 800095C0 95CEC592 */  lhu        $t6, %lo(BattleState)($t6)
/* A1C4 800095C4 3C018007 */  lui        $at, 0x8007
/* A1C8 800095C8 02202025 */  or         $a0, $s1, $zero
/* A1CC 800095CC 31CF0100 */  andi       $t7, $t6, 0x100
/* A1D0 800095D0 11E0000B */  beqz       $t7, .L80009600
/* A1D4 800095D4 3C058008 */   lui       $a1, 0x8008
/* A1D8 800095D8 44802000 */  mtc1       $zero, $f4
/* A1DC 800095DC 3C058008 */  lui        $a1, %hi(D_8007D0D0)
/* A1E0 800095E0 24A5D0D0 */  addiu      $a1, $a1, %lo(D_8007D0D0)
/* A1E4 800095E4 E4A40000 */  swc1       $f4, ($a1)
/* A1E8 800095E8 C4261158 */  lwc1       $f6, 0x1158($at)
/* A1EC 800095EC E4A60004 */  swc1       $f6, 4($a1)
/* A1F0 800095F0 0C008CBD */  jal        func_800232F4
/* A1F4 800095F4 C62C0010 */   lwc1      $f12, 0x10($s1)
/* A1F8 800095F8 10000003 */  b          .L80009608
/* A1FC 800095FC 00000000 */   nop
.L80009600:
/* A200 80009600 0C0029F6 */  jal        func_8000A7D8
/* A204 80009604 24A5D0D0 */   addiu     $a1, $a1, -0x2f30
.L80009608:
/* A208 80009608 3C028008 */  lui        $v0, %hi(D_8007D0D0)
/* A20C 8000960C 2442D0D0 */  addiu      $v0, $v0, %lo(D_8007D0D0)
/* A210 80009610 8C450000 */  lw         $a1, ($v0)
/* A214 80009614 8C460004 */  lw         $a2, 4($v0)
/* A218 80009618 24040001 */  addiu      $a0, $zero, 1
/* A21C 8000961C 02203825 */  or         $a3, $s1, $zero
/* A220 80009620 0C002942 */  jal        func_8000A508
/* A224 80009624 AFB00010 */   sw        $s0, 0x10($sp)
/* A228 80009628 86180002 */  lh         $t8, 2($s0)
/* A22C 8000962C 2719FFFF */  addiu      $t9, $t8, -1
/* A230 80009630 A6190002 */  sh         $t9, 2($s0)
/* A234 80009634 86080002 */  lh         $t0, 2($s0)
/* A238 80009638 55000073 */  bnel       $t0, $zero, .L80009808
/* A23C 8000963C 8FBF0024 */   lw        $ra, 0x24($sp)
/* A240 80009640 96090004 */  lhu        $t1, 4($s0)
/* A244 80009644 8E0B001C */  lw         $t3, 0x1c($s0)
/* A248 80009648 02002025 */  or         $a0, $s0, $zero
/* A24C 8000964C 252AFFFF */  addiu      $t2, $t1, -1
/* A250 80009650 1160003F */  beqz       $t3, .L80009750
/* A254 80009654 A60A0004 */   sh        $t2, 4($s0)
/* A258 80009658 3C028008 */  lui        $v0, %hi(brianAction)
/* A25C 8000965C 2442BAB8 */  addiu      $v0, $v0, %lo(brianAction)
/* A260 80009660 C4480014 */  lwc1       $f8, 0x14($v0)
/* A264 80009664 C62A0000 */  lwc1       $f10, ($s1)
/* A268 80009668 C450001C */  lwc1       $f16, 0x1c($v0)
/* A26C 8000966C C6320008 */  lwc1       $f18, 8($s1)
/* A270 80009670 460A4001 */  sub.s      $f0, $f8, $f10
/* A274 80009674 46128081 */  sub.s      $f2, $f16, $f18
/* A278 80009678 46000102 */  mul.s      $f4, $f0, $f0
/* A27C 8000967C 00000000 */  nop
/* A280 80009680 46021182 */  mul.s      $f6, $f2, $f2
/* A284 80009684 0C00D3D8 */  jal        _nsqrtf
/* A288 80009688 46062300 */   add.s     $f12, $f4, $f6
/* A28C 8000968C 3C0C8008 */  lui        $t4, %hi(brianDataPtr)
/* A290 80009690 8D8CBB30 */  lw         $t4, %lo(brianDataPtr)($t4)
/* A294 80009694 3C018008 */  lui        $at, %hi(BrianActor+0x24)
/* A298 80009698 C42ABAF0 */  lwc1       $f10, %lo(BrianActor+0x24)($at)
/* A29C 8000969C C5880018 */  lwc1       $f8, 0x18($t4)
/* A2A0 800096A0 8E06001C */  lw         $a2, 0x1c($s0)
/* A2A4 800096A4 C6240024 */  lwc1       $f4, 0x24($s1)
/* A2A8 800096A8 460A4402 */  mul.s      $f16, $f8, $f10
/* A2AC 800096AC C4D20010 */  lwc1       $f18, 0x10($a2)
/* A2B0 800096B0 02002025 */  or         $a0, $s0, $zero
/* A2B4 800096B4 46049182 */  mul.s      $f6, $f18, $f4
/* A2B8 800096B8 46100081 */  sub.s      $f2, $f0, $f16
/* A2BC 800096BC 4606103C */  c.lt.s     $f2, $f6
/* A2C0 800096C0 00000000 */  nop
/* A2C4 800096C4 45020006 */  bc1fl      .L800096E0
/* A2C8 800096C8 960D0004 */   lhu       $t5, 4($s0)
/* A2CC 800096CC 0C0028A1 */  jal        func_8000A284
/* A2D0 800096D0 02202825 */   or        $a1, $s1, $zero
/* A2D4 800096D4 1000004C */  b          .L80009808
/* A2D8 800096D8 8FBF0024 */   lw        $ra, 0x24($sp)
/* A2DC 800096DC 960D0004 */  lhu        $t5, 4($s0)
.L800096E0:
/* A2E0 800096E0 02002025 */  or         $a0, $s0, $zero
/* A2E4 800096E4 11A00006 */  beqz       $t5, .L80009700
/* A2E8 800096E8 00000000 */   nop
/* A2EC 800096EC 960E0008 */  lhu        $t6, 8($s0)
/* A2F0 800096F0 3C188009 */  lui        $t8, 0x8009
/* A2F4 800096F4 31CF0002 */  andi       $t7, $t6, 2
/* A2F8 800096F8 11E00005 */  beqz       $t7, .L80009710
/* A2FC 800096FC 00000000 */   nop
.L80009700:
/* A300 80009700 0C0028A1 */  jal        func_8000A284
/* A304 80009704 02202825 */   or        $a1, $s1, $zero
/* A308 80009708 1000003F */  b          .L80009808
/* A30C 8000970C 8FBF0024 */   lw        $ra, 0x24($sp)
.L80009710:
/* A310 80009710 9718C592 */  lhu        $t8, -0x3a6e($t8)
/* A314 80009714 8FA80030 */  lw         $t0, 0x30($sp)
/* A318 80009718 8FAA0030 */  lw         $t2, 0x30($sp)
/* A31C 8000971C 33190100 */  andi       $t9, $t8, 0x100
/* A320 80009720 53200005 */  beql       $t9, $zero, .L80009738
/* A324 80009724 854B000E */   lh        $t3, 0xe($t2)
/* A328 80009728 8509000E */  lh         $t1, 0xe($t0)
/* A32C 8000972C 10000035 */  b          .L80009804
/* A330 80009730 A6090002 */   sh        $t1, 2($s0)
/* A334 80009734 854B000E */  lh         $t3, 0xe($t2)
.L80009738:
/* A338 80009738 2401000A */  addiu      $at, $zero, 0xa
/* A33C 8000973C 0161001A */  div        $zero, $t3, $at
/* A340 80009740 00006012 */  mflo       $t4
/* A344 80009744 A60C0002 */  sh         $t4, 2($s0)
/* A348 80009748 1000002F */  b          .L80009808
/* A34C 8000974C 8FBF0024 */   lw        $ra, 0x24($sp)
.L80009750:
/* A350 80009750 0C002802 */  jal        func_8000A008
/* A354 80009754 02202825 */   or        $a1, $s1, $zero
/* A358 80009758 10400006 */  beqz       $v0, .L80009774
/* A35C 8000975C 00403025 */   or        $a2, $v0, $zero
/* A360 80009760 02002025 */  or         $a0, $s0, $zero
/* A364 80009764 0C0028A1 */  jal        func_8000A284
/* A368 80009768 02202825 */   or        $a1, $s1, $zero
/* A36C 8000976C 10000026 */  b          .L80009808
/* A370 80009770 8FBF0024 */   lw        $ra, 0x24($sp)
.L80009774:
/* A374 80009774 960D0004 */  lhu        $t5, 4($s0)
/* A378 80009778 02202025 */  or         $a0, $s1, $zero
/* A37C 8000977C 00002825 */  or         $a1, $zero, $zero
/* A380 80009780 11A00006 */  beqz       $t5, .L8000979C
/* A384 80009784 24060001 */   addiu     $a2, $zero, 1
/* A388 80009788 960E0008 */  lhu        $t6, 8($s0)
/* A38C 8000978C 3C088009 */  lui        $t0, 0x8009
/* A390 80009790 31CF0002 */  andi       $t7, $t6, 2
/* A394 80009794 11E0000C */  beqz       $t7, .L800097C8
/* A398 80009798 00000000 */   nop
.L8000979C:
/* A39C 8000979C A6000000 */  sh         $zero, ($s0)
/* A3A0 800097A0 24180001 */  addiu      $t8, $zero, 1
/* A3A4 800097A4 24190001 */  addiu      $t9, $zero, 1
/* A3A8 800097A8 AFB90014 */  sw         $t9, 0x14($sp)
/* A3AC 800097AC AFB80010 */  sw         $t8, 0x10($sp)
/* A3B0 800097B0 0C00762C */  jal        updateAnim
/* A3B4 800097B4 00003825 */   or        $a3, $zero, $zero
/* A3B8 800097B8 0C0074D6 */  jal        func_8001D358
/* A3BC 800097BC 02202025 */   or        $a0, $s1, $zero
/* A3C0 800097C0 10000011 */  b          .L80009808
/* A3C4 800097C4 8FBF0024 */   lw        $ra, 0x24($sp)
.L800097C8:
/* A3C8 800097C8 9508C592 */  lhu        $t0, -0x3a6e($t0)
/* A3CC 800097CC 8FAA0030 */  lw         $t2, 0x30($sp)
/* A3D0 800097D0 8FAC0030 */  lw         $t4, 0x30($sp)
/* A3D4 800097D4 31090100 */  andi       $t1, $t0, 0x100
/* A3D8 800097D8 51200005 */  beql       $t1, $zero, .L800097F0
/* A3DC 800097DC 858D000E */   lh        $t5, 0xe($t4)
/* A3E0 800097E0 854B000E */  lh         $t3, 0xe($t2)
/* A3E4 800097E4 10000007 */  b          .L80009804
/* A3E8 800097E8 A60B0002 */   sh        $t3, 2($s0)
/* A3EC 800097EC 858D000E */  lh         $t5, 0xe($t4)
.L800097F0:
/* A3F0 800097F0 2401000A */  addiu      $at, $zero, 0xa
/* A3F4 800097F4 01A1001A */  div        $zero, $t5, $at
/* A3F8 800097F8 00007012 */  mflo       $t6
/* A3FC 800097FC A60E0002 */  sh         $t6, 2($s0)
/* A400 80009800 00000000 */  nop
.L80009804:
/* A404 80009804 8FBF0024 */  lw         $ra, 0x24($sp)
.L80009808:
/* A408 80009808 8FB0001C */  lw         $s0, 0x1c($sp)
/* A40C 8000980C 8FB10020 */  lw         $s1, 0x20($sp)
/* A410 80009810 03E00008 */  jr         $ra
/* A414 80009814 27BD0028 */   addiu     $sp, $sp, 0x28

glabel enemyDie
/* A418 80009818 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* A41C 8000981C AFB10020 */  sw         $s1, 0x20($sp)
/* A420 80009820 AFB0001C */  sw         $s0, 0x1c($sp)
/* A424 80009824 00808025 */  or         $s0, $a0, $zero
/* A428 80009828 00A08825 */  or         $s1, $a1, $zero
/* A42C 8000982C AFBF0024 */  sw         $ra, 0x24($sp)
/* A430 80009830 AFA60030 */  sw         $a2, 0x30($sp)
/* A434 80009834 3C058008 */  lui        $a1, %hi(D_8007D0D0)
/* A438 80009838 24A5D0D0 */  addiu      $a1, $a1, %lo(D_8007D0D0)
/* A43C 8000983C 0C0029F6 */  jal        func_8000A7D8
/* A440 80009840 02002025 */   or        $a0, $s0, $zero
/* A444 80009844 3C028008 */  lui        $v0, %hi(D_8007D0D0)
/* A448 80009848 2442D0D0 */  addiu      $v0, $v0, %lo(D_8007D0D0)
/* A44C 8000984C 8C450000 */  lw         $a1, ($v0)
/* A450 80009850 8C460004 */  lw         $a2, 4($v0)
/* A454 80009854 00002025 */  or         $a0, $zero, $zero
/* A458 80009858 02003825 */  or         $a3, $s0, $zero
/* A45C 8000985C 0C002942 */  jal        func_8000A508
/* A460 80009860 AFB10010 */   sw        $s1, 0x10($sp)
/* A464 80009864 862E0002 */  lh         $t6, 2($s1)
/* A468 80009868 25CFFFFF */  addiu      $t7, $t6, -1
/* A46C 8000986C A62F0002 */  sh         $t7, 2($s1)
/* A470 80009870 86380002 */  lh         $t8, 2($s1)
/* A474 80009874 5700002B */  bnel       $t8, $zero, .L80009924
/* A478 80009878 8FBF0024 */   lw        $ra, 0x24($sp)
/* A47C 8000987C 9639000A */  lhu        $t9, 0xa($s1)
/* A480 80009880 57200024 */  bnel       $t9, $zero, .L80009914
/* A484 80009884 A6200000 */   sh        $zero, ($s1)
/* A488 80009888 0C0080B9 */  jal        unk_UsesBrianOREnemyPos
/* A48C 8000988C 02002025 */   or        $a0, $s0, $zero
/* A490 80009890 0C002C5C */  jal        func_8000B170
/* A494 80009894 02002025 */   or        $a0, $s0, $zero
/* A498 80009898 96090060 */  lhu        $t1, 0x60($s0)
/* A49C 8000989C 3C028008 */  lui        $v0, %hi(NumberOfEnemies)
/* A4A0 800098A0 2408FFFF */  addiu      $t0, $zero, -1
/* A4A4 800098A4 312AFFFE */  andi       $t2, $t1, 0xfffe
/* A4A8 800098A8 2442C990 */  addiu      $v0, $v0, %lo(NumberOfEnemies)
/* A4AC 800098AC A6080050 */  sh         $t0, 0x50($s0)
/* A4B0 800098B0 A60A0060 */  sh         $t2, 0x60($s0)
/* A4B4 800098B4 8C4B0000 */  lw         $t3, ($v0)
/* A4B8 800098B8 3C038008 */  lui        $v1, %hi(InBattleXP)
/* A4BC 800098BC 2463BA68 */  addiu      $v1, $v1, %lo(InBattleXP)
/* A4C0 800098C0 256CFFFF */  addiu      $t4, $t3, -1
/* A4C4 800098C4 AC4C0000 */  sw         $t4, ($v0)
/* A4C8 800098C8 8E0E0064 */  lw         $t6, 0x64($s0)
/* A4CC 800098CC 8C6D0000 */  lw         $t5, ($v1)
/* A4D0 800098D0 3C078008 */  lui        $a3, %hi(D_8007BA6C)
/* A4D4 800098D4 8DCF0010 */  lw         $t7, 0x10($t6)
/* A4D8 800098D8 24E7BA6C */  addiu      $a3, $a3, %lo(D_8007BA6C)
/* A4DC 800098DC 8CF90000 */  lw         $t9, ($a3)
/* A4E0 800098E0 01AFC021 */  addu       $t8, $t5, $t7
/* A4E4 800098E4 AC780000 */  sw         $t8, ($v1)
/* A4E8 800098E8 8E080064 */  lw         $t0, 0x64($s0)
/* A4EC 800098EC 00002025 */  or         $a0, $zero, $zero
/* A4F0 800098F0 2405000A */  addiu      $a1, $zero, 0xa
/* A4F4 800098F4 8D090014 */  lw         $t1, 0x14($t0)
/* A4F8 800098F8 240600FF */  addiu      $a2, $zero, 0xff
/* A4FC 800098FC 03295021 */  addu       $t2, $t9, $t1
/* A500 80009900 0C009A35 */  jal        func_800268D4
/* A504 80009904 ACEA0000 */   sw        $t2, ($a3)
/* A508 80009908 10000006 */  b          .L80009924
/* A50C 8000990C 8FBF0024 */   lw        $ra, 0x24($sp)
/* A510 80009910 A6200000 */  sh         $zero, ($s1)
.L80009914:
/* A514 80009914 960B0060 */  lhu        $t3, 0x60($s0)
/* A518 80009918 316CFFFC */  andi       $t4, $t3, 0xfffc
/* A51C 8000991C A60C0060 */  sh         $t4, 0x60($s0)
/* A520 80009920 8FBF0024 */  lw         $ra, 0x24($sp)
.L80009924:
/* A524 80009924 8FB0001C */  lw         $s0, 0x1c($sp)
/* A528 80009928 8FB10020 */  lw         $s1, 0x20($sp)
/* A52C 8000992C 03E00008 */  jr         $ra
/* A530 80009930 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_80009934
/* A534 80009934 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* A538 80009938 AFB10020 */  sw         $s1, 0x20($sp)
/* A53C 8000993C AFB0001C */  sw         $s0, 0x1c($sp)
/* A540 80009940 3C028008 */  lui        $v0, %hi(brianAction)
/* A544 80009944 2442BAB8 */  addiu      $v0, $v0, %lo(brianAction)
/* A548 80009948 00808025 */  or         $s0, $a0, $zero
/* A54C 8000994C 00A08825 */  or         $s1, $a1, $zero
/* A550 80009950 AFBF0024 */  sw         $ra, 0x24($sp)
/* A554 80009954 AFA60030 */  sw         $a2, 0x30($sp)
/* A558 80009958 02002025 */  or         $a0, $s0, $zero
/* A55C 8000995C 8C450014 */  lw         $a1, 0x14($v0)
/* A560 80009960 0C0028FD */  jal        func_8000A3F4
/* A564 80009964 8C46001C */   lw        $a2, 0x1c($v0)
/* A568 80009968 3C058008 */  lui        $a1, %hi(D_8007D0D0)
/* A56C 8000996C 24A5D0D0 */  addiu      $a1, $a1, %lo(D_8007D0D0)
/* A570 80009970 0C0029F6 */  jal        func_8000A7D8
/* A574 80009974 02002025 */   or        $a0, $s0, $zero
/* A578 80009978 3C028008 */  lui        $v0, %hi(D_8007D0D0)
/* A57C 8000997C 2442D0D0 */  addiu      $v0, $v0, %lo(D_8007D0D0)
/* A580 80009980 8C450000 */  lw         $a1, ($v0)
/* A584 80009984 8C460004 */  lw         $a2, 4($v0)
/* A588 80009988 00002025 */  or         $a0, $zero, $zero
/* A58C 8000998C 02003825 */  or         $a3, $s0, $zero
/* A590 80009990 0C002942 */  jal        func_8000A508
/* A594 80009994 AFB10010 */   sw        $s1, 0x10($sp)
/* A598 80009998 862E0002 */  lh         $t6, 2($s1)
/* A59C 8000999C 25CFFFFF */  addiu      $t7, $t6, -1
/* A5A0 800099A0 A62F0002 */  sh         $t7, 2($s1)
/* A5A4 800099A4 86380002 */  lh         $t8, 2($s1)
/* A5A8 800099A8 57000008 */  bnel       $t8, $zero, .L800099CC
/* A5AC 800099AC 8FBF0024 */   lw        $ra, 0x24($sp)
/* A5B0 800099B0 A6200000 */  sh         $zero, ($s1)
/* A5B4 800099B4 96190060 */  lhu        $t9, 0x60($s0)
/* A5B8 800099B8 02002025 */  or         $a0, $s0, $zero
/* A5BC 800099BC 3328FFFE */  andi       $t0, $t9, 0xfffe
/* A5C0 800099C0 0C0074D6 */  jal        func_8001D358
/* A5C4 800099C4 A6080060 */   sh        $t0, 0x60($s0)
/* A5C8 800099C8 8FBF0024 */  lw         $ra, 0x24($sp)
.L800099CC:
/* A5CC 800099CC 8FB0001C */  lw         $s0, 0x1c($sp)
/* A5D0 800099D0 8FB10020 */  lw         $s1, 0x20($sp)
/* A5D4 800099D4 03E00008 */  jr         $ra
/* A5D8 800099D8 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_800099DC
/* A5DC 800099DC 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* A5E0 800099E0 AFB10020 */  sw         $s1, 0x20($sp)
/* A5E4 800099E4 AFB0001C */  sw         $s0, 0x1c($sp)
/* A5E8 800099E8 00A08025 */  or         $s0, $a1, $zero
/* A5EC 800099EC 00808825 */  or         $s1, $a0, $zero
/* A5F0 800099F0 AFBF0024 */  sw         $ra, 0x24($sp)
/* A5F4 800099F4 AFA60030 */  sw         $a2, 0x30($sp)
/* A5F8 800099F8 96020006 */  lhu        $v0, 6($s0)
/* A5FC 800099FC 24010001 */  addiu      $at, $zero, 1
/* A600 80009A00 50400008 */  beql       $v0, $zero, .L80009A24
/* A604 80009A04 8E0E001C */   lw        $t6, 0x1c($s0)
/* A608 80009A08 10410023 */  beq        $v0, $at, .L80009A98
/* A60C 80009A0C 24010002 */   addiu     $at, $zero, 2
/* A610 80009A10 104100BF */  beq        $v0, $at, .L80009D10
/* A614 80009A14 02202025 */   or        $a0, $s1, $zero
/* A618 80009A18 100000D3 */  b          .L80009D68
/* A61C 80009A1C 8FBF0024 */   lw        $ra, 0x24($sp)
/* A620 80009A20 8E0E001C */  lw         $t6, 0x1c($s0)
.L80009A24:
/* A624 80009A24 02202025 */  or         $a0, $s1, $zero
/* A628 80009A28 3C058008 */  lui        $a1, 0x8008
/* A62C 80009A2C 95C20002 */  lhu        $v0, 2($t6)
/* A630 80009A30 304F0002 */  andi       $t7, $v0, 2
/* A634 80009A34 51E0000C */  beql       $t7, $zero, .L80009A68
/* A638 80009A38 86180002 */   lh        $t8, 2($s0)
/* A63C 80009A3C 0C0029F6 */  jal        func_8000A7D8
/* A640 80009A40 24A5D0D0 */   addiu     $a1, $a1, -0x2f30
/* A644 80009A44 3C058008 */  lui        $a1, %hi(D_8007D0D0)
/* A648 80009A48 3C068008 */  lui        $a2, %hi(D_8007D0D4)
/* A64C 80009A4C 8CC6D0D4 */  lw         $a2, %lo(D_8007D0D4)($a2)
/* A650 80009A50 8CA5D0D0 */  lw         $a1, %lo(D_8007D0D0)($a1)
/* A654 80009A54 00002025 */  or         $a0, $zero, $zero
/* A658 80009A58 02203825 */  or         $a3, $s1, $zero
/* A65C 80009A5C 0C002942 */  jal        func_8000A508
/* A660 80009A60 AFB00010 */   sw        $s0, 0x10($sp)
/* A664 80009A64 86180002 */  lh         $t8, 2($s0)
.L80009A68:
/* A668 80009A68 2719FFFF */  addiu      $t9, $t8, -1
/* A66C 80009A6C A6190002 */  sh         $t9, 2($s0)
/* A670 80009A70 86080002 */  lh         $t0, 2($s0)
/* A674 80009A74 550000BC */  bnel       $t0, $zero, .L80009D68
/* A678 80009A78 8FBF0024 */   lw        $ra, 0x24($sp)
/* A67C 80009A7C 96090006 */  lhu        $t1, 6($s0)
/* A680 80009A80 8E0B001C */  lw         $t3, 0x1c($s0)
/* A684 80009A84 252A0001 */  addiu      $t2, $t1, 1
/* A688 80009A88 A60A0006 */  sh         $t2, 6($s0)
/* A68C 80009A8C 956C0006 */  lhu        $t4, 6($t3)
/* A690 80009A90 100000B4 */  b          .L80009D64
/* A694 80009A94 A60C0002 */   sh        $t4, 2($s0)
.L80009A98:
/* A698 80009A98 8E0D001C */  lw         $t5, 0x1c($s0)
/* A69C 80009A9C 02202025 */  or         $a0, $s1, $zero
/* A6A0 80009AA0 3C058008 */  lui        $a1, 0x8008
/* A6A4 80009AA4 95A20002 */  lhu        $v0, 2($t5)
/* A6A8 80009AA8 304E000A */  andi       $t6, $v0, 0xa
/* A6AC 80009AAC 11C0000B */  beqz       $t6, .L80009ADC
/* A6B0 80009AB0 00000000 */   nop
/* A6B4 80009AB4 0C0029F6 */  jal        func_8000A7D8
/* A6B8 80009AB8 24A5D0D0 */   addiu     $a1, $a1, -0x2f30
/* A6BC 80009ABC 3C028008 */  lui        $v0, %hi(D_8007D0D0)
/* A6C0 80009AC0 2442D0D0 */  addiu      $v0, $v0, %lo(D_8007D0D0)
/* A6C4 80009AC4 8C450000 */  lw         $a1, ($v0)
/* A6C8 80009AC8 8C460004 */  lw         $a2, 4($v0)
/* A6CC 80009ACC 00002025 */  or         $a0, $zero, $zero
/* A6D0 80009AD0 02203825 */  or         $a3, $s1, $zero
/* A6D4 80009AD4 0C002942 */  jal        func_8000A508
/* A6D8 80009AD8 AFB00010 */   sw        $s0, 0x10($sp)
.L80009ADC:
/* A6DC 80009ADC 3C038008 */  lui        $v1, %hi(brianAction)
/* A6E0 80009AE0 2463BAB8 */  addiu      $v1, $v1, %lo(brianAction)
/* A6E4 80009AE4 946F0074 */  lhu        $t7, 0x74($v1)
/* A6E8 80009AE8 31F80002 */  andi       $t8, $t7, 2
/* A6EC 80009AEC 57000052 */  bnel       $t8, $zero, .L80009C38
/* A6F0 80009AF0 860D0002 */   lh        $t5, 2($s0)
/* A6F4 80009AF4 96190008 */  lhu        $t9, 8($s0)
/* A6F8 80009AF8 33280008 */  andi       $t0, $t9, 8
/* A6FC 80009AFC 5500004E */  bnel       $t0, $zero, .L80009C38
/* A700 80009B00 860D0002 */   lh        $t5, 2($s0)
/* A704 80009B04 C4640014 */  lwc1       $f4, 0x14($v1)
/* A708 80009B08 C6260000 */  lwc1       $f6, ($s1)
/* A70C 80009B0C C468001C */  lwc1       $f8, 0x1c($v1)
/* A710 80009B10 C62A0008 */  lwc1       $f10, 8($s1)
/* A714 80009B14 46062001 */  sub.s      $f0, $f4, $f6
/* A718 80009B18 460A4081 */  sub.s      $f2, $f8, $f10
/* A71C 80009B1C 46000402 */  mul.s      $f16, $f0, $f0
/* A720 80009B20 00000000 */  nop
/* A724 80009B24 46021482 */  mul.s      $f18, $f2, $f2
/* A728 80009B28 0C00D3D8 */  jal        _nsqrtf
/* A72C 80009B2C 46128300 */   add.s     $f12, $f16, $f18
/* A730 80009B30 3C038008 */  lui        $v1, %hi(brianAction)
/* A734 80009B34 2463BAB8 */  addiu      $v1, $v1, %lo(brianAction)
/* A738 80009B38 8C690010 */  lw         $t1, 0x10($v1)
/* A73C 80009B3C C4640038 */  lwc1       $f4, 0x38($v1)
/* A740 80009B40 8E0A001C */  lw         $t2, 0x1c($s0)
/* A744 80009B44 C5260018 */  lwc1       $f6, 0x18($t1)
/* A748 80009B48 C6300024 */  lwc1       $f16, 0x24($s1)
/* A74C 80009B4C C54A0014 */  lwc1       $f10, 0x14($t2)
/* A750 80009B50 46062202 */  mul.s      $f8, $f4, $f6
/* A754 80009B54 02202025 */  or         $a0, $s1, $zero
/* A758 80009B58 46105482 */  mul.s      $f18, $f10, $f16
/* A75C 80009B5C 46080081 */  sub.s      $f2, $f0, $f8
/* A760 80009B60 4612103C */  c.lt.s     $f2, $f18
/* A764 80009B64 00000000 */  nop
/* A768 80009B68 45020033 */  bc1fl      .L80009C38
/* A76C 80009B6C 860D0002 */   lh        $t5, 2($s0)
/* A770 80009B70 0C002AFD */  jal        func_8000ABF4
/* A774 80009B74 00000000 */   nop
/* A778 80009B78 10400023 */  beqz       $v0, .L80009C08
/* A77C 80009B7C 00000000 */   nop
/* A780 80009B80 0C002B21 */  jal        func_8000AC84
/* A784 80009B84 02002025 */   or        $a0, $s0, $zero
/* A788 80009B88 3044FFFF */  andi       $a0, $v0, 0xffff
/* A78C 80009B8C 34058004 */  ori        $a1, $zero, 0x8004
/* A790 80009B90 0C001AFB */  jal        Func_involving_HP
/* A794 80009B94 02203025 */   or        $a2, $s1, $zero
/* A798 80009B98 960B0090 */  lhu        $t3, 0x90($s0)
/* A79C 80009B9C 3043FFFF */  andi       $v1, $v0, 0xffff
/* A7A0 80009BA0 24630003 */  addiu      $v1, $v1, 3
/* A7A4 80009BA4 316C0002 */  andi       $t4, $t3, 2
/* A7A8 80009BA8 1180001F */  beqz       $t4, .L80009C28
/* A7AC 80009BAC 00036883 */   sra       $t5, $v1, 2
/* A7B0 80009BB0 960F000A */  lhu        $t7, 0xa($s0)
/* A7B4 80009BB4 25A30001 */  addiu      $v1, $t5, 1
/* A7B8 80009BB8 3066FFFF */  andi       $a2, $v1, 0xffff
/* A7BC 80009BBC 01E6C021 */  addu       $t8, $t7, $a2
/* A7C0 80009BC0 A618000A */  sh         $t8, 0xa($s0)
/* A7C4 80009BC4 8E390064 */  lw         $t9, 0x64($s1)
/* A7C8 80009BC8 3308FFFF */  andi       $t0, $t8, 0xffff
/* A7CC 80009BCC 24050001 */  addiu      $a1, $zero, 1
/* A7D0 80009BD0 97240006 */  lhu        $a0, 6($t9)
/* A7D4 80009BD4 0088082A */  slt        $at, $a0, $t0
/* A7D8 80009BD8 10200002 */  beqz       $at, .L80009BE4
/* A7DC 80009BDC 00000000 */   nop
/* A7E0 80009BE0 A604000A */  sh         $a0, 0xa($s0)
.L80009BE4:
/* A7E4 80009BE4 0C00637D */  jal        battleDamageSomething
/* A7E8 80009BE8 02202025 */   or        $a0, $s1, $zero
/* A7EC 80009BEC 02202025 */  or         $a0, $s1, $zero
/* A7F0 80009BF0 24050002 */  addiu      $a1, $zero, 2
/* A7F4 80009BF4 24060001 */  addiu      $a2, $zero, 1
/* A7F8 80009BF8 0C007F3E */  jal        func_8001FCF8
/* A7FC 80009BFC 2407001E */   addiu     $a3, $zero, 0x1e
/* A800 80009C00 1000000A */  b          .L80009C2C
/* A804 80009C04 960B0008 */   lhu       $t3, 8($s0)
.L80009C08:
/* A808 80009C08 0C001BDB */  jal        func_80006F6C
/* A80C 80009C0C 00000000 */   nop
/* A810 80009C10 3C038008 */  lui        $v1, %hi(brianAction)
/* A814 80009C14 2463BAB8 */  addiu      $v1, $v1, %lo(brianAction)
/* A818 80009C18 8C620010 */  lw         $v0, 0x10($v1)
/* A81C 80009C1C 9449002C */  lhu        $t1, 0x2c($v0)
/* A820 80009C20 252A0001 */  addiu      $t2, $t1, 1
/* A824 80009C24 A44A002C */  sh         $t2, 0x2c($v0)
.L80009C28:
/* A828 80009C28 960B0008 */  lhu        $t3, 8($s0)
.L80009C2C:
/* A82C 80009C2C 356C0008 */  ori        $t4, $t3, 8
/* A830 80009C30 A60C0008 */  sh         $t4, 8($s0)
/* A834 80009C34 860D0002 */  lh         $t5, 2($s0)
.L80009C38:
/* A838 80009C38 25AEFFFF */  addiu      $t6, $t5, -1
/* A83C 80009C3C A60E0002 */  sh         $t6, 2($s0)
/* A840 80009C40 860F0002 */  lh         $t7, 2($s0)
/* A844 80009C44 55E00048 */  bnel       $t7, $zero, .L80009D68
/* A848 80009C48 8FBF0024 */   lw        $ra, 0x24($sp)
/* A84C 80009C4C 96180006 */  lhu        $t8, 6($s0)
/* A850 80009C50 8E02001C */  lw         $v0, 0x1c($s0)
/* A854 80009C54 2401FFFF */  addiu      $at, $zero, -1
/* A858 80009C58 27190001 */  addiu      $t9, $t8, 1
/* A85C 80009C5C A6190006 */  sh         $t9, 6($s0)
/* A860 80009C60 8448000A */  lh         $t0, 0xa($v0)
/* A864 80009C64 8FB80030 */  lw         $t8, 0x30($sp)
/* A868 80009C68 02202025 */  or         $a0, $s1, $zero
/* A86C 80009C6C 5501000D */  bnel       $t0, $at, .L80009CA4
/* A870 80009C70 8459000C */   lh        $t9, 0xc($v0)
/* A874 80009C74 844A0008 */  lh         $t2, 8($v0)
/* A878 80009C78 8FA90030 */  lw         $t1, 0x30($sp)
/* A87C 80009C7C 944E0004 */  lhu        $t6, 4($v0)
/* A880 80009C80 000A5880 */  sll        $t3, $t2, 2
/* A884 80009C84 016A5823 */  subu       $t3, $t3, $t2
/* A888 80009C88 000B5880 */  sll        $t3, $t3, 2
/* A88C 80009C8C 012B6021 */  addu       $t4, $t1, $t3
/* A890 80009C90 858D0002 */  lh         $t5, 2($t4)
/* A894 80009C94 01AE7823 */  subu       $t7, $t5, $t6
/* A898 80009C98 10000014 */  b          .L80009CEC
/* A89C 80009C9C A60F0002 */   sh        $t7, 2($s0)
/* A8A0 80009CA0 8459000C */  lh         $t9, 0xc($v0)
.L80009CA4:
/* A8A4 80009CA4 240B0001 */  addiu      $t3, $zero, 1
/* A8A8 80009CA8 240C0001 */  addiu      $t4, $zero, 1
/* A8AC 80009CAC 00194080 */  sll        $t0, $t9, 2
/* A8B0 80009CB0 01194023 */  subu       $t0, $t0, $t9
/* A8B4 80009CB4 00084080 */  sll        $t0, $t0, 2
/* A8B8 80009CB8 03085021 */  addu       $t2, $t8, $t0
/* A8BC 80009CBC 85490002 */  lh         $t1, 2($t2)
/* A8C0 80009CC0 24060001 */  addiu      $a2, $zero, 1
/* A8C4 80009CC4 00003825 */  or         $a3, $zero, $zero
/* A8C8 80009CC8 A6090002 */  sh         $t1, 2($s0)
/* A8CC 80009CCC 8445000C */  lh         $a1, 0xc($v0)
/* A8D0 80009CD0 AFAC0014 */  sw         $t4, 0x14($sp)
/* A8D4 80009CD4 0C00762C */  jal        updateAnim
/* A8D8 80009CD8 AFAB0010 */   sw        $t3, 0x10($sp)
/* A8DC 80009CDC 3C058008 */  lui        $a1, %hi(D_8007D0D0)
/* A8E0 80009CE0 24A5D0D0 */  addiu      $a1, $a1, %lo(D_8007D0D0)
/* A8E4 80009CE4 0C0029F6 */  jal        func_8000A7D8
/* A8E8 80009CE8 02202025 */   or        $a0, $s1, $zero
.L80009CEC:
/* A8EC 80009CEC 860D0002 */  lh         $t5, 2($s0)
/* A8F0 80009CF0 240E0001 */  addiu      $t6, $zero, 1
/* A8F4 80009CF4 1DA00002 */  bgtz       $t5, .L80009D00
/* A8F8 80009CF8 00000000 */   nop
/* A8FC 80009CFC A60E0002 */  sh         $t6, 2($s0)
.L80009D00:
/* A900 80009D00 0C0074D6 */  jal        func_8001D358
/* A904 80009D04 02202025 */   or        $a0, $s1, $zero
/* A908 80009D08 10000017 */  b          .L80009D68
/* A90C 80009D0C 8FBF0024 */   lw        $ra, 0x24($sp)
.L80009D10:
/* A910 80009D10 3C058008 */  lui        $a1, %hi(D_8007D0D0)
/* A914 80009D14 0C0029F6 */  jal        func_8000A7D8
/* A918 80009D18 24A5D0D0 */   addiu     $a1, $a1, %lo(D_8007D0D0)
/* A91C 80009D1C 3C028008 */  lui        $v0, %hi(D_8007D0D0)
/* A920 80009D20 2442D0D0 */  addiu      $v0, $v0, %lo(D_8007D0D0)
/* A924 80009D24 8C450000 */  lw         $a1, ($v0)
/* A928 80009D28 8C460004 */  lw         $a2, 4($v0)
/* A92C 80009D2C 00002025 */  or         $a0, $zero, $zero
/* A930 80009D30 02203825 */  or         $a3, $s1, $zero
/* A934 80009D34 0C002942 */  jal        func_8000A508
/* A938 80009D38 AFB00010 */   sw        $s0, 0x10($sp)
/* A93C 80009D3C 860F0002 */  lh         $t7, 2($s0)
/* A940 80009D40 25F9FFFF */  addiu      $t9, $t7, -1
/* A944 80009D44 A6190002 */  sh         $t9, 2($s0)
/* A948 80009D48 86180002 */  lh         $t8, 2($s0)
/* A94C 80009D4C 57000006 */  bnel       $t8, $zero, .L80009D68
/* A950 80009D50 8FBF0024 */   lw        $ra, 0x24($sp)
/* A954 80009D54 A6000000 */  sh         $zero, ($s0)
/* A958 80009D58 96280060 */  lhu        $t0, 0x60($s1)
/* A95C 80009D5C 310AFFFE */  andi       $t2, $t0, 0xfffe
/* A960 80009D60 A62A0060 */  sh         $t2, 0x60($s1)
.L80009D64:
/* A964 80009D64 8FBF0024 */  lw         $ra, 0x24($sp)
.L80009D68:
/* A968 80009D68 8FB0001C */  lw         $s0, 0x1c($sp)
/* A96C 80009D6C 8FB10020 */  lw         $s1, 0x20($sp)
/* A970 80009D70 03E00008 */  jr         $ra
/* A974 80009D74 27BD0028 */   addiu     $sp, $sp, 0x28

glabel enemyAttack
/* A978 80009D78 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* A97C 80009D7C AFB10020 */  sw         $s1, 0x20($sp)
/* A980 80009D80 AFB0001C */  sw         $s0, 0x1c($sp)
/* A984 80009D84 00A08025 */  or         $s0, $a1, $zero
/* A988 80009D88 00808825 */  or         $s1, $a0, $zero
/* A98C 80009D8C AFBF0024 */  sw         $ra, 0x24($sp)
/* A990 80009D90 AFA60030 */  sw         $a2, 0x30($sp)
/* A994 80009D94 96020006 */  lhu        $v0, 6($s0)
/* A998 80009D98 24010001 */  addiu      $at, $zero, 1
/* A99C 80009D9C 50400008 */  beql       $v0, $zero, .L80009DC0
/* A9A0 80009DA0 8E0E001C */   lw        $t6, 0x1c($s0)
/* A9A4 80009DA4 10410047 */  beq        $v0, $at, .L80009EC4
/* A9A8 80009DA8 24010002 */   addiu     $at, $zero, 2
/* A9AC 80009DAC 50410062 */  beql       $v0, $at, .L80009F38
/* A9B0 80009DB0 8E18001C */   lw        $t8, 0x1c($s0)
/* A9B4 80009DB4 10000090 */  b          .L80009FF8
/* A9B8 80009DB8 8FBF0024 */   lw        $ra, 0x24($sp)
/* A9BC 80009DBC 8E0E001C */  lw         $t6, 0x1c($s0)
.L80009DC0:
/* A9C0 80009DC0 02202025 */  or         $a0, $s1, $zero
/* A9C4 80009DC4 3C058008 */  lui        $a1, 0x8008
/* A9C8 80009DC8 95CF0002 */  lhu        $t7, 2($t6)
/* A9CC 80009DCC 31F80002 */  andi       $t8, $t7, 2
/* A9D0 80009DD0 5300000C */  beql       $t8, $zero, .L80009E04
/* A9D4 80009DD4 86190002 */   lh        $t9, 2($s0)
/* A9D8 80009DD8 0C0029F6 */  jal        func_8000A7D8
/* A9DC 80009DDC 24A5D0D0 */   addiu     $a1, $a1, -0x2f30
/* A9E0 80009DE0 3C028008 */  lui        $v0, %hi(D_8007D0D0)
/* A9E4 80009DE4 2442D0D0 */  addiu      $v0, $v0, %lo(D_8007D0D0)
/* A9E8 80009DE8 8C450000 */  lw         $a1, ($v0)
/* A9EC 80009DEC 8C460004 */  lw         $a2, 4($v0)
/* A9F0 80009DF0 00002025 */  or         $a0, $zero, $zero
/* A9F4 80009DF4 02203825 */  or         $a3, $s1, $zero
/* A9F8 80009DF8 0C002942 */  jal        func_8000A508
/* A9FC 80009DFC AFB00010 */   sw        $s0, 0x10($sp)
/* AA00 80009E00 86190002 */  lh         $t9, 2($s0)
.L80009E04:
/* AA04 80009E04 02202025 */  or         $a0, $s1, $zero
/* AA08 80009E08 2728FFFF */  addiu      $t0, $t9, -1
/* AA0C 80009E0C A6080002 */  sh         $t0, 2($s0)
/* AA10 80009E10 86090002 */  lh         $t1, 2($s0)
/* AA14 80009E14 55200078 */  bnel       $t1, $zero, .L80009FF8
/* AA18 80009E18 8FBF0024 */   lw        $ra, 0x24($sp)
/* AA1C 80009E1C 8E0A001C */  lw         $t2, 0x1c($s0)
/* AA20 80009E20 3C01FFFF */  lui        $at, 0xffff
/* AA24 80009E24 34217FFF */  ori        $at, $at, 0x7fff
/* AA28 80009E28 95450000 */  lhu        $a1, ($t2)
/* AA2C 80009E2C 00003025 */  or         $a2, $zero, $zero
/* AA30 80009E30 00003825 */  or         $a3, $zero, $zero
/* AA34 80009E34 00A15824 */  and        $t3, $a1, $at
/* AA38 80009E38 0C0052A6 */  jal        func_80014A98
/* AA3C 80009E3C 01602825 */   or        $a1, $t3, $zero
/* AA40 80009E40 960C0006 */  lhu        $t4, 6($s0)
/* AA44 80009E44 8E02001C */  lw         $v0, 0x1c($s0)
/* AA48 80009E48 2401FFFF */  addiu      $at, $zero, -1
/* AA4C 80009E4C 258D0001 */  addiu      $t5, $t4, 1
/* AA50 80009E50 A60D0006 */  sh         $t5, 6($s0)
/* AA54 80009E54 844E000A */  lh         $t6, 0xa($v0)
/* AA58 80009E58 55C1000D */  bnel       $t6, $at, .L80009E90
/* AA5C 80009E5C 960C0006 */   lhu       $t4, 6($s0)
/* AA60 80009E60 84580008 */  lh         $t8, 8($v0)
/* AA64 80009E64 8FAF0030 */  lw         $t7, 0x30($sp)
/* AA68 80009E68 944A0004 */  lhu        $t2, 4($v0)
/* AA6C 80009E6C 0018C880 */  sll        $t9, $t8, 2
/* AA70 80009E70 0338C823 */  subu       $t9, $t9, $t8
/* AA74 80009E74 0019C880 */  sll        $t9, $t9, 2
/* AA78 80009E78 01F94021 */  addu       $t0, $t7, $t9
/* AA7C 80009E7C 85090002 */  lh         $t1, 2($t0)
/* AA80 80009E80 012A5823 */  subu       $t3, $t1, $t2
/* AA84 80009E84 10000006 */  b          .L80009EA0
/* AA88 80009E88 A60B0002 */   sh        $t3, 2($s0)
/* AA8C 80009E8C 960C0006 */  lhu        $t4, 6($s0)
.L80009E90:
/* AA90 80009E90 258D0001 */  addiu      $t5, $t4, 1
/* AA94 80009E94 A60D0006 */  sh         $t5, 6($s0)
/* AA98 80009E98 944E0006 */  lhu        $t6, 6($v0)
/* AA9C 80009E9C A60E0002 */  sh         $t6, 2($s0)
.L80009EA0:
/* AAA0 80009EA0 86180002 */  lh         $t8, 2($s0)
/* AAA4 80009EA4 240F000F */  addiu      $t7, $zero, 0xf
/* AAA8 80009EA8 1F000002 */  bgtz       $t8, .L80009EB4
/* AAAC 80009EAC 00000000 */   nop
/* AAB0 80009EB0 A60F0002 */  sh         $t7, 2($s0)
.L80009EB4:
/* AAB4 80009EB4 0C0074D6 */  jal        func_8001D358
/* AAB8 80009EB8 02202025 */   or        $a0, $s1, $zero
/* AABC 80009EBC 1000004E */  b          .L80009FF8
/* AAC0 80009EC0 8FBF0024 */   lw        $ra, 0x24($sp)
.L80009EC4:
/* AAC4 80009EC4 8E19001C */  lw         $t9, 0x1c($s0)
/* AAC8 80009EC8 02202025 */  or         $a0, $s1, $zero
/* AACC 80009ECC 3C058008 */  lui        $a1, 0x8008
/* AAD0 80009ED0 97280002 */  lhu        $t0, 2($t9)
/* AAD4 80009ED4 3109000A */  andi       $t1, $t0, 0xa
/* AAD8 80009ED8 5120000C */  beql       $t1, $zero, .L80009F0C
/* AADC 80009EDC 860A0002 */   lh        $t2, 2($s0)
/* AAE0 80009EE0 0C0029F6 */  jal        func_8000A7D8
/* AAE4 80009EE4 24A5D0D0 */   addiu     $a1, $a1, -0x2f30
/* AAE8 80009EE8 3C028008 */  lui        $v0, %hi(D_8007D0D0)
/* AAEC 80009EEC 2442D0D0 */  addiu      $v0, $v0, %lo(D_8007D0D0)
/* AAF0 80009EF0 8C450000 */  lw         $a1, ($v0)
/* AAF4 80009EF4 8C460004 */  lw         $a2, 4($v0)
/* AAF8 80009EF8 00002025 */  or         $a0, $zero, $zero
/* AAFC 80009EFC 02203825 */  or         $a3, $s1, $zero
/* AB00 80009F00 0C002942 */  jal        func_8000A508
/* AB04 80009F04 AFB00010 */   sw        $s0, 0x10($sp)
/* AB08 80009F08 860A0002 */  lh         $t2, 2($s0)
.L80009F0C:
/* AB0C 80009F0C 254BFFFF */  addiu      $t3, $t2, -1
/* AB10 80009F10 A60B0002 */  sh         $t3, 2($s0)
/* AB14 80009F14 860C0002 */  lh         $t4, 2($s0)
/* AB18 80009F18 55800037 */  bnel       $t4, $zero, .L80009FF8
/* AB1C 80009F1C 8FBF0024 */   lw        $ra, 0x24($sp)
/* AB20 80009F20 A6000000 */  sh         $zero, ($s0)
/* AB24 80009F24 962D0060 */  lhu        $t5, 0x60($s1)
/* AB28 80009F28 31AEFFFE */  andi       $t6, $t5, 0xfffe
/* AB2C 80009F2C 10000031 */  b          .L80009FF4
/* AB30 80009F30 A62E0060 */   sh        $t6, 0x60($s1)
/* AB34 80009F34 8E18001C */  lw         $t8, 0x1c($s0)
.L80009F38:
/* AB38 80009F38 02202025 */  or         $a0, $s1, $zero
/* AB3C 80009F3C 3C058008 */  lui        $a1, 0x8008
/* AB40 80009F40 970F0002 */  lhu        $t7, 2($t8)
/* AB44 80009F44 31F9000A */  andi       $t9, $t7, 0xa
/* AB48 80009F48 5320000C */  beql       $t9, $zero, .L80009F7C
/* AB4C 80009F4C 86080002 */   lh        $t0, 2($s0)
/* AB50 80009F50 0C0029F6 */  jal        func_8000A7D8
/* AB54 80009F54 24A5D0D0 */   addiu     $a1, $a1, -0x2f30
/* AB58 80009F58 3C028008 */  lui        $v0, %hi(D_8007D0D0)
/* AB5C 80009F5C 2442D0D0 */  addiu      $v0, $v0, %lo(D_8007D0D0)
/* AB60 80009F60 8C450000 */  lw         $a1, ($v0)
/* AB64 80009F64 8C460004 */  lw         $a2, 4($v0)
/* AB68 80009F68 00002025 */  or         $a0, $zero, $zero
/* AB6C 80009F6C 02203825 */  or         $a3, $s1, $zero
/* AB70 80009F70 0C002942 */  jal        func_8000A508
/* AB74 80009F74 AFB00010 */   sw        $s0, 0x10($sp)
/* AB78 80009F78 86080002 */  lh         $t0, 2($s0)
.L80009F7C:
/* AB7C 80009F7C 02202025 */  or         $a0, $s1, $zero
/* AB80 80009F80 2509FFFF */  addiu      $t1, $t0, -1
/* AB84 80009F84 A6090002 */  sh         $t1, 2($s0)
/* AB88 80009F88 86020002 */  lh         $v0, 2($s0)
/* AB8C 80009F8C 14400016 */  bnez       $v0, .L80009FE8
/* AB90 80009F90 00000000 */   nop
/* AB94 80009F94 960A0006 */  lhu        $t2, 6($s0)
/* AB98 80009F98 8E02001C */  lw         $v0, 0x1c($s0)
/* AB9C 80009F9C 24190001 */  addiu      $t9, $zero, 1
/* ABA0 80009FA0 254BFFFF */  addiu      $t3, $t2, -1
/* ABA4 80009FA4 A60B0006 */  sh         $t3, 6($s0)
/* ABA8 80009FA8 844D000C */  lh         $t5, 0xc($v0)
/* ABAC 80009FAC 8FAC0030 */  lw         $t4, 0x30($sp)
/* ABB0 80009FB0 24080001 */  addiu      $t0, $zero, 1
/* ABB4 80009FB4 000D7080 */  sll        $t6, $t5, 2
/* ABB8 80009FB8 01CD7023 */  subu       $t6, $t6, $t5
/* ABBC 80009FBC 000E7080 */  sll        $t6, $t6, 2
/* ABC0 80009FC0 018EC021 */  addu       $t8, $t4, $t6
/* ABC4 80009FC4 870F0002 */  lh         $t7, 2($t8)
/* ABC8 80009FC8 24060001 */  addiu      $a2, $zero, 1
/* ABCC 80009FCC 00003825 */  or         $a3, $zero, $zero
/* ABD0 80009FD0 A60F0002 */  sh         $t7, 2($s0)
/* ABD4 80009FD4 8445000C */  lh         $a1, 0xc($v0)
/* ABD8 80009FD8 AFA80014 */  sw         $t0, 0x14($sp)
/* ABDC 80009FDC 0C00762C */  jal        updateAnim
/* ABE0 80009FE0 AFB90010 */   sw        $t9, 0x10($sp)
/* ABE4 80009FE4 86020002 */  lh         $v0, 2($s0)
.L80009FE8:
/* ABE8 80009FE8 1C400002 */  bgtz       $v0, .L80009FF4
/* ABEC 80009FEC 2409000F */   addiu     $t1, $zero, 0xf
/* ABF0 80009FF0 A6090002 */  sh         $t1, 2($s0)
.L80009FF4:
/* ABF4 80009FF4 8FBF0024 */  lw         $ra, 0x24($sp)
.L80009FF8:
/* ABF8 80009FF8 8FB0001C */  lw         $s0, 0x1c($sp)
/* ABFC 80009FFC 8FB10020 */  lw         $s1, 0x20($sp)
/* AC00 8000A000 03E00008 */  jr         $ra
/* AC04 8000A004 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8000A008
/* AC08 8000A008 27BDFF88 */  addiu      $sp, $sp, -0x78
/* AC0C 8000A00C AFB10018 */  sw         $s1, 0x18($sp)
/* AC10 8000A010 AFB00014 */  sw         $s0, 0x14($sp)
/* AC14 8000A014 3C028008 */  lui        $v0, %hi(brianAction)
/* AC18 8000A018 2442BAB8 */  addiu      $v0, $v0, %lo(brianAction)
/* AC1C 8000A01C 00808025 */  or         $s0, $a0, $zero
/* AC20 8000A020 00A08825 */  or         $s1, $a1, $zero
/* AC24 8000A024 AFBF001C */  sw         $ra, 0x1c($sp)
/* AC28 8000A028 960E0008 */  lhu        $t6, 8($s0)
/* AC2C 8000A02C 31CFFFEF */  andi       $t7, $t6, 0xffef
/* AC30 8000A030 A60F0008 */  sh         $t7, 8($s0)
/* AC34 8000A034 C6260000 */  lwc1       $f6, ($s1)
/* AC38 8000A038 C4440014 */  lwc1       $f4, 0x14($v0)
/* AC3C 8000A03C C62A0008 */  lwc1       $f10, 8($s1)
/* AC40 8000A040 C448001C */  lwc1       $f8, 0x1c($v0)
/* AC44 8000A044 46062001 */  sub.s      $f0, $f4, $f6
/* AC48 8000A048 460A4081 */  sub.s      $f2, $f8, $f10
/* AC4C 8000A04C 46000482 */  mul.s      $f18, $f0, $f0
/* AC50 8000A050 00000000 */  nop
/* AC54 8000A054 46021102 */  mul.s      $f4, $f2, $f2
/* AC58 8000A058 0C00D3D8 */  jal        _nsqrtf
/* AC5C 8000A05C 46049300 */   add.s     $f12, $f18, $f4
/* AC60 8000A060 3C188008 */  lui        $t8, %hi(brianDataPtr)
/* AC64 8000A064 8F18BB30 */  lw         $t8, %lo(brianDataPtr)($t8)
/* AC68 8000A068 3C018008 */  lui        $at, %hi(BrianActor+0x24)
/* AC6C 8000A06C C428BAF0 */  lwc1       $f8, %lo(BrianActor+0x24)($at)
/* AC70 8000A070 C7060018 */  lwc1       $f6, 0x18($t8)
/* AC74 8000A074 8E090020 */  lw         $t1, 0x20($s0)
/* AC78 8000A078 00002025 */  or         $a0, $zero, $zero
/* AC7C 8000A07C 46083282 */  mul.s      $f10, $f6, $f8
/* AC80 8000A080 9526002C */  lhu        $a2, 0x2c($t1)
/* AC84 8000A084 27A3003C */  addiu      $v1, $sp, 0x3c
/* AC88 8000A088 00004025 */  or         $t0, $zero, $zero
/* AC8C 8000A08C 8D2A0030 */  lw         $t2, 0x30($t1)
/* AC90 8000A090 10C0000B */  beqz       $a2, .L8000A0C0
/* AC94 8000A094 460A0401 */   sub.s     $f16, $f0, $f10
/* AC98 8000A098 AC6A0000 */  sw         $t2, ($v1)
.L8000A09C:
/* AC9C 8000A09C 8E090020 */  lw         $t1, 0x20($s0)
/* ACA0 8000A0A0 24840001 */  addiu      $a0, $a0, 1
/* ACA4 8000A0A4 24630004 */  addiu      $v1, $v1, 4
/* ACA8 8000A0A8 9526002C */  lhu        $a2, 0x2c($t1)
/* ACAC 8000A0AC 254A0018 */  addiu      $t2, $t2, 0x18
/* ACB0 8000A0B0 0086082B */  sltu       $at, $a0, $a2
/* ACB4 8000A0B4 5420FFF9 */  bnel       $at, $zero, .L8000A09C
/* ACB8 8000A0B8 AC6A0000 */   sw        $t2, ($v1)
/* ACBC 8000A0BC 00002025 */  or         $a0, $zero, $zero
.L8000A0C0:
/* ACC0 8000A0C0 24C7FFFF */  addiu      $a3, $a2, -1
.L8000A0C4:
/* ACC4 8000A0C4 10E00014 */  beqz       $a3, .L8000A118
/* ACC8 8000A0C8 27A3003C */   addiu     $v1, $sp, 0x3c
.L8000A0CC:
/* ACCC 8000A0CC 8C650000 */  lw         $a1, ($v1)
/* ACD0 8000A0D0 8C620004 */  lw         $v0, 4($v1)
/* ACD4 8000A0D4 24840001 */  addiu      $a0, $a0, 1
/* ACD8 8000A0D8 C4A40010 */  lwc1       $f4, 0x10($a1)
/* ACDC 8000A0DC C4520010 */  lwc1       $f18, 0x10($v0)
/* ACE0 8000A0E0 4604903C */  c.lt.s     $f18, $f4
/* ACE4 8000A0E4 00000000 */  nop
/* ACE8 8000A0E8 45020008 */  bc1fl      .L8000A10C
/* ACEC 8000A0EC 0087082B */   sltu      $at, $a0, $a3
/* ACF0 8000A0F0 AC620000 */  sw         $v0, ($v1)
/* ACF4 8000A0F4 AC650004 */  sw         $a1, 4($v1)
/* ACF8 8000A0F8 8E090020 */  lw         $t1, 0x20($s0)
/* ACFC 8000A0FC 25080001 */  addiu      $t0, $t0, 1
/* AD00 8000A100 9526002C */  lhu        $a2, 0x2c($t1)
/* AD04 8000A104 24C7FFFF */  addiu      $a3, $a2, -1
/* AD08 8000A108 0087082B */  sltu       $at, $a0, $a3
.L8000A10C:
/* AD0C 8000A10C 1420FFEF */  bnez       $at, .L8000A0CC
/* AD10 8000A110 24630004 */   addiu     $v1, $v1, 4
/* AD14 8000A114 00002025 */  or         $a0, $zero, $zero
.L8000A118:
/* AD18 8000A118 0008102B */  sltu       $v0, $zero, $t0
/* AD1C 8000A11C 1440FFE9 */  bnez       $v0, .L8000A0C4
/* AD20 8000A120 00004025 */   or        $t0, $zero, $zero
/* AD24 8000A124 10C00041 */  beqz       $a2, .L8000A22C
/* AD28 8000A128 00C01025 */   or        $v0, $a2, $zero
/* AD2C 8000A12C C6060010 */  lwc1       $f6, 0x10($s0)
/* AD30 8000A130 C6080120 */  lwc1       $f8, 0x120($s0)
/* AD34 8000A134 27A3003C */  addiu      $v1, $sp, 0x3c
/* AD38 8000A138 C62C0024 */  lwc1       $f12, 0x24($s1)
/* AD3C 8000A13C 46083382 */  mul.s      $f14, $f6, $f8
/* AD40 8000A140 00000000 */  nop
.L8000A144:
/* AD44 8000A144 0087082B */  sltu       $at, $a0, $a3
/* AD48 8000A148 10200023 */  beqz       $at, .L8000A1D8
/* AD4C 8000A14C 8C6A0000 */   lw        $t2, ($v1)
/* AD50 8000A150 C54A0010 */  lwc1       $f10, 0x10($t2)
/* AD54 8000A154 460C5002 */  mul.s      $f0, $f10, $f12
/* AD58 8000A158 4600803C */  c.lt.s     $f16, $f0
/* AD5C 8000A15C 46007080 */  add.s      $f2, $f14, $f0
/* AD60 8000A160 45020004 */  bc1fl      .L8000A174
/* AD64 8000A164 4602803C */   c.lt.s    $f16, $f2
/* AD68 8000A168 10000030 */  b          .L8000A22C
/* AD6C 8000A16C 24080001 */   addiu     $t0, $zero, 1
/* AD70 8000A170 4602803C */  c.lt.s     $f16, $f2
.L8000A174:
/* AD74 8000A174 00000000 */  nop
/* AD78 8000A178 45020029 */  bc1fl      .L8000A220
/* AD7C 8000A17C 24840001 */   addiu     $a0, $a0, 1
/* AD80 8000A180 8C650004 */  lw         $a1, 4($v1)
/* AD84 8000A184 C4B20010 */  lwc1       $f18, 0x10($a1)
/* AD88 8000A188 460C9002 */  mul.s      $f0, $f18, $f12
/* AD8C 8000A18C 4600803C */  c.lt.s     $f16, $f0
/* AD90 8000A190 00000000 */  nop
/* AD94 8000A194 45020022 */  bc1fl      .L8000A220
/* AD98 8000A198 24840001 */   addiu     $a0, $a0, 1
/* AD9C 8000A19C 24040002 */  addiu      $a0, $zero, 2
/* ADA0 8000A1A0 AFA50050 */  sw         $a1, 0x50($sp)
/* ADA4 8000A1A4 0C008BF4 */  jal        srand
/* ADA8 8000A1A8 AFAA0054 */   sw        $t2, 0x54($sp)
/* ADAC 8000A1AC 8FA50050 */  lw         $a1, 0x50($sp)
/* ADB0 8000A1B0 14400002 */  bnez       $v0, .L8000A1BC
/* ADB4 8000A1B4 8FAA0054 */   lw        $t2, 0x54($sp)
/* ADB8 8000A1B8 00A05025 */  or         $t2, $a1, $zero
.L8000A1BC:
/* ADBC 8000A1BC 11450004 */  beq        $t2, $a1, .L8000A1D0
/* ADC0 8000A1C0 24080001 */   addiu     $t0, $zero, 1
/* ADC4 8000A1C4 96190008 */  lhu        $t9, 8($s0)
/* ADC8 8000A1C8 372B0010 */  ori        $t3, $t9, 0x10
/* ADCC 8000A1CC A60B0008 */  sh         $t3, 8($s0)
.L8000A1D0:
/* ADD0 8000A1D0 10000016 */  b          .L8000A22C
/* ADD4 8000A1D4 8E090020 */   lw        $t1, 0x20($s0)
.L8000A1D8:
/* ADD8 8000A1D8 C5440010 */  lwc1       $f4, 0x10($t2)
/* ADDC 8000A1DC 460C2002 */  mul.s      $f0, $f4, $f12
/* ADE0 8000A1E0 46007080 */  add.s      $f2, $f14, $f0
/* ADE4 8000A1E4 4602803C */  c.lt.s     $f16, $f2
/* ADE8 8000A1E8 00000000 */  nop
/* ADEC 8000A1EC 4502000C */  bc1fl      .L8000A220
/* ADF0 8000A1F0 24840001 */   addiu     $a0, $a0, 1
/* ADF4 8000A1F4 4610003C */  c.lt.s     $f0, $f16
/* ADF8 8000A1F8 00000000 */  nop
/* ADFC 8000A1FC 45000005 */  bc1f       .L8000A214
/* AE00 8000A200 00000000 */   nop
/* AE04 8000A204 960C0008 */  lhu        $t4, 8($s0)
/* AE08 8000A208 8E090020 */  lw         $t1, 0x20($s0)
/* AE0C 8000A20C 358D0010 */  ori        $t5, $t4, 0x10
/* AE10 8000A210 A60D0008 */  sh         $t5, 8($s0)
.L8000A214:
/* AE14 8000A214 10000005 */  b          .L8000A22C
/* AE18 8000A218 24080001 */   addiu     $t0, $zero, 1
/* AE1C 8000A21C 24840001 */  addiu      $a0, $a0, 1
.L8000A220:
/* AE20 8000A220 0082082B */  sltu       $at, $a0, $v0
/* AE24 8000A224 1420FFC7 */  bnez       $at, .L8000A144
/* AE28 8000A228 24630004 */   addiu     $v1, $v1, 4
.L8000A22C:
/* AE2C 8000A22C 55000003 */  bnel       $t0, $zero, .L8000A23C
/* AE30 8000A230 952E0024 */   lhu       $t6, 0x24($t1)
/* AE34 8000A234 00005025 */  or         $t2, $zero, $zero
/* AE38 8000A238 952E0024 */  lhu        $t6, 0x24($t1)
.L8000A23C:
/* AE3C 8000A23C 31CF0004 */  andi       $t7, $t6, 4
/* AE40 8000A240 51E0000A */  beql       $t7, $zero, .L8000A26C
/* AE44 8000A244 AE0A001C */   sw        $t2, 0x1c($s0)
/* AE48 8000A248 0C008BF4 */  jal        srand
/* AE4C 8000A24C 9524002C */   lhu       $a0, 0x2c($t1)
/* AE50 8000A250 8E190020 */  lw         $t9, 0x20($s0)
/* AE54 8000A254 0002C080 */  sll        $t8, $v0, 2
/* AE58 8000A258 0302C023 */  subu       $t8, $t8, $v0
/* AE5C 8000A25C 8F2B0030 */  lw         $t3, 0x30($t9)
/* AE60 8000A260 0018C0C0 */  sll        $t8, $t8, 3
/* AE64 8000A264 030B5021 */  addu       $t2, $t8, $t3
/* AE68 8000A268 AE0A001C */  sw         $t2, 0x1c($s0)
.L8000A26C:
/* AE6C 8000A26C 01401025 */  or         $v0, $t2, $zero
/* AE70 8000A270 8FBF001C */  lw         $ra, 0x1c($sp)
/* AE74 8000A274 8FB00014 */  lw         $s0, 0x14($sp)
/* AE78 8000A278 8FB10018 */  lw         $s1, 0x18($sp)
/* AE7C 8000A27C 03E00008 */  jr         $ra
/* AE80 8000A280 27BD0078 */   addiu     $sp, $sp, 0x78

glabel func_8000A284
/* AE84 8000A284 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* AE88 8000A288 AFB20028 */  sw         $s2, 0x28($sp)
/* AE8C 8000A28C AFB10024 */  sw         $s1, 0x24($sp)
/* AE90 8000A290 AFB00020 */  sw         $s0, 0x20($sp)
/* AE94 8000A294 00808025 */  or         $s0, $a0, $zero
/* AE98 8000A298 00A08825 */  or         $s1, $a1, $zero
/* AE9C 8000A29C 00C09025 */  or         $s2, $a2, $zero
/* AEA0 8000A2A0 AFBF002C */  sw         $ra, 0x2c($sp)
/* AEA4 8000A2A4 96420000 */  lhu        $v0, ($s2)
/* AEA8 8000A2A8 304E8000 */  andi       $t6, $v0, 0x8000
/* AEAC 8000A2AC 11C00012 */  beqz       $t6, .L8000A2F8
/* AEB0 8000A2B0 01C01025 */   or        $v0, $t6, $zero
/* AEB4 8000A2B4 960F0090 */  lhu        $t7, 0x90($s0)
/* AEB8 8000A2B8 02202025 */  or         $a0, $s1, $zero
/* AEBC 8000A2BC 00002825 */  or         $a1, $zero, $zero
/* AEC0 8000A2C0 31F80040 */  andi       $t8, $t7, 0x40
/* AEC4 8000A2C4 1300000C */  beqz       $t8, .L8000A2F8
/* AEC8 8000A2C8 24060001 */   addiu     $a2, $zero, 1
/* AECC 8000A2CC A6000000 */  sh         $zero, ($s0)
/* AED0 8000A2D0 24190001 */  addiu      $t9, $zero, 1
/* AED4 8000A2D4 24080001 */  addiu      $t0, $zero, 1
/* AED8 8000A2D8 AFA80014 */  sw         $t0, 0x14($sp)
/* AEDC 8000A2DC AFB90010 */  sw         $t9, 0x10($sp)
/* AEE0 8000A2E0 0C00762C */  jal        updateAnim
/* AEE4 8000A2E4 00003825 */   or        $a3, $zero, $zero
/* AEE8 8000A2E8 0C0074D6 */  jal        func_8001D358
/* AEEC 8000A2EC 02202025 */   or        $a0, $s1, $zero
/* AEF0 8000A2F0 1000003B */  b          .L8000A3E0
/* AEF4 8000A2F4 8FBF002C */   lw        $ra, 0x2c($sp)
.L8000A2F8:
/* AEF8 8000A2F8 10400004 */  beqz       $v0, .L8000A30C
/* AEFC 8000A2FC 240E0001 */   addiu     $t6, $zero, 1
/* AF00 8000A300 24090005 */  addiu      $t1, $zero, 5
/* AF04 8000A304 10000003 */  b          .L8000A314
/* AF08 8000A308 A6090000 */   sh        $t1, ($s0)
.L8000A30C:
/* AF0C 8000A30C 240A0004 */  addiu      $t2, $zero, 4
/* AF10 8000A310 A60A0000 */  sh         $t2, ($s0)
.L8000A314:
/* AF14 8000A314 960C0008 */  lhu        $t4, 8($s0)
/* AF18 8000A318 A6000006 */  sh         $zero, 6($s0)
/* AF1C 8000A31C 964B0004 */  lhu        $t3, 4($s2)
/* AF20 8000A320 318DFFF7 */  andi       $t5, $t4, 0xfff7
/* AF24 8000A324 A60D0008 */  sh         $t5, 8($s0)
/* AF28 8000A328 A60B0002 */  sh         $t3, 2($s0)
/* AF2C 8000A32C 3C028008 */  lui        $v0, %hi(brianAction)
/* AF30 8000A330 2442BAB8 */  addiu      $v0, $v0, %lo(brianAction)
/* AF34 8000A334 A62E0060 */  sh         $t6, 0x60($s1)
/* AF38 8000A338 C448001C */  lwc1       $f8, 0x1c($v0)
/* AF3C 8000A33C C4440014 */  lwc1       $f4, 0x14($v0)
/* AF40 8000A340 C62A0008 */  lwc1       $f10, 8($s1)
/* AF44 8000A344 C6260000 */  lwc1       $f6, ($s1)
/* AF48 8000A348 460A4381 */  sub.s      $f14, $f8, $f10
/* AF4C 8000A34C 0C008C84 */  jal        func_80023210
/* AF50 8000A350 46062301 */   sub.s     $f12, $f4, $f6
/* AF54 8000A354 E6200010 */  swc1       $f0, 0x10($s1)
/* AF58 8000A358 8642000A */  lh         $v0, 0xa($s2)
/* AF5C 8000A35C 2401FFFF */  addiu      $at, $zero, -1
/* AF60 8000A360 02202025 */  or         $a0, $s1, $zero
/* AF64 8000A364 14410003 */  bne        $v0, $at, .L8000A374
/* AF68 8000A368 24060001 */   addiu     $a2, $zero, 1
/* AF6C 8000A36C 10000002 */  b          .L8000A378
/* AF70 8000A370 00003825 */   or        $a3, $zero, $zero
.L8000A374:
/* AF74 8000A374 00403825 */  or         $a3, $v0, $zero
.L8000A378:
/* AF78 8000A378 86450008 */  lh         $a1, 8($s2)
/* AF7C 8000A37C 240F0001 */  addiu      $t7, $zero, 1
/* AF80 8000A380 24180001 */  addiu      $t8, $zero, 1
/* AF84 8000A384 AFB80014 */  sw         $t8, 0x14($sp)
/* AF88 8000A388 0C00762C */  jal        updateAnim
/* AF8C 8000A38C AFAF0010 */   sw        $t7, 0x10($sp)
/* AF90 8000A390 96440004 */  lhu        $a0, 4($s2)
/* AF94 8000A394 02202825 */  or         $a1, $s1, $zero
/* AF98 8000A398 0C00503B */  jal        cameraPosSomething
/* AF9C 8000A39C 2484000F */   addiu     $a0, $a0, 0xf
/* AFA0 8000A3A0 86190002 */  lh         $t9, 2($s0)
/* AFA4 8000A3A4 24080001 */  addiu      $t0, $zero, 1
/* AFA8 8000A3A8 3C098009 */  lui        $t1, %hi(BattleState)
/* AFAC 8000A3AC 17200002 */  bnez       $t9, .L8000A3B8
/* AFB0 8000A3B0 00000000 */   nop
/* AFB4 8000A3B4 A6080002 */  sh         $t0, 2($s0)
.L8000A3B8:
/* AFB8 8000A3B8 9529C592 */  lhu        $t1, %lo(BattleState)($t1)
/* AFBC 8000A3BC 312A0100 */  andi       $t2, $t1, 0x100
/* AFC0 8000A3C0 51400007 */  beql       $t2, $zero, .L8000A3E0
/* AFC4 8000A3C4 8FBF002C */   lw        $ra, 0x2c($sp)
/* AFC8 8000A3C8 96440000 */  lhu        $a0, ($s2)
/* AFCC 8000A3CC 02002825 */  or         $a1, $s0, $zero
/* AFD0 8000A3D0 308B00FF */  andi       $t3, $a0, 0xff
/* AFD4 8000A3D4 0C002CB2 */  jal        func_8000B2C8
/* AFD8 8000A3D8 01602025 */   or        $a0, $t3, $zero
/* AFDC 8000A3DC 8FBF002C */  lw         $ra, 0x2c($sp)
.L8000A3E0:
/* AFE0 8000A3E0 8FB00020 */  lw         $s0, 0x20($sp)
/* AFE4 8000A3E4 8FB10024 */  lw         $s1, 0x24($sp)
/* AFE8 8000A3E8 8FB20028 */  lw         $s2, 0x28($sp)
/* AFEC 8000A3EC 03E00008 */  jr         $ra
/* AFF0 8000A3F0 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_8000A3F4
/* AFF4 8000A3F4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* AFF8 8000A3F8 44856000 */  mtc1       $a1, $f12
/* AFFC 8000A3FC 44867000 */  mtc1       $a2, $f14
/* B000 8000A400 AFBF0014 */  sw         $ra, 0x14($sp)
/* B004 8000A404 C4840000 */  lwc1       $f4, ($a0)
/* B008 8000A408 C4860008 */  lwc1       $f6, 8($a0)
/* B00C 8000A40C AFA40018 */  sw         $a0, 0x18($sp)
/* B010 8000A410 46046301 */  sub.s      $f12, $f12, $f4
/* B014 8000A414 0C008C84 */  jal        func_80023210
/* B018 8000A418 46067381 */   sub.s     $f14, $f14, $f6
/* B01C 8000A41C 8FA40018 */  lw         $a0, 0x18($sp)
/* B020 8000A420 3C018007 */  lui        $at, %hi(D_80071160)
/* B024 8000A424 D4301160 */  ldc1       $f16, %lo(D_80071160)($at)
/* B028 8000A428 C48E0010 */  lwc1       $f14, 0x10($a0)
/* B02C 8000A42C 3C018007 */  lui        $at, 0x8007
/* B030 8000A430 460E0301 */  sub.s      $f12, $f0, $f14
/* B034 8000A434 460060A1 */  cvt.d.s    $f2, $f12
/* B038 8000A438 4622803C */  c.lt.d     $f16, $f2
/* B03C 8000A43C 00000000 */  nop
/* B040 8000A440 45000007 */  bc1f       .L8000A460
/* B044 8000A444 00000000 */   nop
/* B048 8000A448 3C018007 */  lui        $at, %hi(D_80071168)
/* B04C 8000A44C D4321168 */  ldc1       $f18, %lo(D_80071168)($at)
/* B050 8000A450 46321201 */  sub.d      $f8, $f2, $f18
/* B054 8000A454 46204320 */  cvt.s.d    $f12, $f8
/* B058 8000A458 1000000B */  b          .L8000A488
/* B05C 8000A45C 460060A1 */   cvt.d.s   $f2, $f12
.L8000A460:
/* B060 8000A460 D42A1170 */  ldc1       $f10, 0x1170($at)
/* B064 8000A464 3C018007 */  lui        $at, %hi(D_80071178)
/* B068 8000A468 462A103C */  c.lt.d     $f2, $f10
/* B06C 8000A46C 00000000 */  nop
/* B070 8000A470 45000005 */  bc1f       .L8000A488
/* B074 8000A474 00000000 */   nop
/* B078 8000A478 D4321178 */  ldc1       $f18, %lo(D_80071178)($at)
/* B07C 8000A47C 46321100 */  add.d      $f4, $f2, $f18
/* B080 8000A480 46202320 */  cvt.s.d    $f12, $f4
/* B084 8000A484 460060A1 */  cvt.d.s    $f2, $f12
.L8000A488:
/* B088 8000A488 3C018007 */  lui        $at, %hi(D_80071180)
/* B08C 8000A48C D4321180 */  ldc1       $f18, %lo(D_80071180)($at)
/* B090 8000A490 3C018007 */  lui        $at, %hi(D_80071188)
/* B094 8000A494 D4281188 */  ldc1       $f8, %lo(D_80071188)($at)
/* B098 8000A498 460071A1 */  cvt.d.s    $f6, $f14
/* B09C 8000A49C 3C018007 */  lui        $at, 0x8007
/* B0A0 8000A4A0 46281282 */  mul.d      $f10, $f2, $f8
/* B0A4 8000A4A4 462A3100 */  add.d      $f4, $f6, $f10
/* B0A8 8000A4A8 46202220 */  cvt.s.d    $f8, $f4
/* B0AC 8000A4AC E4880010 */  swc1       $f8, 0x10($a0)
/* B0B0 8000A4B0 C4860010 */  lwc1       $f6, 0x10($a0)
/* B0B4 8000A4B4 46003021 */  cvt.d.s    $f0, $f6
/* B0B8 8000A4B8 4620803C */  c.lt.d     $f16, $f0
/* B0BC 8000A4BC 00000000 */  nop
/* B0C0 8000A4C0 45000005 */  bc1f       .L8000A4D8
/* B0C4 8000A4C4 00000000 */   nop
/* B0C8 8000A4C8 46320281 */  sub.d      $f10, $f0, $f18
/* B0CC 8000A4CC 46205120 */  cvt.s.d    $f4, $f10
/* B0D0 8000A4D0 10000009 */  b          .L8000A4F8
/* B0D4 8000A4D4 E4840010 */   swc1      $f4, 0x10($a0)
.L8000A4D8:
/* B0D8 8000A4D8 D4281190 */  ldc1       $f8, 0x1190($at)
/* B0DC 8000A4DC 4628003C */  c.lt.d     $f0, $f8
/* B0E0 8000A4E0 00000000 */  nop
/* B0E4 8000A4E4 45020005 */  bc1fl      .L8000A4FC
/* B0E8 8000A4E8 8FBF0014 */   lw        $ra, 0x14($sp)
/* B0EC 8000A4EC 46320180 */  add.d      $f6, $f0, $f18
/* B0F0 8000A4F0 462032A0 */  cvt.s.d    $f10, $f6
/* B0F4 8000A4F4 E48A0010 */  swc1       $f10, 0x10($a0)
.L8000A4F8:
/* B0F8 8000A4F8 8FBF0014 */  lw         $ra, 0x14($sp)
.L8000A4FC:
/* B0FC 8000A4FC 27BD0018 */  addiu      $sp, $sp, 0x18
/* B100 8000A500 03E00008 */  jr         $ra
/* B104 8000A504 00000000 */   nop

glabel func_8000A508
/* B108 8000A508 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* B10C 8000A50C AFB00020 */  sw         $s0, 0x20($sp)
/* B110 8000A510 00E08025 */  or         $s0, $a3, $zero
/* B114 8000A514 AFBF0024 */  sw         $ra, 0x24($sp)
/* B118 8000A518 AFA5003C */  sw         $a1, 0x3c($sp)
/* B11C 8000A51C AFA60040 */  sw         $a2, 0x40($sp)
/* B120 8000A520 50800031 */  beql       $a0, $zero, .L8000A5E8
/* B124 8000A524 C6040000 */   lwc1      $f4, ($s0)
/* B128 8000A528 C6040000 */  lwc1       $f4, ($s0)
/* B12C 8000A52C C6060018 */  lwc1       $f6, 0x18($s0)
/* B130 8000A530 3C018009 */  lui        $at, %hi(brianBattleFenceXpos)
/* B134 8000A534 C42AC5A4 */  lwc1       $f10, %lo(brianBattleFenceXpos)($at)
/* B138 8000A538 46062200 */  add.s      $f8, $f4, $f6
/* B13C 8000A53C C6060020 */  lwc1       $f6, 0x20($s0)
/* B140 8000A540 C6040008 */  lwc1       $f4, 8($s0)
/* B144 8000A544 3C018009 */  lui        $at, %hi(brianBattleFenceZpos)
/* B148 8000A548 460A4381 */  sub.s      $f14, $f8, $f10
/* B14C 8000A54C C42AC430 */  lwc1       $f10, %lo(brianBattleFenceZpos)($at)
/* B150 8000A550 46062200 */  add.s      $f8, $f4, $f6
/* B154 8000A554 460E7102 */  mul.s      $f4, $f14, $f14
/* B158 8000A558 E7AE0030 */  swc1       $f14, 0x30($sp)
/* B15C 8000A55C 460A4401 */  sub.s      $f16, $f8, $f10
/* B160 8000A560 46108182 */  mul.s      $f6, $f16, $f16
/* B164 8000A564 E7B0002C */  swc1       $f16, 0x2c($sp)
/* B168 8000A568 0C00D3D8 */  jal        _nsqrtf
/* B16C 8000A56C 46062300 */   add.s     $f12, $f4, $f6
/* B170 8000A570 8FA20048 */  lw         $v0, 0x48($sp)
/* B174 8000A574 C7AE0030 */  lwc1       $f14, 0x30($sp)
/* B178 8000A578 C7B0002C */  lwc1       $f16, 0x2c($sp)
/* B17C 8000A57C C4480010 */  lwc1       $f8, 0x10($v0)
/* B180 8000A580 C44A0120 */  lwc1       $f10, 0x120($v0)
/* B184 8000A584 460A4082 */  mul.s      $f2, $f8, $f10
/* B188 8000A588 4600103C */  c.lt.s     $f2, $f0
/* B18C 8000A58C 00000000 */  nop
/* B190 8000A590 45020015 */  bc1fl      .L8000A5E8
/* B194 8000A594 C6040000 */   lwc1      $f4, ($s0)
/* B198 8000A598 460E1102 */  mul.s      $f4, $f2, $f14
/* B19C 8000A59C C6080000 */  lwc1       $f8, ($s0)
/* B1A0 8000A5A0 3C018009 */  lui        $at, %hi(brianBattleFenceXpos)
/* B1A4 8000A5A4 46002183 */  div.s      $f6, $f4, $f0
/* B1A8 8000A5A8 C424C5A4 */  lwc1       $f4, %lo(brianBattleFenceXpos)($at)
/* B1AC 8000A5AC 3C018009 */  lui        $at, 0x8009
/* B1B0 8000A5B0 46083281 */  sub.s      $f10, $f6, $f8
/* B1B4 8000A5B4 46101202 */  mul.s      $f8, $f2, $f16
/* B1B8 8000A5B8 46045180 */  add.s      $f6, $f10, $f4
/* B1BC 8000A5BC 46004283 */  div.s      $f10, $f8, $f0
/* B1C0 8000A5C0 E7A6003C */  swc1       $f6, 0x3c($sp)
/* B1C4 8000A5C4 C6040008 */  lwc1       $f4, 8($s0)
/* B1C8 8000A5C8 C428C430 */  lwc1       $f8, -0x3bd0($at)
/* B1CC 8000A5CC 46045181 */  sub.s      $f6, $f10, $f4
/* B1D0 8000A5D0 46083280 */  add.s      $f10, $f6, $f8
/* B1D4 8000A5D4 E7AA0040 */  swc1       $f10, 0x40($sp)
/* B1D8 8000A5D8 944E0008 */  lhu        $t6, 8($v0)
/* B1DC 8000A5DC 35CF0002 */  ori        $t7, $t6, 2
/* B1E0 8000A5E0 A44F0008 */  sh         $t7, 8($v0)
/* B1E4 8000A5E4 C6040000 */  lwc1       $f4, ($s0)
.L8000A5E8:
/* B1E8 8000A5E8 C6060018 */  lwc1       $f6, 0x18($s0)
/* B1EC 8000A5EC 3C018009 */  lui        $at, %hi(D_8008C59C)
/* B1F0 8000A5F0 C42AC59C */  lwc1       $f10, %lo(D_8008C59C)($at)
/* B1F4 8000A5F4 46062200 */  add.s      $f8, $f4, $f6
/* B1F8 8000A5F8 C6060020 */  lwc1       $f6, 0x20($s0)
/* B1FC 8000A5FC C6040008 */  lwc1       $f4, 8($s0)
/* B200 8000A600 3C018009 */  lui        $at, %hi(D_8008C5A0)
/* B204 8000A604 460A4381 */  sub.s      $f14, $f8, $f10
/* B208 8000A608 C42AC5A0 */  lwc1       $f10, %lo(D_8008C5A0)($at)
/* B20C 8000A60C 46062200 */  add.s      $f8, $f4, $f6
/* B210 8000A610 460E7102 */  mul.s      $f4, $f14, $f14
/* B214 8000A614 E7AE0030 */  swc1       $f14, 0x30($sp)
/* B218 8000A618 460A4401 */  sub.s      $f16, $f8, $f10
/* B21C 8000A61C 46108182 */  mul.s      $f6, $f16, $f16
/* B220 8000A620 E7B0002C */  swc1       $f16, 0x2c($sp)
/* B224 8000A624 0C00D3D8 */  jal        _nsqrtf
/* B228 8000A628 46062300 */   add.s     $f12, $f4, $f6
/* B22C 8000A62C 3C018009 */  lui        $at, %hi(D_8008C434)
/* B230 8000A630 C432C434 */  lwc1       $f18, %lo(D_8008C434)($at)
/* B234 8000A634 C7AE0030 */  lwc1       $f14, 0x30($sp)
/* B238 8000A638 C7B0002C */  lwc1       $f16, 0x2c($sp)
/* B23C 8000A63C 4600903C */  c.lt.s     $f18, $f0
/* B240 8000A640 3C013FE0 */  lui        $at, 0x3fe0
/* B244 8000A644 27A4003C */  addiu      $a0, $sp, 0x3c
/* B248 8000A648 27A50040 */  addiu      $a1, $sp, 0x40
/* B24C 8000A64C 4500001E */  bc1f       .L8000A6C8
/* B250 8000A650 00000000 */   nop
/* B254 8000A654 44815800 */  mtc1       $at, $f11
/* B258 8000A658 44805000 */  mtc1       $zero, $f10
/* B25C 8000A65C 46009221 */  cvt.d.s    $f8, $f18
/* B260 8000A660 46007121 */  cvt.d.s    $f4, $f14
/* B264 8000A664 462A4081 */  sub.d      $f2, $f8, $f10
/* B268 8000A668 C60A0000 */  lwc1       $f10, ($s0)
/* B26C 8000A66C 3C018009 */  lui        $at, %hi(D_8008C59C)
/* B270 8000A670 46000321 */  cvt.d.s    $f12, $f0
/* B274 8000A674 46241182 */  mul.d      $f6, $f2, $f4
/* B278 8000A678 46005121 */  cvt.d.s    $f4, $f10
/* B27C 8000A67C C42AC59C */  lwc1       $f10, %lo(D_8008C59C)($at)
/* B280 8000A680 3C018009 */  lui        $at, 0x8009
/* B284 8000A684 462C3203 */  div.d      $f8, $f6, $f12
/* B288 8000A688 46244181 */  sub.d      $f6, $f8, $f4
/* B28C 8000A68C 46005221 */  cvt.d.s    $f8, $f10
/* B290 8000A690 46283100 */  add.d      $f4, $f6, $f8
/* B294 8000A694 460081A1 */  cvt.d.s    $f6, $f16
/* B298 8000A698 462022A0 */  cvt.s.d    $f10, $f4
/* B29C 8000A69C 46261202 */  mul.d      $f8, $f2, $f6
/* B2A0 8000A6A0 E7AA003C */  swc1       $f10, 0x3c($sp)
/* B2A4 8000A6A4 C60A0008 */  lwc1       $f10, 8($s0)
/* B2A8 8000A6A8 460051A1 */  cvt.d.s    $f6, $f10
/* B2AC 8000A6AC 462C4103 */  div.d      $f4, $f8, $f12
/* B2B0 8000A6B0 C42AC5A0 */  lwc1       $f10, -0x3a60($at)
/* B2B4 8000A6B4 46262201 */  sub.d      $f8, $f4, $f6
/* B2B8 8000A6B8 46005121 */  cvt.d.s    $f4, $f10
/* B2BC 8000A6BC 46244180 */  add.d      $f6, $f8, $f4
/* B2C0 8000A6C0 462032A0 */  cvt.s.d    $f10, $f6
/* B2C4 8000A6C4 E7AA0040 */  swc1       $f10, 0x40($sp)
.L8000A6C8:
/* B2C8 8000A6C8 0C002A15 */  jal        func_8000A854
/* B2CC 8000A6CC 02003025 */   or        $a2, $s0, $zero
/* B2D0 8000A6D0 C7A8003C */  lwc1       $f8, 0x3c($sp)
/* B2D4 8000A6D4 C6060000 */  lwc1       $f6, ($s0)
/* B2D8 8000A6D8 8E030064 */  lw         $v1, 0x64($s0)
/* B2DC 8000A6DC E6080018 */  swc1       $f8, 0x18($s0)
/* B2E0 8000A6E0 C7A40040 */  lwc1       $f4, 0x40($sp)
/* B2E4 8000A6E4 24070A00 */  addiu      $a3, $zero, 0xa00
/* B2E8 8000A6E8 E6040020 */  swc1       $f4, 0x20($s0)
/* B2EC 8000A6EC C7AA003C */  lwc1       $f10, 0x3c($sp)
/* B2F0 8000A6F0 C6040008 */  lwc1       $f4, 8($s0)
/* B2F4 8000A6F4 460A3200 */  add.s      $f8, $f6, $f10
/* B2F8 8000A6F8 E6080000 */  swc1       $f8, ($s0)
/* B2FC 8000A6FC C7A60040 */  lwc1       $f6, 0x40($sp)
/* B300 8000A700 46062280 */  add.s      $f10, $f4, $f6
/* B304 8000A704 E60A0008 */  swc1       $f10, 8($s0)
/* B308 8000A708 94780000 */  lhu        $t8, ($v1)
/* B30C 8000A70C 8FB90048 */  lw         $t9, 0x48($sp)
/* B310 8000A710 57000006 */  bnel       $t8, $zero, .L8000A72C
/* B314 8000A714 C4680018 */   lwc1      $f8, 0x18($v1)
/* B318 8000A718 97280000 */  lhu        $t0, ($t9)
/* B31C 8000A71C 51000003 */  beql       $t0, $zero, .L8000A72C
/* B320 8000A720 C4680018 */   lwc1      $f8, 0x18($v1)
/* B324 8000A724 24070A01 */  addiu      $a3, $zero, 0xa01
/* B328 8000A728 C4680018 */  lwc1       $f8, 0x18($v1)
.L8000A72C:
/* B32C 8000A72C C4640020 */  lwc1       $f4, 0x20($v1)
/* B330 8000A730 3C028008 */  lui        $v0, %hi(D_8007D0E0)
/* B334 8000A734 2442D0E0 */  addiu      $v0, $v0, %lo(D_8007D0E0)
/* B338 8000A738 46044182 */  mul.s      $f6, $f8, $f4
/* B33C 8000A73C E4460000 */  swc1       $f6, ($v0)
/* B340 8000A740 8E060008 */  lw         $a2, 8($s0)
/* B344 8000A744 C60E0004 */  lwc1       $f14, 4($s0)
/* B348 8000A748 C60C0000 */  lwc1       $f12, ($s0)
/* B34C 8000A74C 0C003B98 */  jal        func_8000EE60
/* B350 8000A750 AFA20010 */   sw        $v0, 0x10($sp)
/* B354 8000A754 3C028008 */  lui        $v0, %hi(D_8007D0E0)
/* B358 8000A758 2442D0E0 */  addiu      $v0, $v0, %lo(D_8007D0E0)
/* B35C 8000A75C C44A0000 */  lwc1       $f10, ($v0)
/* B360 8000A760 3C01403E */  lui        $at, 0x403e
/* B364 8000A764 E60A0000 */  swc1       $f10, ($s0)
/* B368 8000A768 C4480004 */  lwc1       $f8, 4($v0)
/* B36C 8000A76C E6080004 */  swc1       $f8, 4($s0)
/* B370 8000A770 C4440008 */  lwc1       $f4, 8($v0)
/* B374 8000A774 E6040008 */  swc1       $f4, 8($s0)
/* B378 8000A778 8FA90048 */  lw         $t1, 0x48($sp)
/* B37C 8000A77C 952A0008 */  lhu        $t2, 8($t1)
/* B380 8000A780 314B0004 */  andi       $t3, $t2, 4
/* B384 8000A784 51600009 */  beql       $t3, $zero, .L8000A7AC
/* B388 8000A788 C44A000C */   lwc1      $f10, 0xc($v0)
/* B38C 8000A78C C6060004 */  lwc1       $f6, 4($s0)
/* B390 8000A790 44814800 */  mtc1       $at, $f9
/* B394 8000A794 44804000 */  mtc1       $zero, $f8
/* B398 8000A798 460032A1 */  cvt.d.s    $f10, $f6
/* B39C 8000A79C 46285101 */  sub.d      $f4, $f10, $f8
/* B3A0 8000A7A0 462021A0 */  cvt.s.d    $f6, $f4
/* B3A4 8000A7A4 E6060004 */  swc1       $f6, 4($s0)
/* B3A8 8000A7A8 C44A000C */  lwc1       $f10, 0xc($v0)
.L8000A7AC:
/* B3AC 8000A7AC E60A002C */  swc1       $f10, 0x2c($s0)
/* B3B0 8000A7B0 C4480010 */  lwc1       $f8, 0x10($v0)
/* B3B4 8000A7B4 E6080030 */  swc1       $f8, 0x30($s0)
/* B3B8 8000A7B8 C4440014 */  lwc1       $f4, 0x14($v0)
/* B3BC 8000A7BC E6040034 */  swc1       $f4, 0x34($s0)
/* B3C0 8000A7C0 944C0018 */  lhu        $t4, 0x18($v0)
/* B3C4 8000A7C4 A60C0062 */  sh         $t4, 0x62($s0)
/* B3C8 8000A7C8 8FBF0024 */  lw         $ra, 0x24($sp)
/* B3CC 8000A7CC 8FB00020 */  lw         $s0, 0x20($sp)
/* B3D0 8000A7D0 03E00008 */  jr         $ra
/* B3D4 8000A7D4 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_8000A7D8
/* B3D8 8000A7D8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B3DC 8000A7DC AFBF0014 */  sw         $ra, 0x14($sp)
/* B3E0 8000A7E0 00A03825 */  or         $a3, $a1, $zero
/* B3E4 8000A7E4 848F0050 */  lh         $t7, 0x50($a0)
/* B3E8 8000A7E8 3C0E8008 */  lui        $t6, %hi(tbl_MonsterModelPtrs)
/* B3EC 8000A7EC 8DCED0A8 */  lw         $t6, %lo(tbl_MonsterModelPtrs)($t6)
/* B3F0 8000A7F0 84880052 */  lh         $t0, 0x52($a0)
/* B3F4 8000A7F4 000FC080 */  sll        $t8, $t7, 2
/* B3F8 8000A7F8 01D8C821 */  addu       $t9, $t6, $t8
/* B3FC 8000A7FC 00084880 */  sll        $t1, $t0, 2
/* B400 8000A800 8F220000 */  lw         $v0, ($t9)
/* B404 8000A804 01284823 */  subu       $t1, $t1, $t0
/* B408 8000A808 00094880 */  sll        $t1, $t1, 2
/* B40C 8000A80C 8C860024 */  lw         $a2, 0x24($a0)
/* B410 8000A810 AFA7001C */  sw         $a3, 0x1c($sp)
/* B414 8000A814 AFA40018 */  sw         $a0, 0x18($sp)
/* B418 8000A818 0C007649 */  jal        func_8001D924
/* B41C 8000A81C 01222821 */   addu      $a1, $t1, $v0
/* B420 8000A820 8FA40018 */  lw         $a0, 0x18($sp)
/* B424 8000A824 8FA5001C */  lw         $a1, 0x1c($sp)
/* B428 8000A828 C4840044 */  lwc1       $f4, 0x44($a0)
/* B42C 8000A82C 46002187 */  neg.s      $f6, $f4
/* B430 8000A830 E4A60000 */  swc1       $f6, ($a1)
/* B434 8000A834 C488004C */  lwc1       $f8, 0x4c($a0)
/* B438 8000A838 E4A80004 */  swc1       $f8, 4($a1)
/* B43C 8000A83C 0C008CBD */  jal        func_800232F4
/* B440 8000A840 C48C0010 */   lwc1      $f12, 0x10($a0)
/* B444 8000A844 8FBF0014 */  lw         $ra, 0x14($sp)
/* B448 8000A848 27BD0018 */  addiu      $sp, $sp, 0x18
/* B44C 8000A84C 03E00008 */  jr         $ra
/* B450 8000A850 00000000 */   nop

glabel func_8000A854
/* B454 8000A854 27BDFF78 */  addiu      $sp, $sp, -0x88
/* B458 8000A858 AFB60060 */  sw         $s6, 0x60($sp)
/* B45C 8000A85C AFB5005C */  sw         $s5, 0x5c($sp)
/* B460 8000A860 AFB40058 */  sw         $s4, 0x58($sp)
/* B464 8000A864 3C028008 */  lui        $v0, %hi(brianAction)
/* B468 8000A868 2442BAB8 */  addiu      $v0, $v0, %lo(brianAction)
/* B46C 8000A86C 00C0A025 */  or         $s4, $a2, $zero
/* B470 8000A870 0080A825 */  or         $s5, $a0, $zero
/* B474 8000A874 00A0B025 */  or         $s6, $a1, $zero
/* B478 8000A878 AFBF0064 */  sw         $ra, 0x64($sp)
/* B47C 8000A87C AFB30054 */  sw         $s3, 0x54($sp)
/* B480 8000A880 AFB20050 */  sw         $s2, 0x50($sp)
/* B484 8000A884 AFB1004C */  sw         $s1, 0x4c($sp)
/* B488 8000A888 AFB00048 */  sw         $s0, 0x48($sp)
/* B48C 8000A88C F7BE0040 */  sdc1       $f30, 0x40($sp)
/* B490 8000A890 F7BC0038 */  sdc1       $f28, 0x38($sp)
/* B494 8000A894 F7BA0030 */  sdc1       $f26, 0x30($sp)
/* B498 8000A898 F7B80028 */  sdc1       $f24, 0x28($sp)
/* B49C 8000A89C F7B60020 */  sdc1       $f22, 0x20($sp)
/* B4A0 8000A8A0 F7B40018 */  sdc1       $f20, 0x18($sp)
/* B4A4 8000A8A4 C6C80000 */  lwc1       $f8, ($s6)
/* B4A8 8000A8A8 C68A0008 */  lwc1       $f10, 8($s4)
/* B4AC 8000A8AC C6900028 */  lwc1       $f16, 0x28($s4)
/* B4B0 8000A8B0 C6920024 */  lwc1       $f18, 0x24($s4)
/* B4B4 8000A8B4 460A4780 */  add.s      $f30, $f8, $f10
/* B4B8 8000A8B8 C44A0038 */  lwc1       $f10, 0x38($v0)
/* B4BC 8000A8BC 46128382 */  mul.s      $f14, $f16, $f18
/* B4C0 8000A8C0 C448003C */  lwc1       $f8, 0x3c($v0)
/* B4C4 8000A8C4 C6A40000 */  lwc1       $f4, ($s5)
/* B4C8 8000A8C8 C6860000 */  lwc1       $f6, ($s4)
/* B4CC 8000A8CC 460A4402 */  mul.s      $f16, $f8, $f10
/* B4D0 8000A8D0 00009825 */  or         $s3, $zero, $zero
/* B4D4 8000A8D4 46062700 */  add.s      $f28, $f4, $f6
/* B4D8 8000A8D8 C4440014 */  lwc1       $f4, 0x14($v0)
/* B4DC 8000A8DC C446001C */  lwc1       $f6, 0x1c($v0)
/* B4E0 8000A8E0 4604E501 */  sub.s      $f20, $f28, $f4
/* B4E4 8000A8E4 460E8600 */  add.s      $f24, $f16, $f14
/* B4E8 8000A8E8 4606F581 */  sub.s      $f22, $f30, $f6
/* B4EC 8000A8EC 4618A03C */  c.lt.s     $f20, $f24
/* B4F0 8000A8F0 00000000 */  nop
/* B4F4 8000A8F4 45000027 */  bc1f       .L8000A994
/* B4F8 8000A8F8 00000000 */   nop
/* B4FC 8000A8FC 4600C007 */  neg.s      $f0, $f24
/* B500 8000A900 4614003C */  c.lt.s     $f0, $f20
/* B504 8000A904 00000000 */  nop
/* B508 8000A908 45000022 */  bc1f       .L8000A994
/* B50C 8000A90C 00000000 */   nop
/* B510 8000A910 4618B03C */  c.lt.s     $f22, $f24
/* B514 8000A914 00000000 */  nop
/* B518 8000A918 4500001E */  bc1f       .L8000A994
/* B51C 8000A91C 00000000 */   nop
/* B520 8000A920 4616003C */  c.lt.s     $f0, $f22
/* B524 8000A924 00000000 */  nop
/* B528 8000A928 4500001A */  bc1f       .L8000A994
/* B52C 8000A92C 00000000 */   nop
/* B530 8000A930 4614A482 */  mul.s      $f18, $f20, $f20
/* B534 8000A934 E7AE0068 */  swc1       $f14, 0x68($sp)
/* B538 8000A938 4616B102 */  mul.s      $f4, $f22, $f22
/* B53C 8000A93C 0C00D3D8 */  jal        _nsqrtf
/* B540 8000A940 46049300 */   add.s     $f12, $f18, $f4
/* B544 8000A944 4618003C */  c.lt.s     $f0, $f24
/* B548 8000A948 C7AE0068 */  lwc1       $f14, 0x68($sp)
/* B54C 8000A94C 45000011 */  bc1f       .L8000A994
/* B550 8000A950 00000000 */   nop
/* B554 8000A954 4600C083 */  div.s      $f2, $f24, $f0
/* B558 8000A958 3C018008 */  lui        $at, %hi(BrianActor)
/* B55C 8000A95C C426BACC */  lwc1       $f6, %lo(BrianActor)($at)
/* B560 8000A960 C68A0000 */  lwc1       $f10, ($s4)
/* B564 8000A964 3C018008 */  lui        $at, 0x8008
/* B568 8000A968 24130001 */  addiu      $s3, $zero, 1
/* B56C 8000A96C 4602A502 */  mul.s      $f20, $f20, $f2
/* B570 8000A970 46143200 */  add.s      $f8, $f6, $f20
/* B574 8000A974 4602B582 */  mul.s      $f22, $f22, $f2
/* B578 8000A978 460A4401 */  sub.s      $f16, $f8, $f10
/* B57C 8000A97C E6B00000 */  swc1       $f16, ($s5)
/* B580 8000A980 C432BAD4 */  lwc1       $f18, -0x452c($at)
/* B584 8000A984 C6860008 */  lwc1       $f6, 8($s4)
/* B588 8000A988 46169100 */  add.s      $f4, $f18, $f22
/* B58C 8000A98C 46062201 */  sub.s      $f8, $f4, $f6
/* B590 8000A990 E6C80000 */  swc1       $f8, ($s6)
.L8000A994:
/* B594 8000A994 3C118008 */  lui        $s1, %hi(D_8007D08C)
/* B598 8000A998 8E31D08C */  lw         $s1, %lo(D_8007D08C)($s1)
/* B59C 8000A99C 3C128008 */  lui        $s2, %hi(D_8007D090)
/* B5A0 8000A9A0 12200043 */  beqz       $s1, .L8000AAB0
/* B5A4 8000A9A4 00000000 */   nop
/* B5A8 8000A9A8 16600041 */  bnez       $s3, .L8000AAB0
/* B5AC 8000A9AC 2652D090 */   addiu     $s2, $s2, %lo(D_8007D090)
/* B5B0 8000A9B0 1220003F */  beqz       $s1, .L8000AAB0
/* B5B4 8000A9B4 00000000 */   nop
/* B5B8 8000A9B8 4480D000 */  mtc1       $zero, $f26
/* B5BC 8000A9BC 00000000 */  nop
/* B5C0 8000A9C0 8E500000 */  lw         $s0, ($s2)
.L8000A9C4:
/* B5C4 8000A9C4 26520004 */  addiu      $s2, $s2, 4
/* B5C8 8000A9C8 12140035 */  beq        $s0, $s4, .L8000AAA0
/* B5CC 8000A9CC 00000000 */   nop
/* B5D0 8000A9D0 C6120028 */  lwc1       $f18, 0x28($s0)
/* B5D4 8000A9D4 C6040024 */  lwc1       $f4, 0x24($s0)
/* B5D8 8000A9D8 C60A0000 */  lwc1       $f10, ($s0)
/* B5DC 8000A9DC C6100008 */  lwc1       $f16, 8($s0)
/* B5E0 8000A9E0 46049182 */  mul.s      $f6, $f18, $f4
/* B5E4 8000A9E4 460AE501 */  sub.s      $f20, $f28, $f10
/* B5E8 8000A9E8 4610F581 */  sub.s      $f22, $f30, $f16
/* B5EC 8000A9EC 460E3600 */  add.s      $f24, $f6, $f14
/* B5F0 8000A9F0 4618A03C */  c.lt.s     $f20, $f24
/* B5F4 8000A9F4 00000000 */  nop
/* B5F8 8000A9F8 45000029 */  bc1f       .L8000AAA0
/* B5FC 8000A9FC 00000000 */   nop
/* B600 8000AA00 4600C007 */  neg.s      $f0, $f24
/* B604 8000AA04 4614003C */  c.lt.s     $f0, $f20
/* B608 8000AA08 00000000 */  nop
/* B60C 8000AA0C 45000024 */  bc1f       .L8000AAA0
/* B610 8000AA10 00000000 */   nop
/* B614 8000AA14 4618B03C */  c.lt.s     $f22, $f24
/* B618 8000AA18 00000000 */  nop
/* B61C 8000AA1C 45000020 */  bc1f       .L8000AAA0
/* B620 8000AA20 00000000 */   nop
/* B624 8000AA24 4616003C */  c.lt.s     $f0, $f22
/* B628 8000AA28 00000000 */  nop
/* B62C 8000AA2C 4500001C */  bc1f       .L8000AAA0
/* B630 8000AA30 00000000 */   nop
/* B634 8000AA34 4614A202 */  mul.s      $f8, $f20, $f20
/* B638 8000AA38 E7AE0068 */  swc1       $f14, 0x68($sp)
/* B63C 8000AA3C 4616B282 */  mul.s      $f10, $f22, $f22
/* B640 8000AA40 0C00D3D8 */  jal        _nsqrtf
/* B644 8000AA44 460A4300 */   add.s     $f12, $f8, $f10
/* B648 8000AA48 461A0032 */  c.eq.s     $f0, $f26
/* B64C 8000AA4C C7AE0068 */  lwc1       $f14, 0x68($sp)
/* B650 8000AA50 45010013 */  bc1t       .L8000AAA0
/* B654 8000AA54 00000000 */   nop
/* B658 8000AA58 4618003C */  c.lt.s     $f0, $f24
/* B65C 8000AA5C 00000000 */  nop
/* B660 8000AA60 4500000F */  bc1f       .L8000AAA0
/* B664 8000AA64 00000000 */   nop
/* B668 8000AA68 4600C083 */  div.s      $f2, $f24, $f0
/* B66C 8000AA6C C6100000 */  lwc1       $f16, ($s0)
/* B670 8000AA70 C6840000 */  lwc1       $f4, ($s4)
/* B674 8000AA74 26730001 */  addiu      $s3, $s3, 1
/* B678 8000AA78 4602A502 */  mul.s      $f20, $f20, $f2
/* B67C 8000AA7C 46148480 */  add.s      $f18, $f16, $f20
/* B680 8000AA80 4602B582 */  mul.s      $f22, $f22, $f2
/* B684 8000AA84 46049181 */  sub.s      $f6, $f18, $f4
/* B688 8000AA88 E6A60000 */  swc1       $f6, ($s5)
/* B68C 8000AA8C C6080008 */  lwc1       $f8, 8($s0)
/* B690 8000AA90 C6900008 */  lwc1       $f16, 8($s4)
/* B694 8000AA94 46164280 */  add.s      $f10, $f8, $f22
/* B698 8000AA98 46105481 */  sub.s      $f18, $f10, $f16
/* B69C 8000AA9C E6D20000 */  swc1       $f18, ($s6)
.L8000AAA0:
/* B6A0 8000AAA0 16600003 */  bnez       $s3, .L8000AAB0
/* B6A4 8000AAA4 2631FFFF */   addiu     $s1, $s1, -1
/* B6A8 8000AAA8 5620FFC6 */  bnel       $s1, $zero, .L8000A9C4
/* B6AC 8000AAAC 8E500000 */   lw        $s0, ($s2)
.L8000AAB0:
/* B6B0 8000AAB0 3C118008 */  lui        $s1, %hi(D_80084F38)
/* B6B4 8000AAB4 8E314F38 */  lw         $s1, %lo(D_80084F38)($s1)
/* B6B8 8000AAB8 3C128008 */  lui        $s2, %hi(D_80084F40)
/* B6BC 8000AABC 5220003E */  beql       $s1, $zero, .L8000ABB8
/* B6C0 8000AAC0 8FBF0064 */   lw        $ra, 0x64($sp)
/* B6C4 8000AAC4 1660003B */  bnez       $s3, .L8000ABB4
/* B6C8 8000AAC8 26524F40 */   addiu     $s2, $s2, %lo(D_80084F40)
/* B6CC 8000AACC 5220003A */  beql       $s1, $zero, .L8000ABB8
/* B6D0 8000AAD0 8FBF0064 */   lw        $ra, 0x64($sp)
/* B6D4 8000AAD4 460076A1 */  cvt.d.s    $f26, $f14
/* B6D8 8000AAD8 8E500000 */  lw         $s0, ($s2)
.L8000AADC:
/* B6DC 8000AADC 26520004 */  addiu      $s2, $s2, 4
/* B6E0 8000AAE0 C6080010 */  lwc1       $f8, 0x10($s0)
/* B6E4 8000AAE4 C6040000 */  lwc1       $f4, ($s0)
/* B6E8 8000AAE8 C6060008 */  lwc1       $f6, 8($s0)
/* B6EC 8000AAEC 46004021 */  cvt.d.s    $f0, $f8
/* B6F0 8000AAF0 4604E501 */  sub.s      $f20, $f28, $f4
/* B6F4 8000AAF4 46200280 */  add.d      $f10, $f0, $f0
/* B6F8 8000AAF8 4606F581 */  sub.s      $f22, $f30, $f6
/* B6FC 8000AAFC 462AD400 */  add.d      $f16, $f26, $f10
/* B700 8000AB00 46208620 */  cvt.s.d    $f24, $f16
/* B704 8000AB04 4618A03C */  c.lt.s     $f20, $f24
/* B708 8000AB08 00000000 */  nop
/* B70C 8000AB0C 45000025 */  bc1f       .L8000ABA4
/* B710 8000AB10 00000000 */   nop
/* B714 8000AB14 4600C007 */  neg.s      $f0, $f24
/* B718 8000AB18 4614003C */  c.lt.s     $f0, $f20
/* B71C 8000AB1C 00000000 */  nop
/* B720 8000AB20 45000020 */  bc1f       .L8000ABA4
/* B724 8000AB24 00000000 */   nop
/* B728 8000AB28 4618B03C */  c.lt.s     $f22, $f24
/* B72C 8000AB2C 00000000 */  nop
/* B730 8000AB30 4500001C */  bc1f       .L8000ABA4
/* B734 8000AB34 00000000 */   nop
/* B738 8000AB38 4616003C */  c.lt.s     $f0, $f22
/* B73C 8000AB3C 00000000 */  nop
/* B740 8000AB40 45000018 */  bc1f       .L8000ABA4
/* B744 8000AB44 00000000 */   nop
/* B748 8000AB48 4614A482 */  mul.s      $f18, $f20, $f20
/* B74C 8000AB4C 00000000 */  nop
/* B750 8000AB50 4616B102 */  mul.s      $f4, $f22, $f22
/* B754 8000AB54 0C00D3D8 */  jal        _nsqrtf
/* B758 8000AB58 46049300 */   add.s     $f12, $f18, $f4
/* B75C 8000AB5C 4618003C */  c.lt.s     $f0, $f24
/* B760 8000AB60 00000000 */  nop
/* B764 8000AB64 4500000F */  bc1f       .L8000ABA4
/* B768 8000AB68 00000000 */   nop
/* B76C 8000AB6C 4600C083 */  div.s      $f2, $f24, $f0
/* B770 8000AB70 C6060000 */  lwc1       $f6, ($s0)
/* B774 8000AB74 C68A0000 */  lwc1       $f10, ($s4)
/* B778 8000AB78 26730001 */  addiu      $s3, $s3, 1
/* B77C 8000AB7C 4602A502 */  mul.s      $f20, $f20, $f2
/* B780 8000AB80 46143200 */  add.s      $f8, $f6, $f20
/* B784 8000AB84 4602B582 */  mul.s      $f22, $f22, $f2
/* B788 8000AB88 460A4401 */  sub.s      $f16, $f8, $f10
/* B78C 8000AB8C E6B00000 */  swc1       $f16, ($s5)
/* B790 8000AB90 C6120008 */  lwc1       $f18, 8($s0)
/* B794 8000AB94 C6860008 */  lwc1       $f6, 8($s4)
/* B798 8000AB98 46169100 */  add.s      $f4, $f18, $f22
/* B79C 8000AB9C 46062201 */  sub.s      $f8, $f4, $f6
/* B7A0 8000ABA0 E6C80000 */  swc1       $f8, ($s6)
.L8000ABA4:
/* B7A4 8000ABA4 16600003 */  bnez       $s3, .L8000ABB4
/* B7A8 8000ABA8 2631FFFF */   addiu     $s1, $s1, -1
/* B7AC 8000ABAC 5620FFCB */  bnel       $s1, $zero, .L8000AADC
/* B7B0 8000ABB0 8E500000 */   lw        $s0, ($s2)
.L8000ABB4:
/* B7B4 8000ABB4 8FBF0064 */  lw         $ra, 0x64($sp)
.L8000ABB8:
/* B7B8 8000ABB8 D7B40018 */  ldc1       $f20, 0x18($sp)
/* B7BC 8000ABBC D7B60020 */  ldc1       $f22, 0x20($sp)
/* B7C0 8000ABC0 D7B80028 */  ldc1       $f24, 0x28($sp)
/* B7C4 8000ABC4 D7BA0030 */  ldc1       $f26, 0x30($sp)
/* B7C8 8000ABC8 D7BC0038 */  ldc1       $f28, 0x38($sp)
/* B7CC 8000ABCC D7BE0040 */  ldc1       $f30, 0x40($sp)
/* B7D0 8000ABD0 8FB00048 */  lw         $s0, 0x48($sp)
/* B7D4 8000ABD4 8FB1004C */  lw         $s1, 0x4c($sp)
/* B7D8 8000ABD8 8FB20050 */  lw         $s2, 0x50($sp)
/* B7DC 8000ABDC 8FB30054 */  lw         $s3, 0x54($sp)
/* B7E0 8000ABE0 8FB40058 */  lw         $s4, 0x58($sp)
/* B7E4 8000ABE4 8FB5005C */  lw         $s5, 0x5c($sp)
/* B7E8 8000ABE8 8FB60060 */  lw         $s6, 0x60($sp)
/* B7EC 8000ABEC 03E00008 */  jr         $ra
/* B7F0 8000ABF0 27BD0088 */   addiu     $sp, $sp, 0x88

glabel func_8000ABF4
/* B7F4 8000ABF4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* B7F8 8000ABF8 AFBF0014 */  sw         $ra, 0x14($sp)
/* B7FC 8000ABFC 00802825 */  or         $a1, $a0, $zero
/* B800 8000AC00 8CAE0068 */  lw         $t6, 0x68($a1)
/* B804 8000AC04 3C188008 */  lui        $t8, %hi(BrianActor+0x68)
/* B808 8000AC08 8F18BB34 */  lw         $t8, %lo(BrianActor+0x68)($t8)
/* B80C 8000AC0C 95C20086 */  lhu        $v0, 0x86($t6)
/* B810 8000AC10 24040064 */  addiu      $a0, $zero, 0x64
/* B814 8000AC14 97190086 */  lhu        $t9, 0x86($t8)
/* B818 8000AC18 00027880 */  sll        $t7, $v0, 2
/* B81C 8000AC1C 01E27823 */  subu       $t7, $t7, $v0
/* B820 8000AC20 000F78C0 */  sll        $t7, $t7, 3
/* B824 8000AC24 27280007 */  addiu      $t0, $t9, 7
/* B828 8000AC28 000848C3 */  sra        $t1, $t0, 3
/* B82C 8000AC2C 01E27821 */  addu       $t7, $t7, $v0
/* B830 8000AC30 000F7880 */  sll        $t7, $t7, 2
/* B834 8000AC34 00495021 */  addu       $t2, $v0, $t1
/* B838 8000AC38 01EA001A */  div        $zero, $t7, $t2
/* B83C 8000AC3C 00005812 */  mflo       $t3
/* B840 8000AC40 A7AB001E */  sh         $t3, 0x1e($sp)
/* B844 8000AC44 15400002 */  bnez       $t2, .L8000AC50
/* B848 8000AC48 00000000 */   nop
/* B84C 8000AC4C 0007000D */  break      7
.L8000AC50:
/* B850 8000AC50 2401FFFF */   addiu     $at, $zero, -1
/* B854 8000AC54 15410004 */  bne        $t2, $at, .L8000AC68
/* B858 8000AC58 3C018000 */   lui       $at, 0x8000
/* B85C 8000AC5C 15E10002 */  bne        $t7, $at, .L8000AC68
/* B860 8000AC60 00000000 */   nop
/* B864 8000AC64 0006000D */  break      6
.L8000AC68:
/* B868 8000AC68 0C008BF4 */   jal       srand
/* B86C 8000AC6C 00000000 */   nop
/* B870 8000AC70 87AC001E */  lh         $t4, 0x1e($sp)
/* B874 8000AC74 8FBF0014 */  lw         $ra, 0x14($sp)
/* B878 8000AC78 004C102B */  sltu       $v0, $v0, $t4
/* B87C 8000AC7C 03E00008 */  jr         $ra
/* B880 8000AC80 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8000AC84
/* B884 8000AC84 94830114 */  lhu        $v1, 0x114($a0)
/* B888 8000AC88 948E011A */  lhu        $t6, 0x11a($a0)
/* B88C 8000AC8C 94990090 */  lhu        $t9, 0x90($a0)
/* B890 8000AC90 006E0019 */  multu      $v1, $t6
/* B894 8000AC94 33280001 */  andi       $t0, $t9, 1
/* B898 8000AC98 00001812 */  mflo       $v1
/* B89C 8000AC9C 00037903 */  sra        $t7, $v1, 4
/* B8A0 8000ACA0 31F8FFFF */  andi       $t8, $t7, 0xffff
/* B8A4 8000ACA4 11000003 */  beqz       $t0, .L8000ACB4
/* B8A8 8000ACA8 03001825 */   or        $v1, $t8, $zero
/* B8AC 8000ACAC 00184842 */  srl        $t1, $t8, 1
/* B8B0 8000ACB0 3123FFFF */  andi       $v1, $t1, 0xffff
.L8000ACB4:
/* B8B4 8000ACB4 00601025 */  or         $v0, $v1, $zero
/* B8B8 8000ACB8 03E00008 */  jr         $ra
/* B8BC 8000ACBC 00000000 */   nop

glabel func_8000ACC0
/* B8C0 8000ACC0 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* B8C4 8000ACC4 AFB00020 */  sw         $s0, 0x20($sp)
/* B8C8 8000ACC8 AFA60058 */  sw         $a2, 0x58($sp)
/* B8CC 8000ACCC 30CEFFFF */  andi       $t6, $a2, 0xffff
/* B8D0 8000ACD0 01C03025 */  or         $a2, $t6, $zero
/* B8D4 8000ACD4 30B0FFFF */  andi       $s0, $a1, 0xffff
/* B8D8 8000ACD8 AFBF0024 */  sw         $ra, 0x24($sp)
/* B8DC 8000ACDC AFA50054 */  sw         $a1, 0x54($sp)
/* B8E0 8000ACE0 AFA7005C */  sw         $a3, 0x5c($sp)
/* B8E4 8000ACE4 000478C0 */  sll        $t7, $a0, 3
/* B8E8 8000ACE8 01E47821 */  addu       $t7, $t7, $a0
/* B8EC 8000ACEC 000F7880 */  sll        $t7, $t7, 2
/* B8F0 8000ACF0 01E47821 */  addu       $t7, $t7, $a0
/* B8F4 8000ACF4 3C188008 */  lui        $t8, %hi(EnemyData)
/* B8F8 8000ACF8 2718C998 */  addiu      $t8, $t8, %lo(EnemyData)
/* B8FC 8000ACFC 000F78C0 */  sll        $t7, $t7, 3
/* B900 8000AD00 01F81821 */  addu       $v1, $t7, $t8
/* B904 8000AD04 84680074 */  lh         $t0, 0x74($v1)
/* B908 8000AD08 3C198008 */  lui        $t9, %hi(tbl_MonsterModelPtrs)
/* B90C 8000AD0C 8F39D0A8 */  lw         $t9, %lo(tbl_MonsterModelPtrs)($t9)
/* B910 8000AD10 00084880 */  sll        $t1, $t0, 2
/* B914 8000AD14 946C000A */  lhu        $t4, 0xa($v1)
/* B918 8000AD18 03295021 */  addu       $t2, $t9, $t1
/* B91C 8000AD1C 8D4B0000 */  lw         $t3, ($t2)
/* B920 8000AD20 118000EE */  beqz       $t4, .L8000B0DC
/* B924 8000AD24 AFAB0040 */   sw        $t3, 0x40($sp)
/* B928 8000AD28 120000B4 */  beqz       $s0, .L8000AFFC
/* B92C 8000AD2C 97AD005E */   lhu       $t5, 0x5e($sp)
/* B930 8000AD30 31AE8000 */  andi       $t6, $t5, 0x8000
/* B934 8000AD34 15C0001B */  bnez       $t6, .L8000ADA4
/* B938 8000AD38 3C028005 */   lui       $v0, %hi(D_8004C2A8)
/* B93C 8000AD3C 8C790020 */  lw         $t9, 0x20($v1)
/* B940 8000AD40 2442C2A8 */  addiu      $v0, $v0, %lo(D_8004C2A8)
/* B944 8000AD44 00067880 */  sll        $t7, $a2, 2
/* B948 8000AD48 97290026 */  lhu        $t1, 0x26($t9)
/* B94C 8000AD4C 004FC021 */  addu       $t8, $v0, $t7
/* B950 8000AD50 8F080000 */  lw         $t0, ($t8)
/* B954 8000AD54 00095080 */  sll        $t2, $t1, 2
/* B958 8000AD58 004A5821 */  addu       $t3, $v0, $t2
/* B95C 8000AD5C 8D6C0000 */  lw         $t4, ($t3)
/* B960 8000AD60 010C6825 */  or         $t5, $t0, $t4
/* B964 8000AD64 25AEFFFF */  addiu      $t6, $t5, -1
/* B968 8000AD68 2DC1000A */  sltiu      $at, $t6, 0xa
/* B96C 8000AD6C 1020000D */  beqz       $at, .L8000ADA4
/* B970 8000AD70 000E7080 */   sll       $t6, $t6, 2
/* B974 8000AD74 3C018007 */  lui        $at, %hi(D_80071198)
/* B978 8000AD78 002E0821 */  addu       $at, $at, $t6
/* B97C 8000AD7C 8C2E1198 */  lw         $t6, %lo(D_80071198)($at)
/* B980 8000AD80 01C00008 */  jr         $t6
/* B984 8000AD84 00000000 */   nop
/* B988 8000AD88 00107842 */  srl        $t7, $s0, 1
/* B98C 8000AD8C 10000005 */  b          .L8000ADA4
/* B990 8000AD90 31F0FFFF */   andi      $s0, $t7, 0xffff
/* B994 8000AD94 0010C883 */  sra        $t9, $s0, 2
/* B998 8000AD98 02198021 */  addu       $s0, $s0, $t9
/* B99C 8000AD9C 3209FFFF */  andi       $t1, $s0, 0xffff
/* B9A0 8000ADA0 01208025 */  or         $s0, $t1, $zero
.L8000ADA4:
/* B9A4 8000ADA4 8FAA0060 */  lw         $t2, 0x60($sp)
/* B9A8 8000ADA8 44908000 */  mtc1       $s0, $f16
/* B9AC 8000ADAC 8D4B0068 */  lw         $t3, 0x68($t2)
/* B9B0 8000ADB0 95620084 */  lhu        $v0, 0x84($t3)
/* B9B4 8000ADB4 44822000 */  mtc1       $v0, $f4
/* B9B8 8000ADB8 04410005 */  bgez       $v0, .L8000ADD0
/* B9BC 8000ADBC 46802020 */   cvt.s.w   $f0, $f4
/* B9C0 8000ADC0 3C014F80 */  lui        $at, 0x4f80
/* B9C4 8000ADC4 44813000 */  mtc1       $at, $f6
/* B9C8 8000ADC8 00000000 */  nop
/* B9CC 8000ADCC 46060000 */  add.s      $f0, $f0, $f6
.L8000ADD0:
/* B9D0 8000ADD0 94680118 */  lhu        $t0, 0x118($v1)
/* B9D4 8000ADD4 468084A0 */  cvt.s.w    $f18, $f16
/* B9D8 8000ADD8 3C014F80 */  lui        $at, 0x4f80
/* B9DC 8000ADDC 00486021 */  addu       $t4, $v0, $t0
/* B9E0 8000ADE0 448C4000 */  mtc1       $t4, $f8
/* B9E4 8000ADE4 00000000 */  nop
/* B9E8 8000ADE8 468042A0 */  cvt.s.w    $f10, $f8
/* B9EC 8000ADEC 06010004 */  bgez       $s0, .L8000AE00
/* B9F0 8000ADF0 460A0003 */   div.s     $f0, $f0, $f10
/* B9F4 8000ADF4 44812000 */  mtc1       $at, $f4
/* B9F8 8000ADF8 00000000 */  nop
/* B9FC 8000ADFC 46049480 */  add.s      $f18, $f18, $f4
.L8000AE00:
/* BA00 8000AE00 46009182 */  mul.s      $f6, $f18, $f0
/* BA04 8000AE04 24100001 */  addiu      $s0, $zero, 1
/* BA08 8000AE08 3C014F00 */  lui        $at, 0x4f00
/* BA0C 8000AE0C 444DF800 */  cfc1       $t5, $31
/* BA10 8000AE10 44D0F800 */  ctc1       $s0, $31
/* BA14 8000AE14 00000000 */  nop
/* BA18 8000AE18 46003224 */  cvt.w.s    $f8, $f6
/* BA1C 8000AE1C 4450F800 */  cfc1       $s0, $31
/* BA20 8000AE20 00000000 */  nop
/* BA24 8000AE24 32100078 */  andi       $s0, $s0, 0x78
/* BA28 8000AE28 52000013 */  beql       $s0, $zero, .L8000AE78
/* BA2C 8000AE2C 44104000 */   mfc1      $s0, $f8
/* BA30 8000AE30 44814000 */  mtc1       $at, $f8
/* BA34 8000AE34 24100001 */  addiu      $s0, $zero, 1
/* BA38 8000AE38 46083201 */  sub.s      $f8, $f6, $f8
/* BA3C 8000AE3C 44D0F800 */  ctc1       $s0, $31
/* BA40 8000AE40 00000000 */  nop
/* BA44 8000AE44 46004224 */  cvt.w.s    $f8, $f8
/* BA48 8000AE48 4450F800 */  cfc1       $s0, $31
/* BA4C 8000AE4C 00000000 */  nop
/* BA50 8000AE50 32100078 */  andi       $s0, $s0, 0x78
/* BA54 8000AE54 16000005 */  bnez       $s0, .L8000AE6C
/* BA58 8000AE58 00000000 */   nop
/* BA5C 8000AE5C 44104000 */  mfc1       $s0, $f8
/* BA60 8000AE60 3C018000 */  lui        $at, 0x8000
/* BA64 8000AE64 10000007 */  b          .L8000AE84
/* BA68 8000AE68 02018025 */   or        $s0, $s0, $at
.L8000AE6C:
/* BA6C 8000AE6C 10000005 */  b          .L8000AE84
/* BA70 8000AE70 2410FFFF */   addiu     $s0, $zero, -1
/* BA74 8000AE74 44104000 */  mfc1       $s0, $f8
.L8000AE78:
/* BA78 8000AE78 00000000 */  nop
/* BA7C 8000AE7C 0600FFFB */  bltz       $s0, .L8000AE6C
/* BA80 8000AE80 00000000 */   nop
.L8000AE84:
/* BA84 8000AE84 320EFFFF */  andi       $t6, $s0, 0xffff
/* BA88 8000AE88 01C08025 */  or         $s0, $t6, $zero
/* BA8C 8000AE8C 44CDF800 */  ctc1       $t5, $31
/* BA90 8000AE90 44905000 */  mtc1       $s0, $f10
/* BA94 8000AE94 3C014F80 */  lui        $at, 0x4f80
/* BA98 8000AE98 05C10004 */  bgez       $t6, .L8000AEAC
/* BA9C 8000AE9C 46805320 */   cvt.s.w   $f12, $f10
/* BAA0 8000AEA0 44818000 */  mtc1       $at, $f16
/* BAA4 8000AEA4 00000000 */  nop
/* BAA8 8000AEA8 46106300 */  add.s      $f12, $f12, $f16
.L8000AEAC:
/* BAAC 8000AEAC 0C00D3D8 */  jal        _nsqrtf
/* BAB0 8000AEB0 AFA30034 */   sw        $v1, 0x34($sp)
/* BAB4 8000AEB4 3C013F80 */  lui        $at, 0x3f80
/* BAB8 8000AEB8 44812000 */  mtc1       $at, $f4
/* BABC 8000AEBC 24040001 */  addiu      $a0, $zero, 1
/* BAC0 8000AEC0 3C014F00 */  lui        $at, 0x4f00
/* BAC4 8000AEC4 46040480 */  add.s      $f18, $f0, $f4
/* BAC8 8000AEC8 444FF800 */  cfc1       $t7, $31
/* BACC 8000AECC 44C4F800 */  ctc1       $a0, $31
/* BAD0 8000AED0 00000000 */  nop
/* BAD4 8000AED4 460091A4 */  cvt.w.s    $f6, $f18
/* BAD8 8000AED8 4444F800 */  cfc1       $a0, $31
/* BADC 8000AEDC 00000000 */  nop
/* BAE0 8000AEE0 30840078 */  andi       $a0, $a0, 0x78
/* BAE4 8000AEE4 50800013 */  beql       $a0, $zero, .L8000AF34
/* BAE8 8000AEE8 44043000 */   mfc1      $a0, $f6
/* BAEC 8000AEEC 44813000 */  mtc1       $at, $f6
/* BAF0 8000AEF0 24040001 */  addiu      $a0, $zero, 1
/* BAF4 8000AEF4 46069181 */  sub.s      $f6, $f18, $f6
/* BAF8 8000AEF8 44C4F800 */  ctc1       $a0, $31
/* BAFC 8000AEFC 00000000 */  nop
/* BB00 8000AF00 460031A4 */  cvt.w.s    $f6, $f6
/* BB04 8000AF04 4444F800 */  cfc1       $a0, $31
/* BB08 8000AF08 00000000 */  nop
/* BB0C 8000AF0C 30840078 */  andi       $a0, $a0, 0x78
/* BB10 8000AF10 14800005 */  bnez       $a0, .L8000AF28
/* BB14 8000AF14 00000000 */   nop
/* BB18 8000AF18 44043000 */  mfc1       $a0, $f6
/* BB1C 8000AF1C 3C018000 */  lui        $at, 0x8000
/* BB20 8000AF20 10000007 */  b          .L8000AF40
/* BB24 8000AF24 00812025 */   or        $a0, $a0, $at
.L8000AF28:
/* BB28 8000AF28 10000005 */  b          .L8000AF40
/* BB2C 8000AF2C 2404FFFF */   addiu     $a0, $zero, -1
/* BB30 8000AF30 44043000 */  mfc1       $a0, $f6
.L8000AF34:
/* BB34 8000AF34 00000000 */  nop
/* BB38 8000AF38 0480FFFB */  bltz       $a0, .L8000AF28
/* BB3C 8000AF3C 00000000 */   nop
.L8000AF40:
/* BB40 8000AF40 44CFF800 */  ctc1       $t7, $31
/* BB44 8000AF44 0C008BF4 */  jal        srand
/* BB48 8000AF48 00000000 */   nop
/* BB4C 8000AF4C 02028021 */  addu       $s0, $s0, $v0
/* BB50 8000AF50 3218FFFF */  andi       $t8, $s0, 0xffff
/* BB54 8000AF54 03008025 */  or         $s0, $t8, $zero
/* BB58 8000AF58 17000004 */  bnez       $t8, .L8000AF6C
/* BB5C 8000AF5C 8FA30034 */   lw        $v1, 0x34($sp)
/* BB60 8000AF60 27100001 */  addiu      $s0, $t8, 1
/* BB64 8000AF64 3219FFFF */  andi       $t9, $s0, 0xffff
/* BB68 8000AF68 03208025 */  or         $s0, $t9, $zero
.L8000AF6C:
/* BB6C 8000AF6C 9462000A */  lhu        $v0, 0xa($v1)
/* BB70 8000AF70 AFB0002C */  sw         $s0, 0x2c($sp)
/* BB74 8000AF74 8FAA002C */  lw         $t2, 0x2c($sp)
/* BB78 8000AF78 0050082A */  slt        $at, $v0, $s0
/* BB7C 8000AF7C 10200003 */  beqz       $at, .L8000AF8C
/* BB80 8000AF80 004A5823 */   subu      $t3, $v0, $t2
/* BB84 8000AF84 10000002 */  b          .L8000AF90
/* BB88 8000AF88 A460000A */   sh        $zero, 0xa($v1)
.L8000AF8C:
/* BB8C 8000AF8C A46B000A */  sh         $t3, 0xa($v1)
.L8000AF90:
/* BB90 8000AF90 94680090 */  lhu        $t0, 0x90($v1)
/* BB94 8000AF94 8FAE002C */  lw         $t6, 0x2c($sp)
/* BB98 8000AF98 24050200 */  addiu      $a1, $zero, 0x200
/* BB9C 8000AF9C 310C0200 */  andi       $t4, $t0, 0x200
/* BBA0 8000AFA0 11800010 */  beqz       $t4, .L8000AFE4
/* BBA4 8000AFA4 24060002 */   addiu     $a2, $zero, 2
/* BBA8 8000AFA8 946D000C */  lhu        $t5, 0xc($v1)
/* BBAC 8000AFAC 24640024 */  addiu      $a0, $v1, 0x24
/* BBB0 8000AFB0 2407001E */  addiu      $a3, $zero, 0x1e
/* BBB4 8000AFB4 01AE7821 */  addu       $t7, $t5, $t6
/* BBB8 8000AFB8 A46F000C */  sh         $t7, 0xc($v1)
/* BBBC 8000AFBC 8C980064 */  lw         $t8, 0x64($a0)
/* BBC0 8000AFC0 31F9FFFF */  andi       $t9, $t7, 0xffff
/* BBC4 8000AFC4 9702000A */  lhu        $v0, 0xa($t8)
/* BBC8 8000AFC8 0059082A */  slt        $at, $v0, $t9
/* BBCC 8000AFCC 10200002 */  beqz       $at, .L8000AFD8
/* BBD0 8000AFD0 00000000 */   nop
/* BBD4 8000AFD4 A462000C */  sh         $v0, 0xc($v1)
.L8000AFD8:
/* BBD8 8000AFD8 0C007F3E */  jal        func_8001FCF8
/* BBDC 8000AFDC AFA30034 */   sw        $v1, 0x34($sp)
/* BBE0 8000AFE0 8FA30034 */  lw         $v1, 0x34($sp)
.L8000AFE4:
/* BBE4 8000AFE4 24640024 */  addiu      $a0, $v1, 0x24
/* BBE8 8000AFE8 00002825 */  or         $a1, $zero, $zero
/* BBEC 8000AFEC 8FA6002C */  lw         $a2, 0x2c($sp)
/* BBF0 8000AFF0 0C00637D */  jal        battleDamageSomething
/* BBF4 8000AFF4 AFA30034 */   sw        $v1, 0x34($sp)
/* BBF8 8000AFF8 8FA30034 */  lw         $v1, 0x34($sp)
.L8000AFFC:
/* BBFC 8000AFFC 24090002 */  addiu      $t1, $zero, 2
/* BC00 8000B000 A4690000 */  sh         $t1, ($v1)
/* BC04 8000B004 24640024 */  addiu      $a0, $v1, 0x24
/* BC08 8000B008 948A0060 */  lhu        $t2, 0x60($a0)
/* BC0C 8000B00C 3C0F8009 */  lui        $t7, 0x8009
/* BC10 8000B010 354B0001 */  ori        $t3, $t2, 1
/* BC14 8000B014 A48B0060 */  sh         $t3, 0x60($a0)
/* BC18 8000B018 97A8005E */  lhu        $t0, 0x5e($sp)
/* BC1C 8000B01C 356E0002 */  ori        $t6, $t3, 2
/* BC20 8000B020 310C0004 */  andi       $t4, $t0, 4
/* BC24 8000B024 11800002 */  beqz       $t4, .L8000B030
/* BC28 8000B028 00000000 */   nop
/* BC2C 8000B02C A48E0060 */  sh         $t6, 0x60($a0)
.L8000B030:
/* BC30 8000B030 95EFC592 */  lhu        $t7, -0x3a6e($t7)
/* BC34 8000B034 31F80100 */  andi       $t8, $t7, 0x100
/* BC38 8000B038 53000015 */  beql       $t8, $zero, .L8000B090
/* BC3C 8000B03C 8C620020 */   lw        $v0, 0x20($v1)
/* BC40 8000B040 8C620020 */  lw         $v0, 0x20($v1)
/* BC44 8000B044 8FB90040 */  lw         $t9, 0x40($sp)
/* BC48 8000B048 240C0001 */  addiu      $t4, $zero, 1
/* BC4C 8000B04C 84490028 */  lh         $t1, 0x28($v0)
/* BC50 8000B050 240D0001 */  addiu      $t5, $zero, 1
/* BC54 8000B054 24060001 */  addiu      $a2, $zero, 1
/* BC58 8000B058 00095080 */  sll        $t2, $t1, 2
/* BC5C 8000B05C 01495023 */  subu       $t2, $t2, $t1
/* BC60 8000B060 000A5080 */  sll        $t2, $t2, 2
/* BC64 8000B064 032A5821 */  addu       $t3, $t9, $t2
/* BC68 8000B068 85680002 */  lh         $t0, 2($t3)
/* BC6C 8000B06C 00003825 */  or         $a3, $zero, $zero
/* BC70 8000B070 A4680002 */  sh         $t0, 2($v1)
/* BC74 8000B074 84450028 */  lh         $a1, 0x28($v0)
/* BC78 8000B078 AFAD0014 */  sw         $t5, 0x14($sp)
/* BC7C 8000B07C 0C00762C */  jal        updateAnim
/* BC80 8000B080 AFAC0010 */   sw        $t4, 0x10($sp)
/* BC84 8000B084 10000016 */  b          .L8000B0E0
/* BC88 8000B088 97AC005E */   lhu       $t4, 0x5e($sp)
/* BC8C 8000B08C 8C620020 */  lw         $v0, 0x20($v1)
.L8000B090:
/* BC90 8000B090 8FAE0040 */  lw         $t6, 0x40($sp)
/* BC94 8000B094 2401000A */  addiu      $at, $zero, 0xa
/* BC98 8000B098 844F0028 */  lh         $t7, 0x28($v0)
/* BC9C 8000B09C 240B0001 */  addiu      $t3, $zero, 1
/* BCA0 8000B0A0 24080001 */  addiu      $t0, $zero, 1
/* BCA4 8000B0A4 000FC080 */  sll        $t8, $t7, 2
/* BCA8 8000B0A8 030FC023 */  subu       $t8, $t8, $t7
/* BCAC 8000B0AC 0018C080 */  sll        $t8, $t8, 2
/* BCB0 8000B0B0 01D84821 */  addu       $t1, $t6, $t8
/* BCB4 8000B0B4 85390002 */  lh         $t9, 2($t1)
/* BCB8 8000B0B8 2406000A */  addiu      $a2, $zero, 0xa
/* BCBC 8000B0BC 00003825 */  or         $a3, $zero, $zero
/* BCC0 8000B0C0 0321001A */  div        $zero, $t9, $at
/* BCC4 8000B0C4 00005012 */  mflo       $t2
/* BCC8 8000B0C8 A46A0002 */  sh         $t2, 2($v1)
/* BCCC 8000B0CC 84450028 */  lh         $a1, 0x28($v0)
/* BCD0 8000B0D0 AFA80014 */  sw         $t0, 0x14($sp)
/* BCD4 8000B0D4 0C00762C */  jal        updateAnim
/* BCD8 8000B0D8 AFAB0010 */   sw        $t3, 0x10($sp)
.L8000B0DC:
/* BCDC 8000B0DC 97AC005E */  lhu        $t4, 0x5e($sp)
.L8000B0E0:
/* BCE0 8000B0E0 318D8000 */  andi       $t5, $t4, 0x8000
/* BCE4 8000B0E4 11A00004 */  beqz       $t5, .L8000B0F8
/* BCE8 8000B0E8 00002025 */   or        $a0, $zero, $zero
/* BCEC 8000B0EC 24050018 */  addiu      $a1, $zero, 0x18
/* BCF0 8000B0F0 0C009A35 */  jal        func_800268D4
/* BCF4 8000B0F4 240600FF */   addiu     $a2, $zero, 0xff
.L8000B0F8:
/* BCF8 8000B0F8 02001025 */  or         $v0, $s0, $zero
/* BCFC 8000B0FC 8FBF0024 */  lw         $ra, 0x24($sp)
/* BD00 8000B100 8FB00020 */  lw         $s0, 0x20($sp)
/* BD04 8000B104 27BD0050 */  addiu      $sp, $sp, 0x50
/* BD08 8000B108 03E00008 */  jr         $ra
/* BD0C 8000B10C 00000000 */   nop

glabel func_8000B110
/* BD10 8000B110 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* BD14 8000B114 AFBF0014 */  sw         $ra, 0x14($sp)
/* BD18 8000B118 0C00822E */  jal        func_800208B8
/* BD1C 8000B11C 00000000 */   nop
/* BD20 8000B120 00002025 */  or         $a0, $zero, $zero
/* BD24 8000B124 24050017 */  addiu      $a1, $zero, 0x17
/* BD28 8000B128 0C009A35 */  jal        func_800268D4
/* BD2C 8000B12C 240600FF */   addiu     $a2, $zero, 0xff
/* BD30 8000B130 8FBF0014 */  lw         $ra, 0x14($sp)
/* BD34 8000B134 27BD0018 */  addiu      $sp, $sp, 0x18
/* BD38 8000B138 03E00008 */  jr         $ra
/* BD3C 8000B13C 00000000 */   nop

glabel func_8000B140
/* BD40 8000B140 3C028008 */  lui        $v0, %hi(EnemyData+0x24)
/* BD44 8000B144 2442C9BC */  addiu      $v0, $v0, %lo(EnemyData+0x24)
/* BD48 8000B148 00001825 */  or         $v1, $zero, $zero
/* BD4C 8000B14C 24050006 */  addiu      $a1, $zero, 6
.L8000B150:
/* BD50 8000B150 50820005 */  beql       $a0, $v0, .L8000B168
/* BD54 8000B154 00601025 */   or        $v0, $v1, $zero
/* BD58 8000B158 24630001 */  addiu      $v1, $v1, 1
/* BD5C 8000B15C 1465FFFC */  bne        $v1, $a1, .L8000B150
/* BD60 8000B160 24420128 */   addiu     $v0, $v0, 0x128
/* BD64 8000B164 00601025 */  or         $v0, $v1, $zero
.L8000B168:
/* BD68 8000B168 03E00008 */  jr         $ra
/* BD6C 8000B16C 00000000 */   nop

glabel func_8000B170
/* BD70 8000B170 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* BD74 8000B174 AFB00030 */  sw         $s0, 0x30($sp)
/* BD78 8000B178 3C038005 */  lui        $v1, %hi(D_80054690)
/* BD7C 8000B17C 3C088008 */  lui        $t0, %hi(D_8007D0D0)
/* BD80 8000B180 2508D0D0 */  addiu      $t0, $t0, %lo(D_8007D0D0)
/* BD84 8000B184 24634690 */  addiu      $v1, $v1, %lo(D_80054690)
/* BD88 8000B188 00808025 */  or         $s0, $a0, $zero
/* BD8C 8000B18C AFBF0034 */  sw         $ra, 0x34($sp)
/* BD90 8000B190 C4640148 */  lwc1       $f4, 0x148($v1)
/* BD94 8000B194 C466014C */  lwc1       $f6, 0x14c($v1)
/* BD98 8000B198 846E0140 */  lh         $t6, 0x140($v1)
/* BD9C 8000B19C E5040000 */  swc1       $f4, ($t0)
/* BDA0 8000B1A0 E5060004 */  swc1       $f6, 4($t0)
/* BDA4 8000B1A4 C6080028 */  lwc1       $f8, 0x28($s0)
/* BDA8 8000B1A8 000E7880 */  sll        $t7, $t6, 2
/* BDAC 8000B1AC 3C18800C */  lui        $t8, 0x800c
/* BDB0 8000B1B0 E5080008 */  swc1       $f8, 8($t0)
/* BDB4 8000B1B4 8E020064 */  lw         $v0, 0x64($s0)
/* BDB8 8000B1B8 01EE7821 */  addu       $t7, $t7, $t6
/* BDBC 8000B1BC 000F7840 */  sll        $t7, $t7, 1
/* BDC0 8000B1C0 94590000 */  lhu        $t9, ($v0)
/* BDC4 8000B1C4 27181B90 */  addiu      $t8, $t8, 0x1b90
/* BDC8 8000B1C8 24010001 */  addiu      $at, $zero, 1
/* BDCC 8000B1CC 17210004 */  bne        $t9, $at, .L8000B1E0
/* BDD0 8000B1D0 01F84821 */   addu      $t1, $t7, $t8
/* BDD4 8000B1D4 8E0A0068 */  lw         $t2, 0x68($s0)
/* BDD8 8000B1D8 1000000E */  b          .L8000B214
/* BDDC 8000B1DC C5420094 */   lwc1      $f2, 0x94($t2)
.L8000B1E0:
/* BDE0 8000B1E0 C44A001C */  lwc1       $f10, 0x1c($v0)
/* BDE4 8000B1E4 3C013FE0 */  lui        $at, 0x3fe0
/* BDE8 8000B1E8 44819800 */  mtc1       $at, $f19
/* BDEC 8000B1EC 44809000 */  mtc1       $zero, $f18
/* BDF0 8000B1F0 46005421 */  cvt.d.s    $f16, $f10
/* BDF4 8000B1F4 C6060024 */  lwc1       $f6, 0x24($s0)
/* BDF8 8000B1F8 46328102 */  mul.d      $f4, $f16, $f18
/* BDFC 8000B1FC C6100004 */  lwc1       $f16, 4($s0)
/* BE00 8000B200 46003221 */  cvt.d.s    $f8, $f6
/* BE04 8000B204 460084A1 */  cvt.d.s    $f18, $f16
/* BE08 8000B208 46282282 */  mul.d      $f10, $f4, $f8
/* BE0C 8000B20C 462A9180 */  add.d      $f6, $f18, $f10
/* BE10 8000B210 462030A0 */  cvt.s.d    $f2, $f6
.L8000B214:
/* BE14 8000B214 C6040008 */  lwc1       $f4, 8($s0)
/* BE18 8000B218 8E060000 */  lw         $a2, ($s0)
/* BE1C 8000B21C 3C048005 */  lui        $a0, 0x8005
/* BE20 8000B220 E7A40010 */  swc1       $f4, 0x10($sp)
/* BE24 8000B224 C6080010 */  lwc1       $f8, 0x10($s0)
/* BE28 8000B228 3C058005 */  lui        $a1, %hi(D_800547D4)
/* BE2C 8000B22C 44071000 */  mfc1       $a3, $f2
/* BE30 8000B230 94A547D4 */  lhu        $a1, %lo(D_800547D4)($a1)
/* BE34 8000B234 E7A2003C */  swc1       $f2, 0x3c($sp)
/* BE38 8000B238 AFB00020 */  sw         $s0, 0x20($sp)
/* BE3C 8000B23C AFA8001C */  sw         $t0, 0x1c($sp)
/* BE40 8000B240 AFA90018 */  sw         $t1, 0x18($sp)
/* BE44 8000B244 948447D2 */  lhu        $a0, 0x47d2($a0)
/* BE48 8000B248 0C005DFE */  jal        func_800177F8
/* BE4C 8000B24C E7A80014 */   swc1      $f8, 0x14($sp)
/* BE50 8000B250 8E020064 */  lw         $v0, 0x64($s0)
/* BE54 8000B254 C6000024 */  lwc1       $f0, 0x24($s0)
/* BE58 8000B258 C6060008 */  lwc1       $f6, 8($s0)
/* BE5C 8000B25C C450001C */  lwc1       $f16, 0x1c($v0)
/* BE60 8000B260 8E060000 */  lw         $a2, ($s0)
/* BE64 8000B264 E7A60010 */  swc1       $f6, 0x10($sp)
/* BE68 8000B268 46008482 */  mul.s      $f18, $f16, $f0
/* BE6C 8000B26C C4440018 */  lwc1       $f4, 0x18($v0)
/* BE70 8000B270 C7A2003C */  lwc1       $f2, 0x3c($sp)
/* BE74 8000B274 3C018007 */  lui        $at, %hi(D_800711C0)
/* BE78 8000B278 46002202 */  mul.s      $f8, $f4, $f0
/* BE7C 8000B27C 24040002 */  addiu      $a0, $zero, 2
/* BE80 8000B280 2405001E */  addiu      $a1, $zero, 0x1e
/* BE84 8000B284 46029280 */  add.s      $f10, $f18, $f2
/* BE88 8000B288 D43211C0 */  ldc1       $f18, %lo(D_800711C0)($at)
/* BE8C 8000B28C 46004421 */  cvt.d.s    $f16, $f8
/* BE90 8000B290 44075000 */  mfc1       $a3, $f10
/* BE94 8000B294 46328282 */  mul.d      $f10, $f16, $f18
/* BE98 8000B298 462051A0 */  cvt.s.d    $f6, $f10
/* BE9C 8000B29C 0C0064D5 */  jal        func_80019354
/* BEA0 8000B2A0 E7A60014 */   swc1      $f6, 0x14($sp)
/* BEA4 8000B2A4 8FBF0034 */  lw         $ra, 0x34($sp)
/* BEA8 8000B2A8 8FB00030 */  lw         $s0, 0x30($sp)
/* BEAC 8000B2AC 27BD0040 */  addiu      $sp, $sp, 0x40
/* BEB0 8000B2B0 03E00008 */  jr         $ra
/* BEB4 8000B2B4 00000000 */   nop

glabel VOID_Reset7d0c4
/* BEB8 8000B2B8 3C018008 */  lui        $at, %hi(D_8007D0C4)
/* BEBC 8000B2BC AC20D0C4 */  sw         $zero, %lo(D_8007D0C4)($at)
/* BEC0 8000B2C0 03E00008 */  jr         $ra
/* BEC4 8000B2C4 00000000 */   nop

glabel func_8000B2C8
/* BEC8 8000B2C8 3C028008 */  lui        $v0, %hi(D_8007D0C0)
/* BECC 8000B2CC 2442D0C0 */  addiu      $v0, $v0, %lo(D_8007D0C0)
/* BED0 8000B2D0 00047080 */  sll        $t6, $a0, 2
/* BED4 8000B2D4 3C0F8005 */  lui        $t7, %hi(D_80054640)
/* BED8 8000B2D8 A4400000 */  sh         $zero, ($v0)
/* BEDC 8000B2DC 01EE7821 */  addu       $t7, $t7, $t6
/* BEE0 8000B2E0 8DEF4640 */  lw         $t7, %lo(D_80054640)($t7)
/* BEE4 8000B2E4 3C188008 */  lui        $t8, %hi(EnemyData+0x24)
/* BEE8 8000B2E8 2718C9BC */  addiu      $t8, $t8, %lo(EnemyData+0x24)
/* BEEC 8000B2EC AC450008 */  sw         $a1, 8($v0)
/* BEF0 8000B2F0 AC58000C */  sw         $t8, 0xc($v0)
/* BEF4 8000B2F4 AC4F0004 */  sw         $t7, 4($v0)
/* BEF8 8000B2F8 03E00008 */  jr         $ra
/* BEFC 8000B2FC 00000000 */   nop

glabel func_8000B300
/* BF00 8000B300 27BDFF98 */  addiu      $sp, $sp, -0x68
/* BF04 8000B304 AFBF0034 */  sw         $ra, 0x34($sp)
/* BF08 8000B308 AFB10030 */  sw         $s1, 0x30($sp)
/* BF0C 8000B30C AFB0002C */  sw         $s0, 0x2c($sp)
/* BF10 8000B310 3C0E8008 */  lui        $t6, %hi(D_8007D0C4)
/* BF14 8000B314 8DCED0C4 */  lw         $t6, %lo(D_8007D0C4)($t6)
/* BF18 8000B318 3C0F8008 */  lui        $t7, %hi(D_8007D0C0)
/* BF1C 8000B31C 51C00079 */  beql       $t6, $zero, .L8000B504
/* BF20 8000B320 8FBF0034 */   lw        $ra, 0x34($sp)
/* BF24 8000B324 95EFD0C0 */  lhu        $t7, %lo(D_8007D0C0)($t7)
/* BF28 8000B328 3C018008 */  lui        $at, %hi(D_8007D0C0)
/* BF2C 8000B32C 3C108008 */  lui        $s0, 0x8008
/* BF30 8000B330 25F80001 */  addiu      $t8, $t7, 1
/* BF34 8000B334 A438D0C0 */  sh         $t8, %lo(D_8007D0C0)($at)
/* BF38 8000B338 95D90000 */  lhu        $t9, ($t6)
/* BF3C 8000B33C 3308FFFF */  andi       $t0, $t8, 0xffff
/* BF40 8000B340 01C08825 */  or         $s1, $t6, $zero
/* BF44 8000B344 0328082A */  slt        $at, $t9, $t0
/* BF48 8000B348 1020006D */  beqz       $at, .L8000B500
/* BF4C 8000B34C 2610D0D0 */   addiu     $s0, $s0, -0x2f30
/* BF50 8000B350 95C90002 */  lhu        $t1, 2($t6)
/* BF54 8000B354 3C0B8005 */  lui        $t3, %hi(D_80054690)
/* BF58 8000B358 256B4690 */  addiu      $t3, $t3, %lo(D_80054690)
/* BF5C 8000B35C 00095100 */  sll        $t2, $t1, 4
/* BF60 8000B360 014B1821 */  addu       $v1, $t2, $t3
/* BF64 8000B364 846C0000 */  lh         $t4, ($v1)
/* BF68 8000B368 3C0F800C */  lui        $t7, %hi(D_800C1B90)
/* BF6C 8000B36C 25EF1B90 */  addiu      $t7, $t7, %lo(D_800C1B90)
/* BF70 8000B370 000C6880 */  sll        $t5, $t4, 2
/* BF74 8000B374 01AC6821 */  addu       $t5, $t5, $t4
/* BF78 8000B378 000D6840 */  sll        $t5, $t5, 1
/* BF7C 8000B37C 01AF7021 */  addu       $t6, $t5, $t7
/* BF80 8000B380 AFAE003C */  sw         $t6, 0x3c($sp)
/* BF84 8000B384 C6240008 */  lwc1       $f4, 8($s1)
/* BF88 8000B388 3C028008 */  lui        $v0, %hi(D_8007D0CC)
/* BF8C 8000B38C 8C42D0CC */  lw         $v0, %lo(D_8007D0CC)($v0)
/* BF90 8000B390 E6040000 */  swc1       $f4, ($s0)
/* BF94 8000B394 C6260010 */  lwc1       $f6, 0x10($s1)
/* BF98 8000B398 02002825 */  or         $a1, $s0, $zero
/* BF9C 8000B39C E6060004 */  swc1       $f6, 4($s0)
/* BFA0 8000B3A0 C62A0014 */  lwc1       $f10, 0x14($s1)
/* BFA4 8000B3A4 C4480010 */  lwc1       $f8, 0x10($v0)
/* BFA8 8000B3A8 AFA30040 */  sw         $v1, 0x40($sp)
/* BFAC 8000B3AC AFA20048 */  sw         $v0, 0x48($sp)
/* BFB0 8000B3B0 0C008CBD */  jal        func_800232F4
/* BFB4 8000B3B4 460A4300 */   add.s     $f12, $f8, $f10
/* BFB8 8000B3B8 96380004 */  lhu        $t8, 4($s1)
/* BFBC 8000B3BC 8FA20048 */  lw         $v0, 0x48($sp)
/* BFC0 8000B3C0 8FA30040 */  lw         $v1, 0x40($sp)
/* BFC4 8000B3C4 33190002 */  andi       $t9, $t8, 2
/* BFC8 8000B3C8 13200007 */  beqz       $t9, .L8000B3E8
/* BFCC 8000B3CC 3C018008 */   lui       $at, %hi(BrianActor)
/* BFD0 8000B3D0 C422BACC */  lwc1       $f2, %lo(BrianActor)($at)
/* BFD4 8000B3D4 3C018008 */  lui        $at, %hi(BrianYPos)
/* BFD8 8000B3D8 C42CBAD0 */  lwc1       $f12, %lo(BrianYPos)($at)
/* BFDC 8000B3DC 3C018008 */  lui        $at, %hi(BrianActor+0x8)
/* BFE0 8000B3E0 10000004 */  b          .L8000B3F4
/* BFE4 8000B3E4 C42EBAD4 */   lwc1      $f14, %lo(BrianActor+0x8)($at)
.L8000B3E8:
/* BFE8 8000B3E8 C4420000 */  lwc1       $f2, ($v0)
/* BFEC 8000B3EC C44C0004 */  lwc1       $f12, 4($v0)
/* BFF0 8000B3F0 C44E0008 */  lwc1       $f14, 8($v0)
.L8000B3F4:
/* BFF4 8000B3F4 C4400024 */  lwc1       $f0, 0x24($v0)
/* BFF8 8000B3F8 C6100000 */  lwc1       $f16, ($s0)
/* BFFC 8000B3FC C624000C */  lwc1       $f4, 0xc($s1)
/* C000 8000B400 C6080004 */  lwc1       $f8, 4($s0)
/* C004 8000B404 46008482 */  mul.s      $f18, $f16, $f0
/* C008 8000B408 C4700008 */  lwc1       $f16, 8($v1)
/* C00C 8000B40C 3C088008 */  lui        $t0, 0x8008
/* C010 8000B410 46002182 */  mul.s      $f6, $f4, $f0
/* C014 8000B414 E6100000 */  swc1       $f16, ($s0)
/* C018 8000B418 3C0D800C */  lui        $t5, 0x800c
/* C01C 8000B41C 46004282 */  mul.s      $f10, $f8, $f0
/* C020 8000B420 46121080 */  add.s      $f2, $f2, $f18
/* C024 8000B424 C472000C */  lwc1       $f18, 0xc($v1)
/* C028 8000B428 46066300 */  add.s      $f12, $f12, $f6
/* C02C 8000B42C E6120004 */  swc1       $f18, 4($s0)
/* C030 8000B430 8D08D0C8 */  lw         $t0, -0x2f38($t0)
/* C034 8000B434 460A7380 */  add.s      $f14, $f14, $f10
/* C038 8000B438 8D09001C */  lw         $t1, 0x1c($t0)
/* C03C 8000B43C 95270000 */  lhu        $a3, ($t1)
/* C040 8000B440 30EA8000 */  andi       $t2, $a3, 0x8000
/* C044 8000B444 1140000D */  beqz       $t2, .L8000B47C
/* C048 8000B448 00072203 */   sra       $a0, $a3, 8
/* C04C 8000B44C 308B000F */  andi       $t3, $a0, 0xf
/* C050 8000B450 000B6080 */  sll        $t4, $t3, 2
/* C054 8000B454 30E500FF */  andi       $a1, $a3, 0xff
/* C058 8000B458 01AC6821 */  addu       $t5, $t5, $t4
/* C05C 8000B45C 8DAD1B14 */  lw         $t5, 0x1b14($t5)
/* C060 8000B460 00057900 */  sll        $t7, $a1, 4
/* C064 8000B464 01E57821 */  addu       $t7, $t7, $a1
/* C068 8000B468 000F7880 */  sll        $t7, $t7, 2
/* C06C 8000B46C 01AF3021 */  addu       $a2, $t5, $t7
/* C070 8000B470 C4C4001C */  lwc1       $f4, 0x1c($a2)
/* C074 8000B474 10000003 */  b          .L8000B484
/* C078 8000B478 E6040008 */   swc1      $f4, 8($s0)
.L8000B47C:
/* C07C 8000B47C C4460028 */  lwc1       $f6, 0x28($v0)
/* C080 8000B480 E6060008 */  swc1       $f6, 8($s0)
.L8000B484:
/* C084 8000B484 94640002 */  lhu        $a0, 2($v1)
/* C088 8000B488 94650004 */  lhu        $a1, 4($v1)
/* C08C 8000B48C E7AE0010 */  swc1       $f14, 0x10($sp)
/* C090 8000B490 C62A0014 */  lwc1       $f10, 0x14($s1)
/* C094 8000B494 C4480010 */  lwc1       $f8, 0x10($v0)
/* C098 8000B498 8FAE003C */  lw         $t6, 0x3c($sp)
/* C09C 8000B49C 44061000 */  mfc1       $a2, $f2
/* C0A0 8000B4A0 460A4400 */  add.s      $f16, $f8, $f10
/* C0A4 8000B4A4 44076000 */  mfc1       $a3, $f12
/* C0A8 8000B4A8 AFA20020 */  sw         $v0, 0x20($sp)
/* C0AC 8000B4AC AFB0001C */  sw         $s0, 0x1c($sp)
/* C0B0 8000B4B0 E7B00014 */  swc1       $f16, 0x14($sp)
/* C0B4 8000B4B4 0C005DFE */  jal        func_800177F8
/* C0B8 8000B4B8 AFAE0018 */   sw        $t6, 0x18($sp)
/* C0BC 8000B4BC 96220004 */  lhu        $v0, 4($s1)
/* C0C0 8000B4C0 30580004 */  andi       $t8, $v0, 4
/* C0C4 8000B4C4 53000005 */  beql       $t8, $zero, .L8000B4DC
/* C0C8 8000B4C8 30590001 */   andi      $t9, $v0, 1
/* C0CC 8000B4CC 0C004FC8 */  jal        func_80013F20
/* C0D0 8000B4D0 24040001 */   addiu     $a0, $zero, 1
/* C0D4 8000B4D4 96220004 */  lhu        $v0, 4($s1)
/* C0D8 8000B4D8 30590001 */  andi       $t9, $v0, 1
.L8000B4DC:
/* C0DC 8000B4DC 13200004 */  beqz       $t9, .L8000B4F0
/* C0E0 8000B4E0 3C088008 */   lui       $t0, %hi(D_8007D0C4)
/* C0E4 8000B4E4 3C018008 */  lui        $at, %hi(D_8007D0C4)
/* C0E8 8000B4E8 10000005 */  b          .L8000B500
/* C0EC 8000B4EC AC20D0C4 */   sw        $zero, %lo(D_8007D0C4)($at)
.L8000B4F0:
/* C0F0 8000B4F0 8D08D0C4 */  lw         $t0, %lo(D_8007D0C4)($t0)
/* C0F4 8000B4F4 3C018008 */  lui        $at, %hi(D_8007D0C4)
/* C0F8 8000B4F8 25090018 */  addiu      $t1, $t0, 0x18
/* C0FC 8000B4FC AC29D0C4 */  sw         $t1, %lo(D_8007D0C4)($at)
.L8000B500:
/* C100 8000B500 8FBF0034 */  lw         $ra, 0x34($sp)
.L8000B504:
/* C104 8000B504 8FB0002C */  lw         $s0, 0x2c($sp)
/* C108 8000B508 8FB10030 */  lw         $s1, 0x30($sp)
/* C10C 8000B50C 03E00008 */  jr         $ra
/* C110 8000B510 27BD0068 */   addiu     $sp, $sp, 0x68
/* C114 8000B514 00000000 */  nop
/* C118 8000B518 00000000 */  nop
/* C11C 8000B51C 00000000 */  nop
