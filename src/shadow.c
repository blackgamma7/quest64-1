#include "common.h"

s32 shadowTally;

void ResetShadowTally(void) {shadowTally = 0;}

#pragma GLOBAL_ASM("asm/nonmatchings/shadow/setShadowTrans.s")
//regalloc mismatch
/*void setShadowTrans(f32 posx, f32 posy, f32 posz, f32 rotx, f32 roty, f32 rotz, f32 scale) {
    struct ShadowTransform *shad;
    u32 i;

    i = shadowTally;
    if (i < 64) {
        shadowTally++;
        shad = &shadowTransArray[i];
        shad->pos[0] = posx;
        shad->pos[1] = posy;
        shad->pos[2] = posz;
        shad->rot[0] = rotx;
        shad->rot[1] = roty;
        shad->rot[2] = rotz;
        shad->scale = scale;
    }
}*/

#pragma GLOBAL_ASM("asm/nonmatchings/shadow/renderShadows.s")
