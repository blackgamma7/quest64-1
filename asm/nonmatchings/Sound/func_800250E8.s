glabel func_800250E8
/* 25CE8 800250E8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 25CEC 800250EC AFBF001C */  sw         $ra, 0x1c($sp)
/* 25CF0 800250F0 00803825 */  or         $a3, $a0, $zero
/* 25CF4 800250F4 3C0E8009 */  lui        $t6, %hi(D_8008F240)
/* 25CF8 800250F8 25CEF240 */  addiu      $t6, $t6, %lo(D_8008F240)
/* 25CFC 800250FC 3C048009 */  lui        $a0, %hi(D_8008D090)
/* 25D00 80025100 3C068002 */  lui        $a2, %hi(func_80024BEC)
/* 25D04 80025104 240F0032 */  addiu      $t7, $zero, 0x32
/* 25D08 80025108 AFAF0014 */  sw         $t7, 0x14($sp)
/* 25D0C 8002510C 24C64BEC */  addiu      $a2, $a2, %lo(func_80024BEC)
/* 25D10 80025110 2484D090 */  addiu      $a0, $a0, %lo(D_8008D090)
/* 25D14 80025114 AFAE0010 */  sw         $t6, 0x10($sp)
/* 25D18 80025118 0C00CEB8 */  jal        osCreateThread
/* 25D1C 8002511C 24050005 */   addiu     $a1, $zero, 5
/* 25D20 80025120 3C048009 */  lui        $a0, %hi(D_8008D090)
/* 25D24 80025124 0C00CF0C */  jal        osStartThread
/* 25D28 80025128 2484D090 */   addiu     $a0, $a0, %lo(D_8008D090)
/* 25D2C 8002512C 8FBF001C */  lw         $ra, 0x1c($sp)
/* 25D30 80025130 27BD0020 */  addiu      $sp, $sp, 0x20
/* 25D34 80025134 03E00008 */  jr         $ra
/* 25D38 80025138 00000000 */   nop
