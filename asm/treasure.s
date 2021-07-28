.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel initChestData
/* 12740 80011B40 3C038008 */  lui        $v1, %hi(collectedChestsBitfield)
/* 12744 80011B44 3C028008 */  lui        $v0, %hi(D_800869F8)
/* 12748 80011B48 244269F8 */  addiu      $v0, $v0, %lo(D_800869F8)
/* 1274C 80011B4C 246369D8 */  addiu      $v1, $v1, %lo(collectedChestsBitfield)
.L80011B50:
/* 12750 80011B50 24630004 */  addiu      $v1, $v1, 4
/* 12754 80011B54 A060FFFD */  sb         $zero, -3($v1)
/* 12758 80011B58 A060FFFE */  sb         $zero, -2($v1)
/* 1275C 80011B5C A060FFFF */  sb         $zero, -1($v1)
/* 12760 80011B60 1462FFFB */  bne        $v1, $v0, .L80011B50
/* 12764 80011B64 A060FFFC */   sb        $zero, -4($v1)
/* 12768 80011B68 03E00008 */  jr         $ra
/* 1276C 80011B6C 00000000 */   nop

glabel loadTreasureChests
/* 12770 80011B70 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 12774 80011B74 AFBF003C */  sw         $ra, 0x3c($sp)
/* 12778 80011B78 AFB30038 */  sw         $s3, 0x38($sp)
/* 1277C 80011B7C AFB20034 */  sw         $s2, 0x34($sp)
/* 12780 80011B80 AFB10030 */  sw         $s1, 0x30($sp)
/* 12784 80011B84 AFB0002C */  sw         $s0, 0x2c($sp)
/* 12788 80011B88 F7B60020 */  sdc1       $f22, 0x20($sp)
/* 1278C 80011B8C F7B40018 */  sdc1       $f20, 0x18($sp)
/* 12790 80011B90 3C038008 */  lui        $v1, %hi(nextMap)
/* 12794 80011B94 3C028005 */  lui        $v0, %hi(tbl_mapChestData)
/* 12798 80011B98 2442C470 */  addiu      $v0, $v0, %lo(tbl_mapChestData)
/* 1279C 80011B9C 8C634EE4 */  lw         $v1, %lo(nextMap)($v1)
/* 127A0 80011BA0 00009825 */  or         $s3, $zero, $zero
.L80011BA4:
/* 127A4 80011BA4 8C4E0000 */  lw         $t6, ($v0)
/* 127A8 80011BA8 506E0006 */  beql       $v1, $t6, .L80011BC4
/* 127AC 80011BAC 24010013 */   addiu     $at, $zero, 0x13
/* 127B0 80011BB0 26730001 */  addiu      $s3, $s3, 1
/* 127B4 80011BB4 2E610013 */  sltiu      $at, $s3, 0x13
/* 127B8 80011BB8 1420FFFA */  bnez       $at, .L80011BA4
/* 127BC 80011BBC 24420008 */   addiu     $v0, $v0, 8
/* 127C0 80011BC0 24010013 */  addiu      $at, $zero, 0x13
.L80011BC4:
/* 127C4 80011BC4 1261004D */  beq        $s3, $at, .L80011CFC
/* 127C8 80011BC8 3C048008 */   lui       $a0, 0x8008
/* 127CC 80011BCC 3C188008 */  lui        $t8, %hi(nextSubmap)
/* 127D0 80011BD0 8F184EE8 */  lw         $t8, %lo(nextSubmap)($t8)
/* 127D4 80011BD4 8C4F0004 */  lw         $t7, 4($v0)
/* 127D8 80011BD8 3C048008 */  lui        $a0, %hi(numChestsToDraw)
/* 127DC 80011BDC 0018C8C0 */  sll        $t9, $t8, 3
/* 127E0 80011BE0 01F91821 */  addu       $v1, $t7, $t9
/* 127E4 80011BE4 94730000 */  lhu        $s3, ($v1)
/* 127E8 80011BE8 248469A0 */  addiu      $a0, $a0, %lo(numChestsToDraw)
/* 127EC 80011BEC 3C108008 */  lui        $s0, %hi(someMapPtr)
/* 127F0 80011BF0 AC930000 */  sw         $s3, ($a0)
/* 127F4 80011BF4 8C710004 */  lw         $s1, 4($v1)
/* 127F8 80011BF8 12600042 */  beqz       $s3, .L80011D04
/* 127FC 80011BFC 261062E0 */   addiu     $s0, $s0, %lo(someMapPtr)
/* 12800 80011C00 3C018007 */  lui        $at, %hi(D_800712C0)
/* 12804 80011C04 3C128008 */  lui        $s2, %hi(D_800869B8)
/* 12808 80011C08 4480A000 */  mtc1       $zero, $f20
/* 1280C 80011C0C 265269B8 */  addiu      $s2, $s2, %lo(D_800869B8)
/* 12810 80011C10 C43612C0 */  lwc1       $f22, %lo(D_800712C0)($at)
.L80011C14:
/* 12814 80011C14 C6240000 */  lwc1       $f4, ($s1)
/* 12818 80011C18 4600A386 */  mov.s      $f14, $f20
/* 1281C 80011C1C 24070A00 */  addiu      $a3, $zero, 0xa00
/* 12820 80011C20 E6040000 */  swc1       $f4, ($s0)
/* 12824 80011C24 C6260004 */  lwc1       $f6, 4($s1)
/* 12828 80011C28 E614000C */  swc1       $f20, 0xc($s0)
/* 1282C 80011C2C E6140014 */  swc1       $f20, 0x14($s0)
/* 12830 80011C30 E6060008 */  swc1       $f6, 8($s0)
/* 12834 80011C34 C6280008 */  lwc1       $f8, 8($s1)
/* 12838 80011C38 8E060008 */  lw         $a2, 8($s0)
/* 1283C 80011C3C C60C0000 */  lwc1       $f12, ($s0)
/* 12840 80011C40 E6080010 */  swc1       $f8, 0x10($s0)
/* 12844 80011C44 0C003B98 */  jal        func_8000EE60
/* 12848 80011C48 AFB20010 */   sw        $s2, 0x10($sp)
/* 1284C 80011C4C C64A0004 */  lwc1       $f10, 4($s2)
/* 12850 80011C50 E60A0004 */  swc1       $f10, 4($s0)
/* 12854 80011C54 C650000C */  lwc1       $f16, 0xc($s2)
/* 12858 80011C58 E610002C */  swc1       $f16, 0x2c($s0)
/* 1285C 80011C5C C6520010 */  lwc1       $f18, 0x10($s2)
/* 12860 80011C60 E6120030 */  swc1       $f18, 0x30($s0)
/* 12864 80011C64 C6440014 */  lwc1       $f4, 0x14($s2)
/* 12868 80011C68 E6040034 */  swc1       $f4, 0x34($s0)
/* 1286C 80011C6C C6260014 */  lwc1       $f6, 0x14($s1)
/* 12870 80011C70 E606001C */  swc1       $f6, 0x1c($s0)
/* 12874 80011C74 C6280018 */  lwc1       $f8, 0x18($s1)
/* 12878 80011C78 E6080018 */  swc1       $f8, 0x18($s0)
/* 1287C 80011C7C C62A001C */  lwc1       $f10, 0x1c($s1)
/* 12880 80011C80 E60A0020 */  swc1       $f10, 0x20($s0)
/* 12884 80011C84 C630000C */  lwc1       $f16, 0xc($s1)
/* 12888 80011C88 E6100044 */  swc1       $f16, 0x44($s0)
/* 1288C 80011C8C C6320010 */  lwc1       $f18, 0x10($s1)
/* 12890 80011C90 E6160024 */  swc1       $f22, 0x24($s0)
/* 12894 80011C94 E612004C */  swc1       $f18, 0x4c($s0)
/* 12898 80011C98 92290020 */  lbu        $t1, 0x20($s1)
/* 1289C 80011C9C A6090062 */  sh         $t1, 0x62($s0)
/* 128A0 80011CA0 922A0021 */  lbu        $t2, 0x21($s1)
/* 128A4 80011CA4 A6000060 */  sh         $zero, 0x60($s0)
/* 128A8 80011CA8 3124FFFF */  andi       $a0, $t1, 0xffff
/* 128AC 80011CAC 0C00485C */  jal        getChestOpenedFlag
/* 128B0 80011CB0 A60A0050 */   sh        $t2, 0x50($s0)
/* 128B4 80011CB4 10400003 */  beqz       $v0, .L80011CC4
/* 128B8 80011CB8 02002025 */   or        $a0, $s0, $zero
/* 128BC 80011CBC 10000002 */  b          .L80011CC8
/* 128C0 80011CC0 24050003 */   addiu     $a1, $zero, 3
.L80011CC4:
/* 128C4 80011CC4 00002825 */  or         $a1, $zero, $zero
.L80011CC8:
/* 128C8 80011CC8 240B0001 */  addiu      $t3, $zero, 1
/* 128CC 80011CCC 240C0001 */  addiu      $t4, $zero, 1
/* 128D0 80011CD0 AFAC0014 */  sw         $t4, 0x14($sp)
/* 128D4 80011CD4 AFAB0010 */  sw         $t3, 0x10($sp)
/* 128D8 80011CD8 24060001 */  addiu      $a2, $zero, 1
/* 128DC 80011CDC 0C00762C */  jal        updateAnim
/* 128E0 80011CE0 00A03825 */   or        $a3, $a1, $zero
/* 128E4 80011CE4 2673FFFF */  addiu      $s3, $s3, -1
/* 128E8 80011CE8 2610006C */  addiu      $s0, $s0, 0x6c
/* 128EC 80011CEC 1660FFC9 */  bnez       $s3, .L80011C14
/* 128F0 80011CF0 26310024 */   addiu     $s1, $s1, 0x24
/* 128F4 80011CF4 10000004 */  b          .L80011D08
/* 128F8 80011CF8 8FBF003C */   lw        $ra, 0x3c($sp)
.L80011CFC:
/* 128FC 80011CFC 248469A0 */  addiu      $a0, $a0, 0x69a0
/* 12900 80011D00 AC800000 */  sw         $zero, ($a0)
.L80011D04:
/* 12904 80011D04 8FBF003C */  lw         $ra, 0x3c($sp)
.L80011D08:
/* 12908 80011D08 D7B40018 */  ldc1       $f20, 0x18($sp)
/* 1290C 80011D0C D7B60020 */  ldc1       $f22, 0x20($sp)
/* 12910 80011D10 8FB0002C */  lw         $s0, 0x2c($sp)
/* 12914 80011D14 8FB10030 */  lw         $s1, 0x30($sp)
/* 12918 80011D18 8FB20034 */  lw         $s2, 0x34($sp)
/* 1291C 80011D1C 8FB30038 */  lw         $s3, 0x38($sp)
/* 12920 80011D20 03E00008 */  jr         $ra
/* 12924 80011D24 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_80011D28
/* 12928 80011D28 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 1292C 80011D2C AFB50040 */  sw         $s5, 0x40($sp)
/* 12930 80011D30 0080A825 */  or         $s5, $a0, $zero
/* 12934 80011D34 AFBF0044 */  sw         $ra, 0x44($sp)
/* 12938 80011D38 AFB4003C */  sw         $s4, 0x3c($sp)
/* 1293C 80011D3C AFB30038 */  sw         $s3, 0x38($sp)
/* 12940 80011D40 AFB20034 */  sw         $s2, 0x34($sp)
/* 12944 80011D44 AFB10030 */  sw         $s1, 0x30($sp)
/* 12948 80011D48 AFB0002C */  sw         $s0, 0x2c($sp)
/* 1294C 80011D4C F7B40020 */  sdc1       $f20, 0x20($sp)
/* 12950 80011D50 3C118008 */  lui        $s1, %hi(numChestsToDraw)
/* 12954 80011D54 8E3169A0 */  lw         $s1, %lo(numChestsToDraw)($s1)
/* 12958 80011D58 3C108008 */  lui        $s0, %hi(someMapPtr)
/* 1295C 80011D5C 261062E0 */  addiu      $s0, $s0, %lo(someMapPtr)
/* 12960 80011D60 1220003B */  beqz       $s1, .L80011E50
/* 12964 80011D64 3C0140C0 */   lui       $at, 0x40c0
/* 12968 80011D68 3C14FFFF */  lui        $s4, 0xffff
/* 1296C 80011D6C 3C128011 */  lui        $s2, %hi(D_8010FDC4)
/* 12970 80011D70 4481A000 */  mtc1       $at, $f20
/* 12974 80011D74 2652FDC4 */  addiu      $s2, $s2, %lo(D_8010FDC4)
/* 12978 80011D78 36947FFF */  ori        $s4, $s4, 0x7fff
/* 1297C 80011D7C 2413000C */  addiu      $s3, $zero, 0xc
.L80011D80:
/* 12980 80011D80 96030060 */  lhu        $v1, 0x60($s0)
/* 12984 80011D84 306E8000 */  andi       $t6, $v1, 0x8000
/* 12988 80011D88 11C00013 */  beqz       $t6, .L80011DD8
/* 1298C 80011D8C 00747824 */   and       $t7, $v1, $s4
/* 12990 80011D90 25E2FFFF */  addiu      $v0, $t7, -1
/* 12994 80011D94 3058FFFF */  andi       $t8, $v0, 0xffff
/* 12998 80011D98 1700000D */  bnez       $t8, .L80011DD0
/* 1299C 80011D9C 03001025 */   or        $v0, $t8, $zero
/* 129A0 80011DA0 A6000060 */  sh         $zero, 0x60($s0)
/* 129A4 80011DA4 24190001 */  addiu      $t9, $zero, 1
/* 129A8 80011DA8 24080001 */  addiu      $t0, $zero, 1
/* 129AC 80011DAC AFA80014 */  sw         $t0, 0x14($sp)
/* 129B0 80011DB0 AFB90010 */  sw         $t9, 0x10($sp)
/* 129B4 80011DB4 02002025 */  or         $a0, $s0, $zero
/* 129B8 80011DB8 24050003 */  addiu      $a1, $zero, 3
/* 129BC 80011DBC 24060001 */  addiu      $a2, $zero, 1
/* 129C0 80011DC0 0C00762C */  jal        updateAnim
/* 129C4 80011DC4 24070003 */   addiu     $a3, $zero, 3
/* 129C8 80011DC8 10000004 */  b          .L80011DDC
/* 129CC 80011DCC 860A0052 */   lh        $t2, 0x52($s0)
.L80011DD0:
/* 129D0 80011DD0 34498000 */  ori        $t1, $v0, 0x8000
/* 129D4 80011DD4 A6090060 */  sh         $t1, 0x60($s0)
.L80011DD8:
/* 129D8 80011DD8 860A0052 */  lh         $t2, 0x52($s0)
.L80011DDC:
/* 129DC 80011DDC 00002025 */  or         $a0, $zero, $zero
/* 129E0 80011DE0 02002825 */  or         $a1, $s0, $zero
/* 129E4 80011DE4 01530019 */  multu      $t2, $s3
/* 129E8 80011DE8 02A03825 */  or         $a3, $s5, $zero
/* 129EC 80011DEC 00005812 */  mflo       $t3
/* 129F0 80011DF0 024B3021 */  addu       $a2, $s2, $t3
/* 129F4 80011DF4 0C0076CE */  jal        func_8001DB38
/* 129F8 80011DF8 00000000 */   nop
/* 129FC 80011DFC 860C0052 */  lh         $t4, 0x52($s0)
/* 12A00 80011E00 96040058 */  lhu        $a0, 0x58($s0)
/* 12A04 80011E04 02002825 */  or         $a1, $s0, $zero
/* 12A08 80011E08 01930019 */  multu      $t4, $s3
/* 12A0C 80011E0C 00006812 */  mflo       $t5
/* 12A10 80011E10 024D3021 */  addu       $a2, $s2, $t5
/* 12A14 80011E14 0C00782B */  jal        animateBrian
/* 12A18 80011E18 00000000 */   nop
/* 12A1C 80011E1C C6040030 */  lwc1       $f4, 0x30($s0)
/* 12A20 80011E20 C60C0000 */  lwc1       $f12, ($s0)
/* 12A24 80011E24 C60E0004 */  lwc1       $f14, 4($s0)
/* 12A28 80011E28 8E060008 */  lw         $a2, 8($s0)
/* 12A2C 80011E2C 8E07002C */  lw         $a3, 0x2c($s0)
/* 12A30 80011E30 E7A40010 */  swc1       $f4, 0x10($sp)
/* 12A34 80011E34 C6060034 */  lwc1       $f6, 0x34($s0)
/* 12A38 80011E38 E7B40018 */  swc1       $f20, 0x18($sp)
/* 12A3C 80011E3C 0C004618 */  jal        setShadowTrans
/* 12A40 80011E40 E7A60014 */   swc1      $f6, 0x14($sp)
/* 12A44 80011E44 2631FFFF */  addiu      $s1, $s1, -1
/* 12A48 80011E48 1620FFCD */  bnez       $s1, .L80011D80
/* 12A4C 80011E4C 2610006C */   addiu     $s0, $s0, 0x6c
.L80011E50:
/* 12A50 80011E50 8FBF0044 */  lw         $ra, 0x44($sp)
/* 12A54 80011E54 D7B40020 */  ldc1       $f20, 0x20($sp)
/* 12A58 80011E58 8FB0002C */  lw         $s0, 0x2c($sp)
/* 12A5C 80011E5C 8FB10030 */  lw         $s1, 0x30($sp)
/* 12A60 80011E60 8FB20034 */  lw         $s2, 0x34($sp)
/* 12A64 80011E64 8FB30038 */  lw         $s3, 0x38($sp)
/* 12A68 80011E68 8FB4003C */  lw         $s4, 0x3c($sp)
/* 12A6C 80011E6C 8FB50040 */  lw         $s5, 0x40($sp)
/* 12A70 80011E70 03E00008 */  jr         $ra
/* 12A74 80011E74 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_80011E78
/* 12A78 80011E78 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 12A7C 80011E7C AFB2004C */  sw         $s2, 0x4c($sp)
/* 12A80 80011E80 00809025 */  or         $s2, $a0, $zero
/* 12A84 80011E84 AFBF0054 */  sw         $ra, 0x54($sp)
/* 12A88 80011E88 AFB30050 */  sw         $s3, 0x50($sp)
/* 12A8C 80011E8C AFB10048 */  sw         $s1, 0x48($sp)
/* 12A90 80011E90 AFB00044 */  sw         $s0, 0x44($sp)
/* 12A94 80011E94 F7BE0038 */  sdc1       $f30, 0x38($sp)
/* 12A98 80011E98 F7BC0030 */  sdc1       $f28, 0x30($sp)
/* 12A9C 80011E9C F7BA0028 */  sdc1       $f26, 0x28($sp)
/* 12AA0 80011EA0 F7B80020 */  sdc1       $f24, 0x20($sp)
/* 12AA4 80011EA4 F7B60018 */  sdc1       $f22, 0x18($sp)
/* 12AA8 80011EA8 F7B40010 */  sdc1       $f20, 0x10($sp)
/* 12AAC 80011EAC 3C138008 */  lui        $s3, %hi(numChestsToDraw)
/* 12AB0 80011EB0 8E7369A0 */  lw         $s3, %lo(numChestsToDraw)($s3)
/* 12AB4 80011EB4 3C108008 */  lui        $s0, %hi(someMapPtr)
/* 12AB8 80011EB8 261062E0 */  addiu      $s0, $s0, %lo(someMapPtr)
/* 12ABC 80011EBC 12600057 */  beqz       $s3, .L8001201C
/* 12AC0 80011EC0 3C018007 */   lui       $at, %hi(D_800712C8)
/* 12AC4 80011EC4 D43C12C8 */  ldc1       $f28, %lo(D_800712C8)($at)
/* 12AC8 80011EC8 3C018007 */  lui        $at, %hi(D_800712D0)
/* 12ACC 80011ECC D43A12D0 */  ldc1       $f26, %lo(D_800712D0)($at)
/* 12AD0 80011ED0 3C018007 */  lui        $at, %hi(D_800712D8)
/* 12AD4 80011ED4 3C118008 */  lui        $s1, %hi(D_800869A8)
/* 12AD8 80011ED8 4480F000 */  mtc1       $zero, $f30
/* 12ADC 80011EDC 263169A8 */  addiu      $s1, $s1, %lo(D_800869A8)
/* 12AE0 80011EE0 D43812D8 */  ldc1       $f24, %lo(D_800712D8)($at)
.L80011EE4:
/* 12AE4 80011EE4 0C00485C */  jal        getChestOpenedFlag
/* 12AE8 80011EE8 96040062 */   lhu       $a0, 0x62($s0)
/* 12AEC 80011EEC 54400049 */  bnel       $v0, $zero, .L80012014
/* 12AF0 80011EF0 2673FFFF */   addiu     $s3, $s3, -1
/* 12AF4 80011EF4 C6440010 */  lwc1       $f4, 0x10($s2)
/* 12AF8 80011EF8 C606001C */  lwc1       $f6, 0x1c($s0)
/* 12AFC 80011EFC 3C018007 */  lui        $at, 0x8007
/* 12B00 80011F00 46062081 */  sub.s      $f2, $f4, $f6
/* 12B04 80011F04 46001021 */  cvt.d.s    $f0, $f2
/* 12B08 80011F08 4620C03C */  c.lt.d     $f24, $f0
/* 12B0C 80011F0C 00000000 */  nop
/* 12B10 80011F10 45000005 */  bc1f       .L80011F28
/* 12B14 80011F14 00000000 */   nop
/* 12B18 80011F18 46380201 */  sub.d      $f8, $f0, $f24
/* 12B1C 80011F1C 462040A0 */  cvt.s.d    $f2, $f8
/* 12B20 80011F20 10000009 */  b          .L80011F48
/* 12B24 80011F24 46001021 */   cvt.d.s   $f0, $f2
.L80011F28:
/* 12B28 80011F28 D42A12E0 */  ldc1       $f10, 0x12e0($at)
/* 12B2C 80011F2C 462A003C */  c.lt.d     $f0, $f10
/* 12B30 80011F30 00000000 */  nop
/* 12B34 80011F34 45020005 */  bc1fl      .L80011F4C
/* 12B38 80011F38 463A003C */   c.lt.d    $f0, $f26
/* 12B3C 80011F3C 46380400 */  add.d      $f16, $f0, $f24
/* 12B40 80011F40 462080A0 */  cvt.s.d    $f2, $f16
/* 12B44 80011F44 46001021 */  cvt.d.s    $f0, $f2
.L80011F48:
/* 12B48 80011F48 463A003C */  c.lt.d     $f0, $f26
.L80011F4C:
/* 12B4C 80011F4C 00000000 */  nop
/* 12B50 80011F50 45020030 */  bc1fl      .L80012014
/* 12B54 80011F54 2673FFFF */   addiu     $s3, $s3, -1
/* 12B58 80011F58 4620E03C */  c.lt.d     $f28, $f0
/* 12B5C 80011F5C 00000000 */  nop
/* 12B60 80011F60 4502002C */  bc1fl      .L80012014
/* 12B64 80011F64 2673FFFF */   addiu     $s3, $s3, -1
/* 12B68 80011F68 C6520000 */  lwc1       $f18, ($s2)
/* 12B6C 80011F6C C6040044 */  lwc1       $f4, 0x44($s0)
/* 12B70 80011F70 C6460008 */  lwc1       $f6, 8($s2)
/* 12B74 80011F74 C608004C */  lwc1       $f8, 0x4c($s0)
/* 12B78 80011F78 46049501 */  sub.s      $f20, $f18, $f4
/* 12B7C 80011F7C 3C014396 */  lui        $at, 0x4396
/* 12B80 80011F80 44812000 */  mtc1       $at, $f4
/* 12B84 80011F84 46083581 */  sub.s      $f22, $f6, $f8
/* 12B88 80011F88 4614A282 */  mul.s      $f10, $f20, $f20
/* 12B8C 80011F8C 02202825 */  or         $a1, $s1, $zero
/* 12B90 80011F90 4616B402 */  mul.s      $f16, $f22, $f22
/* 12B94 80011F94 46105480 */  add.s      $f18, $f10, $f16
/* 12B98 80011F98 4604903C */  c.lt.s     $f18, $f4
/* 12B9C 80011F9C 00000000 */  nop
/* 12BA0 80011FA0 4502001C */  bc1fl      .L80012014
/* 12BA4 80011FA4 2673FFFF */   addiu     $s3, $s3, -1
/* 12BA8 80011FA8 E6340000 */  swc1       $f20, ($s1)
/* 12BAC 80011FAC E6360004 */  swc1       $f22, 4($s1)
/* 12BB0 80011FB0 0C008CBD */  jal        func_800232F4
/* 12BB4 80011FB4 C60C001C */   lwc1      $f12, 0x1c($s0)
/* 12BB8 80011FB8 C6340000 */  lwc1       $f20, ($s1)
/* 12BBC 80011FBC C6360004 */  lwc1       $f22, 4($s1)
/* 12BC0 80011FC0 461EA03C */  c.lt.s     $f20, $f30
/* 12BC4 80011FC4 00000000 */  nop
/* 12BC8 80011FC8 45020003 */  bc1fl      .L80011FD8
/* 12BCC 80011FCC 461EB03C */   c.lt.s    $f22, $f30
/* 12BD0 80011FD0 4600A507 */  neg.s      $f20, $f20
/* 12BD4 80011FD4 461EB03C */  c.lt.s     $f22, $f30
.L80011FD8:
/* 12BD8 80011FD8 00000000 */  nop
/* 12BDC 80011FDC 45020003 */  bc1fl      .L80011FEC
/* 12BE0 80011FE0 C6060018 */   lwc1      $f6, 0x18($s0)
/* 12BE4 80011FE4 4600B587 */  neg.s      $f22, $f22
/* 12BE8 80011FE8 C6060018 */  lwc1       $f6, 0x18($s0)
.L80011FEC:
/* 12BEC 80011FEC 4606A03C */  c.lt.s     $f20, $f6
/* 12BF0 80011FF0 00000000 */  nop
/* 12BF4 80011FF4 45020007 */  bc1fl      .L80012014
/* 12BF8 80011FF8 2673FFFF */   addiu     $s3, $s3, -1
/* 12BFC 80011FFC C6080020 */  lwc1       $f8, 0x20($s0)
/* 12C00 80012000 4608B03C */  c.lt.s     $f22, $f8
/* 12C04 80012004 00000000 */  nop
/* 12C08 80012008 45010004 */  bc1t       .L8001201C
/* 12C0C 8001200C 00000000 */   nop
/* 12C10 80012010 2673FFFF */  addiu      $s3, $s3, -1
.L80012014:
/* 12C14 80012014 1660FFB3 */  bnez       $s3, .L80011EE4
/* 12C18 80012018 2610006C */   addiu     $s0, $s0, 0x6c
.L8001201C:
/* 12C1C 8001201C 16600002 */  bnez       $s3, .L80012028
/* 12C20 80012020 D7B40010 */   ldc1      $f20, 0x10($sp)
/* 12C24 80012024 00008025 */  or         $s0, $zero, $zero
.L80012028:
/* 12C28 80012028 02001025 */  or         $v0, $s0, $zero
/* 12C2C 8001202C 8FBF0054 */  lw         $ra, 0x54($sp)
/* 12C30 80012030 D7B60018 */  ldc1       $f22, 0x18($sp)
/* 12C34 80012034 D7B80020 */  ldc1       $f24, 0x20($sp)
/* 12C38 80012038 D7BA0028 */  ldc1       $f26, 0x28($sp)
/* 12C3C 8001203C D7BC0030 */  ldc1       $f28, 0x30($sp)
/* 12C40 80012040 D7BE0038 */  ldc1       $f30, 0x38($sp)
/* 12C44 80012044 8FB00044 */  lw         $s0, 0x44($sp)
/* 12C48 80012048 8FB10048 */  lw         $s1, 0x48($sp)
/* 12C4C 8001204C 8FB2004C */  lw         $s2, 0x4c($sp)
/* 12C50 80012050 8FB30050 */  lw         $s3, 0x50($sp)
/* 12C54 80012054 03E00008 */  jr         $ra
/* 12C58 80012058 27BD0058 */   addiu     $sp, $sp, 0x58

