#define SCOPE_PUBLIC scope = 2; \
scopeArsenal = 2; \
scopeCurator = 2
#define SCOPE_HIDDEN scope = 1; \
scopeArsenal = 0; \
scopeCurator = 0
#define SCOPE_PRIVATE scope = 0; \
scopeArsenal = 0; \
scopeCurator = 0

#define DBUG_TEX_RED "#(rgb,8,8,3)color(1,0,0,1)"
#define DBUG_TEX_GRN "#(rgb,8,8,3)color(0,1,0,1)"
#define DBUG_TEX_BLU "#(rgb,8,8,3)color(0,0,1,1)"
#define DBUG_TEX_PUR "#(rgb,8,8,3)color(1,0,1,1)"
#define DBUG_TEX_YEL "#(rgb,8,8,3)color(1,1,0,1)"

// Weapon Types
#define TYPE_WEAPON_PRIMARY 1
#define TYPE_WEAPON_HANDGUN 2
#define TYPE_WEAPON_SECONDARY 4
// Magazine Types
#define TYPE_MAGAZINE_HANDGUN_AND_GL 16
#define TYPE_MAGAZINE_PRIMARY_AND_THROW 256
#define TYPE_MAGAZINE_SECONDARY_AND_PUT 512
#define TYPE_MAGAZINE_MISSILE 768
// More Types
#define TYPE_BINOCULAR_AND_NVG 4096
#define TYPE_WEAPON_VEHICLE 65536
#define TYPE_ITEM 131072
// Item Types
#define TYPE_DEFAULT 0
#define TYPE_MUZZLE 101
#define TYPE_OPTICS 201
#define TYPE_FLASHLIGHT 301
#define TYPE_BIPOD 302
#define TYPE_FIRST_AID_KIT 401
#define TYPE_FINS 501
#define TYPE_BREATHING_BOMB 601
#define TYPE_NVG 602
#define TYPE_GOGGLE 603
#define TYPE_SCUBA 604
#define TYPE_HEADGEAR 605
#define TYPE_FACTOR 607
#define TYPE_RADIO 611
#define TYPE_HMD 616
#define TYPE_BINOCULAR 617
#define TYPE_MEDIKIT 619
#define TYPE_TOOLKIT 620
#define TYPE_UAV_TERMINAL 621
#define TYPE_VEST 701
#define TYPE_UNIFORM 801
#define TYPE_BACKPACK 901

#define TYPE_ACE_INTERACT_ACTION 0
#define TYPE_ACE_INTERACT_SELF 1

#define HEARING_PROTECTION_CREW ace_hearing_lowerVolume = 0.6; \
ace_hearing_protection = 0.85

// Linked Items
#define LINKED_ITEMS "ItemMap", "ItemCompass", "ItemGPS", "ItemWatch"
#define LINKED_ITEMS_RADIO LINKED_ITEMS, "ItemRadio"

// Sides
#define OPFOR 0
#define BLUFOR 1
#define INDEP 2
#define CIVILIAN 3
#define ALL_SIDES OPFOR, BLUFOR, INDEP, CIVILIAN

// NVGs
#define VISION_NORMAL 0
#define VISION_NV 1
#define VISION_THERMAL 2
#define WHOT 0
#define BHOT 1
#define GHOT 2
#define GBHOT 3
#define RHOT 4
#define RBHOT 5

// Booleans
#define TRUE 1
#define FALSE 0

#define IGUI_SAVEX 0
#define IGUI_SAVEY 1
#define IGUI_SAVEW 2
#define IGUI_SAVEH 3
#define IGUI_SAVEALL IGUI_SAVEX, IGUI_SAVEY, IGUI_SAVEW, IGUI_SAVEH

// ACE Arsenal Tab values
// Left Tabs
#define ARSENAL_TAB_PRIMARY 0
#define ARSENAL_TAB_HANDGUNS 1
#define ARSENAL_TAB_LAUNCHERS 2
#define ARSENAL_TAB_UNIFORMS 3
#define ARSENAL_TAB_VESTS 4
#define ARSENAL_TAB_BACKPACKS 5
#define ARSENAL_TAB_HEADGEAR 6
#define ARSENAL_TAB_GOGGLES 7
#define ARSENAL_TAB_NVGS 8
#define ARSENAL_TAB_BINOCULARS 9
#define ARSENAL_TAB_MAP 10
#define ARSENAL_TAB_GPS 11
#define ARSENAL_TAB_RADIOS 12
#define ARSENAL_TAB_COMPASS 13
#define ARSENAL_TAB_WATCH 14
// Right Tabs
#define ARSENAL_TAB_OPTICS 0
#define ARSENAL_TAB_SIDE 1
#define ARSENAL_TAB_MUZZLES 2
#define ARSENAL_TAB_BIPODS 3
#define ARSENAL_TAB_MAGAZINES 4
#define ARSENAL_TAB_GRENADES 5
#define ARSENAL_TAB_EXPLOSIVES 6
#define ARSENAL_TAB_MISC 7