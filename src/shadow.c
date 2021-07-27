#include "common.h"

//pragma GLOBAL_ASM("asm/nonmatchings/shadow/ResetShadowTally.s")
void ResetShadowTally(void) {
    ShadowTally = 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/shadow/setShadowTrans.s")

#pragma GLOBAL_ASM("asm/nonmatchings/shadow/func_800118D4.s")