glabel openChest
/* 12C5C 8001205C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 12C60 80012060 AFBF001C */  sw         $ra, 0x1c($sp)
/* 12C64 80012064 AFA40020 */  sw         $a0, 0x20($sp)
/* 12C68 80012068 8FAE0020 */  lw         $t6, 0x20($sp)
/* 12C6C 8001206C 0C00486C */  jal        setChestOpenedFlag
/* 12C70 80012070 95C40062 */   lhu       $a0, 0x62($t6)
/* 12C74 80012074 8FA40020 */  lw         $a0, 0x20($sp)
/* 12C78 80012078 340F805B */  ori        $t7, $zero, 0x805b
/* 12C7C 8001207C 24180001 */  addiu      $t8, $zero, 1
/* 12C80 80012080 24190001 */  addiu      $t9, $zero, 1
/* 12C84 80012084 A48F0060 */  sh         $t7, 0x60($a0)
/* 12C88 80012088 AFB90014 */  sw         $t9, 0x14($sp)
/* 12C8C 8001208C AFB80010 */  sw         $t8, 0x10($sp)
/* 12C90 80012090 24050001 */  addiu      $a1, $zero, 1
/* 12C94 80012094 24060001 */  addiu      $a2, $zero, 1
/* 12C98 80012098 0C00762C */  jal        updateAnim
/* 12C9C 8001209C 24070002 */   addiu     $a3, $zero, 2
/* 12CA0 800120A0 2404001A */  addiu      $a0, $zero, 0x1a
/* 12CA4 800120A4 24050008 */  addiu      $a1, $zero, 8
/* 12CA8 800120A8 0C009A35 */  jal        func_800268D4
/* 12CAC 800120AC 240600FF */   addiu     $a2, $zero, 0xff
/* 12CB0 800120B0 8FBF001C */  lw         $ra, 0x1c($sp)
/* 12CB4 800120B4 27BD0020 */  addiu      $sp, $sp, 0x20
/* 12CB8 800120B8 03E00008 */  jr         $ra
/* 12CBC 800120BC 00000000 */   nop

