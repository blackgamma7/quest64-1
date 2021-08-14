glabel load_bossStats
/* C3DC 8000B7DC 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* C3E0 8000B7E0 AFB00020 */  sw         $s0, 0x20($sp)
/* C3E4 8000B7E4 8FB00040 */  lw         $s0, 0x40($sp)
/* C3E8 8000B7E8 AFBF002C */  sw         $ra, 0x2c($sp)
/* C3EC 8000B7EC AFB20028 */  sw         $s2, 0x28($sp)
/* C3F0 8000B7F0 AFB10024 */  sw         $s1, 0x24($sp)
/* C3F4 8000B7F4 AFA40030 */  sw         $a0, 0x30($sp)
/* C3F8 8000B7F8 AFA50034 */  sw         $a1, 0x34($sp)
/* C3FC 8000B7FC AFA60038 */  sw         $a2, 0x38($sp)
/* C400 8000B800 AFA7003C */  sw         $a3, 0x3c($sp)
/* C404 8000B804 8FAE0030 */  lw         $t6, 0x30($sp)
/* C408 8000B808 3C18803B */  lui        $t8, %hi(bossStats)
/* C40C 8000B80C 27189F20 */  addiu      $t8, $t8, %lo(bossStats)
/* C410 8000B810 000E78C0 */  sll        $t7, $t6, 3
/* C414 8000B814 01EE7823 */  subu       $t7, $t7, $t6
/* C418 8000B818 000F78C0 */  sll        $t7, $t7, 3
/* C41C 8000B81C 01F89021 */  addu       $s2, $t7, $t8
/* C420 8000B820 86590002 */  lh         $t9, 2($s2)
/* C424 8000B824 26110024 */  addiu      $s1, $s0, 0x24
/* C428 8000B828 24080001 */  addiu      $t0, $zero, 1
/* C42C 8000B82C 24090001 */  addiu      $t1, $zero, 1
/* C430 8000B830 A6190074 */  sh         $t9, 0x74($s0)
/* C434 8000B834 AFA90014 */  sw         $t1, 0x14($sp)
/* C438 8000B838 AFA80010 */  sw         $t0, 0x10($sp)
/* C43C 8000B83C 02202025 */  or         $a0, $s1, $zero
/* C440 8000B840 00002825 */  or         $a1, $zero, $zero
/* C444 8000B844 24060001 */  addiu      $a2, $zero, 1
/* C448 8000B848 0C00762C */  jal        updateAnim
/* C44C 8000B84C 00003825 */   or        $a3, $zero, $zero
/* C450 8000B850 C6440020 */  lwc1       $f4, 0x20($s2)
/* C454 8000B854 260A0090 */  addiu      $t2, $s0, 0x90
/* C458 8000B858 3C014F80 */  lui        $at, 0x4f80
/* C45C 8000B85C E6240024 */  swc1       $f4, 0x24($s1)
/* C460 8000B860 C6460018 */  lwc1       $f6, 0x18($s2)
/* C464 8000B864 AE320064 */  sw         $s2, 0x64($s1)
/* C468 8000B868 AE2A0068 */  sw         $t2, 0x68($s1)
/* C46C 8000B86C E6260028 */  swc1       $f6, 0x28($s1)
/* C470 8000B870 AE120020 */  sw         $s2, 0x20($s0)
/* C474 8000B874 964B0006 */  lhu        $t3, 6($s2)
/* C478 8000B878 A60B000A */  sh         $t3, 0xa($s0)
/* C47C 8000B87C 964C0006 */  lhu        $t4, 6($s2)
/* C480 8000B880 A6000000 */  sh         $zero, ($s0)
/* C484 8000B884 A6000008 */  sh         $zero, 8($s0)
/* C488 8000B888 A60C000C */  sh         $t4, 0xc($s0)
/* C48C 8000B88C 964D000C */  lhu        $t5, 0xc($s2)
/* C490 8000B890 448D4000 */  mtc1       $t5, $f8
/* C494 8000B894 05A10004 */  bgez       $t5, .L8000B8A8
/* C498 8000B898 46804320 */   cvt.s.w   $f12, $f8
/* C49C 8000B89C 44815000 */  mtc1       $at, $f10
/* C4A0 8000B8A0 00000000 */  nop
/* C4A4 8000B8A4 460A6300 */  add.s      $f12, $f12, $f10
.L8000B8A8:
/* C4A8 8000B8A8 0C00D3D8 */  jal        _nsqrtf
/* C4AC 8000B8AC 00000000 */   nop
/* C4B0 8000B8B0 3C018007 */  lui        $at, %hi(D_800711D0)
/* C4B4 8000B8B4 D43211D0 */  ldc1       $f18, %lo(D_800711D0)($at)
/* C4B8 8000B8B8 46000421 */  cvt.d.s    $f16, $f0
/* C4BC 8000B8BC 3C018007 */  lui        $at, %hi(D_800711D8)
/* C4C0 8000B8C0 46328102 */  mul.d      $f4, $f16, $f18
/* C4C4 8000B8C4 D42611D8 */  ldc1       $f6, %lo(D_800711D8)($at)
/* C4C8 8000B8C8 8E0E0020 */  lw         $t6, 0x20($s0)
/* C4CC 8000B8CC A6000090 */  sh         $zero, 0x90($s0)
/* C4D0 8000B8D0 3C013F80 */  lui        $at, 0x3f80
/* C4D4 8000B8D4 44818000 */  mtc1       $at, $f16
/* C4D8 8000B8D8 3C028008 */  lui        $v0, %hi(D_8007D110)
/* C4DC 8000B8DC 2442D110 */  addiu      $v0, $v0, %lo(D_8007D110)
/* C4E0 8000B8E0 46262200 */  add.d      $f8, $f4, $f6
/* C4E4 8000B8E4 44807000 */  mtc1       $zero, $f14
/* C4E8 8000B8E8 24070A00 */  addiu      $a3, $zero, 0xa00
/* C4EC 8000B8EC 462042A0 */  cvt.s.d    $f10, $f8
/* C4F0 8000B8F0 E60A0010 */  swc1       $f10, 0x10($s0)
/* C4F4 8000B8F4 95CF002A */  lhu        $t7, 0x2a($t6)
/* C4F8 8000B8F8 A60F0114 */  sh         $t7, 0x114($s0)
/* C4FC 8000B8FC 8E380064 */  lw         $t8, 0x64($s1)
/* C500 8000B900 9719000C */  lhu        $t9, 0xc($t8)
/* C504 8000B904 A6190116 */  sh         $t9, 0x116($s0)
/* C508 8000B908 8E280064 */  lw         $t0, 0x64($s1)
/* C50C 8000B90C 9509000E */  lhu        $t1, 0xe($t0)
/* C510 8000B910 E6100120 */  swc1       $f16, 0x120($s0)
/* C514 8000B914 A6090118 */  sh         $t1, 0x118($s0)
/* C518 8000B918 AFA20010 */  sw         $v0, 0x10($sp)
/* C51C 8000B91C 8FA60038 */  lw         $a2, 0x38($sp)
/* C520 8000B920 0C003B98 */  jal        func_8000EE60
/* C524 8000B924 C7AC0034 */   lwc1      $f12, 0x34($sp)
/* C528 8000B928 3C028008 */  lui        $v0, %hi(D_8007D110)
/* C52C 8000B92C 2442D110 */  addiu      $v0, $v0, %lo(D_8007D110)
/* C530 8000B930 C4520000 */  lwc1       $f18, ($v0)
/* C534 8000B934 3C0A803B */  lui        $t2, %hi(bossStats+0x188)
/* C538 8000B938 254AA0A8 */  addiu      $t2, $t2, %lo(bossStats+0x188)
/* C53C 8000B93C E6320000 */  swc1       $f18, ($s1)
/* C540 8000B940 C4440004 */  lwc1       $f4, 4($v0)
/* C544 8000B944 E6240004 */  swc1       $f4, 4($s1)
/* C548 8000B948 C4460008 */  lwc1       $f6, 8($v0)
/* C54C 8000B94C 164A000C */  bne        $s2, $t2, .L8000B980
/* C550 8000B950 E6260008 */   swc1      $f6, 8($s1)
/* C554 8000B954 960B0008 */  lhu        $t3, 8($s0)
/* C558 8000B958 3C01403E */  lui        $at, 0x403e
/* C55C 8000B95C 44818800 */  mtc1       $at, $f17
/* C560 8000B960 356C0004 */  ori        $t4, $t3, 4
/* C564 8000B964 A60C0008 */  sh         $t4, 8($s0)
/* C568 8000B968 C6280004 */  lwc1       $f8, 4($s1)
/* C56C 8000B96C 44808000 */  mtc1       $zero, $f16
/* C570 8000B970 460042A1 */  cvt.d.s    $f10, $f8
/* C574 8000B974 46305481 */  sub.d      $f18, $f10, $f16
/* C578 8000B978 46209120 */  cvt.s.d    $f4, $f18
/* C57C 8000B97C E6240004 */  swc1       $f4, 4($s1)
.L8000B980:
/* C580 8000B980 C7A6003C */  lwc1       $f6, 0x3c($sp)
/* C584 8000B984 3C0E803B */  lui        $t6, %hi(bossStats+0x188)
/* C588 8000B988 240D0001 */  addiu      $t5, $zero, 1
/* C58C 8000B98C E6260010 */  swc1       $f6, 0x10($s1)
/* C590 8000B990 C448000C */  lwc1       $f8, 0xc($v0)
/* C594 8000B994 25CEA0A8 */  addiu      $t6, $t6, %lo(bossStats+0x188)
/* C598 8000B998 35B80004 */  ori        $t8, $t5, 4
/* C59C 8000B99C E628002C */  swc1       $f8, 0x2c($s1)
/* C5A0 8000B9A0 C44A0010 */  lwc1       $f10, 0x10($v0)
/* C5A4 8000B9A4 E62A0030 */  swc1       $f10, 0x30($s1)
/* C5A8 8000B9A8 C4500014 */  lwc1       $f16, 0x14($v0)
/* C5AC 8000B9AC A62D005E */  sh         $t5, 0x5e($s1)
/* C5B0 8000B9B0 A6200060 */  sh         $zero, 0x60($s1)
/* C5B4 8000B9B4 164E0002 */  bne        $s2, $t6, .L8000B9C0
/* C5B8 8000B9B8 E6300034 */   swc1      $f16, 0x34($s1)
/* C5BC 8000B9BC A638005E */  sh         $t8, 0x5e($s1)
.L8000B9C0:
/* C5C0 8000B9C0 8FBF002C */  lw         $ra, 0x2c($sp)
/* C5C4 8000B9C4 8FB00020 */  lw         $s0, 0x20($sp)
/* C5C8 8000B9C8 8FB10024 */  lw         $s1, 0x24($sp)
/* C5CC 8000B9CC 8FB20028 */  lw         $s2, 0x28($sp)
/* C5D0 8000B9D0 03E00008 */  jr         $ra
/* C5D4 8000B9D4 27BD0030 */   addiu     $sp, $sp, 0x30
