glabel func_8002568C
/* 2628C 8002568C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 26290 80025690 AFBF0014 */  sw         $ra, 0x14($sp)
/* 26294 80025694 00803025 */  or         $a2, $a0, $zero
/* 26298 80025698 3C0E8009 */  lui        $t6, %hi(D_8008F68C)
/* 2629C 8002569C 8DCEF68C */  lw         $t6, %lo(D_8008F68C)($t6)
/* 262A0 800256A0 00067840 */  sll        $t7, $a2, 1
/* 262A4 800256A4 3C048009 */  lui        $a0, %hi(alSndPlayer_0)
/* 262A8 800256A8 01CFC021 */  addu       $t8, $t6, $t7
/* 262AC 800256AC 87050000 */  lh         $a1, ($t8)
/* 262B0 800256B0 0C00E62C */  jal        alSndpSetSound
/* 262B4 800256B4 2484F620 */   addiu     $a0, $a0, %lo(alSndPlayer_0)
/* 262B8 800256B8 3C048009 */  lui        $a0, %hi(alSndPlayer_0)
/* 262BC 800256BC 0C00E658 */  jal        alSndpStop
/* 262C0 800256C0 2484F620 */   addiu     $a0, $a0, %lo(alSndPlayer_0)
/* 262C4 800256C4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 262C8 800256C8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 262CC 800256CC 03E00008 */  jr         $ra
/* 262D0 800256D0 00000000 */   nop
