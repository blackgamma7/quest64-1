glabel Pause_Status
/* 27B34 80026F34 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 27B38 80026F38 AFB20028 */  sw         $s2, 0x28($sp)
/* 27B3C 80026F3C 3C098008 */  lui        $t1, %hi(DLPtr)
/* 27B40 80026F40 2529B2FC */  addiu      $t1, $t1, %lo(DLPtr)
/* 27B44 80026F44 00809025 */  or         $s2, $a0, $zero
/* 27B48 80026F48 AFBF002C */  sw         $ra, 0x2c($sp)
/* 27B4C 80026F4C AFB10024 */  sw         $s1, 0x24($sp)
/* 27B50 80026F50 AFB00020 */  sw         $s0, 0x20($sp)
/* 27B54 80026F54 8D220000 */  lw         $v0, ($t1)
/* 27B58 80026F58 3C0FE700 */  lui        $t7, 0xe700
/* 27B5C 80026F5C 00002025 */  or         $a0, $zero, $zero
/* 27B60 80026F60 244E0008 */  addiu      $t6, $v0, 8
/* 27B64 80026F64 AD2E0000 */  sw         $t6, ($t1)
/* 27B68 80026F68 AC400004 */  sw         $zero, 4($v0)
/* 27B6C 80026F6C AC4F0000 */  sw         $t7, ($v0)
/* 27B70 80026F70 8D220000 */  lw         $v0, ($t1)
/* 27B74 80026F74 3C19FB00 */  lui        $t9, 0xfb00
/* 27B78 80026F78 240AFFFF */  addiu      $t2, $zero, -1
/* 27B7C 80026F7C 24580008 */  addiu      $t8, $v0, 8
/* 27B80 80026F80 AD380000 */  sw         $t8, ($t1)
/* 27B84 80026F84 AC4A0004 */  sw         $t2, 4($v0)
/* 27B88 80026F88 AC590000 */  sw         $t9, ($v0)
/* 27B8C 80026F8C 240B0098 */  addiu      $t3, $zero, 0x98
/* 27B90 80026F90 AFAB0010 */  sw         $t3, 0x10($sp)
/* 27B94 80026F94 26450028 */  addiu      $a1, $s2, 0x28
/* 27B98 80026F98 2406001E */  addiu      $a2, $zero, 0x1e
/* 27B9C 80026F9C 0C00A6D6 */  jal        drawMenuItem
/* 27BA0 80026FA0 240700F0 */   addiu     $a3, $zero, 0xf0
/* 27BA4 80026FA4 240C0003 */  addiu      $t4, $zero, 3
/* 27BA8 80026FA8 AFAC0010 */  sw         $t4, 0x10($sp)
/* 27BAC 80026FAC 24040037 */  addiu      $a0, $zero, 0x37
/* 27BB0 80026FB0 2645002B */  addiu      $a1, $s2, 0x2b
/* 27BB4 80026FB4 240600B7 */  addiu      $a2, $zero, 0xb7
/* 27BB8 80026FB8 0C00A6D6 */  jal        drawMenuItem
/* 27BBC 80026FBC 240700F0 */   addiu     $a3, $zero, 0xf0
/* 27BC0 80026FC0 240D0096 */  addiu      $t5, $zero, 0x96
/* 27BC4 80026FC4 AFAD0010 */  sw         $t5, 0x10($sp)
/* 27BC8 80026FC8 24040037 */  addiu      $a0, $zero, 0x37
/* 27BCC 80026FCC 26450119 */  addiu      $a1, $s2, 0x119
/* 27BD0 80026FD0 24060024 */  addiu      $a2, $zero, 0x24
/* 27BD4 80026FD4 0C00A6D6 */  jal        drawMenuItem
/* 27BD8 80026FD8 24070002 */   addiu     $a3, $zero, 2
/* 27BDC 80026FDC 26500027 */  addiu      $s0, $s2, 0x27
/* 27BE0 80026FE0 240E0001 */  addiu      $t6, $zero, 1
/* 27BE4 80026FE4 AFAE0010 */  sw         $t6, 0x10($sp)
/* 27BE8 80026FE8 02002825 */  or         $a1, $s0, $zero
/* 27BEC 80026FEC 24040037 */  addiu      $a0, $zero, 0x37
/* 27BF0 80026FF0 2406001D */  addiu      $a2, $zero, 0x1d
/* 27BF4 80026FF4 0C00A6D6 */  jal        drawMenuItem
/* 27BF8 80026FF8 240700F2 */   addiu     $a3, $zero, 0xf2
/* 27BFC 80026FFC 240F0001 */  addiu      $t7, $zero, 1
/* 27C00 80027000 AFAF0010 */  sw         $t7, 0x10($sp)
/* 27C04 80027004 24040037 */  addiu      $a0, $zero, 0x37
/* 27C08 80027008 02002825 */  or         $a1, $s0, $zero
/* 27C0C 8002700C 240600B6 */  addiu      $a2, $zero, 0xb6
/* 27C10 80027010 0C00A6D6 */  jal        drawMenuItem
/* 27C14 80027014 240700F2 */   addiu     $a3, $zero, 0xf2
/* 27C18 80027018 2418009A */  addiu      $t8, $zero, 0x9a
/* 27C1C 8002701C AFB80010 */  sw         $t8, 0x10($sp)
/* 27C20 80027020 24040037 */  addiu      $a0, $zero, 0x37
/* 27C24 80027024 02002825 */  or         $a1, $s0, $zero
/* 27C28 80027028 2406001D */  addiu      $a2, $zero, 0x1d
/* 27C2C 8002702C 0C00A6D6 */  jal        drawMenuItem
/* 27C30 80027030 24070001 */   addiu     $a3, $zero, 1
/* 27C34 80027034 2419009A */  addiu      $t9, $zero, 0x9a
/* 27C38 80027038 AFB90010 */  sw         $t9, 0x10($sp)
/* 27C3C 8002703C 24040037 */  addiu      $a0, $zero, 0x37
/* 27C40 80027040 26450118 */  addiu      $a1, $s2, 0x118
/* 27C44 80027044 2406001D */  addiu      $a2, $zero, 0x1d
/* 27C48 80027048 0C00A6D6 */  jal        drawMenuItem
/* 27C4C 8002704C 24070001 */   addiu     $a3, $zero, 1
/* 27C50 80027050 26500029 */  addiu      $s0, $s2, 0x29
/* 27C54 80027054 240A0001 */  addiu      $t2, $zero, 1
/* 27C58 80027058 AFAA0010 */  sw         $t2, 0x10($sp)
/* 27C5C 8002705C 02002825 */  or         $a1, $s0, $zero
/* 27C60 80027060 24040038 */  addiu      $a0, $zero, 0x38
/* 27C64 80027064 2406001F */  addiu      $a2, $zero, 0x1f
/* 27C68 80027068 0C00A6D6 */  jal        drawMenuItem
/* 27C6C 8002706C 240700ED */   addiu     $a3, $zero, 0xed
/* 27C70 80027070 240B0095 */  addiu      $t3, $zero, 0x95
/* 27C74 80027074 AFAB0010 */  sw         $t3, 0x10($sp)
/* 27C78 80027078 24040038 */  addiu      $a0, $zero, 0x38
/* 27C7C 8002707C 02002825 */  or         $a1, $s0, $zero
/* 27C80 80027080 2406001F */  addiu      $a2, $zero, 0x1f
/* 27C84 80027084 0C00A6D6 */  jal        drawMenuItem
/* 27C88 80027088 24070001 */   addiu     $a3, $zero, 1
/* 27C8C 8002708C 240C0001 */  addiu      $t4, $zero, 1
/* 27C90 80027090 AFAC0010 */  sw         $t4, 0x10($sp)
/* 27C94 80027094 24040039 */  addiu      $a0, $zero, 0x39
/* 27C98 80027098 02002825 */  or         $a1, $s0, $zero
/* 27C9C 8002709C 240600B4 */  addiu      $a2, $zero, 0xb4
/* 27CA0 800270A0 0C00A6D6 */  jal        drawMenuItem
/* 27CA4 800270A4 240700EE */   addiu     $a3, $zero, 0xee
/* 27CA8 800270A8 240D0096 */  addiu      $t5, $zero, 0x96
/* 27CAC 800270AC AFAD0010 */  sw         $t5, 0x10($sp)
/* 27CB0 800270B0 24040039 */  addiu      $a0, $zero, 0x39
/* 27CB4 800270B4 26450116 */  addiu      $a1, $s2, 0x116
/* 27CB8 800270B8 2406001F */  addiu      $a2, $zero, 0x1f
/* 27CBC 800270BC 0C00A6D6 */  jal        drawMenuItem
/* 27CC0 800270C0 24070001 */   addiu     $a3, $zero, 1
/* 27CC4 800270C4 240E0098 */  addiu      $t6, $zero, 0x98
/* 27CC8 800270C8 AFAE0010 */  sw         $t6, 0x10($sp)
/* 27CCC 800270CC 2404003C */  addiu      $a0, $zero, 0x3c
/* 27CD0 800270D0 2645003A */  addiu      $a1, $s2, 0x3a
/* 27CD4 800270D4 2406001E */  addiu      $a2, $zero, 0x1e
/* 27CD8 800270D8 0C00A6D6 */  jal        drawMenuItem
/* 27CDC 800270DC 24070015 */   addiu     $a3, $zero, 0x15
/* 27CE0 800270E0 2645005D */  addiu      $a1, $s2, 0x5d
/* 27CE4 800270E4 2410004B */  addiu      $s0, $zero, 0x4b
/* 27CE8 800270E8 AFA50038 */  sw         $a1, 0x38($sp)
/* 27CEC 800270EC 00008825 */  or         $s1, $zero, $zero
.L800270F0:
/* 27CF0 800270F0 240F0002 */  addiu      $t7, $zero, 2
/* 27CF4 800270F4 8FA50038 */  lw         $a1, 0x38($sp)
/* 27CF8 800270F8 AFAF0010 */  sw         $t7, 0x10($sp)
/* 27CFC 800270FC 2404003D */  addiu      $a0, $zero, 0x3d
/* 27D00 80027100 02003025 */  or         $a2, $s0, $zero
/* 27D04 80027104 0C00A6D6 */  jal        drawMenuItem
/* 27D08 80027108 240700A7 */   addiu     $a3, $zero, 0xa7
/* 27D0C 8002710C 26310001 */  addiu      $s1, $s1, 1
/* 27D10 80027110 2A210003 */  slti       $at, $s1, 3
/* 27D14 80027114 1420FFF6 */  bnez       $at, .L800270F0
/* 27D18 80027118 26100021 */   addiu     $s0, $s0, 0x21
/* 27D1C 8002711C 26450063 */  addiu      $a1, $s2, 0x63
/* 27D20 80027120 24100040 */  addiu      $s0, $zero, 0x40
/* 27D24 80027124 AFA50038 */  sw         $a1, 0x38($sp)
/* 27D28 80027128 00008825 */  or         $s1, $zero, $zero
.L8002712C:
/* 27D2C 8002712C 24180007 */  addiu      $t8, $zero, 7
/* 27D30 80027130 8FA50038 */  lw         $a1, 0x38($sp)
/* 27D34 80027134 AFB80010 */  sw         $t8, 0x10($sp)
/* 27D38 80027138 24040032 */  addiu      $a0, $zero, 0x32
/* 27D3C 8002713C 02003025 */  or         $a2, $s0, $zero
/* 27D40 80027140 0C00A6D6 */  jal        drawMenuItem
/* 27D44 80027144 2407003C */   addiu     $a3, $zero, 0x3c
/* 27D48 80027148 26310001 */  addiu      $s1, $s1, 1
/* 27D4C 8002714C 2A210004 */  slti       $at, $s1, 4
/* 27D50 80027150 1420FFF6 */  bnez       $at, .L8002712C
/* 27D54 80027154 26100021 */   addiu     $s0, $s0, 0x21
/* 27D58 80027158 264500C3 */  addiu      $a1, $s2, 0xc3
/* 27D5C 8002715C 2410003C */  addiu      $s0, $zero, 0x3c
/* 27D60 80027160 AFA50038 */  sw         $a1, 0x38($sp)
/* 27D64 80027164 00008825 */  or         $s1, $zero, $zero
.L80027168:
/* 27D68 80027168 2419000B */  addiu      $t9, $zero, 0xb
/* 27D6C 8002716C 8FA50038 */  lw         $a1, 0x38($sp)
/* 27D70 80027170 AFB90010 */  sw         $t9, 0x10($sp)
/* 27D74 80027174 24040020 */  addiu      $a0, $zero, 0x20
/* 27D78 80027178 02003025 */  or         $a2, $s0, $zero
/* 27D7C 8002717C 0C00A6D6 */  jal        drawMenuItem
/* 27D80 80027180 24070013 */   addiu     $a3, $zero, 0x13
/* 27D84 80027184 26310001 */  addiu      $s1, $s1, 1
/* 27D88 80027188 2A210004 */  slti       $at, $s1, 4
/* 27D8C 8002718C 1420FFF6 */  bnez       $at, .L80027168
/* 27D90 80027190 26100021 */   addiu     $s0, $s0, 0x21
/* 27D94 80027194 240A000E */  addiu      $t2, $zero, 0xe
/* 27D98 80027198 AFAA0010 */  sw         $t2, 0x10($sp)
/* 27D9C 8002719C 2404001B */  addiu      $a0, $zero, 0x1b
/* 27DA0 800271A0 26450038 */  addiu      $a1, $s2, 0x38
/* 27DA4 800271A4 24060034 */  addiu      $a2, $zero, 0x34
/* 27DA8 800271A8 0C00A6D6 */  jal        drawMenuItem
/* 27DAC 800271AC 24070018 */   addiu     $a3, $zero, 0x18
/* 27DB0 800271B0 240B000D */  addiu      $t3, $zero, 0xd
/* 27DB4 800271B4 AFAB0010 */  sw         $t3, 0x10($sp)
/* 27DB8 800271B8 2404001C */  addiu      $a0, $zero, 0x1c
/* 27DBC 800271BC 26450037 */  addiu      $a1, $s2, 0x37
/* 27DC0 800271C0 24060054 */  addiu      $a2, $zero, 0x54
/* 27DC4 800271C4 0C00A6D6 */  jal        drawMenuItem
/* 27DC8 800271C8 2407001C */   addiu     $a3, $zero, 0x1c
/* 27DCC 800271CC 26500035 */  addiu      $s0, $s2, 0x35
/* 27DD0 800271D0 240C000F */  addiu      $t4, $zero, 0xf
/* 27DD4 800271D4 AFAC0010 */  sw         $t4, 0x10($sp)
/* 27DD8 800271D8 02002825 */  or         $a1, $s0, $zero
/* 27DDC 800271DC 2404001D */  addiu      $a0, $zero, 0x1d
/* 27DE0 800271E0 24060078 */  addiu      $a2, $zero, 0x78
/* 27DE4 800271E4 0C00A6D6 */  jal        drawMenuItem
/* 27DE8 800271E8 24070024 */   addiu     $a3, $zero, 0x24
/* 27DEC 800271EC 240D000E */  addiu      $t5, $zero, 0xe
/* 27DF0 800271F0 AFAD0010 */  sw         $t5, 0x10($sp)
/* 27DF4 800271F4 2404001E */  addiu      $a0, $zero, 0x1e
/* 27DF8 800271F8 02002825 */  or         $a1, $s0, $zero
/* 27DFC 800271FC 24060099 */  addiu      $a2, $zero, 0x99
/* 27E00 80027200 0C00A6D6 */  jal        drawMenuItem
/* 27E04 80027204 2407001C */   addiu     $a3, $zero, 0x1c
/* 27E08 80027208 240E0008 */  addiu      $t6, $zero, 8
/* 27E0C 8002720C AFAE0010 */  sw         $t6, 0x10($sp)
/* 27E10 80027210 24040005 */  addiu      $a0, $zero, 5
/* 27E14 80027214 26450045 */  addiu      $a1, $s2, 0x45
/* 27E18 80027218 2406001C */  addiu      $a2, $zero, 0x1c
/* 27E1C 8002721C 0C00A6D6 */  jal        drawMenuItem
/* 27E20 80027220 24070008 */   addiu     $a3, $zero, 8
/* 27E24 80027224 240F0008 */  addiu      $t7, $zero, 8
/* 27E28 80027228 AFAF0010 */  sw         $t7, 0x10($sp)
/* 27E2C 8002722C 24040005 */  addiu      $a0, $zero, 5
/* 27E30 80027230 264500F3 */  addiu      $a1, $s2, 0xf3
/* 27E34 80027234 2406001C */  addiu      $a2, $zero, 0x1c
/* 27E38 80027238 0C00A6D6 */  jal        drawMenuItem
/* 27E3C 8002723C 24070008 */   addiu     $a3, $zero, 8
/* 27E40 80027240 3C118009 */  lui        $s1, %hi(pauseMenuFrameCtr)
/* 27E44 80027244 8E31FD10 */  lw         $s1, %lo(pauseMenuFrameCtr)($s1)
/* 27E48 80027248 3C018006 */  lui        $at, %hi(D_8005F0C0)
/* 27E4C 8002724C 240A000B */  addiu      $t2, $zero, 0xb
/* 27E50 80027250 0011C083 */  sra        $t8, $s1, 2
/* 27E54 80027254 3319000F */  andi       $t9, $t8, 0xf
/* 27E58 80027258 00390821 */  addu       $at, $at, $t9
/* 27E5C 8002725C 8031F0C0 */  lb         $s1, %lo(D_8005F0C0)($at)
/* 27E60 80027260 AFAA0010 */  sw         $t2, 0x10($sp)
/* 27E64 80027264 24040006 */  addiu      $a0, $zero, 6
/* 27E68 80027268 02512821 */  addu       $a1, $s2, $s1
/* 27E6C 8002726C 24A50036 */  addiu      $a1, $a1, 0x36
/* 27E70 80027270 2406001A */  addiu      $a2, $zero, 0x1a
/* 27E74 80027274 0C00A6D6 */  jal        drawMenuItem
/* 27E78 80027278 2407000E */   addiu     $a3, $zero, 0xe
/* 27E7C 8002727C 02512823 */  subu       $a1, $s2, $s1
/* 27E80 80027280 240B000B */  addiu      $t3, $zero, 0xb
/* 27E84 80027284 AFAB0010 */  sw         $t3, 0x10($sp)
/* 27E88 80027288 24A500FB */  addiu      $a1, $a1, 0xfb
/* 27E8C 8002728C 24040007 */  addiu      $a0, $zero, 7
/* 27E90 80027290 2406001A */  addiu      $a2, $zero, 0x1a
/* 27E94 80027294 0C00A6D6 */  jal        drawMenuItem
/* 27E98 80027298 2407000E */   addiu     $a3, $zero, 0xe
/* 27E9C 8002729C 26500079 */  addiu      $s0, $s2, 0x79
/* 27EA0 800272A0 240C000A */  addiu      $t4, $zero, 0xa
/* 27EA4 800272A4 AFAC0010 */  sw         $t4, 0x10($sp)
/* 27EA8 800272A8 02002825 */  or         $a1, $s0, $zero
/* 27EAC 800272AC 24040014 */  addiu      $a0, $zero, 0x14
/* 27EB0 800272B0 24060035 */  addiu      $a2, $zero, 0x35
/* 27EB4 800272B4 0C00A6D6 */  jal        drawMenuItem
/* 27EB8 800272B8 24070008 */   addiu     $a3, $zero, 8
/* 27EBC 800272BC 240D000A */  addiu      $t5, $zero, 0xa
/* 27EC0 800272C0 AFAD0010 */  sw         $t5, 0x10($sp)
/* 27EC4 800272C4 24040014 */  addiu      $a0, $zero, 0x14
/* 27EC8 800272C8 02002825 */  or         $a1, $s0, $zero
/* 27ECC 800272CC 24060056 */  addiu      $a2, $zero, 0x56
/* 27ED0 800272D0 0C00A6D6 */  jal        drawMenuItem
/* 27ED4 800272D4 24070008 */   addiu     $a3, $zero, 8
/* 27ED8 800272D8 3C118008 */  lui        $s1, %hi(BrianMaxHP)
/* 27EDC 800272DC 26500080 */  addiu      $s0, $s2, 0x80
/* 27EE0 800272E0 240E000A */  addiu      $t6, $zero, 0xa
/* 27EE4 800272E4 9627BA86 */  lhu        $a3, %lo(BrianMaxHP)($s1)
/* 27EE8 800272E8 AFAE0010 */  sw         $t6, 0x10($sp)
/* 27EEC 800272EC 02002825 */  or         $a1, $s0, $zero
/* 27EF0 800272F0 24040003 */  addiu      $a0, $zero, 3
/* 27EF4 800272F4 0C00AAD9 */  jal        drawMenuNumber
/* 27EF8 800272F8 24060035 */   addiu     $a2, $zero, 0x35
/* 27EFC 800272FC 3C118008 */  lui        $s1, %hi(BrianMaxMP)
/* 27F00 80027300 240F000A */  addiu      $t7, $zero, 0xa
/* 27F04 80027304 9627BA8A */  lhu        $a3, %lo(BrianMaxMP)($s1)
/* 27F08 80027308 AFAF0010 */  sw         $t7, 0x10($sp)
/* 27F0C 8002730C 24040003 */  addiu      $a0, $zero, 3
/* 27F10 80027310 02002825 */  or         $a1, $s0, $zero
/* 27F14 80027314 0C00AAD9 */  jal        drawMenuNumber
/* 27F18 80027318 24060056 */   addiu     $a2, $zero, 0x56
/* 27F1C 8002731C 3C118008 */  lui        $s1, %hi(BrianCurrentHP)
/* 27F20 80027320 26450064 */  addiu      $a1, $s2, 0x64
/* 27F24 80027324 2418000A */  addiu      $t8, $zero, 0xa
/* 27F28 80027328 9627BA84 */  lhu        $a3, %lo(BrianCurrentHP)($s1)
/* 27F2C 8002732C AFB80010 */  sw         $t8, 0x10($sp)
/* 27F30 80027330 AFA50034 */  sw         $a1, 0x34($sp)
/* 27F34 80027334 24040003 */  addiu      $a0, $zero, 3
/* 27F38 80027338 0C00AAD9 */  jal        drawMenuNumber
/* 27F3C 8002733C 24060035 */   addiu     $a2, $zero, 0x35
/* 27F40 80027340 3C118008 */  lui        $s1, %hi(BrianCurrentMP)
/* 27F44 80027344 2419000A */  addiu      $t9, $zero, 0xa
/* 27F48 80027348 9627BA88 */  lhu        $a3, %lo(BrianCurrentMP)($s1)
/* 27F4C 8002734C AFB90010 */  sw         $t9, 0x10($sp)
/* 27F50 80027350 24040003 */  addiu      $a0, $zero, 3
/* 27F54 80027354 8FA50034 */  lw         $a1, 0x34($sp)
/* 27F58 80027358 0C00AAD9 */  jal        drawMenuNumber
/* 27F5C 8002735C 24060056 */   addiu     $a2, $zero, 0x56
/* 27F60 80027360 3C118008 */  lui        $s1, %hi(BrianDefense)
/* 27F64 80027364 240A000A */  addiu      $t2, $zero, 0xa
/* 27F68 80027368 9627BA8E */  lhu        $a3, %lo(BrianDefense)($s1)
/* 27F6C 8002736C AFAA0010 */  sw         $t2, 0x10($sp)
/* 27F70 80027370 24040003 */  addiu      $a0, $zero, 3
/* 27F74 80027374 02002825 */  or         $a1, $s0, $zero
/* 27F78 80027378 0C00AAD9 */  jal        drawMenuNumber
/* 27F7C 8002737C 24060077 */   addiu     $a2, $zero, 0x77
/* 27F80 80027380 3C118008 */  lui        $s1, %hi(BrianAgility)
/* 27F84 80027384 240B000A */  addiu      $t3, $zero, 0xa
/* 27F88 80027388 9627BA8C */  lhu        $a3, %lo(BrianAgility)($s1)
/* 27F8C 8002738C AFAB0010 */  sw         $t3, 0x10($sp)
/* 27F90 80027390 24040003 */  addiu      $a0, $zero, 3
/* 27F94 80027394 02002825 */  or         $a1, $s0, $zero
/* 27F98 80027398 0C00AAD9 */  jal        drawMenuNumber
/* 27F9C 8002739C 24060098 */   addiu     $a2, $zero, 0x98
/* 27FA0 800273A0 3C0E8008 */  lui        $t6, %hi(HPXPPercent)
/* 27FA4 800273A4 95CEBAA8 */  lhu        $t6, %lo(HPXPPercent)($t6)
/* 27FA8 800273A8 3C0C8008 */  lui        $t4, %hi(HPLvl)
/* 27FAC 800273AC 918CBAB0 */  lbu        $t4, %lo(HPLvl)($t4)
/* 27FB0 800273B0 000E7880 */  sll        $t7, $t6, 2
/* 27FB4 800273B4 01EE7823 */  subu       $t7, $t7, $t6
/* 27FB8 800273B8 3C118005 */  lui        $s1, %hi(To_next_stat)
/* 27FBC 800273BC 000F78C0 */  sll        $t7, $t7, 3
/* 27FC0 800273C0 000C6840 */  sll        $t5, $t4, 1
/* 27FC4 800273C4 022D8821 */  addu       $s1, $s1, $t5
/* 27FC8 800273C8 01EE7821 */  addu       $t7, $t7, $t6
/* 27FCC 800273CC 96313ECC */  lhu        $s1, %lo(To_next_stat)($s1)
/* 27FD0 800273D0 000F7880 */  sll        $t7, $t7, 2
/* 27FD4 800273D4 265000DA */  addiu      $s0, $s2, 0xda
/* 27FD8 800273D8 01F1001A */  div        $zero, $t7, $s1
/* 27FDC 800273DC 00003812 */  mflo       $a3
/* 27FE0 800273E0 2418000A */  addiu      $t8, $zero, 0xa
/* 27FE4 800273E4 AFB80010 */  sw         $t8, 0x10($sp)
/* 27FE8 800273E8 02002825 */  or         $a1, $s0, $zero
/* 27FEC 800273EC 24040003 */  addiu      $a0, $zero, 3
/* 27FF0 800273F0 2406003B */  addiu      $a2, $zero, 0x3b
/* 27FF4 800273F4 16200002 */  bnez       $s1, .L80027400
/* 27FF8 800273F8 00000000 */   nop
/* 27FFC 800273FC 0007000D */  break      7
.L80027400:
/* 28000 80027400 2401FFFF */   addiu     $at, $zero, -1
/* 28004 80027404 16210004 */  bne        $s1, $at, .L80027418
/* 28008 80027408 3C018000 */   lui       $at, 0x8000
/* 2800C 8002740C 15E10002 */  bne        $t7, $at, .L80027418
/* 28010 80027410 00000000 */   nop
/* 28014 80027414 0006000D */  break      6
.L80027418:
/* 28018 80027418 0C00AAD9 */   jal       drawMenuNumber
/* 2801C 8002741C 00000000 */   nop
/* 28020 80027420 3C198008 */  lui        $t9, %hi(MPLvl)
/* 28024 80027424 9339BAB1 */  lbu        $t9, %lo(MPLvl)($t9)
/* 28028 80027428 3C0C8008 */  lui        $t4, %hi(MPXPPercent)
/* 2802C 8002742C 958CBAAA */  lhu        $t4, %lo(MPXPPercent)($t4)
/* 28030 80027430 3C118005 */  lui        $s1, %hi(To_next_stat)
/* 28034 80027434 00195040 */  sll        $t2, $t9, 1
/* 28038 80027438 022A8821 */  addu       $s1, $s1, $t2
/* 2803C 8002743C 96313ECC */  lhu        $s1, %lo(To_next_stat)($s1)
/* 28040 80027440 000C6880 */  sll        $t5, $t4, 2
/* 28044 80027444 01AC6823 */  subu       $t5, $t5, $t4
/* 28048 80027448 000D68C0 */  sll        $t5, $t5, 3
/* 2804C 8002744C 01AC6821 */  addu       $t5, $t5, $t4
/* 28050 80027450 00115880 */  sll        $t3, $s1, 2
/* 28054 80027454 000D6880 */  sll        $t5, $t5, 2
/* 28058 80027458 01AB001A */  div        $zero, $t5, $t3
/* 2805C 8002745C 01608825 */  or         $s1, $t3, $zero
/* 28060 80027460 00003812 */  mflo       $a3
/* 28064 80027464 240E000A */  addiu      $t6, $zero, 0xa
/* 28068 80027468 AFAE0010 */  sw         $t6, 0x10($sp)
/* 2806C 8002746C 24040003 */  addiu      $a0, $zero, 3
/* 28070 80027470 02002825 */  or         $a1, $s0, $zero
/* 28074 80027474 2406005C */  addiu      $a2, $zero, 0x5c
/* 28078 80027478 16200002 */  bnez       $s1, .L80027484
/* 2807C 8002747C 00000000 */   nop
/* 28080 80027480 0007000D */  break      7
.L80027484:
/* 28084 80027484 2401FFFF */   addiu     $at, $zero, -1
/* 28088 80027488 16210004 */  bne        $s1, $at, .L8002749C
/* 2808C 8002748C 3C018000 */   lui       $at, 0x8000
/* 28090 80027490 15A10002 */  bne        $t5, $at, .L8002749C
/* 28094 80027494 00000000 */   nop
/* 28098 80027498 0006000D */  break      6
.L8002749C:
/* 2809C 8002749C 0C00AAD9 */   jal       drawMenuNumber
/* 280A0 800274A0 00000000 */   nop
/* 280A4 800274A4 3C0F8008 */  lui        $t7, %hi(DefLvl)
/* 280A8 800274A8 91EFBAB3 */  lbu        $t7, %lo(DefLvl)($t7)
/* 280AC 800274AC 3C0A8008 */  lui        $t2, %hi(DefenseXPPercent)
/* 280B0 800274B0 954ABAAE */  lhu        $t2, %lo(DefenseXPPercent)($t2)
/* 280B4 800274B4 3C118005 */  lui        $s1, %hi(To_next_stat)
/* 280B8 800274B8 000FC040 */  sll        $t8, $t7, 1
/* 280BC 800274BC 02388821 */  addu       $s1, $s1, $t8
/* 280C0 800274C0 96313ECC */  lhu        $s1, %lo(To_next_stat)($s1)
/* 280C4 800274C4 000A5880 */  sll        $t3, $t2, 2
/* 280C8 800274C8 016A5823 */  subu       $t3, $t3, $t2
/* 280CC 800274CC 000B58C0 */  sll        $t3, $t3, 3
/* 280D0 800274D0 016A5821 */  addu       $t3, $t3, $t2
/* 280D4 800274D4 0011C840 */  sll        $t9, $s1, 1
/* 280D8 800274D8 000B5880 */  sll        $t3, $t3, 2
/* 280DC 800274DC 0179001A */  div        $zero, $t3, $t9
/* 280E0 800274E0 03208825 */  or         $s1, $t9, $zero
/* 280E4 800274E4 00003812 */  mflo       $a3
/* 280E8 800274E8 240C000A */  addiu      $t4, $zero, 0xa
/* 280EC 800274EC AFAC0010 */  sw         $t4, 0x10($sp)
/* 280F0 800274F0 24040003 */  addiu      $a0, $zero, 3
/* 280F4 800274F4 02002825 */  or         $a1, $s0, $zero
/* 280F8 800274F8 2406007D */  addiu      $a2, $zero, 0x7d
/* 280FC 800274FC 16200002 */  bnez       $s1, .L80027508
/* 28100 80027500 00000000 */   nop
/* 28104 80027504 0007000D */  break      7
.L80027508:
/* 28108 80027508 2401FFFF */   addiu     $at, $zero, -1
/* 2810C 8002750C 16210004 */  bne        $s1, $at, .L80027520
/* 28110 80027510 3C018000 */   lui       $at, 0x8000
/* 28114 80027514 15610002 */  bne        $t3, $at, .L80027520
/* 28118 80027518 00000000 */   nop
/* 2811C 8002751C 0006000D */  break      6
.L80027520:
/* 28120 80027520 0C00AAD9 */   jal       drawMenuNumber
/* 28124 80027524 00000000 */   nop
/* 28128 80027528 3C0F8008 */  lui        $t7, %hi(AgilityXPPercent)
/* 2812C 8002752C 95EFBAAC */  lhu        $t7, %lo(AgilityXPPercent)($t7)
/* 28130 80027530 3C0D8008 */  lui        $t5, %hi(AgilLvl)
/* 28134 80027534 91ADBAB2 */  lbu        $t5, %lo(AgilLvl)($t5)
/* 28138 80027538 000FC080 */  sll        $t8, $t7, 2
/* 2813C 8002753C 030FC023 */  subu       $t8, $t8, $t7
/* 28140 80027540 3C118005 */  lui        $s1, %hi(To_next_stat)
/* 28144 80027544 0018C0C0 */  sll        $t8, $t8, 3
/* 28148 80027548 000D7040 */  sll        $t6, $t5, 1
/* 2814C 8002754C 022E8821 */  addu       $s1, $s1, $t6
/* 28150 80027550 030FC021 */  addu       $t8, $t8, $t7
/* 28154 80027554 96313ECC */  lhu        $s1, %lo(To_next_stat)($s1)
/* 28158 80027558 0018C080 */  sll        $t8, $t8, 2
/* 2815C 8002755C 2419000A */  addiu      $t9, $zero, 0xa
/* 28160 80027560 0311001A */  div        $zero, $t8, $s1
/* 28164 80027564 00003812 */  mflo       $a3
/* 28168 80027568 AFB90010 */  sw         $t9, 0x10($sp)
/* 2816C 8002756C 24040003 */  addiu      $a0, $zero, 3
/* 28170 80027570 02002825 */  or         $a1, $s0, $zero
/* 28174 80027574 2406009E */  addiu      $a2, $zero, 0x9e
/* 28178 80027578 16200002 */  bnez       $s1, .L80027584
/* 2817C 8002757C 00000000 */   nop
/* 28180 80027580 0007000D */  break      7
.L80027584:
/* 28184 80027584 2401FFFF */   addiu     $at, $zero, -1
/* 28188 80027588 16210004 */  bne        $s1, $at, .L8002759C
/* 2818C 8002758C 3C018000 */   lui       $at, 0x8000
/* 28190 80027590 17010002 */  bne        $t8, $at, .L8002759C
/* 28194 80027594 00000000 */   nop
/* 28198 80027598 0006000D */  break      6
.L8002759C:
/* 2819C 8002759C 0C00AAD9 */   jal       drawMenuNumber
/* 281A0 800275A0 00000000 */   nop
/* 281A4 800275A4 3C0A8008 */  lui        $t2, %hi(BrianCurrentHP)
/* 281A8 800275A8 954ABA84 */  lhu        $t2, %lo(BrianCurrentHP)($t2)
/* 281AC 800275AC 3C0B8008 */  lui        $t3, 0x8008
/* 281B0 800275B0 448A2000 */  mtc1       $t2, $f4
/* 281B4 800275B4 05410005 */  bgez       $t2, .L800275CC
/* 281B8 800275B8 46802020 */   cvt.s.w   $f0, $f4
/* 281BC 800275BC 3C014F80 */  lui        $at, 0x4f80
/* 281C0 800275C0 44813000 */  mtc1       $at, $f6
/* 281C4 800275C4 00000000 */  nop
/* 281C8 800275C8 46060000 */  add.s      $f0, $f0, $f6
.L800275CC:
/* 281CC 800275CC 956BBA86 */  lhu        $t3, -0x457a($t3)
/* 281D0 800275D0 448B4000 */  mtc1       $t3, $f8
/* 281D4 800275D4 05610005 */  bgez       $t3, .L800275EC
/* 281D8 800275D8 468042A0 */   cvt.s.w   $f10, $f8
/* 281DC 800275DC 3C014F80 */  lui        $at, 0x4f80
/* 281E0 800275E0 44818000 */  mtc1       $at, $f16
/* 281E4 800275E4 00000000 */  nop
/* 281E8 800275E8 46105280 */  add.s      $f10, $f10, $f16
.L800275EC:
/* 281EC 800275EC 460A0003 */  div.s      $f0, $f0, $f10
/* 281F0 800275F0 3C014248 */  lui        $at, 0x4248
/* 281F4 800275F4 44819000 */  mtc1       $at, $f18
/* 281F8 800275F8 240D0003 */  addiu      $t5, $zero, 3
/* 281FC 800275FC AFAD0010 */  sw         $t5, 0x10($sp)
/* 28200 80027600 24040033 */  addiu      $a0, $zero, 0x33
/* 28204 80027604 8FA50034 */  lw         $a1, 0x34($sp)
/* 28208 80027608 24060041 */  addiu      $a2, $zero, 0x41
/* 2820C 8002760C 46120002 */  mul.s      $f0, $f0, $f18
/* 28210 80027610 4600010D */  trunc.w.s  $f4, $f0
/* 28214 80027614 44072000 */  mfc1       $a3, $f4
/* 28218 80027618 0C00A6D6 */  jal        drawMenuItem
/* 2821C 8002761C 00000000 */   nop
/* 28220 80027620 3C0E8008 */  lui        $t6, %hi(BrianCurrentMP)
/* 28224 80027624 95CEBA88 */  lhu        $t6, %lo(BrianCurrentMP)($t6)
/* 28228 80027628 3C0F8008 */  lui        $t7, 0x8008
/* 2822C 8002762C 448E3000 */  mtc1       $t6, $f6
/* 28230 80027630 05C10005 */  bgez       $t6, .L80027648
/* 28234 80027634 46803020 */   cvt.s.w   $f0, $f6
/* 28238 80027638 3C014F80 */  lui        $at, 0x4f80
/* 2823C 8002763C 44814000 */  mtc1       $at, $f8
/* 28240 80027640 00000000 */  nop
/* 28244 80027644 46080000 */  add.s      $f0, $f0, $f8
.L80027648:
/* 28248 80027648 95EFBA8A */  lhu        $t7, -0x4576($t7)
/* 2824C 8002764C 448F8000 */  mtc1       $t7, $f16
/* 28250 80027650 05E10005 */  bgez       $t7, .L80027668
/* 28254 80027654 468082A0 */   cvt.s.w   $f10, $f16
/* 28258 80027658 3C014F80 */  lui        $at, 0x4f80
/* 2825C 8002765C 44819000 */  mtc1       $at, $f18
/* 28260 80027660 00000000 */  nop
/* 28264 80027664 46125280 */  add.s      $f10, $f10, $f18
.L80027668:
/* 28268 80027668 460A0003 */  div.s      $f0, $f0, $f10
/* 2826C 8002766C 3C014248 */  lui        $at, 0x4248
/* 28270 80027670 44812000 */  mtc1       $at, $f4
/* 28274 80027674 24190003 */  addiu      $t9, $zero, 3
/* 28278 80027678 AFB90010 */  sw         $t9, 0x10($sp)
/* 2827C 8002767C 24040033 */  addiu      $a0, $zero, 0x33
/* 28280 80027680 8FA50034 */  lw         $a1, 0x34($sp)
/* 28284 80027684 24060062 */  addiu      $a2, $zero, 0x62
/* 28288 80027688 46040002 */  mul.s      $f0, $f0, $f4
/* 2828C 8002768C 4600018D */  trunc.w.s  $f6, $f0
/* 28290 80027690 44073000 */  mfc1       $a3, $f6
/* 28294 80027694 0C00A6D6 */  jal        drawMenuItem
/* 28298 80027698 00000000 */   nop
/* 2829C 8002769C 3C0A8008 */  lui        $t2, %hi(BrianDefense)
/* 282A0 800276A0 954ABA8E */  lhu        $t2, %lo(BrianDefense)($t2)
/* 282A4 800276A4 3C014F80 */  lui        $at, 0x4f80
/* 282A8 800276A8 448A4000 */  mtc1       $t2, $f8
/* 282AC 800276AC 05410004 */  bgez       $t2, .L800276C0
/* 282B0 800276B0 46804020 */   cvt.s.w   $f0, $f8
/* 282B4 800276B4 44818000 */  mtc1       $at, $f16
/* 282B8 800276B8 00000000 */  nop
/* 282BC 800276BC 46100000 */  add.s      $f0, $f0, $f16
.L800276C0:
/* 282C0 800276C0 3C01437F */  lui        $at, 0x437f
/* 282C4 800276C4 44819000 */  mtc1       $at, $f18
/* 282C8 800276C8 3C014248 */  lui        $at, 0x4248
/* 282CC 800276CC 44815000 */  mtc1       $at, $f10
/* 282D0 800276D0 46120003 */  div.s      $f0, $f0, $f18
/* 282D4 800276D4 240C0003 */  addiu      $t4, $zero, 3
/* 282D8 800276D8 AFAC0010 */  sw         $t4, 0x10($sp)
/* 282DC 800276DC 24040033 */  addiu      $a0, $zero, 0x33
/* 282E0 800276E0 8FA50034 */  lw         $a1, 0x34($sp)
/* 282E4 800276E4 24060083 */  addiu      $a2, $zero, 0x83
/* 282E8 800276E8 460A0002 */  mul.s      $f0, $f0, $f10
/* 282EC 800276EC 4600010D */  trunc.w.s  $f4, $f0
/* 282F0 800276F0 44072000 */  mfc1       $a3, $f4
/* 282F4 800276F4 0C00A6D6 */  jal        drawMenuItem
/* 282F8 800276F8 00000000 */   nop
/* 282FC 800276FC 3C0D8008 */  lui        $t5, %hi(BrianAgility)
/* 28300 80027700 95ADBA8C */  lhu        $t5, %lo(BrianAgility)($t5)
/* 28304 80027704 3C014F80 */  lui        $at, 0x4f80
/* 28308 80027708 448D3000 */  mtc1       $t5, $f6
/* 2830C 8002770C 05A10004 */  bgez       $t5, .L80027720
/* 28310 80027710 46803020 */   cvt.s.w   $f0, $f6
/* 28314 80027714 44814000 */  mtc1       $at, $f8
/* 28318 80027718 00000000 */  nop
/* 2831C 8002771C 46080000 */  add.s      $f0, $f0, $f8
.L80027720:
/* 28320 80027720 3C01437F */  lui        $at, 0x437f
/* 28324 80027724 44818000 */  mtc1       $at, $f16
/* 28328 80027728 3C014248 */  lui        $at, 0x4248
/* 2832C 8002772C 44819000 */  mtc1       $at, $f18
/* 28330 80027730 46100003 */  div.s      $f0, $f0, $f16
/* 28334 80027734 240F0003 */  addiu      $t7, $zero, 3
/* 28338 80027738 AFAF0010 */  sw         $t7, 0x10($sp)
/* 2833C 8002773C 24040033 */  addiu      $a0, $zero, 0x33
/* 28340 80027740 8FA50034 */  lw         $a1, 0x34($sp)
/* 28344 80027744 240600A4 */  addiu      $a2, $zero, 0xa4
/* 28348 80027748 46120002 */  mul.s      $f0, $f0, $f18
/* 2834C 8002774C 4600028D */  trunc.w.s  $f10, $f0
/* 28350 80027750 44075000 */  mfc1       $a3, $f10
/* 28354 80027754 0C00A6D6 */  jal        drawMenuItem
/* 28358 80027758 00000000 */   nop
/* 2835C 8002775C 265000F6 */  addiu      $s0, $s2, 0xf6
/* 28360 80027760 2418000A */  addiu      $t8, $zero, 0xa
/* 28364 80027764 AFB80010 */  sw         $t8, 0x10($sp)
/* 28368 80027768 02002825 */  or         $a1, $s0, $zero
/* 2836C 8002776C 24040015 */  addiu      $a0, $zero, 0x15
/* 28370 80027770 2406003B */  addiu      $a2, $zero, 0x3b
/* 28374 80027774 0C00A6D6 */  jal        drawMenuItem
/* 28378 80027778 24070008 */   addiu     $a3, $zero, 8
/* 2837C 8002777C 2419000A */  addiu      $t9, $zero, 0xa
/* 28380 80027780 AFB90010 */  sw         $t9, 0x10($sp)
/* 28384 80027784 24040015 */  addiu      $a0, $zero, 0x15
/* 28388 80027788 02002825 */  or         $a1, $s0, $zero
/* 2838C 8002778C 2406005C */  addiu      $a2, $zero, 0x5c
/* 28390 80027790 0C00A6D6 */  jal        drawMenuItem
/* 28394 80027794 24070008 */   addiu     $a3, $zero, 8
/* 28398 80027798 240A000A */  addiu      $t2, $zero, 0xa
/* 2839C 8002779C AFAA0010 */  sw         $t2, 0x10($sp)
/* 283A0 800277A0 24040015 */  addiu      $a0, $zero, 0x15
/* 283A4 800277A4 02002825 */  or         $a1, $s0, $zero
/* 283A8 800277A8 2406007D */  addiu      $a2, $zero, 0x7d
/* 283AC 800277AC 0C00A6D6 */  jal        drawMenuItem
/* 283B0 800277B0 24070008 */   addiu     $a3, $zero, 8
/* 283B4 800277B4 240B000A */  addiu      $t3, $zero, 0xa
/* 283B8 800277B8 AFAB0010 */  sw         $t3, 0x10($sp)
/* 283BC 800277BC 24040015 */  addiu      $a0, $zero, 0x15
/* 283C0 800277C0 02002825 */  or         $a1, $s0, $zero
/* 283C4 800277C4 2406009E */  addiu      $a2, $zero, 0x9e
/* 283C8 800277C8 0C00A6D6 */  jal        drawMenuItem
/* 283CC 800277CC 24070008 */   addiu     $a3, $zero, 8
/* 283D0 800277D0 240C0012 */  addiu      $t4, $zero, 0x12
/* 283D4 800277D4 AFAC0010 */  sw         $t4, 0x10($sp)
/* 283D8 800277D8 2404001A */  addiu      $a0, $zero, 0x1a
/* 283DC 800277DC 26450087 */  addiu      $a1, $s2, 0x87
/* 283E0 800277E0 24060019 */  addiu      $a2, $zero, 0x19
/* 283E4 800277E4 0C00A6D6 */  jal        drawMenuItem
/* 283E8 800277E8 24070034 */   addiu     $a3, $zero, 0x34
/* 283EC 800277EC 3C088009 */  lui        $t0, %hi(pause_and_save_screen_state_flags)
/* 283F0 800277F0 2508FD0C */  addiu      $t0, $t0, %lo(pause_and_save_screen_state_flags)
/* 283F4 800277F4 95070000 */  lhu        $a3, ($t0)
/* 283F8 800277F8 3C028009 */  lui        $v0, %hi(JoystickX)
/* 283FC 800277FC 30ED2000 */  andi       $t5, $a3, 0x2000
/* 28400 80027800 55A00026 */  bnel       $t5, $zero, .L8002789C
/* 28404 80027804 8FBF002C */   lw        $ra, 0x2c($sp)
/* 28408 80027808 80422871 */  lb         $v0, %lo(JoystickX)($v0)
/* 2840C 8002780C 3C038009 */  lui        $v1, %hi(pressedButton)
/* 28410 80027810 240F0140 */  addiu      $t7, $zero, 0x140
/* 28414 80027814 28410015 */  slti       $at, $v0, 0x15
/* 28418 80027818 10200006 */  beqz       $at, .L80027834
/* 2841C 8002781C 34F82000 */   ori       $t8, $a3, 0x2000
/* 28420 80027820 94632876 */  lhu        $v1, %lo(pressedButton)($v1)
/* 28424 80027824 2841FFEC */  slti       $at, $v0, -0x14
/* 28428 80027828 306E0010 */  andi       $t6, $v1, 0x10
/* 2842C 8002782C 11C0000C */  beqz       $t6, .L80027860
/* 28430 80027830 00000000 */   nop
.L80027834:
/* 28434 80027834 3C018009 */  lui        $at, %hi(UNK_MenuScrollCounter)
/* 28438 80027838 AC2FFD04 */  sw         $t7, %lo(UNK_MenuScrollCounter)($at)
/* 2843C 8002783C 3C018009 */  lui        $at, %hi(D_8008FD08)
/* 28440 80027840 AC20FD08 */  sw         $zero, %lo(D_8008FD08)($at)
/* 28444 80027844 A5180000 */  sh         $t8, ($t0)
/* 28448 80027848 00002025 */  or         $a0, $zero, $zero
/* 2844C 8002784C 00002825 */  or         $a1, $zero, $zero
/* 28450 80027850 0C009A35 */  jal        func_800268D4
/* 28454 80027854 240600FF */   addiu     $a2, $zero, 0xff
/* 28458 80027858 10000010 */  b          .L8002789C
/* 2845C 8002785C 8FBF002C */   lw        $ra, 0x2c($sp)
.L80027860:
/* 28460 80027860 14200002 */  bnez       $at, .L8002786C
/* 28464 80027864 30792000 */   andi      $t9, $v1, 0x2000
/* 28468 80027868 1320000B */  beqz       $t9, .L80027898
.L8002786C:
/* 2846C 8002786C 3C018009 */   lui       $at, %hi(UNK_MenuScrollCounter)
/* 28470 80027870 AC20FD04 */  sw         $zero, %lo(UNK_MenuScrollCounter)($at)
/* 28474 80027874 3C018009 */  lui        $at, %hi(D_8008FD08)
/* 28478 80027878 240AFEC0 */  addiu      $t2, $zero, -0x140
/* 2847C 8002787C AC2AFD08 */  sw         $t2, %lo(D_8008FD08)($at)
/* 28480 80027880 34EB3000 */  ori        $t3, $a3, 0x3000
/* 28484 80027884 A50B0000 */  sh         $t3, ($t0)
/* 28488 80027888 00002025 */  or         $a0, $zero, $zero
/* 2848C 8002788C 00002825 */  or         $a1, $zero, $zero
/* 28490 80027890 0C009A35 */  jal        func_800268D4
/* 28494 80027894 240600FF */   addiu     $a2, $zero, 0xff
.L80027898:
/* 28498 80027898 8FBF002C */  lw         $ra, 0x2c($sp)
.L8002789C:
/* 2849C 8002789C 8FB00020 */  lw         $s0, 0x20($sp)
/* 284A0 800278A0 8FB10024 */  lw         $s1, 0x24($sp)
/* 284A4 800278A4 8FB20028 */  lw         $s2, 0x28($sp)
/* 284A8 800278A8 03E00008 */  jr         $ra
/* 284AC 800278AC 27BD0058 */   addiu     $sp, $sp, 0x58
