glabel func_80025634
/* 26234 80025634 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 26238 80025638 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2623C 8002563C 00803025 */  or         $a2, $a0, $zero
/* 26240 80025640 3C0E8009 */  lui        $t6, %hi(D_8008F68C)
/* 26244 80025644 8DCEF68C */  lw         $t6, %lo(D_8008F68C)($t6)
/* 26248 80025648 00067840 */  sll        $t7, $a2, 1
/* 2624C 8002564C 3C048009 */  lui        $a0, %hi(alSndPlayer_0)
/* 26250 80025650 01CFC021 */  addu       $t8, $t6, $t7
/* 26254 80025654 87050000 */  lh         $a1, ($t8)
/* 26258 80025658 0C00E62C */  jal        alSndpSetSound
/* 2625C 8002565C 2484F620 */   addiu     $a0, $a0, %lo(alSndPlayer_0)
/* 26260 80025660 3C048009 */  lui        $a0, %hi(alSndPlayer_0)
/* 26264 80025664 0C00E634 */  jal        alSndpGetState
/* 26268 80025668 2484F620 */   addiu     $a0, $a0, %lo(alSndPlayer_0)
/* 2626C 8002566C 14400003 */  bnez       $v0, .L8002567C
/* 26270 80025670 3C048009 */   lui       $a0, %hi(alSndPlayer_0)
/* 26274 80025674 0C00E63C */  jal        alSndpPlay
/* 26278 80025678 2484F620 */   addiu     $a0, $a0, %lo(alSndPlayer_0)
.L8002567C:
/* 2627C 8002567C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 26280 80025680 27BD0018 */  addiu      $sp, $sp, 0x18
/* 26284 80025684 03E00008 */  jr         $ra
/* 26288 80025688 00000000 */   nop
