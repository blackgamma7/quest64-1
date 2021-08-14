.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80012780
/* 13380 80012780 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 13384 80012784 AFBF0024 */  sw         $ra, 0x24($sp)
/* 13388 80012788 3C01C2EE */  lui        $at, 0xc2ee
/* 1338C 8001278C 44812000 */  mtc1       $at, $f4
/* 13390 80012790 3C014120 */  lui        $at, 0x4120
/* 13394 80012794 44813000 */  mtc1       $at, $f6
/* 13398 80012798 3C014348 */  lui        $at, 0x4348
/* 1339C 8001279C 44814000 */  mtc1       $at, $f8
/* 133A0 800127A0 3C013F80 */  lui        $at, 0x3f80
/* 133A4 800127A4 44815000 */  mtc1       $at, $f10
/* 133A8 800127A8 3C048030 */  lui        $a0, %hi(D_80301098)
/* 133AC 800127AC 24841098 */  addiu      $a0, $a0, %lo(D_80301098)
/* 133B0 800127B0 3C05C31F */  lui        $a1, 0xc31f
/* 133B4 800127B4 3C06431F */  lui        $a2, 0x431f
/* 133B8 800127B8 3C0742EE */  lui        $a3, 0x42ee
/* 133BC 800127BC E7A40010 */  swc1       $f4, 0x10($sp)
/* 133C0 800127C0 E7A60014 */  swc1       $f6, 0x14($sp)
/* 133C4 800127C4 E7A80018 */  swc1       $f8, 0x18($sp)
/* 133C8 800127C8 0C00D665 */  jal        guOrtho
/* 133CC 800127CC E7AA001C */   swc1      $f10, 0x1c($sp)
/* 133D0 800127D0 3C01C2EE */  lui        $at, 0xc2ee
/* 133D4 800127D4 44818000 */  mtc1       $at, $f16
/* 133D8 800127D8 3C014120 */  lui        $at, 0x4120
/* 133DC 800127DC 44819000 */  mtc1       $at, $f18
/* 133E0 800127E0 3C014348 */  lui        $at, 0x4348
/* 133E4 800127E4 44812000 */  mtc1       $at, $f4
/* 133E8 800127E8 3C013F80 */  lui        $at, 0x3f80
/* 133EC 800127EC 44813000 */  mtc1       $at, $f6
/* 133F0 800127F0 3C048031 */  lui        $a0, %hi(D_8030E1E8)
/* 133F4 800127F4 2484E1E8 */  addiu      $a0, $a0, %lo(D_8030E1E8)
/* 133F8 800127F8 3C05C31F */  lui        $a1, 0xc31f
/* 133FC 800127FC 3C06431F */  lui        $a2, 0x431f
/* 13400 80012800 3C0742EE */  lui        $a3, 0x42ee
/* 13404 80012804 E7B00010 */  swc1       $f16, 0x10($sp)
/* 13408 80012808 E7B20014 */  swc1       $f18, 0x14($sp)
/* 1340C 8001280C E7A40018 */  swc1       $f4, 0x18($sp)
/* 13410 80012810 0C00D665 */  jal        guOrtho
/* 13414 80012814 E7A6001C */   swc1      $f6, 0x1c($sp)
/* 13418 80012818 3C0E8008 */  lui        $t6, %hi(LastExitID)
/* 1341C 8001281C 8DCE5370 */  lw         $t6, %lo(LastExitID)($t6)
/* 13420 80012820 3C058008 */  lui        $a1, 0x8008
/* 13424 80012824 3C018007 */  lui        $at, %hi(D_80071310)
/* 13428 80012828 05C10004 */  bgez       $t6, .L8001283C
/* 1342C 8001282C 3C0F8008 */   lui       $t7, %hi(BrianActor+0x62)
/* 13430 80012830 C4281310 */  lwc1       $f8, %lo(D_80071310)($at)
/* 13434 80012834 3C018008 */  lui        $at, %hi(gCamera+0x84)
/* 13438 80012838 E4286E44 */  swc1       $f8, %lo(gCamera+0x84)($at)
.L8001283C:
/* 1343C 8001283C 95EFBB2E */  lhu        $t7, %lo(BrianActor+0x62)($t7)
/* 13440 80012840 24A56ED8 */  addiu      $a1, $a1, 0x6ed8
/* 13444 80012844 3C038008 */  lui        $v1, %hi(ptrMapData)
/* 13448 80012848 000FC043 */  sra        $t8, $t7, 1
/* 1344C 8001284C 33190007 */  andi       $t9, $t8, 7
/* 13450 80012850 ACB90000 */  sw         $t9, ($a1)
/* 13454 80012854 8C634F18 */  lw         $v1, %lo(ptrMapData)($v1)
/* 13458 80012858 3C068008 */  lui        $a2, %hi(tbl_CameraZoomValues)
/* 1345C 8001285C 3C0E8005 */  lui        $t6, %hi(D_8004CBF0)
/* 13460 80012860 8C640024 */  lw         $a0, 0x24($v1)
/* 13464 80012864 24C66EDC */  addiu      $a2, $a2, %lo(tbl_CameraZoomValues)
/* 13468 80012868 25CECBF0 */  addiu      $t6, $t6, %lo(D_8004CBF0)
/* 1346C 8001286C 1080000F */  beqz       $a0, .L800128AC
/* 13470 80012870 240F0001 */   addiu     $t7, $zero, 1
/* 13474 80012874 3C028008 */  lui        $v0, %hi(nextSubmap)
/* 13478 80012878 8C424EE8 */  lw         $v0, %lo(nextSubmap)($v0)
/* 1347C 8001287C 3C068008 */  lui        $a2, %hi(tbl_CameraZoomValues)
/* 13480 80012880 24C66EDC */  addiu      $a2, $a2, %lo(tbl_CameraZoomValues)
/* 13484 80012884 000240C0 */  sll        $t0, $v0, 3
/* 13488 80012888 00884821 */  addu       $t1, $a0, $t0
/* 1348C 8001288C 8D2A0000 */  lw         $t2, ($t1)
/* 13490 80012890 3C018008 */  lui        $at, 0x8008
/* 13494 80012894 ACCA0000 */  sw         $t2, ($a2)
/* 13498 80012898 8C6B0024 */  lw         $t3, 0x24($v1)
/* 1349C 8001289C 01686021 */  addu       $t4, $t3, $t0
/* 134A0 800128A0 958D0004 */  lhu        $t5, 4($t4)
/* 134A4 800128A4 10000004 */  b          .L800128B8
/* 134A8 800128A8 AC2D6B88 */   sw        $t5, 0x6b88($at)
.L800128AC:
/* 134AC 800128AC ACCE0000 */  sw         $t6, ($a2)
/* 134B0 800128B0 3C018008 */  lui        $at, %hi(D_80086B88)
/* 134B4 800128B4 AC2F6B88 */  sw         $t7, %lo(D_80086B88)($at)
.L800128B8:
/* 134B8 800128B8 8CB80000 */  lw         $t8, ($a1)
/* 134BC 800128BC 8CC80000 */  lw         $t0, ($a2)
/* 134C0 800128C0 3C018008 */  lui        $at, 0x8008
/* 134C4 800128C4 0018C8C0 */  sll        $t9, $t8, 3
/* 134C8 800128C8 0338C823 */  subu       $t9, $t9, $t8
/* 134CC 800128CC 0019C8C0 */  sll        $t9, $t9, 3
/* 134D0 800128D0 03281021 */  addu       $v0, $t9, $t0
/* 134D4 800128D4 8C490000 */  lw         $t1, ($v0)
/* 134D8 800128D8 240A0001 */  addiu      $t2, $zero, 1
/* 134DC 800128DC 3C0B8008 */  lui        $t3, 0x8008
/* 134E0 800128E0 AC296DC0 */  sw         $t1, 0x6dc0($at)
/* 134E4 800128E4 3C018008 */  lui        $at, %hi(gCamera+0x8)
/* 134E8 800128E8 A42A6DC8 */  sh         $t2, %lo(gCamera+0x8)($at)
/* 134EC 800128EC 3C018008 */  lui        $at, %hi(gCamera+0x4)
/* 134F0 800128F0 AC206DC4 */  sw         $zero, %lo(gCamera+0x4)($at)
/* 134F4 800128F4 3C018008 */  lui        $at, %hi(gCamera+0x80)
/* 134F8 800128F8 256BBACC */  addiu      $t3, $t3, -0x4534
/* 134FC 800128FC AC2B6E40 */  sw         $t3, %lo(gCamera+0x80)($at)
/* 13500 80012900 C44A001C */  lwc1       $f10, 0x1c($v0)
/* 13504 80012904 3C018008 */  lui        $at, %hi(gCamera+0x60)
/* 13508 80012908 44800000 */  mtc1       $zero, $f0
/* 1350C 8001290C E42A6E20 */  swc1       $f10, %lo(gCamera+0x60)($at)
/* 13510 80012910 C4500020 */  lwc1       $f16, 0x20($v0)
/* 13514 80012914 3C038008 */  lui        $v1, 0x8008
/* 13518 80012918 3C058008 */  lui        $a1, %hi(D_80086B90)
/* 1351C 8001291C E4306E24 */  swc1       $f16, 0x6e24($at)
/* 13520 80012920 C4520024 */  lwc1       $f18, 0x24($v0)
/* 13524 80012924 3C018008 */  lui        $at, %hi(gCamera+0x68)
/* 13528 80012928 24A56B90 */  addiu      $a1, $a1, %lo(D_80086B90)
/* 1352C 8001292C E4326E28 */  swc1       $f18, %lo(gCamera+0x68)($at)
/* 13530 80012930 C4440028 */  lwc1       $f4, 0x28($v0)
/* 13534 80012934 E4246E2C */  swc1       $f4, 0x6e2c($at)
/* 13538 80012938 C4460018 */  lwc1       $f6, 0x18($v0)
/* 1353C 8001293C 3C018008 */  lui        $at, %hi(gCamera+0x4C)
/* 13540 80012940 E4266E0C */  swc1       $f6, %lo(gCamera+0x4C)($at)
/* 13544 80012944 3C018008 */  lui        $at, %hi(gCamera+0x50)
/* 13548 80012948 E4206E10 */  swc1       $f0, %lo(gCamera+0x50)($at)
/* 1354C 8001294C C4480014 */  lwc1       $f8, 0x14($v0)
/* 13550 80012950 3C018008 */  lui        $at, %hi(gCamera+0x58)
/* 13554 80012954 E4286E18 */  swc1       $f8, %lo(gCamera+0x58)($at)
/* 13558 80012958 C44A0010 */  lwc1       $f10, 0x10($v0)
/* 1355C 8001295C E42A6E1C */  swc1       $f10, 0x6e1c($at)
/* 13560 80012960 8C636DC0 */  lw         $v1, 0x6dc0($v1)
/* 13564 80012964 24010001 */  addiu      $at, $zero, 1
/* 13568 80012968 50600006 */  beql       $v1, $zero, .L80012984
/* 1356C 8001296C E4A00000 */   swc1      $f0, ($a1)
/* 13570 80012970 1061002D */  beq        $v1, $at, .L80012A28
/* 13574 80012974 24010002 */   addiu     $at, $zero, 2
/* 13578 80012978 14610035 */  bne        $v1, $at, .L80012A50
/* 1357C 8001297C 00000000 */   nop
/* 13580 80012980 E4A00000 */  swc1       $f0, ($a1)
.L80012984:
/* 13584 80012984 3C018008 */  lui        $at, %hi(gCamera+0x4C)
/* 13588 80012988 C4306E0C */  lwc1       $f16, %lo(gCamera+0x4C)($at)
/* 1358C 8001298C 3C018007 */  lui        $at, %hi(D_80071318)
/* 13590 80012990 D4241318 */  ldc1       $f4, %lo(D_80071318)($at)
/* 13594 80012994 460084A1 */  cvt.d.s    $f18, $f16
/* 13598 80012998 3C018008 */  lui        $at, %hi(D_80086B94)
/* 1359C 8001299C 46249182 */  mul.d      $f6, $f18, $f4
/* 135A0 800129A0 46203220 */  cvt.s.d    $f8, $f6
/* 135A4 800129A4 E4286B94 */  swc1       $f8, %lo(D_80086B94)($at)
/* 135A8 800129A8 3C018008 */  lui        $at, %hi(BrianYPos)
/* 135AC 800129AC C42ABAD0 */  lwc1       $f10, %lo(BrianYPos)($at)
/* 135B0 800129B0 C4500014 */  lwc1       $f16, 0x14($v0)
/* 135B4 800129B4 3C018008 */  lui        $at, %hi(gCamera+0x10)
/* 135B8 800129B8 AFA20028 */  sw         $v0, 0x28($sp)
/* 135BC 800129BC 46105480 */  add.s      $f18, $f10, $f16
/* 135C0 800129C0 E4326DD0 */  swc1       $f18, %lo(gCamera+0x10)($at)
/* 135C4 800129C4 3C018008 */  lui        $at, %hi(gCamera+0x84)
/* 135C8 800129C8 C4246E44 */  lwc1       $f4, %lo(gCamera+0x84)($at)
/* 135CC 800129CC 3C018008 */  lui        $at, %hi(brianZPosToLoad)
/* 135D0 800129D0 C426BA48 */  lwc1       $f6, %lo(brianZPosToLoad)($at)
/* 135D4 800129D4 0C008CBD */  jal        func_800232F4
/* 135D8 800129D8 46062300 */   add.s     $f12, $f4, $f6
/* 135DC 800129DC 3C058008 */  lui        $a1, %hi(D_80086B90)
/* 135E0 800129E0 24A56B90 */  addiu      $a1, $a1, %lo(D_80086B90)
/* 135E4 800129E4 3C018008 */  lui        $at, %hi(BrianActor)
/* 135E8 800129E8 C428BACC */  lwc1       $f8, %lo(BrianActor)($at)
/* 135EC 800129EC C4AA0000 */  lwc1       $f10, ($a1)
/* 135F0 800129F0 3C018008 */  lui        $at, %hi(gCamera+0xC)
/* 135F4 800129F4 44800000 */  mtc1       $zero, $f0
/* 135F8 800129F8 460A4401 */  sub.s      $f16, $f8, $f10
/* 135FC 800129FC 8FA20028 */  lw         $v0, 0x28($sp)
/* 13600 80012A00 E4306DCC */  swc1       $f16, %lo(gCamera+0xC)($at)
/* 13604 80012A04 3C018008 */  lui        $at, %hi(BrianActor+0x8)
/* 13608 80012A08 C432BAD4 */  lwc1       $f18, %lo(BrianActor+0x8)($at)
/* 1360C 80012A0C C4A40004 */  lwc1       $f4, 4($a1)
/* 13610 80012A10 3C018008 */  lui        $at, %hi(gCamera+0x14)
/* 13614 80012A14 46049181 */  sub.s      $f6, $f18, $f4
/* 13618 80012A18 E4266DD4 */  swc1       $f6, %lo(gCamera+0x14)($at)
/* 1361C 80012A1C 3C018008 */  lui        $at, %hi(gCamera+0x54)
/* 13620 80012A20 1000000B */  b          .L80012A50
/* 13624 80012A24 E4206E14 */   swc1      $f0, %lo(gCamera+0x54)($at)
.L80012A28:
/* 13628 80012A28 C4480004 */  lwc1       $f8, 4($v0)
/* 1362C 80012A2C 3C018008 */  lui        $at, %hi(gCamera+0xC)
/* 13630 80012A30 E4286DCC */  swc1       $f8, %lo(gCamera+0xC)($at)
/* 13634 80012A34 C44A0008 */  lwc1       $f10, 8($v0)
/* 13638 80012A38 3C018008 */  lui        $at, %hi(gCamera+0x10)
/* 1363C 80012A3C E42A6DD0 */  swc1       $f10, %lo(gCamera+0x10)($at)
/* 13640 80012A40 C450000C */  lwc1       $f16, 0xc($v0)
/* 13644 80012A44 E4306DD4 */  swc1       $f16, 0x6dd4($at)
/* 13648 80012A48 3C018008 */  lui        $at, %hi(gCamera+0x54)
/* 1364C 80012A4C E4206E14 */  swc1       $f0, %lo(gCamera+0x54)($at)
.L80012A50:
/* 13650 80012A50 3C018008 */  lui        $at, %hi(gCamera+0x24)
/* 13654 80012A54 E4206DE4 */  swc1       $f0, %lo(gCamera+0x24)($at)
/* 13658 80012A58 3C018008 */  lui        $at, %hi(gCamera+0x2C)
/* 1365C 80012A5C E4206DEC */  swc1       $f0, %lo(gCamera+0x2C)($at)
/* 13660 80012A60 E4206DE8 */  swc1       $f0, 0x6de8($at)
/* 13664 80012A64 3C018008 */  lui        $at, %hi(BrianActor)
/* 13668 80012A68 C432BACC */  lwc1       $f18, %lo(BrianActor)($at)
/* 1366C 80012A6C 3C018008 */  lui        $at, %hi(gCamera+0x18)
/* 13670 80012A70 3C038008 */  lui        $v1, 0x8008
/* 13674 80012A74 E4326DD8 */  swc1       $f18, %lo(gCamera+0x18)($at)
/* 13678 80012A78 3C018008 */  lui        $at, %hi(BrianYPos)
/* 1367C 80012A7C C424BAD0 */  lwc1       $f4, %lo(BrianYPos)($at)
/* 13680 80012A80 3C018008 */  lui        $at, %hi(gCamera+0x5C)
/* 13684 80012A84 C4266E1C */  lwc1       $f6, %lo(gCamera+0x5C)($at)
/* 13688 80012A88 3C018008 */  lui        $at, %hi(gCamera+0x1C)
/* 1368C 80012A8C 24636EC8 */  addiu      $v1, $v1, 0x6ec8
/* 13690 80012A90 46062200 */  add.s      $f8, $f4, $f6
/* 13694 80012A94 3C0C8008 */  lui        $t4, 0x8008
/* 13698 80012A98 240D0003 */  addiu      $t5, $zero, 3
/* 1369C 80012A9C E4286DDC */  swc1       $f8, %lo(gCamera+0x1C)($at)
/* 136A0 80012AA0 3C018008 */  lui        $at, %hi(BrianActor+0x8)
/* 136A4 80012AA4 C42ABAD4 */  lwc1       $f10, %lo(BrianActor+0x8)($at)
/* 136A8 80012AA8 3C018008 */  lui        $at, %hi(gCamera+0x20)
/* 136AC 80012AAC E42A6DE0 */  swc1       $f10, %lo(gCamera+0x20)($at)
/* 136B0 80012AB0 3C018008 */  lui        $at, %hi(gCamera+0x30)
/* 136B4 80012AB4 E4206DF0 */  swc1       $f0, %lo(gCamera+0x30)($at)
/* 136B8 80012AB8 E4206DF4 */  swc1       $f0, 0x6df4($at)
/* 136BC 80012ABC 3C018008 */  lui        $at, %hi(gCamera+0x38)
/* 136C0 80012AC0 E4206DF8 */  swc1       $f0, %lo(gCamera+0x38)($at)
/* 136C4 80012AC4 3C018008 */  lui        $at, %hi(gCamera+0x48)
/* 136C8 80012AC8 E4206E08 */  swc1       $f0, %lo(gCamera+0x48)($at)
/* 136CC 80012ACC 3C018008 */  lui        $at, %hi(gCamera+0x44)
/* 136D0 80012AD0 E4206E04 */  swc1       $f0, %lo(gCamera+0x44)($at)
/* 136D4 80012AD4 E4206E00 */  swc1       $f0, 0x6e00($at)
/* 136D8 80012AD8 3C018008 */  lui        $at, %hi(gCamera+0x3C)
/* 136DC 80012ADC E4206DFC */  swc1       $f0, %lo(gCamera+0x3C)($at)
/* 136E0 80012AE0 3C018007 */  lui        $at, %hi(D_80071320)
/* 136E4 80012AE4 C4301320 */  lwc1       $f16, %lo(D_80071320)($at)
/* 136E8 80012AE8 3C018008 */  lui        $at, %hi(gCamera+0x70)
/* 136EC 80012AEC E4306E30 */  swc1       $f16, %lo(gCamera+0x70)($at)
/* 136F0 80012AF0 3C018007 */  lui        $at, %hi(D_80071324)
/* 136F4 80012AF4 C4221324 */  lwc1       $f2, %lo(D_80071324)($at)
/* 136F8 80012AF8 3C018008 */  lui        $at, %hi(gCamera+0x74)
/* 136FC 80012AFC E4226E34 */  swc1       $f2, %lo(gCamera+0x74)($at)
/* 13700 80012B00 3C018007 */  lui        $at, %hi(D_80071328)
/* 13704 80012B04 C4321328 */  lwc1       $f18, %lo(D_80071328)($at)
/* 13708 80012B08 3C018008 */  lui        $at, %hi(gCamera+0x7C)
/* 1370C 80012B0C E4226E3C */  swc1       $f2, %lo(gCamera+0x7C)($at)
/* 13710 80012B10 E4326E38 */  swc1       $f18, 0x6e38($at)
/* 13714 80012B14 3C018008 */  lui        $at, %hi(D_80086C2C)
/* 13718 80012B18 AC206C2C */  sw         $zero, %lo(D_80086C2C)($at)
/* 1371C 80012B1C 3C018008 */  lui        $at, %hi(D_80086BBC)
/* 13720 80012B20 A4206BBC */  sh         $zero, %lo(D_80086BBC)($at)
/* 13724 80012B24 C444002C */  lwc1       $f4, 0x2c($v0)
/* 13728 80012B28 3C018008 */  lui        $at, %hi(fogAmmount)
/* 1372C 80012B2C E4640000 */  swc1       $f4, ($v1)
/* 13730 80012B30 C4460030 */  lwc1       $f6, 0x30($v0)
/* 13734 80012B34 958CB2E8 */  lhu        $t4, -0x4d18($t4)
/* 13738 80012B38 E4266ECC */  swc1       $f6, %lo(fogAmmount)($at)
/* 1373C 80012B3C C4480034 */  lwc1       $f8, 0x34($v0)
/* 13740 80012B40 3C018008 */  lui        $at, %hi(fogFar)
/* 13744 80012B44 E4286ED0 */  swc1       $f8, %lo(fogFar)($at)
/* 13748 80012B48 24010004 */  addiu      $at, $zero, 4
/* 1374C 80012B4C 1581001E */  bne        $t4, $at, .L80012BC8
/* 13750 80012B50 3C018008 */   lui       $at, %hi(gCamera)
/* 13754 80012B54 AC2D6DC0 */  sw         $t5, %lo(gCamera)($at)
/* 13758 80012B58 3C018007 */  lui        $at, %hi(D_8007132C)
/* 1375C 80012B5C C42A132C */  lwc1       $f10, %lo(D_8007132C)($at)
/* 13760 80012B60 3C018008 */  lui        $at, %hi(gCamera+0xC)
/* 13764 80012B64 E42A6DCC */  swc1       $f10, %lo(gCamera+0xC)($at)
/* 13768 80012B68 3C014210 */  lui        $at, 0x4210
/* 1376C 80012B6C 44818000 */  mtc1       $at, $f16
/* 13770 80012B70 3C018008 */  lui        $at, %hi(gCamera+0x10)
/* 13774 80012B74 E4306DD0 */  swc1       $f16, %lo(gCamera+0x10)($at)
/* 13778 80012B78 3C018007 */  lui        $at, %hi(D_80071330)
/* 1377C 80012B7C C4321330 */  lwc1       $f18, %lo(D_80071330)($at)
/* 13780 80012B80 3C018008 */  lui        $at, %hi(gCamera+0x14)
/* 13784 80012B84 E4326DD4 */  swc1       $f18, %lo(gCamera+0x14)($at)
/* 13788 80012B88 3C018007 */  lui        $at, %hi(D_80071334)
/* 1378C 80012B8C C4241334 */  lwc1       $f4, %lo(D_80071334)($at)
/* 13790 80012B90 3C018008 */  lui        $at, %hi(gCamera+0x18)
/* 13794 80012B94 E4246DD8 */  swc1       $f4, %lo(gCamera+0x18)($at)
/* 13798 80012B98 3C014228 */  lui        $at, 0x4228
/* 1379C 80012B9C 44813000 */  mtc1       $at, $f6
/* 137A0 80012BA0 3C018008 */  lui        $at, %hi(gCamera+0x1C)
/* 137A4 80012BA4 E4266DDC */  swc1       $f6, %lo(gCamera+0x1C)($at)
/* 137A8 80012BA8 3C018007 */  lui        $at, %hi(D_80071338)
/* 137AC 80012BAC C4281338 */  lwc1       $f8, %lo(D_80071338)($at)
/* 137B0 80012BB0 3C018008 */  lui        $at, %hi(gCamera+0x20)
/* 137B4 80012BB4 E4286DE0 */  swc1       $f8, %lo(gCamera+0x20)($at)
/* 137B8 80012BB8 3C014220 */  lui        $at, 0x4220
/* 137BC 80012BBC 44815000 */  mtc1       $at, $f10
/* 137C0 80012BC0 00000000 */  nop
/* 137C4 80012BC4 E46A0000 */  swc1       $f10, ($v1)
.L80012BC8:
/* 137C8 80012BC8 3C018008 */  lui        $at, %hi(D_80086EFC)
/* 137CC 80012BCC E4206EFC */  swc1       $f0, %lo(D_80086EFC)($at)
/* 137D0 80012BD0 8FBF0024 */  lw         $ra, 0x24($sp)
/* 137D4 80012BD4 27BD0038 */  addiu      $sp, $sp, 0x38
/* 137D8 80012BD8 03E00008 */  jr         $ra
/* 137DC 80012BDC 00000000 */   nop

