glabel func_80023210
/* 23E10 80023210 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 23E14 80023214 F7B40010 */  sdc1       $f20, 0x10($sp)
/* 23E18 80023218 44800000 */  mtc1       $zero, $f0
/* 23E1C 8002321C 46006506 */  mov.s      $f20, $f12
/* 23E20 80023220 AFBF001C */  sw         $ra, 0x1c($sp)
/* 23E24 80023224 46007032 */  c.eq.s     $f14, $f0
/* 23E28 80023228 00000000 */  nop
/* 23E2C 8002322C 4502000D */  bc1fl      .L80023264
/* 23E30 80023230 460E003C */   c.lt.s    $f0, $f14
/* 23E34 80023234 4614003E */  c.le.s     $f0, $f20
/* 23E38 80023238 3C018007 */  lui        $at, 0x8007
/* 23E3C 8002323C 45000005 */  bc1f       .L80023254
/* 23E40 80023240 00000000 */   nop
/* 23E44 80023244 3C018007 */  lui        $at, %hi(D_800716E0)
/* 23E48 80023248 D42416E0 */  ldc1       $f4, %lo(D_800716E0)($at)
/* 23E4C 8002324C 10000023 */  b          .L800232DC
/* 23E50 80023250 462020A0 */   cvt.s.d   $f2, $f4
.L80023254:
/* 23E54 80023254 D42616E8 */  ldc1       $f6, 0x16e8($at)
/* 23E58 80023258 10000020 */  b          .L800232DC
/* 23E5C 8002325C 462030A0 */   cvt.s.d   $f2, $f6
/* 23E60 80023260 460E003C */  c.lt.s     $f0, $f14
.L80023264:
/* 23E64 80023264 00000000 */  nop
/* 23E68 80023268 45020006 */  bc1fl      .L80023284
/* 23E6C 8002326C 4600703C */   c.lt.s    $f14, $f0
/* 23E70 80023270 0C008C0A */  jal        func_80023028
/* 23E74 80023274 460EA303 */   div.s     $f12, $f20, $f14
/* 23E78 80023278 10000018 */  b          .L800232DC
/* 23E7C 8002327C 46000086 */   mov.s     $f2, $f0
/* 23E80 80023280 4600703C */  c.lt.s     $f14, $f0
.L80023284:
/* 23E84 80023284 00000000 */  nop
/* 23E88 80023288 4500000D */  bc1f       .L800232C0
/* 23E8C 8002328C 00000000 */   nop
/* 23E90 80023290 4600A03E */  c.le.s     $f20, $f0
/* 23E94 80023294 00000000 */  nop
/* 23E98 80023298 45000009 */  bc1f       .L800232C0
/* 23E9C 8002329C 00000000 */   nop
/* 23EA0 800232A0 0C008C0A */  jal        func_80023028
/* 23EA4 800232A4 460EA303 */   div.s     $f12, $f20, $f14
/* 23EA8 800232A8 3C018007 */  lui        $at, %hi(D_800716F0)
/* 23EAC 800232AC D42A16F0 */  ldc1       $f10, %lo(D_800716F0)($at)
/* 23EB0 800232B0 46000221 */  cvt.d.s    $f8, $f0
/* 23EB4 800232B4 462A4401 */  sub.d      $f16, $f8, $f10
/* 23EB8 800232B8 10000008 */  b          .L800232DC
/* 23EBC 800232BC 462080A0 */   cvt.s.d   $f2, $f16
.L800232C0:
/* 23EC0 800232C0 0C008C0A */  jal        func_80023028
/* 23EC4 800232C4 460EA303 */   div.s     $f12, $f20, $f14
/* 23EC8 800232C8 3C018007 */  lui        $at, %hi(D_800716F8)
/* 23ECC 800232CC D42416F8 */  ldc1       $f4, %lo(D_800716F8)($at)
/* 23ED0 800232D0 460004A1 */  cvt.d.s    $f18, $f0
/* 23ED4 800232D4 46249180 */  add.d      $f6, $f18, $f4
/* 23ED8 800232D8 462030A0 */  cvt.s.d    $f2, $f6
.L800232DC:
/* 23EDC 800232DC 46001006 */  mov.s      $f0, $f2
/* 23EE0 800232E0 8FBF001C */  lw         $ra, 0x1c($sp)
/* 23EE4 800232E4 D7B40010 */  ldc1       $f20, 0x10($sp)
/* 23EE8 800232E8 27BD0020 */  addiu      $sp, $sp, 0x20
/* 23EEC 800232EC 03E00008 */  jr         $ra
/* 23EF0 800232F0 00000000 */   nop
