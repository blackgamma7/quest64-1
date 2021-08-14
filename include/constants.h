//some common float values seen in code
#define PI_d 3.141592653589793d
#define TAU_d 6.283185307179586d
#define NegPI_d -3.141592653589793d
#define PIOver2_f 1.5707964f
#define PIOver2_d 1.5707963267948966d
#define NegPIOver2_d -1.5707963267948966d
#define PIOver4_f 0.7853982f
#define NegPIOver4_f -0.7853982f
#define PIOver8_d 0.39269908169872414d
#define Dtor_f 0.017453292f
#define Dtor_d 0.017453292519943295d
#define Dtor45_d 0.7853981633974483d
#define NegDtor45_d -0.7853981633974483d

//item #defines from the original repo

#define ITEM_TYPE_HEALING 	0x01
#define ITEM_TYPE_WINGS 	0x02
#define ITEM_TYPE_SPL_EFF 	0x03


#define ITEM_SPIRIT_LIGHT	0x00
#define ITEM_FRESH_BREAD	0x01
#define ITEM_HONEY_BREAD	0x02
#define ITEM_HEALING_POTION	0x03
#define ITEM_DRAGON_POTION	0x04
#define ITEM_DEW_DROP		0x05
#define ITEM_MINT_LEAVES	0x06
#define ITEM_HEROES_DRINK	0x07
#define ITEM_SILENT_FLUTE	0x08
#define ITEM_CELINES_BELL	0x09
#define ITEM_REPLICA		0x0A
#define ITEM_GIANTS_SHOE	0x0B
#define ITEM_SILVER_AMULET	0x0C
#define ITEM_GOLD_AMULET	0x0D
#define ITEM_WHITE_WINGS	0x0E
#define ITEM_YELLOW_WINGS	0x0F
#define ITEM_BLUE_WINGS		0x10
#define ITEM_GREEN_WINGS	0x11
#define ITEM_RED_WINGS		0x12
#define ITEM_BLACK_WINGS	0x13
#define ITEM_EARTH_ORB		0x14
#define ITEM_WIND_JADE		0x15
#define ITEM_WATER_JEWEL	0x16
#define ITEM_FIRE_RUBY		0x17
#define ITEM_ELTALE_BOOK	0x18
#define ITEM_GOAL_KEY		0x19

//map #defines from original repo

#define MAP_MELRODE 		0x0
#define MAP_DONDORAN 		0x1
#define MAP_HOLY_PLAIN 		0x2
#define MAP_DONDORAN_FLATS 	0x3
#define MAP_LARAPOOL 		0x4
#define MAP_WEST_CARMAGH 	0x5
#define MAP_NORMOON 		0x6
#define MAP_EAST_LIMELIN 	0x7
#define MAP_LIMELIN_TOWN 	0x8
#define MAP_DINDOM_DRIES 	0x9
#define MAP_SHAMWOOD 		0xA
#define MAP_BRANNOCH 		0xB
#define MAP_SKYE 		0xC
#define MAP_MONASTERY 		0xD
#define MAP_DONDORAN_CASTLE 	0xE
#define MAP_MELRODE_HOUSES	0xF
#define MAP_DONDORAN_HOUSES	0x10
#define MAP_LARAPOOL_HOUSES_1	0x11
#define MAP_LARAPOOL_HOUSES_2	0x12
#define MAP_WINDMILLS 		0x13
#define MAP_HOUSES_5 		0x14
#define MAP_LIMELIN_CASTLE 	0x15
#define MAP_HOUSES_6 		0x16
#define MAP_HOUSES_7 		0x17
#define MAP_SHAMWOOD_PYRAMID 	0x18
#define MAP_SHIPS 		0x19
#define MAP_BLUE_CAVE 		0x1A
#define MAP_CULL_HAZARD 	0x1B
#define MAP_BARAGOON_TUNNEL 	0x1C
#define MAP_BOIL_HOLE 		0x1D
#define MAP_BRANNOCH_CASTLE 	0x1E
#define MAP_CONNOR_FORTRESS 	0x1F
#define MAP_GLENCOE_FOREST 	0x20
#define MAP_WINDWARD_FOREST 	0x21
#define MAP_WORLD_OF_MAMMON 	0x22
#define MAP_NEPTY 		0x23

extern u8 binTbl[8]; //for bitwise setters and getters.
