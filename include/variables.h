#include <ultra64.h>

typedef float vec2[2]; //for 2d vectors
typedef float vec3[3]; //for 3d vectors
typedef float MtxF[4][4]; //4x4 float matricies

extern s8 gBossSpawnData;

//shadow
struct ShadowTransform{
    vec3 pos;
    vec3 rot;
    float scale;
};
extern struct ShadowTransform shadowTransArray[64];
extern u32 ShadowTally;

//inventoty
extern u8 LastInvSlot;
extern s8 InventorySlots[150];
struct WingStruct{
    u16 Map;
    u16 Submap;
    vec3 coords;
};
extern struct WingStruct wingArray[6];

//player/enemy stats
struct PlayerStats{
    u16 unk0x0; //ID?
    u16 unk0x2; //modelID?
    s16 HP[2]; //Max,curr
    s16 MP[2]; //""  ""
    s16 AGL;
    s16 DEF;
    s32 SpiritEXP; //enemies use as EXP yeild
    u32 unk0x14;
    vec3 hitbox; //maybe wrong
    u8 Spirits[4];
    s16 HPEXP;
    s16 MPEXP;
    s16 AGLEXP;
    s16 DEFEXP;
    u8 HPLv;
    u8 MPLv;
    u8 AGLLv;
    u8 DEFLv;
    u8 ElemLV;
    //u8 pad[3]
};
extern struct PlayerStats BrianStartingData;
extern struct PlayerStats brianData;
extern struct PlayerStats bossStats[8];
//chest
extern u8 collectedChestsBitfield[32];

//camera
struct CameraStruct{
    u32 FuncIndex;
    u32 unk0x4;
    u16 BehindSomething;
    u16 align0xa;
    float unk0xc;
    float tilt;
    float zoom;
    vec3 position;
    vec3 aim;
    vec3 rotation;
    float unk0x3c;
    float unk0x40;
    float unk0x44;
    float unk0x48;
    float distance;
    float unk0x50;
    float unk0x54;
    float unk0x58;
    float height;
    float unk0x60;
    float unk0x64;
    float unk0x68;
    float unk0x6c;
    float unk0x70;
    float unk0x74;
    float unk0x78;
    float unk0x7c;
    struct ActorStruct* target;
    float unk0x84;
};
extern struct CameraStruct gCamera;
//actors

struct ActorStruct{
    vec3 position;
    vec3 rotation;
    vec3 velocity;
    vec2 scale;
    vec3 shadowRot;
    vec3 unk0x38;
    vec3 unk0x44;
    u16 ModelID;
    u16 unk0x52;
    u16 unk0x54;
    u16 unk0x56;
    u16 unk0x58;
    u16 unk0x5a;
    u16 unk0x5c;
    u16 unk0x5e;
    u16 Flags;
    u16 EventFlag; //chests use as ID
    struct PlayerStats* player_pointer;
    void* ptr0x68;
};
extern struct ActorStruct BrianActor;
extern struct ActorStruct bossActor;
struct NPCStruct{
    u16 unk0x0;
    u16 unk0x2;
    vec3 unk0x4;
    float unk0x10;
    struct ActorStruct actor;
    void* ptr0x80;
};
extern struct NPCStruct npcData[16];


//controller
extern u8 controller_no;
extern u8 JoystickX, JoystickY;
extern u16 buttonPressed, pressedButton, ButtonCompliment;
extern OSMesgQueue cont_mesgq;
extern OSPfs pfs_dat[4];
extern OSContPad ControllerInput[4];
extern u8 save_slot_states[20][2];

//OS discrpancies (item from OS files with some differences)
/*
struct AlSndPlayer {
    struct ALPlayer node;
    struct ALEventQueue evtq;
    struct ALEvent nextEvent;
    struct ALSynth * drvr;
    s32 target;
    void* unk0x3c; //another pointer?
    void * sndState;
    s32 maxSounds;
    ALMicroTime frameTime;
    ALMicroTime nextDelta;
    ALMicroTime curTime;
};*/

struct Scheduler_q64 { // Modified(old?) OSSched for Quest64
    u16 unk0x0;
    u16 unk0x2;
    OSMesgQueue MQA;
    OSMesg MBuffA[8];
    OSMesgQueue MQB;
    OSMesg MBuffB[8];
    OSMesgQueue MQC;
    OSMesg MBuffC[8];
    OSMesgQueue MQD;
    OSMesg MBuffD[8];
    OSMesgQueue MQE;
    OSMesg MBuffE[8];
    OSMesgQueue MQF;
    OSMesg MBuffF[8];
    u32 unk0x154;
    OSThread ThreadA;
    OSThread ThreadB;
    OSThread ThreadC;/*
    OSScTask* TaskA;
    OSScTask* TaskB;
    OSScTask* TaskC;
    OSScTask* TaskD;
    OSScTask* TaskE;*/
    void* TaskA;
    void* TaskB;
    void* TaskC;
    void* TaskD;
    void* TaskE;
};

extern struct Scheduler_q64 Sched;
//inventory
extern u8 gLastInvSlot;


//unsorted
extern u32 D_8008F288;

extern u32 D_8008F620;
extern s16 D_8008F68C;

extern u32 D_80085A14;

//boss stuff
