glabel func_800256D4
/* 262D4 800256D4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 262D8 800256D8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 262DC 800256DC 00803025 */  or         $a2, $a0, $zero
/* 262E0 800256E0 3C0E8009 */  lui        $t6, %hi(D_8008F68C)
/* 262E4 800256E4 8DCEF68C */  lw         $t6, %lo(D_8008F68C)($t6)
/* 262E8 800256E8 00067840 */  sll        $t7, $a2, 1
/* 262EC 800256EC 3C048009 */  lui        $a0, %hi(alSndPlayer_0)
/* 262F0 800256F0 01CFC021 */  addu       $t8, $t6, $t7
/* 262F4 800256F4 87050000 */  lh         $a1, ($t8)
/* 262F8 800256F8 0C00E62C */  jal        alSndpSetSound
/* 262FC 800256FC 2484F620 */   addiu     $a0, $a0, %lo(alSndPlayer_0)
/* 26300 80025700 3C048009 */  lui        $a0, %hi(alSndPlayer_0)
/* 26304 80025704 0C00E634 */  jal        alSndpGetState
/* 26308 80025708 2484F620 */   addiu     $a0, $a0, %lo(alSndPlayer_0)
/* 2630C 8002570C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 26310 80025710 27BD0018 */  addiu      $sp, $sp, 0x18
/* 26314 80025714 03E00008 */  jr         $ra
/* 26318 80025718 00000000 */   nop
