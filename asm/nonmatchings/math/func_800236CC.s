glabel func_800236CC
/* 242CC 800236CC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 242D0 800236D0 44856000 */  mtc1       $a1, $f12
/* 242D4 800236D4 44867000 */  mtc1       $a2, $f14
/* 242D8 800236D8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 242DC 800236DC AFA40018 */  sw         $a0, 0x18($sp)
/* 242E0 800236E0 AFA70024 */  sw         $a3, 0x24($sp)
/* 242E4 800236E4 3C048009 */  lui        $a0, %hi(SkyboxData)
/* 242E8 800236E8 44056000 */  mfc1       $a1, $f12
/* 242EC 800236EC 44067000 */  mfc1       $a2, $f14
/* 242F0 800236F0 2484D030 */  addiu      $a0, $a0, %lo(SkyboxData)
/* 242F4 800236F4 0C008D5C */  jal        func_80023570
/* 242F8 800236F8 8FA70024 */   lw        $a3, 0x24($sp)
/* 242FC 800236FC 3C048009 */  lui        $a0, %hi(SkyboxData)
/* 24300 80023700 2484D030 */  addiu      $a0, $a0, %lo(SkyboxData)
/* 24304 80023704 0C00D480 */  jal        guMtxF2L
/* 24308 80023708 8FA50018 */   lw        $a1, 0x18($sp)
/* 2430C 8002370C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 24310 80023710 27BD0018 */  addiu      $sp, $sp, 0x18
/* 24314 80023714 03E00008 */  jr         $ra
/* 24318 80023718 00000000 */   nop
