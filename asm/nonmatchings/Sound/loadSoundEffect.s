glabel loadSoundEffect
/* 264F8 800258F8 04800009 */  bltz       $a0, .L80025920
/* 264FC 800258FC 28810047 */   slti      $at, $a0, 0x47
/* 26500 80025900 10200007 */  beqz       $at, .L80025920
/* 26504 80025904 00047080 */   sll       $t6, $a0, 2
/* 26508 80025908 3C0F8005 */  lui        $t7, %hi(tbl_SEPtrs)
/* 2650C 8002590C 01EE7821 */  addu       $t7, $t7, $t6
/* 26510 80025910 8DEF39E4 */  lw         $t7, %lo(tbl_SEPtrs)($t7)
/* 26514 80025914 3C018009 */  lui        $at, %hi(ptr_CurrentSE)
/* 26518 80025918 03E00008 */  jr         $ra
/* 2651C 8002591C AC2FF92C */   sw        $t7, %lo(ptr_CurrentSE)($at)
.L80025920:
/* 26520 80025920 3C188005 */  lui        $t8, %hi(tbl_SEPtrs)
/* 26524 80025924 8F1839E4 */  lw         $t8, %lo(tbl_SEPtrs)($t8)
/* 26528 80025928 3C018009 */  lui        $at, %hi(ptr_CurrentSE)
/* 2652C 8002592C AC38F92C */  sw         $t8, %lo(ptr_CurrentSE)($at)
/* 26530 80025930 03E00008 */  jr         $ra
/* 26534 80025934 00000000 */   nop