glabel func_80012BE0
/* 137E0 80012BE0 27BDFF98 */  addiu      $sp, $sp, -0x68
/* 137E4 80012BE4 AFBF0034 */  sw         $ra, 0x34($sp)
/* 137E8 80012BE8 AFA40068 */  sw         $a0, 0x68($sp)
/* 137EC 80012BEC 3C0E8008 */  lui        $t6, %hi(D_80084F1C)
/* 137F0 80012BF0 8DCE4F1C */  lw         $t6, %lo(D_80084F1C)($t6)
/* 137F4 80012BF4 3C198009 */  lui        $t9, %hi(BattleState)
/* 137F8 80012BF8 95CF0014 */  lhu        $t7, 0x14($t6)
/* 137FC 80012BFC 31F80002 */  andi       $t8, $t7, 2
/* 13800 80012C00 1300000F */  beqz       $t8, .L80012C40
/* 13804 80012C04 00000000 */   nop
/* 13808 80012C08 9739C592 */  lhu        $t9, %lo(BattleState)($t9)
/* 1380C 80012C0C 3C048008 */  lui        $a0, %hi(BrianActor+0x62)
/* 13810 80012C10 332B0001 */  andi       $t3, $t9, 1
/* 13814 80012C14 1560000A */  bnez       $t3, .L80012C40
/* 13818 80012C18 00000000 */   nop
/* 1381C 80012C1C 9484BB2E */  lhu        $a0, %lo(BrianActor+0x62)($a0)
/* 13820 80012C20 3C0E8008 */  lui        $t6, %hi(cameraZoomMode)
/* 13824 80012C24 8DCE6ED8 */  lw         $t6, %lo(cameraZoomMode)($t6)
/* 13828 80012C28 00046043 */  sra        $t4, $a0, 1
/* 1382C 80012C2C 31840007 */  andi       $a0, $t4, 7
/* 13830 80012C30 108E0003 */  beq        $a0, $t6, .L80012C40
/* 13834 80012C34 00000000 */   nop
/* 13838 80012C38 0C004FD7 */  jal        cameraZoomSomething
/* 1383C 80012C3C 00000000 */   nop
.L80012C40:
/* 13840 80012C40 3C0F8008 */  lui        $t7, %hi(gCamera)
/* 13844 80012C44 8DEF6DC0 */  lw         $t7, %lo(gCamera)($t7)
/* 13848 80012C48 3C198005 */  lui        $t9, %hi(cameraModeTable)
/* 1384C 80012C4C 3C048008 */  lui        $a0, %hi(gCamera)
/* 13850 80012C50 000FC080 */  sll        $t8, $t7, 2
/* 13854 80012C54 0338C821 */  addu       $t9, $t9, $t8
/* 13858 80012C58 8F39CC98 */  lw         $t9, %lo(cameraModeTable)($t9)
/* 1385C 80012C5C 24846DC0 */  addiu      $a0, $a0, %lo(gCamera)
/* 13860 80012C60 0320F809 */  jalr       $t9
/* 13864 80012C64 00000000 */   nop
/* 13868 80012C68 3C0B8008 */  lui        $t3, %hi(gHUDState)
/* 1386C 80012C6C 8D6BB2E4 */  lw         $t3, %lo(gHUDState)($t3)
/* 13870 80012C70 3C038008 */  lui        $v1, %hi(cameraZoomMode)
/* 13874 80012C74 24636ED8 */  addiu      $v1, $v1, %lo(cameraZoomMode)
/* 13878 80012C78 316C0082 */  andi       $t4, $t3, 0x82
/* 1387C 80012C7C 15800022 */  bnez       $t4, .L80012D08
/* 13880 80012C80 3C0D8009 */   lui       $t5, %hi(D_8008C638)
/* 13884 80012C84 8DADC638 */  lw         $t5, %lo(D_8008C638)($t5)
/* 13888 80012C88 3C0E8009 */  lui        $t6, %hi(BattleState)
/* 1388C 80012C8C 15A0001E */  bnez       $t5, .L80012D08
/* 13890 80012C90 00000000 */   nop
/* 13894 80012C94 95CEC592 */  lhu        $t6, %lo(BattleState)($t6)
/* 13898 80012C98 3C188008 */  lui        $t8, %hi(D_80084F1C)
/* 1389C 80012C9C 31CF0001 */  andi       $t7, $t6, 1
/* 138A0 80012CA0 15E00019 */  bnez       $t7, .L80012D08
/* 138A4 80012CA4 00000000 */   nop
/* 138A8 80012CA8 8F184F1C */  lw         $t8, %lo(D_80084F1C)($t8)
/* 138AC 80012CAC 3C0C8009 */  lui        $t4, %hi(pressedButton)
/* 138B0 80012CB0 97190014 */  lhu        $t9, 0x14($t8)
/* 138B4 80012CB4 332B0002 */  andi       $t3, $t9, 2
/* 138B8 80012CB8 15600013 */  bnez       $t3, .L80012D08
/* 138BC 80012CBC 00000000 */   nop
/* 138C0 80012CC0 958C2876 */  lhu        $t4, %lo(pressedButton)($t4)
/* 138C4 80012CC4 3C028008 */  lui        $v0, %hi(D_80086B88)
/* 138C8 80012CC8 318D0020 */  andi       $t5, $t4, 0x20
/* 138CC 80012CCC 11A0000E */  beqz       $t5, .L80012D08
/* 138D0 80012CD0 00000000 */   nop
/* 138D4 80012CD4 8C426B88 */  lw         $v0, %lo(D_80086B88)($v0)
/* 138D8 80012CD8 28410002 */  slti       $at, $v0, 2
/* 138DC 80012CDC 1420000A */  bnez       $at, .L80012D08
/* 138E0 80012CE0 00000000 */   nop
/* 138E4 80012CE4 8C6E0000 */  lw         $t6, ($v1)
/* 138E8 80012CE8 25C40001 */  addiu      $a0, $t6, 1
/* 138EC 80012CEC 0082082A */  slt        $at, $a0, $v0
/* 138F0 80012CF0 14200003 */  bnez       $at, .L80012D00
/* 138F4 80012CF4 AC640000 */   sw        $a0, ($v1)
/* 138F8 80012CF8 AC600000 */  sw         $zero, ($v1)
/* 138FC 80012CFC 00002025 */  or         $a0, $zero, $zero
.L80012D00:
/* 13900 80012D00 0C004FD7 */  jal        cameraZoomSomething
/* 13904 80012D04 00000000 */   nop
.L80012D08:
/* 13908 80012D08 3C018008 */  lui        $at, %hi(fogAmmount)
/* 1390C 80012D0C C4246ECC */  lwc1       $f4, %lo(fogAmmount)($at)
/* 13910 80012D10 3C018008 */  lui        $at, %hi(fogFar)
/* 13914 80012D14 C4266ED0 */  lwc1       $f6, %lo(fogFar)($at)
/* 13918 80012D18 3C013F80 */  lui        $at, 0x3f80
/* 1391C 80012D1C 44814000 */  mtc1       $at, $f8
/* 13920 80012D20 3C048008 */  lui        $a0, 0x8008
/* 13924 80012D24 3C058008 */  lui        $a1, %hi(D_80086F00)
/* 13928 80012D28 3C068008 */  lui        $a2, %hi(D_80086EC8)
/* 1392C 80012D2C 3C073FAA */  lui        $a3, 0x3faa
/* 13930 80012D30 34E7AAAB */  ori        $a3, $a3, 0xaaab
/* 13934 80012D34 8CC66EC8 */  lw         $a2, %lo(D_80086EC8)($a2)
/* 13938 80012D38 24A56F00 */  addiu      $a1, $a1, %lo(D_80086F00)
/* 1393C 80012D3C 24846E48 */  addiu      $a0, $a0, 0x6e48
/* 13940 80012D40 E7A40010 */  swc1       $f4, 0x10($sp)
/* 13944 80012D44 E7A60014 */  swc1       $f6, 0x14($sp)
/* 13948 80012D48 0C00D680 */  jal        guPerspectiveF
/* 1394C 80012D4C E7A80018 */   swc1      $f8, 0x18($sp)
/* 13950 80012D50 8FA50068 */  lw         $a1, 0x68($sp)
/* 13954 80012D54 340180C0 */  ori        $at, $zero, 0x80c0
/* 13958 80012D58 44800000 */  mtc1       $zero, $f0
/* 1395C 80012D5C 00A12821 */  addu       $a1, $a1, $at
/* 13960 80012D60 3C018008 */  lui        $at, %hi(gCamera+0x14)
/* 13964 80012D64 C42A6DD4 */  lwc1       $f10, %lo(gCamera+0x14)($at)
/* 13968 80012D68 3C018008 */  lui        $at, %hi(gCamera+0x18)
/* 1396C 80012D6C C4306DD8 */  lwc1       $f16, %lo(gCamera+0x18)($at)
/* 13970 80012D70 C4326DDC */  lwc1       $f18, 0x6ddc($at)
/* 13974 80012D74 3C018008 */  lui        $at, %hi(gCamera+0x20)
/* 13978 80012D78 C4246DE0 */  lwc1       $f4, %lo(gCamera+0x20)($at)
/* 1397C 80012D7C 3C013F80 */  lui        $at, 0x3f80
/* 13980 80012D80 44813000 */  mtc1       $at, $f6
/* 13984 80012D84 3C048008 */  lui        $a0, %hi(someTransformMtx)
/* 13988 80012D88 3C068008 */  lui        $a2, %hi(gCamera+0xC)
/* 1398C 80012D8C 3C078008 */  lui        $a3, %hi(gCamera+0x10)
/* 13990 80012D90 8CE76DD0 */  lw         $a3, %lo(gCamera+0x10)($a3)
/* 13994 80012D94 8CC66DCC */  lw         $a2, %lo(gCamera+0xC)($a2)
/* 13998 80012D98 24846E88 */  addiu      $a0, $a0, %lo(someTransformMtx)
/* 1399C 80012D9C E7A00020 */  swc1       $f0, 0x20($sp)
/* 139A0 80012DA0 E7A00028 */  swc1       $f0, 0x28($sp)
/* 139A4 80012DA4 E7AA0010 */  swc1       $f10, 0x10($sp)
/* 139A8 80012DA8 E7B00014 */  swc1       $f16, 0x14($sp)
/* 139AC 80012DAC E7B20018 */  swc1       $f18, 0x18($sp)
/* 139B0 80012DB0 E7A4001C */  swc1       $f4, 0x1c($sp)
/* 139B4 80012DB4 0C00D724 */  jal        guLookAtReflectF
/* 139B8 80012DB8 E7A60024 */   swc1      $f6, 0x24($sp)
/* 139BC 80012DBC 3C048008 */  lui        $a0, %hi(D_80086E48)
/* 139C0 80012DC0 24846E48 */  addiu      $a0, $a0, %lo(D_80086E48)
/* 139C4 80012DC4 0C00D480 */  jal        guMtxF2L
/* 139C8 80012DC8 8FA50068 */   lw        $a1, 0x68($sp)
/* 139CC 80012DCC 8FA50068 */  lw         $a1, 0x68($sp)
/* 139D0 80012DD0 3C048008 */  lui        $a0, %hi(someTransformMtx)
/* 139D4 80012DD4 24846E88 */  addiu      $a0, $a0, %lo(someTransformMtx)
/* 139D8 80012DD8 0C00D480 */  jal        guMtxF2L
/* 139DC 80012DDC 24A50080 */   addiu     $a1, $a1, 0x80
/* 139E0 80012DE0 3C098008 */  lui        $t1, %hi(D_80086C2C)
/* 139E4 80012DE4 25296C2C */  addiu      $t1, $t1, %lo(D_80086C2C)
/* 139E8 80012DE8 8D380000 */  lw         $t8, ($t1)
/* 139EC 80012DEC 3C088008 */  lui        $t0, %hi(DLToLoad)
/* 139F0 80012DF0 2508B2F8 */  addiu      $t0, $t0, %lo(DLToLoad)
/* 139F4 80012DF4 1300003D */  beqz       $t8, .L80012EEC
/* 139F8 80012DF8 8FB90068 */   lw        $t9, 0x68($sp)
/* 139FC 80012DFC 8D0B0000 */  lw         $t3, ($t0)
/* 13A00 80012E00 3C058008 */  lui        $a1, 0x8008
/* 13A04 80012E04 3C068008 */  lui        $a2, %hi(D_80086C34)
/* 13A08 80012E08 000B6180 */  sll        $t4, $t3, 6
/* 13A0C 80012E0C 032C2021 */  addu       $a0, $t9, $t4
/* 13A10 80012E10 248400C0 */  addiu      $a0, $a0, 0xc0
/* 13A14 80012E14 8CC66C34 */  lw         $a2, %lo(D_80086C34)($a2)
/* 13A18 80012E18 8CA56C30 */  lw         $a1, 0x6c30($a1)
/* 13A1C 80012E1C 0C00D866 */  jal        guTranslate
/* 13A20 80012E20 24070000 */   addiu     $a3, $zero, 0
/* 13A24 80012E24 3C068008 */  lui        $a2, %hi(D_80086C30)
/* 13A28 80012E28 24C66C30 */  addiu      $a2, $a2, %lo(D_80086C30)
/* 13A2C 80012E2C C4C80000 */  lwc1       $f8, ($a2)
/* 13A30 80012E30 3C078008 */  lui        $a3, %hi(D_80086C34)
/* 13A34 80012E34 3C018007 */  lui        $at, %hi(D_80071340)
/* 13A38 80012E38 D4201340 */  ldc1       $f0, %lo(D_80071340)($at)
/* 13A3C 80012E3C 24E76C34 */  addiu      $a3, $a3, %lo(D_80086C34)
/* 13A40 80012E40 C4E40000 */  lwc1       $f4, ($a3)
/* 13A44 80012E44 460042A1 */  cvt.d.s    $f10, $f8
/* 13A48 80012E48 3C098008 */  lui        $t1, %hi(D_80086C2C)
/* 13A4C 80012E4C 46205402 */  mul.d      $f16, $f10, $f0
/* 13A50 80012E50 460021A1 */  cvt.d.s    $f6, $f4
/* 13A54 80012E54 25296C2C */  addiu      $t1, $t1, %lo(D_80086C2C)
/* 13A58 80012E58 8D2D0000 */  lw         $t5, ($t1)
/* 13A5C 80012E5C 46203202 */  mul.d      $f8, $f6, $f0
/* 13A60 80012E60 3C038008 */  lui        $v1, 0x8008
/* 13A64 80012E64 3C088008 */  lui        $t0, %hi(DLToLoad)
/* 13A68 80012E68 3C0A0200 */  lui        $t2, 0x200
/* 13A6C 80012E6C 25AEFFFF */  addiu      $t6, $t5, -1
/* 13A70 80012E70 254A0000 */  addiu      $t2, $t2, 0
/* 13A74 80012E74 2508B2F8 */  addiu      $t0, $t0, %lo(DLToLoad)
/* 13A78 80012E78 462084A0 */  cvt.s.d    $f18, $f16
/* 13A7C 80012E7C 2463B2FC */  addiu      $v1, $v1, -0x4d04
/* 13A80 80012E80 AD2E0000 */  sw         $t6, ($t1)
/* 13A84 80012E84 462042A0 */  cvt.s.d    $f10, $f8
/* 13A88 80012E88 E4D20000 */  swc1       $f18, ($a2)
/* 13A8C 80012E8C E4EA0000 */  swc1       $f10, ($a3)
/* 13A90 80012E90 8C620000 */  lw         $v0, ($v1)
/* 13A94 80012E94 3C180103 */  lui        $t8, 0x103
/* 13A98 80012E98 37180040 */  ori        $t8, $t8, 0x40
/* 13A9C 80012E9C 244F0008 */  addiu      $t7, $v0, 8
/* 13AA0 80012EA0 AC6F0000 */  sw         $t7, ($v1)
/* 13AA4 80012EA4 AC580000 */  sw         $t8, ($v0)
/* 13AA8 80012EA8 8D0B0000 */  lw         $t3, ($t0)
/* 13AAC 80012EAC 000BC980 */  sll        $t9, $t3, 6
/* 13AB0 80012EB0 01596021 */  addu       $t4, $t2, $t9
/* 13AB4 80012EB4 258D00C0 */  addiu      $t5, $t4, 0xc0
/* 13AB8 80012EB8 AC4D0004 */  sw         $t5, 4($v0)
/* 13ABC 80012EBC 8D0E0000 */  lw         $t6, ($t0)
/* 13AC0 80012EC0 25CF0001 */  addiu      $t7, $t6, 1
/* 13AC4 80012EC4 AD0F0000 */  sw         $t7, ($t0)
/* 13AC8 80012EC8 8C620000 */  lw         $v0, ($v1)
/* 13ACC 80012ECC 3C0B0101 */  lui        $t3, 0x101
/* 13AD0 80012ED0 356B0040 */  ori        $t3, $t3, 0x40
/* 13AD4 80012ED4 24580008 */  addiu      $t8, $v0, 8
/* 13AD8 80012ED8 AC780000 */  sw         $t8, ($v1)
/* 13ADC 80012EDC AC4A0004 */  sw         $t2, 4($v0)
/* 13AE0 80012EE0 AC4B0000 */  sw         $t3, ($v0)
/* 13AE4 80012EE4 1000000D */  b          .L80012F1C
/* 13AE8 80012EE8 8C620000 */   lw        $v0, ($v1)
.L80012EEC:
/* 13AEC 80012EEC 3C038008 */  lui        $v1, %hi(DLPtr)
/* 13AF0 80012EF0 3C0A0200 */  lui        $t2, 0x200
/* 13AF4 80012EF4 254A0000 */  addiu      $t2, $t2, 0
/* 13AF8 80012EF8 2463B2FC */  addiu      $v1, $v1, %lo(DLPtr)
/* 13AFC 80012EFC 8C620000 */  lw         $v0, ($v1)
/* 13B00 80012F00 3C0C0103 */  lui        $t4, 0x103
/* 13B04 80012F04 358C0040 */  ori        $t4, $t4, 0x40
/* 13B08 80012F08 24590008 */  addiu      $t9, $v0, 8
/* 13B0C 80012F0C AC790000 */  sw         $t9, ($v1)
/* 13B10 80012F10 AC4A0004 */  sw         $t2, 4($v0)
/* 13B14 80012F14 AC4C0000 */  sw         $t4, ($v0)
/* 13B18 80012F18 8C620000 */  lw         $v0, ($v1)
.L80012F1C:
/* 13B1C 80012F1C 3C0E0101 */  lui        $t6, 0x101
/* 13B20 80012F20 3C0F0200 */  lui        $t7, 0x200
/* 13B24 80012F24 244D0008 */  addiu      $t5, $v0, 8
/* 13B28 80012F28 AC6D0000 */  sw         $t5, ($v1)
/* 13B2C 80012F2C 25EF0080 */  addiu      $t7, $t7, 0x80
/* 13B30 80012F30 35CE0040 */  ori        $t6, $t6, 0x40
/* 13B34 80012F34 AC4E0000 */  sw         $t6, ($v0)
/* 13B38 80012F38 AC4F0004 */  sw         $t7, 4($v0)
/* 13B3C 80012F3C 8C620000 */  lw         $v0, ($v1)
/* 13B40 80012F40 3C0B0384 */  lui        $t3, 0x384
/* 13B44 80012F44 3C190201 */  lui        $t9, 0x201
/* 13B48 80012F48 24580008 */  addiu      $t8, $v0, 8
/* 13B4C 80012F4C AC780000 */  sw         $t8, ($v1)
/* 13B50 80012F50 273980C0 */  addiu      $t9, $t9, -0x7f40
/* 13B54 80012F54 356B0010 */  ori        $t3, $t3, 0x10
/* 13B58 80012F58 AC4B0000 */  sw         $t3, ($v0)
/* 13B5C 80012F5C AC590004 */  sw         $t9, 4($v0)
/* 13B60 80012F60 8C620000 */  lw         $v0, ($v1)
/* 13B64 80012F64 3C0D0382 */  lui        $t5, 0x382
/* 13B68 80012F68 3C0E0201 */  lui        $t6, 0x201
/* 13B6C 80012F6C 244C0008 */  addiu      $t4, $v0, 8
/* 13B70 80012F70 AC6C0000 */  sw         $t4, ($v1)
/* 13B74 80012F74 25CE80D0 */  addiu      $t6, $t6, -0x7f30
/* 13B78 80012F78 35AD0010 */  ori        $t5, $t5, 0x10
/* 13B7C 80012F7C AC4D0000 */  sw         $t5, ($v0)
/* 13B80 80012F80 AC4E0004 */  sw         $t6, 4($v0)
/* 13B84 80012F84 8C620000 */  lw         $v0, ($v1)
/* 13B88 80012F88 3C18BC00 */  lui        $t8, 0xbc00
/* 13B8C 80012F8C 3718000E */  ori        $t8, $t8, 0xe
/* 13B90 80012F90 244F0008 */  addiu      $t7, $v0, 8
/* 13B94 80012F94 AC6F0000 */  sw         $t7, ($v1)
/* 13B98 80012F98 3C0B8008 */  lui        $t3, %hi(D_80086F00)
/* 13B9C 80012F9C AC580000 */  sw         $t8, ($v0)
/* 13BA0 80012FA0 956B6F00 */  lhu        $t3, %lo(D_80086F00)($t3)
/* 13BA4 80012FA4 3C018008 */  lui        $at, %hi(D_80086EC8)
/* 13BA8 80012FA8 AC4B0004 */  sw         $t3, 4($v0)
/* 13BAC 80012FAC C4306EC8 */  lwc1       $f16, %lo(D_80086EC8)($at)
/* 13BB0 80012FB0 3C018007 */  lui        $at, %hi(D_80071348)
/* 13BB4 80012FB4 D4241348 */  ldc1       $f4, %lo(D_80071348)($at)
/* 13BB8 80012FB8 460084A1 */  cvt.d.s    $f18, $f16
/* 13BBC 80012FBC 3C014000 */  lui        $at, 0x4000
/* 13BC0 80012FC0 46249182 */  mul.d      $f6, $f18, $f4
/* 13BC4 80012FC4 44814800 */  mtc1       $at, $f9
/* 13BC8 80012FC8 44804000 */  mtc1       $zero, $f8
/* 13BCC 80012FCC 00000000 */  nop
/* 13BD0 80012FD0 46283283 */  div.d      $f10, $f6, $f8
/* 13BD4 80012FD4 46205320 */  cvt.s.d    $f12, $f10
/* 13BD8 80012FD8 0C00D5A0 */  jal        sinf
/* 13BDC 80012FDC E7AC0060 */   swc1      $f12, 0x60($sp)
/* 13BE0 80012FE0 C7AC0060 */  lwc1       $f12, 0x60($sp)
/* 13BE4 80012FE4 0C00D87C */  jal        cosf
/* 13BE8 80012FE8 E7A00038 */   swc1      $f0, 0x38($sp)
/* 13BEC 80012FEC C7B00038 */  lwc1       $f16, 0x38($sp)
/* 13BF0 80012FF0 3C018008 */  lui        $at, %hi(D_80086ED4)
/* 13BF4 80012FF4 8FBF0034 */  lw         $ra, 0x34($sp)
/* 13BF8 80012FF8 46008483 */  div.s      $f18, $f16, $f0
/* 13BFC 80012FFC E4326ED4 */  swc1       $f18, %lo(D_80086ED4)($at)
/* 13C00 80013000 03E00008 */  jr         $ra
/* 13C04 80013004 27BD0068 */   addiu     $sp, $sp, 0x68

