/*
    Needed Mods:
    - CUP Weapons
    - CUP Vehicles
    - CUP Units

    Optional Mods:
    - None
*/

/* Classnames of the guerilla faction which is friendly or hostile, depending on the civil reputation
Standard loadout of the units will be replaced with a scripted one, which depends on the guerilla strength, after spawn */
KP_liberation_guerilla_units = [
    "cwr3_i_soldier_mg",
    "cwr3_i_soldier_engineer",
    "cwr3_i_commander",
    "cwr3_i_soldier_medic",
    "cwr3_i_soldier",
    "cwr3_i_soldier_at_rpg75",
    "cwr3_i_soldier_sks",
    "cwr3_i_officer"
];

// Armed vehicles
KP_liberation_guerilla_vehicles = [
    "cwr3_i_uaz_dshkm",
    "cwr3_i_uaz_dshkm",
    "CUP_I_Datsun_PK_Random",
    "cwr3_i_bmp1",
    "cwr3_i_brdm2",
    "cwr3_i_btr60",
    "cwr3_i_btr40_dshkm",
    "cwr3_i_btr40_dshkm",
    "cwr3_i_m41a1",
    "cwr3_i_m41a1",
    "cwr3_i_t34",
    "cwr3_i_t55a"
];

/* Guerilla Equipment
There are 3 tiers for every category. If the strength of the guerillas will increase, they'll have higher tier equipment. */

/* Weapons - You've to add the weapons as array like
["Weaponclassname","Magazineclassname","magazine amount","optic","tripod"]
You can leave optic and tripod empty with "" */
KP_liberation_guerilla_weapons_1 = [
    ["CUP_srifle_CZ550","CUP_5x_22_LR_17_HMR_M",10,"",""],
    ["CUP_srifle_CZ550_rail","CUP_5x_22_LR_17_HMR_M",10,"",""],
    ["CUP_srifle_LeeEnfield","CUP_10x_303_M",10,"",""],
    ["CUP_srifle_LeeEnfield_rail","CUP_10x_303_M",10,"cup_optic_sb_11_4x20_pm","cup_bipod_harris_1a2_I"],
    ["CUP_glaunch_M79","CUP_1Rnd_HEDP_M203",16,"",""],
    ["CUP_arifle_AKM","CUP_30Rnd_762x39_AK47_M",4,"",""]
];

KP_liberation_guerilla_weapons_2 = [
    ["CUP_arifle_AK47_Early","CUP_30Rnd_762x39_AK47_M",4,"",""],
    ["CUP_arifle_AK47_Early","CUP_30Rnd_762x39_AK47_M",4,"",""],
    ["CUP_arifle_AKM","CUP_30Rnd_762x39_AK47_M",4,"",""],
    ["CUP_arifle_AK47_GL_Early","CUP_30Rnd_762x39_AK47_M",4,"",""],
    ["CUP_arifle_RPK74","CUP_75Rnd_TE4_LRT4_Green_Tracer_762x39_RPK_M",3,"","bipod_01_F_blk"],
    ["CUP_smg_SA61","CUP_50Rnd_B_765x17_Ball_M",5,"",""]
];

KP_liberation_guerilla_weapons_3 = [
    ["CUP_arifle_AKM","CUP_30Rnd_762x39_AK47_M",4,"",""],
    ["CUP_arifle_AK74","CUP_30Rnd_545x39_AK74M_M",4,"",""],
    ["CUP_arifle_AK74_GL","CUP_30Rnd_545x39_AK74M_M",4,"",""],
    ["CUP_arifle_RPK74","CUP_60Rnd_545x39_AK74M_M",3,"",""],
    ["CUP_arifle_AKM","CUP_30Rnd_762x39_AK47_M",4,"",""],
    ["CUP_lmg_PKM","CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M",2,"",""],
    ["CUP_srifle_SVD","CUP_10Rnd_762x54_SVD_M",12,"cup_optic_pso_3_open",""],
    ["CUP_srifle_SVD_wdl","CUP_10Rnd_762x54_SVD_M",12,"cup_optic_pso_3_open",""]
];

