glabel uncalled_FUN_800125f4
/* 131F4 800125F4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 131F8 800125F8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 131FC 800125FC 908E003C */  lbu        $t6, 0x3c($a0)
/* 13200 80012600 3C014F80 */  lui        $at, 0x4f80
/* 13204 80012604 448E2000 */  mtc1       $t6, $f4
/* 13208 80012608 05C10004 */  bgez       $t6, .L8001261C
/* 1320C 8001260C 468021A0 */   cvt.s.w   $f6, $f4
/* 13210 80012610 44814000 */  mtc1       $at, $f8
/* 13214 80012614 00000000 */  nop
/* 13218 80012618 46083180 */  add.s      $f6, $f6, $f8
.L8001261C:
/* 1321C 8001261C 3C018007 */  lui        $at, %hi(D_800712F8)
/* 13220 80012620 D43012F8 */  ldc1       $f16, %lo(D_800712F8)($at)
/* 13224 80012624 460032A1 */  cvt.d.s    $f10, $f6
/* 13228 80012628 AFA40018 */  sw         $a0, 0x18($sp)
/* 1322C 8001262C 46305482 */  mul.d      $f18, $f10, $f16
/* 13230 80012630 0C00D5A0 */  jal        sinf
/* 13234 80012634 46209320 */   cvt.s.d   $f12, $f18
/* 13238 80012638 8FA40018 */  lw         $a0, 0x18($sp)
/* 1323C 8001263C 3C018007 */  lui        $at, 0x8007
/* 13240 80012640 46000121 */  cvt.d.s    $f4, $f0
/* 13244 80012644 908F003C */  lbu        $t7, 0x3c($a0)
/* 13248 80012648 C4900030 */  lwc1       $f16, 0x30($a0)
/* 1324C 8001264C C48A0018 */  lwc1       $f10, 0x18($a0)
/* 13250 80012650 25F80004 */  addiu      $t8, $t7, 4
/* 13254 80012654 A098003C */  sb         $t8, 0x3c($a0)
/* 13258 80012658 D4281300 */  ldc1       $f8, 0x1300($at)
/* 1325C 8001265C 94990000 */  lhu        $t9, ($a0)
/* 13260 80012660 3C0A8005 */  lui        $t2, 0x8005
/* 13264 80012664 46282182 */  mul.d      $f6, $f4, $f8
/* 13268 80012668 C488001C */  lwc1       $f8, 0x1c($a0)
/* 1326C 8001266C 33280001 */  andi       $t0, $t9, 1
/* 13270 80012670 3C068008 */  lui        $a2, %hi(DLPtr)
/* 13274 80012674 00084880 */  sll        $t1, $t0, 2
/* 13278 80012678 254ACBE8 */  addiu      $t2, $t2, -0x3418
/* 1327C 8001267C 24C6B2FC */  addiu      $a2, $a2, %lo(DLPtr)
/* 13280 80012680 012A1021 */  addu       $v0, $t1, $t2
/* 13284 80012684 462030A0 */  cvt.s.d    $f2, $f6
/* 13288 80012688 C4860034 */  lwc1       $f6, 0x34($a0)
/* 1328C 8001268C 46028480 */  add.s      $f18, $f16, $f2
/* 13290 80012690 46064400 */  add.s      $f16, $f8, $f6
/* 13294 80012694 46125100 */  add.s      $f4, $f10, $f18
/* 13298 80012698 C4920038 */  lwc1       $f18, 0x38($a0)
/* 1329C 8001269C C48A0020 */  lwc1       $f10, 0x20($a0)
/* 132A0 800126A0 E490001C */  swc1       $f16, 0x1c($a0)
/* 132A4 800126A4 E4840018 */  swc1       $f4, 0x18($a0)
/* 132A8 800126A8 46029100 */  add.s      $f4, $f18, $f2
/* 132AC 800126AC 46045200 */  add.s      $f8, $f10, $f4
/* 132B0 800126B0 E4880020 */  swc1       $f8, 0x20($a0)
/* 132B4 800126B4 8CC50000 */  lw         $a1, ($a2)
/* 132B8 800126B8 3C0CFB00 */  lui        $t4, 0xfb00
/* 132BC 800126BC 24AB0008 */  addiu      $t3, $a1, 8
/* 132C0 800126C0 ACCB0000 */  sw         $t3, ($a2)
/* 132C4 800126C4 ACAC0000 */  sw         $t4, ($a1)
/* 132C8 800126C8 90580000 */  lbu        $t8, ($v0)
/* 132CC 800126CC 904A0001 */  lbu        $t2, 1($v0)
/* 132D0 800126D0 904E0003 */  lbu        $t6, 3($v0)
/* 132D4 800126D4 904F0002 */  lbu        $t7, 2($v0)
/* 132D8 800126D8 0018CE00 */  sll        $t9, $t8, 0x18
/* 132DC 800126DC 000A5C00 */  sll        $t3, $t2, 0x10
/* 132E0 800126E0 01D94025 */  or         $t0, $t6, $t9
/* 132E4 800126E4 010B6025 */  or         $t4, $t0, $t3
/* 132E8 800126E8 000FC200 */  sll        $t8, $t7, 8
/* 132EC 800126EC 01987025 */  or         $t6, $t4, $t8
/* 132F0 800126F0 ACAE0004 */  sw         $t6, 4($a1)
/* 132F4 800126F4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 132F8 800126F8 03E00008 */  jr         $ra
/* 132FC 800126FC 27BD0018 */   addiu     $sp, $sp, 0x18