glabel camModeFollow
/* 13C08 80013008 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 13C0C 8001300C AFBF001C */  sw         $ra, 0x1c($sp)
/* 13C10 80013010 8C8E0080 */  lw         $t6, 0x80($a0)
/* 13C14 80013014 AFA40048 */  sw         $a0, 0x48($sp)
/* 13C18 80013018 0C004F4C */  jal        EmptyCameraFunc
/* 13C1C 8001301C AFAE0020 */   sw        $t6, 0x20($sp)
/* 13C20 80013020 3C0F8008 */  lui        $t7, %hi(gHUDState)
/* 13C24 80013024 8DEFB2E4 */  lw         $t7, %lo(gHUDState)($t7)
/* 13C28 80013028 8FA40048 */  lw         $a0, 0x48($sp)
/* 13C2C 8001302C 31F80082 */  andi       $t8, $t7, 0x82
/* 13C30 80013030 17000018 */  bnez       $t8, .L80013094
/* 13C34 80013034 3C198009 */   lui       $t9, %hi(BattleState)
/* 13C38 80013038 9739C592 */  lhu        $t9, %lo(BattleState)($t9)
/* 13C3C 8001303C 33280200 */  andi       $t0, $t9, 0x200
/* 13C40 80013040 55000015 */  bnel       $t0, $zero, .L80013098
/* 13C44 80013044 948F0008 */   lhu       $t7, 8($a0)
/* 13C48 80013048 94820008 */  lhu        $v0, 8($a0)
/* 13C4C 8001304C 3C0A8009 */  lui        $t2, %hi(buttonPressed)
/* 13C50 80013050 30490040 */  andi       $t1, $v0, 0x40
/* 13C54 80013054 55200010 */  bnel       $t1, $zero, .L80013098
/* 13C58 80013058 948F0008 */   lhu       $t7, 8($a0)
/* 13C5C 8001305C 954A2874 */  lhu        $t2, %lo(buttonPressed)($t2)
/* 13C60 80013060 344D0024 */  ori        $t5, $v0, 0x24
/* 13C64 80013064 314B4000 */  andi       $t3, $t2, 0x4000
/* 13C68 80013068 15600006 */  bnez       $t3, .L80013084
/* 13C6C 8001306C 00000000 */   nop
/* 13C70 80013070 8C8C0000 */  lw         $t4, ($a0)
/* 13C74 80013074 24010002 */  addiu      $at, $zero, 2
/* 13C78 80013078 304EFFDB */  andi       $t6, $v0, 0xffdb
/* 13C7C 8001307C 15810003 */  bne        $t4, $at, .L8001308C
/* 13C80 80013080 00000000 */   nop
.L80013084:
/* 13C84 80013084 10000006 */  b          .L800130A0
/* 13C88 80013088 A48D0008 */   sh        $t5, 8($a0)
.L8001308C:
/* 13C8C 8001308C 10000004 */  b          .L800130A0
/* 13C90 80013090 A48E0008 */   sh        $t6, 8($a0)
.L80013094:
/* 13C94 80013094 948F0008 */  lhu        $t7, 8($a0)
.L80013098:
/* 13C98 80013098 31F8FFDB */  andi       $t8, $t7, 0xffdb
/* 13C9C 8001309C A4980008 */  sh         $t8, 8($a0)
.L800130A0:
/* 13CA0 800130A0 8FA20020 */  lw         $v0, 0x20($sp)
/* 13CA4 800130A4 C486000C */  lwc1       $f6, 0xc($a0)
/* 13CA8 800130A8 C48A0014 */  lwc1       $f10, 0x14($a0)
/* 13CAC 800130AC C4440000 */  lwc1       $f4, ($v0)
/* 13CB0 800130B0 C4480008 */  lwc1       $f8, 8($v0)
/* 13CB4 800130B4 AFA40048 */  sw         $a0, 0x48($sp)
/* 13CB8 800130B8 46062001 */  sub.s      $f0, $f4, $f6
/* 13CBC 800130BC 460A4081 */  sub.s      $f2, $f8, $f10
/* 13CC0 800130C0 46000102 */  mul.s      $f4, $f0, $f0
/* 13CC4 800130C4 E7A00040 */  swc1       $f0, 0x40($sp)
/* 13CC8 800130C8 46021182 */  mul.s      $f6, $f2, $f2
/* 13CCC 800130CC E7A20038 */  swc1       $f2, 0x38($sp)
/* 13CD0 800130D0 0C00D3D8 */  jal        _nsqrtf
/* 13CD4 800130D4 46062300 */   add.s     $f12, $f4, $f6
/* 13CD8 800130D8 44804000 */  mtc1       $zero, $f8
/* 13CDC 800130DC 8FA40048 */  lw         $a0, 0x48($sp)
/* 13CE0 800130E0 46080032 */  c.eq.s     $f0, $f8
/* 13CE4 800130E4 00000000 */  nop
/* 13CE8 800130E8 45030031 */  bc1tl      .L800131B0
/* 13CEC 800130EC 44803000 */   mtc1      $zero, $f6
/* 13CF0 800130F0 C48E004C */  lwc1       $f14, 0x4c($a0)
/* 13CF4 800130F4 4600703C */  c.lt.s     $f14, $f0
/* 13CF8 800130F8 00000000 */  nop
/* 13CFC 800130FC 45020010 */  bc1fl      .L80013140
/* 13D00 80013100 460E003E */   c.le.s    $f0, $f14
/* 13D04 80013104 46007083 */  div.s      $f2, $f14, $f0
/* 13D08 80013108 C7B00040 */  lwc1       $f16, 0x40($sp)
/* 13D0C 8001310C C48C0070 */  lwc1       $f12, 0x70($a0)
/* 13D10 80013110 C7B20038 */  lwc1       $f18, 0x38($sp)
/* 13D14 80013114 46028282 */  mul.s      $f10, $f16, $f2
/* 13D18 80013118 460A8101 */  sub.s      $f4, $f16, $f10
/* 13D1C 8001311C 460C2182 */  mul.s      $f6, $f4, $f12
/* 13D20 80013120 00000000 */  nop
/* 13D24 80013124 46029202 */  mul.s      $f8, $f18, $f2
/* 13D28 80013128 E7A6002C */  swc1       $f6, 0x2c($sp)
/* 13D2C 8001312C 46089281 */  sub.s      $f10, $f18, $f8
/* 13D30 80013130 460C5102 */  mul.s      $f4, $f10, $f12
/* 13D34 80013134 10000021 */  b          .L800131BC
/* 13D38 80013138 E7A40024 */   swc1      $f4, 0x24($sp)
/* 13D3C 8001313C 460E003E */  c.le.s     $f0, $f14
.L80013140:
/* 13D40 80013140 00000000 */  nop
/* 13D44 80013144 4502001E */  bc1fl      .L800131C0
/* 13D48 80013148 C48A0040 */   lwc1      $f10, 0x40($a0)
/* 13D4C 8001314C 46007083 */  div.s      $f2, $f14, $f0
/* 13D50 80013150 C7A60040 */  lwc1       $f6, 0x40($sp)
/* 13D54 80013154 C48C0070 */  lwc1       $f12, 0x70($a0)
/* 13D58 80013158 3C013FE0 */  lui        $at, 0x3fe0
/* 13D5C 8001315C 46023202 */  mul.s      $f8, $f6, $f2
/* 13D60 80013160 44814800 */  mtc1       $at, $f9
/* 13D64 80013164 46083281 */  sub.s      $f10, $f6, $f8
/* 13D68 80013168 44804000 */  mtc1       $zero, $f8
/* 13D6C 8001316C 460C5102 */  mul.s      $f4, $f10, $f12
/* 13D70 80013170 460021A1 */  cvt.d.s    $f6, $f4
/* 13D74 80013174 46283282 */  mul.d      $f10, $f6, $f8
/* 13D78 80013178 C7A60038 */  lwc1       $f6, 0x38($sp)
/* 13D7C 8001317C 46023202 */  mul.s      $f8, $f6, $f2
/* 13D80 80013180 44814800 */  mtc1       $at, $f9
/* 13D84 80013184 46205120 */  cvt.s.d    $f4, $f10
/* 13D88 80013188 46083281 */  sub.s      $f10, $f6, $f8
/* 13D8C 8001318C E7A4002C */  swc1       $f4, 0x2c($sp)
/* 13D90 80013190 44804000 */  mtc1       $zero, $f8
/* 13D94 80013194 460C5102 */  mul.s      $f4, $f10, $f12
/* 13D98 80013198 460021A1 */  cvt.d.s    $f6, $f4
/* 13D9C 8001319C 46283282 */  mul.d      $f10, $f6, $f8
/* 13DA0 800131A0 46205120 */  cvt.s.d    $f4, $f10
/* 13DA4 800131A4 10000005 */  b          .L800131BC
/* 13DA8 800131A8 E7A40024 */   swc1      $f4, 0x24($sp)
/* 13DAC 800131AC 44803000 */  mtc1       $zero, $f6
.L800131B0:
/* 13DB0 800131B0 44804000 */  mtc1       $zero, $f8
/* 13DB4 800131B4 E7A60024 */  swc1       $f6, 0x24($sp)
/* 13DB8 800131B8 E7A8002C */  swc1       $f8, 0x2c($sp)
.L800131BC:
/* 13DBC 800131BC C48A0040 */  lwc1       $f10, 0x40($a0)
.L800131C0:
/* 13DC0 800131C0 C7A4002C */  lwc1       $f4, 0x2c($sp)
/* 13DC4 800131C4 C4880048 */  lwc1       $f8, 0x48($a0)
/* 13DC8 800131C8 C48E0074 */  lwc1       $f14, 0x74($a0)
/* 13DCC 800131CC 46045180 */  add.s      $f6, $f10, $f4
/* 13DD0 800131D0 3C0141C8 */  lui        $at, 0x41c8
/* 13DD4 800131D4 E4860040 */  swc1       $f6, 0x40($a0)
/* 13DD8 800131D8 C7AA0024 */  lwc1       $f10, 0x24($sp)
/* 13DDC 800131DC C4820040 */  lwc1       $f2, 0x40($a0)
/* 13DE0 800131E0 C486000C */  lwc1       $f6, 0xc($a0)
/* 13DE4 800131E4 460A4100 */  add.s      $f4, $f8, $f10
/* 13DE8 800131E8 C48A0014 */  lwc1       $f10, 0x14($a0)
/* 13DEC 800131EC 46023200 */  add.s      $f8, $f6, $f2
/* 13DF0 800131F0 E4840048 */  swc1       $f4, 0x48($a0)
/* 13DF4 800131F4 C48C0048 */  lwc1       $f12, 0x48($a0)
/* 13DF8 800131F8 460E1182 */  mul.s      $f6, $f2, $f14
/* 13DFC 800131FC E488000C */  swc1       $f8, 0xc($a0)
/* 13E00 80013200 460C5100 */  add.s      $f4, $f10, $f12
/* 13E04 80013204 460E6202 */  mul.s      $f8, $f12, $f14
/* 13E08 80013208 44815000 */  mtc1       $at, $f10
/* 13E0C 8001320C E4840014 */  swc1       $f4, 0x14($a0)
/* 13E10 80013210 E4860040 */  swc1       $f6, 0x40($a0)
/* 13E14 80013214 460A003C */  c.lt.s     $f0, $f10
/* 13E18 80013218 E4880048 */  swc1       $f8, 0x48($a0)
/* 13E1C 8001321C A3A00047 */  sb         $zero, 0x47($sp)
/* 13E20 80013220 4500003F */  bc1f       .L80013320
/* 13E24 80013224 3C198008 */   lui       $t9, %hi(gHUDState)
/* 13E28 80013228 8F39B2E4 */  lw         $t9, %lo(gHUDState)($t9)
/* 13E2C 8001322C 8FA90020 */  lw         $t1, 0x20($sp)
/* 13E30 80013230 33280080 */  andi       $t0, $t9, 0x80
/* 13E34 80013234 5500003B */  bnel       $t0, $zero, .L80013324
/* 13E38 80013238 948D0008 */   lhu       $t5, 8($a0)
/* 13E3C 8001323C C5300010 */  lwc1       $f16, 0x10($t1)
/* 13E40 80013240 C4840028 */  lwc1       $f4, 0x28($a0)
/* 13E44 80013244 3C018007 */  lui        $at, %hi(D_80071350)
/* 13E48 80013248 D42C1350 */  ldc1       $f12, %lo(D_80071350)($at)
/* 13E4C 8001324C 46048081 */  sub.s      $f2, $f16, $f4
/* 13E50 80013250 3C018007 */  lui        $at, 0x8007
/* 13E54 80013254 46001021 */  cvt.d.s    $f0, $f2
/* 13E58 80013258 4620603C */  c.lt.d     $f12, $f0
/* 13E5C 8001325C 00000000 */  nop
/* 13E60 80013260 45000007 */  bc1f       .L80013280
/* 13E64 80013264 00000000 */   nop
/* 13E68 80013268 3C018007 */  lui        $at, %hi(D_80071358)
/* 13E6C 8001326C D4261358 */  ldc1       $f6, %lo(D_80071358)($at)
/* 13E70 80013270 46260201 */  sub.d      $f8, $f0, $f6
/* 13E74 80013274 462040A0 */  cvt.s.d    $f2, $f8
/* 13E78 80013278 1000000B */  b          .L800132A8
/* 13E7C 8001327C 46001021 */   cvt.d.s   $f0, $f2
.L80013280:
/* 13E80 80013280 D42A1360 */  ldc1       $f10, 0x1360($at)
/* 13E84 80013284 3C018007 */  lui        $at, %hi(D_80071368)
/* 13E88 80013288 462A003C */  c.lt.d     $f0, $f10
/* 13E8C 8001328C 00000000 */  nop
/* 13E90 80013290 45000005 */  bc1f       .L800132A8
/* 13E94 80013294 00000000 */   nop
/* 13E98 80013298 D4241368 */  ldc1       $f4, %lo(D_80071368)($at)
/* 13E9C 8001329C 46240180 */  add.d      $f6, $f0, $f4
/* 13EA0 800132A0 462030A0 */  cvt.s.d    $f2, $f6
/* 13EA4 800132A4 46001021 */  cvt.d.s    $f0, $f2
.L800132A8:
/* 13EA8 800132A8 3C018007 */  lui        $at, %hi(D_80071370)
/* 13EAC 800132AC D42C1370 */  ldc1       $f12, %lo(D_80071370)($at)
/* 13EB0 800132B0 3C018007 */  lui        $at, %hi(D_80071378)
/* 13EB4 800132B4 462C003C */  c.lt.d     $f0, $f12
/* 13EB8 800132B8 00000000 */  nop
/* 13EBC 800132BC 45020013 */  bc1fl      .L8001330C
/* 13EC0 800132C0 948A0008 */   lhu       $t2, 8($a0)
/* 13EC4 800132C4 D42E1378 */  ldc1       $f14, %lo(D_80071378)($at)
/* 13EC8 800132C8 4620703C */  c.lt.d     $f14, $f0
/* 13ECC 800132CC 00000000 */  nop
/* 13ED0 800132D0 4502000E */  bc1fl      .L8001330C
/* 13ED4 800132D4 948A0008 */   lhu       $t2, 8($a0)
/* 13ED8 800132D8 44804000 */  mtc1       $zero, $f8
/* 13EDC 800132DC 460082A1 */  cvt.d.s    $f10, $f16
/* 13EE0 800132E0 4608103C */  c.lt.s     $f2, $f8
/* 13EE4 800132E4 00000000 */  nop
/* 13EE8 800132E8 45020004 */  bc1fl      .L800132FC
/* 13EEC 800132EC 46207006 */   mov.d     $f0, $f14
/* 13EF0 800132F0 10000002 */  b          .L800132FC
/* 13EF4 800132F4 46206006 */   mov.d     $f0, $f12
/* 13EF8 800132F8 46207006 */  mov.d      $f0, $f14
.L800132FC:
/* 13EFC 800132FC 462A0100 */  add.d      $f4, $f0, $f10
/* 13F00 80013300 462021A0 */  cvt.s.d    $f6, $f4
/* 13F04 80013304 E4860054 */  swc1       $f6, 0x54($a0)
/* 13F08 80013308 948A0008 */  lhu        $t2, 8($a0)
.L8001330C:
/* 13F0C 8001330C 240C0001 */  addiu      $t4, $zero, 1
/* 13F10 80013310 354B0004 */  ori        $t3, $t2, 4
/* 13F14 80013314 A48B0008 */  sh         $t3, 8($a0)
/* 13F18 80013318 10000024 */  b          .L800133AC
/* 13F1C 8001331C A3AC0047 */   sb        $t4, 0x47($sp)
.L80013320:
/* 13F20 80013320 948D0008 */  lhu        $t5, 8($a0)
.L80013324:
/* 13F24 80013324 8FAF0020 */  lw         $t7, 0x20($sp)
/* 13F28 80013328 31AE0020 */  andi       $t6, $t5, 0x20
/* 13F2C 8001332C 51C00020 */  beql       $t6, $zero, .L800133B0
/* 13F30 80013330 8FA50020 */   lw        $a1, 0x20($sp)
/* 13F34 80013334 C5E80010 */  lwc1       $f8, 0x10($t7)
/* 13F38 80013338 3C018007 */  lui        $at, %hi(D_80071380)
/* 13F3C 8001333C D42C1380 */  ldc1       $f12, %lo(D_80071380)($at)
/* 13F40 80013340 460042A1 */  cvt.d.s    $f10, $f8
/* 13F44 80013344 3C018007 */  lui        $at, 0x8007
/* 13F48 80013348 462C5100 */  add.d      $f4, $f10, $f12
/* 13F4C 8001334C 462021A0 */  cvt.s.d    $f6, $f4
/* 13F50 80013350 E4860054 */  swc1       $f6, 0x54($a0)
/* 13F54 80013354 C4880054 */  lwc1       $f8, 0x54($a0)
/* 13F58 80013358 46004021 */  cvt.d.s    $f0, $f8
/* 13F5C 8001335C 4620603C */  c.lt.d     $f12, $f0
/* 13F60 80013360 00000000 */  nop
/* 13F64 80013364 45000007 */  bc1f       .L80013384
/* 13F68 80013368 00000000 */   nop
/* 13F6C 8001336C 3C018007 */  lui        $at, %hi(D_80071388)
/* 13F70 80013370 D42A1388 */  ldc1       $f10, %lo(D_80071388)($at)
/* 13F74 80013374 462A0101 */  sub.d      $f4, $f0, $f10
/* 13F78 80013378 462021A0 */  cvt.s.d    $f6, $f4
/* 13F7C 8001337C 1000000B */  b          .L800133AC
/* 13F80 80013380 E4860054 */   swc1      $f6, 0x54($a0)
.L80013384:
/* 13F84 80013384 D4281390 */  ldc1       $f8, 0x1390($at)
/* 13F88 80013388 3C018007 */  lui        $at, %hi(D_80071398)
/* 13F8C 8001338C 4628003C */  c.lt.d     $f0, $f8
/* 13F90 80013390 00000000 */  nop
/* 13F94 80013394 45020006 */  bc1fl      .L800133B0
/* 13F98 80013398 8FA50020 */   lw        $a1, 0x20($sp)
/* 13F9C 8001339C D42A1398 */  ldc1       $f10, %lo(D_80071398)($at)
/* 13FA0 800133A0 462A0100 */  add.d      $f4, $f0, $f10
/* 13FA4 800133A4 462021A0 */  cvt.s.d    $f6, $f4
/* 13FA8 800133A8 E4860054 */  swc1       $f6, 0x54($a0)
.L800133AC:
/* 13FAC 800133AC 8FA50020 */  lw         $a1, 0x20($sp)
.L800133B0:
/* 13FB0 800133B0 0C004F78 */  jal        func_80013DE0
/* 13FB4 800133B4 AFA40048 */   sw        $a0, 0x48($sp)
/* 13FB8 800133B8 3C014080 */  lui        $at, 0x4080
/* 13FBC 800133BC 44814000 */  mtc1       $at, $f8
/* 13FC0 800133C0 8FA40048 */  lw         $a0, 0x48($sp)
/* 13FC4 800133C4 3C028008 */  lui        $v0, %hi(D_80086BA0)
/* 13FC8 800133C8 24426BA0 */  addiu      $v0, $v0, %lo(D_80086BA0)
/* 13FCC 800133CC E4480000 */  swc1       $f8, ($v0)
/* 13FD0 800133D0 8C860014 */  lw         $a2, 0x14($a0)
/* 13FD4 800133D4 C48E0010 */  lwc1       $f14, 0x10($a0)
/* 13FD8 800133D8 C48C000C */  lwc1       $f12, 0xc($a0)
/* 13FDC 800133DC AFA20010 */  sw         $v0, 0x10($sp)
/* 13FE0 800133E0 0C003B98 */  jal        func_8000EE60
/* 13FE4 800133E4 24070602 */   addiu     $a3, $zero, 0x602
/* 13FE8 800133E8 3C028008 */  lui        $v0, %hi(D_80086BA0)
/* 13FEC 800133EC 24426BA0 */  addiu      $v0, $v0, %lo(D_80086BA0)
/* 13FF0 800133F0 8FA40048 */  lw         $a0, 0x48($sp)
/* 13FF4 800133F4 C44A0000 */  lwc1       $f10, ($v0)
/* 13FF8 800133F8 3C018008 */  lui        $at, 0x8008
/* 13FFC 800133FC E48A000C */  swc1       $f10, 0xc($a0)
/* 14000 80013400 C4440008 */  lwc1       $f4, 8($v0)
/* 14004 80013404 E4840014 */  swc1       $f4, 0x14($a0)
/* 14008 80013408 94430018 */  lhu        $v1, 0x18($v0)
/* 1400C 8001340C 30788000 */  andi       $t8, $v1, 0x8000
/* 14010 80013410 53000005 */  beql       $t8, $zero, .L80013428
/* 14014 80013414 C44C0004 */   lwc1      $f12, 4($v0)
/* 14018 80013418 8FB90020 */  lw         $t9, 0x20($sp)
/* 1401C 8001341C 10000004 */  b          .L80013430
/* 14020 80013420 C7220004 */   lwc1      $f2, 4($t9)
/* 14024 80013424 C44C0004 */  lwc1       $f12, 4($v0)
.L80013428:
/* 14028 80013428 E7AC003C */  swc1       $f12, 0x3c($sp)
/* 1402C 8001342C C7A2003C */  lwc1       $f2, 0x3c($sp)
.L80013430:
/* 14030 80013430 8FA80020 */  lw         $t0, 0x20($sp)
/* 14034 80013434 A4236BBC */  sh         $v1, 0x6bbc($at)
/* 14038 80013438 C4880058 */  lwc1       $f8, 0x58($a0)
/* 1403C 8001343C C5060004 */  lwc1       $f6, 4($t0)
/* 14040 80013440 46083000 */  add.s      $f0, $f6, $f8
/* 14044 80013444 4600103C */  c.lt.s     $f2, $f0
/* 14048 80013448 00000000 */  nop
/* 1404C 8001344C 45020003 */  bc1fl      .L8001345C
/* 14050 80013450 44051000 */   mfc1      $a1, $f2
/* 14054 80013454 46000086 */  mov.s      $f2, $f0
/* 14058 80013458 44051000 */  mfc1       $a1, $f2
.L8001345C:
/* 1405C 8001345C 0C0051C8 */  jal        func_80014720
/* 14060 80013460 AFA40048 */   sw        $a0, 0x48($sp)
/* 14064 80013464 3C098009 */  lui        $t1, %hi(BattleState)
/* 14068 80013468 9529C592 */  lhu        $t1, %lo(BattleState)($t1)
/* 1406C 8001346C 8FA40048 */  lw         $a0, 0x48($sp)
/* 14070 80013470 46000406 */  mov.s      $f16, $f0
/* 14074 80013474 312A0001 */  andi       $t2, $t1, 1
/* 14078 80013478 11400007 */  beqz       $t2, .L80013498
/* 1407C 8001347C 3C018008 */   lui       $at, %hi(BrianYPos)
/* 14080 80013480 C422BAD0 */  lwc1       $f2, %lo(BrianYPos)($at)
/* 14084 80013484 4602003C */  c.lt.s     $f0, $f2
/* 14088 80013488 00000000 */  nop
/* 1408C 8001348C 45020003 */  bc1fl      .L8001349C
/* 14090 80013490 C48E0010 */   lwc1      $f14, 0x10($a0)
/* 14094 80013494 46001406 */  mov.s      $f16, $f2
.L80013498:
/* 14098 80013498 C48E0010 */  lwc1       $f14, 0x10($a0)
.L8001349C:
/* 1409C 8001349C 44805000 */  mtc1       $zero, $f10
/* 140A0 800134A0 3C018007 */  lui        $at, 0x8007
/* 140A4 800134A4 460E8301 */  sub.s      $f12, $f16, $f14
/* 140A8 800134A8 460A603C */  c.lt.s     $f12, $f10
/* 140AC 800134AC 00000000 */  nop
/* 140B0 800134B0 45000004 */  bc1f       .L800134C4
/* 140B4 800134B4 00000000 */   nop
/* 140B8 800134B8 3C018007 */  lui        $at, %hi(D_800713A0)
/* 140BC 800134BC 10000002 */  b          .L800134C8
/* 140C0 800134C0 D42013A0 */   ldc1      $f0, %lo(D_800713A0)($at)
.L800134C4:
/* 140C4 800134C4 D42013A8 */  ldc1       $f0, 0x13a8($at)
.L800134C8:
/* 140C8 800134C8 C4860070 */  lwc1       $f6, 0x70($a0)
/* 140CC 800134CC 46006121 */  cvt.d.s    $f4, $f12
/* 140D0 800134D0 46003221 */  cvt.d.s    $f8, $f6
/* 140D4 800134D4 46204282 */  mul.d      $f10, $f8, $f0
/* 140D8 800134D8 C4880044 */  lwc1       $f8, 0x44($a0)
/* 140DC 800134DC 462A2182 */  mul.d      $f6, $f4, $f10
/* 140E0 800134E0 46203320 */  cvt.s.d    $f12, $f6
/* 140E4 800134E4 C4860074 */  lwc1       $f6, 0x74($a0)
/* 140E8 800134E8 460C4100 */  add.s      $f4, $f8, $f12
/* 140EC 800134EC E4840044 */  swc1       $f4, 0x44($a0)
/* 140F0 800134F0 C4820044 */  lwc1       $f2, 0x44($a0)
/* 140F4 800134F4 46061202 */  mul.s      $f8, $f2, $f6
/* 140F8 800134F8 46027280 */  add.s      $f10, $f14, $f2
/* 140FC 800134FC E48A0010 */  swc1       $f10, 0x10($a0)
/* 14100 80013500 E4880044 */  swc1       $f8, 0x44($a0)
/* 14104 80013504 AFA40048 */  sw         $a0, 0x48($sp)
/* 14108 80013508 0C004F4F */  jal        pointCameraAtTarget_UNCONFIRMED
/* 1410C 8001350C 8FA50020 */   lw        $a1, 0x20($sp)
/* 14110 80013510 8FA40048 */  lw         $a0, 0x48($sp)
/* 14114 80013514 3C01BFE0 */  lui        $at, 0xbfe0
/* 14118 80013518 44817800 */  mtc1       $at, $f15
/* 1411C 8001351C C482000C */  lwc1       $f2, 0xc($a0)
/* 14120 80013520 C4840018 */  lwc1       $f4, 0x18($a0)
/* 14124 80013524 C48A0010 */  lwc1       $f10, 0x10($a0)
/* 14128 80013528 C486001C */  lwc1       $f6, 0x1c($a0)
/* 1412C 8001352C 46041401 */  sub.s      $f16, $f2, $f4
/* 14130 80013530 44807000 */  mtc1       $zero, $f14
/* 14134 80013534 3C013FE0 */  lui        $at, 0x3fe0
/* 14138 80013538 46065201 */  sub.s      $f8, $f10, $f6
/* 1413C 8001353C 46008021 */  cvt.d.s    $f0, $f16
/* 14140 80013540 E7A8003C */  swc1       $f8, 0x3c($sp)
/* 14144 80013544 4620703C */  c.lt.d     $f14, $f0
/* 14148 80013548 C4840020 */  lwc1       $f4, 0x20($a0)
/* 1414C 8001354C C48C0014 */  lwc1       $f12, 0x14($a0)
/* 14150 80013550 45000021 */  bc1f       .L800135D8
/* 14154 80013554 46046481 */   sub.s     $f18, $f12, $f4
/* 14158 80013558 44815800 */  mtc1       $at, $f11
/* 1415C 8001355C 44805000 */  mtc1       $zero, $f10
/* 14160 80013560 00000000 */  nop
/* 14164 80013564 462A003C */  c.lt.d     $f0, $f10
/* 14168 80013568 00000000 */  nop
/* 1416C 8001356C 4500001A */  bc1f       .L800135D8
/* 14170 80013570 00000000 */   nop
/* 14174 80013574 46009021 */  cvt.d.s    $f0, $f18
/* 14178 80013578 3C013FE0 */  lui        $at, 0x3fe0
/* 1417C 8001357C 4620703C */  c.lt.d     $f14, $f0
/* 14180 80013580 00000000 */  nop
/* 14184 80013584 45000014 */  bc1f       .L800135D8
/* 14188 80013588 00000000 */   nop
/* 1418C 8001358C 44813800 */  mtc1       $at, $f7
/* 14190 80013590 44803000 */  mtc1       $zero, $f6
/* 14194 80013594 3C013FE0 */  lui        $at, 0x3fe0
/* 14198 80013598 4626003C */  c.lt.d     $f0, $f6
/* 1419C 8001359C 00000000 */  nop
/* 141A0 800135A0 4500000D */  bc1f       .L800135D8
/* 141A4 800135A4 00000000 */   nop
/* 141A8 800135A8 44812800 */  mtc1       $at, $f5
/* 141AC 800135AC 44802000 */  mtc1       $zero, $f4
/* 141B0 800135B0 46001221 */  cvt.d.s    $f8, $f2
/* 141B4 800135B4 46244280 */  add.d      $f10, $f8, $f4
/* 141B8 800135B8 44802000 */  mtc1       $zero, $f4
/* 141BC 800135BC 44812800 */  mtc1       $at, $f5
/* 141C0 800135C0 46006221 */  cvt.d.s    $f8, $f12
/* 141C4 800135C4 462051A0 */  cvt.s.d    $f6, $f10
/* 141C8 800135C8 46244280 */  add.d      $f10, $f8, $f4
/* 141CC 800135CC E486000C */  swc1       $f6, 0xc($a0)
/* 141D0 800135D0 462051A0 */  cvt.s.d    $f6, $f10
/* 141D4 800135D4 E4860014 */  swc1       $f6, 0x14($a0)
.L800135D8:
/* 141D8 800135D8 46108202 */  mul.s      $f8, $f16, $f16
/* 141DC 800135DC AFA40048 */  sw         $a0, 0x48($sp)
/* 141E0 800135E0 E7B00040 */  swc1       $f16, 0x40($sp)
/* 141E4 800135E4 46129102 */  mul.s      $f4, $f18, $f18
/* 141E8 800135E8 E7B20038 */  swc1       $f18, 0x38($sp)
/* 141EC 800135EC 0C00D3D8 */  jal        _nsqrtf
/* 141F0 800135F0 46044300 */   add.s     $f12, $f8, $f4
/* 141F4 800135F4 44801000 */  mtc1       $zero, $f2
/* 141F8 800135F8 C7AC003C */  lwc1       $f12, 0x3c($sp)
/* 141FC 800135FC 8FA40048 */  lw         $a0, 0x48($sp)
/* 14200 80013600 46000386 */  mov.s      $f14, $f0
/* 14204 80013604 46026032 */  c.eq.s     $f12, $f2
/* 14208 80013608 00000000 */  nop
/* 1420C 8001360C 45000005 */  bc1f       .L80013624
/* 14210 80013610 00000000 */   nop
/* 14214 80013614 46020032 */  c.eq.s     $f0, $f2
/* 14218 80013618 00000000 */  nop
/* 1421C 8001361C 45030007 */  bc1tl      .L8001363C
/* 14220 80013620 C7AC0040 */   lwc1      $f12, 0x40($sp)
.L80013624:
/* 14224 80013624 0C008C84 */  jal        func_80023210
/* 14228 80013628 AFA40048 */   sw        $a0, 0x48($sp)
/* 1422C 8001362C 8FA40048 */  lw         $a0, 0x48($sp)
/* 14230 80013630 44801000 */  mtc1       $zero, $f2
/* 14234 80013634 E4800024 */  swc1       $f0, 0x24($a0)
/* 14238 80013638 C7AC0040 */  lwc1       $f12, 0x40($sp)
.L8001363C:
/* 1423C 8001363C C7AA0038 */  lwc1       $f10, 0x38($sp)
/* 14240 80013640 C7AE0038 */  lwc1       $f14, 0x38($sp)
/* 14244 80013644 46026032 */  c.eq.s     $f12, $f2
/* 14248 80013648 00000000 */  nop
/* 1424C 8001364C 45000005 */  bc1f       .L80013664
/* 14250 80013650 00000000 */   nop
/* 14254 80013654 46025032 */  c.eq.s     $f10, $f2
/* 14258 80013658 00000000 */  nop
/* 1425C 8001365C 4503000B */  bc1tl      .L8001368C
/* 14260 80013660 8FBF001C */   lw        $ra, 0x1c($sp)
.L80013664:
/* 14264 80013664 0C008C84 */  jal        func_80023210
/* 14268 80013668 AFA40048 */   sw        $a0, 0x48($sp)
/* 1426C 8001366C 8FA40048 */  lw         $a0, 0x48($sp)
/* 14270 80013670 E480002C */  swc1       $f0, 0x2c($a0)
/* 14274 80013674 93AB0047 */  lbu        $t3, 0x47($sp)
/* 14278 80013678 55600004 */  bnel       $t3, $zero, .L8001368C
/* 1427C 8001367C 8FBF001C */   lw        $ra, 0x1c($sp)
/* 14280 80013680 C486002C */  lwc1       $f6, 0x2c($a0)
/* 14284 80013684 E4860028 */  swc1       $f6, 0x28($a0)
/* 14288 80013688 8FBF001C */  lw         $ra, 0x1c($sp)
.L8001368C:
/* 1428C 8001368C 27BD0048 */  addiu      $sp, $sp, 0x48
/* 14290 80013690 03E00008 */  jr         $ra
/* 14294 80013694 00000000 */   nop