// Uniforms
KP_liberation_guerilla_uniforms_1 = [
    "CUP_U_I_Villager_03",
    "CUP_U_I_Woodlander03",
    "CUP_U_I_Woodlander_02",
    "CUP_U_I_Worker_02",
    "CUP_U_I_Villager_04",
    "CUP_U_I_Woodlander_01",
    "CUP_U_C_Woodlander_04",
    "CUP_U_C_Citizen_04",
    "CUP_U_C_Citizen_01"

];

KP_liberation_guerilla_uniforms_2 = [
    "cwr3_i_uniform_alpenflage",
    "cwr3_i_uniform_alpenflage_gloves",
    "cwr3_i_uniform_alpenflage_og107",
    "cwr3_i_uniform_alpenflage_rolled"
];

KP_liberation_guerilla_uniforms_3 = [
    "CUP_U_I_Gillie_Top",
    "cwr3_i_uniform_alpenflage",
    "cwr3_i_uniform_alpenflage_gloves",
    "cwr3_i_uniform_alpenflage_og107",
    "cwr3_i_uniform_alpenflage_rolled"
];

// Vests
KP_liberation_guerilla_vests_1 = [
    "CUP_V_I_Guerilla_Jacket",
    "V_LegStrapBag_coyote_F",
    "V_LegStrapBag_olive_F",
    "V_LegStrapBag_black_F",
    "V_Pocketed_coyote_F",
    "V_Pocketed_olive_F",
    "V_Pocketed_black_F",
    "V_BandollierB_cbr",
    "V_BandollierB_rgr",
    "V_BandollierB_khk",
    "V_BandollierB_oli",
    "V_BandollierB_blk",
    "V_BandollierB_ghex_F"
];

KP_liberation_guerilla_vests_2 = [
    "cwr3_i_vest_ammo_pouch",
    "cwr3_i_vest_chicom",
    "cwr3_i_vest_58webbing"
];

KP_liberation_guerilla_vests_3 = [
    "cwr3_i_vest_lbv",
    "cwr3_i_vest_lbv_mg",
    "cwr3_i_vest_lbv_mg_olive",
    "cwr3_i_vest_lbv_officer",
    "cwr3_i_vest_lbv_olive",
    "cwr3_i_vest_chicom",
    "cwr3_i_vest_58webbing"
];

// Headgear
KP_liberation_guerilla_headgear_1 = [
    "",
    "cwr3_i_headgear_boonie_alpenflage"
];

KP_liberation_guerilla_headgear_2 = [
    "H_Bandanna_blu",
    "H_Bandanna_sand",
    "H_Bandanna_gry",
    "H_Bandanna_camo",
    "H_Bandanna_cbr",
    "H_Bandanna_sgg",
    "H_Bandanna_khk",
    "CUP_H_C_Ushanka_02",
    "CUP_H_C_Ushanka_03",
    "CUP_H_C_Ushanka_04",
    "CUP_H_C_Ushanka_01",
    "cwr3_i_headgear_beret_02_black_fia",
    "cwr3_i_headgear_beret_02_green_fia",
    "cwr3_i_headgear_beret_01_brown_fia",
    "cwr3_i_headgear_beret_01_blue_fia",
    "cwr3_i_headgear_boonie_alpenflage"
];

KP_liberation_guerilla_headgear_3 = [
    "H_Shemag_olive",
    "H_Shemag_olive_hs",
    "H_Shemag_olive",
    "H_Booniehat_khk",
    "H_Booniehat_oli",
    "cwr3_i_headgear_boonie_alpenflage"
];

// Facegear. Applies for tier 2 and 3.
KP_liberation_guerilla_facegear = [
    "",
    "",
    "",
    "G_Bandanna_beast",
    "G_Bandanna_tan",
    "G_Bandanna_khk",
    "G_Bandanna_oli",
    "G_Bandanna_blk"
];
