glabel initLights_and_Fog
/* 10CD0 800100D0 240E1EC3 */  addiu      $t6, $zero, 0x1ec3
/* 10CD4 800100D4 3C018008 */  lui        $at, %hi(currentTime)
/* 10CD8 800100D8 AC2E59D0 */  sw         $t6, %lo(currentTime)($at)
/* 10CDC 800100DC 3C018008 */  lui        $at, %hi(dayLength)
/* 10CE0 800100E0 240F6978 */  addiu      $t7, $zero, 0x6978
/* 10CE4 800100E4 AC2F59D4 */  sw         $t7, %lo(dayLength)($at)
/* 10CE8 800100E8 3C018008 */  lui        $at, %hi(CurrentDay)
/* 10CEC 800100EC 24180001 */  addiu      $t8, $zero, 1
/* 10CF0 800100F0 A43859E0 */  sh         $t8, %lo(CurrentDay)($at)
/* 10CF4 800100F4 3C018009 */  lui        $at, %hi(D_8008C634)
/* 10CF8 800100F8 24190007 */  addiu      $t9, $zero, 7
/* 10CFC 800100FC AC39C634 */  sw         $t9, %lo(D_8008C634)($at)
/* 10D00 80010100 3C018008 */  lui        $at, %hi(someLightR)
/* 10D04 80010104 AC205B68 */  sw         $zero, %lo(someLightR)($at)
/* 10D08 80010108 AC205B6C */  sw         $zero, 0x5b6c($at)
/* 10D0C 8001010C 3C018008 */  lui        $at, %hi(groundLightR)
/* 10D10 80010110 AC205B74 */  sw         $zero, %lo(groundLightR)($at)
/* 10D14 80010114 AC205B70 */  sw         $zero, 0x5b70($at)
/* 10D18 80010118 3C018008 */  lui        $at, %hi(groundLightG)
/* 10D1C 8001011C AC205B78 */  sw         $zero, %lo(groundLightG)($at)
/* 10D20 80010120 AC205B7C */  sw         $zero, 0x5b7c($at)
/* 10D24 80010124 3C018008 */  lui        $at, %hi(specular_LightsR)
/* 10D28 80010128 AC205B80 */  sw         $zero, %lo(specular_LightsR)($at)
/* 10D2C 8001012C AC205B84 */  sw         $zero, 0x5b84($at)
/* 10D30 80010130 3C018008 */  lui        $at, %hi(specular_LightsB)
/* 10D34 80010134 AC205B88 */  sw         $zero, %lo(specular_LightsB)($at)
/* 10D38 80010138 AC205B8C */  sw         $zero, 0x5b8c($at)
/* 10D3C 8001013C 3C018008 */  lui        $at, %hi(FogG)
/* 10D40 80010140 AC205B90 */  sw         $zero, %lo(FogG)($at)
/* 10D44 80010144 AC205B94 */  sw         $zero, 0x5b94($at)
/* 10D48 80010148 03E00008 */  jr         $ra
/* 10D4C 8001014C 00000000 */   nop
