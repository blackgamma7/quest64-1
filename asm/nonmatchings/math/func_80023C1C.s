glabel func_80023C1C
/* 2481C 80023C1C 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 24820 80023C20 AFB00020 */  sw         $s0, 0x20($sp)
/* 24824 80023C24 F7B40018 */  sdc1       $f20, 0x18($sp)
/* 24828 80023C28 3C018005 */  lui        $at, %hi(D_8004D74C)
/* 2482C 80023C2C C420D74C */  lwc1       $f0, %lo(D_8004D74C)($at)
/* 24830 80023C30 C7B40060 */  lwc1       $f20, 0x60($sp)
/* 24834 80023C34 00808025 */  or         $s0, $a0, $zero
/* 24838 80023C38 AFBF0024 */  sw         $ra, 0x24($sp)
/* 2483C 80023C3C AFA50054 */  sw         $a1, 0x54($sp)
/* 24840 80023C40 AFA60058 */  sw         $a2, 0x58($sp)
/* 24844 80023C44 AFA7005C */  sw         $a3, 0x5c($sp)
/* 24848 80023C48 4600A502 */  mul.s      $f20, $f20, $f0
/* 2484C 80023C4C C7A40064 */  lwc1       $f4, 0x64($sp)
/* 24850 80023C50 C7A80068 */  lwc1       $f8, 0x68($sp)
/* 24854 80023C54 46002182 */  mul.s      $f6, $f4, $f0
/* 24858 80023C58 00000000 */  nop
/* 2485C 80023C5C 46004282 */  mul.s      $f10, $f8, $f0
/* 24860 80023C60 4600A306 */  mov.s      $f12, $f20
/* 24864 80023C64 E7A60064 */  swc1       $f6, 0x64($sp)
/* 24868 80023C68 0C00D5A0 */  jal        sinf
/* 2486C 80023C6C E7AA0068 */   swc1      $f10, 0x68($sp)
/* 24870 80023C70 E7A0004C */  swc1       $f0, 0x4c($sp)
/* 24874 80023C74 0C00D87C */  jal        cosf
/* 24878 80023C78 4600A306 */   mov.s     $f12, $f20
/* 2487C 80023C7C 46000506 */  mov.s      $f20, $f0
/* 24880 80023C80 0C00D5A0 */  jal        sinf
/* 24884 80023C84 C7AC0064 */   lwc1      $f12, 0x64($sp)
/* 24888 80023C88 C7AC0064 */  lwc1       $f12, 0x64($sp)
/* 2488C 80023C8C 0C00D87C */  jal        cosf
/* 24890 80023C90 E7A00048 */   swc1      $f0, 0x48($sp)
/* 24894 80023C94 C7AC0068 */  lwc1       $f12, 0x68($sp)
/* 24898 80023C98 0C00D5A0 */  jal        sinf
/* 2489C 80023C9C E7A0003C */   swc1      $f0, 0x3c($sp)
/* 248A0 80023CA0 C7AC0068 */  lwc1       $f12, 0x68($sp)
/* 248A4 80023CA4 0C00D87C */  jal        cosf
/* 248A8 80023CA8 E7A00044 */   swc1      $f0, 0x44($sp)
/* 248AC 80023CAC C7B00044 */  lwc1       $f16, 0x44($sp)
/* 248B0 80023CB0 C7A4004C */  lwc1       $f4, 0x4c($sp)
/* 248B4 80023CB4 C7A2003C */  lwc1       $f2, 0x3c($sp)
/* 248B8 80023CB8 C7AE0048 */  lwc1       $f14, 0x48($sp)
/* 248BC 80023CBC 46048302 */  mul.s      $f12, $f16, $f4
/* 248C0 80023CC0 C7B2006C */  lwc1       $f18, 0x6c($sp)
/* 248C4 80023CC4 3C013F80 */  lui        $at, 0x3f80
/* 248C8 80023CC8 46020182 */  mul.s      $f6, $f0, $f2
/* 248CC 80023CCC 00000000 */  nop
/* 248D0 80023CD0 460E6202 */  mul.s      $f8, $f12, $f14
/* 248D4 80023CD4 46083280 */  add.s      $f10, $f6, $f8
/* 248D8 80023CD8 46125102 */  mul.s      $f4, $f10, $f18
/* 248DC 80023CDC 46007287 */  neg.s      $f10, $f14
/* 248E0 80023CE0 46148182 */  mul.s      $f6, $f16, $f20
/* 248E4 80023CE4 E6040000 */  swc1       $f4, ($s0)
/* 248E8 80023CE8 46123202 */  mul.s      $f8, $f6, $f18
/* 248EC 80023CEC E6080004 */  swc1       $f8, 4($s0)
/* 248F0 80023CF0 E7AA0034 */  swc1       $f10, 0x34($sp)
/* 248F4 80023CF4 C7A40034 */  lwc1       $f4, 0x34($sp)
/* 248F8 80023CF8 46002182 */  mul.s      $f6, $f4, $f0
/* 248FC 80023CFC 00000000 */  nop
/* 24900 80023D00 46026202 */  mul.s      $f8, $f12, $f2
/* 24904 80023D04 46083280 */  add.s      $f10, $f6, $f8
/* 24908 80023D08 44803000 */  mtc1       $zero, $f6
/* 2490C 80023D0C 46008207 */  neg.s      $f8, $f16
/* 24910 80023D10 46125102 */  mul.s      $f4, $f10, $f18
/* 24914 80023D14 E606000C */  swc1       $f6, 0xc($s0)
/* 24918 80023D18 44809000 */  mtc1       $zero, $f18
/* 2491C 80023D1C E6040008 */  swc1       $f4, 8($s0)
/* 24920 80023D20 C7AA004C */  lwc1       $f10, 0x4c($sp)
/* 24924 80023D24 E7A80030 */  swc1       $f8, 0x30($sp)
/* 24928 80023D28 C7A60030 */  lwc1       $f6, 0x30($sp)
/* 2492C 80023D2C 460A0102 */  mul.s      $f4, $f0, $f10
/* 24930 80023D30 E7A4002C */  swc1       $f4, 0x2c($sp)
/* 24934 80023D34 46023202 */  mul.s      $f8, $f6, $f2
/* 24938 80023D38 C7AA002C */  lwc1       $f10, 0x2c($sp)
/* 2493C 80023D3C 460E5102 */  mul.s      $f4, $f10, $f14
/* 24940 80023D40 C7AA0070 */  lwc1       $f10, 0x70($sp)
/* 24944 80023D44 46044180 */  add.s      $f6, $f8, $f4
/* 24948 80023D48 460A3202 */  mul.s      $f8, $f6, $f10
/* 2494C 80023D4C E6080010 */  swc1       $f8, 0x10($s0)
/* 24950 80023D50 46140102 */  mul.s      $f4, $f0, $f20
/* 24954 80023D54 C7B00070 */  lwc1       $f16, 0x70($sp)
/* 24958 80023D58 C7AC0074 */  lwc1       $f12, 0x74($sp)
/* 2495C 80023D5C 46102182 */  mul.s      $f6, $f4, $f16
/* 24960 80023D60 E6060014 */  swc1       $f6, 0x14($s0)
/* 24964 80023D64 C7A80034 */  lwc1       $f8, 0x34($sp)
/* 24968 80023D68 C7AA0030 */  lwc1       $f10, 0x30($sp)
/* 2496C 80023D6C C7A6002C */  lwc1       $f6, 0x2c($sp)
/* 24970 80023D70 E612001C */  swc1       $f18, 0x1c($s0)
/* 24974 80023D74 46085102 */  mul.s      $f4, $f10, $f8
/* 24978 80023D78 00000000 */  nop
/* 2497C 80023D7C 46023282 */  mul.s      $f10, $f6, $f2
/* 24980 80023D80 460A2200 */  add.s      $f8, $f4, $f10
/* 24984 80023D84 46104182 */  mul.s      $f6, $f8, $f16
/* 24988 80023D88 00000000 */  nop
/* 2498C 80023D8C 460EA102 */  mul.s      $f4, $f20, $f14
/* 24990 80023D90 E6060018 */  swc1       $f6, 0x18($s0)
/* 24994 80023D94 460C2282 */  mul.s      $f10, $f4, $f12
/* 24998 80023D98 E60A0020 */  swc1       $f10, 0x20($s0)
/* 2499C 80023D9C C7A8004C */  lwc1       $f8, 0x4c($sp)
/* 249A0 80023DA0 E612002C */  swc1       $f18, 0x2c($s0)
/* 249A4 80023DA4 46004187 */  neg.s      $f6, $f8
/* 249A8 80023DA8 460C3102 */  mul.s      $f4, $f6, $f12
/* 249AC 80023DAC 00000000 */  nop
/* 249B0 80023DB0 4602A282 */  mul.s      $f10, $f20, $f2
/* 249B4 80023DB4 E6040024 */  swc1       $f4, 0x24($s0)
/* 249B8 80023DB8 460C5202 */  mul.s      $f8, $f10, $f12
/* 249BC 80023DBC E6080028 */  swc1       $f8, 0x28($s0)
/* 249C0 80023DC0 C7A60054 */  lwc1       $f6, 0x54($sp)
/* 249C4 80023DC4 44814000 */  mtc1       $at, $f8
/* 249C8 80023DC8 E6060030 */  swc1       $f6, 0x30($s0)
/* 249CC 80023DCC C7A40058 */  lwc1       $f4, 0x58($sp)
/* 249D0 80023DD0 E6040034 */  swc1       $f4, 0x34($s0)
/* 249D4 80023DD4 C7AA005C */  lwc1       $f10, 0x5c($sp)
/* 249D8 80023DD8 E608003C */  swc1       $f8, 0x3c($s0)
/* 249DC 80023DDC E60A0038 */  swc1       $f10, 0x38($s0)
/* 249E0 80023DE0 8FBF0024 */  lw         $ra, 0x24($sp)
/* 249E4 80023DE4 D7B40018 */  ldc1       $f20, 0x18($sp)
/* 249E8 80023DE8 8FB00020 */  lw         $s0, 0x20($sp)
/* 249EC 80023DEC 03E00008 */  jr         $ra
/* 249F0 80023DF0 27BD0050 */   addiu     $sp, $sp, 0x50
