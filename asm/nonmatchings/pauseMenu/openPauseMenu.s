glabel openPauseMenu
/* 2767C 80026A7C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 27680 80026A80 3C058008 */  lui        $a1, %hi(DLPtr)
/* 27684 80026A84 24A5B2FC */  addiu      $a1, $a1, %lo(DLPtr)
/* 27688 80026A88 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2768C 80026A8C AFA40018 */  sw         $a0, 0x18($sp)
/* 27690 80026A90 8CA20000 */  lw         $v0, ($a1)
/* 27694 80026A94 3C188006 */  lui        $t8, %hi(someDisplayList)
/* 27698 80026A98 2718FAA0 */  addiu      $t8, $t8, %lo(someDisplayList)
/* 2769C 80026A9C 244E0008 */  addiu      $t6, $v0, 8
/* 276A0 80026AA0 ACAE0000 */  sw         $t6, ($a1)
/* 276A4 80026AA4 3C0F0600 */  lui        $t7, 0x600
/* 276A8 80026AA8 AC4F0000 */  sw         $t7, ($v0)
/* 276AC 80026AAC AC580004 */  sw         $t8, 4($v0)
/* 276B0 80026AB0 8CA20000 */  lw         $v0, ($a1)
/* 276B4 80026AB4 3C0ABA00 */  lui        $t2, 0xba00
/* 276B8 80026AB8 354A0E02 */  ori        $t2, $t2, 0xe02
/* 276BC 80026ABC 24590008 */  addiu      $t9, $v0, 8
/* 276C0 80026AC0 ACB90000 */  sw         $t9, ($a1)
/* 276C4 80026AC4 340B8000 */  ori        $t3, $zero, 0x8000
/* 276C8 80026AC8 AC4B0004 */  sw         $t3, 4($v0)
/* 276CC 80026ACC AC4A0000 */  sw         $t2, ($v0)
/* 276D0 80026AD0 0C00A99A */  jal        pauseMenuGfxSomething
/* 276D4 80026AD4 00000000 */   nop
/* 276D8 80026AD8 3C028009 */  lui        $v0, %hi(pauseMenuFrameCtr)
/* 276DC 80026ADC 3C098009 */  lui        $t1, %hi(pause_and_save_screen_state_flags)
/* 276E0 80026AE0 2529FD0C */  addiu      $t1, $t1, %lo(pause_and_save_screen_state_flags)
/* 276E4 80026AE4 2442FD10 */  addiu      $v0, $v0, %lo(pauseMenuFrameCtr)
/* 276E8 80026AE8 8C4C0000 */  lw         $t4, ($v0)
/* 276EC 80026AEC 95230000 */  lhu        $v1, ($t1)
/* 276F0 80026AF0 258D0001 */  addiu      $t5, $t4, 1
/* 276F4 80026AF4 306E4000 */  andi       $t6, $v1, 0x4000
/* 276F8 80026AF8 11C00008 */  beqz       $t6, .L80026B1C
/* 276FC 80026AFC AC4D0000 */   sw        $t5, ($v0)
/* 27700 80026B00 0C00AD5F */  jal        func_8002B57C
/* 27704 80026B04 00000000 */   nop
/* 27708 80026B08 3C038009 */  lui        $v1, %hi(pause_and_save_screen_state_flags)
/* 2770C 80026B0C 3C098009 */  lui        $t1, %hi(pause_and_save_screen_state_flags)
/* 27710 80026B10 2529FD0C */  addiu      $t1, $t1, %lo(pause_and_save_screen_state_flags)
/* 27714 80026B14 10000030 */  b          .L80026BD8
/* 27718 80026B18 9463FD0C */   lhu       $v1, %lo(pause_and_save_screen_state_flags)($v1)
.L80026B1C:
/* 2771C 80026B1C 306F2000 */  andi       $t7, $v1, 0x2000
/* 27720 80026B20 11E00008 */  beqz       $t7, .L80026B44
/* 27724 80026B24 30780003 */   andi      $t8, $v1, 3
/* 27728 80026B28 0C009B47 */  jal        func_80026D1C
/* 2772C 80026B2C 00000000 */   nop
/* 27730 80026B30 3C038009 */  lui        $v1, %hi(pause_and_save_screen_state_flags)
/* 27734 80026B34 3C098009 */  lui        $t1, %hi(pause_and_save_screen_state_flags)
/* 27738 80026B38 2529FD0C */  addiu      $t1, $t1, %lo(pause_and_save_screen_state_flags)
/* 2773C 80026B3C 10000026 */  b          .L80026BD8
/* 27740 80026B40 9463FD0C */   lhu       $v1, %lo(pause_and_save_screen_state_flags)($v1)
.L80026B44:
/* 27744 80026B44 13000009 */  beqz       $t8, .L80026B6C
/* 27748 80026B48 24010001 */   addiu     $at, $zero, 1
/* 2774C 80026B4C 1301000E */  beq        $t8, $at, .L80026B88
/* 27750 80026B50 24010002 */   addiu     $at, $zero, 2
/* 27754 80026B54 13010013 */  beq        $t8, $at, .L80026BA4
/* 27758 80026B58 24010003 */   addiu     $at, $zero, 3
/* 2775C 80026B5C 13010018 */  beq        $t8, $at, .L80026BC0
/* 27760 80026B60 00000000 */   nop
/* 27764 80026B64 1000001C */  b          .L80026BD8
/* 27768 80026B68 00000000 */   nop
.L80026B6C:
/* 2776C 80026B6C 0C009BCD */  jal        Pause_Status
/* 27770 80026B70 00002025 */   or        $a0, $zero, $zero
/* 27774 80026B74 3C038009 */  lui        $v1, %hi(pause_and_save_screen_state_flags)
/* 27778 80026B78 3C098009 */  lui        $t1, %hi(pause_and_save_screen_state_flags)
/* 2777C 80026B7C 2529FD0C */  addiu      $t1, $t1, %lo(pause_and_save_screen_state_flags)
/* 27780 80026B80 10000015 */  b          .L80026BD8
/* 27784 80026B84 9463FD0C */   lhu       $v1, %lo(pause_and_save_screen_state_flags)($v1)
.L80026B88:
/* 27788 80026B88 0C009E2C */  jal        Pause_Environment
/* 2778C 80026B8C 00002025 */   or        $a0, $zero, $zero
/* 27790 80026B90 3C038009 */  lui        $v1, %hi(pause_and_save_screen_state_flags)
/* 27794 80026B94 3C098009 */  lui        $t1, %hi(pause_and_save_screen_state_flags)
/* 27798 80026B98 2529FD0C */  addiu      $t1, $t1, %lo(pause_and_save_screen_state_flags)
/* 2779C 80026B9C 1000000E */  b          .L80026BD8
/* 277A0 80026BA0 9463FD0C */   lhu       $v1, %lo(pause_and_save_screen_state_flags)($v1)
.L80026BA4:
/* 277A4 80026BA4 0C00A189 */  jal        Pause_Map
/* 277A8 80026BA8 00002025 */   or        $a0, $zero, $zero
/* 277AC 80026BAC 3C038009 */  lui        $v1, %hi(pause_and_save_screen_state_flags)
/* 277B0 80026BB0 3C098009 */  lui        $t1, %hi(pause_and_save_screen_state_flags)
/* 277B4 80026BB4 2529FD0C */  addiu      $t1, $t1, %lo(pause_and_save_screen_state_flags)
/* 277B8 80026BB8 10000007 */  b          .L80026BD8
/* 277BC 80026BBC 9463FD0C */   lhu       $v1, %lo(pause_and_save_screen_state_flags)($v1)
.L80026BC0:
/* 277C0 80026BC0 0C00A512 */  jal        Pause_Elements
/* 277C4 80026BC4 00002025 */   or        $a0, $zero, $zero
/* 277C8 80026BC8 3C038009 */  lui        $v1, %hi(pause_and_save_screen_state_flags)
/* 277CC 80026BCC 3C098009 */  lui        $t1, %hi(pause_and_save_screen_state_flags)
/* 277D0 80026BD0 2529FD0C */  addiu      $t1, $t1, %lo(pause_and_save_screen_state_flags)
/* 277D4 80026BD4 9463FD0C */  lhu        $v1, %lo(pause_and_save_screen_state_flags)($v1)
.L80026BD8:
/* 277D8 80026BD8 3C088008 */  lui        $t0, %hi(DLPtr)
/* 277DC 80026BDC 3079FFEF */  andi       $t9, $v1, 0xffef
/* 277E0 80026BE0 2508B2FC */  addiu      $t0, $t0, %lo(DLPtr)
/* 277E4 80026BE4 24070001 */  addiu      $a3, $zero, 1
/* 277E8 80026BE8 A5390000 */  sh         $t9, ($t1)
/* 277EC 80026BEC 8D020000 */  lw         $v0, ($t0)
/* 277F0 80026BF0 3C0BBA00 */  lui        $t3, 0xba00
/* 277F4 80026BF4 356B0E02 */  ori        $t3, $t3, 0xe02
/* 277F8 80026BF8 244A0008 */  addiu      $t2, $v0, 8
/* 277FC 80026BFC AD0A0000 */  sw         $t2, ($t0)
/* 27800 80026C00 AC400004 */  sw         $zero, 4($v0)
/* 27804 80026C04 AC4B0000 */  sw         $t3, ($v0)
/* 27808 80026C08 8D020000 */  lw         $v0, ($t0)
/* 2780C 80026C0C 3C0DF900 */  lui        $t5, 0xf900
/* 27810 80026C10 3C068009 */  lui        $a2, %hi(pressedButton)
/* 27814 80026C14 244C0008 */  addiu      $t4, $v0, 8
/* 27818 80026C18 AD0C0000 */  sw         $t4, ($t0)
/* 2781C 80026C1C AC470004 */  sw         $a3, 4($v0)
/* 27820 80026C20 AC4D0000 */  sw         $t5, ($v0)
/* 27824 80026C24 94C62876 */  lhu        $a2, %lo(pressedButton)($a2)
/* 27828 80026C28 30CE4000 */  andi       $t6, $a2, 0x4000
/* 2782C 80026C2C 15C00003 */  bnez       $t6, .L80026C3C
/* 27830 80026C30 30CF1000 */   andi      $t7, $a2, 0x1000
/* 27834 80026C34 51E0000E */  beql       $t7, $zero, .L80026C70
/* 27838 80026C38 95230000 */   lhu       $v1, ($t1)
.L80026C3C:
/* 2783C 80026C3C 95230000 */  lhu        $v1, ($t1)
/* 27840 80026C40 00002025 */  or         $a0, $zero, $zero
/* 27844 80026C44 24050001 */  addiu      $a1, $zero, 1
/* 27848 80026C48 30784000 */  andi       $t8, $v1, 0x4000
/* 2784C 80026C4C 17000007 */  bnez       $t8, .L80026C6C
/* 27850 80026C50 30797FFF */   andi      $t9, $v1, 0x7fff
/* 27854 80026C54 A5390000 */  sh         $t9, ($t1)
/* 27858 80026C58 0C009A35 */  jal        func_800268D4
/* 2785C 80026C5C 240600FF */   addiu     $a2, $zero, 0xff
/* 27860 80026C60 3C098009 */  lui        $t1, %hi(pause_and_save_screen_state_flags)
/* 27864 80026C64 2529FD0C */  addiu      $t1, $t1, %lo(pause_and_save_screen_state_flags)
/* 27868 80026C68 24070001 */  addiu      $a3, $zero, 1
.L80026C6C:
/* 2786C 80026C6C 95230000 */  lhu        $v1, ($t1)
.L80026C70:
/* 27870 80026C70 306A8000 */  andi       $t2, $v1, 0x8000
/* 27874 80026C74 15400025 */  bnez       $t2, .L80026D0C
/* 27878 80026C78 306B4000 */   andi      $t3, $v1, 0x4000
/* 2787C 80026C7C 11600020 */  beqz       $t3, .L80026D00
/* 27880 80026C80 3C018008 */   lui       $at, 0x8008
/* 27884 80026C84 306C000C */  andi       $t4, $v1, 0xc
/* 27888 80026C88 11800008 */  beqz       $t4, .L80026CAC
/* 2788C 80026C8C 3C0D8009 */   lui       $t5, 0x8009
/* 27890 80026C90 24010004 */  addiu      $at, $zero, 4
/* 27894 80026C94 11810017 */  beq        $t4, $at, .L80026CF4
/* 27898 80026C98 24010008 */   addiu     $at, $zero, 8
/* 2789C 80026C9C 11810012 */  beq        $t4, $at, .L80026CE8
/* 278A0 80026CA0 24190003 */   addiu     $t9, $zero, 3
/* 278A4 80026CA4 10000017 */  b          .L80026D04
/* 278A8 80026CA8 00000000 */   nop
.L80026CAC:
/* 278AC 80026CAC 95ADFD20 */  lhu        $t5, -0x2e0($t5)
/* 278B0 80026CB0 240F0001 */  addiu      $t7, $zero, 1
/* 278B4 80026CB4 24180003 */  addiu      $t8, $zero, 3
/* 278B8 80026CB8 31AE0080 */  andi       $t6, $t5, 0x80
/* 278BC 80026CBC 11C00006 */  beqz       $t6, .L80026CD8
/* 278C0 80026CC0 3C018008 */   lui       $at, 0x8008
/* 278C4 80026CC4 3C018008 */  lui        $at, %hi(GameMode)
/* 278C8 80026CC8 A427B2E0 */  sh         $a3, %lo(GameMode)($at)
/* 278CC 80026CCC 3C018009 */  lui        $at, %hi(D_8008FD0E)
/* 278D0 80026CD0 1000000C */  b          .L80026D04
/* 278D4 80026CD4 A02FFD0E */   sb        $t7, %lo(D_8008FD0E)($at)
.L80026CD8:
/* 278D8 80026CD8 A438B2E0 */  sh         $t8, -0x4d20($at)
/* 278DC 80026CDC 3C018009 */  lui        $at, %hi(D_8008FD0E)
/* 278E0 80026CE0 10000008 */  b          .L80026D04
/* 278E4 80026CE4 A020FD0E */   sb        $zero, %lo(D_8008FD0E)($at)
.L80026CE8:
/* 278E8 80026CE8 3C018008 */  lui        $at, %hi(GameMode)
/* 278EC 80026CEC 10000005 */  b          .L80026D04
/* 278F0 80026CF0 A439B2E0 */   sh        $t9, %lo(GameMode)($at)
.L80026CF4:
/* 278F4 80026CF4 3C018008 */  lui        $at, %hi(GameMode)
/* 278F8 80026CF8 10000002 */  b          .L80026D04
/* 278FC 80026CFC A427B2E0 */   sh        $a3, %lo(GameMode)($at)
.L80026D00:
/* 27900 80026D00 A427B2E0 */  sh         $a3, -0x4d20($at)
.L80026D04:
/* 27904 80026D04 0C009A90 */  jal        func_80026A40
/* 27908 80026D08 00000000 */   nop
.L80026D0C:
/* 2790C 80026D0C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 27910 80026D10 27BD0018 */  addiu      $sp, $sp, 0x18
/* 27914 80026D14 03E00008 */  jr         $ra
/* 27918 80026D18 00000000 */   nop
