#include "common.h"
extern u32 prevSeed;
u32 srand(u32 x){
    if(x){
        prevSeed=prevSeed*0x41C64E6D+0x3039;
        return (prevSeed>>16)%x;
    }
    return 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/math/func_80023028.s")
/*
void vec2_normalize(float* A,float* B){
    float h= _nsqrtf((*B * *B) + (*A * *A));
    *A *= (1.0/h);
    *B *= (1.0/h);
}*/

#pragma GLOBAL_ASM("asm/nonmatchings/math/vec2_normalize.s")
/*
const double PIOver2 = PIOver2_d;
const double NegPIOver2 = NegPIOver2_d;
const double PI = PI_d;
float func_80023210(float A,float B){
  float C;
  
  if (B == 0.0) {
    if (0.0 <= A) {
      C = (float)PIOver2;
    }
    else {
      C = (float)NegPIOver2;
    }
  }
  else {
    if (0.0 < B) {
      C = func_80023028(A / B);
    }
    else {
      if ((0.0 <= B) || (0.0 < A)) {
        C = (float)((double)func_80023028(A / B) + PI);
      }
      else {
        C = (float)((double)func_80023028(A / B) - PI);
      }
    }
  }
  return C;
}
*/
#pragma GLOBAL_ASM("asm/nonmatchings/math/func_80023210.s")
/*
void func_800232F4(float A,vec2 *v2){
  float sinA;
  float cosA;
  
  sinA = sinf(A);
  cosA = cosf(A);

  (*v2)[0] = (*v2)[1] * sinA - (*v2)[0] * cosA;
  (*v2)[1] = (*v2)[1] * cosA + (*v2)[0] * sinA;
}*/

#pragma GLOBAL_ASM("asm/nonmatchings/math/func_800232F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/math/rotatingModelsSomething.s")
extern MtxF SkyboxData;
/*
void func_80023500(Mtx *mx,float rotx,float roty,float rotz,float scale,float posx,float posy,float posz)
{
  rotatingModelsSomething(SkyboxData,rotx,roty,rotz,scale,posx,posy,posz);
  guMtxF2L(SkyboxData,mx);
}*/

#pragma GLOBAL_ASM("asm/nonmatchings/math/func_80023500.s")

#pragma GLOBAL_ASM("asm/nonmatchings/math/func_80023570.s")

#pragma GLOBAL_ASM("asm/nonmatchings/math/func_800236CC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/math/func_8002371C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/math/func_8002387C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/math/func_800238E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/math/func_80023974.s")

#pragma GLOBAL_ASM("asm/nonmatchings/math/matrix_rotate.s")

#pragma GLOBAL_ASM("asm/nonmatchings/math/skybox_rotate.s")

#pragma GLOBAL_ASM("asm/nonmatchings/math/func_80023C1C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/math/func_80023DF4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/math/func_80023E80.s")

#pragma GLOBAL_ASM("asm/nonmatchings/math/func_8002413C.s")