glabel camModeStaticRotate
/* 14298 80013698 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 1429C 8001369C AFB00018 */  sw         $s0, 0x18($sp)
/* 142A0 800136A0 00808025 */  or         $s0, $a0, $zero
/* 142A4 800136A4 AFBF001C */  sw         $ra, 0x1c($sp)
/* 142A8 800136A8 8E0E0080 */  lw         $t6, 0x80($s0)
/* 142AC 800136AC 02002025 */  or         $a0, $s0, $zero
/* 142B0 800136B0 0C004F4C */  jal        EmptyCameraFunc
/* 142B4 800136B4 AFAE0024 */   sw        $t6, 0x24($sp)
/* 142B8 800136B8 02002025 */  or         $a0, $s0, $zero
/* 142BC 800136BC 0C004F4F */  jal        pointCameraAtTarget_UNCONFIRMED
/* 142C0 800136C0 8FA50024 */   lw        $a1, 0x24($sp)
/* 142C4 800136C4 C6080010 */  lwc1       $f8, 0x10($s0)
/* 142C8 800136C8 C60A001C */  lwc1       $f10, 0x1c($s0)
/* 142CC 800136CC C604000C */  lwc1       $f4, 0xc($s0)
/* 142D0 800136D0 C6060018 */  lwc1       $f6, 0x18($s0)
/* 142D4 800136D4 460A4481 */  sub.s      $f18, $f8, $f10
/* 142D8 800136D8 46062001 */  sub.s      $f0, $f4, $f6
/* 142DC 800136DC E7B20030 */  swc1       $f18, 0x30($sp)
/* 142E0 800136E0 C6060020 */  lwc1       $f6, 0x20($s0)
/* 142E4 800136E4 C6040014 */  lwc1       $f4, 0x14($s0)
/* 142E8 800136E8 46000202 */  mul.s      $f8, $f0, $f0
/* 142EC 800136EC E7A00034 */  swc1       $f0, 0x34($sp)
/* 142F0 800136F0 46062081 */  sub.s      $f2, $f4, $f6
/* 142F4 800136F4 46021282 */  mul.s      $f10, $f2, $f2
/* 142F8 800136F8 E7A2002C */  swc1       $f2, 0x2c($sp)
/* 142FC 800136FC 0C00D3D8 */  jal        _nsqrtf
/* 14300 80013700 460A4300 */   add.s     $f12, $f8, $f10
/* 14304 80013704 C7AC0030 */  lwc1       $f12, 0x30($sp)
/* 14308 80013708 44808000 */  mtc1       $zero, $f16
/* 1430C 8001370C E7A00028 */  swc1       $f0, 0x28($sp)
/* 14310 80013710 46106032 */  c.eq.s     $f12, $f16
/* 14314 80013714 00000000 */  nop
/* 14318 80013718 45000005 */  bc1f       .L80013730
/* 1431C 8001371C 00000000 */   nop
/* 14320 80013720 46100032 */  c.eq.s     $f0, $f16
/* 14324 80013724 00000000 */  nop
/* 14328 80013728 45030006 */  bc1tl      .L80013744
/* 1432C 8001372C C7AC0034 */   lwc1      $f12, 0x34($sp)
.L80013730:
/* 14330 80013730 0C008C84 */  jal        func_80023210
/* 14334 80013734 C7AE0028 */   lwc1      $f14, 0x28($sp)
/* 14338 80013738 44808000 */  mtc1       $zero, $f16
/* 1433C 8001373C E6000024 */  swc1       $f0, 0x24($s0)
/* 14340 80013740 C7AC0034 */  lwc1       $f12, 0x34($sp)
.L80013744:
/* 14344 80013744 C7B2002C */  lwc1       $f18, 0x2c($sp)
/* 14348 80013748 46106032 */  c.eq.s     $f12, $f16
/* 1434C 8001374C 00000000 */  nop
/* 14350 80013750 45000005 */  bc1f       .L80013768
/* 14354 80013754 00000000 */   nop
/* 14358 80013758 46109032 */  c.eq.s     $f18, $f16
/* 1435C 8001375C 00000000 */  nop
/* 14360 80013760 45030006 */  bc1tl      .L8001377C
/* 14364 80013764 C60C0060 */   lwc1      $f12, 0x60($s0)
.L80013768:
/* 14368 80013768 0C008C84 */  jal        func_80023210
/* 1436C 8001376C C7AE002C */   lwc1      $f14, 0x2c($sp)
/* 14370 80013770 44808000 */  mtc1       $zero, $f16
/* 14374 80013774 E6000028 */  swc1       $f0, 0x28($s0)
/* 14378 80013778 C60C0060 */  lwc1       $f12, 0x60($s0)
.L8001377C:
/* 1437C 8001377C 460C8032 */  c.eq.s     $f16, $f12
/* 14380 80013780 00000000 */  nop
/* 14384 80013784 45020007 */  bc1fl      .L800137A4
/* 14388 80013788 C6000024 */   lwc1      $f0, 0x24($s0)
/* 1438C 8001378C C6040064 */  lwc1       $f4, 0x64($s0)
/* 14390 80013790 46048032 */  c.eq.s     $f16, $f4
/* 14394 80013794 00000000 */  nop
/* 14398 80013798 45030027 */  bc1tl      .L80013838
/* 1439C 8001379C C6020068 */   lwc1      $f2, 0x68($s0)
/* 143A0 800137A0 C6000024 */  lwc1       $f0, 0x24($s0)
.L800137A4:
/* 143A4 800137A4 460C003C */  c.lt.s     $f0, $f12
/* 143A8 800137A8 00000000 */  nop
/* 143AC 800137AC 45020010 */  bc1fl      .L800137F0
/* 143B0 800137B0 C60C0064 */   lwc1      $f12, 0x64($s0)
/* 143B4 800137B4 0C00D87C */  jal        cosf
/* 143B8 800137B8 E60C0024 */   swc1      $f12, 0x24($s0)
/* 143BC 800137BC C7A60028 */  lwc1       $f6, 0x28($sp)
/* 143C0 800137C0 46003203 */  div.s      $f8, $f6, $f0
/* 143C4 800137C4 E7A80034 */  swc1       $f8, 0x34($sp)
/* 143C8 800137C8 0C00D5A0 */  jal        sinf
/* 143CC 800137CC C60C0060 */   lwc1      $f12, 0x60($s0)
/* 143D0 800137D0 C7B20034 */  lwc1       $f18, 0x34($sp)
/* 143D4 800137D4 C60A0010 */  lwc1       $f10, 0x10($s0)
/* 143D8 800137D8 44808000 */  mtc1       $zero, $f16
/* 143DC 800137DC 46120102 */  mul.s      $f4, $f0, $f18
/* 143E0 800137E0 46045181 */  sub.s      $f6, $f10, $f4
/* 143E4 800137E4 10000013 */  b          .L80013834
/* 143E8 800137E8 E606001C */   swc1      $f6, 0x1c($s0)
/* 143EC 800137EC C60C0064 */  lwc1       $f12, 0x64($s0)
.L800137F0:
/* 143F0 800137F0 4600603C */  c.lt.s     $f12, $f0
/* 143F4 800137F4 00000000 */  nop
/* 143F8 800137F8 4502000F */  bc1fl      .L80013838
/* 143FC 800137FC C6020068 */   lwc1      $f2, 0x68($s0)
/* 14400 80013800 0C00D87C */  jal        cosf
/* 14404 80013804 E60C0024 */   swc1      $f12, 0x24($s0)
/* 14408 80013808 C7A80028 */  lwc1       $f8, 0x28($sp)
/* 1440C 8001380C 46004483 */  div.s      $f18, $f8, $f0
/* 14410 80013810 E7B20034 */  swc1       $f18, 0x34($sp)
/* 14414 80013814 0C00D5A0 */  jal        sinf
/* 14418 80013818 C60C0064 */   lwc1      $f12, 0x64($s0)
/* 1441C 8001381C C7A40034 */  lwc1       $f4, 0x34($sp)
/* 14420 80013820 C60A0010 */  lwc1       $f10, 0x10($s0)
/* 14424 80013824 44808000 */  mtc1       $zero, $f16
/* 14428 80013828 46040182 */  mul.s      $f6, $f0, $f4
/* 1442C 8001382C 46065201 */  sub.s      $f8, $f10, $f6
/* 14430 80013830 E608001C */  swc1       $f8, 0x1c($s0)
.L80013834:
/* 14434 80013834 C6020068 */  lwc1       $f2, 0x68($s0)
.L80013838:
/* 14438 80013838 C60E006C */  lwc1       $f14, 0x6c($s0)
/* 1443C 8001383C 460E103C */  c.lt.s     $f2, $f14
/* 14440 80013840 00000000 */  nop
/* 14444 80013844 45020033 */  bc1fl      .L80013914
/* 14448 80013848 4602703C */   c.lt.s    $f14, $f2
/* 1444C 8001384C C6000028 */  lwc1       $f0, 0x28($s0)
/* 14450 80013850 4602003C */  c.lt.s     $f0, $f2
/* 14454 80013854 00000000 */  nop
/* 14458 80013858 45020016 */  bc1fl      .L800138B4
/* 1445C 8001385C 4600703C */   c.lt.s    $f14, $f0
/* 14460 80013860 E6020028 */  swc1       $f2, 0x28($s0)
/* 14464 80013864 C7B20028 */  lwc1       $f18, 0x28($sp)
/* 14468 80013868 3C058008 */  lui        $a1, %hi(D_80086B90)
/* 1446C 8001386C 24A56B90 */  addiu      $a1, $a1, %lo(D_80086B90)
/* 14470 80013870 46009107 */  neg.s      $f4, $f18
/* 14474 80013874 E4B00000 */  swc1       $f16, ($a1)
/* 14478 80013878 E4A40004 */  swc1       $f4, 4($a1)
/* 1447C 8001387C 0C008CBD */  jal        func_800232F4
/* 14480 80013880 C60C0028 */   lwc1      $f12, 0x28($s0)
/* 14484 80013884 3C058008 */  lui        $a1, %hi(D_80086B90)
/* 14488 80013888 24A56B90 */  addiu      $a1, $a1, %lo(D_80086B90)
/* 1448C 8001388C C4A60000 */  lwc1       $f6, ($a1)
/* 14490 80013890 C60A000C */  lwc1       $f10, 0xc($s0)
/* 14494 80013894 C6120014 */  lwc1       $f18, 0x14($s0)
/* 14498 80013898 46065200 */  add.s      $f8, $f10, $f6
/* 1449C 8001389C E6080018 */  swc1       $f8, 0x18($s0)
/* 144A0 800138A0 C4A40004 */  lwc1       $f4, 4($a1)
/* 144A4 800138A4 46049280 */  add.s      $f10, $f18, $f4
/* 144A8 800138A8 10000054 */  b          .L800139FC
/* 144AC 800138AC E60A0020 */   swc1      $f10, 0x20($s0)
/* 144B0 800138B0 4600703C */  c.lt.s     $f14, $f0
.L800138B4:
/* 144B4 800138B4 00000000 */  nop
/* 144B8 800138B8 45020051 */  bc1fl      .L80013A00
/* 144BC 800138BC C6080028 */   lwc1      $f8, 0x28($s0)
/* 144C0 800138C0 E60E0028 */  swc1       $f14, 0x28($s0)
/* 144C4 800138C4 C7A60028 */  lwc1       $f6, 0x28($sp)
/* 144C8 800138C8 3C058008 */  lui        $a1, %hi(D_80086B90)
/* 144CC 800138CC 24A56B90 */  addiu      $a1, $a1, %lo(D_80086B90)
/* 144D0 800138D0 46003207 */  neg.s      $f8, $f6
/* 144D4 800138D4 E4B00000 */  swc1       $f16, ($a1)
/* 144D8 800138D8 E4A80004 */  swc1       $f8, 4($a1)
/* 144DC 800138DC 0C008CBD */  jal        func_800232F4
/* 144E0 800138E0 C60C0028 */   lwc1      $f12, 0x28($s0)
/* 144E4 800138E4 3C058008 */  lui        $a1, %hi(D_80086B90)
/* 144E8 800138E8 24A56B90 */  addiu      $a1, $a1, %lo(D_80086B90)
/* 144EC 800138EC C4A40000 */  lwc1       $f4, ($a1)
/* 144F0 800138F0 C612000C */  lwc1       $f18, 0xc($s0)
/* 144F4 800138F4 C6060014 */  lwc1       $f6, 0x14($s0)
/* 144F8 800138F8 46049280 */  add.s      $f10, $f18, $f4
/* 144FC 800138FC E60A0018 */  swc1       $f10, 0x18($s0)
/* 14500 80013900 C4A80004 */  lwc1       $f8, 4($a1)
/* 14504 80013904 46083480 */  add.s      $f18, $f6, $f8
/* 14508 80013908 1000003C */  b          .L800139FC
/* 1450C 8001390C E6120020 */   swc1      $f18, 0x20($s0)
/* 14510 80013910 4602703C */  c.lt.s     $f14, $f2
.L80013914:
/* 14514 80013914 00000000 */  nop
/* 14518 80013918 45020039 */  bc1fl      .L80013A00
/* 1451C 8001391C C6080028 */   lwc1      $f8, 0x28($s0)
/* 14520 80013920 C6000028 */  lwc1       $f0, 0x28($s0)
/* 14524 80013924 44805800 */  mtc1       $zero, $f11
/* 14528 80013928 44805000 */  mtc1       $zero, $f10
/* 1452C 8001392C 46000121 */  cvt.d.s    $f4, $f0
/* 14530 80013930 462A203C */  c.lt.d     $f4, $f10
/* 14534 80013934 00000000 */  nop
/* 14538 80013938 4502001A */  bc1fl      .L800139A4
/* 1453C 8001393C 4602003C */   c.lt.s    $f0, $f2
/* 14540 80013940 4600703C */  c.lt.s     $f14, $f0
/* 14544 80013944 00000000 */  nop
/* 14548 80013948 4502002D */  bc1fl      .L80013A00
/* 1454C 8001394C C6080028 */   lwc1      $f8, 0x28($s0)
/* 14550 80013950 E60E0028 */  swc1       $f14, 0x28($s0)
/* 14554 80013954 C7A60028 */  lwc1       $f6, 0x28($sp)
/* 14558 80013958 3C058008 */  lui        $a1, %hi(D_80086B90)
/* 1455C 8001395C 24A56B90 */  addiu      $a1, $a1, %lo(D_80086B90)
/* 14560 80013960 46003207 */  neg.s      $f8, $f6
/* 14564 80013964 E4B00000 */  swc1       $f16, ($a1)
/* 14568 80013968 E4A80004 */  swc1       $f8, 4($a1)
/* 1456C 8001396C 0C008CBD */  jal        func_800232F4
/* 14570 80013970 C60C0028 */   lwc1      $f12, 0x28($s0)
/* 14574 80013974 3C058008 */  lui        $a1, %hi(D_80086B90)
/* 14578 80013978 24A56B90 */  addiu      $a1, $a1, %lo(D_80086B90)
/* 1457C 8001397C C4A40000 */  lwc1       $f4, ($a1)
/* 14580 80013980 C612000C */  lwc1       $f18, 0xc($s0)
/* 14584 80013984 C6060014 */  lwc1       $f6, 0x14($s0)
/* 14588 80013988 46049280 */  add.s      $f10, $f18, $f4
/* 1458C 8001398C E60A0018 */  swc1       $f10, 0x18($s0)
/* 14590 80013990 C4A80004 */  lwc1       $f8, 4($a1)
/* 14594 80013994 46083480 */  add.s      $f18, $f6, $f8
/* 14598 80013998 10000018 */  b          .L800139FC
/* 1459C 8001399C E6120020 */   swc1      $f18, 0x20($s0)
/* 145A0 800139A0 4602003C */  c.lt.s     $f0, $f2
.L800139A4:
/* 145A4 800139A4 00000000 */  nop
/* 145A8 800139A8 45020015 */  bc1fl      .L80013A00
/* 145AC 800139AC C6080028 */   lwc1      $f8, 0x28($s0)
/* 145B0 800139B0 E6020028 */  swc1       $f2, 0x28($s0)
/* 145B4 800139B4 C7A40028 */  lwc1       $f4, 0x28($sp)
/* 145B8 800139B8 3C058008 */  lui        $a1, %hi(D_80086B90)
/* 145BC 800139BC 24A56B90 */  addiu      $a1, $a1, %lo(D_80086B90)
/* 145C0 800139C0 46002287 */  neg.s      $f10, $f4
/* 145C4 800139C4 E4B00000 */  swc1       $f16, ($a1)
/* 145C8 800139C8 E4AA0004 */  swc1       $f10, 4($a1)
/* 145CC 800139CC 0C008CBD */  jal        func_800232F4
/* 145D0 800139D0 C60C0028 */   lwc1      $f12, 0x28($s0)
/* 145D4 800139D4 3C058008 */  lui        $a1, %hi(D_80086B90)
/* 145D8 800139D8 24A56B90 */  addiu      $a1, $a1, %lo(D_80086B90)
/* 145DC 800139DC C4A80000 */  lwc1       $f8, ($a1)
/* 145E0 800139E0 C606000C */  lwc1       $f6, 0xc($s0)
/* 145E4 800139E4 C6040014 */  lwc1       $f4, 0x14($s0)
/* 145E8 800139E8 46083480 */  add.s      $f18, $f6, $f8
/* 145EC 800139EC E6120018 */  swc1       $f18, 0x18($s0)
/* 145F0 800139F0 C4AA0004 */  lwc1       $f10, 4($a1)
/* 145F4 800139F4 460A2180 */  add.s      $f6, $f4, $f10
/* 145F8 800139F8 E6060020 */  swc1       $f6, 0x20($s0)
.L800139FC:
/* 145FC 800139FC C6080028 */  lwc1       $f8, 0x28($s0)
.L80013A00:
/* 14600 80013A00 E608002C */  swc1       $f8, 0x2c($s0)
/* 14604 80013A04 8FBF001C */  lw         $ra, 0x1c($sp)
/* 14608 80013A08 8FB00018 */  lw         $s0, 0x18($sp)
/* 1460C 80013A0C 03E00008 */  jr         $ra
/* 14610 80013A10 27BD0038 */   addiu     $sp, $sp, 0x38

