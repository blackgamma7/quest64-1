glabel loadCredits_and_StoryData
/* 32878 80031C78 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3287C 80031C7C 3C0400DC */  lui        $a0, 0xdc
/* 32880 80031C80 24841620 */  addiu      $a0, $a0, 0x1620
/* 32884 80031C84 AFBF0014 */  sw         $ra, 0x14($sp)
/* 32888 80031C88 3C0E00E2 */  lui        $t6, 0xe2
/* 3288C 80031C8C 25CE7840 */  addiu      $t6, $t6, 0x7840
/* 32890 80031C90 3C058010 */  lui        $a1, %hi(virt_CommonData_Title_and_credits)
/* 32894 80031C94 24A50000 */  addiu      $a1, $a1, %lo(virt_CommonData_Title_and_credits)
/* 32898 80031C98 0C009098 */  jal        loadData
/* 3289C 80031C9C 01C43023 */   subu      $a2, $t6, $a0
/* 328A0 80031CA0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 328A4 80031CA4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 328A8 80031CA8 03E00008 */  jr         $ra
/* 328AC 80031CAC 00000000 */   nop
