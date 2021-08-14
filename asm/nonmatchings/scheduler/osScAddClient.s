glabel osScAddClient
/* 13D4 800007D4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 13D8 800007D8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 13DC 800007DC AFA40018 */  sw         $a0, 0x18($sp)
/* 13E0 800007E0 AFA60020 */  sw         $a2, 0x20($sp)
/* 13E4 800007E4 24040001 */  addiu      $a0, $zero, 1
/* 13E8 800007E8 0C00D058 */  jal        osSetIntMask
/* 13EC 800007EC AFA5001C */   sw        $a1, 0x1c($sp)
/* 13F0 800007F0 8FA5001C */  lw         $a1, 0x1c($sp)
/* 13F4 800007F4 8FAE0020 */  lw         $t6, 0x20($sp)
/* 13F8 800007F8 8FA30018 */  lw         $v1, 0x18($sp)
/* 13FC 800007FC 00402025 */  or         $a0, $v0, $zero
/* 1400 80000800 ACAE0004 */  sw         $t6, 4($a1)
/* 1404 80000804 8C6F0668 */  lw         $t7, 0x668($v1)
/* 1408 80000808 ACAF0000 */  sw         $t7, ($a1)
/* 140C 8000080C 0C00D058 */  jal        osSetIntMask
/* 1410 80000810 AC650668 */   sw        $a1, 0x668($v1)
/* 1414 80000814 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1418 80000818 27BD0018 */  addiu      $sp, $sp, 0x18
/* 141C 8000081C 03E00008 */  jr         $ra
/* 1420 80000820 00000000 */   nop
