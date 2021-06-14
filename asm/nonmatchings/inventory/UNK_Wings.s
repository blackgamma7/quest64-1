glabel UNK_Wings
/* 22EB4 800222B4 AFA40000 */  sw         $a0, ($sp)
/* 22EB8 800222B8 AFA50004 */  sw         $a1, 4($sp)
/* 22EBC 800222BC 3C0E8008 */  lui        $t6, %hi(mapFlags)
/* 22EC0 800222C0 95CE4EE0 */  lhu        $t6, %lo(mapFlags)($t6)
/* 22EC4 800222C4 3C188008 */  lui        $t8, %hi(D_80084F1C)
/* 22EC8 800222C8 31CF000A */  andi       $t7, $t6, 0xa
/* 22ECC 800222CC 15E00007 */  bnez       $t7, .L800222EC
/* 22ED0 800222D0 00000000 */   nop
/* 22ED4 800222D4 8F184F1C */  lw         $t8, %lo(D_80084F1C)($t8)
/* 22ED8 800222D8 24030001 */  addiu      $v1, $zero, 1
/* 22EDC 800222DC 97190014 */  lhu        $t9, 0x14($t8)
/* 22EE0 800222E0 33280004 */  andi       $t0, $t9, 4
/* 22EE4 800222E4 11000003 */  beqz       $t0, .L800222F4
/* 22EE8 800222E8 00000000 */   nop
.L800222EC:
/* 22EEC 800222EC 10000001 */  b          .L800222F4
/* 22EF0 800222F0 00001825 */   or        $v1, $zero, $zero
.L800222F4:
/* 22EF4 800222F4 00601025 */  or         $v0, $v1, $zero
/* 22EF8 800222F8 03E00008 */  jr         $ra
/* 22EFC 800222FC 00000000 */   nop
