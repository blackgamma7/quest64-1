glabel initInventory
/* 21D70 80021170 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 21D74 80021174 AFBF0014 */  sw         $ra, 0x14($sp)
/* 21D78 80021178 3C0400D4 */  lui        $a0, 0xd4
/* 21D7C 8002117C 3C05803B */  lui        $a1, %hi(virt_inventoryPalettes)
/* 21D80 80021180 24A5AC20 */  addiu      $a1, $a1, %lo(virt_inventoryPalettes)
/* 21D84 80021184 2484BE40 */  addiu      $a0, $a0, -0x41c0
/* 21D88 80021188 0C009098 */  jal        loadData
/* 21D8C 8002118C 24060400 */   addiu     $a2, $zero, 0x400
/* 21D90 80021190 3C028009 */  lui        $v0, %hi(D_8008C770)
/* 21D94 80021194 24030008 */  addiu      $v1, $zero, 8
/* 21D98 80021198 2442C770 */  addiu      $v0, $v0, %lo(D_8008C770)
/* 21D9C 8002119C 240400FF */  addiu      $a0, $zero, 0xff
.L800211A0:
/* 21DA0 800211A0 2463FFFF */  addiu      $v1, $v1, -1
/* 21DA4 800211A4 A0440000 */  sb         $a0, ($v0)
/* 21DA8 800211A8 1460FFFD */  bnez       $v1, .L800211A0
/* 21DAC 800211AC 24420001 */   addiu     $v0, $v0, 1
/* 21DB0 800211B0 3C028009 */  lui        $v0, %hi(InventorySlots+0x1)
/* 21DB4 800211B4 2442CF79 */  addiu      $v0, $v0, %lo(InventorySlots+0x1)
/* 21DB8 800211B8 3C018009 */  lui        $at, %hi(InventorySlots)
/* 21DBC 800211BC A024CF78 */  sb         $a0, %lo(InventorySlots)($at)
/* 21DC0 800211C0 A0440001 */  sb         $a0, 1($v0)
/* 21DC4 800211C4 A0440000 */  sb         $a0, ($v0)
/* 21DC8 800211C8 24420002 */  addiu      $v0, $v0, 2
/* 21DCC 800211CC 24030094 */  addiu      $v1, $zero, 0x94
.L800211D0:
/* 21DD0 800211D0 2463FFFC */  addiu      $v1, $v1, -4
/* 21DD4 800211D4 A0440000 */  sb         $a0, ($v0)
/* 21DD8 800211D8 A0440001 */  sb         $a0, 1($v0)
/* 21DDC 800211DC A0440002 */  sb         $a0, 2($v0)
/* 21DE0 800211E0 A0440003 */  sb         $a0, 3($v0)
/* 21DE4 800211E4 1460FFFA */  bnez       $v1, .L800211D0
/* 21DE8 800211E8 24420004 */   addiu     $v0, $v0, 4
/* 21DEC 800211EC 3C018009 */  lui        $at, %hi(InvScrollIndex)
/* 21DF0 800211F0 AC20C760 */  sw         $zero, %lo(InvScrollIndex)($at)
/* 21DF4 800211F4 3C018009 */  lui        $at, %hi(VisableInvIndex)
/* 21DF8 800211F8 AC20C764 */  sw         $zero, %lo(VisableInvIndex)($at)
/* 21DFC 800211FC 3C018009 */  lui        $at, %hi(D_8008C768)
/* 21E00 80021200 AC20C768 */  sw         $zero, %lo(D_8008C768)($at)
/* 21E04 80021204 8FBF0014 */  lw         $ra, 0x14($sp)
/* 21E08 80021208 27BD0018 */  addiu      $sp, $sp, 0x18
/* 21E0C 8002120C 03E00008 */  jr         $ra
/* 21E10 80021210 00000000 */   nop
