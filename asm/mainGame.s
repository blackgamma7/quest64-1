.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel gameMain
/* 1850 80000C50 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 1854 80000C54 AFBF002C */  sw         $ra, 0x2c($sp)
/* 1858 80000C58 AFB30028 */  sw         $s3, 0x28($sp)
/* 185C 80000C5C AFB20024 */  sw         $s2, 0x24($sp)
/* 1860 80000C60 AFB10020 */  sw         $s1, 0x20($sp)
/* 1864 80000C64 AFB0001C */  sw         $s0, 0x1c($sp)
/* 1868 80000C68 AFA40030 */  sw         $a0, 0x30($sp)
/* 186C 80000C6C 0C00D210 */  jal        osCreateViManager
/* 1870 80000C70 240400FE */   addiu     $a0, $zero, 0xfe
/* 1874 80000C74 3C048008 */  lui        $a0, %hi(messageQueue)
/* 1878 80000C78 3C058008 */  lui        $a1, %hi(D_8007B338)
/* 187C 80000C7C 24A5B338 */  addiu      $a1, $a1, %lo(D_8007B338)
/* 1880 80000C80 2484B320 */  addiu      $a0, $a0, %lo(messageQueue)
/* 1884 80000C84 0C00CFC4 */  jal        osCreateMesgQueue
/* 1888 80000C88 24060001 */   addiu     $a2, $zero, 1
/* 188C 80000C8C 0C0091C1 */  jal        alUNKNOWN
/* 1890 80000C90 00000000 */   nop
/* 1894 80000C94 3C0E00E8 */  lui        $t6, 0xe8
/* 1898 80000C98 25CE1610 */  addiu      $t6, $t6, 0x1610
/* 189C 80000C9C 3C0400E8 */  lui        $a0, 0xe8
/* 18A0 80000CA0 3C0500E8 */  lui        $a1, 0xe8
/* 18A4 80000CA4 3C0600EC */  lui        $a2, 0xec
/* 18A8 80000CA8 3C0700EF */  lui        $a3, 0xef
/* 18AC 80000CAC 24E7E020 */  addiu      $a3, $a3, -0x1fe0
/* 18B0 80000CB0 24C6ABD0 */  addiu      $a2, $a2, -0x5430
/* 18B4 80000CB4 24A51610 */  addiu      $a1, $a1, 0x1610
/* 18B8 80000CB8 2484E800 */  addiu      $a0, $a0, -0x1800
/* 18BC 80000CBC 0C00944F */  jal        func_8002513C
/* 18C0 80000CC0 AFAE0010 */   sw        $t6, 0x10($sp)
/* 18C4 80000CC4 3C0400EF */  lui        $a0, 0xef
/* 18C8 80000CC8 3C0500EF */  lui        $a1, 0xef
/* 18CC 80000CCC 3C0600EF */  lui        $a2, 0xef
/* 18D0 80000CD0 24C6FCE0 */  addiu      $a2, $a2, -0x320
/* 18D4 80000CD4 24A5FCE0 */  addiu      $a1, $a1, -0x320
/* 18D8 80000CD8 0C009522 */  jal        func_80025488
/* 18DC 80000CDC 2484E020 */   addiu     $a0, $a0, -0x1fe0
/* 18E0 80000CE0 3C108008 */  lui        $s0, %hi(Sched)
/* 18E4 80000CE4 2610B358 */  addiu      $s0, $s0, %lo(Sched)
/* 18E8 80000CE8 02002025 */  or         $a0, $s0, $zero
/* 18EC 80000CEC 0C00014C */  jal        sched_create_msgQs
/* 18F0 80000CF0 24050001 */   addiu     $a1, $zero, 1
/* 18F4 80000CF4 0C00C4C0 */  jal        init_controllers
/* 18F8 80000CF8 00000000 */   nop
/* 18FC 80000CFC 3C0F8000 */  lui        $t7, %hi(osTvType)
/* 1900 80000D00 8DEF0300 */  lw         $t7, %lo(osTvType)($t7)
/* 1904 80000D04 24010001 */  addiu      $at, $zero, 1
/* 1908 80000D08 15E10005 */  bne        $t7, $at, .L80000D20
/* 190C 80000D0C 3C048007 */   lui       $a0, %hi(NTSC_VI_Mode)
/* 1910 80000D10 0C00D2E8 */  jal        osViSetMode
/* 1914 80000D14 2484F4F0 */   addiu     $a0, $a0, %lo(NTSC_VI_Mode)
/* 1918 80000D18 10000004 */  b          .L80000D2C
/* 191C 80000D1C 00000000 */   nop
.L80000D20:
/* 1920 80000D20 3C048007 */  lui        $a0, %hi(PAL_VI_Mode)
/* 1924 80000D24 0C00D2E8 */  jal        osViSetMode
/* 1928 80000D28 2484FDB0 */   addiu     $a0, $a0, %lo(PAL_VI_Mode)
.L80000D2C:
/* 192C 80000D2C 0C00D1B8 */  jal        osViRepeatLine
/* 1930 80000D30 24040001 */   addiu     $a0, $zero, 1
/* 1934 80000D34 3C048009 */  lui        $a0, %hi(cont_mesgq)
/* 1938 80000D38 3C058008 */  lui        $a1, %hi(Sched+0x74)
/* 193C 80000D3C 24A5B3CC */  addiu      $a1, $a1, %lo(Sched+0x74)
/* 1940 80000D40 0C00C9C1 */  jal        func_80032704
/* 1944 80000D44 24842880 */   addiu     $a0, $a0, %lo(cont_mesgq)
/* 1948 80000D48 0C00D1B8 */  jal        osViRepeatLine
/* 194C 80000D4C 24040001 */   addiu     $a0, $zero, 1
/* 1950 80000D50 0C00D304 */  jal        osViSetSpecialFeatures
/* 1954 80000D54 2404005A */   addiu     $a0, $zero, 0x5a
/* 1958 80000D58 0C00018B */  jal        run_3_Scheduler_threads
/* 195C 80000D5C 02002025 */   or        $a0, $s0, $zero
/* 1960 80000D60 0C00943A */  jal        func_800250E8
/* 1964 80000D64 02002025 */   or        $a0, $s0, $zero
/* 1968 80000D68 3C118008 */  lui        $s1, %hi(D_8007B9E8)
/* 196C 80000D6C 2631B9E8 */  addiu      $s1, $s1, %lo(D_8007B9E8)
/* 1970 80000D70 3C058008 */  lui        $a1, %hi(D_8007BA00)
/* 1974 80000D74 24A5BA00 */  addiu      $a1, $a1, %lo(D_8007BA00)
/* 1978 80000D78 02202025 */  or         $a0, $s1, $zero
/* 197C 80000D7C 0C00CFC4 */  jal        osCreateMesgQueue
/* 1980 80000D80 24060008 */   addiu     $a2, $zero, 8
/* 1984 80000D84 3C058008 */  lui        $a1, %hi(D_8007B9E0)
/* 1988 80000D88 24A5B9E0 */  addiu      $a1, $a1, %lo(D_8007B9E0)
/* 198C 80000D8C 02002025 */  or         $a0, $s0, $zero
/* 1990 80000D90 0C0001F5 */  jal        osScAddClient
/* 1994 80000D94 02203025 */   or        $a2, $s1, $zero
/* 1998 80000D98 0C0001C1 */  jal        get_sched_MQB
/* 199C 80000D9C 02002025 */   or        $a0, $s0, $zero
/* 19A0 80000DA0 3C018008 */  lui        $at, %hi(D_8007B9D8)
/* 19A4 80000DA4 0C0003FA */  jal        loadSpiritsSpells_and_Hud
/* 19A8 80000DA8 AC22B9D8 */   sw        $v0, %lo(D_8007B9D8)($at)
/* 19AC 80000DAC 3C128008 */  lui        $s2, %hi(GameMode)
/* 19B0 80000DB0 3C108008 */  lui        $s0, %hi(gHUDState)
/* 19B4 80000DB4 2610B2E4 */  addiu      $s0, $s0, %lo(gHUDState)
/* 19B8 80000DB8 2652B2E0 */  addiu      $s2, $s2, %lo(GameMode)
/* 19BC 80000DBC 24130001 */  addiu      $s3, $zero, 1
/* 19C0 80000DC0 2411FFFC */  addiu      $s1, $zero, -4
.L80000DC4:
/* 19C4 80000DC4 0C002D48 */  jal        initSomeBossAddress
/* 19C8 80000DC8 00000000 */   nop
/* 19CC 80000DCC 0C0046D0 */  jal        initChestData
/* 19D0 80000DD0 00000000 */   nop
/* 19D4 80000DD4 0C00487C */  jal        clearSpiritFlags
/* 19D8 80000DD8 00000000 */   nop
/* 19DC 80000DDC 0C0009F4 */  jal        SetDataForNewGame
/* 19E0 80000DE0 00000000 */   nop
/* 19E4 80000DE4 0C00845C */  jal        initInventory
/* 19E8 80000DE8 00000000 */   nop
/* 19EC 80000DEC 0C004034 */  jal        initLights_and_Fog
/* 19F0 80000DF0 00000000 */   nop
/* 19F4 80000DF4 0C00C396 */  jal        loadTextRes
/* 19F8 80000DF8 00000000 */   nop
/* 19FC 80000DFC 0C00997C */  jal        initBGM
/* 1A00 80000E00 00000000 */   nop
/* 1A04 80000E04 0C0003BB */  jal        setupNewGame
/* 1A08 80000E08 00000000 */   nop
/* 1A0C 80000E0C 0C009A90 */  jal        func_80026A40
/* 1A10 80000E10 00000000 */   nop
/* 1A14 80000E14 8E030000 */  lw         $v1, ($s0)
/* 1A18 80000E18 96420000 */  lhu        $v0, ($s2)
.L80000E1C:
/* 1A1C 80000E1C 0071C024 */  and        $t8, $v1, $s1
/* 1A20 80000E20 14400003 */  bnez       $v0, .L80000E30
/* 1A24 80000E24 AE180000 */   sw        $t8, ($s0)
/* 1A28 80000E28 A6530000 */  sh         $s3, ($s2)
/* 1A2C 80000E2C 3262FFFF */  andi       $v0, $s3, 0xffff
.L80000E30:
/* 1A30 80000E30 2459FFFF */  addiu      $t9, $v0, -1
/* 1A34 80000E34 2F210005 */  sltiu      $at, $t9, 5
/* 1A38 80000E38 10200018 */  beqz       $at, .L80000E9C
/* 1A3C 80000E3C 0019C880 */   sll       $t9, $t9, 2
/* 1A40 80000E40 3C018007 */  lui        $at, %hi(D_80070EF0)
/* 1A44 80000E44 00390821 */  addu       $at, $at, $t9
/* 1A48 80000E48 8C390EF0 */  lw         $t9, %lo(D_80070EF0)($at)
/* 1A4C 80000E4C 03200008 */  jr         $t9
/* 1A50 80000E50 00000000 */   nop
/* 1A54 80000E54 0C000600 */  jal        Mode_NormalPlay
/* 1A58 80000E58 00000000 */   nop
/* 1A5C 80000E5C 10000010 */  b          .L80000EA0
/* 1A60 80000E60 8E030000 */   lw        $v1, ($s0)
/* 1A64 80000E64 0C00082D */  jal        Mode_Pause_and_SaveMenu
/* 1A68 80000E68 00000000 */   nop
/* 1A6C 80000E6C 1000000C */  b          .L80000EA0
/* 1A70 80000E70 8E030000 */   lw        $v1, ($s0)
/* 1A74 80000E74 0C00089F */  jal        Mode_TitleScreen
/* 1A78 80000E78 00000000 */   nop
/* 1A7C 80000E7C 10000008 */  b          .L80000EA0
/* 1A80 80000E80 8E030000 */   lw        $v1, ($s0)
/* 1A84 80000E84 0C00090A */  jal        Mode_OPCredits_and_Story
/* 1A88 80000E88 00000000 */   nop
/* 1A8C 80000E8C 10000004 */  b          .L80000EA0
/* 1A90 80000E90 8E030000 */   lw        $v1, ($s0)
/* 1A94 80000E94 0C00097A */  jal        Mode_EndCredits
/* 1A98 80000E98 00000000 */   nop
.L80000E9C:
/* 1A9C 80000E9C 8E030000 */  lw         $v1, ($s0)
.L80000EA0:
/* 1AA0 80000EA0 30688000 */  andi       $t0, $v1, 0x8000
/* 1AA4 80000EA4 1500FFC7 */  bnez       $t0, .L80000DC4
/* 1AA8 80000EA8 00000000 */   nop
/* 1AAC 80000EAC 1000FFDB */  b          .L80000E1C
/* 1AB0 80000EB0 96420000 */   lhu       $v0, ($s2)
/* 1AB4 80000EB4 00000000 */  nop
/* 1AB8 80000EB8 00000000 */  nop
/* 1ABC 80000EBC 00000000 */  nop
/* 1AC0 80000EC0 00000000 */  nop
/* 1AC4 80000EC4 00000000 */  nop
/* 1AC8 80000EC8 00000000 */  nop
/* 1ACC 80000ECC 00000000 */  nop
