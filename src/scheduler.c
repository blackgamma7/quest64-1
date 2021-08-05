#include "common.h"

#pragma GLOBAL_ASM("asm/nonmatchings/scheduler/sched_create_msgQs.s")

#pragma GLOBAL_ASM("asm/nonmatchings/scheduler/run_3_Scheduler_threads.s")

s32 get_sched_MQA(s32 arg0) {
    return arg0 + 4;
}


s32 get_sched_MQB(s32 arg0) {
	return arg0 + 0x3C;
}

#pragma GLOBAL_ASM("asm/nonmatchings/scheduler/SchedProcA.s")

#pragma GLOBAL_ASM("asm/nonmatchings/scheduler/osScAddClient.s")

#pragma GLOBAL_ASM("asm/nonmatchings/scheduler/func_80000824.s")

#pragma GLOBAL_ASM("asm/nonmatchings/scheduler/func_800008B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/scheduler/SchedProcB.s")

#pragma GLOBAL_ASM("asm/nonmatchings/scheduler/SchedProcC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/scheduler/func_80000BB4.s")
