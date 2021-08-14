glabel initSomeBossAddress
/* C120 8000B520 3C018008 */  lui        $at, %hi(bossSpawnData)
/* C124 8000B524 A020D19C */  sb         $zero, %lo(bossSpawnData)($at)
/* C128 8000B528 03E00008 */  jr         $ra
/* C12C 8000B52C 00000000 */   nop
