glabel rotatingModelsSomething
/* 23F60 80023360 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 23F64 80023364 F7B40018 */  sdc1       $f20, 0x18($sp)
/* 23F68 80023368 AFB00020 */  sw         $s0, 0x20($sp)
/* 23F6C 8002336C 4485A000 */  mtc1       $a1, $f20
/* 23F70 80023370 00808025 */  or         $s0, $a0, $zero
/* 23F74 80023374 AFBF0024 */  sw         $ra, 0x24($sp)
/* 23F78 80023378 AFA60058 */  sw         $a2, 0x58($sp)
/* 23F7C 8002337C AFA7005C */  sw         $a3, 0x5c($sp)
/* 23F80 80023380 0C00D5A0 */  jal        sinf
/* 23F84 80023384 4600A306 */   mov.s     $f12, $f20
/* 23F88 80023388 E7A0004C */  swc1       $f0, 0x4c($sp)
/* 23F8C 8002338C 0C00D87C */  jal        cosf
/* 23F90 80023390 4600A306 */   mov.s     $f12, $f20
/* 23F94 80023394 46000506 */  mov.s      $f20, $f0
/* 23F98 80023398 0C00D5A0 */  jal        sinf
/* 23F9C 8002339C C7AC0058 */   lwc1      $f12, 0x58($sp)
/* 23FA0 800233A0 C7AC0058 */  lwc1       $f12, 0x58($sp)
/* 23FA4 800233A4 0C00D87C */  jal        cosf
/* 23FA8 800233A8 E7A00048 */   swc1      $f0, 0x48($sp)
/* 23FAC 800233AC C7AC005C */  lwc1       $f12, 0x5c($sp)
/* 23FB0 800233B0 0C00D5A0 */  jal        sinf
/* 23FB4 800233B4 E7A0003C */   swc1      $f0, 0x3c($sp)
/* 23FB8 800233B8 C7AC005C */  lwc1       $f12, 0x5c($sp)
/* 23FBC 800233BC 0C00D87C */  jal        cosf
/* 23FC0 800233C0 E7A00044 */   swc1      $f0, 0x44($sp)
/* 23FC4 800233C4 C7B20044 */  lwc1       $f18, 0x44($sp)
/* 23FC8 800233C8 C7A4004C */  lwc1       $f4, 0x4c($sp)
/* 23FCC 800233CC C7AE003C */  lwc1       $f14, 0x3c($sp)
/* 23FD0 800233D0 C7B00048 */  lwc1       $f16, 0x48($sp)
/* 23FD4 800233D4 46049302 */  mul.s      $f12, $f18, $f4
/* 23FD8 800233D8 C7A20060 */  lwc1       $f2, 0x60($sp)
/* 23FDC 800233DC 3C013F80 */  lui        $at, 0x3f80
/* 23FE0 800233E0 460E0182 */  mul.s      $f6, $f0, $f14
/* 23FE4 800233E4 00000000 */  nop
/* 23FE8 800233E8 46106202 */  mul.s      $f8, $f12, $f16
/* 23FEC 800233EC 46083280 */  add.s      $f10, $f6, $f8
/* 23FF0 800233F0 46025102 */  mul.s      $f4, $f10, $f2
/* 23FF4 800233F4 46008287 */  neg.s      $f10, $f16
/* 23FF8 800233F8 46149182 */  mul.s      $f6, $f18, $f20
/* 23FFC 800233FC E6040000 */  swc1       $f4, ($s0)
/* 24000 80023400 46023202 */  mul.s      $f8, $f6, $f2
/* 24004 80023404 E6080004 */  swc1       $f8, 4($s0)
/* 24008 80023408 E7AA0034 */  swc1       $f10, 0x34($sp)
/* 2400C 8002340C C7A40034 */  lwc1       $f4, 0x34($sp)
/* 24010 80023410 46002182 */  mul.s      $f6, $f4, $f0
/* 24014 80023414 00000000 */  nop
/* 24018 80023418 460E6202 */  mul.s      $f8, $f12, $f14
/* 2401C 8002341C 46083280 */  add.s      $f10, $f6, $f8
/* 24020 80023420 44803000 */  mtc1       $zero, $f6
/* 24024 80023424 46009207 */  neg.s      $f8, $f18
/* 24028 80023428 46025102 */  mul.s      $f4, $f10, $f2
/* 2402C 8002342C E606000C */  swc1       $f6, 0xc($s0)
/* 24030 80023430 E6040008 */  swc1       $f4, 8($s0)
/* 24034 80023434 C7AA004C */  lwc1       $f10, 0x4c($sp)
/* 24038 80023438 E7A80030 */  swc1       $f8, 0x30($sp)
/* 2403C 8002343C C7A60030 */  lwc1       $f6, 0x30($sp)
/* 24040 80023440 460A0102 */  mul.s      $f4, $f0, $f10
/* 24044 80023444 E7A4002C */  swc1       $f4, 0x2c($sp)
/* 24048 80023448 460E3202 */  mul.s      $f8, $f6, $f14
/* 2404C 8002344C C7AA002C */  lwc1       $f10, 0x2c($sp)
/* 24050 80023450 46105102 */  mul.s      $f4, $f10, $f16
/* 24054 80023454 46044180 */  add.s      $f6, $f8, $f4
/* 24058 80023458 46023282 */  mul.s      $f10, $f6, $f2
/* 2405C 8002345C 00000000 */  nop
/* 24060 80023460 46140202 */  mul.s      $f8, $f0, $f20
/* 24064 80023464 E60A0010 */  swc1       $f10, 0x10($s0)
/* 24068 80023468 46024102 */  mul.s      $f4, $f8, $f2
/* 2406C 8002346C E6040014 */  swc1       $f4, 0x14($s0)
/* 24070 80023470 C7AA0034 */  lwc1       $f10, 0x34($sp)
/* 24074 80023474 C7A60030 */  lwc1       $f6, 0x30($sp)
/* 24078 80023478 C7A4002C */  lwc1       $f4, 0x2c($sp)
/* 2407C 8002347C 460A3202 */  mul.s      $f8, $f6, $f10
/* 24080 80023480 00000000 */  nop
/* 24084 80023484 460E2182 */  mul.s      $f6, $f4, $f14
/* 24088 80023488 46064280 */  add.s      $f10, $f8, $f6
/* 2408C 8002348C 44804000 */  mtc1       $zero, $f8
/* 24090 80023490 46025102 */  mul.s      $f4, $f10, $f2
/* 24094 80023494 E608001C */  swc1       $f8, 0x1c($s0)
/* 24098 80023498 4610A182 */  mul.s      $f6, $f20, $f16
/* 2409C 8002349C E6040018 */  swc1       $f4, 0x18($s0)
/* 240A0 800234A0 46023282 */  mul.s      $f10, $f6, $f2
/* 240A4 800234A4 E60A0020 */  swc1       $f10, 0x20($s0)
/* 240A8 800234A8 C7A4004C */  lwc1       $f4, 0x4c($sp)
/* 240AC 800234AC 46002207 */  neg.s      $f8, $f4
/* 240B0 800234B0 46024182 */  mul.s      $f6, $f8, $f2
/* 240B4 800234B4 44804000 */  mtc1       $zero, $f8
/* 240B8 800234B8 460EA282 */  mul.s      $f10, $f20, $f14
/* 240BC 800234BC E608002C */  swc1       $f8, 0x2c($s0)
/* 240C0 800234C0 44814000 */  mtc1       $at, $f8
/* 240C4 800234C4 E6060024 */  swc1       $f6, 0x24($s0)
/* 240C8 800234C8 46025102 */  mul.s      $f4, $f10, $f2
/* 240CC 800234CC E6040028 */  swc1       $f4, 0x28($s0)
/* 240D0 800234D0 C7A60064 */  lwc1       $f6, 0x64($sp)
/* 240D4 800234D4 E6060030 */  swc1       $f6, 0x30($s0)
/* 240D8 800234D8 C7AA0068 */  lwc1       $f10, 0x68($sp)
/* 240DC 800234DC E60A0034 */  swc1       $f10, 0x34($s0)
/* 240E0 800234E0 C7A4006C */  lwc1       $f4, 0x6c($sp)
/* 240E4 800234E4 E608003C */  swc1       $f8, 0x3c($s0)
/* 240E8 800234E8 E6040038 */  swc1       $f4, 0x38($s0)
/* 240EC 800234EC 8FBF0024 */  lw         $ra, 0x24($sp)
/* 240F0 800234F0 D7B40018 */  ldc1       $f20, 0x18($sp)
/* 240F4 800234F4 8FB00020 */  lw         $s0, 0x20($sp)
/* 240F8 800234F8 03E00008 */  jr         $ra
/* 240FC 800234FC 27BD0050 */   addiu     $sp, $sp, 0x50
