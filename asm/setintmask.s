.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel osSetIntMask
/* 34D60 80034160 400C6000 */  mfc0       $t4, $12
/* 34D64 80034164 3182FF01 */  andi       $v0, $t4, 0xff01
/* 34D68 80034168 3C088007 */  lui        $t0, %hi(__OSGlobalIntMask)
/* 34D6C 8003416C 2508F410 */  addiu      $t0, $t0, %lo(__OSGlobalIntMask)
/* 34D70 80034170 8D0B0000 */  lw         $t3, ($t0)
/* 34D74 80034174 2401FFFF */  addiu      $at, $zero, -1
/* 34D78 80034178 01614026 */  xor        $t0, $t3, $at
/* 34D7C 8003417C 3108FF00 */  andi       $t0, $t0, 0xff00
/* 34D80 80034180 00481025 */  or         $v0, $v0, $t0
/* 34D84 80034184 3C0AA430 */  lui        $t2, %hi(MI_INTR_MASK_REG)
/* 34D88 80034188 8D4A000C */  lw         $t2, %lo(MI_INTR_MASK_REG)($t2)
/* 34D8C 8003418C 11400005 */  beqz       $t2, .L800341A4
/* 34D90 80034190 000B4C02 */   srl       $t1, $t3, 0x10
/* 34D94 80034194 2401FFFF */  addiu      $at, $zero, -1
/* 34D98 80034198 01214826 */  xor        $t1, $t1, $at
/* 34D9C 8003419C 3129003F */  andi       $t1, $t1, 0x3f
/* 34DA0 800341A0 01495025 */  or         $t2, $t2, $t1
.L800341A4:
/* 34DA4 800341A4 000A5400 */  sll        $t2, $t2, 0x10
/* 34DA8 800341A8 004A1025 */  or         $v0, $v0, $t2
/* 34DAC 800341AC 3C01003F */  lui        $at, 0x3f
/* 34DB0 800341B0 00814024 */  and        $t0, $a0, $at
/* 34DB4 800341B4 010B4024 */  and        $t0, $t0, $t3
/* 34DB8 800341B8 000843C2 */  srl        $t0, $t0, 0xf
/* 34DBC 800341BC 3C0A8007 */  lui        $t2, %hi(__osRcpImTable)
/* 34DC0 800341C0 01485021 */  addu       $t2, $t2, $t0
/* 34DC4 800341C4 954A1AB0 */  lhu        $t2, %lo(__osRcpImTable)($t2)
/* 34DC8 800341C8 3C01A430 */  lui        $at, %hi(MI_INTR_MASK_REG)
/* 34DCC 800341CC AC2A000C */  sw         $t2, %lo(MI_INTR_MASK_REG)($at)
/* 34DD0 800341D0 3088FF01 */  andi       $t0, $a0, 0xff01
/* 34DD4 800341D4 3169FF00 */  andi       $t1, $t3, 0xff00
/* 34DD8 800341D8 01094024 */  and        $t0, $t0, $t1
/* 34DDC 800341DC 3C01FFFF */  lui        $at, 0xffff
/* 34DE0 800341E0 342100FF */  ori        $at, $at, 0xff
/* 34DE4 800341E4 01816024 */  and        $t4, $t4, $at
/* 34DE8 800341E8 01886025 */  or         $t4, $t4, $t0
/* 34DEC 800341EC 408C6000 */  mtc0       $t4, $12
/* 34DF0 800341F0 00000000 */  nop
/* 34DF4 800341F4 00000000 */  nop
/* 34DF8 800341F8 03E00008 */  jr         $ra
/* 34DFC 800341FC 00000000 */   nop