glabel camModeStatic
/* 14614 80013A14 AFA40000 */  sw         $a0, ($sp)
/* 14618 80013A18 03E00008 */  jr         $ra
/* 1461C 80013A1C 00000000 */   nop

glabel func_80013A20
/* 14620 80013A20 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 14624 80013A24 AFBF0014 */  sw         $ra, 0x14($sp)
/* 14628 80013A28 948E0008 */  lhu        $t6, 8($a0)
/* 1462C 80013A2C 3C018009 */  lui        $at, 0x8009
/* 14630 80013A30 31CF0040 */  andi       $t7, $t6, 0x40
/* 14634 80013A34 51E00019 */  beql       $t7, $zero, .L80013A9C
/* 14638 80013A38 8C820080 */   lw        $v0, 0x80($a0)
/* 1463C 80013A3C 8C980004 */  lw         $t8, 4($a0)
/* 14640 80013A40 3C0B8008 */  lui        $t3, %hi(D_80086B00)
/* 14644 80013A44 256B6B00 */  addiu      $t3, $t3, %lo(D_80086B00)
/* 14648 80013A48 2719FFFF */  addiu      $t9, $t8, -1
/* 1464C 80013A4C 17200086 */  bnez       $t9, .L80013C68
/* 14650 80013A50 AC990004 */   sw        $t9, 4($a0)
/* 14654 80013A54 94890008 */  lhu        $t1, 8($a0)
/* 14658 80013A58 00807025 */  or         $t6, $a0, $zero
/* 1465C 80013A5C 256D0084 */  addiu      $t5, $t3, 0x84
/* 14660 80013A60 312AFFBF */  andi       $t2, $t1, 0xffbf
/* 14664 80013A64 A48A0008 */  sh         $t2, 8($a0)
.L80013A68:
/* 14668 80013A68 8D610000 */  lw         $at, ($t3)
/* 1466C 80013A6C 256B000C */  addiu      $t3, $t3, 0xc
/* 14670 80013A70 25CE000C */  addiu      $t6, $t6, 0xc
/* 14674 80013A74 ADC1FFF4 */  sw         $at, -0xc($t6)
/* 14678 80013A78 8D61FFF8 */  lw         $at, -8($t3)
/* 1467C 80013A7C ADC1FFF8 */  sw         $at, -8($t6)
/* 14680 80013A80 8D61FFFC */  lw         $at, -4($t3)
/* 14684 80013A84 156DFFF8 */  bne        $t3, $t5, .L80013A68
/* 14688 80013A88 ADC1FFFC */   sw        $at, -4($t6)
/* 1468C 80013A8C 8D610000 */  lw         $at, ($t3)
/* 14690 80013A90 10000075 */  b          .L80013C68
/* 14694 80013A94 ADC10000 */   sw        $at, ($t6)
/* 14698 80013A98 8C820080 */  lw         $v0, 0x80($a0)
.L80013A9C:
/* 1469C 80013A9C C432C59C */  lwc1       $f18, -0x3a64($at)
/* 146A0 80013AA0 3C018009 */  lui        $at, %hi(D_8008C5A0)
/* 146A4 80013AA4 C4500000 */  lwc1       $f16, ($v0)
/* 146A8 80013AA8 C42AC5A0 */  lwc1       $f10, %lo(D_8008C5A0)($at)
/* 146AC 80013AAC C4480008 */  lwc1       $f8, 8($v0)
/* 146B0 80013AB0 46109301 */  sub.s      $f12, $f18, $f16
/* 146B4 80013AB4 AFA40018 */  sw         $a0, 0x18($sp)
/* 146B8 80013AB8 0C008C84 */  jal        func_80023210
/* 146BC 80013ABC 46085381 */   sub.s     $f14, $f10, $f8
/* 146C0 80013AC0 3C018007 */  lui        $at, %hi(D_800713B0)
/* 146C4 80013AC4 D43013B0 */  ldc1       $f16, %lo(D_800713B0)($at)
/* 146C8 80013AC8 46000121 */  cvt.d.s    $f4, $f0
/* 146CC 80013ACC 3C028008 */  lui        $v0, %hi(D_80086EFC)
/* 146D0 80013AD0 46302180 */  add.d      $f6, $f4, $f16
/* 146D4 80013AD4 8FA40018 */  lw         $a0, 0x18($sp)
/* 146D8 80013AD8 3C018007 */  lui        $at, 0x8007
/* 146DC 80013ADC 24426EFC */  addiu      $v0, $v0, %lo(D_80086EFC)
/* 146E0 80013AE0 46203320 */  cvt.s.d    $f12, $f6
/* 146E4 80013AE4 3C198009 */  lui        $t9, 0x8009
/* 146E8 80013AE8 460060A1 */  cvt.d.s    $f2, $f12
/* 146EC 80013AEC 4622803C */  c.lt.d     $f16, $f2
/* 146F0 80013AF0 00000000 */  nop
/* 146F4 80013AF4 45000008 */  bc1f       .L80013B18
/* 146F8 80013AF8 00000000 */   nop
/* 146FC 80013AFC 3C018007 */  lui        $at, %hi(D_800713B8)
/* 14700 80013B00 D42E13B8 */  ldc1       $f14, %lo(D_800713B8)($at)
/* 14704 80013B04 3C018007 */  lui        $at, %hi(D_800713C0)
/* 14708 80013B08 D43213C0 */  ldc1       $f18, %lo(D_800713C0)($at)
/* 1470C 80013B0C 462E1201 */  sub.d      $f8, $f2, $f14
/* 14710 80013B10 1000000A */  b          .L80013B3C
/* 14714 80013B14 46204320 */   cvt.s.d   $f12, $f8
.L80013B18:
/* 14718 80013B18 D43213C8 */  ldc1       $f18, 0x13c8($at)
/* 1471C 80013B1C 3C018007 */  lui        $at, %hi(D_800713D0)
/* 14720 80013B20 4632103C */  c.lt.d     $f2, $f18
/* 14724 80013B24 00000000 */  nop
/* 14728 80013B28 45000004 */  bc1f       .L80013B3C
/* 1472C 80013B2C 00000000 */   nop
/* 14730 80013B30 D42E13D0 */  ldc1       $f14, %lo(D_800713D0)($at)
/* 14734 80013B34 462E1280 */  add.d      $f10, $f2, $f14
/* 14738 80013B38 46205320 */  cvt.s.d    $f12, $f10
.L80013B3C:
/* 1473C 80013B3C 3C018007 */  lui        $at, %hi(D_800713D8)
/* 14740 80013B40 D42213D8 */  ldc1       $f2, %lo(D_800713D8)($at)
/* 14744 80013B44 46006121 */  cvt.d.s    $f4, $f12
/* 14748 80013B48 3C018007 */  lui        $at, %hi(D_800713E0)
/* 1474C 80013B4C 46222183 */  div.d      $f6, $f4, $f2
/* 14750 80013B50 D42E13E0 */  ldc1       $f14, %lo(D_800713E0)($at)
/* 14754 80013B54 3C018007 */  lui        $at, %hi(D_800713E8)
/* 14758 80013B58 4620320D */  trunc.w.d  $f8, $f6
/* 1475C 80013B5C 44184000 */  mfc1       $t8, $f8
/* 14760 80013B60 D42813E8 */  ldc1       $f8, %lo(D_800713E8)($at)
/* 14764 80013B64 44985000 */  mtc1       $t8, $f10
/* 14768 80013B68 00000000 */  nop
/* 1476C 80013B6C 46805121 */  cvt.d.w    $f4, $f10
/* 14770 80013B70 46222182 */  mul.d      $f6, $f4, $f2
/* 14774 80013B74 46283281 */  sub.d      $f10, $f6, $f8
/* 14778 80013B78 46205320 */  cvt.s.d    $f12, $f10
/* 1477C 80013B7C 46006021 */  cvt.d.s    $f0, $f12
/* 14780 80013B80 4620803C */  c.lt.d     $f16, $f0
/* 14784 80013B84 00000000 */  nop
/* 14788 80013B88 45020005 */  bc1fl      .L80013BA0
/* 1478C 80013B8C 4632003C */   c.lt.d    $f0, $f18
/* 14790 80013B90 462E0101 */  sub.d      $f4, $f0, $f14
/* 14794 80013B94 10000007 */  b          .L80013BB4
/* 14798 80013B98 46202320 */   cvt.s.d   $f12, $f4
/* 1479C 80013B9C 4632003C */  c.lt.d     $f0, $f18
.L80013BA0:
/* 147A0 80013BA0 00000000 */  nop
/* 147A4 80013BA4 45020004 */  bc1fl      .L80013BB8
/* 147A8 80013BA8 C4480000 */   lwc1      $f8, ($v0)
/* 147AC 80013BAC 462E0180 */  add.d      $f6, $f0, $f14
/* 147B0 80013BB0 46203320 */  cvt.s.d    $f12, $f6
.L80013BB4:
/* 147B4 80013BB4 C4480000 */  lwc1       $f8, ($v0)
.L80013BB8:
/* 147B8 80013BB8 46086300 */  add.s      $f12, $f12, $f8
/* 147BC 80013BBC 46006021 */  cvt.d.s    $f0, $f12
/* 147C0 80013BC0 4620803C */  c.lt.d     $f16, $f0
/* 147C4 80013BC4 00000000 */  nop
/* 147C8 80013BC8 45020005 */  bc1fl      .L80013BE0
/* 147CC 80013BCC 4632003C */   c.lt.d    $f0, $f18
/* 147D0 80013BD0 462E0281 */  sub.d      $f10, $f0, $f14
/* 147D4 80013BD4 10000007 */  b          .L80013BF4
/* 147D8 80013BD8 46205320 */   cvt.s.d   $f12, $f10
/* 147DC 80013BDC 4632003C */  c.lt.d     $f0, $f18
.L80013BE0:
/* 147E0 80013BE0 00000000 */  nop
/* 147E4 80013BE4 45020004 */  bc1fl      .L80013BF8
/* 147E8 80013BE8 E48C0054 */   swc1      $f12, 0x54($a0)
/* 147EC 80013BEC 462E0100 */  add.d      $f4, $f0, $f14
/* 147F0 80013BF0 46202320 */  cvt.s.d    $f12, $f4
.L80013BF4:
/* 147F4 80013BF4 E48C0054 */  swc1       $f12, 0x54($a0)
.L80013BF8:
/* 147F8 80013BF8 97392876 */  lhu        $t9, 0x2876($t9)
/* 147FC 80013BFC 33280020 */  andi       $t0, $t9, 0x20
/* 14800 80013C00 11000019 */  beqz       $t0, .L80013C68
/* 14804 80013C04 00000000 */   nop
/* 14808 80013C08 C4460000 */  lwc1       $f6, ($v0)
/* 1480C 80013C0C 3C018007 */  lui        $at, %hi(D_800713F0)
/* 14810 80013C10 D42A13F0 */  ldc1       $f10, %lo(D_800713F0)($at)
/* 14814 80013C14 46003221 */  cvt.d.s    $f8, $f6
/* 14818 80013C18 462A4100 */  add.d      $f4, $f8, $f10
/* 1481C 80013C1C 462021A0 */  cvt.s.d    $f6, $f4
/* 14820 80013C20 E4460000 */  swc1       $f6, ($v0)
/* 14824 80013C24 C4480000 */  lwc1       $f8, ($v0)
/* 14828 80013C28 46004021 */  cvt.d.s    $f0, $f8
/* 1482C 80013C2C 4620803C */  c.lt.d     $f16, $f0
/* 14830 80013C30 00000000 */  nop
/* 14834 80013C34 45020006 */  bc1fl      .L80013C50
/* 14838 80013C38 4632003C */   c.lt.d    $f0, $f18
/* 1483C 80013C3C 462E0281 */  sub.d      $f10, $f0, $f14
/* 14840 80013C40 46205120 */  cvt.s.d    $f4, $f10
/* 14844 80013C44 10000008 */  b          .L80013C68
/* 14848 80013C48 E4440000 */   swc1      $f4, ($v0)
/* 1484C 80013C4C 4632003C */  c.lt.d     $f0, $f18
.L80013C50:
/* 14850 80013C50 00000000 */  nop
/* 14854 80013C54 45000004 */  bc1f       .L80013C68
/* 14858 80013C58 00000000 */   nop
/* 1485C 80013C5C 462E0180 */  add.d      $f6, $f0, $f14
/* 14860 80013C60 46203220 */  cvt.s.d    $f8, $f6
/* 14864 80013C64 E4480000 */  swc1       $f8, ($v0)
.L80013C68:
/* 14868 80013C68 0C004C02 */  jal        camModeFollow
/* 1486C 80013C6C 00000000 */   nop
/* 14870 80013C70 8FBF0014 */  lw         $ra, 0x14($sp)
/* 14874 80013C74 27BD0018 */  addiu      $sp, $sp, 0x18
/* 14878 80013C78 03E00008 */  jr         $ra
/* 1487C 80013C7C 00000000 */   nop

