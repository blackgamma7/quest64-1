glabel useWings
/* 23090 80022490 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 23094 80022494 AFB00030 */  sw         $s0, 0x30($sp)
/* 23098 80022498 3C02803B */  lui        $v0, 0x803b
/* 2309C 8002249C 3C03803B */  lui        $v1, 0x803b
/* 230A0 800224A0 3C088009 */  lui        $t0, %hi(D_8008D010)
/* 230A4 800224A4 3C0A8008 */  lui        $t2, %hi(temp_CurrMap)
/* 230A8 800224A8 3C0B8008 */  lui        $t3, %hi(gHUDState)
/* 230AC 800224AC 256BB2E4 */  addiu      $t3, $t3, %lo(gHUDState)
/* 230B0 800224B0 254A5368 */  addiu      $t2, $t2, %lo(temp_CurrMap)
/* 230B4 800224B4 2508D010 */  addiu      $t0, $t0, %lo(D_8008D010)
/* 230B8 800224B8 24639A68 */  addiu      $v1, $v1, -0x6598
/* 230BC 800224BC 24429190 */  addiu      $v0, $v0, -0x6e70
/* 230C0 800224C0 00A08025 */  or         $s0, $a1, $zero
/* 230C4 800224C4 AFBF0034 */  sw         $ra, 0x34($sp)
/* 230C8 800224C8 AFA40038 */  sw         $a0, 0x38($sp)
/* 230CC 800224CC 8D6E0000 */  lw         $t6, ($t3)
/* 230D0 800224D0 24180016 */  addiu      $t8, $zero, 0x16
/* 230D4 800224D4 3C018008 */  lui        $at, %hi(transitionFadeTimer)
/* 230D8 800224D8 35CF0080 */  ori        $t7, $t6, 0x80
/* 230DC 800224DC AD6F0000 */  sw         $t7, ($t3)
/* 230E0 800224E0 AC38B2EC */  sw         $t8, %lo(transitionFadeTimer)($at)
/* 230E4 800224E4 86190004 */  lh         $t9, 4($s0)
/* 230E8 800224E8 3C018008 */  lui        $at, 0x8008
/* 230EC 800224EC 00196100 */  sll        $t4, $t9, 4
/* 230F0 800224F0 004C6821 */  addu       $t5, $v0, $t4
/* 230F4 800224F4 95AE0000 */  lhu        $t6, ($t5)
/* 230F8 800224F8 240DFFFF */  addiu      $t5, $zero, -1
/* 230FC 800224FC AD4E0000 */  sw         $t6, ($t2)
/* 23100 80022500 860F0004 */  lh         $t7, 4($s0)
/* 23104 80022504 000FC100 */  sll        $t8, $t7, 4
/* 23108 80022508 0058C821 */  addu       $t9, $v0, $t8
/* 2310C 8002250C 972C0002 */  lhu        $t4, 2($t9)
/* 23110 80022510 AD4D0008 */  sw         $t5, 8($t2)
/* 23114 80022514 AD4C0004 */  sw         $t4, 4($t2)
/* 23118 80022518 860E0004 */  lh         $t6, 4($s0)
/* 2311C 8002251C 000E7900 */  sll        $t7, $t6, 4
/* 23120 80022520 004FC021 */  addu       $t8, $v0, $t7
/* 23124 80022524 C7040004 */  lwc1       $f4, 4($t8)
/* 23128 80022528 E424BA40 */  swc1       $f4, -0x45c0($at)
/* 2312C 8002252C 86190004 */  lh         $t9, 4($s0)
/* 23130 80022530 3C018008 */  lui        $at, 0x8008
/* 23134 80022534 00196100 */  sll        $t4, $t9, 4
/* 23138 80022538 004C6821 */  addu       $t5, $v0, $t4
/* 2313C 8002253C C5A60008 */  lwc1       $f6, 8($t5)
/* 23140 80022540 24190108 */  addiu      $t9, $zero, 0x108
/* 23144 80022544 240C0001 */  addiu      $t4, $zero, 1
/* 23148 80022548 E426BA44 */  swc1       $f6, -0x45bc($at)
/* 2314C 8002254C 860E0004 */  lh         $t6, 4($s0)
/* 23150 80022550 3C018008 */  lui        $at, 0x8008
/* 23154 80022554 44803000 */  mtc1       $zero, $f6
/* 23158 80022558 000E7900 */  sll        $t7, $t6, 4
/* 2315C 8002255C 004FC021 */  addu       $t8, $v0, $t7
/* 23160 80022560 C708000C */  lwc1       $f8, 0xc($t8)
/* 23164 80022564 8FB80038 */  lw         $t8, 0x38($sp)
/* 23168 80022568 3C0F803B */  lui        $t7, 0x803b
/* 2316C 8002256C E428BA48 */  swc1       $f8, -0x45b8($at)
/* 23170 80022570 3C018008 */  lui        $at, %hi(sideOfDoorEnteredFlag)
/* 23174 80022574 AC39BA4C */  sw         $t9, %lo(sideOfDoorEnteredFlag)($at)
/* 23178 80022578 3C018008 */  lui        $at, %hi(brianAnimationOverride_UNSET)
/* 2317C 8002257C A420BABE */  sh         $zero, %lo(brianAnimationOverride_UNSET)($at)
/* 23180 80022580 3C018008 */  lui        $at, %hi(transitionFadeType)
/* 23184 80022584 A42CB2F0 */  sh         $t4, %lo(transitionFadeType)($at)
/* 23188 80022588 3C013F80 */  lui        $at, 0x3f80
/* 2318C 8002258C C46A0018 */  lwc1       $f10, 0x18($v1)
/* 23190 80022590 C470001C */  lwc1       $f16, 0x1c($v1)
/* 23194 80022594 44819000 */  mtc1       $at, $f18
/* 23198 80022598 846D0010 */  lh         $t5, 0x10($v1)
/* 2319C 8002259C E50A0000 */  swc1       $f10, ($t0)
/* 231A0 800225A0 E5100004 */  swc1       $f16, 4($t0)
/* 231A4 800225A4 E5120008 */  swc1       $f18, 8($t0)
/* 231A8 800225A8 C7040008 */  lwc1       $f4, 8($t8)
/* 231AC 800225AC 8F070004 */  lw         $a3, 4($t8)
/* 231B0 800225B0 8F060000 */  lw         $a2, ($t8)
/* 231B4 800225B4 000D7080 */  sll        $t6, $t5, 2
/* 231B8 800225B8 01CD7021 */  addu       $t6, $t6, $t5
/* 231BC 800225BC 000E7040 */  sll        $t6, $t6, 1
/* 231C0 800225C0 25EF9A54 */  addiu      $t7, $t7, -0x65ac
/* 231C4 800225C4 01CF4821 */  addu       $t1, $t6, $t7
/* 231C8 800225C8 AFA90018 */  sw         $t1, 0x18($sp)
/* 231CC 800225CC AFA8001C */  sw         $t0, 0x1c($sp)
/* 231D0 800225D0 94650014 */  lhu        $a1, 0x14($v1)
/* 231D4 800225D4 94640012 */  lhu        $a0, 0x12($v1)
/* 231D8 800225D8 E7A60014 */  swc1       $f6, 0x14($sp)
/* 231DC 800225DC AFB80020 */  sw         $t8, 0x20($sp)
/* 231E0 800225E0 0C005DFE */  jal        func_800177F8
/* 231E4 800225E4 E7A40010 */   swc1      $f4, 0x10($sp)
/* 231E8 800225E8 00002025 */  or         $a0, $zero, $zero
/* 231EC 800225EC 2405003B */  addiu      $a1, $zero, 0x3b
/* 231F0 800225F0 0C009A35 */  jal        func_800268D4
/* 231F4 800225F4 240600FF */   addiu     $a2, $zero, 0xff
/* 231F8 800225F8 8FBF0034 */  lw         $ra, 0x34($sp)
/* 231FC 800225FC 8FB00030 */  lw         $s0, 0x30($sp)
/* 23200 80022600 27BD0038 */  addiu      $sp, $sp, 0x38
/* 23204 80022604 03E00008 */  jr         $ra
/* 23208 80022608 00000000 */   nop
