.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel __osViGetCurrentContext
/* 3F620 8003EA20 3C028007 */  lui        $v0, %hi(__osViCurr)
/* 3F624 8003EA24 03E00008 */  jr         $ra
/* 3F628 8003EA28 8C420A80 */   lw        $v0, %lo(__osViCurr)($v0)
/* 3F62C 8003EA2C 00000000 */  nop