glabel func_80013C80
/* 14880 80013C80 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 14884 80013C84 3C028008 */  lui        $v0, %hi(D_80086EE0)
/* 14888 80013C88 24426EE0 */  addiu      $v0, $v0, %lo(D_80086EE0)
/* 1488C 80013C8C AFBF0014 */  sw         $ra, 0x14($sp)
/* 14890 80013C90 8C450000 */  lw         $a1, ($v0)
/* 14894 80013C94 24010001 */  addiu      $at, $zero, 1
/* 14898 80013C98 10A00005 */  beqz       $a1, .L80013CB0
/* 1489C 80013C9C 00A01825 */   or        $v1, $a1, $zero
/* 148A0 80013CA0 50610010 */  beql       $v1, $at, .L80013CE4
/* 148A4 80013CA4 8C4B0004 */   lw        $t3, 4($v0)
/* 148A8 80013CA8 1000001B */  b          .L80013D18
/* 148AC 80013CAC 00000000 */   nop
.L80013CB0:
/* 148B0 80013CB0 8C4E0004 */  lw         $t6, 4($v0)
/* 148B4 80013CB4 24B90001 */  addiu      $t9, $a1, 1
/* 148B8 80013CB8 2408004B */  addiu      $t0, $zero, 0x4b
/* 148BC 80013CBC 25CFFFFF */  addiu      $t7, $t6, -1
/* 148C0 80013CC0 15E00015 */  bnez       $t7, .L80013D18
/* 148C4 80013CC4 AC4F0004 */   sw        $t7, 4($v0)
/* 148C8 80013CC8 AC590000 */  sw         $t9, ($v0)
/* 148CC 80013CCC AC480004 */  sw         $t0, 4($v0)
/* 148D0 80013CD0 94890008 */  lhu        $t1, 8($a0)
/* 148D4 80013CD4 352A0010 */  ori        $t2, $t1, 0x10
/* 148D8 80013CD8 1000000F */  b          .L80013D18
/* 148DC 80013CDC A48A0008 */   sh        $t2, 8($a0)
/* 148E0 80013CE0 8C4B0004 */  lw         $t3, 4($v0)
.L80013CE4:
/* 148E4 80013CE4 256CFFFF */  addiu      $t4, $t3, -1
/* 148E8 80013CE8 1580000B */  bnez       $t4, .L80013D18
/* 148EC 80013CEC AC4C0004 */   sw        $t4, 4($v0)
/* 148F0 80013CF0 8C4E0008 */  lw         $t6, 8($v0)
/* 148F4 80013CF4 3C038008 */  lui        $v1, %hi(gCamera)
/* 148F8 80013CF8 24636DC0 */  addiu      $v1, $v1, %lo(gCamera)
/* 148FC 80013CFC AC8E0000 */  sw         $t6, ($a0)
/* 14900 80013D00 944F000C */  lhu        $t7, 0xc($v0)
/* 14904 80013D04 A48F0008 */  sh         $t7, 8($a0)
/* 14908 80013D08 C4440014 */  lwc1       $f4, 0x14($v0)
/* 1490C 80013D0C C4460018 */  lwc1       $f6, 0x18($v0)
/* 14910 80013D10 E4640078 */  swc1       $f4, 0x78($v1)
/* 14914 80013D14 E466007C */  swc1       $f6, 0x7c($v1)
.L80013D18:
/* 14918 80013D18 0C004C02 */  jal        camModeFollow
/* 1491C 80013D1C 00000000 */   nop
/* 14920 80013D20 8FBF0014 */  lw         $ra, 0x14($sp)
/* 14924 80013D24 27BD0018 */  addiu      $sp, $sp, 0x18
/* 14928 80013D28 03E00008 */  jr         $ra
/* 1492C 80013D2C 00000000 */   nop

glabel EmptyCameraFunc
/* 14930 80013D30 AFA40000 */  sw         $a0, ($sp)
/* 14934 80013D34 03E00008 */  jr         $ra
/* 14938 80013D38 00000000 */   nop

glabel pointCameraAtTarget_UNCONFIRMED
/* 1493C 80013D3C C4A40000 */  lwc1       $f4, ($a1)
/* 14940 80013D40 24010001 */  addiu      $at, $zero, 1
/* 14944 80013D44 E4840018 */  swc1       $f4, 0x18($a0)
/* 14948 80013D48 C4A60008 */  lwc1       $f6, 8($a1)
/* 1494C 80013D4C E4860020 */  swc1       $f6, 0x20($a0)
/* 14950 80013D50 8CAE0064 */  lw         $t6, 0x64($a1)
/* 14954 80013D54 95CF0000 */  lhu        $t7, ($t6)
/* 14958 80013D58 55E10005 */  bnel       $t7, $at, .L80013D70
/* 1495C 80013D5C C4A00004 */   lwc1      $f0, 4($a1)
/* 14960 80013D60 8CB80068 */  lw         $t8, 0x68($a1)
/* 14964 80013D64 10000002 */  b          .L80013D70
/* 14968 80013D68 C7000094 */   lwc1      $f0, 0x94($t8)
/* 1496C 80013D6C C4A00004 */  lwc1       $f0, 4($a1)
.L80013D70:
/* 14970 80013D70 C482001C */  lwc1       $f2, 0x1c($a0)
/* 14974 80013D74 C488005C */  lwc1       $f8, 0x5c($a0)
/* 14978 80013D78 C4900070 */  lwc1       $f16, 0x70($a0)
/* 1497C 80013D7C 3C014000 */  lui        $at, 0x4000
/* 14980 80013D80 46024281 */  sub.s      $f10, $f8, $f2
/* 14984 80013D84 44812000 */  mtc1       $at, $f4
/* 14988 80013D88 C4880034 */  lwc1       $f8, 0x34($a0)
/* 1498C 80013D8C 3C018007 */  lui        $at, 0x8007
/* 14990 80013D90 460A0000 */  add.s      $f0, $f0, $f10
/* 14994 80013D94 46100482 */  mul.s      $f18, $f0, $f16
/* 14998 80013D98 00000000 */  nop
/* 1499C 80013D9C 46049182 */  mul.s      $f6, $f18, $f4
/* 149A0 80013DA0 C4920074 */  lwc1       $f18, 0x74($a0)
/* 149A4 80013DA4 46009121 */  cvt.d.s    $f4, $f18
/* 149A8 80013DA8 46064280 */  add.s      $f10, $f8, $f6
/* 149AC 80013DAC E48A0034 */  swc1       $f10, 0x34($a0)
/* 149B0 80013DB0 C48C0034 */  lwc1       $f12, 0x34($a0)
/* 149B4 80013DB4 460C1400 */  add.s      $f16, $f2, $f12
/* 149B8 80013DB8 460062A1 */  cvt.d.s    $f10, $f12
/* 149BC 80013DBC E490001C */  swc1       $f16, 0x1c($a0)
/* 149C0 80013DC0 D42813F8 */  ldc1       $f8, 0x13f8($at)
/* 149C4 80013DC4 46282182 */  mul.d      $f6, $f4, $f8
/* 149C8 80013DC8 00000000 */  nop
/* 149CC 80013DCC 46265402 */  mul.d      $f16, $f10, $f6
/* 149D0 80013DD0 462084A0 */  cvt.s.d    $f18, $f16
/* 149D4 80013DD4 E4920034 */  swc1       $f18, 0x34($a0)
/* 149D8 80013DD8 03E00008 */  jr         $ra
/* 149DC 80013DDC 00000000 */   nop

glabel func_80013DE0
/* 149E0 80013DE0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 149E4 80013DE4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 149E8 80013DE8 00A03025 */  or         $a2, $a1, $zero
/* 149EC 80013DEC C484000C */  lwc1       $f4, 0xc($a0)
/* 149F0 80013DF0 C4C60000 */  lwc1       $f6, ($a2)
/* 149F4 80013DF4 46062201 */  sub.s      $f8, $f4, $f6
/* 149F8 80013DF8 E7A8001C */  swc1       $f8, 0x1c($sp)
/* 149FC 80013DFC C4D00008 */  lwc1       $f16, 8($a2)
/* 14A00 80013E00 C48A0014 */  lwc1       $f10, 0x14($a0)
/* 14A04 80013E04 C7AC001C */  lwc1       $f12, 0x1c($sp)
/* 14A08 80013E08 46105481 */  sub.s      $f18, $f10, $f16
/* 14A0C 80013E0C E7B20018 */  swc1       $f18, 0x18($sp)
/* 14A10 80013E10 948E0008 */  lhu        $t6, 8($a0)
/* 14A14 80013E14 C7AE0018 */  lwc1       $f14, 0x18($sp)
/* 14A18 80013E18 31CF0014 */  andi       $t7, $t6, 0x14
/* 14A1C 80013E1C 51E00024 */  beql       $t7, $zero, .L80013EB0
/* 14A20 80013E20 C48E003C */   lwc1      $f14, 0x3c($a0)
/* 14A24 80013E24 AFA40020 */  sw         $a0, 0x20($sp)
/* 14A28 80013E28 0C008C84 */  jal        func_80023210
/* 14A2C 80013E2C AFA60024 */   sw        $a2, 0x24($sp)
/* 14A30 80013E30 8FA40020 */  lw         $a0, 0x20($sp)
/* 14A34 80013E34 3C018007 */  lui        $at, %hi(D_80071400)
/* 14A38 80013E38 D4261400 */  ldc1       $f6, %lo(D_80071400)($at)
/* 14A3C 80013E3C C4840054 */  lwc1       $f4, 0x54($a0)
/* 14A40 80013E40 8FA60024 */  lw         $a2, 0x24($sp)
/* 14A44 80013E44 3C018007 */  lui        $at, 0x8007
/* 14A48 80013E48 46040301 */  sub.s      $f12, $f0, $f4
/* 14A4C 80013E4C 460060A1 */  cvt.d.s    $f2, $f12
/* 14A50 80013E50 4622303C */  c.lt.d     $f6, $f2
/* 14A54 80013E54 00000000 */  nop
/* 14A58 80013E58 45000006 */  bc1f       .L80013E74
/* 14A5C 80013E5C 00000000 */   nop
/* 14A60 80013E60 3C018007 */  lui        $at, %hi(D_80071408)
/* 14A64 80013E64 D4281408 */  ldc1       $f8, %lo(D_80071408)($at)
/* 14A68 80013E68 46281281 */  sub.d      $f10, $f2, $f8
/* 14A6C 80013E6C 1000000A */  b          .L80013E98
/* 14A70 80013E70 46205320 */   cvt.s.d   $f12, $f10
.L80013E74:
/* 14A74 80013E74 D4301410 */  ldc1       $f16, 0x1410($at)
/* 14A78 80013E78 3C018007 */  lui        $at, %hi(D_80071418)
/* 14A7C 80013E7C 4630103C */  c.lt.d     $f2, $f16
/* 14A80 80013E80 00000000 */  nop
/* 14A84 80013E84 45020005 */  bc1fl      .L80013E9C
/* 14A88 80013E88 C4860078 */   lwc1      $f6, 0x78($a0)
/* 14A8C 80013E8C D4321418 */  ldc1       $f18, %lo(D_80071418)($at)
/* 14A90 80013E90 46321100 */  add.d      $f4, $f2, $f18
/* 14A94 80013E94 46202320 */  cvt.s.d    $f12, $f4
.L80013E98:
/* 14A98 80013E98 C4860078 */  lwc1       $f6, 0x78($a0)
.L80013E9C:
/* 14A9C 80013E9C C48A003C */  lwc1       $f10, 0x3c($a0)
/* 14AA0 80013EA0 460C3202 */  mul.s      $f8, $f6, $f12
/* 14AA4 80013EA4 10000002 */  b          .L80013EB0
/* 14AA8 80013EA8 460A4380 */   add.s     $f14, $f8, $f10
/* 14AAC 80013EAC C48E003C */  lwc1       $f14, 0x3c($a0)
.L80013EB0:
/* 14AB0 80013EB0 C490007C */  lwc1       $f16, 0x7c($a0)
/* 14AB4 80013EB4 3C058008 */  lui        $a1, %hi(D_80086B90)
/* 14AB8 80013EB8 24A56B90 */  addiu      $a1, $a1, %lo(D_80086B90)
/* 14ABC 80013EBC 460E8482 */  mul.s      $f18, $f16, $f14
/* 14AC0 80013EC0 46007306 */  mov.s      $f12, $f14
/* 14AC4 80013EC4 E492003C */  swc1       $f18, 0x3c($a0)
/* 14AC8 80013EC8 C7A4001C */  lwc1       $f4, 0x1c($sp)
/* 14ACC 80013ECC C7A60018 */  lwc1       $f6, 0x18($sp)
/* 14AD0 80013ED0 AFA60024 */  sw         $a2, 0x24($sp)
/* 14AD4 80013ED4 AFA40020 */  sw         $a0, 0x20($sp)
/* 14AD8 80013ED8 E4A40000 */  swc1       $f4, ($a1)
/* 14ADC 80013EDC 0C008CBD */  jal        func_800232F4
/* 14AE0 80013EE0 E4A60004 */   swc1      $f6, 4($a1)
/* 14AE4 80013EE4 8FA60024 */  lw         $a2, 0x24($sp)
/* 14AE8 80013EE8 3C058008 */  lui        $a1, %hi(D_80086B90)
/* 14AEC 80013EEC 24A56B90 */  addiu      $a1, $a1, %lo(D_80086B90)
/* 14AF0 80013EF0 C4AA0000 */  lwc1       $f10, ($a1)
/* 14AF4 80013EF4 C4C80000 */  lwc1       $f8, ($a2)
/* 14AF8 80013EF8 8FA40020 */  lw         $a0, 0x20($sp)
/* 14AFC 80013EFC 460A4401 */  sub.s      $f16, $f8, $f10
/* 14B00 80013F00 E490000C */  swc1       $f16, 0xc($a0)
/* 14B04 80013F04 C4A40004 */  lwc1       $f4, 4($a1)
/* 14B08 80013F08 C4D20008 */  lwc1       $f18, 8($a2)
/* 14B0C 80013F0C 46049180 */  add.s      $f6, $f18, $f4
/* 14B10 80013F10 E4860014 */  swc1       $f6, 0x14($a0)
/* 14B14 80013F14 8FBF0014 */  lw         $ra, 0x14($sp)
/* 14B18 80013F18 03E00008 */  jr         $ra
/* 14B1C 80013F1C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_80013F20
/* 14B20 80013F20 3C198005 */  lui        $t9, %hi(D_8004CCB0)
/* 14B24 80013F24 240E000F */  addiu      $t6, $zero, 0xf
/* 14B28 80013F28 3C018008 */  lui        $at, %hi(D_80086C2C)
/* 14B2C 80013F2C 2739CCB0 */  addiu      $t9, $t9, %lo(D_8004CCB0)
/* 14B30 80013F30 0004C0C0 */  sll        $t8, $a0, 3
/* 14B34 80013F34 AC2E6C2C */  sw         $t6, %lo(D_80086C2C)($at)
/* 14B38 80013F38 03191021 */  addu       $v0, $t8, $t9
/* 14B3C 80013F3C C4440000 */  lwc1       $f4, ($v0)
/* 14B40 80013F40 3C018008 */  lui        $at, %hi(D_80086C30)
/* 14B44 80013F44 E4246C30 */  swc1       $f4, %lo(D_80086C30)($at)
/* 14B48 80013F48 C4460004 */  lwc1       $f6, 4($v0)
/* 14B4C 80013F4C 3C018008 */  lui        $at, %hi(D_80086C34)
/* 14B50 80013F50 E4266C34 */  swc1       $f6, %lo(D_80086C34)($at)
/* 14B54 80013F54 03E00008 */  jr         $ra
/* 14B58 80013F58 00000000 */   nop

