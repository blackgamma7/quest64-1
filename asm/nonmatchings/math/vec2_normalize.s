glabel vec2_normalize
/* 23DB0 800231B0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 23DB4 800231B4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 23DB8 800231B8 C4A00000 */  lwc1       $f0, ($a1)
/* 23DBC 800231BC C4820000 */  lwc1       $f2, ($a0)
/* 23DC0 800231C0 AFA5001C */  sw         $a1, 0x1c($sp)
/* 23DC4 800231C4 46000102 */  mul.s      $f4, $f0, $f0
/* 23DC8 800231C8 AFA40018 */  sw         $a0, 0x18($sp)
/* 23DCC 800231CC 46021182 */  mul.s      $f6, $f2, $f2
/* 23DD0 800231D0 0C00D3D8 */  jal        _nsqrtf
/* 23DD4 800231D4 46062300 */   add.s     $f12, $f4, $f6
/* 23DD8 800231D8 3C013F80 */  lui        $at, 0x3f80
/* 23DDC 800231DC 44814000 */  mtc1       $at, $f8
/* 23DE0 800231E0 8FA40018 */  lw         $a0, 0x18($sp)
/* 23DE4 800231E4 8FA5001C */  lw         $a1, 0x1c($sp)
/* 23DE8 800231E8 46004083 */  div.s      $f2, $f8, $f0
/* 23DEC 800231EC C48A0000 */  lwc1       $f10, ($a0)
/* 23DF0 800231F0 46025402 */  mul.s      $f16, $f10, $f2
/* 23DF4 800231F4 E4900000 */  swc1       $f16, ($a0)
/* 23DF8 800231F8 C4B20000 */  lwc1       $f18, ($a1)
/* 23DFC 800231FC 46029102 */  mul.s      $f4, $f18, $f2
/* 23E00 80023200 E4A40000 */  swc1       $f4, ($a1)
/* 23E04 80023204 8FBF0014 */  lw         $ra, 0x14($sp)
/* 23E08 80023208 03E00008 */  jr         $ra
/* 23E0C 8002320C 27BD0018 */   addiu     $sp, $sp, 0x18
