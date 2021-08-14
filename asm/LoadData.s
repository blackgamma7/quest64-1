.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel loadData
/* 24E60 80024260 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 24E64 80024264 AFB30030 */  sw         $s3, 0x30($sp)
/* 24E68 80024268 AFB2002C */  sw         $s2, 0x2c($sp)
/* 24E6C 8002426C AFB10028 */  sw         $s1, 0x28($sp)
/* 24E70 80024270 00C08825 */  or         $s1, $a2, $zero
/* 24E74 80024274 00A09025 */  or         $s2, $a1, $zero
/* 24E78 80024278 00809825 */  or         $s3, $a0, $zero
/* 24E7C 8002427C AFBF003C */  sw         $ra, 0x3c($sp)
/* 24E80 80024280 AFB50038 */  sw         $s5, 0x38($sp)
/* 24E84 80024284 AFB40034 */  sw         $s4, 0x34($sp)
/* 24E88 80024288 AFB00024 */  sw         $s0, 0x24($sp)
/* 24E8C 8002428C 02402025 */  or         $a0, $s2, $zero
/* 24E90 80024290 0C00D8F8 */  jal        osInvalICache
/* 24E94 80024294 02202825 */   or        $a1, $s1, $zero
/* 24E98 80024298 02402025 */  or         $a0, $s2, $zero
/* 24E9C 8002429C 0C00D918 */  jal        osInvalDCache
/* 24EA0 800242A0 02202825 */   or        $a1, $s1, $zero
/* 24EA4 800242A4 12200019 */  beqz       $s1, .L8002430C
/* 24EA8 800242A8 3C158009 */   lui       $s5, %hi(messageBuffer)
/* 24EAC 800242AC 3C148008 */  lui        $s4, %hi(messageQueue)
/* 24EB0 800242B0 2694B320 */  addiu      $s4, $s4, %lo(messageQueue)
/* 24EB4 800242B4 26B5D070 */  addiu      $s5, $s5, %lo(messageBuffer)
.L800242B8:
/* 24EB8 800242B8 2A214001 */  slti       $at, $s1, 0x4001
/* 24EBC 800242BC 14200003 */  bnez       $at, .L800242CC
/* 24EC0 800242C0 02A02025 */   or        $a0, $s5, $zero
/* 24EC4 800242C4 10000002 */  b          .L800242D0
/* 24EC8 800242C8 24104000 */   addiu     $s0, $zero, 0x4000
.L800242CC:
/* 24ECC 800242CC 02208025 */  or         $s0, $s1, $zero
.L800242D0:
/* 24ED0 800242D0 00002825 */  or         $a1, $zero, $zero
/* 24ED4 800242D4 00003025 */  or         $a2, $zero, $zero
/* 24ED8 800242D8 02603825 */  or         $a3, $s3, $zero
/* 24EDC 800242DC AFB20010 */  sw         $s2, 0x10($sp)
/* 24EE0 800242E0 AFB00014 */  sw         $s0, 0x14($sp)
/* 24EE4 800242E4 0C00D944 */  jal        osPiStartDma
/* 24EE8 800242E8 AFB40018 */   sw        $s4, 0x18($sp)
/* 24EEC 800242EC 02802025 */  or         $a0, $s4, $zero
/* 24EF0 800242F0 00002825 */  or         $a1, $zero, $zero
/* 24EF4 800242F4 0C00D008 */  jal        osRecvMesg
/* 24EF8 800242F8 24060001 */   addiu     $a2, $zero, 1
/* 24EFC 800242FC 02308823 */  subu       $s1, $s1, $s0
/* 24F00 80024300 02709821 */  addu       $s3, $s3, $s0
/* 24F04 80024304 1620FFEC */  bnez       $s1, .L800242B8
/* 24F08 80024308 02509021 */   addu      $s2, $s2, $s0
.L8002430C:
/* 24F0C 8002430C 8FBF003C */  lw         $ra, 0x3c($sp)
/* 24F10 80024310 8FB00024 */  lw         $s0, 0x24($sp)
/* 24F14 80024314 8FB10028 */  lw         $s1, 0x28($sp)
/* 24F18 80024318 8FB2002C */  lw         $s2, 0x2c($sp)
/* 24F1C 8002431C 8FB30030 */  lw         $s3, 0x30($sp)
/* 24F20 80024320 8FB40034 */  lw         $s4, 0x34($sp)
/* 24F24 80024324 8FB50038 */  lw         $s5, 0x38($sp)
/* 24F28 80024328 03E00008 */  jr         $ra
/* 24F2C 8002432C 27BD0040 */   addiu     $sp, $sp, 0x40