glabel cameraZoomSomething
/* 14B5C 80013F5C 3C0E8008 */  lui        $t6, %hi(gCamera+0x8)
/* 14B60 80013F60 95CE6DC8 */  lhu        $t6, %lo(gCamera+0x8)($t6)
/* 14B64 80013F64 3C018008 */  lui        $at, %hi(cameraZoomMode)
/* 14B68 80013F68 AC246ED8 */  sw         $a0, %lo(cameraZoomMode)($at)
/* 14B6C 80013F6C 31CF0040 */  andi       $t7, $t6, 0x40
/* 14B70 80013F70 11E00005 */  beqz       $t7, .L80013F88
/* 14B74 80013F74 3C058008 */   lui       $a1, %hi(tbl_CameraZoomValues)
/* 14B78 80013F78 3C188008 */  lui        $t8, %hi(D_80086B80)
/* 14B7C 80013F7C 8F186B80 */  lw         $t8, %lo(D_80086B80)($t8)
/* 14B80 80013F80 3C018008 */  lui        $at, %hi(gCamera+0x80)
/* 14B84 80013F84 AC386E40 */  sw         $t8, %lo(gCamera+0x80)($at)
.L80013F88:
/* 14B88 80013F88 24A56EDC */  addiu      $a1, $a1, %lo(tbl_CameraZoomValues)
/* 14B8C 80013F8C 8CB90000 */  lw         $t9, ($a1)
/* 14B90 80013F90 000410C0 */  sll        $v0, $a0, 3
/* 14B94 80013F94 00441023 */  subu       $v0, $v0, $a0
/* 14B98 80013F98 000210C0 */  sll        $v0, $v0, 3
/* 14B9C 80013F9C 03224021 */  addu       $t0, $t9, $v0
/* 14BA0 80013FA0 8D090000 */  lw         $t1, ($t0)
/* 14BA4 80013FA4 3C018008 */  lui        $at, %hi(gCamera)
/* 14BA8 80013FA8 3C0A8008 */  lui        $t2, %hi(gCamera)
/* 14BAC 80013FAC AC296DC0 */  sw         $t1, %lo(gCamera)($at)
/* 14BB0 80013FB0 8D4A6DC0 */  lw         $t2, %lo(gCamera)($t2)
/* 14BB4 80013FB4 24010002 */  addiu      $at, $zero, 2
/* 14BB8 80013FB8 3C198008 */  lui        $t9, 0x8008
/* 14BBC 80013FBC 11400011 */  beqz       $t2, .L80014004
/* 14BC0 80013FC0 00000000 */   nop
/* 14BC4 80013FC4 1141000F */  beq        $t2, $at, .L80014004
/* 14BC8 80013FC8 00000000 */   nop
/* 14BCC 80013FCC 8CAB0000 */  lw         $t3, ($a1)
/* 14BD0 80013FD0 3C018008 */  lui        $at, %hi(gCamera+0xC)
/* 14BD4 80013FD4 01626021 */  addu       $t4, $t3, $v0
/* 14BD8 80013FD8 C5840004 */  lwc1       $f4, 4($t4)
/* 14BDC 80013FDC E4246DCC */  swc1       $f4, %lo(gCamera+0xC)($at)
/* 14BE0 80013FE0 8CAD0000 */  lw         $t5, ($a1)
/* 14BE4 80013FE4 3C018008 */  lui        $at, %hi(gCamera+0x10)
/* 14BE8 80013FE8 01A27021 */  addu       $t6, $t5, $v0
/* 14BEC 80013FEC C5C60008 */  lwc1       $f6, 8($t6)
/* 14BF0 80013FF0 E4266DD0 */  swc1       $f6, %lo(gCamera+0x10)($at)
/* 14BF4 80013FF4 8CAF0000 */  lw         $t7, ($a1)
/* 14BF8 80013FF8 01E2C021 */  addu       $t8, $t7, $v0
/* 14BFC 80013FFC C708000C */  lwc1       $f8, 0xc($t8)
/* 14C00 80014000 E4286DD4 */  swc1       $f8, 0x6dd4($at)
.L80014004:
/* 14C04 80014004 97396DC8 */  lhu        $t9, 0x6dc8($t9)
/* 14C08 80014008 3C018008 */  lui        $at, %hi(gCamera+0x8)
/* 14C0C 8001400C 44801000 */  mtc1       $zero, $f2
/* 14C10 80014010 3328FFAF */  andi       $t0, $t9, 0xffaf
/* 14C14 80014014 A4286DC8 */  sh         $t0, %lo(gCamera+0x8)($at)
/* 14C18 80014018 8CA90000 */  lw         $t1, ($a1)
/* 14C1C 8001401C 3C018008 */  lui        $at, %hi(gCamera+0x4C)
/* 14C20 80014020 01225021 */  addu       $t2, $t1, $v0
/* 14C24 80014024 C54A0018 */  lwc1       $f10, 0x18($t2)
/* 14C28 80014028 E42A6E0C */  swc1       $f10, %lo(gCamera+0x4C)($at)
/* 14C2C 8001402C 8CAB0000 */  lw         $t3, ($a1)
/* 14C30 80014030 3C018008 */  lui        $at, %hi(gCamera+0x58)
/* 14C34 80014034 01626021 */  addu       $t4, $t3, $v0
/* 14C38 80014038 C5900014 */  lwc1       $f16, 0x14($t4)
/* 14C3C 8001403C E4306E18 */  swc1       $f16, %lo(gCamera+0x58)($at)
/* 14C40 80014040 8CAD0000 */  lw         $t5, ($a1)
/* 14C44 80014044 01A27021 */  addu       $t6, $t5, $v0
/* 14C48 80014048 C5D20010 */  lwc1       $f18, 0x10($t6)
/* 14C4C 8001404C E4326E1C */  swc1       $f18, 0x6e1c($at)
/* 14C50 80014050 8CAF0000 */  lw         $t7, ($a1)
/* 14C54 80014054 3C018008 */  lui        $at, %hi(gCamera+0x68)
/* 14C58 80014058 01E2C021 */  addu       $t8, $t7, $v0
/* 14C5C 8001405C C7040024 */  lwc1       $f4, 0x24($t8)
/* 14C60 80014060 E4246E28 */  swc1       $f4, %lo(gCamera+0x68)($at)
/* 14C64 80014064 8CB90000 */  lw         $t9, ($a1)
/* 14C68 80014068 03224021 */  addu       $t0, $t9, $v0
/* 14C6C 8001406C C5060028 */  lwc1       $f6, 0x28($t0)
/* 14C70 80014070 E4266E2C */  swc1       $f6, 0x6e2c($at)
/* 14C74 80014074 8CA90000 */  lw         $t1, ($a1)
/* 14C78 80014078 3C018008 */  lui        $at, %hi(gCamera+0x60)
/* 14C7C 8001407C 01225021 */  addu       $t2, $t1, $v0
/* 14C80 80014080 C548001C */  lwc1       $f8, 0x1c($t2)
/* 14C84 80014084 E4286E20 */  swc1       $f8, %lo(gCamera+0x60)($at)
/* 14C88 80014088 8CAB0000 */  lw         $t3, ($a1)
/* 14C8C 8001408C 01626021 */  addu       $t4, $t3, $v0
/* 14C90 80014090 C58A0020 */  lwc1       $f10, 0x20($t4)
/* 14C94 80014094 E42A6E24 */  swc1       $f10, 0x6e24($at)
/* 14C98 80014098 8CAD0000 */  lw         $t5, ($a1)
/* 14C9C 8001409C 3C018008 */  lui        $at, %hi(D_80086EC8)
/* 14CA0 800140A0 01A21821 */  addu       $v1, $t5, $v0
/* 14CA4 800140A4 C470002C */  lwc1       $f16, 0x2c($v1)
/* 14CA8 800140A8 E4306EC8 */  swc1       $f16, %lo(D_80086EC8)($at)
/* 14CAC 800140AC C4720030 */  lwc1       $f18, 0x30($v1)
/* 14CB0 800140B0 3C018008 */  lui        $at, %hi(fogAmmount)
/* 14CB4 800140B4 E4326ECC */  swc1       $f18, %lo(fogAmmount)($at)
/* 14CB8 800140B8 C4640034 */  lwc1       $f4, 0x34($v1)
/* 14CBC 800140BC 3C018008 */  lui        $at, %hi(fogFar)
/* 14CC0 800140C0 E4246ED0 */  swc1       $f4, %lo(fogFar)($at)
/* 14CC4 800140C4 3C018008 */  lui        $at, %hi(gCamera+0x48)
/* 14CC8 800140C8 E4226E08 */  swc1       $f2, %lo(gCamera+0x48)($at)
/* 14CCC 800140CC C4206E08 */  lwc1       $f0, 0x6e08($at)
/* 14CD0 800140D0 3C018008 */  lui        $at, %hi(gCamera+0x44)
/* 14CD4 800140D4 E4206E04 */  swc1       $f0, %lo(gCamera+0x44)($at)
/* 14CD8 800140D8 E4206E00 */  swc1       $f0, 0x6e00($at)
/* 14CDC 800140DC 3C018008 */  lui        $at, %hi(gCamera+0x3C)
/* 14CE0 800140E0 E4226DFC */  swc1       $f2, %lo(gCamera+0x3C)($at)
/* 14CE4 800140E4 03E00008 */  jr         $ra
/* 14CE8 800140E8 00000000 */   nop

glabel cameraPosSomething
/* 14CEC 800140EC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 14CF0 800140F0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 14CF4 800140F4 00803825 */  or         $a3, $a0, $zero
/* 14CF8 800140F8 00A03025 */  or         $a2, $a1, $zero
/* 14CFC 800140FC 3C0E8009 */  lui        $t6, %hi(BattleState)
/* 14D00 80014100 95CEC592 */  lhu        $t6, %lo(BattleState)($t6)
/* 14D04 80014104 3C028008 */  lui        $v0, %hi(gCamera)
/* 14D08 80014108 24426DC0 */  addiu      $v0, $v0, %lo(gCamera)
/* 14D0C 8001410C 31CF0001 */  andi       $t7, $t6, 1
/* 14D10 80014110 51E000A8 */  beql       $t7, $zero, .L800143B4
/* 14D14 80014114 8FBF0014 */   lw        $ra, 0x14($sp)
/* 14D18 80014118 94450008 */  lhu        $a1, 8($v0)
/* 14D1C 8001411C 3C198008 */  lui        $t9, %hi(D_80086B00)
/* 14D20 80014120 27396B00 */  addiu      $t9, $t9, %lo(D_80086B00)
/* 14D24 80014124 30B80040 */  andi       $t8, $a1, 0x40
/* 14D28 80014128 1700000D */  bnez       $t8, .L80014160
/* 14D2C 8001412C 00405825 */   or        $t3, $v0, $zero
/* 14D30 80014130 244A0084 */  addiu      $t2, $v0, 0x84
.L80014134:
/* 14D34 80014134 8D610000 */  lw         $at, ($t3)
/* 14D38 80014138 256B000C */  addiu      $t3, $t3, 0xc
/* 14D3C 8001413C 2739000C */  addiu      $t9, $t9, 0xc
/* 14D40 80014140 AF21FFF4 */  sw         $at, -0xc($t9)
/* 14D44 80014144 8D61FFF8 */  lw         $at, -8($t3)
/* 14D48 80014148 AF21FFF8 */  sw         $at, -8($t9)
/* 14D4C 8001414C 8D61FFFC */  lw         $at, -4($t3)
/* 14D50 80014150 156AFFF8 */  bne        $t3, $t2, .L80014134
/* 14D54 80014154 AF21FFFC */   sw        $at, -4($t9)
/* 14D58 80014158 8D610000 */  lw         $at, ($t3)
/* 14D5C 8001415C AF210000 */  sw         $at, ($t9)
.L80014160:
/* 14D60 80014160 C4C40000 */  lwc1       $f4, ($a2)
/* 14D64 80014164 3C048008 */  lui        $a0, %hi(D_80086BC0)
/* 14D68 80014168 24846BC0 */  addiu      $a0, $a0, %lo(D_80086BC0)
/* 14D6C 8001416C E4840000 */  swc1       $f4, ($a0)
/* 14D70 80014170 C4C60008 */  lwc1       $f6, 8($a2)
/* 14D74 80014174 3C018008 */  lui        $at, 0x8008
/* 14D78 80014178 E4860008 */  swc1       $f6, 8($a0)
/* 14D7C 8001417C 94CC005E */  lhu        $t4, 0x5e($a2)
/* 14D80 80014180 318D0004 */  andi       $t5, $t4, 4
/* 14D84 80014184 11A00004 */  beqz       $t5, .L80014198
/* 14D88 80014188 240C0004 */   addiu     $t4, $zero, 4
/* 14D8C 8001418C C428BAD0 */  lwc1       $f8, -0x4530($at)
/* 14D90 80014190 1000000C */  b          .L800141C4
/* 14D94 80014194 E4880004 */   swc1      $f8, 4($a0)
.L80014198:
/* 14D98 80014198 8CCE0064 */  lw         $t6, 0x64($a2)
/* 14D9C 8001419C 24010001 */  addiu      $at, $zero, 1
/* 14DA0 800141A0 95CF0000 */  lhu        $t7, ($t6)
/* 14DA4 800141A4 55E10006 */  bnel       $t7, $at, .L800141C0
/* 14DA8 800141A8 C4D00004 */   lwc1      $f16, 4($a2)
/* 14DAC 800141AC 8CD80068 */  lw         $t8, 0x68($a2)
/* 14DB0 800141B0 C70A0094 */  lwc1       $f10, 0x94($t8)
/* 14DB4 800141B4 10000003 */  b          .L800141C4
/* 14DB8 800141B8 E48A0004 */   swc1      $f10, 4($a0)
/* 14DBC 800141BC C4D00004 */  lwc1       $f16, 4($a2)
.L800141C0:
/* 14DC0 800141C0 E4900004 */  swc1       $f16, 4($a0)
.L800141C4:
/* 14DC4 800141C4 C4D20024 */  lwc1       $f18, 0x24($a2)
/* 14DC8 800141C8 34AD0040 */  ori        $t5, $a1, 0x40
/* 14DCC 800141CC 3C058008 */  lui        $a1, %hi(D_80086B90)
/* 14DD0 800141D0 E4920024 */  swc1       $f18, 0x24($a0)
/* 14DD4 800141D4 8CC90064 */  lw         $t1, 0x64($a2)
/* 14DD8 800141D8 24A56B90 */  addiu      $a1, $a1, %lo(D_80086B90)
/* 14DDC 800141DC AC890064 */  sw         $t1, 0x64($a0)
/* 14DE0 800141E0 8CC80068 */  lw         $t0, 0x68($a2)
/* 14DE4 800141E4 AC880068 */  sw         $t0, 0x68($a0)
/* 14DE8 800141E8 94CA005E */  lhu        $t2, 0x5e($a2)
/* 14DEC 800141EC 314B0004 */  andi       $t3, $t2, 4
/* 14DF0 800141F0 5160000D */  beql       $t3, $zero, .L80014228
/* 14DF4 800141F4 8CC30064 */   lw        $v1, 0x64($a2)
/* 14DF8 800141F8 8CD90064 */  lw         $t9, 0x64($a2)
/* 14DFC 800141FC C4C60024 */  lwc1       $f6, 0x24($a2)
/* 14E00 80014200 3C014044 */  lui        $at, 0x4044
/* 14E04 80014204 C724001C */  lwc1       $f4, 0x1c($t9)
/* 14E08 80014208 44818800 */  mtc1       $at, $f17
/* 14E0C 8001420C 44808000 */  mtc1       $zero, $f16
/* 14E10 80014210 46062202 */  mul.s      $f8, $f4, $f6
/* 14E14 80014214 460042A1 */  cvt.d.s    $f10, $f8
/* 14E18 80014218 46305480 */  add.d      $f18, $f10, $f16
/* 14E1C 8001421C 1000001B */  b          .L8001428C
/* 14E20 80014220 462090A0 */   cvt.s.d   $f2, $f18
/* 14E24 80014224 8CC30064 */  lw         $v1, 0x64($a2)
.L80014228:
/* 14E28 80014228 C46C001C */  lwc1       $f12, 0x1c($v1)
/* 14E2C 8001422C C46E0018 */  lwc1       $f14, 0x18($v1)
/* 14E30 80014230 460E603C */  c.lt.s     $f12, $f14
/* 14E34 80014234 00000000 */  nop
/* 14E38 80014238 4502000C */  bc1fl      .L8001426C
/* 14E3C 8001423C C4D20024 */   lwc1      $f18, 0x24($a2)
/* 14E40 80014240 C4C40024 */  lwc1       $f4, 0x24($a2)
/* 14E44 80014244 3C014044 */  lui        $at, 0x4044
/* 14E48 80014248 44815800 */  mtc1       $at, $f11
/* 14E4C 8001424C 46047182 */  mul.s      $f6, $f14, $f4
/* 14E50 80014250 44805000 */  mtc1       $zero, $f10
/* 14E54 80014254 46003021 */  cvt.d.s    $f0, $f6
/* 14E58 80014258 46200200 */  add.d      $f8, $f0, $f0
/* 14E5C 8001425C 462A4400 */  add.d      $f16, $f8, $f10
/* 14E60 80014260 1000000A */  b          .L8001428C
/* 14E64 80014264 462080A0 */   cvt.s.d   $f2, $f16
/* 14E68 80014268 C4D20024 */  lwc1       $f18, 0x24($a2)
.L8001426C:
/* 14E6C 8001426C 3C014044 */  lui        $at, 0x4044
/* 14E70 80014270 44814800 */  mtc1       $at, $f9
/* 14E74 80014274 46126102 */  mul.s      $f4, $f12, $f18
/* 14E78 80014278 44804000 */  mtc1       $zero, $f8
/* 14E7C 8001427C 46002021 */  cvt.d.s    $f0, $f4
/* 14E80 80014280 46200180 */  add.d      $f6, $f0, $f0
/* 14E84 80014284 46283280 */  add.d      $f10, $f6, $f8
/* 14E88 80014288 462050A0 */  cvt.s.d    $f2, $f10
.L8001428C:
/* 14E8C 8001428C AC4C0000 */  sw         $t4, ($v0)
/* 14E90 80014290 A44D0008 */  sh         $t5, 8($v0)
/* 14E94 80014294 AC440080 */  sw         $a0, 0x80($v0)
/* 14E98 80014298 94CE005E */  lhu        $t6, 0x5e($a2)
/* 14E9C 8001429C 44800000 */  mtc1       $zero, $f0
/* 14EA0 800142A0 3C01402E */  lui        $at, 0x402e
/* 14EA4 800142A4 31CF0004 */  andi       $t7, $t6, 4
/* 14EA8 800142A8 51E00009 */  beql       $t7, $zero, .L800142D0
/* 14EAC 800142AC 44812800 */   mtc1      $at, $f5
/* 14EB0 800142B0 3C014034 */  lui        $at, 0x4034
/* 14EB4 800142B4 44818800 */  mtc1       $at, $f17
/* 14EB8 800142B8 44808000 */  mtc1       $zero, $f16
/* 14EBC 800142BC 00000000 */  nop
/* 14EC0 800142C0 462084A0 */  cvt.s.d    $f18, $f16
/* 14EC4 800142C4 10000006 */  b          .L800142E0
/* 14EC8 800142C8 E4520058 */   swc1      $f18, 0x58($v0)
/* 14ECC 800142CC 44812800 */  mtc1       $at, $f5
.L800142D0:
/* 14ED0 800142D0 44802000 */  mtc1       $zero, $f4
/* 14ED4 800142D4 00000000 */  nop
/* 14ED8 800142D8 462021A0 */  cvt.s.d    $f6, $f4
/* 14EDC 800142DC E4460058 */  swc1       $f6, 0x58($v0)
.L800142E0:
/* 14EE0 800142E0 3C014024 */  lui        $at, 0x4024
/* 14EE4 800142E4 44819800 */  mtc1       $at, $f19
/* 14EE8 800142E8 44809000 */  mtc1       $zero, $f18
/* 14EEC 800142EC 46001421 */  cvt.d.s    $f16, $f2
/* 14EF0 800142F0 E4400048 */  swc1       $f0, 0x48($v0)
/* 14EF4 800142F4 46328100 */  add.d      $f4, $f16, $f18
/* 14EF8 800142F8 C4480048 */  lwc1       $f8, 0x48($v0)
/* 14EFC 800142FC E442004C */  swc1       $f2, 0x4c($v0)
/* 14F00 80014300 AC470004 */  sw         $a3, 4($v0)
/* 14F04 80014304 462021A0 */  cvt.s.d    $f6, $f4
/* 14F08 80014308 E4480044 */  swc1       $f8, 0x44($v0)
/* 14F0C 8001430C C44A0044 */  lwc1       $f10, 0x44($v0)
/* 14F10 80014310 E440003C */  swc1       $f0, 0x3c($v0)
/* 14F14 80014314 E4A00000 */  swc1       $f0, ($a1)
/* 14F18 80014318 E4A60004 */  swc1       $f6, 4($a1)
/* 14F1C 8001431C C44C0054 */  lwc1       $f12, 0x54($v0)
/* 14F20 80014320 AFA6001C */  sw         $a2, 0x1c($sp)
/* 14F24 80014324 0C008CBD */  jal        func_800232F4
/* 14F28 80014328 E44A0040 */   swc1      $f10, 0x40($v0)
/* 14F2C 8001432C 8FA6001C */  lw         $a2, 0x1c($sp)
/* 14F30 80014330 3C058008 */  lui        $a1, %hi(D_80086B90)
/* 14F34 80014334 24A56B90 */  addiu      $a1, $a1, %lo(D_80086B90)
/* 14F38 80014338 C4AA0000 */  lwc1       $f10, ($a1)
/* 14F3C 8001433C C4C80000 */  lwc1       $f8, ($a2)
/* 14F40 80014340 3C028008 */  lui        $v0, %hi(gCamera)
/* 14F44 80014344 24426DC0 */  addiu      $v0, $v0, %lo(gCamera)
/* 14F48 80014348 460A4400 */  add.s      $f16, $f8, $f10
/* 14F4C 8001434C C4520058 */  lwc1       $f18, 0x58($v0)
/* 14F50 80014350 3C018007 */  lui        $at, %hi(D_80071420)
/* 14F54 80014354 3C048008 */  lui        $a0, %hi(D_80086BC0)
/* 14F58 80014358 E450000C */  swc1       $f16, 0xc($v0)
/* 14F5C 8001435C D4261420 */  ldc1       $f6, %lo(D_80071420)($at)
/* 14F60 80014360 46009121 */  cvt.d.s    $f4, $f18
/* 14F64 80014364 24846BC0 */  addiu      $a0, $a0, %lo(D_80086BC0)
/* 14F68 80014368 46262202 */  mul.d      $f8, $f4, $f6
/* 14F6C 8001436C C48A0004 */  lwc1       $f10, 4($a0)
/* 14F70 80014370 3C018008 */  lui        $at, 0x8008
/* 14F74 80014374 46005421 */  cvt.d.s    $f16, $f10
/* 14F78 80014378 C4AA0004 */  lwc1       $f10, 4($a1)
/* 14F7C 8001437C 46288480 */  add.d      $f18, $f16, $f8
/* 14F80 80014380 46209120 */  cvt.s.d    $f4, $f18
/* 14F84 80014384 E4440010 */  swc1       $f4, 0x10($v0)
/* 14F88 80014388 C4C60008 */  lwc1       $f6, 8($a2)
/* 14F8C 8001438C C4480010 */  lwc1       $f8, 0x10($v0)
/* 14F90 80014390 460A3400 */  add.s      $f16, $f6, $f10
/* 14F94 80014394 E4500014 */  swc1       $f16, 0x14($v0)
/* 14F98 80014398 C420BAD0 */  lwc1       $f0, -0x4530($at)
/* 14F9C 8001439C 4600403C */  c.lt.s     $f8, $f0
/* 14FA0 800143A0 00000000 */  nop
/* 14FA4 800143A4 45020003 */  bc1fl      .L800143B4
/* 14FA8 800143A8 8FBF0014 */   lw        $ra, 0x14($sp)
/* 14FAC 800143AC E4400010 */  swc1       $f0, 0x10($v0)
/* 14FB0 800143B0 8FBF0014 */  lw         $ra, 0x14($sp)
.L800143B4:
/* 14FB4 800143B4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 14FB8 800143B8 03E00008 */  jr         $ra
/* 14FBC 800143BC 00000000 */   nop

