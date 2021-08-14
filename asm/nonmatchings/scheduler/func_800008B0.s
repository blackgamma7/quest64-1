glabel func_800008B0
/* 14B0 800008B0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 14B4 800008B4 AFB10018 */  sw         $s1, 0x18($sp)
/* 14B8 800008B8 00A08825 */  or         $s1, $a1, $zero
/* 14BC 800008BC AFBF001C */  sw         $ra, 0x1c($sp)
/* 14C0 800008C0 AFB00014 */  sw         $s0, 0x14($sp)
/* 14C4 800008C4 8C900668 */  lw         $s0, 0x668($a0)
/* 14C8 800008C8 52000009 */  beql       $s0, $zero, .L800008F0
/* 14CC 800008CC 8FBF001C */   lw        $ra, 0x1c($sp)
/* 14D0 800008D0 8E040004 */  lw         $a0, 4($s0)
.L800008D4:
/* 14D4 800008D4 02202825 */  or         $a1, $s1, $zero
/* 14D8 800008D8 0C00D080 */  jal        osSendMesg
/* 14DC 800008DC 00003025 */   or        $a2, $zero, $zero
/* 14E0 800008E0 8E100000 */  lw         $s0, ($s0)
/* 14E4 800008E4 5600FFFB */  bnel       $s0, $zero, .L800008D4
/* 14E8 800008E8 8E040004 */   lw        $a0, 4($s0)
/* 14EC 800008EC 8FBF001C */  lw         $ra, 0x1c($sp)
.L800008F0:
/* 14F0 800008F0 8FB00014 */  lw         $s0, 0x14($sp)
/* 14F4 800008F4 8FB10018 */  lw         $s1, 0x18($sp)
/* 14F8 800008F8 03E00008 */  jr         $ra
/* 14FC 800008FC 27BD0020 */   addiu     $sp, $sp, 0x20
