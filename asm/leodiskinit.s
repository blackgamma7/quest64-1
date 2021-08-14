.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel osLeoDiskInit
/* 3E250 8003D650 240E0002 */  addiu      $t6, $zero, 2
/* 3E254 8003D654 3C018009 */  lui        $at, %hi(LeoDiskHandle+0x4)
/* 3E258 8003D658 A02E5564 */  sb         $t6, %lo(LeoDiskHandle+0x4)($at)
/* 3E25C 8003D65C 3C018009 */  lui        $at, %hi(LeoDiskHandle+0xC)
/* 3E260 8003D660 3C0FA500 */  lui        $t7, 0xa500
/* 3E264 8003D664 AC2F556C */  sw         $t7, %lo(LeoDiskHandle+0xC)($at)
/* 3E268 8003D668 3C018009 */  lui        $at, %hi(LeoDiskHandle+0x5)
/* 3E26C 8003D66C 24180003 */  addiu      $t8, $zero, 3
/* 3E270 8003D670 A0385565 */  sb         $t8, %lo(LeoDiskHandle+0x5)($at)
/* 3E274 8003D674 3C018009 */  lui        $at, %hi(LeoDiskHandle+0x8)
/* 3E278 8003D678 24190006 */  addiu      $t9, $zero, 6
/* 3E27C 8003D67C A0395568 */  sb         $t9, %lo(LeoDiskHandle+0x8)($at)
/* 3E280 8003D680 3C018009 */  lui        $at, %hi(LeoDiskHandle+0x6)
/* 3E284 8003D684 24080006 */  addiu      $t0, $zero, 6
/* 3E288 8003D688 24090002 */  addiu      $t1, $zero, 2
/* 3E28C 8003D68C A0285566 */  sb         $t0, %lo(LeoDiskHandle+0x6)($at)
/* 3E290 8003D690 A0295567 */  sb         $t1, 0x5567($at)
/* 3E294 8003D694 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 3E298 8003D698 3C018009 */  lui        $at, %hi(LeoDiskHandle+0x9)
/* 3E29C 8003D69C 240A0001 */  addiu      $t2, $zero, 1
/* 3E2A0 8003D6A0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3E2A4 8003D6A4 A02A5569 */  sb         $t2, %lo(LeoDiskHandle+0x9)($at)
/* 3E2A8 8003D6A8 240B0003 */  addiu      $t3, $zero, 3
/* 3E2AC 8003D6AC 3C0CA460 */  lui        $t4, %hi(PI_BSD_DOM2_LAT_REG)
/* 3E2B0 8003D6B0 AD8B0024 */  sw         $t3, %lo(PI_BSD_DOM2_LAT_REG)($t4)
/* 3E2B4 8003D6B4 3C0D8009 */  lui        $t5, %hi(LeoDiskHandle+0x8)
/* 3E2B8 8003D6B8 91AD5568 */  lbu        $t5, %lo(LeoDiskHandle+0x8)($t5)
/* 3E2BC 8003D6BC 3C0EA460 */  lui        $t6, %hi(PI_BSD_DOM2_PWD_REG)
/* 3E2C0 8003D6C0 3C0F8009 */  lui        $t7, %hi(LeoDiskHandle+0x6)
/* 3E2C4 8003D6C4 ADCD0028 */  sw         $t5, %lo(PI_BSD_DOM2_PWD_REG)($t6)
/* 3E2C8 8003D6C8 91EF5566 */  lbu        $t7, %lo(LeoDiskHandle+0x6)($t7)
/* 3E2CC 8003D6CC 3C18A460 */  lui        $t8, %hi(PI_BSD_DOM2_PGS_REG)
/* 3E2D0 8003D6D0 3C198009 */  lui        $t9, %hi(LeoDiskHandle+0x7)
/* 3E2D4 8003D6D4 AF0F002C */  sw         $t7, %lo(PI_BSD_DOM2_PGS_REG)($t8)
/* 3E2D8 8003D6D8 93395567 */  lbu        $t9, %lo(LeoDiskHandle+0x7)($t9)
/* 3E2DC 8003D6DC 3C08A460 */  lui        $t0, %hi(PI_BSD_DOM2_RLS_REG)
/* 3E2E0 8003D6E0 3C048009 */  lui        $a0, %hi(LeoDiskHandle)
/* 3E2E4 8003D6E4 3C018009 */  lui        $at, %hi(LeoDiskHandle+0x10)
/* 3E2E8 8003D6E8 24845560 */  addiu      $a0, $a0, %lo(LeoDiskHandle)
/* 3E2EC 8003D6EC AD190030 */  sw         $t9, %lo(PI_BSD_DOM2_RLS_REG)($t0)
/* 3E2F0 8003D6F0 AC205570 */  sw         $zero, %lo(LeoDiskHandle+0x10)($at)
/* 3E2F4 8003D6F4 24840014 */  addiu      $a0, $a0, 0x14
/* 3E2F8 8003D6F8 0C00F50C */  jal        bzero
/* 3E2FC 8003D6FC 24050060 */   addiu     $a1, $zero, 0x60
/* 3E300 8003D700 0C00F534 */  jal        __osDisableInt
/* 3E304 8003D704 00000000 */   nop
/* 3E308 8003D708 3C098007 */  lui        $t1, %hi(__osPiTable)
/* 3E30C 8003D70C 8D29F43C */  lw         $t1, %lo(__osPiTable)($t1)
/* 3E310 8003D710 3C018009 */  lui        $at, %hi(LeoDiskHandle)
/* 3E314 8003D714 3C0A8009 */  lui        $t2, %hi(LeoDiskHandle)
/* 3E318 8003D718 AC295560 */  sw         $t1, %lo(LeoDiskHandle)($at)
/* 3E31C 8003D71C 3C018007 */  lui        $at, %hi(__osPiTable)
/* 3E320 8003D720 254A5560 */  addiu      $t2, $t2, %lo(LeoDiskHandle)
/* 3E324 8003D724 AC2AF43C */  sw         $t2, %lo(__osPiTable)($at)
/* 3E328 8003D728 AFA2001C */  sw         $v0, 0x1c($sp)
/* 3E32C 8003D72C 3C018009 */  lui        $at, %hi(__osDiskHandle)
/* 3E330 8003D730 AC2A55D4 */  sw         $t2, %lo(__osDiskHandle)($at)
/* 3E334 8003D734 0C00F53C */  jal        __osRestoreInt
/* 3E338 8003D738 8FA4001C */   lw        $a0, 0x1c($sp)
/* 3E33C 8003D73C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3E340 8003D740 3C028009 */  lui        $v0, %hi(LeoDiskHandle)
/* 3E344 8003D744 24425560 */  addiu      $v0, $v0, %lo(LeoDiskHandle)
/* 3E348 8003D748 03E00008 */  jr         $ra
/* 3E34C 8003D74C 27BD0020 */   addiu     $sp, $sp, 0x20
