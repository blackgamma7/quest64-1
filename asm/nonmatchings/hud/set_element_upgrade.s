glabel set_element_upgrade
/* 1FFDC 8001F3DC 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 1FFE0 8001F3E0 3C038008 */  lui        $v1, %hi(DLPtr)
/* 1FFE4 8001F3E4 2463B2FC */  addiu      $v1, $v1, %lo(DLPtr)
/* 1FFE8 8001F3E8 AFBF002C */  sw         $ra, 0x2c($sp)
/* 1FFEC 8001F3EC AFA40030 */  sw         $a0, 0x30($sp)
/* 1FFF0 8001F3F0 3C018009 */  lui        $at, %hi(D_8008C648)
/* 1FFF4 8001F3F4 AC20C648 */  sw         $zero, %lo(D_8008C648)($at)
/* 1FFF8 8001F3F8 3C018009 */  lui        $at, %hi(D_8008C64C)
/* 1FFFC 8001F3FC AC20C64C */  sw         $zero, %lo(D_8008C64C)($at)
/* 20000 8001F400 8C620000 */  lw         $v0, ($v1)
/* 20004 8001F404 3C0FE700 */  lui        $t7, 0xe700
/* 20008 8001F408 3C19FD10 */  lui        $t9, 0xfd10
/* 2000C 8001F40C 244E0008 */  addiu      $t6, $v0, 8
/* 20010 8001F410 AC6E0000 */  sw         $t6, ($v1)
/* 20014 8001F414 AC400004 */  sw         $zero, 4($v0)
/* 20018 8001F418 AC4F0000 */  sw         $t7, ($v0)
/* 2001C 8001F41C 8C620000 */  lw         $v0, ($v1)
/* 20020 8001F420 3C0E803A */  lui        $t6, %hi(SoulSearch_and_EleMenu_Pal)
/* 20024 8001F424 25CED990 */  addiu      $t6, $t6, %lo(SoulSearch_and_EleMenu_Pal)
/* 20028 8001F428 24580008 */  addiu      $t8, $v0, 8
/* 2002C 8001F42C AC780000 */  sw         $t8, ($v1)
/* 20030 8001F430 AC4E0004 */  sw         $t6, 4($v0)
/* 20034 8001F434 AC590000 */  sw         $t9, ($v0)
/* 20038 8001F438 8C620000 */  lw         $v0, ($v1)
/* 2003C 8001F43C 3C18E800 */  lui        $t8, 0xe800
/* 20040 8001F440 3C0EF500 */  lui        $t6, 0xf500
/* 20044 8001F444 244F0008 */  addiu      $t7, $v0, 8
/* 20048 8001F448 AC6F0000 */  sw         $t7, ($v1)
/* 2004C 8001F44C AC400004 */  sw         $zero, 4($v0)
/* 20050 8001F450 AC580000 */  sw         $t8, ($v0)
/* 20054 8001F454 8C620000 */  lw         $v0, ($v1)
/* 20058 8001F458 35CE0100 */  ori        $t6, $t6, 0x100
/* 2005C 8001F45C 3C0F0700 */  lui        $t7, 0x700
/* 20060 8001F460 24590008 */  addiu      $t9, $v0, 8
/* 20064 8001F464 AC790000 */  sw         $t9, ($v1)
/* 20068 8001F468 AC4F0004 */  sw         $t7, 4($v0)
/* 2006C 8001F46C AC4E0000 */  sw         $t6, ($v0)
/* 20070 8001F470 8C620000 */  lw         $v0, ($v1)
/* 20074 8001F474 3C19E600 */  lui        $t9, 0xe600
/* 20078 8001F478 3C0FF000 */  lui        $t7, 0xf000
/* 2007C 8001F47C 24580008 */  addiu      $t8, $v0, 8
/* 20080 8001F480 AC780000 */  sw         $t8, ($v1)
/* 20084 8001F484 AC400004 */  sw         $zero, 4($v0)
/* 20088 8001F488 AC590000 */  sw         $t9, ($v0)
/* 2008C 8001F48C 8C620000 */  lw         $v0, ($v1)
/* 20090 8001F490 3C18073F */  lui        $t8, 0x73f
/* 20094 8001F494 3718C000 */  ori        $t8, $t8, 0xc000
/* 20098 8001F498 244E0008 */  addiu      $t6, $v0, 8
/* 2009C 8001F49C AC6E0000 */  sw         $t6, ($v1)
/* 200A0 8001F4A0 AC580004 */  sw         $t8, 4($v0)
/* 200A4 8001F4A4 AC4F0000 */  sw         $t7, ($v0)
/* 200A8 8001F4A8 8C620000 */  lw         $v0, ($v1)
/* 200AC 8001F4AC 3C0EE700 */  lui        $t6, 0xe700
/* 200B0 8001F4B0 3C04803A */  lui        $a0, 0x803a
/* 200B4 8001F4B4 24590008 */  addiu      $t9, $v0, 8
/* 200B8 8001F4B8 AC790000 */  sw         $t9, ($v1)
/* 200BC 8001F4BC AC400004 */  sw         $zero, 4($v0)
/* 200C0 8001F4C0 AC4E0000 */  sw         $t6, ($v0)
/* 200C4 8001F4C4 240F0014 */  addiu      $t7, $zero, 0x14
/* 200C8 8001F4C8 24180400 */  addiu      $t8, $zero, 0x400
/* 200CC 8001F4CC 24190400 */  addiu      $t9, $zero, 0x400
/* 200D0 8001F4D0 AFB90020 */  sw         $t9, 0x20($sp)
/* 200D4 8001F4D4 AFB8001C */  sw         $t8, 0x1c($sp)
/* 200D8 8001F4D8 AFAF0010 */  sw         $t7, 0x10($sp)
/* 200DC 8001F4DC 24846F60 */  addiu      $a0, $a0, 0x6f60
/* 200E0 8001F4E0 24050081 */  addiu      $a1, $zero, 0x81
/* 200E4 8001F4E4 24060048 */  addiu      $a2, $zero, 0x48
/* 200E8 8001F4E8 24070040 */  addiu      $a3, $zero, 0x40
/* 200EC 8001F4EC AFA00014 */  sw         $zero, 0x14($sp)
/* 200F0 8001F4F0 0C00843F */  jal        func_800210FC
/* 200F4 8001F4F4 AFA00018 */   sw        $zero, 0x18($sp)
/* 200F8 8001F4F8 3C04803A */  lui        $a0, 0x803a
/* 200FC 8001F4FC 240E0014 */  addiu      $t6, $zero, 0x14
/* 20100 8001F500 240F0014 */  addiu      $t7, $zero, 0x14
/* 20104 8001F504 24180400 */  addiu      $t8, $zero, 0x400
/* 20108 8001F508 24190400 */  addiu      $t9, $zero, 0x400
/* 2010C 8001F50C AFB90020 */  sw         $t9, 0x20($sp)
/* 20110 8001F510 AFB8001C */  sw         $t8, 0x1c($sp)
/* 20114 8001F514 AFAF0018 */  sw         $t7, 0x18($sp)
/* 20118 8001F518 AFAE0010 */  sw         $t6, 0x10($sp)
/* 2011C 8001F51C 24846F60 */  addiu      $a0, $a0, 0x6f60
/* 20120 8001F520 24050081 */  addiu      $a1, $zero, 0x81
/* 20124 8001F524 2406005C */  addiu      $a2, $zero, 0x5c
/* 20128 8001F528 24070040 */  addiu      $a3, $zero, 0x40
/* 2012C 8001F52C 0C00843F */  jal        func_800210FC
/* 20130 8001F530 AFA00014 */   sw        $zero, 0x14($sp)
/* 20134 8001F534 3C04803A */  lui        $a0, 0x803a
/* 20138 8001F538 240E0014 */  addiu      $t6, $zero, 0x14
/* 2013C 8001F53C 240F0028 */  addiu      $t7, $zero, 0x28
/* 20140 8001F540 24180400 */  addiu      $t8, $zero, 0x400
/* 20144 8001F544 24190400 */  addiu      $t9, $zero, 0x400
/* 20148 8001F548 AFB90020 */  sw         $t9, 0x20($sp)
/* 2014C 8001F54C AFB8001C */  sw         $t8, 0x1c($sp)
/* 20150 8001F550 AFAF0018 */  sw         $t7, 0x18($sp)
/* 20154 8001F554 AFAE0010 */  sw         $t6, 0x10($sp)
/* 20158 8001F558 24846F60 */  addiu      $a0, $a0, 0x6f60
/* 2015C 8001F55C 24050081 */  addiu      $a1, $zero, 0x81
/* 20160 8001F560 24060070 */  addiu      $a2, $zero, 0x70
/* 20164 8001F564 24070040 */  addiu      $a3, $zero, 0x40
/* 20168 8001F568 0C00843F */  jal        func_800210FC
/* 2016C 8001F56C AFA00014 */   sw        $zero, 0x14($sp)
/* 20170 8001F570 3C04803A */  lui        $a0, 0x803a
/* 20174 8001F574 240E0014 */  addiu      $t6, $zero, 0x14
/* 20178 8001F578 240F003C */  addiu      $t7, $zero, 0x3c
/* 2017C 8001F57C 24180400 */  addiu      $t8, $zero, 0x400
/* 20180 8001F580 24190400 */  addiu      $t9, $zero, 0x400
/* 20184 8001F584 AFB90020 */  sw         $t9, 0x20($sp)
/* 20188 8001F588 AFB8001C */  sw         $t8, 0x1c($sp)
/* 2018C 8001F58C AFAF0018 */  sw         $t7, 0x18($sp)
/* 20190 8001F590 AFAE0010 */  sw         $t6, 0x10($sp)
/* 20194 8001F594 24846F60 */  addiu      $a0, $a0, 0x6f60
/* 20198 8001F598 24050081 */  addiu      $a1, $zero, 0x81
/* 2019C 8001F59C 24060084 */  addiu      $a2, $zero, 0x84
/* 201A0 8001F5A0 24070040 */  addiu      $a3, $zero, 0x40
/* 201A4 8001F5A4 0C00843F */  jal        func_800210FC
/* 201A8 8001F5A8 AFA00014 */   sw        $zero, 0x14($sp)
/* 201AC 8001F5AC 3C04803A */  lui        $a0, %hi(D_803A6F40)
/* 201B0 8001F5B0 240E000A */  addiu      $t6, $zero, 0xa
/* 201B4 8001F5B4 AFAE0010 */  sw         $t6, 0x10($sp)
/* 201B8 8001F5B8 24846F40 */  addiu      $a0, $a0, %lo(D_803A6F40)
/* 201BC 8001F5BC 24050020 */  addiu      $a1, $zero, 0x20
/* 201C0 8001F5C0 2406001D */  addiu      $a2, $zero, 0x1d
/* 201C4 8001F5C4 0C00838B */  jal        func_80020E2C
/* 201C8 8001F5C8 24070080 */   addiu     $a3, $zero, 0x80
/* 201CC 8001F5CC 3C038008 */  lui        $v1, %hi(DLPtr)
/* 201D0 8001F5D0 2463B2FC */  addiu      $v1, $v1, %lo(DLPtr)
/* 201D4 8001F5D4 8C620000 */  lw         $v0, ($v1)
/* 201D8 8001F5D8 3C19803A */  lui        $t9, %hi(HUD_and_Menu_Pal)
/* 201DC 8001F5DC 27399AB0 */  addiu      $t9, $t9, %lo(HUD_and_Menu_Pal)
/* 201E0 8001F5E0 244F0008 */  addiu      $t7, $v0, 8
/* 201E4 8001F5E4 AC6F0000 */  sw         $t7, ($v1)
/* 201E8 8001F5E8 3C18FD10 */  lui        $t8, 0xfd10
/* 201EC 8001F5EC AC580000 */  sw         $t8, ($v0)
/* 201F0 8001F5F0 AC590004 */  sw         $t9, 4($v0)
/* 201F4 8001F5F4 8C620000 */  lw         $v0, ($v1)
/* 201F8 8001F5F8 3C0FE800 */  lui        $t7, 0xe800
/* 201FC 8001F5FC 3C19F500 */  lui        $t9, 0xf500
/* 20200 8001F600 244E0008 */  addiu      $t6, $v0, 8
/* 20204 8001F604 AC6E0000 */  sw         $t6, ($v1)
/* 20208 8001F608 AC400004 */  sw         $zero, 4($v0)
/* 2020C 8001F60C AC4F0000 */  sw         $t7, ($v0)
/* 20210 8001F610 8C620000 */  lw         $v0, ($v1)
/* 20214 8001F614 37390100 */  ori        $t9, $t9, 0x100
/* 20218 8001F618 3C0E0700 */  lui        $t6, 0x700
/* 2021C 8001F61C 24580008 */  addiu      $t8, $v0, 8
/* 20220 8001F620 AC780000 */  sw         $t8, ($v1)
/* 20224 8001F624 AC4E0004 */  sw         $t6, 4($v0)
/* 20228 8001F628 AC590000 */  sw         $t9, ($v0)
/* 2022C 8001F62C 8C620000 */  lw         $v0, ($v1)
/* 20230 8001F630 3C18E600 */  lui        $t8, 0xe600
/* 20234 8001F634 3C0EF000 */  lui        $t6, 0xf000
/* 20238 8001F638 244F0008 */  addiu      $t7, $v0, 8
/* 2023C 8001F63C AC6F0000 */  sw         $t7, ($v1)
/* 20240 8001F640 AC400004 */  sw         $zero, 4($v0)
/* 20244 8001F644 AC580000 */  sw         $t8, ($v0)
/* 20248 8001F648 8C620000 */  lw         $v0, ($v1)
/* 2024C 8001F64C 3C0F073F */  lui        $t7, 0x73f
/* 20250 8001F650 35EFC000 */  ori        $t7, $t7, 0xc000
/* 20254 8001F654 24590008 */  addiu      $t9, $v0, 8
/* 20258 8001F658 AC790000 */  sw         $t9, ($v1)
/* 2025C 8001F65C AC4F0004 */  sw         $t7, 4($v0)
/* 20260 8001F660 AC4E0000 */  sw         $t6, ($v0)
/* 20264 8001F664 8C620000 */  lw         $v0, ($v1)
/* 20268 8001F668 3C19E700 */  lui        $t9, 0xe700
/* 2026C 8001F66C 24040005 */  addiu      $a0, $zero, 5
/* 20270 8001F670 24580008 */  addiu      $t8, $v0, 8
/* 20274 8001F674 AC780000 */  sw         $t8, ($v1)
/* 20278 8001F678 AC400004 */  sw         $zero, 4($v0)
/* 2027C 8001F67C AC590000 */  sw         $t9, ($v0)
/* 20280 8001F680 3C078008 */  lui        $a3, %hi(gNumFireSpirits)
/* 20284 8001F684 90E7BAA4 */  lbu        $a3, %lo(gNumFireSpirits)($a3)
/* 20288 8001F688 2405009D */  addiu      $a1, $zero, 0x9d
/* 2028C 8001F68C 0C008353 */  jal        func_80020D4C
/* 20290 8001F690 2406006C */   addiu     $a2, $zero, 0x6c
/* 20294 8001F694 3C078008 */  lui        $a3, %hi(gNumEarthSpirits)
/* 20298 8001F698 90E7BAA5 */  lbu        $a3, %lo(gNumEarthSpirits)($a3)
/* 2029C 8001F69C 24040005 */  addiu      $a0, $zero, 5
/* 202A0 8001F6A0 2405008B */  addiu      $a1, $zero, 0x8b
/* 202A4 8001F6A4 0C008353 */  jal        func_80020D4C
/* 202A8 8001F6A8 2406007C */   addiu     $a2, $zero, 0x7c
/* 202AC 8001F6AC 3C078008 */  lui        $a3, %hi(gNumWaterSpirits)
/* 202B0 8001F6B0 90E7BAA6 */  lbu        $a3, %lo(gNumWaterSpirits)($a3)
/* 202B4 8001F6B4 24040005 */  addiu      $a0, $zero, 5
/* 202B8 8001F6B8 2405009D */  addiu      $a1, $zero, 0x9d
/* 202BC 8001F6BC 0C008353 */  jal        func_80020D4C
/* 202C0 8001F6C0 2406008B */   addiu     $a2, $zero, 0x8b
/* 202C4 8001F6C4 3C078008 */  lui        $a3, %hi(gNumWindSpirits)
/* 202C8 8001F6C8 90E7BAA7 */  lbu        $a3, %lo(gNumWindSpirits)($a3)
/* 202CC 8001F6CC 24040005 */  addiu      $a0, $zero, 5
/* 202D0 8001F6D0 240500AF */  addiu      $a1, $zero, 0xaf
/* 202D4 8001F6D4 0C008353 */  jal        func_80020D4C
/* 202D8 8001F6D8 2406007C */   addiu     $a2, $zero, 0x7c
/* 202DC 8001F6DC 3C038009 */  lui        $v1, %hi(pressedButton)
/* 202E0 8001F6E0 94632876 */  lhu        $v1, %lo(pressedButton)($v1)
/* 202E4 8001F6E4 8FA50030 */  lw         $a1, 0x30($sp)
/* 202E8 8001F6E8 306E0008 */  andi       $t6, $v1, 8
/* 202EC 8001F6EC 51C0000F */  beql       $t6, $zero, .L8001F72C
/* 202F0 8001F6F0 306E0004 */   andi      $t6, $v1, 4
/* 202F4 8001F6F4 8CA20010 */  lw         $v0, 0x10($a1)
/* 202F8 8001F6F8 90440024 */  lbu        $a0, 0x24($v0)
/* 202FC 8001F6FC 28810032 */  slti       $at, $a0, 0x32
/* 20300 8001F700 10200009 */  beqz       $at, .L8001F728
/* 20304 8001F704 248F0001 */   addiu     $t7, $a0, 1
/* 20308 8001F708 3C038008 */  lui        $v1, %hi(gHUDState)
/* 2030C 8001F70C 2463B2E4 */  addiu      $v1, $v1, %lo(gHUDState)
/* 20310 8001F710 A04F0024 */  sb         $t7, 0x24($v0)
/* 20314 8001F714 8C780000 */  lw         $t8, ($v1)
/* 20318 8001F718 2401FFF7 */  addiu      $at, $zero, -9
/* 2031C 8001F71C 0301C824 */  and        $t9, $t8, $at
/* 20320 8001F720 10000030 */  b          .L8001F7E4
/* 20324 8001F724 AC790000 */   sw        $t9, ($v1)
.L8001F728:
/* 20328 8001F728 306E0004 */  andi       $t6, $v1, 4
.L8001F72C:
/* 2032C 8001F72C 11C0000E */  beqz       $t6, .L8001F768
/* 20330 8001F730 8FA50030 */   lw        $a1, 0x30($sp)
/* 20334 8001F734 8CA20010 */  lw         $v0, 0x10($a1)
/* 20338 8001F738 90440026 */  lbu        $a0, 0x26($v0)
/* 2033C 8001F73C 28810032 */  slti       $at, $a0, 0x32
/* 20340 8001F740 10200009 */  beqz       $at, .L8001F768
/* 20344 8001F744 248F0001 */   addiu     $t7, $a0, 1
/* 20348 8001F748 3C038008 */  lui        $v1, %hi(gHUDState)
/* 2034C 8001F74C 2463B2E4 */  addiu      $v1, $v1, %lo(gHUDState)
/* 20350 8001F750 A04F0026 */  sb         $t7, 0x26($v0)
/* 20354 8001F754 8C780000 */  lw         $t8, ($v1)
/* 20358 8001F758 2401FFF7 */  addiu      $at, $zero, -9
/* 2035C 8001F75C 0301C824 */  and        $t9, $t8, $at
/* 20360 8001F760 10000020 */  b          .L8001F7E4
/* 20364 8001F764 AC790000 */   sw        $t9, ($v1)
.L8001F768:
/* 20368 8001F768 306E0001 */  andi       $t6, $v1, 1
/* 2036C 8001F76C 51C0000F */  beql       $t6, $zero, .L8001F7AC
/* 20370 8001F770 306E0002 */   andi      $t6, $v1, 2
/* 20374 8001F774 8CA20010 */  lw         $v0, 0x10($a1)
/* 20378 8001F778 90440027 */  lbu        $a0, 0x27($v0)
/* 2037C 8001F77C 28810032 */  slti       $at, $a0, 0x32
/* 20380 8001F780 10200009 */  beqz       $at, .L8001F7A8
/* 20384 8001F784 248F0001 */   addiu     $t7, $a0, 1
/* 20388 8001F788 3C038008 */  lui        $v1, %hi(gHUDState)
/* 2038C 8001F78C 2463B2E4 */  addiu      $v1, $v1, %lo(gHUDState)
/* 20390 8001F790 A04F0027 */  sb         $t7, 0x27($v0)
/* 20394 8001F794 8C780000 */  lw         $t8, ($v1)
/* 20398 8001F798 2401FFF7 */  addiu      $at, $zero, -9
/* 2039C 8001F79C 0301C824 */  and        $t9, $t8, $at
/* 203A0 8001F7A0 10000010 */  b          .L8001F7E4
/* 203A4 8001F7A4 AC790000 */   sw        $t9, ($v1)
.L8001F7A8:
/* 203A8 8001F7A8 306E0002 */  andi       $t6, $v1, 2
.L8001F7AC:
/* 203AC 8001F7AC 11C0000D */  beqz       $t6, .L8001F7E4
/* 203B0 8001F7B0 00000000 */   nop
/* 203B4 8001F7B4 8CA20010 */  lw         $v0, 0x10($a1)
/* 203B8 8001F7B8 3C038008 */  lui        $v1, %hi(gHUDState)
/* 203BC 8001F7BC 2463B2E4 */  addiu      $v1, $v1, %lo(gHUDState)
/* 203C0 8001F7C0 90440025 */  lbu        $a0, 0x25($v0)
/* 203C4 8001F7C4 28810032 */  slti       $at, $a0, 0x32
/* 203C8 8001F7C8 10200006 */  beqz       $at, .L8001F7E4
/* 203CC 8001F7CC 248F0001 */   addiu     $t7, $a0, 1
/* 203D0 8001F7D0 A04F0025 */  sb         $t7, 0x25($v0)
/* 203D4 8001F7D4 8C780000 */  lw         $t8, ($v1)
/* 203D8 8001F7D8 2401FFF7 */  addiu      $at, $zero, -9
/* 203DC 8001F7DC 0301C824 */  and        $t9, $t8, $at
/* 203E0 8001F7E0 AC790000 */  sw         $t9, ($v1)
.L8001F7E4:
/* 203E4 8001F7E4 3C038008 */  lui        $v1, %hi(gHUDState)
/* 203E8 8001F7E8 2463B2E4 */  addiu      $v1, $v1, %lo(gHUDState)
/* 203EC 8001F7EC 8C6E0000 */  lw         $t6, ($v1)
/* 203F0 8001F7F0 31CF0008 */  andi       $t7, $t6, 8
/* 203F4 8001F7F4 15E00004 */  bnez       $t7, .L8001F808
/* 203F8 8001F7F8 00002025 */   or        $a0, $zero, $zero
/* 203FC 8001F7FC 24050004 */  addiu      $a1, $zero, 4
/* 20400 8001F800 0C009A35 */  jal        func_800268D4
/* 20404 8001F804 240600FF */   addiu     $a2, $zero, 0xff
.L8001F808:
/* 20408 8001F808 8FBF002C */  lw         $ra, 0x2c($sp)
/* 2040C 8001F80C 27BD0030 */  addiu      $sp, $sp, 0x30
/* 20410 8001F810 03E00008 */  jr         $ra
/* 20414 8001F814 00000000 */   nop
