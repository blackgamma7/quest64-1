glabel setChestOpenedFlag
/* 12DB0 800121B0 AFA40000 */  sw         $a0, ($sp)
/* 12DB4 800121B4 308EFFFF */  andi       $t6, $a0, 0xffff
/* 12DB8 800121B8 01C02025 */  or         $a0, $t6, $zero
/* 12DBC 800121BC 3C188008 */  lui        $t8, %hi(collectedChestsBitfield)
/* 12DC0 800121C0 271869D8 */  addiu      $t8, $t8, %lo(collectedChestsBitfield)
/* 12DC4 800121C4 000478C3 */  sra        $t7, $a0, 3
/* 12DC8 800121C8 30880007 */  andi       $t0, $a0, 7
/* 12DCC 800121CC 3C098005 */  lui        $t1, %hi(binTbl)
/* 12DD0 800121D0 01284821 */  addu       $t1, $t1, $t0
/* 12DD4 800121D4 01F81821 */  addu       $v1, $t7, $t8
/* 12DD8 800121D8 90790000 */  lbu        $t9, ($v1)
/* 12DDC 800121DC 9129D740 */  lbu        $t1, %lo(binTbl)($t1)
/* 12DE0 800121E0 03295025 */  or         $t2, $t9, $t1
/* 12DE4 800121E4 A06A0000 */  sb         $t2, ($v1)
/* 12DE8 800121E8 03E00008 */  jr         $ra
/* 12DEC 800121EC 00000000 */   nop
