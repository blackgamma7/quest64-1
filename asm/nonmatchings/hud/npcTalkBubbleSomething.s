glabel npcTalkBubbleSomething
/* 20418 8001F818 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 2041C 8001F81C AFBF0024 */  sw         $ra, 0x24($sp)
/* 20420 8001F820 3C0E8008 */  lui        $t6, %hi(npcNum)
/* 20424 8001F824 8DCEBA74 */  lw         $t6, %lo(npcNum)($t6)
/* 20428 8001F828 3C198008 */  lui        $t9, %hi(npcData)
/* 2042C 8001F82C 2739BD30 */  addiu      $t9, $t9, %lo(npcData)
/* 20430 8001F830 000E7940 */  sll        $t7, $t6, 5
/* 20434 8001F834 01EE7821 */  addu       $t7, $t7, $t6
/* 20438 8001F838 000F7880 */  sll        $t7, $t7, 2
/* 2043C 8001F83C 25F8FF90 */  addiu      $t8, $t7, -0x70
/* 20440 8001F840 03191021 */  addu       $v0, $t8, $t9
/* 20444 8001F844 C4440004 */  lwc1       $f4, 4($v0)
/* 20448 8001F848 3C01402C */  lui        $at, 0x402c
/* 2044C 8001F84C 44814800 */  mtc1       $at, $f9
/* 20450 8001F850 44804000 */  mtc1       $zero, $f8
/* 20454 8001F854 460021A1 */  cvt.d.s    $f6, $f4
/* 20458 8001F858 3C0A8009 */  lui        $t2, %hi(D_8008C644)
/* 2045C 8001F85C 46283280 */  add.d      $f10, $f6, $f8
/* 20460 8001F860 254AC644 */  addiu      $t2, $t2, %lo(D_8008C644)
/* 20464 8001F864 C44C0000 */  lwc1       $f12, ($v0)
/* 20468 8001F868 8C460008 */  lw         $a2, 8($v0)
/* 2046C 8001F86C AFAA0010 */  sw         $t2, 0x10($sp)
/* 20470 8001F870 462053A0 */  cvt.s.d    $f14, $f10
/* 20474 8001F874 0C00904F */  jal        func_8002413C
/* 20478 8001F878 27A70034 */   addiu     $a3, $sp, 0x34
/* 2047C 8001F87C 3C098009 */  lui        $t1, %hi(D_8008C644)
/* 20480 8001F880 10400019 */  beqz       $v0, .L8001F8E8
/* 20484 8001F884 2529C644 */   addiu     $t1, $t1, %lo(D_8008C644)
/* 20488 8001F888 3C088008 */  lui        $t0, %hi(DLPtr)
/* 2048C 8001F88C 2508B2FC */  addiu      $t0, $t0, %lo(DLPtr)
/* 20490 8001F890 8D030000 */  lw         $v1, ($t0)
/* 20494 8001F894 3C0D803B */  lui        $t5, %hi(DL_NPCTalkBubbleAndPal)
/* 20498 8001F898 25AD8B90 */  addiu      $t5, $t5, %lo(DL_NPCTalkBubbleAndPal)
/* 2049C 8001F89C 246B0008 */  addiu      $t3, $v1, 8
/* 204A0 8001F8A0 AD0B0000 */  sw         $t3, ($t0)
/* 204A4 8001F8A4 3C0C0600 */  lui        $t4, 0x600
/* 204A8 8001F8A8 AC6C0000 */  sw         $t4, ($v1)
/* 204AC 8001F8AC AC6D0004 */  sw         $t5, 4($v1)
/* 204B0 8001F8B0 8D250000 */  lw         $a1, ($t1)
/* 204B4 8001F8B4 240E0400 */  addiu      $t6, $zero, 0x400
/* 204B8 8001F8B8 240F0400 */  addiu      $t7, $zero, 0x400
/* 204BC 8001F8BC AFAF001C */  sw         $t7, 0x1c($sp)
/* 204C0 8001F8C0 AFAE0018 */  sw         $t6, 0x18($sp)
/* 204C4 8001F8C4 8FA40034 */  lw         $a0, 0x34($sp)
/* 204C8 8001F8C8 24060040 */  addiu      $a2, $zero, 0x40
/* 204CC 8001F8CC 2407001D */  addiu      $a3, $zero, 0x1d
/* 204D0 8001F8D0 AFA00010 */  sw         $zero, 0x10($sp)
/* 204D4 8001F8D4 AFA00014 */  sw         $zero, 0x14($sp)
/* 204D8 8001F8D8 0C0083E3 */  jal        func_80020F8C
/* 204DC 8001F8DC 24A5FFE2 */   addiu     $a1, $a1, -0x1e
/* 204E0 8001F8E0 10000004 */  b          .L8001F8F4
/* 204E4 8001F8E4 8FBF0024 */   lw        $ra, 0x24($sp)
.L8001F8E8:
/* 204E8 8001F8E8 241800F0 */  addiu      $t8, $zero, 0xf0
/* 204EC 8001F8EC AD380000 */  sw         $t8, ($t1)
/* 204F0 8001F8F0 8FBF0024 */  lw         $ra, 0x24($sp)
.L8001F8F4:
/* 204F4 8001F8F4 27BD0038 */  addiu      $sp, $sp, 0x38
/* 204F8 8001F8F8 03E00008 */  jr         $ra
/* 204FC 8001F8FC 00000000 */   nop
