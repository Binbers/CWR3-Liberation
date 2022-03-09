/*
    Needed Mods:
    - CUP Weapons
    - CUP Vehicles
    - CUP Units
    - CUP Terrains Core
    - Cold War Rearmed III

    Optional Mods:
    - None
*/

// Enemy infantry classes
opfor_officer = "cwr3_o_officer82";	                                    // Officer
opfor_squad_leader = "cwr3_o_soldier82_sl";	                            // Squad Leader
opfor_team_leader = "cwr3_o_soldier82_tl";	                            // Team Leader
opfor_sentry = "cwr3_o_soldier82";	                                    // Rifleman (Lite)
opfor_rifleman = "cwr3_o_soldier82_backpack";	                        // Rifleman
opfor_rpg = "cwr3_o_soldier82_at_rpg7";                                 // Rifleman (LAT)
opfor_grenadier = "cwr3_o_soldier82_gl";	                            // Grenadier
opfor_machinegunner = "cwr3_o_soldier82_ar";	                        // Autorifleman
opfor_heavygunner = "cwr3_o_soldier82_mg";	                            // Heavy Gunner
opfor_marksman = "cwr3_o_soldier82_marksman";                           // Marksman
opfor_sharpshooter = "cwr3_o_soldier82_radio";		                    // Sharpshooter
opfor_sniper = "cwr3_o_soldier82_sniper";                               // Sniper
opfor_at = "cwr3_o_soldier82_at_at4";                                   // AT Specialist
opfor_aa = "cwr3_o_soldier82_aa_strela";                                // AA Specialist
opfor_medic = "cwr3_o_soldier82_medic";                                 // Medic
opfor_engineer = "cwr3_o_soldier82_engineer";                           // Engineer
opfor_paratrooper = "cwr3_o_soldier";                            		// Paratrooper

// Enemy vehicles used by secondary objectives.
opfor_mrap = "cwr3_o_uaz";		                                    	// UAZ
opfor_mrap_armed = "cwr3_o_brdm2";	                                    // BRDM-2
opfor_transport_helo = "cwr3_o_mi8_amt";	                            // Mi-8AMT
opfor_transport_truck = "cwr3_o_ural";		                            // Ural
opfor_ammobox_transport = "cwr3_o_ural_open";	                        // Ural (Open) -> Has to be able to transport resource crates!
opfor_fuel_truck = "cwr3_o_ural_refuel";	                            // Ural (Refuel)
opfor_ammo_truck = "cwr3_o_ural_reammo";	                            // Ural (Ammo)
opfor_fuel_container = "B_Slingload_01_Fuel_F";                         // Huron Fuel Container
opfor_ammo_container = "B_Slingload_01_Ammo_F";                         // Huron Ammo Container
opfor_flag = "cwr3_Flag_USSR";                                          // Flag

/* Adding a value to these arrays below will add them to a one out of however many in the array, random pick chance.
Therefore, adding the same value twice or three times means they are more likely to be chosen more often. */

/* Militia infantry. Lightweight soldier classnames the game will pick from randomly as sector defenders.
Think of them like garrison or military police forces, which are more meant to control the local population instead of fighting enemy armies. */
militia_squad = [
    "cwr3_o_soldier82",		                                            // Militiaman
    "cwr3_o_soldier82",		                                            // Militiaman
    "cwr3_o_soldier82_at_rpg7",		                                    // Militiaman (RPG-7)
    "cwr3_o_soldier82_aa_strela",	                                    // AA Specialist
    "cwr3_o_soldier82_at_rpg18",	                                    // Militiaman (RPG-18)
    "cwr3_o_soldier82_ar",		                                    	// Militia Automatic Rifleman
    "cwr3_o_soldier82_gl",		                                    	// Militia Grenadier
    "cwr3_o_soldier82_medic",	                                        // Militia Medic
    "cwr3_o_soldier82_engineer"	                                        // Militia Engineer
];

// Militia vehicles. Lightweight vehicle classnames the game will pick from randomly as sector defenders. Can also be empty for only infantry milita.
militia_vehicles = [
    "cwr3_o_uaz_dshkm"                                                  // UAZ (DShKM)
];

// All enemy vehicles that can spawn as sector defenders and patrols at high enemy combat readiness (aggression levels).
opfor_vehicles = [
    "cwr3_o_brdm2",	                                                    // BRDM-2
    "cwr3_o_bmp2_zu23",                                                 // BMP-2 (ZU-23)
    "cwr3_o_mtlb_pk",		                                            // MTLB (PK)
    "cwr3_o_brdm2_atgm",	                                            // BRDM-2 (ATGM)
    "cwr3_o_btr60",	                                                    // BTR-60PB
    "cwr3_o_btr60",	                                                    // BTR-60PB
    "cwr3_o_btr60",	                                                    // BTR-60PB
    "cwr3_o_bmp1",	                                                    // BMP-1
    "cwr3_o_bmp1",	                                                    // BMP-1
    "cwr3_o_bmp1",	                                                    // BMP-1
    "cwr3_o_bmp1p",	                                                    // BMP-1P
    "cwr3_o_bmp1p",	                                                    // BMP-1P
    "cwr3_o_bmp2",	                                                    // BMP-2
    "cwr3_o_zsu",	                                                    // ZSU-23-4
    "cwr3_o_zsu",	                                                    // ZSU-23-4
	"cwr3_o_vmf_pt76b",													// PT-76B
	"cwr3_o_vmf_pt76b",													// PT-76B
	"cwr3_o_vmf_pt76b",													// PT-76B
	"cwr3_o_vmf_pt76b",													// PT-76B
    "cwr3_o_t55a",	                                                    // T-55A
    "cwr3_o_t55a",	                                                    // T-55A
    "cwr3_o_t55amv",	                                                // T-55AMV
	"cwr3_o_t64b",														// T-64B
	"cwr3_o_t64bv",														// T-64BV
    "cwr3_o_t72a",	                                                    // T-72A
    "cwr3_o_t72b1"	                                                    // T-72B1
];

