#include "common.h"

#pragma GLOBAL_ASM("asm/nonmatchings/treasure/initChestData.s")

#pragma GLOBAL_ASM("asm/nonmatchings/treasure/loadTreasureChests.s")

#pragma GLOBAL_ASM("asm/nonmatchings/treasure/func_80011D28.s")

#pragma GLOBAL_ASM("asm/nonmatchings/treasure/func_80011E78.s")

#pragma GLOBAL_ASM("asm/nonmatchings/treasure/openChest.s")
/*void openChest(ActorStruct *c){
  setChestOpenedFlag(c->EventFlag);
  c->Flags = 0x805b;
  updateAnim(c,1,1,2,1,1);
  func_800268D4(0x1a,8,0xff);
}*/
#pragma GLOBAL_ASM("asm/nonmatchings/treasure/printItemObtainedMsg.s")

u8 getChestOpenedFlag(u16 x) {
    return collectedChestsBitfield[x >> 3] & binTbl[x & 7];
}
void setChestOpenedFlag(u16 x){
  collectedChestsBitfield[x >> 3] |= binTbl[x & 7];
}
