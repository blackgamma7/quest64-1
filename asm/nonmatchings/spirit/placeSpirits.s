glabel placeSpirits
/* 12E20 80012220 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 12E24 80012224 AFBF003C */  sw         $ra, 0x3c($sp)
/* 12E28 80012228 AFB40038 */  sw         $s4, 0x38($sp)
/* 12E2C 8001222C AFB30034 */  sw         $s3, 0x34($sp)
/* 12E30 80012230 AFB20030 */  sw         $s2, 0x30($sp)
/* 12E34 80012234 AFB1002C */  sw         $s1, 0x2c($sp)
/* 12E38 80012238 AFB00028 */  sw         $s0, 0x28($sp)
/* 12E3C 8001223C F7B40020 */  sdc1       $f20, 0x20($sp)
/* 12E40 80012240 3C038008 */  lui        $v1, %hi(nextMap)
/* 12E44 80012244 3C028005 */  lui        $v0, %hi(tbl_spiritLocData)
/* 12E48 80012248 3C048008 */  lui        $a0, %hi(nextSubmap)
/* 12E4C 8001224C 24844EE8 */  addiu      $a0, $a0, %lo(nextSubmap)
/* 12E50 80012250 2442C510 */  addiu      $v0, $v0, %lo(tbl_spiritLocData)
/* 12E54 80012254 8C634EE4 */  lw         $v1, %lo(nextMap)($v1)
/* 12E58 80012258 00009025 */  or         $s2, $zero, $zero
.L8001225C:
/* 12E5C 8001225C 944E0000 */  lhu        $t6, ($v0)
/* 12E60 80012260 546E0006 */  bnel       $v1, $t6, .L8001227C
/* 12E64 80012264 26520001 */   addiu     $s2, $s2, 1
/* 12E68 80012268 8C8F0000 */  lw         $t7, ($a0)
/* 12E6C 8001226C 94580002 */  lhu        $t8, 2($v0)
/* 12E70 80012270 51F80006 */  beql       $t7, $t8, .L8001228C
/* 12E74 80012274 2E41002B */   sltiu     $at, $s2, 0x2b
/* 12E78 80012278 26520001 */  addiu      $s2, $s2, 1
.L8001227C:
/* 12E7C 8001227C 2E41002B */  sltiu      $at, $s2, 0x2b
/* 12E80 80012280 1420FFF6 */  bnez       $at, .L8001225C
/* 12E84 80012284 2442000C */   addiu     $v0, $v0, 0xc
/* 12E88 80012288 2E41002B */  sltiu      $at, $s2, 0x2b
.L8001228C:
/* 12E8C 8001228C 10200027 */  beqz       $at, .L8001232C
/* 12E90 80012290 3C038008 */   lui       $v1, 0x8008
/* 12E94 80012294 94520004 */  lhu        $s2, 4($v0)
/* 12E98 80012298 3C038008 */  lui        $v1, %hi(NumSpiritsOnMap)
/* 12E9C 8001229C 24636A00 */  addiu      $v1, $v1, %lo(NumSpiritsOnMap)
/* 12EA0 800122A0 3C108008 */  lui        $s0, %hi(SpritPos)
/* 12EA4 800122A4 8C510008 */  lw         $s1, 8($v0)
/* 12EA8 800122A8 26106A08 */  addiu      $s0, $s0, %lo(SpritPos)
/* 12EAC 800122AC 12400021 */  beqz       $s2, .L80012334
/* 12EB0 800122B0 AC720000 */   sw        $s2, ($v1)
/* 12EB4 800122B4 3C138008 */  lui        $s3, %hi(D_80086AC8)
/* 12EB8 800122B8 4480A000 */  mtc1       $zero, $f20
/* 12EBC 800122BC 26736AC8 */  addiu      $s3, $s3, %lo(D_80086AC8)
/* 12EC0 800122C0 2414FFFF */  addiu      $s4, $zero, -1
.L800122C4:
/* 12EC4 800122C4 A6140012 */  sh         $s4, 0x12($s0)
/* 12EC8 800122C8 0C0049C0 */  jal        getSpiritFlag
/* 12ECC 800122CC 92240008 */   lbu       $a0, 8($s1)
/* 12ED0 800122D0 A6020010 */  sh         $v0, 0x10($s0)
/* 12ED4 800122D4 C6240000 */  lwc1       $f4, ($s1)
/* 12ED8 800122D8 4600A386 */  mov.s      $f14, $f20
/* 12EDC 800122DC 24070A00 */  addiu      $a3, $zero, 0xa00
/* 12EE0 800122E0 E6040000 */  swc1       $f4, ($s0)
/* 12EE4 800122E4 C6260004 */  lwc1       $f6, 4($s1)
/* 12EE8 800122E8 C60C0000 */  lwc1       $f12, ($s0)
/* 12EEC 800122EC 46003207 */  neg.s      $f8, $f6
/* 12EF0 800122F0 E6080008 */  swc1       $f8, 8($s0)
/* 12EF4 800122F4 8E060008 */  lw         $a2, 8($s0)
/* 12EF8 800122F8 0C003B98 */  jal        func_8000EE60
/* 12EFC 800122FC AFB30010 */   sw        $s3, 0x10($sp)
/* 12F00 80012300 C66A0004 */  lwc1       $f10, 4($s3)
/* 12F04 80012304 E614000C */  swc1       $f20, 0xc($s0)
/* 12F08 80012308 2652FFFF */  addiu      $s2, $s2, -1
/* 12F0C 8001230C E60A0004 */  swc1       $f10, 4($s0)
/* 12F10 80012310 92280008 */  lbu        $t0, 8($s1)
/* 12F14 80012314 2631000C */  addiu      $s1, $s1, 0xc
/* 12F18 80012318 26100018 */  addiu      $s0, $s0, 0x18
/* 12F1C 8001231C 1640FFE9 */  bnez       $s2, .L800122C4
/* 12F20 80012320 A208FFFC */   sb        $t0, -4($s0)
/* 12F24 80012324 10000004 */  b          .L80012338
/* 12F28 80012328 8FBF003C */   lw        $ra, 0x3c($sp)
.L8001232C:
/* 12F2C 8001232C 24636A00 */  addiu      $v1, $v1, 0x6a00
/* 12F30 80012330 AC600000 */  sw         $zero, ($v1)
.L80012334:
/* 12F34 80012334 8FBF003C */  lw         $ra, 0x3c($sp)
.L80012338:
/* 12F38 80012338 D7B40020 */  ldc1       $f20, 0x20($sp)
/* 12F3C 8001233C 8FB00028 */  lw         $s0, 0x28($sp)
/* 12F40 80012340 8FB1002C */  lw         $s1, 0x2c($sp)
/* 12F44 80012344 8FB20030 */  lw         $s2, 0x30($sp)
/* 12F48 80012348 8FB30034 */  lw         $s3, 0x34($sp)
/* 12F4C 8001234C 8FB40038 */  lw         $s4, 0x38($sp)
/* 12F50 80012350 03E00008 */  jr         $ra
/* 12F54 80012354 27BD0040 */   addiu     $sp, $sp, 0x40
