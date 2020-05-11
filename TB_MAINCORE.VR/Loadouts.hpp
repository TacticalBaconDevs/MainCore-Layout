/*
    Einheiten für POPPY aus dem TBMod
*/
#define ADDCLASSLOADOUT(SIDE,NUM) class TBMod_poppy_##SIDE##_##NUM: All##SIDE {}

class CfgLoadouts
{
    class All
    {
        uniform[] = {"U_B_Protagonist_VR"};
        backpack[] = {};
        vest[] = {};
        headgear[] = {};
        goggles[] = {};
        nvgs[] = {};
        primary[] = {};
        secondary[] = {};
        launcher[] = {};
        binoculars[] = {};
        compass[] = {};
        gps[] = {};
        map[] = {};
        watch[] = {};
        magazines[] = {};
        items[] = {};
        face[] = {};
        postLoadout = "(group (_this # 0)) enableGunLights 'ForceOn'"; // Ki Taschenlampe
    };

    //========================================== ALLBLUFOR ==========================================// 
    class Allblufor : All
    {
        uniform[] = {"rhs_uniform_cu_ocp","rhs_uniform_cu_ocp_101st","rhs_uniform_cu_ocp_10th","rhs_uniform_cu_ocp_1stcav","rhs_uniform_cu_ocp_82nd"};
        backpack[] = {"B_rhsusf_B_BACKPACK", ""};
        vest[] = {"rhsusf_spcs_ocp_rifleman","rhsusf_spcs_ocp_crewman"};
        headgear[] = {"rhsusf_ach_helmet_ocp"};
        goggles[] = {"SFG_Tac_smallBeardD","UK3CB_G_Neck_Shemag_Oli","SFG_Tac_BeardD","UK3CB_G_Neck_Shemag_Tan","SFG_Tac_BeardO","rhsusf_shemagh_od","SFG_Tac_BeardG","rhsusf_shemagh_tan","rhsusf_shemagh2_tan",
                     "SFG_Tac_smallBeardG","rhsusf_shemagh2_od","UK3CB_G_Neck_Shemag","SFG_Tac_smallBeardO","rhsusf_shemagh_white","rhs_googles_black","G_Aviator","G_Shades_Blue","rhs_scarf","rhsusf_shemagh2_white"};
        primary[] = {{"rhs_weap_m16a4_carryhandle","rhsusf_acc_su230"},{"rhs_weap_m4a1_carryhandle","rhsusf_acc_acog2_usmc"}};
        secondary[] = {{"rhsusf_weap_glock17g4"}};
        binoculars[] = {"Binocular"};
        compass[] = {"ItemCompass"};
        gps[] = {"ItemGPS"};
        map[] = {"ItemMap"};
        watch[] = {"ItemWatch"};
        magazines[] = {
            {"rhs_mag_30Rnd_556x45_M855A1_EPM_Tracer_Red", 12},{"rhsusf_mag_17Rnd_9x19_JHP", 3},{"SmokeShell", 4},{"SmokeShellBlue", 1}
        };
        items[] = {
            {"ACE_packingBandage", 15},
            {"ACE_salineIV_500", 1},
            {"ACE_morphine", 5}
        };
    };
    
    //===================================== Poppy BLUFOR Units ======================================//

    // Leader
    class TBMod_poppy_blufor_01 : Allblufor
    {
        backpack[] = {"OPXT_multicam_210", "OPXT_scorpion_117"};
        vest[] = {"rhsusf_spcs_ocp_squadleader","rhsusf_spcs_ocp_teamleader_alt"};
        headgear[] = {"rhsusf_ach_helmet_ocp"};
        primary[] = {{"rhs_weap_m16a4_carryhandle","rhsusf_acc_eotech_552","rhsusf_acc_acog2_usmc","rhsusf_acc_su230"},{"rhs_weap_m4a1_carryhandle","rhsusf_acc_eotech_552","rhsusf_acc_acog2_usmc","rhsusf_acc_su230"}};
        binoculars[] = {"Rangefinder"};
        magazines[] += {{"SmokeShellGreen", 2},{"SmokeShellRed", 2}};
    };
    
    // Grenadier
    class TBMod_poppy_blufor_02 : Allblufor
    {
        primary[] = {{"rhs_weap_m4_m320","rhsusf_acc_su230"},{"rhs_weap_m4a1_m320","rhsusf_acc_acog2_usmc"}};
        vest[] = {"rhsusf_spcs_ocp_grenadier"};
        binoculars[] = {"Rangefinder"};
        magazines[] += {{"TB_rhs_mag_40mm_HEDP", 8},{"TB_rhs_mag_40mm_HE", 8}};
    };
    
    // MG-Schütze
    class TBMod_poppy_blufor_03 : Allblufor
    {
        vest[] = {"rhsusf_spcs_ocp_saw","rhsusf_spcs_ocp_machinegunner"};
        primary[] = {{"rhs_weap_m249_light_S","rhsusf_acc_acog_usmc"}};
        backpack[] = {"B_rhsusf_B_BACKPACK"};
        magazines[] = {
            {"rhsusf_200Rnd_556x45_soft_pouch_ucp", 4},{"rhsusf_mag_17Rnd_9x19_JHP", 3},{"SmokeShell", 4},{"SmokeShellBlue", 1}
        };
    };

    // Launcher SU
    class TBMod_poppy_blufor_04 : Allblufor    
    {
        launcher[] = {{"rhs_weap_M136"}};
    };

    ADDCLASSLOADOUT(blufor,05);
    ADDCLASSLOADOUT(blufor,06);
    ADDCLASSLOADOUT(blufor,07);
    ADDCLASSLOADOUT(blufor,08);
    ADDCLASSLOADOUT(blufor,09);
    ADDCLASSLOADOUT(blufor,10);


    //========================================== ALLOPFOR ==========================================// 
    class Allopfor : All {}

    //===================================== Poppy OPFOR Units ======================================//
    ADDCLASSLOADOUT(opfor,01);
    ADDCLASSLOADOUT(opfor,02);
    ADDCLASSLOADOUT(opfor,03);
    ADDCLASSLOADOUT(opfor,04);
    ADDCLASSLOADOUT(opfor,05);
    ADDCLASSLOADOUT(opfor,06);
    ADDCLASSLOADOUT(opfor,07);
    ADDCLASSLOADOUT(opfor,08);
    ADDCLASSLOADOUT(opfor,09);
    ADDCLASSLOADOUT(opfor,10);


    //========================================== ALLIND ==========================================// 
    class Allind : All {}

    //===================================== Poppy IND Units ======================================//
    ADDCLASSLOADOUT(ind,01);
    ADDCLASSLOADOUT(ind,02);
    ADDCLASSLOADOUT(ind,03);
    ADDCLASSLOADOUT(ind,04);
    ADDCLASSLOADOUT(ind,05);
    ADDCLASSLOADOUT(ind,06);
    ADDCLASSLOADOUT(ind,07);
    ADDCLASSLOADOUT(ind,08);
    ADDCLASSLOADOUT(ind,09);
    ADDCLASSLOADOUT(ind,10);

};
