glabel func_80026D1C
/* 2791C 80026D1C 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 27920 80026D20 AFB00018 */  sw         $s0, 0x18($sp)
/* 27924 80026D24 3C108009 */  lui        $s0, %hi(pause_and_save_screen_state_flags)
/* 27928 80026D28 2610FD0C */  addiu      $s0, $s0, %lo(pause_and_save_screen_state_flags)
/* 2792C 80026D2C AFBF001C */  sw         $ra, 0x1c($sp)
/* 27930 80026D30 96040000 */  lhu        $a0, ($s0)
/* 27934 80026D34 3C028009 */  lui        $v0, %hi(UNK_MenuScrollCounter)
/* 27938 80026D38 AFA00028 */  sw         $zero, 0x28($sp)
/* 2793C 80026D3C 308E1000 */  andi       $t6, $a0, 0x1000
/* 27940 80026D40 11C0000F */  beqz       $t6, .L80026D80
/* 27944 80026D44 2445FD04 */   addiu     $a1, $v0, %lo(UNK_MenuScrollCounter)
/* 27948 80026D48 3C028009 */  lui        $v0, %hi(UNK_MenuScrollCounter)
/* 2794C 80026D4C 2446FD04 */  addiu      $a2, $v0, %lo(UNK_MenuScrollCounter)
/* 27950 80026D50 8CCF0000 */  lw         $t7, ($a2)
/* 27954 80026D54 3C038009 */  lui        $v1, %hi(D_8008FD08)
/* 27958 80026D58 2465FD08 */  addiu      $a1, $v1, %lo(D_8008FD08)
/* 2795C 80026D5C 25F80008 */  addiu      $t8, $t7, 8
/* 27960 80026D60 ACD80000 */  sw         $t8, ($a2)
/* 27964 80026D64 8CB90000 */  lw         $t9, ($a1)
/* 27968 80026D68 240AFFFF */  addiu      $t2, $zero, -1
/* 2796C 80026D6C 27280008 */  addiu      $t0, $t9, 8
/* 27970 80026D70 1500000E */  bnez       $t0, .L80026DAC
/* 27974 80026D74 ACA80000 */   sw        $t0, ($a1)
/* 27978 80026D78 1000000C */  b          .L80026DAC
/* 2797C 80026D7C AFAA0028 */   sw        $t2, 0x28($sp)
.L80026D80:
/* 27980 80026D80 8CAB0000 */  lw         $t3, ($a1)
/* 27984 80026D84 3C038009 */  lui        $v1, %hi(D_8008FD08)
/* 27988 80026D88 2466FD08 */  addiu      $a2, $v1, %lo(D_8008FD08)
/* 2798C 80026D8C 256CFFF8 */  addiu      $t4, $t3, -8
/* 27990 80026D90 ACAC0000 */  sw         $t4, ($a1)
/* 27994 80026D94 8CCD0000 */  lw         $t5, ($a2)
/* 27998 80026D98 24180001 */  addiu      $t8, $zero, 1
/* 2799C 80026D9C 25AEFFF8 */  addiu      $t6, $t5, -8
/* 279A0 80026DA0 15800002 */  bnez       $t4, .L80026DAC
/* 279A4 80026DA4 ACCE0000 */   sw        $t6, ($a2)
/* 279A8 80026DA8 AFB80028 */  sw         $t8, 0x28($sp)
.L80026DAC:
/* 279AC 80026DAC 30820003 */  andi       $v0, $a0, 3
/* 279B0 80026DB0 10400009 */  beqz       $v0, .L80026DD8
/* 279B4 80026DB4 24010001 */   addiu     $at, $zero, 1
/* 279B8 80026DB8 10410018 */  beq        $v0, $at, .L80026E1C
/* 279BC 80026DBC 24010002 */   addiu     $at, $zero, 2
/* 279C0 80026DC0 10410027 */  beq        $v0, $at, .L80026E60
/* 279C4 80026DC4 24010003 */   addiu     $at, $zero, 3
/* 279C8 80026DC8 50410037 */  beql       $v0, $at, .L80026EA8
/* 279CC 80026DCC 8CC40000 */   lw        $a0, ($a2)
/* 279D0 80026DD0 10000045 */  b          .L80026EE8
/* 279D4 80026DD4 8FAF0028 */   lw        $t7, 0x28($sp)
.L80026DD8:
/* 279D8 80026DD8 8CC40000 */  lw         $a0, ($a2)
/* 279DC 80026DDC AFA50020 */  sw         $a1, 0x20($sp)
/* 279E0 80026DE0 0C009BCD */  jal        Pause_Status
/* 279E4 80026DE4 AFA2002C */   sw        $v0, 0x2c($sp)
/* 279E8 80026DE8 96190000 */  lhu        $t9, ($s0)
/* 279EC 80026DEC 8FA50020 */  lw         $a1, 0x20($sp)
/* 279F0 80026DF0 33281000 */  andi       $t0, $t9, 0x1000
/* 279F4 80026DF4 11000005 */  beqz       $t0, .L80026E0C
/* 279F8 80026DF8 00000000 */   nop
/* 279FC 80026DFC 0C00A512 */  jal        Pause_Elements
/* 27A00 80026E00 8CA40000 */   lw        $a0, ($a1)
/* 27A04 80026E04 10000003 */  b          .L80026E14
/* 27A08 80026E08 00000000 */   nop
.L80026E0C:
/* 27A0C 80026E0C 0C009E2C */  jal        Pause_Environment
/* 27A10 80026E10 8CA40000 */   lw        $a0, ($a1)
.L80026E14:
/* 27A14 80026E14 10000033 */  b          .L80026EE4
/* 27A18 80026E18 8FA2002C */   lw        $v0, 0x2c($sp)
.L80026E1C:
/* 27A1C 80026E1C 8CC40000 */  lw         $a0, ($a2)
/* 27A20 80026E20 AFA50020 */  sw         $a1, 0x20($sp)
/* 27A24 80026E24 0C009E2C */  jal        Pause_Environment
/* 27A28 80026E28 AFA2002C */   sw        $v0, 0x2c($sp)
/* 27A2C 80026E2C 96090000 */  lhu        $t1, ($s0)
/* 27A30 80026E30 8FA50020 */  lw         $a1, 0x20($sp)
/* 27A34 80026E34 312A1000 */  andi       $t2, $t1, 0x1000
/* 27A38 80026E38 11400005 */  beqz       $t2, .L80026E50
/* 27A3C 80026E3C 00000000 */   nop
/* 27A40 80026E40 0C009BCD */  jal        Pause_Status
/* 27A44 80026E44 8CA40000 */   lw        $a0, ($a1)
/* 27A48 80026E48 10000003 */  b          .L80026E58
/* 27A4C 80026E4C 00000000 */   nop
.L80026E50:
/* 27A50 80026E50 0C00A189 */  jal        Pause_Map
/* 27A54 80026E54 8CA40000 */   lw        $a0, ($a1)
.L80026E58:
/* 27A58 80026E58 10000022 */  b          .L80026EE4
/* 27A5C 80026E5C 8FA2002C */   lw        $v0, 0x2c($sp)
.L80026E60:
/* 27A60 80026E60 8CC40000 */  lw         $a0, ($a2)
/* 27A64 80026E64 AFA50020 */  sw         $a1, 0x20($sp)
/* 27A68 80026E68 0C00A189 */  jal        Pause_Map
/* 27A6C 80026E6C AFA2002C */   sw        $v0, 0x2c($sp)
/* 27A70 80026E70 960B0000 */  lhu        $t3, ($s0)
/* 27A74 80026E74 8FA50020 */  lw         $a1, 0x20($sp)
/* 27A78 80026E78 316C1000 */  andi       $t4, $t3, 0x1000
/* 27A7C 80026E7C 11800005 */  beqz       $t4, .L80026E94
/* 27A80 80026E80 00000000 */   nop
/* 27A84 80026E84 0C009E2C */  jal        Pause_Environment
/* 27A88 80026E88 8CA40000 */   lw        $a0, ($a1)
/* 27A8C 80026E8C 10000003 */  b          .L80026E9C
/* 27A90 80026E90 00000000 */   nop
.L80026E94:
/* 27A94 80026E94 0C00A512 */  jal        Pause_Elements
/* 27A98 80026E98 8CA40000 */   lw        $a0, ($a1)
.L80026E9C:
/* 27A9C 80026E9C 10000011 */  b          .L80026EE4
/* 27AA0 80026EA0 8FA2002C */   lw        $v0, 0x2c($sp)
/* 27AA4 80026EA4 8CC40000 */  lw         $a0, ($a2)
.L80026EA8:
/* 27AA8 80026EA8 AFA50020 */  sw         $a1, 0x20($sp)
/* 27AAC 80026EAC 0C00A512 */  jal        Pause_Elements
/* 27AB0 80026EB0 AFA2002C */   sw        $v0, 0x2c($sp)
/* 27AB4 80026EB4 960D0000 */  lhu        $t5, ($s0)
/* 27AB8 80026EB8 8FA50020 */  lw         $a1, 0x20($sp)
/* 27ABC 80026EBC 31AE1000 */  andi       $t6, $t5, 0x1000
/* 27AC0 80026EC0 11C00005 */  beqz       $t6, .L80026ED8
/* 27AC4 80026EC4 00000000 */   nop
/* 27AC8 80026EC8 0C00A189 */  jal        Pause_Map
/* 27ACC 80026ECC 8CA40000 */   lw        $a0, ($a1)
/* 27AD0 80026ED0 10000004 */  b          .L80026EE4
/* 27AD4 80026ED4 8FA2002C */   lw        $v0, 0x2c($sp)
.L80026ED8:
/* 27AD8 80026ED8 0C009BCD */  jal        Pause_Status
/* 27ADC 80026EDC 8CA40000 */   lw        $a0, ($a1)
/* 27AE0 80026EE0 8FA2002C */  lw         $v0, 0x2c($sp)
.L80026EE4:
/* 27AE4 80026EE4 8FAF0028 */  lw         $t7, 0x28($sp)
.L80026EE8:
/* 27AE8 80026EE8 51E0000E */  beql       $t7, $zero, .L80026F24
/* 27AEC 80026EEC 8FBF001C */   lw        $ra, 0x1c($sp)
/* 27AF0 80026EF0 96180000 */  lhu        $t8, ($s0)
/* 27AF4 80026EF4 8FAA0028 */  lw         $t2, 0x28($sp)
/* 27AF8 80026EF8 3308DFFF */  andi       $t0, $t8, 0xdfff
/* 27AFC 80026EFC 310BEFFF */  andi       $t3, $t0, 0xefff
/* 27B00 80026F00 A6080000 */  sh         $t0, ($s0)
/* 27B04 80026F04 316DFFFC */  andi       $t5, $t3, 0xfffc
/* 27B08 80026F08 004A1021 */  addu       $v0, $v0, $t2
/* 27B0C 80026F0C A60B0000 */  sh         $t3, ($s0)
/* 27B10 80026F10 304E0003 */  andi       $t6, $v0, 3
/* 27B14 80026F14 A60D0000 */  sh         $t5, ($s0)
/* 27B18 80026F18 01AE7825 */  or         $t7, $t5, $t6
/* 27B1C 80026F1C A60F0000 */  sh         $t7, ($s0)
/* 27B20 80026F20 8FBF001C */  lw         $ra, 0x1c($sp)
.L80026F24:
/* 27B24 80026F24 8FB00018 */  lw         $s0, 0x18($sp)
/* 27B28 80026F28 27BD0030 */  addiu      $sp, $sp, 0x30
/* 27B2C 80026F2C 03E00008 */  jr         $ra
/* 27B30 80026F30 00000000 */   nop