glabel printItemObtainedMsg
/* 12CC0 800120C0 3C068008 */  lui        $a2, %hi(CurrTextBoxMessage)
/* 12CC4 800120C4 24C6C570 */  addiu      $a2, $a2, %lo(CurrTextBoxMessage)
/* 12CC8 800120C8 2407007F */  addiu      $a3, $zero, 0x7f
/* 12CCC 800120CC 240800FF */  addiu      $t0, $zero, 0xff
/* 12CD0 800120D0 00047080 */  sll        $t6, $a0, 2
/* 12CD4 800120D4 3C02803B */  lui        $v0, %hi(itemNamePtrs)
/* 12CD8 800120D8 004E1021 */  addu       $v0, $v0, $t6
/* 12CDC 800120DC 8C429954 */  lw         $v0, %lo(itemNamePtrs)($v0)
/* 12CE0 800120E0 240F00E0 */  addiu      $t7, $zero, 0xe0
/* 12CE4 800120E4 A0C70000 */  sb         $a3, ($a2)
/* 12CE8 800120E8 A0CF0001 */  sb         $t7, 1($a2)
/* 12CEC 800120EC A0C70002 */  sb         $a3, 2($a2)
/* 12CF0 800120F0 A0C70003 */  sb         $a3, 3($a2)
/* 12CF4 800120F4 90450000 */  lbu        $a1, ($v0)
/* 12CF8 800120F8 3C038008 */  lui        $v1, %hi(itemGetMsg)
/* 12CFC 800120FC 2463C574 */  addiu      $v1, $v1, %lo(itemGetMsg)
/* 12D00 80012100 11050007 */  beq        $t0, $a1, .L80012120
/* 12D04 80012104 3C048005 */   lui       $a0, 0x8005
/* 12D08 80012108 A0650000 */  sb         $a1, ($v1)
.L8001210C:
/* 12D0C 8001210C 90450001 */  lbu        $a1, 1($v0)
/* 12D10 80012110 24630001 */  addiu      $v1, $v1, 1
/* 12D14 80012114 24420001 */  addiu      $v0, $v0, 1
/* 12D18 80012118 5505FFFC */  bnel       $t0, $a1, .L8001210C
/* 12D1C 8001211C A0650000 */   sb        $a1, ($v1)
.L80012120:
/* 12D20 80012120 2482C460 */  addiu      $v0, $a0, -0x3ba0
/* 12D24 80012124 90580000 */  lbu        $t8, ($v0)
/* 12D28 80012128 3C198005 */  lui        $t9, %hi(msg_obtained)
/* 12D2C 8001212C 2739C460 */  addiu      $t9, $t9, %lo(msg_obtained)
/* 12D30 80012130 51180009 */  beql       $t0, $t8, .L80012158
/* 12D34 80012134 90490000 */   lbu       $t1, ($v0)
/* 12D38 80012138 93250000 */  lbu        $a1, ($t9)
/* 12D3C 8001213C A0650000 */  sb         $a1, ($v1)
.L80012140:
/* 12D40 80012140 90450001 */  lbu        $a1, 1($v0)
/* 12D44 80012144 24630001 */  addiu      $v1, $v1, 1
/* 12D48 80012148 24420001 */  addiu      $v0, $v0, 1
/* 12D4C 8001214C 5505FFFC */  bnel       $t0, $a1, .L80012140
/* 12D50 80012150 A0650000 */   sb        $a1, ($v1)
/* 12D54 80012154 90490000 */  lbu        $t1, ($v0)
.L80012158:
/* 12D58 80012158 240A00FF */  addiu      $t2, $zero, 0xff
/* 12D5C 8001215C 3C018008 */  lui        $at, %hi(localNPC_Names)
/* 12D60 80012160 A0690000 */  sb         $t1, ($v1)
/* 12D64 80012164 A02AC970 */  sb         $t2, %lo(localNPC_Names)($at)
/* 12D68 80012168 03E00008 */  jr         $ra
/* 12D6C 8001216C 00000000 */   nop

