glabel printItemObtainedMsg
/* 12CC0 800120C0 3C068008 */  lui        $a2, %hi(CurrTextBoxMessage)
/* 12CC4 800120C4 24C6C570 */  addiu      $a2, $a2, %lo(CurrTextBoxMessage)
/* 12CC8 800120C8 2407007F */  addiu      $a3, $zero, 0x7f
/* 12CCC 800120CC 240800FF */  addiu      $t0, $zero, 0xff
/* 12CD0 800120D0 00047080 */  sll        $t6, $a0, 2
/* 12CD4 800120D4 3C02803B */  lui        $v0, %hi(itemNamePtrs)
/* 12CD8 800120D8 004E1021 */  addu       $v0, $v0, $t6
/* 12CDC 800120DC 8C429954 */  lw         $v0, %lo(itemNamePtrs)($v0)
/* 12CE0 800120E0 240F00E0 */  addiu      $t7, $zero, 0xe0
/* 12CE4 800120E4 A0C70000 */  sb         $a3, ($a2)
/* 12CE8 800120E8 A0CF0001 */  sb         $t7, 1($a2)
/* 12CEC 800120EC A0C70002 */  sb         $a3, 2($a2)
/* 12CF0 800120F0 A0C70003 */  sb         $a3, 3($a2)
/* 12CF4 800120F4 90450000 */  lbu        $a1, ($v0)
/* 12CF8 800120F8 3C038008 */  lui        $v1, %hi(itemGetMsg)
/* 12CFC 800120FC 2463C574 */  addiu      $v1, $v1, %lo(itemGetMsg)
/* 12D00 80012100 11050007 */  beq        $t0, $a1, .L80012120
/* 12D04 80012104 3C048005 */   lui       $a0, 0x8005
/* 12D08 80012108 A0650000 */  sb         $a1, ($v1)
.L8001210C:
/* 12D0C 8001210C 90450001 */  lbu        $a1, 1($v0)
/* 12D10 80012110 24630001 */  addiu      $v1, $v1, 1
/* 12D14 80012114 24420001 */  addiu      $v0, $v0, 1
/* 12D18 80012118 5505FFFC */  bnel       $t0, $a1, .L8001210C
/* 12D1C 8001211C A0650000 */   sb        $a1, ($v1)
.L80012120:
/* 12D20 80012120 2482C460 */  addiu      $v0, $a0, -0x3ba0
/* 12D24 80012124 90580000 */  lbu        $t8, ($v0)
/* 12D28 80012128 3C198005 */  lui        $t9, %hi(msg_obtained)
/* 12D2C 8001212C 2739C460 */  addiu      $t9, $t9, %lo(msg_obtained)
/* 12D30 80012130 51180009 */  beql       $t0, $t8, .L80012158
/* 12D34 80012134 90490000 */   lbu       $t1, ($v0)
/* 12D38 80012138 93250000 */  lbu        $a1, ($t9)
/* 12D3C 8001213C A0650000 */  sb         $a1, ($v1)
.L80012140:
/* 12D40 80012140 90450001 */  lbu        $a1, 1($v0)
/* 12D44 80012144 24630001 */  addiu      $v1, $v1, 1
/* 12D48 80012148 24420001 */  addiu      $v0, $v0, 1
/* 12D4C 8001214C 5505FFFC */  bnel       $t0, $a1, .L80012140
/* 12D50 80012150 A0650000 */   sb        $a1, ($v1)
/* 12D54 80012154 90490000 */  lbu        $t1, ($v0)
.L80012158:
/* 12D58 80012158 240A00FF */  addiu      $t2, $zero, 0xff
/* 12D5C 8001215C 3C018008 */  lui        $at, %hi(localNPC_Names)
/* 12D60 80012160 A0690000 */  sb         $t1, ($v1)
/* 12D64 80012164 A02AC970 */  sb         $t2, %lo(localNPC_Names)($at)
/* 12D68 80012168 03E00008 */  jr         $ra
/* 12D6C 8001216C 00000000 */   nop
