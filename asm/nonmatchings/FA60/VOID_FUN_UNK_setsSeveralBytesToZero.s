glabel VOID_FUN_UNK_setsSeveralBytesToZero
/* 11CD0 800110D0 3C028008 */  lui        $v0, %hi(D_800859E8)
/* 11CD4 800110D4 244259E8 */  addiu      $v0, $v0, %lo(D_800859E8)
/* 11CD8 800110D8 24030008 */  addiu      $v1, $zero, 8
.L800110DC:
/* 11CDC 800110DC 2463FFFC */  addiu      $v1, $v1, -4
/* 11CE0 800110E0 AC400000 */  sw         $zero, ($v0)
/* 11CE4 800110E4 AC400030 */  sw         $zero, 0x30($v0)
/* 11CE8 800110E8 AC400060 */  sw         $zero, 0x60($v0)
/* 11CEC 800110EC AC400090 */  sw         $zero, 0x90($v0)
/* 11CF0 800110F0 1460FFFA */  bnez       $v1, .L800110DC
/* 11CF4 800110F4 244200C0 */   addiu     $v0, $v0, 0xc0
/* 11CF8 800110F8 03E00008 */  jr         $ra
/* 11CFC 800110FC 00000000 */   nop
