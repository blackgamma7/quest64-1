glabel Pause_Environment
/* 284B0 800278B0 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 284B4 800278B4 3C028006 */  lui        $v0, %hi(MessageSliderPos)
/* 284B8 800278B8 2442FA00 */  addiu      $v0, $v0, %lo(MessageSliderPos)
/* 284BC 800278BC AFBF001C */  sw         $ra, 0x1c($sp)
/* 284C0 800278C0 AFA40048 */  sw         $a0, 0x48($sp)
/* 284C4 800278C4 3C0F8006 */  lui        $t7, %hi(D_8005F8F0)
/* 284C8 800278C8 25EFF8F0 */  addiu      $t7, $t7, %lo(D_8005F8F0)
/* 284CC 800278CC 99E10002 */  lwr        $at, 2($t7)
/* 284D0 800278D0 27AE0038 */  addiu      $t6, $sp, 0x38
/* 284D4 800278D4 240D0004 */  addiu      $t5, $zero, 4
/* 284D8 800278D8 B9C10002 */  swr        $at, 2($t6)
/* 284DC 800278DC 804C0000 */  lb         $t4, ($v0)
/* 284E0 800278E0 8FA50048 */  lw         $a1, 0x48($sp)
/* 284E4 800278E4 2418006C */  addiu      $t8, $zero, 0x6c
/* 284E8 800278E8 01ACC823 */  subu       $t9, $t5, $t4
/* 284EC 800278EC A0590000 */  sb         $t9, ($v0)
/* 284F0 800278F0 AFB80010 */  sw         $t8, 0x10($sp)
/* 284F4 800278F4 00002025 */  or         $a0, $zero, $zero
/* 284F8 800278F8 2406001E */  addiu      $a2, $zero, 0x1e
/* 284FC 800278FC 240700F0 */  addiu      $a3, $zero, 0xf0
/* 28500 80027900 0C00A6D6 */  jal        drawMenuItem
/* 28504 80027904 24A50028 */   addiu     $a1, $a1, 0x28
/* 28508 80027908 8FA50048 */  lw         $a1, 0x48($sp)
/* 2850C 8002790C 240E0003 */  addiu      $t6, $zero, 3
/* 28510 80027910 AFAE0010 */  sw         $t6, 0x10($sp)
/* 28514 80027914 24040037 */  addiu      $a0, $zero, 0x37
/* 28518 80027918 2406008B */  addiu      $a2, $zero, 0x8b
/* 2851C 8002791C 240700F0 */  addiu      $a3, $zero, 0xf0
/* 28520 80027920 0C00A6D6 */  jal        drawMenuItem
/* 28524 80027924 24A5002B */   addiu     $a1, $a1, 0x2b
/* 28528 80027928 8FA50048 */  lw         $a1, 0x48($sp)
/* 2852C 8002792C 240F0068 */  addiu      $t7, $zero, 0x68
/* 28530 80027930 AFAF0010 */  sw         $t7, 0x10($sp)
/* 28534 80027934 24040037 */  addiu      $a0, $zero, 0x37
/* 28538 80027938 24060024 */  addiu      $a2, $zero, 0x24
/* 2853C 8002793C 24070002 */  addiu      $a3, $zero, 2
/* 28540 80027940 0C00A6D6 */  jal        drawMenuItem
/* 28544 80027944 24A50119 */   addiu     $a1, $a1, 0x119
/* 28548 80027948 8FA50048 */  lw         $a1, 0x48($sp)
/* 2854C 8002794C 240B0001 */  addiu      $t3, $zero, 1
/* 28550 80027950 AFAB0010 */  sw         $t3, 0x10($sp)
/* 28554 80027954 24A50027 */  addiu      $a1, $a1, 0x27
/* 28558 80027958 AFA50030 */  sw         $a1, 0x30($sp)
/* 2855C 8002795C 24040037 */  addiu      $a0, $zero, 0x37
/* 28560 80027960 2406001D */  addiu      $a2, $zero, 0x1d
/* 28564 80027964 0C00A6D6 */  jal        drawMenuItem
/* 28568 80027968 240700F2 */   addiu     $a3, $zero, 0xf2
/* 2856C 8002796C 240D0001 */  addiu      $t5, $zero, 1
/* 28570 80027970 AFAD0010 */  sw         $t5, 0x10($sp)
/* 28574 80027974 24040037 */  addiu      $a0, $zero, 0x37
/* 28578 80027978 8FA50030 */  lw         $a1, 0x30($sp)
/* 2857C 8002797C 2406008A */  addiu      $a2, $zero, 0x8a
/* 28580 80027980 0C00A6D6 */  jal        drawMenuItem
/* 28584 80027984 240700F2 */   addiu     $a3, $zero, 0xf2
/* 28588 80027988 240C006D */  addiu      $t4, $zero, 0x6d
/* 2858C 8002798C AFAC0010 */  sw         $t4, 0x10($sp)
/* 28590 80027990 24040037 */  addiu      $a0, $zero, 0x37
/* 28594 80027994 8FA50030 */  lw         $a1, 0x30($sp)
/* 28598 80027998 2406001E */  addiu      $a2, $zero, 0x1e
/* 2859C 8002799C 0C00A6D6 */  jal        drawMenuItem
/* 285A0 800279A0 24070001 */   addiu     $a3, $zero, 1
/* 285A4 800279A4 8FA50048 */  lw         $a1, 0x48($sp)
/* 285A8 800279A8 2419006D */  addiu      $t9, $zero, 0x6d
/* 285AC 800279AC AFB90010 */  sw         $t9, 0x10($sp)
/* 285B0 800279B0 24040037 */  addiu      $a0, $zero, 0x37
/* 285B4 800279B4 2406001E */  addiu      $a2, $zero, 0x1e
/* 285B8 800279B8 24070001 */  addiu      $a3, $zero, 1
/* 285BC 800279BC 0C00A6D6 */  jal        drawMenuItem
/* 285C0 800279C0 24A50118 */   addiu     $a1, $a1, 0x118
/* 285C4 800279C4 8FA50048 */  lw         $a1, 0x48($sp)
/* 285C8 800279C8 24180001 */  addiu      $t8, $zero, 1
/* 285CC 800279CC AFB80010 */  sw         $t8, 0x10($sp)
/* 285D0 800279D0 24A50029 */  addiu      $a1, $a1, 0x29
/* 285D4 800279D4 AFA50030 */  sw         $a1, 0x30($sp)
/* 285D8 800279D8 24040038 */  addiu      $a0, $zero, 0x38
/* 285DC 800279DC 2406001F */  addiu      $a2, $zero, 0x1f
/* 285E0 800279E0 0C00A6D6 */  jal        drawMenuItem
/* 285E4 800279E4 240700ED */   addiu     $a3, $zero, 0xed
/* 285E8 800279E8 240E0068 */  addiu      $t6, $zero, 0x68
/* 285EC 800279EC AFAE0010 */  sw         $t6, 0x10($sp)
/* 285F0 800279F0 24040038 */  addiu      $a0, $zero, 0x38
/* 285F4 800279F4 8FA50030 */  lw         $a1, 0x30($sp)
/* 285F8 800279F8 24060020 */  addiu      $a2, $zero, 0x20
/* 285FC 800279FC 0C00A6D6 */  jal        drawMenuItem
/* 28600 80027A00 24070001 */   addiu     $a3, $zero, 1
/* 28604 80027A04 240F0001 */  addiu      $t7, $zero, 1
/* 28608 80027A08 AFAF0010 */  sw         $t7, 0x10($sp)
/* 2860C 80027A0C 24040039 */  addiu      $a0, $zero, 0x39
/* 28610 80027A10 8FA50030 */  lw         $a1, 0x30($sp)
/* 28614 80027A14 24060088 */  addiu      $a2, $zero, 0x88
/* 28618 80027A18 0C00A6D6 */  jal        drawMenuItem
/* 2861C 80027A1C 240700EE */   addiu     $a3, $zero, 0xee
/* 28620 80027A20 8FA50048 */  lw         $a1, 0x48($sp)
/* 28624 80027A24 240B0069 */  addiu      $t3, $zero, 0x69
/* 28628 80027A28 AFAB0010 */  sw         $t3, 0x10($sp)
/* 2862C 80027A2C 24040039 */  addiu      $a0, $zero, 0x39
/* 28630 80027A30 2406001F */  addiu      $a2, $zero, 0x1f
/* 28634 80027A34 24070001 */  addiu      $a3, $zero, 1
/* 28638 80027A38 0C00A6D6 */  jal        drawMenuItem
/* 2863C 80027A3C 24A50116 */   addiu     $a1, $a1, 0x116
/* 28640 80027A40 8FA50048 */  lw         $a1, 0x48($sp)
/* 28644 80027A44 240D006C */  addiu      $t5, $zero, 0x6c
/* 28648 80027A48 AFAD0010 */  sw         $t5, 0x10($sp)
/* 2864C 80027A4C 2404003C */  addiu      $a0, $zero, 0x3c
/* 28650 80027A50 2406001E */  addiu      $a2, $zero, 0x1e
/* 28654 80027A54 24070015 */  addiu      $a3, $zero, 0x15
/* 28658 80027A58 0C00A6D6 */  jal        drawMenuItem
/* 2865C 80027A5C 24A5003A */   addiu     $a1, $a1, 0x3a
/* 28660 80027A60 8FA50048 */  lw         $a1, 0x48($sp)
/* 28664 80027A64 240C0002 */  addiu      $t4, $zero, 2
/* 28668 80027A68 AFAC0010 */  sw         $t4, 0x10($sp)
/* 2866C 80027A6C 2404003D */  addiu      $a0, $zero, 0x3d
/* 28670 80027A70 24060056 */  addiu      $a2, $zero, 0x56
/* 28674 80027A74 240700A7 */  addiu      $a3, $zero, 0xa7
/* 28678 80027A78 0C00A6D6 */  jal        drawMenuItem
/* 2867C 80027A7C 24A5005D */   addiu     $a1, $a1, 0x5d
/* 28680 80027A80 8FA50048 */  lw         $a1, 0x48($sp)
/* 28684 80027A84 24190007 */  addiu      $t9, $zero, 7
/* 28688 80027A88 AFB90010 */  sw         $t9, 0x10($sp)
/* 2868C 80027A8C 24A5008D */  addiu      $a1, $a1, 0x8d
/* 28690 80027A90 AFA50030 */  sw         $a1, 0x30($sp)
/* 28694 80027A94 24040024 */  addiu      $a0, $zero, 0x24
/* 28698 80027A98 2406003E */  addiu      $a2, $zero, 0x3e
/* 2869C 80027A9C 0C00A6D6 */  jal        drawMenuItem
/* 286A0 80027AA0 24070054 */   addiu     $a3, $zero, 0x54
/* 286A4 80027AA4 24180007 */  addiu      $t8, $zero, 7
/* 286A8 80027AA8 8FA50030 */  lw         $a1, 0x30($sp)
/* 286AC 80027AAC AFB80010 */  sw         $t8, 0x10($sp)
/* 286B0 80027AB0 24040024 */  addiu      $a0, $zero, 0x24
/* 286B4 80027AB4 2406006C */  addiu      $a2, $zero, 0x6c
/* 286B8 80027AB8 0C00A6D6 */  jal        drawMenuItem
/* 286BC 80027ABC 24070054 */   addiu     $a3, $zero, 0x54
/* 286C0 80027AC0 8FA50048 */  lw         $a1, 0x48($sp)
/* 286C4 80027AC4 240E0008 */  addiu      $t6, $zero, 8
/* 286C8 80027AC8 AFAE0010 */  sw         $t6, 0x10($sp)
/* 286CC 80027ACC 24A500EA */  addiu      $a1, $a1, 0xea
/* 286D0 80027AD0 AFA50030 */  sw         $a1, 0x30($sp)
/* 286D4 80027AD4 24040029 */  addiu      $a0, $zero, 0x29
/* 286D8 80027AD8 2406003A */  addiu      $a2, $zero, 0x3a
/* 286DC 80027ADC 0C00A6D6 */  jal        drawMenuItem
/* 286E0 80027AE0 24070018 */   addiu     $a3, $zero, 0x18
/* 286E4 80027AE4 8FA50048 */  lw         $a1, 0x48($sp)
/* 286E8 80027AE8 240F000B */  addiu      $t7, $zero, 0xb
/* 286EC 80027AEC AFAF0010 */  sw         $t7, 0x10($sp)
/* 286F0 80027AF0 24A5006C */  addiu      $a1, $a1, 0x6c
/* 286F4 80027AF4 AFA5002C */  sw         $a1, 0x2c($sp)
/* 286F8 80027AF8 2404002A */  addiu      $a0, $zero, 0x2a
/* 286FC 80027AFC 2406003D */  addiu      $a2, $zero, 0x3d
/* 28700 80027B00 0C00A6D6 */  jal        drawMenuItem
/* 28704 80027B04 24070014 */   addiu     $a3, $zero, 0x14
/* 28708 80027B08 240B0008 */  addiu      $t3, $zero, 8
/* 2870C 80027B0C AFAB0010 */  sw         $t3, 0x10($sp)
/* 28710 80027B10 24040029 */  addiu      $a0, $zero, 0x29
/* 28714 80027B14 8FA50030 */  lw         $a1, 0x30($sp)
/* 28718 80027B18 2406006B */  addiu      $a2, $zero, 0x6b
/* 2871C 80027B1C 0C00A6D6 */  jal        drawMenuItem
/* 28720 80027B20 24070018 */   addiu     $a3, $zero, 0x18
/* 28724 80027B24 240D000B */  addiu      $t5, $zero, 0xb
/* 28728 80027B28 AFAD0010 */  sw         $t5, 0x10($sp)
/* 2872C 80027B2C 2404002A */  addiu      $a0, $zero, 0x2a
/* 28730 80027B30 8FA5002C */  lw         $a1, 0x2c($sp)
/* 28734 80027B34 24060068 */  addiu      $a2, $zero, 0x68
/* 28738 80027B38 0C00A6D6 */  jal        drawMenuItem
/* 2873C 80027B3C 24070014 */   addiu     $a3, $zero, 0x14
/* 28740 80027B40 8FA50048 */  lw         $a1, 0x48($sp)
/* 28744 80027B44 240C000C */  addiu      $t4, $zero, 0xc
/* 28748 80027B48 AFAC0010 */  sw         $t4, 0x10($sp)
/* 2874C 80027B4C 24040022 */  addiu      $a0, $zero, 0x22
/* 28750 80027B50 2406003B */  addiu      $a2, $zero, 0x3b
/* 28754 80027B54 24070034 */  addiu      $a3, $zero, 0x34
/* 28758 80027B58 0C00A6D6 */  jal        drawMenuItem
/* 2875C 80027B5C 24A50031 */   addiu     $a1, $a1, 0x31
/* 28760 80027B60 8FA50048 */  lw         $a1, 0x48($sp)
/* 28764 80027B64 24190010 */  addiu      $t9, $zero, 0x10
/* 28768 80027B68 AFB90010 */  sw         $t9, 0x10($sp)
/* 2876C 80027B6C 24040023 */  addiu      $a0, $zero, 0x23
/* 28770 80027B70 24060065 */  addiu      $a2, $zero, 0x65
/* 28774 80027B74 2407002C */  addiu      $a3, $zero, 0x2c
/* 28778 80027B78 0C00A6D6 */  jal        drawMenuItem
/* 2877C 80027B7C 24A50035 */   addiu     $a1, $a1, 0x35
/* 28780 80027B80 8FA50048 */  lw         $a1, 0x48($sp)
/* 28784 80027B84 24180007 */  addiu      $t8, $zero, 7
/* 28788 80027B88 AFB80010 */  sw         $t8, 0x10($sp)
/* 2878C 80027B8C 24040005 */  addiu      $a0, $zero, 5
/* 28790 80027B90 2406001C */  addiu      $a2, $zero, 0x1c
/* 28794 80027B94 24070007 */  addiu      $a3, $zero, 7
/* 28798 80027B98 0C00A6D6 */  jal        drawMenuItem
/* 2879C 80027B9C 24A50045 */   addiu     $a1, $a1, 0x45
/* 287A0 80027BA0 8FA50048 */  lw         $a1, 0x48($sp)
/* 287A4 80027BA4 240E0007 */  addiu      $t6, $zero, 7
/* 287A8 80027BA8 AFAE0010 */  sw         $t6, 0x10($sp)
/* 287AC 80027BAC 24040005 */  addiu      $a0, $zero, 5
/* 287B0 80027BB0 2406001C */  addiu      $a2, $zero, 0x1c
/* 287B4 80027BB4 24070007 */  addiu      $a3, $zero, 7
/* 287B8 80027BB8 0C00A6D6 */  jal        drawMenuItem
/* 287BC 80027BBC 24A500F3 */   addiu     $a1, $a1, 0xf3
/* 287C0 80027BC0 3C098009 */  lui        $t1, %hi(pauseMenuFrameCtr)
/* 287C4 80027BC4 8D29FD10 */  lw         $t1, %lo(pauseMenuFrameCtr)($t1)
/* 287C8 80027BC8 3C018006 */  lui        $at, %hi(D_8005F0C0)
/* 287CC 80027BCC 8FAD0048 */  lw         $t5, 0x48($sp)
/* 287D0 80027BD0 00097883 */  sra        $t7, $t1, 2
/* 287D4 80027BD4 31EB000F */  andi       $t3, $t7, 0xf
/* 287D8 80027BD8 002B0821 */  addu       $at, $at, $t3
/* 287DC 80027BDC 8029F0C0 */  lb         $t1, %lo(D_8005F0C0)($at)
/* 287E0 80027BE0 240C000B */  addiu      $t4, $zero, 0xb
/* 287E4 80027BE4 AFAC0010 */  sw         $t4, 0x10($sp)
/* 287E8 80027BE8 01A92821 */  addu       $a1, $t5, $t1
/* 287EC 80027BEC 24A50036 */  addiu      $a1, $a1, 0x36
/* 287F0 80027BF0 24040006 */  addiu      $a0, $zero, 6
/* 287F4 80027BF4 2406001A */  addiu      $a2, $zero, 0x1a
/* 287F8 80027BF8 2407000E */  addiu      $a3, $zero, 0xe
/* 287FC 80027BFC 0C00A6D6 */  jal        drawMenuItem
/* 28800 80027C00 AFA90044 */   sw        $t1, 0x44($sp)
/* 28804 80027C04 8FA90044 */  lw         $t1, 0x44($sp)
/* 28808 80027C08 8FB90048 */  lw         $t9, 0x48($sp)
/* 2880C 80027C0C 2418000B */  addiu      $t8, $zero, 0xb
/* 28810 80027C10 AFB80010 */  sw         $t8, 0x10($sp)
/* 28814 80027C14 03292823 */  subu       $a1, $t9, $t1
/* 28818 80027C18 24A500FB */  addiu      $a1, $a1, 0xfb
/* 2881C 80027C1C 24040007 */  addiu      $a0, $zero, 7
/* 28820 80027C20 2406001A */  addiu      $a2, $zero, 0x1a
/* 28824 80027C24 0C00A6D6 */  jal        drawMenuItem
/* 28828 80027C28 2407000E */   addiu     $a3, $zero, 0xe
/* 2882C 80027C2C 8FA50048 */  lw         $a1, 0x48($sp)
/* 28830 80027C30 240E0010 */  addiu      $t6, $zero, 0x10
/* 28834 80027C34 AFAE0010 */  sw         $t6, 0x10($sp)
/* 28838 80027C38 24040021 */  addiu      $a0, $zero, 0x21
/* 2883C 80027C3C 2406001A */  addiu      $a2, $zero, 0x1a
/* 28840 80027C40 24070050 */  addiu      $a3, $zero, 0x50
/* 28844 80027C44 0C00A6D6 */  jal        drawMenuItem
/* 28848 80027C48 24A50077 */   addiu     $a1, $a1, 0x77
/* 2884C 80027C4C 8FA50048 */  lw         $a1, 0x48($sp)
/* 28850 80027C50 240F0003 */  addiu      $t7, $zero, 3
/* 28854 80027C54 AFAF0010 */  sw         $t7, 0x10($sp)
/* 28858 80027C58 24A5008E */  addiu      $a1, $a1, 0x8e
/* 2885C 80027C5C AFA50030 */  sw         $a1, 0x30($sp)
/* 28860 80027C60 24040025 */  addiu      $a0, $zero, 0x25
/* 28864 80027C64 2406003F */  addiu      $a2, $zero, 0x3f
/* 28868 80027C68 0C00A6D6 */  jal        drawMenuItem
/* 2886C 80027C6C 24070050 */   addiu     $a3, $zero, 0x50
/* 28870 80027C70 240B0003 */  addiu      $t3, $zero, 3
/* 28874 80027C74 8FA50030 */  lw         $a1, 0x30($sp)
/* 28878 80027C78 AFAB0010 */  sw         $t3, 0x10($sp)
/* 2887C 80027C7C 24040025 */  addiu      $a0, $zero, 0x25
/* 28880 80027C80 2406006D */  addiu      $a2, $zero, 0x6d
/* 28884 80027C84 0C00A6D6 */  jal        drawMenuItem
/* 28888 80027C88 24070050 */   addiu     $a3, $zero, 0x50
/* 2888C 80027C8C 8FA50048 */  lw         $a1, 0x48($sp)
/* 28890 80027C90 240D000B */  addiu      $t5, $zero, 0xb
/* 28894 80027C94 AFAD0010 */  sw         $t5, 0x10($sp)
/* 28898 80027C98 24A500B3 */  addiu      $a1, $a1, 0xb3
/* 2889C 80027C9C AFA50030 */  sw         $a1, 0x30($sp)
/* 288A0 80027CA0 24040027 */  addiu      $a0, $zero, 0x27
/* 288A4 80027CA4 24060039 */  addiu      $a2, $zero, 0x39
/* 288A8 80027CA8 0C00A6D6 */  jal        drawMenuItem
/* 288AC 80027CAC 24070008 */   addiu     $a3, $zero, 8
/* 288B0 80027CB0 240C000B */  addiu      $t4, $zero, 0xb
/* 288B4 80027CB4 8FA50030 */  lw         $a1, 0x30($sp)
/* 288B8 80027CB8 AFAC0010 */  sw         $t4, 0x10($sp)
/* 288BC 80027CBC 24040027 */  addiu      $a0, $zero, 0x27
/* 288C0 80027CC0 24060067 */  addiu      $a2, $zero, 0x67
/* 288C4 80027CC4 0C00A6D6 */  jal        drawMenuItem
/* 288C8 80027CC8 24070008 */   addiu     $a3, $zero, 8
/* 288CC 80027CCC 3C088009 */  lui        $t0, %hi(pause_and_save_screen_state_flags)
/* 288D0 80027CD0 2508FD0C */  addiu      $t0, $t0, %lo(pause_and_save_screen_state_flags)
/* 288D4 80027CD4 95070000 */  lhu        $a3, ($t0)
/* 288D8 80027CD8 3C0F8006 */  lui        $t7, %hi(D_8005F914)
/* 288DC 80027CDC 25EFF914 */  addiu      $t7, $t7, %lo(D_8005F914)
/* 288E0 80027CE0 30F90200 */  andi       $t9, $a3, 0x200
/* 288E4 80027CE4 13200031 */  beqz       $t9, .L80027DAC
/* 288E8 80027CE8 3C188006 */   lui       $t8, 0x8006
/* 288EC 80027CEC 30E20100 */  andi       $v0, $a3, 0x100
/* 288F0 80027CF0 10400006 */  beqz       $v0, .L80027D0C
/* 288F4 80027CF4 3C188006 */   lui       $t8, 0x8006
/* 288F8 80027CF8 24010100 */  addiu      $at, $zero, 0x100
/* 288FC 80027CFC 10410017 */  beq        $v0, $at, .L80027D5C
/* 28900 80027D00 3C188006 */   lui       $t8, %hi(BGMSliderPos)
/* 28904 80027D04 1000004C */  b          .L80027E38
/* 28908 80027D08 30F82000 */   andi      $t8, $a3, 0x2000
.L80027D0C:
/* 2890C 80027D0C 8318F010 */  lb         $t8, %lo(BGMSliderPos)($t8)
/* 28910 80027D10 3C0F8006 */  lui        $t7, %hi(D_8005F914)
/* 28914 80027D14 25EFF914 */  addiu      $t7, $t7, %lo(D_8005F914)
/* 28918 80027D18 00187080 */  sll        $t6, $t8, 2
/* 2891C 80027D1C 01CF1821 */  addu       $v1, $t6, $t7
/* 28920 80027D20 846B0002 */  lh         $t3, 2($v1)
/* 28924 80027D24 846D0000 */  lh         $t5, ($v1)
/* 28928 80027D28 8FAC0048 */  lw         $t4, 0x48($sp)
/* 2892C 80027D2C 03AB2021 */  addu       $a0, $sp, $t3
/* 28930 80027D30 90840038 */  lbu        $a0, 0x38($a0)
/* 28934 80027D34 2419000B */  addiu      $t9, $zero, 0xb
/* 28938 80027D38 AFB90010 */  sw         $t9, 0x10($sp)
/* 2893C 80027D3C 24060067 */  addiu      $a2, $zero, 0x67
/* 28940 80027D40 24070008 */  addiu      $a3, $zero, 8
/* 28944 80027D44 0C00A6D6 */  jal        drawMenuItem
/* 28948 80027D48 01AC2821 */   addu      $a1, $t5, $t4
/* 2894C 80027D4C 3C088009 */  lui        $t0, %hi(pause_and_save_screen_state_flags)
/* 28950 80027D50 2508FD0C */  addiu      $t0, $t0, %lo(pause_and_save_screen_state_flags)
/* 28954 80027D54 10000037 */  b          .L80027E34
/* 28958 80027D58 95070000 */   lhu       $a3, ($t0)
.L80027D5C:
/* 2895C 80027D5C 8318FA00 */  lb         $t8, -0x600($t8)
/* 28960 80027D60 3C0F8006 */  lui        $t7, %hi(D_8005F8F4)
/* 28964 80027D64 25EFF8F4 */  addiu      $t7, $t7, %lo(D_8005F8F4)
/* 28968 80027D68 00187080 */  sll        $t6, $t8, 2
/* 2896C 80027D6C 01CF1821 */  addu       $v1, $t6, $t7
/* 28970 80027D70 846B0002 */  lh         $t3, 2($v1)
/* 28974 80027D74 846D0000 */  lh         $t5, ($v1)
/* 28978 80027D78 8FAC0048 */  lw         $t4, 0x48($sp)
/* 2897C 80027D7C 03AB2021 */  addu       $a0, $sp, $t3
/* 28980 80027D80 90840038 */  lbu        $a0, 0x38($a0)
/* 28984 80027D84 2419000B */  addiu      $t9, $zero, 0xb
/* 28988 80027D88 AFB90010 */  sw         $t9, 0x10($sp)
/* 2898C 80027D8C 24060039 */  addiu      $a2, $zero, 0x39
/* 28990 80027D90 24070008 */  addiu      $a3, $zero, 8
/* 28994 80027D94 0C00A6D6 */  jal        drawMenuItem
/* 28998 80027D98 01AC2821 */   addu      $a1, $t5, $t4
/* 2899C 80027D9C 3C088009 */  lui        $t0, %hi(pause_and_save_screen_state_flags)
/* 289A0 80027DA0 2508FD0C */  addiu      $t0, $t0, %lo(pause_and_save_screen_state_flags)
/* 289A4 80027DA4 10000023 */  b          .L80027E34
/* 289A8 80027DA8 95070000 */   lhu       $a3, ($t0)
.L80027DAC:
/* 289AC 80027DAC 8318F010 */  lb         $t8, -0xff0($t8)
/* 289B0 80027DB0 8FAC0048 */  lw         $t4, 0x48($sp)
/* 289B4 80027DB4 2419000B */  addiu      $t9, $zero, 0xb
/* 289B8 80027DB8 00187080 */  sll        $t6, $t8, 2
/* 289BC 80027DBC 01CF1821 */  addu       $v1, $t6, $t7
/* 289C0 80027DC0 846B0002 */  lh         $t3, 2($v1)
/* 289C4 80027DC4 846D0000 */  lh         $t5, ($v1)
/* 289C8 80027DC8 24060067 */  addiu      $a2, $zero, 0x67
/* 289CC 80027DCC 03AB2021 */  addu       $a0, $sp, $t3
/* 289D0 80027DD0 90840038 */  lbu        $a0, 0x38($a0)
/* 289D4 80027DD4 AFB90010 */  sw         $t9, 0x10($sp)
/* 289D8 80027DD8 24070008 */  addiu      $a3, $zero, 8
/* 289DC 80027DDC 0C00A6D6 */  jal        drawMenuItem
/* 289E0 80027DE0 01AC2821 */   addu      $a1, $t5, $t4
/* 289E4 80027DE4 3C188006 */  lui        $t8, %hi(MessageSliderPos)
/* 289E8 80027DE8 8318FA00 */  lb         $t8, %lo(MessageSliderPos)($t8)
/* 289EC 80027DEC 3C0F8006 */  lui        $t7, %hi(D_8005F8F4)
/* 289F0 80027DF0 25EFF8F4 */  addiu      $t7, $t7, %lo(D_8005F8F4)
/* 289F4 80027DF4 00187080 */  sll        $t6, $t8, 2
/* 289F8 80027DF8 01CF1821 */  addu       $v1, $t6, $t7
/* 289FC 80027DFC 846B0002 */  lh         $t3, 2($v1)
/* 28A00 80027E00 846D0000 */  lh         $t5, ($v1)
/* 28A04 80027E04 8FAC0048 */  lw         $t4, 0x48($sp)
/* 28A08 80027E08 03AB2021 */  addu       $a0, $sp, $t3
/* 28A0C 80027E0C 90840038 */  lbu        $a0, 0x38($a0)
/* 28A10 80027E10 2419000B */  addiu      $t9, $zero, 0xb
/* 28A14 80027E14 AFB90010 */  sw         $t9, 0x10($sp)
/* 28A18 80027E18 24060039 */  addiu      $a2, $zero, 0x39
/* 28A1C 80027E1C 24070008 */  addiu      $a3, $zero, 8
/* 28A20 80027E20 0C00A6D6 */  jal        drawMenuItem
/* 28A24 80027E24 01AC2821 */   addu      $a1, $t5, $t4
/* 28A28 80027E28 3C088009 */  lui        $t0, %hi(pause_and_save_screen_state_flags)
/* 28A2C 80027E2C 2508FD0C */  addiu      $t0, $t0, %lo(pause_and_save_screen_state_flags)
/* 28A30 80027E30 95070000 */  lhu        $a3, ($t0)
.L80027E34:
/* 28A34 80027E34 30F82000 */  andi       $t8, $a3, 0x2000
.L80027E38:
/* 28A38 80027E38 13000007 */  beqz       $t8, .L80027E58
/* 28A3C 80027E3C 3C028006 */   lui       $v0, %hi(MessageSliderPos)
/* 28A40 80027E40 2442FA00 */  addiu      $v0, $v0, %lo(MessageSliderPos)
/* 28A44 80027E44 804E0000 */  lb         $t6, ($v0)
/* 28A48 80027E48 240F0004 */  addiu      $t7, $zero, 4
/* 28A4C 80027E4C 01EE5823 */  subu       $t3, $t7, $t6
/* 28A50 80027E50 100001F0 */  b          .L80028614
/* 28A54 80027E54 A04B0000 */   sb        $t3, ($v0)
.L80027E58:
/* 28A58 80027E58 30ED0800 */  andi       $t5, $a3, 0x800
/* 28A5C 80027E5C 15A00038 */  bnez       $t5, .L80027F40
/* 28A60 80027E60 3C028009 */   lui       $v0, %hi(JoystickX)
/* 28A64 80027E64 80422871 */  lb         $v0, %lo(JoystickX)($v0)
/* 28A68 80027E68 3C038009 */  lui        $v1, %hi(pressedButton)
/* 28A6C 80027E6C 24190140 */  addiu      $t9, $zero, 0x140
/* 28A70 80027E70 28410015 */  slti       $at, $v0, 0x15
/* 28A74 80027E74 10200006 */  beqz       $at, .L80027E90
/* 28A78 80027E78 34F82000 */   ori       $t8, $a3, 0x2000
/* 28A7C 80027E7C 94632876 */  lhu        $v1, %lo(pressedButton)($v1)
/* 28A80 80027E80 2841FFEC */  slti       $at, $v0, -0x14
/* 28A84 80027E84 306C0010 */  andi       $t4, $v1, 0x10
/* 28A88 80027E88 1180000F */  beqz       $t4, .L80027EC8
/* 28A8C 80027E8C 00000000 */   nop
.L80027E90:
/* 28A90 80027E90 3C018009 */  lui        $at, %hi(UNK_MenuScrollCounter)
/* 28A94 80027E94 AC39FD04 */  sw         $t9, %lo(UNK_MenuScrollCounter)($at)
/* 28A98 80027E98 3C018009 */  lui        $at, %hi(D_8008FD08)
/* 28A9C 80027E9C AC20FD08 */  sw         $zero, %lo(D_8008FD08)($at)
/* 28AA0 80027EA0 A5180000 */  sh         $t8, ($t0)
/* 28AA4 80027EA4 00002025 */  or         $a0, $zero, $zero
/* 28AA8 80027EA8 00002825 */  or         $a1, $zero, $zero
/* 28AAC 80027EAC 0C009A35 */  jal        func_800268D4
/* 28AB0 80027EB0 240600FF */   addiu     $a2, $zero, 0xff
/* 28AB4 80027EB4 3C088009 */  lui        $t0, %hi(pause_and_save_screen_state_flags)
/* 28AB8 80027EB8 3C038009 */  lui        $v1, %hi(pressedButton)
/* 28ABC 80027EBC 94632876 */  lhu        $v1, %lo(pressedButton)($v1)
/* 28AC0 80027EC0 10000013 */  b          .L80027F10
/* 28AC4 80027EC4 2508FD0C */   addiu     $t0, $t0, %lo(pause_and_save_screen_state_flags)
.L80027EC8:
/* 28AC8 80027EC8 14200002 */  bnez       $at, .L80027ED4
/* 28ACC 80027ECC 306F2000 */   andi      $t7, $v1, 0x2000
/* 28AD0 80027ED0 11E0000F */  beqz       $t7, .L80027F10
.L80027ED4:
/* 28AD4 80027ED4 3C018009 */   lui       $at, %hi(UNK_MenuScrollCounter)
/* 28AD8 80027ED8 AC20FD04 */  sw         $zero, %lo(UNK_MenuScrollCounter)($at)
/* 28ADC 80027EDC 3C018009 */  lui        $at, %hi(D_8008FD08)
/* 28AE0 80027EE0 240EFEC0 */  addiu      $t6, $zero, -0x140
/* 28AE4 80027EE4 AC2EFD08 */  sw         $t6, %lo(D_8008FD08)($at)
/* 28AE8 80027EE8 34EB3000 */  ori        $t3, $a3, 0x3000
/* 28AEC 80027EEC A50B0000 */  sh         $t3, ($t0)
/* 28AF0 80027EF0 00002025 */  or         $a0, $zero, $zero
/* 28AF4 80027EF4 00002825 */  or         $a1, $zero, $zero
/* 28AF8 80027EF8 0C009A35 */  jal        func_800268D4
/* 28AFC 80027EFC 240600FF */   addiu     $a2, $zero, 0xff
/* 28B00 80027F00 3C088009 */  lui        $t0, %hi(pause_and_save_screen_state_flags)
/* 28B04 80027F04 3C038009 */  lui        $v1, %hi(pressedButton)
/* 28B08 80027F08 94632876 */  lhu        $v1, %lo(pressedButton)($v1)
/* 28B0C 80027F0C 2508FD0C */  addiu      $t0, $t0, %lo(pause_and_save_screen_state_flags)
.L80027F10:
/* 28B10 80027F10 306D8000 */  andi       $t5, $v1, 0x8000
/* 28B14 80027F14 11A001B9 */  beqz       $t5, .L800285FC
/* 28B18 80027F18 00002025 */   or        $a0, $zero, $zero
/* 28B1C 80027F1C 950C0000 */  lhu        $t4, ($t0)
/* 28B20 80027F20 24050001 */  addiu      $a1, $zero, 1
/* 28B24 80027F24 240600FF */  addiu      $a2, $zero, 0xff
/* 28B28 80027F28 35980800 */  ori        $t8, $t4, 0x800
/* 28B2C 80027F2C A5180000 */  sh         $t8, ($t0)
/* 28B30 80027F30 0C009A35 */  jal        func_800268D4
/* 28B34 80027F34 A5180000 */   sh        $t8, ($t0)
/* 28B38 80027F38 100001B0 */  b          .L800285FC
/* 28B3C 80027F3C 00000000 */   nop
.L80027F40:
/* 28B40 80027F40 3C0F8009 */  lui        $t7, %hi(pressedButton)
/* 28B44 80027F44 95EF2876 */  lhu        $t7, %lo(pressedButton)($t7)
/* 28B48 80027F48 30E40200 */  andi       $a0, $a3, 0x200
/* 28B4C 80027F4C 31EE8000 */  andi       $t6, $t7, 0x8000
/* 28B50 80027F50 11C00011 */  beqz       $t6, .L80027F98
/* 28B54 80027F54 00000000 */   nop
/* 28B58 80027F58 1480000F */  bnez       $a0, .L80027F98
/* 28B5C 80027F5C 30EDFEFF */   andi      $t5, $a3, 0xfeff
/* 28B60 80027F60 A50D0000 */  sh         $t5, ($t0)
/* 28B64 80027F64 31ACF7FF */  andi       $t4, $t5, 0xf7ff
/* 28B68 80027F68 A50C0000 */  sh         $t4, ($t0)
/* 28B6C 80027F6C 00002025 */  or         $a0, $zero, $zero
/* 28B70 80027F70 24050002 */  addiu      $a1, $zero, 2
/* 28B74 80027F74 0C009A35 */  jal        func_800268D4
/* 28B78 80027F78 240600FF */   addiu     $a2, $zero, 0xff
/* 28B7C 80027F7C 3C028006 */  lui        $v0, %hi(MessageSliderPos)
/* 28B80 80027F80 2442FA00 */  addiu      $v0, $v0, %lo(MessageSliderPos)
/* 28B84 80027F84 80590000 */  lb         $t9, ($v0)
/* 28B88 80027F88 24180004 */  addiu      $t8, $zero, 4
/* 28B8C 80027F8C 03197823 */  subu       $t7, $t8, $t9
/* 28B90 80027F90 100001A0 */  b          .L80028614
/* 28B94 80027F94 A04F0000 */   sb        $t7, ($v0)
.L80027F98:
/* 28B98 80027F98 3C098009 */  lui        $t1, %hi(pauseMenuFrameCtr)
/* 28B9C 80027F9C 8D29FD10 */  lw         $t1, %lo(pauseMenuFrameCtr)($t1)
/* 28BA0 80027FA0 3C018006 */  lui        $at, 0x8006
/* 28BA4 80027FA4 30EE0100 */  andi       $t6, $a3, 0x100
/* 28BA8 80027FA8 00095843 */  sra        $t3, $t1, 1
/* 28BAC 80027FAC 316D000F */  andi       $t5, $t3, 0xf
/* 28BB0 80027FB0 002D0821 */  addu       $at, $at, $t5
/* 28BB4 80027FB4 AFAE0040 */  sw         $t6, 0x40($sp)
/* 28BB8 80027FB8 10800064 */  beqz       $a0, .L8002814C
/* 28BBC 80027FBC 8029F0C0 */   lb        $t1, -0xf40($at)
/* 28BC0 80027FC0 11C00006 */  beqz       $t6, .L80027FDC
/* 28BC4 80027FC4 3C0A8009 */   lui       $t2, 0x8009
/* 28BC8 80027FC8 24010100 */  addiu      $at, $zero, 0x100
/* 28BCC 80027FCC 11C10031 */  beq        $t6, $at, .L80028094
/* 28BD0 80027FD0 3C0A8009 */   lui       $t2, 0x8009
/* 28BD4 80027FD4 1000005D */  b          .L8002814C
/* 28BD8 80027FD8 00000000 */   nop
.L80027FDC:
/* 28BDC 80027FDC 3C188006 */  lui        $t8, %hi(MessageSliderPos)
/* 28BE0 80027FE0 8318FA00 */  lb         $t8, %lo(MessageSliderPos)($t8)
/* 28BE4 80027FE4 3C0F8006 */  lui        $t7, %hi(D_8005F8F4)
/* 28BE8 80027FE8 25EFF8F4 */  addiu      $t7, $t7, %lo(D_8005F8F4)
/* 28BEC 80027FEC 0018C880 */  sll        $t9, $t8, 2
/* 28BF0 80027FF0 032F1821 */  addu       $v1, $t9, $t7
/* 28BF4 80027FF4 8D4AFD14 */  lw         $t2, -0x2ec($t2)
/* 28BF8 80027FF8 84620000 */  lh         $v0, ($v1)
/* 28BFC 80027FFC 0142082A */  slt        $at, $t2, $v0
/* 28C00 80028000 14200052 */  bnez       $at, .L8002814C
/* 28C04 80028004 004A082A */   slt       $at, $v0, $t2
/* 28C08 80028008 14200050 */  bnez       $at, .L8002814C
/* 28C0C 8002800C 30EBFDFF */   andi      $t3, $a3, 0xfdff
/* 28C10 80028010 846C0002 */  lh         $t4, 2($v1)
/* 28C14 80028014 A50B0000 */  sh         $t3, ($t0)
/* 28C18 80028018 316DFBFF */  andi       $t5, $t3, 0xfbff
/* 28C1C 8002801C A50D0000 */  sh         $t5, ($t0)
/* 28C20 80028020 3C028009 */  lui        $v0, %hi(JoystickX)
/* 28C24 80028024 80422871 */  lb         $v0, %lo(JoystickX)($v0)
/* 28C28 80028028 03ACC021 */  addu       $t8, $sp, $t4
/* 28C2C 8002802C 93180038 */  lbu        $t8, 0x38($t8)
/* 28C30 80028030 28410014 */  slti       $at, $v0, 0x14
/* 28C34 80028034 10200011 */  beqz       $at, .L8002807C
/* 28C38 80028038 AFB80040 */   sw        $t8, 0x40($sp)
/* 28C3C 8002803C 2841FFED */  slti       $at, $v0, -0x13
/* 28C40 80028040 1420000E */  bnez       $at, .L8002807C
/* 28C44 80028044 03002025 */   or        $a0, $t8, $zero
/* 28C48 80028048 8FB90048 */  lw         $t9, 0x48($sp)
/* 28C4C 8002804C 240F000B */  addiu      $t7, $zero, 0xb
/* 28C50 80028050 3C018009 */  lui        $at, %hi(D_8008FD14)
/* 28C54 80028054 AC2AFD14 */  sw         $t2, %lo(D_8008FD14)($at)
/* 28C58 80028058 AFAF0010 */  sw         $t7, 0x10($sp)
/* 28C5C 8002805C 24060039 */  addiu      $a2, $zero, 0x39
/* 28C60 80028060 24070008 */  addiu      $a3, $zero, 8
/* 28C64 80028064 AFA90044 */  sw         $t1, 0x44($sp)
/* 28C68 80028068 0C00A6D6 */  jal        drawMenuItem
/* 28C6C 8002806C 01592821 */   addu      $a1, $t2, $t9
/* 28C70 80028070 3C088009 */  lui        $t0, %hi(pause_and_save_screen_state_flags)
/* 28C74 80028074 2508FD0C */  addiu      $t0, $t0, %lo(pause_and_save_screen_state_flags)
/* 28C78 80028078 8FA90044 */  lw         $t1, 0x44($sp)
.L8002807C:
/* 28C7C 8002807C 95070000 */  lhu        $a3, ($t0)
/* 28C80 80028080 240E003A */  addiu      $t6, $zero, 0x3a
/* 28C84 80028084 AFAE003C */  sw         $t6, 0x3c($sp)
/* 28C88 80028088 AFA00040 */  sw         $zero, 0x40($sp)
/* 28C8C 8002808C 1000002F */  b          .L8002814C
/* 28C90 80028090 30E40200 */   andi      $a0, $a3, 0x200
.L80028094:
/* 28C94 80028094 3C0B8006 */  lui        $t3, %hi(BGMSliderPos)
/* 28C98 80028098 816BF010 */  lb         $t3, %lo(BGMSliderPos)($t3)
/* 28C9C 8002809C 3C0C8006 */  lui        $t4, %hi(D_8005F914)
/* 28CA0 800280A0 258CF914 */  addiu      $t4, $t4, %lo(D_8005F914)
/* 28CA4 800280A4 000B6880 */  sll        $t5, $t3, 2
/* 28CA8 800280A8 01AC1821 */  addu       $v1, $t5, $t4
/* 28CAC 800280AC 8D4AFD14 */  lw         $t2, -0x2ec($t2)
/* 28CB0 800280B0 84620000 */  lh         $v0, ($v1)
/* 28CB4 800280B4 0142082A */  slt        $at, $t2, $v0
/* 28CB8 800280B8 14200024 */  bnez       $at, .L8002814C
/* 28CBC 800280BC 004A082A */   slt       $at, $v0, $t2
/* 28CC0 800280C0 14200022 */  bnez       $at, .L8002814C
/* 28CC4 800280C4 30F9FDFF */   andi      $t9, $a3, 0xfdff
/* 28CC8 800280C8 846E0002 */  lh         $t6, 2($v1)
/* 28CCC 800280CC A5190000 */  sh         $t9, ($t0)
/* 28CD0 800280D0 332FFBFF */  andi       $t7, $t9, 0xfbff
/* 28CD4 800280D4 A50F0000 */  sh         $t7, ($t0)
/* 28CD8 800280D8 3C028009 */  lui        $v0, %hi(JoystickX)
/* 28CDC 800280DC 80422871 */  lb         $v0, %lo(JoystickX)($v0)
/* 28CE0 800280E0 03AE5821 */  addu       $t3, $sp, $t6
/* 28CE4 800280E4 916B0038 */  lbu        $t3, 0x38($t3)
/* 28CE8 800280E8 28410014 */  slti       $at, $v0, 0x14
/* 28CEC 800280EC 10200011 */  beqz       $at, .L80028134
/* 28CF0 800280F0 AFAB0040 */   sw        $t3, 0x40($sp)
/* 28CF4 800280F4 2841FFED */  slti       $at, $v0, -0x13
/* 28CF8 800280F8 1420000E */  bnez       $at, .L80028134
/* 28CFC 800280FC 01602025 */   or        $a0, $t3, $zero
/* 28D00 80028100 8FAD0048 */  lw         $t5, 0x48($sp)
/* 28D04 80028104 240C000B */  addiu      $t4, $zero, 0xb
/* 28D08 80028108 3C018009 */  lui        $at, %hi(D_8008FD14)
/* 28D0C 8002810C AC2AFD14 */  sw         $t2, %lo(D_8008FD14)($at)
/* 28D10 80028110 AFAC0010 */  sw         $t4, 0x10($sp)
/* 28D14 80028114 24060067 */  addiu      $a2, $zero, 0x67
/* 28D18 80028118 24070008 */  addiu      $a3, $zero, 8
/* 28D1C 8002811C AFA90044 */  sw         $t1, 0x44($sp)
/* 28D20 80028120 0C00A6D6 */  jal        drawMenuItem
/* 28D24 80028124 014D2821 */   addu      $a1, $t2, $t5
/* 28D28 80028128 3C088009 */  lui        $t0, %hi(pause_and_save_screen_state_flags)
/* 28D2C 8002812C 2508FD0C */  addiu      $t0, $t0, %lo(pause_and_save_screen_state_flags)
/* 28D30 80028130 8FA90044 */  lw         $t1, 0x44($sp)
.L80028134:
/* 28D34 80028134 95070000 */  lhu        $a3, ($t0)
/* 28D38 80028138 24180065 */  addiu      $t8, $zero, 0x65
/* 28D3C 8002813C 24190100 */  addiu      $t9, $zero, 0x100
/* 28D40 80028140 AFB8003C */  sw         $t8, 0x3c($sp)
/* 28D44 80028144 AFB90040 */  sw         $t9, 0x40($sp)
/* 28D48 80028148 30E40200 */  andi       $a0, $a3, 0x200
.L8002814C:
/* 28D4C 8002814C 3C0A8009 */  lui        $t2, %hi(D_8008FD14)
/* 28D50 80028150 148000B2 */  bnez       $a0, .L8002841C
/* 28D54 80028154 8D4AFD14 */   lw        $t2, %lo(D_8008FD14)($t2)
/* 28D58 80028158 8FAF0040 */  lw         $t7, 0x40($sp)
/* 28D5C 8002815C 24010100 */  addiu      $at, $zero, 0x100
/* 28D60 80028160 3C028009 */  lui        $v0, 0x8009
/* 28D64 80028164 11E00005 */  beqz       $t7, .L8002817C
/* 28D68 80028168 00000000 */   nop
/* 28D6C 8002816C 11E10056 */  beq        $t7, $at, .L800282C8
/* 28D70 80028170 3C028009 */   lui       $v0, %hi(JoystickY)
/* 28D74 80028174 100000A9 */  b          .L8002841C
/* 28D78 80028178 00000000 */   nop
.L8002817C:
/* 28D7C 8002817C 80422872 */  lb         $v0, %lo(JoystickY)($v0)
/* 28D80 80028180 240E003A */  addiu      $t6, $zero, 0x3a
/* 28D84 80028184 AFAE003C */  sw         $t6, 0x3c($sp)
/* 28D88 80028188 2841FFE2 */  slti       $at, $v0, -0x1e
/* 28D8C 8002818C 14200004 */  bnez       $at, .L800281A0
/* 28D90 80028190 30EB0400 */   andi      $t3, $a3, 0x400
/* 28D94 80028194 2841001F */  slti       $at, $v0, 0x1f
/* 28D98 80028198 14200015 */  bnez       $at, .L800281F0
/* 28D9C 8002819C 3C028009 */   lui       $v0, 0x8009
.L800281A0:
/* 28DA0 800281A0 1560009E */  bnez       $t3, .L8002841C
/* 28DA4 800281A4 30ECFEFF */   andi      $t4, $a3, 0xfeff
/* 28DA8 800281A8 35990100 */  ori        $t9, $t4, 0x100
/* 28DAC 800281AC A50C0000 */  sh         $t4, ($t0)
/* 28DB0 800281B0 A5190000 */  sh         $t9, ($t0)
/* 28DB4 800281B4 372F0400 */  ori        $t7, $t9, 0x400
/* 28DB8 800281B8 A50F0000 */  sh         $t7, ($t0)
/* 28DBC 800281BC 00002025 */  or         $a0, $zero, $zero
/* 28DC0 800281C0 00002825 */  or         $a1, $zero, $zero
/* 28DC4 800281C4 240600FF */  addiu      $a2, $zero, 0xff
/* 28DC8 800281C8 0C009A35 */  jal        func_800268D4
/* 28DCC 800281CC AFA90044 */   sw        $t1, 0x44($sp)
/* 28DD0 800281D0 3C088009 */  lui        $t0, %hi(pause_and_save_screen_state_flags)
/* 28DD4 800281D4 2508FD0C */  addiu      $t0, $t0, %lo(pause_and_save_screen_state_flags)
/* 28DD8 800281D8 95070000 */  lhu        $a3, ($t0)
/* 28DDC 800281DC 3C0A8009 */  lui        $t2, %hi(D_8008FD14)
/* 28DE0 800281E0 8D4AFD14 */  lw         $t2, %lo(D_8008FD14)($t2)
/* 28DE4 800281E4 8FA90044 */  lw         $t1, 0x44($sp)
/* 28DE8 800281E8 1000008C */  b          .L8002841C
/* 28DEC 800281EC 30E40200 */   andi      $a0, $a3, 0x200
.L800281F0:
/* 28DF0 800281F0 80422871 */  lb         $v0, 0x2871($v0)
/* 28DF4 800281F4 30EE0400 */  andi       $t6, $a3, 0x400
/* 28DF8 800281F8 2841FFEC */  slti       $at, $v0, -0x14
/* 28DFC 800281FC 50200016 */  beql       $at, $zero, .L80028258
/* 28E00 80028200 28410015 */   slti      $at, $v0, 0x15
/* 28E04 80028204 15C00085 */  bnez       $t6, .L8002841C
/* 28E08 80028208 3C028006 */   lui       $v0, %hi(MessageSliderPos)
/* 28E0C 8002820C 8042FA00 */  lb         $v0, %lo(MessageSliderPos)($v0)
/* 28E10 80028210 3C018006 */  lui        $at, %hi(MessageSliderPos)
/* 28E14 80028214 3C0C8006 */  lui        $t4, %hi(MessageSliderPos)
/* 28E18 80028218 244DFFFF */  addiu      $t5, $v0, -1
/* 28E1C 8002821C A02DFA00 */  sb         $t5, %lo(MessageSliderPos)($at)
/* 28E20 80028220 818CFA00 */  lb         $t4, %lo(MessageSliderPos)($t4)
/* 28E24 80028224 3C0A8006 */  lui        $t2, %hi(D_8005F8F4)
/* 28E28 80028228 00025880 */  sll        $t3, $v0, 2
/* 28E2C 8002822C 014B5021 */  addu       $t2, $t2, $t3
/* 28E30 80028230 05810003 */  bgez       $t4, .L80028240
/* 28E34 80028234 854AF8F4 */   lh        $t2, %lo(D_8005F8F4)($t2)
/* 28E38 80028238 3C018006 */  lui        $at, %hi(MessageSliderPos)
/* 28E3C 8002823C A020FA00 */  sb         $zero, %lo(MessageSliderPos)($at)
.L80028240:
/* 28E40 80028240 34F80600 */  ori        $t8, $a3, 0x600
/* 28E44 80028244 3307FFFF */  andi       $a3, $t8, 0xffff
/* 28E48 80028248 30E40200 */  andi       $a0, $a3, 0x200
/* 28E4C 8002824C 10000073 */  b          .L8002841C
/* 28E50 80028250 A5180000 */   sh        $t8, ($t0)
/* 28E54 80028254 28410015 */  slti       $at, $v0, 0x15
.L80028258:
/* 28E58 80028258 14200016 */  bnez       $at, .L800282B4
/* 28E5C 8002825C 30F90400 */   andi      $t9, $a3, 0x400
/* 28E60 80028260 17200012 */  bnez       $t9, .L800282AC
/* 28E64 80028264 3C038006 */   lui       $v1, %hi(MessageSliderPos)
/* 28E68 80028268 2463FA00 */  addiu      $v1, $v1, %lo(MessageSliderPos)
/* 28E6C 8002826C 80620000 */  lb         $v0, ($v1)
/* 28E70 80028270 3C0A8006 */  lui        $t2, %hi(D_8005F8F4)
/* 28E74 80028274 34EC0600 */  ori        $t4, $a3, 0x600
/* 28E78 80028278 00027880 */  sll        $t7, $v0, 2
/* 28E7C 8002827C 014F5021 */  addu       $t2, $t2, $t7
/* 28E80 80028280 854AF8F4 */  lh         $t2, %lo(D_8005F8F4)($t2)
/* 28E84 80028284 244E0001 */  addiu      $t6, $v0, 1
/* 28E88 80028288 A06E0000 */  sb         $t6, ($v1)
/* 28E8C 8002828C 806B0000 */  lb         $t3, ($v1)
/* 28E90 80028290 3187FFFF */  andi       $a3, $t4, 0xffff
/* 28E94 80028294 240D0004 */  addiu      $t5, $zero, 4
/* 28E98 80028298 29610005 */  slti       $at, $t3, 5
/* 28E9C 8002829C 14200002 */  bnez       $at, .L800282A8
/* 28EA0 800282A0 30E40200 */   andi      $a0, $a3, 0x200
/* 28EA4 800282A4 A06D0000 */  sb         $t5, ($v1)
.L800282A8:
/* 28EA8 800282A8 A50C0000 */  sh         $t4, ($t0)
.L800282AC:
/* 28EAC 800282AC 1000005B */  b          .L8002841C
/* 28EB0 800282B0 00000000 */   nop
.L800282B4:
/* 28EB4 800282B4 30F8FBFF */  andi       $t8, $a3, 0xfbff
/* 28EB8 800282B8 3307FFFF */  andi       $a3, $t8, 0xffff
/* 28EBC 800282BC 30E40200 */  andi       $a0, $a3, 0x200
/* 28EC0 800282C0 10000056 */  b          .L8002841C
/* 28EC4 800282C4 A5180000 */   sh        $t8, ($t0)
.L800282C8:
/* 28EC8 800282C8 80422872 */  lb         $v0, 0x2872($v0)
/* 28ECC 800282CC 24190065 */  addiu      $t9, $zero, 0x65
/* 28ED0 800282D0 AFB9003C */  sw         $t9, 0x3c($sp)
/* 28ED4 800282D4 2841FFE2 */  slti       $at, $v0, -0x1e
/* 28ED8 800282D8 14200004 */  bnez       $at, .L800282EC
/* 28EDC 800282DC 30EF0400 */   andi      $t7, $a3, 0x400
/* 28EE0 800282E0 2841001F */  slti       $at, $v0, 0x1f
/* 28EE4 800282E4 14200014 */  bnez       $at, .L80028338
/* 28EE8 800282E8 3C028009 */   lui       $v0, 0x8009
.L800282EC:
/* 28EEC 800282EC 15E0004B */  bnez       $t7, .L8002841C
/* 28EF0 800282F0 30EDFEFF */   andi      $t5, $a3, 0xfeff
/* 28EF4 800282F4 A50D0000 */  sh         $t5, ($t0)
/* 28EF8 800282F8 A50D0000 */  sh         $t5, ($t0)
/* 28EFC 800282FC 35AC0400 */  ori        $t4, $t5, 0x400
/* 28F00 80028300 A50C0000 */  sh         $t4, ($t0)
/* 28F04 80028304 00002025 */  or         $a0, $zero, $zero
/* 28F08 80028308 00002825 */  or         $a1, $zero, $zero
/* 28F0C 8002830C 240600FF */  addiu      $a2, $zero, 0xff
/* 28F10 80028310 0C009A35 */  jal        func_800268D4
/* 28F14 80028314 AFA90044 */   sw        $t1, 0x44($sp)
/* 28F18 80028318 3C088009 */  lui        $t0, %hi(pause_and_save_screen_state_flags)
/* 28F1C 8002831C 2508FD0C */  addiu      $t0, $t0, %lo(pause_and_save_screen_state_flags)
/* 28F20 80028320 95070000 */  lhu        $a3, ($t0)
/* 28F24 80028324 3C0A8009 */  lui        $t2, %hi(D_8008FD14)
/* 28F28 80028328 8D4AFD14 */  lw         $t2, %lo(D_8008FD14)($t2)
/* 28F2C 8002832C 8FA90044 */  lw         $t1, 0x44($sp)
/* 28F30 80028330 1000003A */  b          .L8002841C
/* 28F34 80028334 30E40200 */   andi      $a0, $a3, 0x200
.L80028338:
/* 28F38 80028338 80422871 */  lb         $v0, 0x2871($v0)
/* 28F3C 8002833C 30F80400 */  andi       $t8, $a3, 0x400
/* 28F40 80028340 2841FFEC */  slti       $at, $v0, -0x14
/* 28F44 80028344 50200018 */  beql       $at, $zero, .L800283A8
/* 28F48 80028348 28410015 */   slti      $at, $v0, 0x15
/* 28F4C 8002834C 17000033 */  bnez       $t8, .L8002841C
/* 28F50 80028350 3C028006 */   lui       $v0, %hi(BGMSliderPos)
/* 28F54 80028354 8042F010 */  lb         $v0, %lo(BGMSliderPos)($v0)
/* 28F58 80028358 3C018006 */  lui        $at, %hi(BGMSliderPos)
/* 28F5C 8002835C 3C0E8006 */  lui        $t6, %hi(BGMSliderPos)
/* 28F60 80028360 244FFFFF */  addiu      $t7, $v0, -1
/* 28F64 80028364 A02FF010 */  sb         $t7, %lo(BGMSliderPos)($at)
/* 28F68 80028368 81CEF010 */  lb         $t6, %lo(BGMSliderPos)($t6)
/* 28F6C 8002836C 3C0A8006 */  lui        $t2, %hi(D_8005F914)
/* 28F70 80028370 0002C880 */  sll        $t9, $v0, 2
/* 28F74 80028374 01595021 */  addu       $t2, $t2, $t9
/* 28F78 80028378 05C10003 */  bgez       $t6, .L80028388
/* 28F7C 8002837C 854AF914 */   lh        $t2, %lo(D_8005F914)($t2)
/* 28F80 80028380 3C018006 */  lui        $at, %hi(BGMSliderPos)
/* 28F84 80028384 A020F010 */  sb         $zero, %lo(BGMSliderPos)($at)
.L80028388:
/* 28F88 80028388 34ED0400 */  ori        $t5, $a3, 0x400
/* 28F8C 8002838C 35AC0200 */  ori        $t4, $t5, 0x200
/* 28F90 80028390 A50D0000 */  sh         $t5, ($t0)
/* 28F94 80028394 3187FFFF */  andi       $a3, $t4, 0xffff
/* 28F98 80028398 30E40200 */  andi       $a0, $a3, 0x200
/* 28F9C 8002839C 1000001F */  b          .L8002841C
/* 28FA0 800283A0 A50C0000 */   sh        $t4, ($t0)
/* 28FA4 800283A4 28410015 */  slti       $at, $v0, 0x15
.L800283A8:
/* 28FA8 800283A8 14200018 */  bnez       $at, .L8002840C
/* 28FAC 800283AC 30F80400 */   andi      $t8, $a3, 0x400
/* 28FB0 800283B0 17000014 */  bnez       $t8, .L80028404
/* 28FB4 800283B4 3C038006 */   lui       $v1, %hi(BGMSliderPos)
/* 28FB8 800283B8 2463F010 */  addiu      $v1, $v1, %lo(BGMSliderPos)
/* 28FBC 800283BC 80620000 */  lb         $v0, ($v1)
/* 28FC0 800283C0 3C0A8006 */  lui        $t2, %hi(D_8005F914)
/* 28FC4 800283C4 34EC0400 */  ori        $t4, $a3, 0x400
/* 28FC8 800283C8 0002C880 */  sll        $t9, $v0, 2
/* 28FCC 800283CC 01595021 */  addu       $t2, $t2, $t9
/* 28FD0 800283D0 854AF914 */  lh         $t2, %lo(D_8005F914)($t2)
/* 28FD4 800283D4 244F0001 */  addiu      $t7, $v0, 1
/* 28FD8 800283D8 A06F0000 */  sb         $t7, ($v1)
/* 28FDC 800283DC 806E0000 */  lb         $t6, ($v1)
/* 28FE0 800283E0 35980200 */  ori        $t8, $t4, 0x200
/* 28FE4 800283E4 3307FFFF */  andi       $a3, $t8, 0xffff
/* 28FE8 800283E8 29C10005 */  slti       $at, $t6, 5
/* 28FEC 800283EC 14200003 */  bnez       $at, .L800283FC
/* 28FF0 800283F0 30E40200 */   andi      $a0, $a3, 0x200
/* 28FF4 800283F4 240B0004 */  addiu      $t3, $zero, 4
/* 28FF8 800283F8 A06B0000 */  sb         $t3, ($v1)
.L800283FC:
/* 28FFC 800283FC A50C0000 */  sh         $t4, ($t0)
/* 29000 80028400 A5180000 */  sh         $t8, ($t0)
.L80028404:
/* 29004 80028404 10000005 */  b          .L8002841C
/* 29008 80028408 00000000 */   nop
.L8002840C:
/* 2900C 8002840C 30F9FBFF */  andi       $t9, $a3, 0xfbff
/* 29010 80028410 3327FFFF */  andi       $a3, $t9, 0xffff
/* 29014 80028414 30E40200 */  andi       $a0, $a3, 0x200
/* 29018 80028418 A5190000 */  sh         $t9, ($t0)
.L8002841C:
/* 2901C 8002841C 3C018009 */  lui        $at, %hi(D_8008FD14)
/* 29020 80028420 1080006D */  beqz       $a0, .L800285D8
/* 29024 80028424 AC2AFD14 */   sw        $t2, %lo(D_8008FD14)($at)
/* 29028 80028428 8FAF0040 */  lw         $t7, 0x40($sp)
/* 2902C 8002842C 3C0E8006 */  lui        $t6, 0x8006
/* 29030 80028430 3C0D8006 */  lui        $t5, 0x8006
/* 29034 80028434 11E00007 */  beqz       $t7, .L80028454
/* 29038 80028438 24060039 */   addiu     $a2, $zero, 0x39
/* 2903C 8002843C 24010100 */  addiu      $at, $zero, 0x100
/* 29040 80028440 11E10034 */  beq        $t7, $at, .L80028514
/* 29044 80028444 3C0B8006 */   lui       $t3, 0x8006
/* 29048 80028448 3C018009 */  lui        $at, %hi(D_8008FD14)
/* 2904C 8002844C 10000062 */  b          .L800285D8
/* 29050 80028450 AC2AFD14 */   sw        $t2, %lo(D_8008FD14)($at)
.L80028454:
/* 29054 80028454 81CEFA00 */  lb         $t6, -0x600($t6)
/* 29058 80028458 25ADF8F4 */  addiu      $t5, $t5, -0x70c
/* 2905C 8002845C 8FAC0048 */  lw         $t4, 0x48($sp)
/* 29060 80028460 000E5880 */  sll        $t3, $t6, 2
/* 29064 80028464 016D1821 */  addu       $v1, $t3, $t5
/* 29068 80028468 84620000 */  lh         $v0, ($v1)
/* 2906C 8002846C 2418003A */  addiu      $t8, $zero, 0x3a
/* 29070 80028470 AFB8003C */  sw         $t8, 0x3c($sp)
/* 29074 80028474 0142082A */  slt        $at, $t2, $v0
/* 29078 80028478 1020000A */  beqz       $at, .L800284A4
/* 2907C 8002847C 014C2821 */   addu      $a1, $t2, $t4
/* 29080 80028480 8479FFFE */  lh         $t9, -2($v1)
/* 29084 80028484 254A0001 */  addiu      $t2, $t2, 1
/* 29088 80028488 3C018009 */  lui        $at, %hi(D_8008FD14)
/* 2908C 8002848C 03B97821 */  addu       $t7, $sp, $t9
/* 29090 80028490 91EF0038 */  lbu        $t7, 0x38($t7)
/* 29094 80028494 24A50001 */  addiu      $a1, $a1, 1
/* 29098 80028498 AC2AFD14 */  sw         $t2, %lo(D_8008FD14)($at)
/* 2909C 8002849C 10000015 */  b          .L800284F4
/* 290A0 800284A0 AFAF0040 */   sw        $t7, 0x40($sp)
.L800284A4:
/* 290A4 800284A4 004A082A */  slt        $at, $v0, $t2
/* 290A8 800284A8 1020000A */  beqz       $at, .L800284D4
/* 290AC 800284AC 00000000 */   nop
/* 290B0 800284B0 846E0006 */  lh         $t6, 6($v1)
/* 290B4 800284B4 254AFFFF */  addiu      $t2, $t2, -1
/* 290B8 800284B8 3C018009 */  lui        $at, %hi(D_8008FD14)
/* 290BC 800284BC 03AE5821 */  addu       $t3, $sp, $t6
/* 290C0 800284C0 916B0038 */  lbu        $t3, 0x38($t3)
/* 290C4 800284C4 24A5FFFF */  addiu      $a1, $a1, -1
/* 290C8 800284C8 AC2AFD14 */  sw         $t2, %lo(D_8008FD14)($at)
/* 290CC 800284CC 10000009 */  b          .L800284F4
/* 290D0 800284D0 AFAB0040 */   sw        $t3, 0x40($sp)
.L800284D4:
/* 290D4 800284D4 3C018009 */  lui        $at, %hi(D_8008FD14)
/* 290D8 800284D8 AC2AFD14 */  sw         $t2, %lo(D_8008FD14)($at)
/* 290DC 800284DC 846C0002 */  lh         $t4, 2($v1)
/* 290E0 800284E0 30EDFBFF */  andi       $t5, $a3, 0xfbff
/* 290E4 800284E4 A50D0000 */  sh         $t5, ($t0)
/* 290E8 800284E8 03ACC021 */  addu       $t8, $sp, $t4
/* 290EC 800284EC 93180038 */  lbu        $t8, 0x38($t8)
/* 290F0 800284F0 AFB80040 */  sw         $t8, 0x40($sp)
.L800284F4:
/* 290F4 800284F4 2419000B */  addiu      $t9, $zero, 0xb
/* 290F8 800284F8 AFB90010 */  sw         $t9, 0x10($sp)
/* 290FC 800284FC 8FA40040 */  lw         $a0, 0x40($sp)
/* 29100 80028500 24070008 */  addiu      $a3, $zero, 8
/* 29104 80028504 0C00A6D6 */  jal        drawMenuItem
/* 29108 80028508 AFA90044 */   sw        $t1, 0x44($sp)
/* 2910C 8002850C 10000032 */  b          .L800285D8
/* 29110 80028510 8FA90044 */   lw        $t1, 0x44($sp)
.L80028514:
/* 29114 80028514 3C0F8006 */  lui        $t7, %hi(BGMSliderPos)
/* 29118 80028518 81EFF010 */  lb         $t7, %lo(BGMSliderPos)($t7)
/* 2911C 8002851C 256BF914 */  addiu      $t3, $t3, -0x6ec
/* 29120 80028520 8FAD0048 */  lw         $t5, 0x48($sp)
/* 29124 80028524 000F7080 */  sll        $t6, $t7, 2
/* 29128 80028528 01CB1821 */  addu       $v1, $t6, $t3
/* 2912C 8002852C 84620000 */  lh         $v0, ($v1)
/* 29130 80028530 240C0065 */  addiu      $t4, $zero, 0x65
/* 29134 80028534 AFAC003C */  sw         $t4, 0x3c($sp)
/* 29138 80028538 0142082A */  slt        $at, $t2, $v0
/* 2913C 8002853C 1020000A */  beqz       $at, .L80028568
/* 29140 80028540 014D2821 */   addu      $a1, $t2, $t5
/* 29144 80028544 8478FFFE */  lh         $t8, -2($v1)
/* 29148 80028548 254A0001 */  addiu      $t2, $t2, 1
/* 2914C 8002854C 3C018009 */  lui        $at, %hi(D_8008FD14)
/* 29150 80028550 03B8C821 */  addu       $t9, $sp, $t8
/* 29154 80028554 93390038 */  lbu        $t9, 0x38($t9)
/* 29158 80028558 24A50001 */  addiu      $a1, $a1, 1
/* 2915C 8002855C AC2AFD14 */  sw         $t2, %lo(D_8008FD14)($at)
/* 29160 80028560 10000015 */  b          .L800285B8
/* 29164 80028564 AFB90040 */   sw        $t9, 0x40($sp)
.L80028568:
/* 29168 80028568 004A082A */  slt        $at, $v0, $t2
/* 2916C 8002856C 1020000A */  beqz       $at, .L80028598
/* 29170 80028570 00000000 */   nop
/* 29174 80028574 846F0006 */  lh         $t7, 6($v1)
/* 29178 80028578 254AFFFF */  addiu      $t2, $t2, -1
/* 2917C 8002857C 3C018009 */  lui        $at, %hi(D_8008FD14)
/* 29180 80028580 03AF7021 */  addu       $t6, $sp, $t7
/* 29184 80028584 91CE0038 */  lbu        $t6, 0x38($t6)
/* 29188 80028588 24A5FFFF */  addiu      $a1, $a1, -1
/* 2918C 8002858C AC2AFD14 */  sw         $t2, %lo(D_8008FD14)($at)
/* 29190 80028590 10000009 */  b          .L800285B8
/* 29194 80028594 AFAE0040 */   sw        $t6, 0x40($sp)
.L80028598:
/* 29198 80028598 3C018009 */  lui        $at, %hi(D_8008FD14)
/* 2919C 8002859C AC2AFD14 */  sw         $t2, %lo(D_8008FD14)($at)
/* 291A0 800285A0 846D0002 */  lh         $t5, 2($v1)
/* 291A4 800285A4 30EBFBFF */  andi       $t3, $a3, 0xfbff
/* 291A8 800285A8 A50B0000 */  sh         $t3, ($t0)
/* 291AC 800285AC 03AD6021 */  addu       $t4, $sp, $t5
/* 291B0 800285B0 918C0038 */  lbu        $t4, 0x38($t4)
/* 291B4 800285B4 AFAC0040 */  sw         $t4, 0x40($sp)
.L800285B8:
/* 291B8 800285B8 2418000B */  addiu      $t8, $zero, 0xb
/* 291BC 800285BC AFB80010 */  sw         $t8, 0x10($sp)
/* 291C0 800285C0 8FA40040 */  lw         $a0, 0x40($sp)
/* 291C4 800285C4 24060067 */  addiu      $a2, $zero, 0x67
/* 291C8 800285C8 24070008 */  addiu      $a3, $zero, 8
/* 291CC 800285CC 0C00A6D6 */  jal        drawMenuItem
/* 291D0 800285D0 AFA90044 */   sw        $t1, 0x44($sp)
/* 291D4 800285D4 8FA90044 */  lw         $t1, 0x44($sp)
.L800285D8:
/* 291D8 800285D8 8FB90048 */  lw         $t9, 0x48($sp)
/* 291DC 800285DC 240F000D */  addiu      $t7, $zero, 0xd
/* 291E0 800285E0 AFAF0010 */  sw         $t7, 0x10($sp)
/* 291E4 800285E4 03292823 */  subu       $a1, $t9, $t1
/* 291E8 800285E8 24A5001E */  addiu      $a1, $a1, 0x1e
/* 291EC 800285EC 24040001 */  addiu      $a0, $zero, 1
/* 291F0 800285F0 8FA6003C */  lw         $a2, 0x3c($sp)
/* 291F4 800285F4 0C00A6D6 */  jal        drawMenuItem
/* 291F8 800285F8 24070010 */   addiu     $a3, $zero, 0x10
.L800285FC:
/* 291FC 800285FC 3C028006 */  lui        $v0, %hi(MessageSliderPos)
/* 29200 80028600 2442FA00 */  addiu      $v0, $v0, %lo(MessageSliderPos)
/* 29204 80028604 804E0000 */  lb         $t6, ($v0)
/* 29208 80028608 240B0004 */  addiu      $t3, $zero, 4
/* 2920C 8002860C 016E6823 */  subu       $t5, $t3, $t6
/* 29210 80028610 A04D0000 */  sb         $t5, ($v0)
.L80028614:
/* 29214 80028614 8FBF001C */  lw         $ra, 0x1c($sp)
/* 29218 80028618 27BD0048 */  addiu      $sp, $sp, 0x48
/* 2921C 8002861C 03E00008 */  jr         $ra
/* 29220 80028620 00000000 */   nop
