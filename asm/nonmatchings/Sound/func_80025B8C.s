glabel func_80025B8C
/* 2678C 80025B8C 3C078005 */  lui        $a3, %hi(D_80053970)
/* 26790 80025B90 24E73970 */  addiu      $a3, $a3, %lo(D_80053970)
/* 26794 80025B94 8CE20000 */  lw         $v0, ($a3)
/* 26798 80025B98 3C018005 */  lui        $at, %hi(playingSoundEffectTbl)
/* 2679C 80025B9C 00021880 */  sll        $v1, $v0, 2
/* 267A0 80025BA0 00230821 */  addu       $at, $at, $v1
/* 267A4 80025BA4 AC24390C */  sw         $a0, %lo(playingSoundEffectTbl)($at)
/* 267A8 80025BA8 3C018005 */  lui        $at, %hi(D_8005392C)
/* 267AC 80025BAC 00230821 */  addu       $at, $at, $v1
/* 267B0 80025BB0 AC25392C */  sw         $a1, %lo(D_8005392C)($at)
/* 267B4 80025BB4 3C018005 */  lui        $at, %hi(D_8005394C)
/* 267B8 80025BB8 00230821 */  addu       $at, $at, $v1
/* 267BC 80025BBC 24420001 */  addiu      $v0, $v0, 1
/* 267C0 80025BC0 AC26394C */  sw         $a2, %lo(D_8005394C)($at)
/* 267C4 80025BC4 304E0007 */  andi       $t6, $v0, 7
/* 267C8 80025BC8 ACEE0000 */  sw         $t6, ($a3)
/* 267CC 80025BCC 3C018009 */  lui        $at, %hi(D_8008FCB4)
/* 267D0 80025BD0 03E00008 */  jr         $ra
/* 267D4 80025BD4 AC22FCB4 */   sw        $v0, %lo(D_8008FCB4)($at)
