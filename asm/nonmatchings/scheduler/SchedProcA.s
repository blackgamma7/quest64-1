glabel SchedProcA
/* 1310 80000710 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 1314 80000714 AFB00014 */  sw         $s0, 0x14($sp)
/* 1318 80000718 00808025 */  or         $s0, $a0, $zero
/* 131C 8000071C AFBF002C */  sw         $ra, 0x2c($sp)
/* 1320 80000720 AFB50028 */  sw         $s5, 0x28($sp)
/* 1324 80000724 AFB40024 */  sw         $s4, 0x24($sp)
/* 1328 80000728 AFB30020 */  sw         $s3, 0x20($sp)
/* 132C 8000072C AFB2001C */  sw         $s2, 0x1c($sp)
/* 1330 80000730 AFB10018 */  sw         $s1, 0x18($sp)
/* 1334 80000734 3C118008 */  lui        $s1, %hi(D_8007B2D0)
/* 1338 80000738 AFA0003C */  sw         $zero, 0x3c($sp)
/* 133C 8000073C 2631B2D0 */  addiu      $s1, $s1, %lo(D_8007B2D0)
/* 1340 80000740 26150074 */  addiu      $s5, $s0, 0x74
/* 1344 80000744 2414029D */  addiu      $s4, $zero, 0x29d
/* 1348 80000748 2413029A */  addiu      $s3, $zero, 0x29a
/* 134C 8000074C 27B2003C */  addiu      $s2, $sp, 0x3c
/* 1350 80000750 02A02025 */  or         $a0, $s5, $zero
.L80000754:
/* 1354 80000754 02402825 */  or         $a1, $s2, $zero
/* 1358 80000758 0C00D008 */  jal        osRecvMesg
/* 135C 8000075C 24060001 */   addiu     $a2, $zero, 1
/* 1360 80000760 962E0000 */  lhu        $t6, ($s1)
/* 1364 80000764 8FB8003C */  lw         $t8, 0x3c($sp)
/* 1368 80000768 02002025 */  or         $a0, $s0, $zero
/* 136C 8000076C 25CF0001 */  addiu      $t7, $t6, 1
/* 1370 80000770 13130005 */  beq        $t8, $s3, .L80000788
/* 1374 80000774 A62F0000 */   sh        $t7, ($s1)
/* 1378 80000778 13140007 */  beq        $t8, $s4, .L80000798
/* 137C 8000077C 02002025 */   or        $a0, $s0, $zero
/* 1380 80000780 1000FFF4 */  b          .L80000754
/* 1384 80000784 02A02025 */   or        $a0, $s5, $zero
.L80000788:
/* 1388 80000788 0C00022C */  jal        func_800008B0
/* 138C 8000078C 02002825 */   or        $a1, $s0, $zero
/* 1390 80000790 1000FFF0 */  b          .L80000754
/* 1394 80000794 02A02025 */   or        $a0, $s5, $zero
.L80000798:
/* 1398 80000798 0C00022C */  jal        func_800008B0
/* 139C 8000079C 26050002 */   addiu     $a1, $s0, 2
/* 13A0 800007A0 1000FFEC */  b          .L80000754
/* 13A4 800007A4 02A02025 */   or        $a0, $s5, $zero
/* 13A8 800007A8 00000000 */  nop
/* 13AC 800007AC 00000000 */  nop
/* 13B0 800007B0 8FBF002C */  lw         $ra, 0x2c($sp)
/* 13B4 800007B4 8FB00014 */  lw         $s0, 0x14($sp)
/* 13B8 800007B8 8FB10018 */  lw         $s1, 0x18($sp)
/* 13BC 800007BC 8FB2001C */  lw         $s2, 0x1c($sp)
/* 13C0 800007C0 8FB30020 */  lw         $s3, 0x20($sp)
/* 13C4 800007C4 8FB40024 */  lw         $s4, 0x24($sp)
/* 13C8 800007C8 8FB50028 */  lw         $s5, 0x28($sp)
/* 13CC 800007CC 03E00008 */  jr         $ra
/* 13D0 800007D0 27BD0040 */   addiu     $sp, $sp, 0x40
