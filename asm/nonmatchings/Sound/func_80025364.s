glabel func_80025364
/* 25F64 80025364 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 25F68 80025368 AFBF0014 */  sw         $ra, 0x14($sp)
/* 25F6C 8002536C 00047080 */  sll        $t6, $a0, 2
/* 25F70 80025370 01C47023 */  subu       $t6, $t6, $a0
/* 25F74 80025374 000E7080 */  sll        $t6, $t6, 2
/* 25F78 80025378 01C47021 */  addu       $t6, $t6, $a0
/* 25F7C 8002537C 000E70C0 */  sll        $t6, $t6, 3
/* 25F80 80025380 01C47023 */  subu       $t6, $t6, $a0
/* 25F84 80025384 3C0F8009 */  lui        $t7, %hi(MIDISeqConfig)
/* 25F88 80025388 25EFF978 */  addiu      $t7, $t7, %lo(MIDISeqConfig)
/* 25F8C 8002538C 000E7080 */  sll        $t6, $t6, 2
/* 25F90 80025390 01CF1021 */  addu       $v0, $t6, $t7
/* 25F94 80025394 8C580048 */  lw         $t8, 0x48($v0)
/* 25F98 80025398 24460098 */  addiu      $a2, $v0, 0x98
/* 25F9C 8002539C 00C02025 */  or         $a0, $a2, $zero
/* 25FA0 800253A0 53000004 */  beql       $t8, $zero, .L800253B4
/* 25FA4 800253A4 8C450190 */   lw        $a1, 0x190($v0)
/* 25FA8 800253A8 1000000D */  b          .L800253E0
/* 25FAC 800253AC 00001025 */   or        $v0, $zero, $zero
/* 25FB0 800253B0 8C450190 */  lw         $a1, 0x190($v0)
.L800253B4:
/* 25FB4 800253B4 AFA20024 */  sw         $v0, 0x24($sp)
/* 25FB8 800253B8 0C00E2BB */  jal        alCSeqNew
/* 25FBC 800253BC AFA60020 */   sw        $a2, 0x20($sp)
/* 25FC0 800253C0 8FA20024 */  lw         $v0, 0x24($sp)
/* 25FC4 800253C4 8FA50020 */  lw         $a1, 0x20($sp)
/* 25FC8 800253C8 2444001C */  addiu      $a0, $v0, 0x1c
/* 25FCC 800253CC 0C00E414 */  jal        alCSPSetSeq
/* 25FD0 800253D0 AFA4001C */   sw        $a0, 0x1c($sp)
/* 25FD4 800253D4 0C00E424 */  jal        alSeqpPlay
/* 25FD8 800253D8 8FA4001C */   lw        $a0, 0x1c($sp)
/* 25FDC 800253DC 24020001 */  addiu      $v0, $zero, 1
.L800253E0:
/* 25FE0 800253E0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 25FE4 800253E4 27BD0028 */  addiu      $sp, $sp, 0x28
/* 25FE8 800253E8 03E00008 */  jr         $ra
/* 25FEC 800253EC 00000000 */   nop
