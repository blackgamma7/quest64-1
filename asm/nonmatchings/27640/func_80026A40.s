glabel func_80026A40
/* 27640 80026A40 340E8000 */  ori        $t6, $zero, 0x8000
/* 27644 80026A44 3C018009 */  lui        $at, %hi(pause_and_save_screen_state_flags)
/* 27648 80026A48 A42EFD0C */  sh         $t6, %lo(pause_and_save_screen_state_flags)($at)
/* 2764C 80026A4C 3C018009 */  lui        $at, %hi(flags_DAT_8008fd20)
/* 27650 80026A50 A420FD20 */  sh         $zero, %lo(flags_DAT_8008fd20)($at)
/* 27654 80026A54 3C018009 */  lui        $at, %hi(UNK_Not_Read_3)
/* 27658 80026A58 240F0001 */  addiu      $t7, $zero, 1
/* 2765C 80026A5C 24180002 */  addiu      $t8, $zero, 2
/* 27660 80026A60 24190003 */  addiu      $t9, $zero, 3
/* 27664 80026A64 A039FD03 */  sb         $t9, %lo(UNK_Not_Read_3)($at)
/* 27668 80026A68 A038FD02 */  sb         $t8, -0x2fe($at)
/* 2766C 80026A6C A02FFD01 */  sb         $t7, -0x2ff($at)
/* 27670 80026A70 A020FD00 */  sb         $zero, -0x300($at)
/* 27674 80026A74 03E00008 */  jr         $ra
/* 27678 80026A78 00000000 */   nop