// All enemy vehicles that can spawn as sector defenders and patrols but at a lower enemy combat readiness (aggression levels).
opfor_vehicles_low_intensity = [
    "cwr3_o_brdm2",	                                                    // BRDM-2
    "cwr3_o_uaz_dshkm",                                                 // UAZ (DShKM)
    "cwr3_o_uaz_spg9",		                                            // UAZ (SPG-9)
    "cwr3_o_ural_zu23",		                                            // Ural (ZU-23)
    "cwr3_o_bmp1",	                                                    // BTR-60PB
	"cwr3_o_vmf_pt76b",													// PT-76B
    "cwr3_o_mtlb_pk"	                                                // MT-LB LV
];

// All enemy vehicles that can spawn as battlegroups, either assaulting or as reinforcements, at high enemy combat readiness (aggression levels).
opfor_battlegroup_vehicles = [
    "cwr3_o_brdm2",	                                                    // UAZ (AA)
    "cwr3_o_uaz_dshkm",                                                 // UAZ (DShKM)
    "cwr3_o_mtlb_pk",		                                            // UAZ (AGS-30)
    "cwr3_o_uaz_spg9",		                                            // UAZ (SPG-9)
    "cwr3_o_btr60",	                                                    // BTR-60PB
    "cwr3_o_btr60",	                                                    // BTR-60PB
    "cwr3_o_btr60",	                                                    // BTR-60PB
    "cwr3_o_btr60",	                                                    // BTR-60PB
    "cwr3_o_bmp1",	                                                    // BMP-1
    "cwr3_o_bmp1",	                                                    // BMP-1
    "cwr3_o_bmp1",	                                                    // BMP-1
    "cwr3_o_bmp1p",	                                                    // BMP-1
    "cwr3_o_bmp2",	                                                    // BMP-2
    "cwr3_o_zsu",	                                                    // ZSU-23-4
    "cwr3_o_zsu",	                                                    // ZSU-23-4
	"cwr3_o_vmf_pt76b",													// PT-76B
	"cwr3_o_vmf_pt76b",													// PT-76B
	"cwr3_o_vmf_pt76b",													// PT-76B
    "cwr3_o_t55a",	                                                    // T-55
    "cwr3_o_t55a",	                                                    // T-55
	"cwr3_o_t64b",														// T-64B
	"cwr3_o_t64bv",														// T-64BV
    "cwr3_o_t72a",	                                                    // T-72A
    "cwr3_o_t72b1",	                                                    // T-72B1
    "cwr3_o_mi24d",	                                                    // Mi-24D
    "cwr3_o_mi24d",	                                                    // Mi-24D
    "cwr3_o_mi24P",	                                                    // Mi-24P
    "cwr3_o_mi8_mtv3",                                                  // Mi-8MTV3
    "cwr3_o_mi8_mtv3"	                                                // Mi-8MTV3
];

// All enemy vehicles that can spawn as battlegroups, either assaulting or as reinforcements, at lower enemy combat readiness (aggression levels).
opfor_battlegroup_vehicles_low_intensity = [
    "cwr3_o_brdm2",	                                                    // BRDM-2S
    "cwr3_o_uaz_dshkm",                                                 // UAZ (DShKM)
    "cwr3_o_uaz_spg9",		                                            // UAZ (SPG-9)
    "cwr3_o_ural_zu23",		                                            // Ural (ZU-23)
    "cwr3_o_btr60",	                                                    // BTR-60PB
    "cwr3_o_bmp1",	                                                    // BMP-1
    "cwr3_o_mi24d",	                                                    // Mi-24D
    "cwr3_o_mi8_mtv3",                                                  // Mi-8MTV3
    "cwr3_o_mi8_amt"                                                    // Mi-8AMT
];

/* All vehicles that spawn within battlegroups (see the above 2 arrays) and also hold 8 soldiers as passengers.
If something in this array can't hold all 8 soldiers then buggy behaviours may occur.	*/
opfor_troup_transports = [
    "cwr3_o_bmp1",	                                                    // BMP-1
    "cwr3_o_mi24d",	                                                    // Mi-24D
    "cwr3_o_mi8_amt",                                                   // Mi-8AMT
    "cwr3_o_btr60",	                                                    // BTR-60PB
    "cwr3_o_bmp1p",	                                                    // BMP-1P
    "cwr3_o_bmp2",	                                                    // BMP-2
    "cwr3_o_mtlb_pk",	                                                // MT-LB LV
    "cwr3_o_mi8_mtv3",                                                  // Mi-8MTV3
    "cwr3_o_mi24p",		                                            	// Mi-24P
    "cwr3_o_mi24v"	                                                    // Mi-24V
];

// Enemy rotary-wings that will need to spawn in flight.
opfor_choppers = [
    "cwr3_o_mi24v",	                                                    // Mi-24V
    "cwr3_o_mi24d",	                                                    // Mi-24D
    "cwr3_o_mi24p",		                                            	// Mi-24P
    "cwr3_o_mi8_mtv3",                                                  // Mi-8MTV3
    "cwr3_o_mi8_amt"	                                                // Mi-8AMT
];

// Enemy fixed-wings that will need to spawn in the air.
opfor_air = [
    "cwr3_o_mig23",		                                            	// MiG-23 Flogger-K
	"cwr3_o_mig27",		                                            	// MiG-27 Flogger-J
	"cwr3_o_su25",		                                            	// Su-25 Frogfoot
    "cwr3_o_su17m4"		                                            	// Su-17M4 Fitter
];
