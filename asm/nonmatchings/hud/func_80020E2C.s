glabel func_80020E2C
/* 21A2C 80020E2C 3C038008 */  lui        $v1, %hi(DLPtr)
/* 21A30 80020E30 2463B2FC */  addiu      $v1, $v1, %lo(DLPtr)
/* 21A34 80020E34 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 21A38 80020E38 8C620000 */  lw         $v0, ($v1)
/* 21A3C 80020E3C 3C01FD48 */  lui        $at, 0xfd48
/* 21A40 80020E40 00A75021 */  addu       $t2, $a1, $a3
/* 21A44 80020E44 244E0008 */  addiu      $t6, $v0, 8
/* 21A48 80020E48 AC6E0000 */  sw         $t6, ($v1)
/* 21A4C 80020E4C 8C8F0008 */  lw         $t7, 8($a0)
/* 21A50 80020E50 01456823 */  subu       $t5, $t2, $a1
/* 21A54 80020E54 25AD0008 */  addiu      $t5, $t5, 8
/* 21A58 80020E58 25F8FFFF */  addiu      $t8, $t7, -1
/* 21A5C 80020E5C 33190FFF */  andi       $t9, $t8, 0xfff
/* 21A60 80020E60 03217025 */  or         $t6, $t9, $at
/* 21A64 80020E64 AC4E0000 */  sw         $t6, ($v0)
/* 21A68 80020E68 8C8F0000 */  lw         $t7, ($a0)
/* 21A6C 80020E6C 000DC8C3 */  sra        $t9, $t5, 3
/* 21A70 80020E70 332E01FF */  andi       $t6, $t9, 0x1ff
/* 21A74 80020E74 AC4F0004 */  sw         $t7, 4($v0)
/* 21A78 80020E78 8C620000 */  lw         $v0, ($v1)
/* 21A7C 80020E7C 000E7A40 */  sll        $t7, $t6, 9
/* 21A80 80020E80 3C01F548 */  lui        $at, 0xf548
/* 21A84 80020E84 24580008 */  addiu      $t8, $v0, 8
/* 21A88 80020E88 AC780000 */  sw         $t8, ($v1)
/* 21A8C 80020E8C 01E16825 */  or         $t5, $t7, $at
/* 21A90 80020E90 3C190700 */  lui        $t9, 0x700
/* 21A94 80020E94 AC590004 */  sw         $t9, 4($v0)
/* 21A98 80020E98 AC4D0000 */  sw         $t5, ($v0)
/* 21A9C 80020E9C 8C620000 */  lw         $v0, ($v1)
/* 21AA0 80020EA0 3C0FE600 */  lui        $t7, 0xe600
/* 21AA4 80020EA4 0005C880 */  sll        $t9, $a1, 2
/* 21AA8 80020EA8 244E0008 */  addiu      $t6, $v0, 8
/* 21AAC 80020EAC AC6E0000 */  sw         $t6, ($v1)
/* 21AB0 80020EB0 AC400004 */  sw         $zero, 4($v0)
/* 21AB4 80020EB4 AC4F0000 */  sw         $t7, ($v0)
/* 21AB8 80020EB8 8C620000 */  lw         $v0, ($v1)
/* 21ABC 80020EBC 332E0FFF */  andi       $t6, $t9, 0xfff
/* 21AC0 80020EC0 000E7B00 */  sll        $t7, $t6, 0xc
/* 21AC4 80020EC4 24580008 */  addiu      $t8, $v0, 8
/* 21AC8 80020EC8 AC780000 */  sw         $t8, ($v1)
/* 21ACC 80020ECC 0006C080 */  sll        $t8, $a2, 2
/* 21AD0 80020ED0 33190FFF */  andi       $t9, $t8, 0xfff
/* 21AD4 80020ED4 3C01F400 */  lui        $at, 0xf400
/* 21AD8 80020ED8 01E17025 */  or         $t6, $t7, $at
/* 21ADC 80020EDC 01D9C025 */  or         $t8, $t6, $t9
/* 21AE0 80020EE0 AFB90008 */  sw         $t9, 8($sp)
/* 21AE4 80020EE4 AFAF000C */  sw         $t7, 0xc($sp)
/* 21AE8 80020EE8 AC580000 */  sw         $t8, ($v0)
/* 21AEC 80020EEC 8FB80040 */  lw         $t8, 0x40($sp)
/* 21AF0 80020EF0 000A7880 */  sll        $t7, $t2, 2
/* 21AF4 80020EF4 31EE0FFF */  andi       $t6, $t7, 0xfff
/* 21AF8 80020EF8 000ECB00 */  sll        $t9, $t6, 0xc
/* 21AFC 80020EFC 00D87821 */  addu       $t7, $a2, $t8
/* 21B00 80020F00 000F7080 */  sll        $t6, $t7, 2
/* 21B04 80020F04 31D80FFF */  andi       $t8, $t6, 0xfff
/* 21B08 80020F08 3C010700 */  lui        $at, 0x700
/* 21B0C 80020F0C 03217825 */  or         $t7, $t9, $at
/* 21B10 80020F10 01F87025 */  or         $t6, $t7, $t8
/* 21B14 80020F14 AFB80000 */  sw         $t8, ($sp)
/* 21B18 80020F18 AFB90004 */  sw         $t9, 4($sp)
/* 21B1C 80020F1C AC4E0004 */  sw         $t6, 4($v0)
/* 21B20 80020F20 8C620000 */  lw         $v0, ($v1)
/* 21B24 80020F24 3C0FE700 */  lui        $t7, 0xe700
/* 21B28 80020F28 3C01F200 */  lui        $at, 0xf200
/* 21B2C 80020F2C 24590008 */  addiu      $t9, $v0, 8
/* 21B30 80020F30 AC790000 */  sw         $t9, ($v1)
/* 21B34 80020F34 AFA2001C */  sw         $v0, 0x1c($sp)
/* 21B38 80020F38 AC400004 */  sw         $zero, 4($v0)
/* 21B3C 80020F3C AC4F0000 */  sw         $t7, ($v0)
/* 21B40 80020F40 8C620000 */  lw         $v0, ($v1)
/* 21B44 80020F44 244E0008 */  addiu      $t6, $v0, 8
/* 21B48 80020F48 AC6E0000 */  sw         $t6, ($v1)
/* 21B4C 80020F4C AC400004 */  sw         $zero, 4($v0)
/* 21B50 80020F50 AC4D0000 */  sw         $t5, ($v0)
/* 21B54 80020F54 8C620000 */  lw         $v0, ($v1)
/* 21B58 80020F58 8FAF000C */  lw         $t7, 0xc($sp)
/* 21B5C 80020F5C 8FAE0008 */  lw         $t6, 8($sp)
/* 21B60 80020F60 24590008 */  addiu      $t9, $v0, 8
/* 21B64 80020F64 AC790000 */  sw         $t9, ($v1)
/* 21B68 80020F68 01E1C025 */  or         $t8, $t7, $at
/* 21B6C 80020F6C 030EC825 */  or         $t9, $t8, $t6
/* 21B70 80020F70 AC590000 */  sw         $t9, ($v0)
/* 21B74 80020F74 8FB80000 */  lw         $t8, ($sp)
/* 21B78 80020F78 8FAF0004 */  lw         $t7, 4($sp)
/* 21B7C 80020F7C 01F87025 */  or         $t6, $t7, $t8
/* 21B80 80020F80 AC4E0004 */  sw         $t6, 4($v0)
/* 21B84 80020F84 03E00008 */  jr         $ra
/* 21B88 80020F88 27BD0030 */   addiu     $sp, $sp, 0x30
