#include "common.h"
#include "variables.h"

//#pragma GLOBAL_ASM("asm/nonmatchings/25290/func_80024690.s")
void func_80024690(s32 arg0, s32 *arg1, s32 arg2) {
    OSIoMesg sp28;

    osInvalDCache(arg1, arg2);
    osPiStartDma(&sp28, 0, 0, arg0, arg1, arg2, &D_8008F288);
    osRecvMesg(&D_8008F288, 0, 1);
}


#pragma GLOBAL_ASM("asm/nonmatchings/25290/alUNKNOWN.s")

#pragma GLOBAL_ASM("asm/nonmatchings/25290/func_800248C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/25290/func_80024A48.s")

#pragma GLOBAL_ASM("asm/nonmatchings/25290/func_80024B1C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/25290/func_80024BEC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/25290/func_80025040.s")

#pragma GLOBAL_ASM("asm/nonmatchings/25290/func_800250E8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/25290/func_8002513C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/25290/func_800252D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/25290/func_80025364.s")

#pragma GLOBAL_ASM("asm/nonmatchings/25290/func_800253F0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/25290/func_8002543C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/25290/func_80025488.s")

#pragma GLOBAL_ASM("asm/nonmatchings/25290/func_80025634.s")

#pragma GLOBAL_ASM("asm/nonmatchings/25290/func_8002568C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/25290/func_800256D4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/25290/func_8002571C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/25290/loadSoundEffect.s")

#pragma GLOBAL_ASM("asm/nonmatchings/25290/func_80025938.s")

#pragma GLOBAL_ASM("asm/nonmatchings/25290/func_80025984.s")

#pragma GLOBAL_ASM("asm/nonmatchings/25290/func_80025B3C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/25290/func_80025B8C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/25290/soundEffectSomething.s")

#pragma GLOBAL_ASM("asm/nonmatchings/25290/func_80025E0C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/25290/func_80026214.s")

#pragma GLOBAL_ASM("asm/nonmatchings/25290/func_800262F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/25290/func_800263A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/25290/func_80026434.s")

#pragma GLOBAL_ASM("asm/nonmatchings/25290/func_80026488.s")

#pragma GLOBAL_ASM("asm/nonmatchings/25290/func_8002650C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/25290/func_80026554.s")
