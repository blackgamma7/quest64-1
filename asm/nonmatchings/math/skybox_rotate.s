glabel skybox_rotate
/* 247CC 80023BCC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 247D0 80023BD0 44856000 */  mtc1       $a1, $f12
/* 247D4 80023BD4 44867000 */  mtc1       $a2, $f14
/* 247D8 80023BD8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 247DC 80023BDC AFA40018 */  sw         $a0, 0x18($sp)
/* 247E0 80023BE0 AFA70024 */  sw         $a3, 0x24($sp)
/* 247E4 80023BE4 3C048009 */  lui        $a0, %hi(SkyboxData)
/* 247E8 80023BE8 44056000 */  mfc1       $a1, $f12
/* 247EC 80023BEC 44067000 */  mfc1       $a2, $f14
/* 247F0 80023BF0 2484D030 */  addiu      $a0, $a0, %lo(SkyboxData)
/* 247F4 80023BF4 0C008E82 */  jal        matrix_rotate
/* 247F8 80023BF8 8FA70024 */   lw        $a3, 0x24($sp)
/* 247FC 80023BFC 3C048009 */  lui        $a0, %hi(SkyboxData)
/* 24800 80023C00 2484D030 */  addiu      $a0, $a0, %lo(SkyboxData)
/* 24804 80023C04 0C00D480 */  jal        guMtxF2L
/* 24808 80023C08 8FA50018 */   lw        $a1, 0x18($sp)
/* 2480C 80023C0C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 24810 80023C10 27BD0018 */  addiu      $sp, $sp, 0x18
/* 24814 80023C14 03E00008 */  jr         $ra
/* 24818 80023C18 00000000 */   nop
