glabel ResetShadowTally
/* 12450 80011850 3C018008 */  lui        $at, %hi(ShadowTally)
/* 12454 80011854 AC2062D0 */  sw         $zero, %lo(ShadowTally)($at)
/* 12458 80011858 03E00008 */  jr         $ra
/* 1245C 8001185C 00000000 */   nop