glabel getChestOpenedFlag
/* 12D70 80012170 AFA40000 */  sw         $a0, ($sp)
/* 12D74 80012174 308EFFFF */  andi       $t6, $a0, 0xffff
/* 12D78 80012178 01C02025 */  or         $a0, $t6, $zero
/* 12D7C 8001217C 308F0007 */  andi       $t7, $a0, 7
/* 12D80 80012180 3C188005 */  lui        $t8, %hi(binTbl)
/* 12D84 80012184 0004C8C3 */  sra        $t9, $a0, 3
/* 12D88 80012188 3C088008 */  lui        $t0, %hi(collectedChestsBitfield)
/* 12D8C 8001218C 01194021 */  addu       $t0, $t0, $t9
/* 12D90 80012190 030FC021 */  addu       $t8, $t8, $t7
/* 12D94 80012194 9318D740 */  lbu        $t8, %lo(binTbl)($t8)
/* 12D98 80012198 910869D8 */  lbu        $t0, %lo(collectedChestsBitfield)($t0)
/* 12D9C 8001219C 03081024 */  and        $v0, $t8, $t0
/* 12DA0 800121A0 304900FF */  andi       $t1, $v0, 0xff
/* 12DA4 800121A4 01201025 */  or         $v0, $t1, $zero
/* 12DA8 800121A8 03E00008 */  jr         $ra
/* 12DAC 800121AC 00000000 */   nop

