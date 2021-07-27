typedef float vec2[2]; //for 2d vectors
typedef float vec3[3]; //for 3d vectors
typedef float MtxF[4][4]; //4x4 float matricies

//shadow
typedef struct ShadowTransform{
    vec3 pos;
    vec3 rot;
    float scale;
};
extern ShadowTransform shadowTransArray[64];
extern u32 ShadowTally;

//inventoty
extern u8 LastInvSlot;
extern s8 InventorySlots[150];


//player/enemy stats
typedef struct playerStats{
    u16 unk0x0; //ID?
    u16 unk0x2;
    s16 HP[2]; //curr,Max
    s16 MP[2]; //curr,Max
    s16 AGL;
    s16 DEF;
    s32 ElementTally;
    u32 unk0x14;
    vec3 position;
    u8 Elements[4];
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
//chest

extern u8 collectedChestsBitfield[32];

//camera
typedef struct CameraStruct{
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
    u32 unk0x80;
};
extern struct CameraStruct gCamera;