glabel BossDeath
/* C768 8000BB68 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* C76C 8000BB6C AFBF0014 */  sw         $ra, 0x14($sp)
/* C770 8000BB70 00802825 */  or         $a1, $a0, $zero
/* C774 8000BB74 24010007 */  addiu      $at, $zero, 7
/* C778 8000BB78 14A1004E */  bne        $a1, $at, .L8000BCB4
/* C77C 8000BB7C 00057080 */   sll       $t6, $a1, 2
/* C780 8000BB80 3C02803B */  lui        $v0, %hi(tbl_bossNamePtrs)
/* C784 8000BB84 004E1021 */  addu       $v0, $v0, $t6
/* C788 8000BB88 3C038008 */  lui        $v1, %hi(localNPC_Names)
/* C78C 8000BB8C 8C42ABD8 */  lw         $v0, %lo(tbl_bossNamePtrs)($v0)
/* C790 8000BB90 2463C970 */  addiu      $v1, $v1, %lo(localNPC_Names)
/* C794 8000BB94 24040020 */  addiu      $a0, $zero, 0x20
.L8000BB98:
/* C798 8000BB98 904F0000 */  lbu        $t7, ($v0)
/* C79C 8000BB9C 2484FFFF */  addiu      $a0, $a0, -1
/* C7A0 8000BBA0 24630001 */  addiu      $v1, $v1, 1
/* C7A4 8000BBA4 24420001 */  addiu      $v0, $v0, 1
/* C7A8 8000BBA8 1480FFFB */  bnez       $a0, .L8000BB98
/* C7AC 8000BBAC A06FFFFF */   sb        $t7, -1($v1)
/* C7B0 8000BBB0 3C02803B */  lui        $v0, %hi(MammonDeathText)
/* C7B4 8000BBB4 3C038008 */  lui        $v1, %hi(CurrTextBoxMessage)
/* C7B8 8000BBB8 2442AAB4 */  addiu      $v0, $v0, %lo(MammonDeathText)
/* C7BC 8000BBBC 2463C570 */  addiu      $v1, $v1, %lo(CurrTextBoxMessage)
/* C7C0 8000BBC0 24040400 */  addiu      $a0, $zero, 0x400
.L8000BBC4:
/* C7C4 8000BBC4 90580000 */  lbu        $t8, ($v0)
/* C7C8 8000BBC8 2484FFFC */  addiu      $a0, $a0, -4
/* C7CC 8000BBCC 24630004 */  addiu      $v1, $v1, 4
/* C7D0 8000BBD0 A078FFFC */  sb         $t8, -4($v1)
/* C7D4 8000BBD4 90590001 */  lbu        $t9, 1($v0)
/* C7D8 8000BBD8 24420004 */  addiu      $v0, $v0, 4
/* C7DC 8000BBDC A079FFFD */  sb         $t9, -3($v1)
/* C7E0 8000BBE0 9048FFFE */  lbu        $t0, -2($v0)
/* C7E4 8000BBE4 A068FFFE */  sb         $t0, -2($v1)
/* C7E8 8000BBE8 9049FFFF */  lbu        $t1, -1($v0)
/* C7EC 8000BBEC 1480FFF5 */  bnez       $a0, .L8000BBC4
/* C7F0 8000BBF0 A069FFFF */   sb        $t1, -1($v1)
/* C7F4 8000BBF4 0C00B9DA */  jal        printMsg
/* C7F8 8000BBF8 24040001 */   addiu     $a0, $zero, 1
/* C7FC 8000BBFC 3C028008 */  lui        $v0, %hi(brianAction)
/* C800 8000BC00 3C048008 */  lui        $a0, %hi(gHUDState)
/* C804 8000BC04 2484B2E4 */  addiu      $a0, $a0, %lo(gHUDState)
/* C808 8000BC08 2442BAB8 */  addiu      $v0, $v0, %lo(brianAction)
/* C80C 8000BC0C 944A0008 */  lhu        $t2, 8($v0)
/* C810 8000BC10 8C8C0000 */  lw         $t4, ($a0)
/* C814 8000BC14 240E0031 */  addiu      $t6, $zero, 0x31
/* C818 8000BC18 354B0010 */  ori        $t3, $t2, 0x10
/* C81C 8000BC1C 358D0080 */  ori        $t5, $t4, 0x80
/* C820 8000BC20 A44B0008 */  sh         $t3, 8($v0)
/* C824 8000BC24 AC8D0000 */  sw         $t5, ($a0)
/* C828 8000BC28 3C018008 */  lui        $at, %hi(transitionFadeTimer)
/* C82C 8000BC2C AC2EB2EC */  sw         $t6, %lo(transitionFadeTimer)($at)
/* C830 8000BC30 3C018008 */  lui        $at, %hi(transitionFadeType)
/* C834 8000BC34 240F0003 */  addiu      $t7, $zero, 3
/* C838 8000BC38 A42FB2F0 */  sh         $t7, %lo(transitionFadeType)($at)
/* C83C 8000BC3C 3C018008 */  lui        $at, %hi(D_8007B2F2)
/* C840 8000BC40 2418002F */  addiu      $t8, $zero, 0x2f
/* C844 8000BC44 A438B2F2 */  sh         $t8, %lo(D_8007B2F2)($at)
/* C848 8000BC48 3C018008 */  lui        $at, %hi(cutsceneNum)
/* C84C 8000BC4C 24190004 */  addiu      $t9, $zero, 4
/* C850 8000BC50 3C038008 */  lui        $v1, %hi(temp_CurrMap)
/* C854 8000BC54 A439B2E8 */  sh         $t9, %lo(cutsceneNum)($at)
/* C858 8000BC58 24635368 */  addiu      $v1, $v1, %lo(temp_CurrMap)
/* C85C 8000BC5C 44802000 */  mtc1       $zero, $f4
/* C860 8000BC60 24080022 */  addiu      $t0, $zero, 0x22
/* C864 8000BC64 24090001 */  addiu      $t1, $zero, 1
/* C868 8000BC68 240AFFFF */  addiu      $t2, $zero, -1
/* C86C 8000BC6C AC680000 */  sw         $t0, ($v1)
/* C870 8000BC70 AC690004 */  sw         $t1, 4($v1)
/* C874 8000BC74 AC6A0008 */  sw         $t2, 8($v1)
/* C878 8000BC78 3C018008 */  lui        $at, %hi(brianPosToLoad)
/* C87C 8000BC7C E424BA40 */  swc1       $f4, %lo(brianPosToLoad)($at)
/* C880 8000BC80 3C014160 */  lui        $at, 0x4160
/* C884 8000BC84 44813000 */  mtc1       $at, $f6
/* C888 8000BC88 3C018008 */  lui        $at, %hi(brianYPosToLoad)
/* C88C 8000BC8C 240B0108 */  addiu      $t3, $zero, 0x108
/* C890 8000BC90 E426BA44 */  swc1       $f6, %lo(brianYPosToLoad)($at)
/* C894 8000BC94 3C018007 */  lui        $at, %hi(D_800711E0)
/* C898 8000BC98 C42811E0 */  lwc1       $f8, %lo(D_800711E0)($at)
/* C89C 8000BC9C 3C018008 */  lui        $at, %hi(brianZPosToLoad)
/* C8A0 8000BCA0 E428BA48 */  swc1       $f8, %lo(brianZPosToLoad)($at)
/* C8A4 8000BCA4 3C018008 */  lui        $at, %hi(sideOfDoorEnteredFlag)
/* C8A8 8000BCA8 AC2BBA4C */  sw         $t3, %lo(sideOfDoorEnteredFlag)($at)
/* C8AC 8000BCAC 10000011 */  b          .L8000BCF4
/* C8B0 8000BCB0 A4400006 */   sh        $zero, 6($v0)
.L8000BCB4:
/* C8B4 8000BCB4 3C038008 */  lui        $v1, %hi(brianData)
/* C8B8 8000BCB8 00056840 */  sll        $t5, $a1, 1
/* C8BC 8000BCBC 3C0E8005 */  lui        $t6, %hi(TBL_HPGivenByBosses)
/* C8C0 8000BCC0 2463BA80 */  addiu      $v1, $v1, %lo(brianData)
/* C8C4 8000BCC4 01CD7021 */  addu       $t6, $t6, $t5
/* C8C8 8000BCC8 95CEC2C0 */  lhu        $t6, %lo(TBL_HPGivenByBosses)($t6)
/* C8CC 8000BCCC 946C0006 */  lhu        $t4, 6($v1)
/* C8D0 8000BCD0 018E7821 */  addu       $t7, $t4, $t6
/* C8D4 8000BCD4 31E2FFFF */  andi       $v0, $t7, 0xffff
/* C8D8 8000BCD8 284101F5 */  slti       $at, $v0, 0x1f5
/* C8DC 8000BCDC 14200004 */  bnez       $at, .L8000BCF0
/* C8E0 8000BCE0 A46F0006 */   sh        $t7, 6($v1)
/* C8E4 8000BCE4 241801F4 */  addiu      $t8, $zero, 0x1f4
/* C8E8 8000BCE8 A4780006 */  sh         $t8, 6($v1)
/* C8EC 8000BCEC 3302FFFF */  andi       $v0, $t8, 0xffff
.L8000BCF0:
/* C8F0 8000BCF0 A4620004 */  sh         $v0, 4($v1)
.L8000BCF4:
/* C8F4 8000BCF4 8FBF0014 */  lw         $ra, 0x14($sp)
/* C8F8 8000BCF8 27BD0018 */  addiu      $sp, $sp, 0x18
/* C8FC 8000BCFC 03E00008 */  jr         $ra
/* C900 8000BD00 00000000 */   nop
/* C904 8000BD04 00000000 */  nop
/* C908 8000BD08 00000000 */  nop
/* C90C 8000BD0C 00000000 */  nop