glabel setChestOpenedFlag
/* 12DB0 800121B0 AFA40000 */  sw         $a0, ($sp)
/* 12DB4 800121B4 308EFFFF */  andi       $t6, $a0, 0xffff
/* 12DB8 800121B8 01C02025 */  or         $a0, $t6, $zero
/* 12DBC 800121BC 3C188008 */  lui        $t8, %hi(collectedChestsBitfield)
/* 12DC0 800121C0 271869D8 */  addiu      $t8, $t8, %lo(collectedChestsBitfield)
/* 12DC4 800121C4 000478C3 */  sra        $t7, $a0, 3
/* 12DC8 800121C8 30880007 */  andi       $t0, $a0, 7
/* 12DCC 800121CC 3C098005 */  lui        $t1, %hi(binTbl)
/* 12DD0 800121D0 01284821 */  addu       $t1, $t1, $t0
/* 12DD4 800121D4 01F81821 */  addu       $v1, $t7, $t8
/* 12DD8 800121D8 90790000 */  lbu        $t9, ($v1)
/* 12DDC 800121DC 9129D740 */  lbu        $t1, %lo(binTbl)($t1)
/* 12DE0 800121E0 03295025 */  or         $t2, $t9, $t1
/* 12DE4 800121E4 A06A0000 */  sb         $t2, ($v1)
/* 12DE8 800121E8 03E00008 */  jr         $ra
/* 12DEC 800121EC 00000000 */   nop
