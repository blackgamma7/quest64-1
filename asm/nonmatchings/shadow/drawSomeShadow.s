glabel setShadowTrans
/* 12460 80011860 3C048008 */  lui        $a0, %hi(ShadowTally)
/* 12464 80011864 248462D0 */  addiu      $a0, $a0, %lo(ShadowTally)
/* 12468 80011868 AFA60008 */  sw         $a2, 8($sp)
/* 1246C 8001186C AFA7000C */  sw         $a3, 0xc($sp)
/* 12470 80011870 8C820000 */  lw         $v0, ($a0)
/* 12474 80011874 3C0F8008 */  lui        $t7, %hi(someShadowX)
/* 12478 80011878 25EF5BD0 */  addiu      $t7, $t7, %lo(someShadowX)
/* 1247C 8001187C 2C410040 */  sltiu      $at, $v0, 0x40
/* 12480 80011880 10200012 */  beqz       $at, .L800118CC
/* 12484 80011884 000270C0 */   sll       $t6, $v0, 3
/* 12488 80011888 01C27023 */  subu       $t6, $t6, $v0
/* 1248C 8001188C 000E7080 */  sll        $t6, $t6, 2
/* 12490 80011890 24580001 */  addiu      $t8, $v0, 1
/* 12494 80011894 AC980000 */  sw         $t8, ($a0)
/* 12498 80011898 01CF1821 */  addu       $v1, $t6, $t7
/* 1249C 8001189C E46C0000 */  swc1       $f12, ($v1)
/* 124A0 800118A0 E46E0004 */  swc1       $f14, 4($v1)
/* 124A4 800118A4 C7A40008 */  lwc1       $f4, 8($sp)
/* 124A8 800118A8 E4640008 */  swc1       $f4, 8($v1)
/* 124AC 800118AC C7A6000C */  lwc1       $f6, 0xc($sp)
/* 124B0 800118B0 E466000C */  swc1       $f6, 0xc($v1)
/* 124B4 800118B4 C7A80010 */  lwc1       $f8, 0x10($sp)
/* 124B8 800118B8 E4680010 */  swc1       $f8, 0x10($v1)
/* 124BC 800118BC C7AA0014 */  lwc1       $f10, 0x14($sp)
/* 124C0 800118C0 E46A0014 */  swc1       $f10, 0x14($v1)
/* 124C4 800118C4 C7B00018 */  lwc1       $f16, 0x18($sp)
/* 124C8 800118C8 E4700018 */  swc1       $f16, 0x18($v1)
.L800118CC:
/* 124CC 800118CC 03E00008 */  jr         $ra
/* 124D0 800118D0 00000000 */   nop