glabel func_800143C0
/* 14FC0 800143C0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 14FC4 800143C4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 14FC8 800143C8 0C004FD7 */  jal        cameraZoomSomething
/* 14FCC 800143CC 00000000 */   nop
/* 14FD0 800143D0 3C038008 */  lui        $v1, %hi(gCamera)
/* 14FD4 800143D4 24636DC0 */  addiu      $v1, $v1, %lo(gCamera)
/* 14FD8 800143D8 3C028008 */  lui        $v0, %hi(D_80086EE0)
/* 14FDC 800143DC 24426EE0 */  addiu      $v0, $v0, %lo(D_80086EE0)
/* 14FE0 800143E0 8C6F0000 */  lw         $t7, ($v1)
/* 14FE4 800143E4 94780008 */  lhu        $t8, 8($v1)
/* 14FE8 800143E8 240E000F */  addiu      $t6, $zero, 0xf
/* 14FEC 800143EC AC400000 */  sw         $zero, ($v0)
/* 14FF0 800143F0 AC4E0004 */  sw         $t6, 4($v0)
/* 14FF4 800143F4 3C018007 */  lui        $at, %hi(D_80071428)
/* 14FF8 800143F8 AC4F0008 */  sw         $t7, 8($v0)
/* 14FFC 800143FC A458000C */  sh         $t8, 0xc($v0)
/* 15000 80014400 C4241428 */  lwc1       $f4, %lo(D_80071428)($at)
/* 15004 80014404 3C018007 */  lui        $at, %hi(D_8007142C)
/* 15008 80014408 C4480010 */  lwc1       $f8, 0x10($v0)
/* 1500C 8001440C E4440014 */  swc1       $f4, 0x14($v0)
/* 15010 80014410 C426142C */  lwc1       $f6, %lo(D_8007142C)($at)
/* 15014 80014414 24190005 */  addiu      $t9, $zero, 5
/* 15018 80014418 AC790000 */  sw         $t9, ($v1)
/* 1501C 8001441C E4680054 */  swc1       $f8, 0x54($v1)
/* 15020 80014420 E4460018 */  swc1       $f6, 0x18($v0)
/* 15024 80014424 8FBF0014 */  lw         $ra, 0x14($sp)
/* 15028 80014428 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1502C 8001442C 03E00008 */  jr         $ra
/* 15030 80014430 00000000 */   nop

glabel func_80014434
/* 15034 80014434 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 15038 80014438 3C028008 */  lui        $v0, %hi(gCamera)
/* 1503C 8001443C 44800000 */  mtc1       $zero, $f0
/* 15040 80014440 24426DC0 */  addiu      $v0, $v0, %lo(gCamera)
/* 15044 80014444 AFBF0014 */  sw         $ra, 0x14($sp)
/* 15048 80014448 00A03025 */  or         $a2, $a1, $zero
/* 1504C 8001444C 8C8E0000 */  lw         $t6, ($a0)
/* 15050 80014450 240F0040 */  addiu      $t7, $zero, 0x40
/* 15054 80014454 A44F0008 */  sh         $t7, 8($v0)
/* 15058 80014458 AC4E0000 */  sw         $t6, ($v0)
/* 1505C 8001445C C4840018 */  lwc1       $f4, 0x18($a0)
/* 15060 80014460 3C058008 */  lui        $a1, %hi(D_80086B90)
/* 15064 80014464 24A56B90 */  addiu      $a1, $a1, %lo(D_80086B90)
/* 15068 80014468 E444004C */  swc1       $f4, 0x4c($v0)
/* 1506C 8001446C C4860014 */  lwc1       $f6, 0x14($a0)
/* 15070 80014470 3C014034 */  lui        $at, 0x4034
/* 15074 80014474 E4460058 */  swc1       $f6, 0x58($v0)
/* 15078 80014478 C4880010 */  lwc1       $f8, 0x10($a0)
/* 1507C 8001447C E440006C */  swc1       $f0, 0x6c($v0)
/* 15080 80014480 E4400064 */  swc1       $f0, 0x64($v0)
/* 15084 80014484 C44A006C */  lwc1       $f10, 0x6c($v0)
/* 15088 80014488 C4500064 */  lwc1       $f16, 0x64($v0)
/* 1508C 8001448C AC460080 */  sw         $a2, 0x80($v0)
/* 15090 80014490 E448005C */  swc1       $f8, 0x5c($v0)
/* 15094 80014494 E44A0068 */  swc1       $f10, 0x68($v0)
/* 15098 80014498 E4500060 */  swc1       $f16, 0x60($v0)
/* 1509C 8001449C 8C830000 */  lw         $v1, ($a0)
/* 150A0 800144A0 50600007 */  beql       $v1, $zero, .L800144C0
/* 150A4 800144A4 E4A00000 */   swc1      $f0, ($a1)
/* 150A8 800144A8 24010001 */  addiu      $at, $zero, 1
/* 150AC 800144AC 5061002C */  beql       $v1, $at, .L80014560
/* 150B0 800144B0 C4860004 */   lwc1      $f6, 4($a0)
/* 150B4 800144B4 10000030 */  b          .L80014578
/* 150B8 800144B8 E4400048 */   swc1      $f0, 0x48($v0)
/* 150BC 800144BC E4A00000 */  swc1       $f0, ($a1)
.L800144C0:
/* 150C0 800144C0 C4920018 */  lwc1       $f18, 0x18($a0)
/* 150C4 800144C4 44813800 */  mtc1       $at, $f7
/* 150C8 800144C8 44803000 */  mtc1       $zero, $f6
/* 150CC 800144CC 46009121 */  cvt.d.s    $f4, $f18
/* 150D0 800144D0 3C018007 */  lui        $at, %hi(D_80071430)
/* 150D4 800144D4 46262200 */  add.d      $f8, $f4, $f6
/* 150D8 800144D8 462042A0 */  cvt.s.d    $f10, $f8
/* 150DC 800144DC E4AA0004 */  swc1       $f10, 4($a1)
/* 150E0 800144E0 C4D00010 */  lwc1       $f16, 0x10($a2)
/* 150E4 800144E4 D4241430 */  ldc1       $f4, %lo(D_80071430)($at)
/* 150E8 800144E8 3C018007 */  lui        $at, %hi(D_80071438)
/* 150EC 800144EC 460084A1 */  cvt.d.s    $f18, $f16
/* 150F0 800144F0 D4281438 */  ldc1       $f8, %lo(D_80071438)($at)
/* 150F4 800144F4 46249181 */  sub.d      $f6, $f18, $f4
/* 150F8 800144F8 AFA6001C */  sw         $a2, 0x1c($sp)
/* 150FC 800144FC AFA40018 */  sw         $a0, 0x18($sp)
/* 15100 80014500 46283280 */  add.d      $f10, $f6, $f8
/* 15104 80014504 0C008CBD */  jal        func_800232F4
/* 15108 80014508 46205320 */   cvt.s.d   $f12, $f10
/* 1510C 8001450C 8FA6001C */  lw         $a2, 0x1c($sp)
/* 15110 80014510 3C058008 */  lui        $a1, %hi(D_80086B90)
/* 15114 80014514 24A56B90 */  addiu      $a1, $a1, %lo(D_80086B90)
/* 15118 80014518 C4B20000 */  lwc1       $f18, ($a1)
/* 1511C 8001451C C4D00000 */  lwc1       $f16, ($a2)
/* 15120 80014520 3C028008 */  lui        $v0, %hi(gCamera)
/* 15124 80014524 24426DC0 */  addiu      $v0, $v0, %lo(gCamera)
/* 15128 80014528 46128101 */  sub.s      $f4, $f16, $f18
/* 1512C 8001452C C4A80004 */  lwc1       $f8, 4($a1)
/* 15130 80014530 8FA40018 */  lw         $a0, 0x18($sp)
/* 15134 80014534 44800000 */  mtc1       $zero, $f0
/* 15138 80014538 E444000C */  swc1       $f4, 0xc($v0)
/* 1513C 8001453C C4C60008 */  lwc1       $f6, 8($a2)
/* 15140 80014540 46083281 */  sub.s      $f10, $f6, $f8
/* 15144 80014544 E44A0014 */  swc1       $f10, 0x14($v0)
/* 15148 80014548 C4D00004 */  lwc1       $f16, 4($a2)
/* 1514C 8001454C C4920014 */  lwc1       $f18, 0x14($a0)
/* 15150 80014550 46128100 */  add.s      $f4, $f16, $f18
/* 15154 80014554 10000007 */  b          .L80014574
/* 15158 80014558 E4440010 */   swc1      $f4, 0x10($v0)
/* 1515C 8001455C C4860004 */  lwc1       $f6, 4($a0)
.L80014560:
/* 15160 80014560 E446000C */  swc1       $f6, 0xc($v0)
/* 15164 80014564 C4880008 */  lwc1       $f8, 8($a0)
/* 15168 80014568 E4480010 */  swc1       $f8, 0x10($v0)
/* 1516C 8001456C C48A000C */  lwc1       $f10, 0xc($a0)
/* 15170 80014570 E44A0014 */  swc1       $f10, 0x14($v0)
.L80014574:
/* 15174 80014574 E4400048 */  swc1       $f0, 0x48($v0)
.L80014578:
/* 15178 80014578 C4500048 */  lwc1       $f16, 0x48($v0)
/* 1517C 8001457C E4400034 */  swc1       $f0, 0x34($v0)
/* 15180 80014580 E440003C */  swc1       $f0, 0x3c($v0)
/* 15184 80014584 E4500044 */  swc1       $f16, 0x44($v0)
/* 15188 80014588 C4520044 */  lwc1       $f18, 0x44($v0)
/* 1518C 8001458C E4520040 */  swc1       $f18, 0x40($v0)
/* 15190 80014590 8FBF0014 */  lw         $ra, 0x14($sp)
/* 15194 80014594 03E00008 */  jr         $ra
/* 15198 80014598 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8001459C
/* 1519C 8001459C 3C028008 */  lui        $v0, %hi(gCamera)
/* 151A0 800145A0 3C018007 */  lui        $at, %hi(D_80071440)
/* 151A4 800145A4 D42C1440 */  ldc1       $f12, %lo(D_80071440)($at)
/* 151A8 800145A8 24426DC0 */  addiu      $v0, $v0, %lo(gCamera)
/* 151AC 800145AC 3C018008 */  lui        $at, %hi(BrianYRot)
/* 151B0 800145B0 C426BADC */  lwc1       $f6, %lo(BrianYRot)($at)
/* 151B4 800145B4 C4440028 */  lwc1       $f4, 0x28($v0)
/* 151B8 800145B8 3C018007 */  lui        $at, 0x8007
/* 151BC 800145BC 46062001 */  sub.s      $f0, $f4, $f6
/* 151C0 800145C0 460000A1 */  cvt.d.s    $f2, $f0
/* 151C4 800145C4 462C103C */  c.lt.d     $f2, $f12
/* 151C8 800145C8 00000000 */  nop
/* 151CC 800145CC 45000009 */  bc1f       .L800145F4
/* 151D0 800145D0 00000000 */   nop
/* 151D4 800145D4 3C018007 */  lui        $at, %hi(D_80071448)
/* 151D8 800145D8 D42E1448 */  ldc1       $f14, %lo(D_80071448)($at)
/* 151DC 800145DC 3C018007 */  lui        $at, %hi(D_80071450)
/* 151E0 800145E0 D4301450 */  ldc1       $f16, %lo(D_80071450)($at)
/* 151E4 800145E4 462E1200 */  add.d      $f8, $f2, $f14
/* 151E8 800145E8 46204020 */  cvt.s.d    $f0, $f8
/* 151EC 800145EC 1000000B */  b          .L8001461C
/* 151F0 800145F0 460000A1 */   cvt.d.s   $f2, $f0
.L800145F4:
/* 151F4 800145F4 D4301458 */  ldc1       $f16, 0x1458($at)
/* 151F8 800145F8 3C018007 */  lui        $at, %hi(D_80071460)
/* 151FC 800145FC 4622803C */  c.lt.d     $f16, $f2
/* 15200 80014600 00000000 */  nop
/* 15204 80014604 45000005 */  bc1f       .L8001461C
/* 15208 80014608 00000000 */   nop
/* 1520C 8001460C D42E1460 */  ldc1       $f14, %lo(D_80071460)($at)
/* 15210 80014610 462E1281 */  sub.d      $f10, $f2, $f14
/* 15214 80014614 46205020 */  cvt.s.d    $f0, $f10
/* 15218 80014618 460000A1 */  cvt.d.s    $f2, $f0
.L8001461C:
/* 1521C 8001461C 3C018007 */  lui        $at, %hi(D_80071468)
/* 15220 80014620 D42E1468 */  ldc1       $f14, %lo(D_80071468)($at)
/* 15224 80014624 3C018007 */  lui        $at, %hi(D_80071470)
/* 15228 80014628 D4321470 */  ldc1       $f18, %lo(D_80071470)($at)
/* 1522C 8001462C 3C018007 */  lui        $at, %hi(D_80071478)
/* 15230 80014630 4622903C */  c.lt.d     $f18, $f2
/* 15234 80014634 00000000 */  nop
/* 15238 80014638 45000003 */  bc1f       .L80014648
/* 1523C 8001463C 00000000 */   nop
/* 15240 80014640 C4201478 */  lwc1       $f0, %lo(D_80071478)($at)
/* 15244 80014644 460000A1 */  cvt.d.s    $f2, $f0
.L80014648:
/* 15248 80014648 3C018007 */  lui        $at, %hi(D_80071480)
/* 1524C 8001464C D4241480 */  ldc1       $f4, %lo(D_80071480)($at)
/* 15250 80014650 3C018007 */  lui        $at, %hi(D_80071488)
/* 15254 80014654 4624103C */  c.lt.d     $f2, $f4
/* 15258 80014658 00000000 */  nop
/* 1525C 8001465C 45020004 */  bc1fl      .L80014670
/* 15260 80014660 46301180 */   add.d     $f6, $f2, $f16
/* 15264 80014664 C4201488 */  lwc1       $f0, %lo(D_80071488)($at)
/* 15268 80014668 460000A1 */  cvt.d.s    $f2, $f0
/* 1526C 8001466C 46301180 */  add.d      $f6, $f2, $f16
.L80014670:
/* 15270 80014670 3C018008 */  lui        $at, 0x8008
/* 15274 80014674 46203020 */  cvt.s.d    $f0, $f6
/* 15278 80014678 460000A1 */  cvt.d.s    $f2, $f0
/* 1527C 8001467C 462C103C */  c.lt.d     $f2, $f12
/* 15280 80014680 00000000 */  nop
/* 15284 80014684 45020005 */  bc1fl      .L8001469C
/* 15288 80014688 4622803C */   c.lt.d    $f16, $f2
/* 1528C 8001468C 462E1200 */  add.d      $f8, $f2, $f14
/* 15290 80014690 10000007 */  b          .L800146B0
/* 15294 80014694 46204020 */   cvt.s.d   $f0, $f8
/* 15298 80014698 4622803C */  c.lt.d     $f16, $f2
.L8001469C:
/* 1529C 8001469C 00000000 */  nop
/* 152A0 800146A0 45020004 */  bc1fl      .L800146B4
/* 152A4 800146A4 E4400084 */   swc1      $f0, 0x84($v0)
/* 152A8 800146A8 462E1281 */  sub.d      $f10, $f2, $f14
/* 152AC 800146AC 46205020 */  cvt.s.d    $f0, $f10
.L800146B0:
/* 152B0 800146B0 E4400084 */  swc1       $f0, 0x84($v0)
.L800146B4:
/* 152B4 800146B4 C432537C */  lwc1       $f18, 0x537c($at)
/* 152B8 800146B8 46009121 */  cvt.d.s    $f4, $f18
/* 152BC 800146BC 46302180 */  add.d      $f6, $f4, $f16
/* 152C0 800146C0 46203220 */  cvt.s.d    $f8, $f6
/* 152C4 800146C4 E4480054 */  swc1       $f8, 0x54($v0)
/* 152C8 800146C8 C44A0054 */  lwc1       $f10, 0x54($v0)
/* 152CC 800146CC 460050A1 */  cvt.d.s    $f2, $f10
/* 152D0 800146D0 4622803C */  c.lt.d     $f16, $f2
/* 152D4 800146D4 00000000 */  nop
/* 152D8 800146D8 45020006 */  bc1fl      .L800146F4
/* 152DC 800146DC 462C103C */   c.lt.d    $f2, $f12
/* 152E0 800146E0 462E1481 */  sub.d      $f18, $f2, $f14
/* 152E4 800146E4 46209120 */  cvt.s.d    $f4, $f18
/* 152E8 800146E8 10000008 */  b          .L8001470C
/* 152EC 800146EC E4440054 */   swc1      $f4, 0x54($v0)
/* 152F0 800146F0 462C103C */  c.lt.d     $f2, $f12
.L800146F4:
/* 152F4 800146F4 00000000 */  nop
/* 152F8 800146F8 45020005 */  bc1fl      .L80014710
/* 152FC 800146FC 944E0008 */   lhu       $t6, 8($v0)
/* 15300 80014700 462E1180 */  add.d      $f6, $f2, $f14
/* 15304 80014704 46203220 */  cvt.s.d    $f8, $f6
/* 15308 80014708 E4480054 */  swc1       $f8, 0x54($v0)
.L8001470C:
/* 1530C 8001470C 944E0008 */  lhu        $t6, 8($v0)
.L80014710:
/* 15310 80014710 35CF0010 */  ori        $t7, $t6, 0x10
/* 15314 80014714 A44F0008 */  sh         $t7, 8($v0)
/* 15318 80014718 03E00008 */  jr         $ra
/* 1531C 8001471C 00000000 */   nop

glabel func_80014720
/* 15320 80014720 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 15324 80014724 F7B80020 */  sdc1       $f24, 0x20($sp)
/* 15328 80014728 AFB30038 */  sw         $s3, 0x38($sp)
/* 1532C 8001472C 4485C000 */  mtc1       $a1, $f24
/* 15330 80014730 00809825 */  or         $s3, $a0, $zero
/* 15334 80014734 AFBF003C */  sw         $ra, 0x3c($sp)
/* 15338 80014738 AFB20034 */  sw         $s2, 0x34($sp)
/* 1533C 8001473C AFB10030 */  sw         $s1, 0x30($sp)
/* 15340 80014740 AFB0002C */  sw         $s0, 0x2c($sp)
/* 15344 80014744 F7B60018 */  sdc1       $f22, 0x18($sp)
/* 15348 80014748 F7B40010 */  sdc1       $f20, 0x10($sp)
/* 1534C 8001474C 3C028008 */  lui        $v0, %hi(D_8007BCE8)
/* 15350 80014750 8C42BCE8 */  lw         $v0, %lo(D_8007BCE8)($v0)
/* 15354 80014754 3C128008 */  lui        $s2, %hi(npcPtrs)
/* 15358 80014758 1040002B */  beqz       $v0, .L80014808
/* 1535C 8001475C 00408825 */   or        $s1, $v0, $zero
/* 15360 80014760 10400029 */  beqz       $v0, .L80014808
/* 15364 80014764 2652BCF0 */   addiu     $s2, $s2, %lo(npcPtrs)
/* 15368 80014768 3C014034 */  lui        $at, 0x4034
/* 1536C 8001476C 4481B800 */  mtc1       $at, $f23
/* 15370 80014770 3C01403E */  lui        $at, 0x403e
/* 15374 80014774 4481A800 */  mtc1       $at, $f21
/* 15378 80014778 4480B000 */  mtc1       $zero, $f22
/* 1537C 8001477C 4480A000 */  mtc1       $zero, $f20
/* 15380 80014780 00000000 */  nop
/* 15384 80014784 8E500000 */  lw         $s0, ($s2)
.L80014788:
/* 15388 80014788 26520004 */  addiu      $s2, $s2, 4
/* 1538C 8001478C C6040004 */  lwc1       $f4, 4($s0)
/* 15390 80014790 46182081 */  sub.s      $f2, $f4, $f24
/* 15394 80014794 460011A1 */  cvt.d.s    $f6, $f2
/* 15398 80014798 4636303C */  c.lt.d     $f6, $f22
/* 1539C 8001479C 00000000 */  nop
/* 153A0 800147A0 45020017 */  bc1fl      .L80014800
/* 153A4 800147A4 2631FFFF */   addiu     $s1, $s1, -1
/* 153A8 800147A8 C6080000 */  lwc1       $f8, ($s0)
/* 153AC 800147AC C66A000C */  lwc1       $f10, 0xc($s3)
/* 153B0 800147B0 C6100008 */  lwc1       $f16, 8($s0)
/* 153B4 800147B4 C6720014 */  lwc1       $f18, 0x14($s3)
/* 153B8 800147B8 460A4081 */  sub.s      $f2, $f8, $f10
/* 153BC 800147BC 46128001 */  sub.s      $f0, $f16, $f18
/* 153C0 800147C0 46021102 */  mul.s      $f4, $f2, $f2
/* 153C4 800147C4 00000000 */  nop
/* 153C8 800147C8 46000182 */  mul.s      $f6, $f0, $f0
/* 153CC 800147CC 0C00D3D8 */  jal        _nsqrtf
/* 153D0 800147D0 46062300 */   add.s     $f12, $f4, $f6
/* 153D4 800147D4 46000221 */  cvt.d.s    $f8, $f0
/* 153D8 800147D8 4634403C */  c.lt.d     $f8, $f20
/* 153DC 800147DC 00000000 */  nop
/* 153E0 800147E0 45020007 */  bc1fl      .L80014800
/* 153E4 800147E4 2631FFFF */   addiu     $s1, $s1, -1
/* 153E8 800147E8 C60A0004 */  lwc1       $f10, 4($s0)
/* 153EC 800147EC 46005421 */  cvt.d.s    $f16, $f10
/* 153F0 800147F0 46348480 */  add.d      $f18, $f16, $f20
/* 153F4 800147F4 10000004 */  b          .L80014808
/* 153F8 800147F8 46209620 */   cvt.s.d   $f24, $f18
/* 153FC 800147FC 2631FFFF */  addiu      $s1, $s1, -1
.L80014800:
/* 15400 80014800 5620FFE1 */  bnel       $s1, $zero, .L80014788
/* 15404 80014804 8E500000 */   lw        $s0, ($s2)
.L80014808:
/* 15408 80014808 4600C006 */  mov.s      $f0, $f24
/* 1540C 8001480C 8FBF003C */  lw         $ra, 0x3c($sp)
/* 15410 80014810 D7B40010 */  ldc1       $f20, 0x10($sp)
/* 15414 80014814 D7B60018 */  ldc1       $f22, 0x18($sp)
/* 15418 80014818 D7B80020 */  ldc1       $f24, 0x20($sp)
/* 1541C 8001481C 8FB0002C */  lw         $s0, 0x2c($sp)
/* 15420 80014820 8FB10030 */  lw         $s1, 0x30($sp)
/* 15424 80014824 8FB20034 */  lw         $s2, 0x34($sp)
/* 15428 80014828 8FB30038 */  lw         $s3, 0x38($sp)
/* 1542C 8001482C 03E00008 */  jr         $ra
/* 15430 80014830 27BD0040 */   addiu     $sp, $sp, 0x40
/* 15434 80014834 00000000 */  nop
/* 15438 80014838 00000000 */  nop
/* 1543C 8001483C 00000000 */  nop
