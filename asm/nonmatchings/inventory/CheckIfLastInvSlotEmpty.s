glabel CheckIfLastInvSlotEmpty
/* 21E14 80021214 3C0E8009 */  lui        $t6, %hi(LastInvSlot)
/* 21E18 80021218 91CED00D */  lbu        $t6, %lo(LastInvSlot)($t6)
/* 21E1C 8002121C 240100FF */  addiu      $at, $zero, 0xff
/* 21E20 80021220 24030001 */  addiu      $v1, $zero, 1
/* 21E24 80021224 11C10003 */  beq        $t6, $at, .L80021234
/* 21E28 80021228 00000000 */   nop
/* 21E2C 8002122C 10000001 */  b          .L80021234
/* 21E30 80021230 00001825 */   or        $v1, $zero, $zero
.L80021234:
/* 21E34 80021234 00601025 */  or         $v0, $v1, $zero
/* 21E38 80021238 03E00008 */  jr         $ra
/* 21E3C 8002123C 00000000 */   nop
