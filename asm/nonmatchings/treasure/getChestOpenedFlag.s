glabel getChestOpenedFlag
/* 12D70 80012170 AFA40000 */  sw         $a0, ($sp)
/* 12D74 80012174 308EFFFF */  andi       $t6, $a0, 0xffff
/* 12D78 80012178 01C02025 */  or         $a0, $t6, $zero
/* 12D7C 8001217C 308F0007 */  andi       $t7, $a0, 7
/* 12D80 80012180 3C188005 */  lui        $t8, %hi(binTbl)
/* 12D84 80012184 0004C8C3 */  sra        $t9, $a0, 3
/* 12D88 80012188 3C088008 */  lui        $t0, %hi(collectedChestsBitfield)
/* 12D8C 8001218C 01194021 */  addu       $t0, $t0, $t9
/* 12D90 80012190 030FC021 */  addu       $t8, $t8, $t7
/* 12D94 80012194 9318D740 */  lbu        $t8, %lo(binTbl)($t8)
/* 12D98 80012198 910869D8 */  lbu        $t0, %lo(collectedChestsBitfield)($t0)
/* 12D9C 8001219C 03081024 */  and        $v0, $t8, $t0
/* 12DA0 800121A0 304900FF */  andi       $t1, $v0, 0xff
/* 12DA4 800121A4 01201025 */  or         $v0, $t1, $zero
/* 12DA8 800121A8 03E00008 */  jr         $ra
/* 12DAC 800121AC 00000000 */   nop
