#include "common.h"
struct ItemStruct{
    u16 use;
    u16 type;
    u16 EffVal1;
    u16 EffVal2;
    u32 unused;
};

#pragma GLOBAL_ASM("asm/nonmatchings/inventory/initInventory.s")

#pragma GLOBAL_ASM("asm/nonmatchings/inventory/CheckIfLastInvSlotEmpty.s")

#pragma GLOBAL_ASM("asm/nonmatchings/inventory/func_80021240.s")

#pragma GLOBAL_ASM("asm/nonmatchings/inventory/addItemToEmptySlot.s")

#pragma GLOBAL_ASM("asm/nonmatchings/inventory/useItemIfAble.s")

#pragma GLOBAL_ASM("asm/nonmatchings/inventory/func_800213D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/inventory/func_80021434.s")

#pragma GLOBAL_ASM("asm/nonmatchings/inventory/inventory.s")

s32 UseKeyItem(s32 arg0, void* arg1) {return 0;}
#pragma GLOBAL_ASM("asm/nonmatchings/inventory/useHealingItem.s")
/* Syntax errors?
s32 useHealingItem(ActorStruct* A,ItemStruct* I){
  struct PlayerStats *pPVar1;
  s32 sVar2=0;
  pPVar1 = A->player_pointer;
  if ((I->EffVal1 != 0) && (pPVar1->HP[0] != pPVar1->HP[1])) sVar2 = 1;
  if ((I->EffVal2 != 0) && (pPVar1->MP[0] != pPVar1->MP[1])) sVar2 = 1;
  return sVar2;
}*/

#pragma GLOBAL_ASM("asm/nonmatchings/inventory/UNK_Wings.s")

#pragma GLOBAL_ASM("asm/nonmatchings/inventory/UNK_SpellItem.s")

void func_8002233C(s32 arg0, s32 arg1) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/inventory/item_heal.s")

#pragma GLOBAL_ASM("asm/nonmatchings/inventory/useWings.s")

#pragma GLOBAL_ASM("asm/nonmatchings/inventory/func_8002260C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/inventory/drawItemMenu.s")
