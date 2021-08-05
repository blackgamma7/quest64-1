#include "common.h"

extern u8 tbl_spiritGetFlags[16];

#pragma GLOBAL_ASM("asm/nonmatchings/spirit/clearSpiritFlags.s")

#pragma GLOBAL_ASM("asm/nonmatchings/spirit/placeSpirits.s")

#pragma GLOBAL_ASM("asm/nonmatchings/spirit/PickUpSpirit.s")

#pragma GLOBAL_ASM("asm/nonmatchings/spirit/func_8001249C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/spirit/uncalled_FUN_800125f4.s")

u8 getSpiritFlag(u16 x) {
    return tbl_spiritGetFlags[x >> 3] & binTbl[x & 7];
}
void setSpiritFlag(u16 x){
  tbl_spiritGetFlags[x >> 3] |= binTbl[x & 7];
}