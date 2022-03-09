/*
    Needed Mods:
    - CUP Weapons
    - CUP Vehicles
    - CUP Units
    - CUP Terrains Core
    - Cold War Rearmed III

    Optional Mods:
    - Cold War Rearmed III British Armed Forces
*/

// Enemy infantry classes
opfor_officer = "cwr3_b_officer82";		                        	// Officer
opfor_squad_leader = "cwr3_b_soldier82_sl";			        		// Squad Leader
opfor_team_leader = "cwr3_b_soldier82_tl";		                	// Team Leader
opfor_sentry = "cwr3_b_soldier82";			                		// Rifleman (Lite)
opfor_rifleman = "cwr3_b_soldier82_backpack";		                // Rifleman
opfor_rpg = "cwr3_b_soldier82_at_law";		                        // Rifleman (LAT)
opfor_grenadier = "cwr3_b_soldier82_gl";		                	// Grenadier
opfor_machinegunner = "cwr3_b_soldier82_ar_m16";		        	// Autorifleman
opfor_heavygunner = "cwr3_b_soldier82_mg";		                	// Heavy Gunner
opfor_marksman = "cwr3_b_soldier82_marksman";		                // Marksman
opfor_sharpshooter = "cwr3_b_soldier82_radio";			        	// Sharpshooter
opfor_sniper = "cwr3_b_soldier82_sniper";	                        // Sniper
opfor_at = "cwr3_b_soldier82_at_m47";	                            // AT Specialist
opfor_aa = "cwr3_b_soldier82_aa_redeye";                            // AA Specialist
opfor_medic = "cwr3_b_soldier82_medic";		                        // Medic
opfor_engineer = "cwr3_b_soldier82_engineer";		                // Engineer
opfor_paratrooper = "cwr3_b_soldier";			                	// Paratrooper

// Enemy vehicles used by secondary objectives.
opfor_mrap = "cwr3_b_m151";		                                	// M151 Jeep
opfor_mrap_armed = "cwr3_b_m151_m2";		                        // M151 Jeep (M2)
opfor_transport_helo = "cwr3_b_uh60";	                            // UH-60 Blackhawk
opfor_transport_truck = "cwr3_b_m939";		                        // M939
opfor_ammobox_transport = "cwr3_b_m939";	                        // M939 -> Has to be able to transport resource crates!
opfor_fuel_truck = "cwr3_b_m939_refuel";	                        // M939 (Refuel)
opfor_ammo_truck = "cwr3_b_m939_reammo";	                        // M939 (Ammo)
opfor_fuel_container = "B_Slingload_01_Fuel_F";                     // Huron Fuel Container
opfor_ammo_container = "B_Slingload_01_Ammo_F";                     // Huron Ammo Container
opfor_flag = "cwr3_Flag_USA";                                       // Flag

/* Adding a value to these arrays below will add them to a one out of however many in the array, random pick chance.
Therefore, adding the same value twice or three times means they are more likely to be chosen more often. */

/* Militia infantry. Lightweight soldier classnames the game will pick from randomly as sector defenders.
Think of them like garrison or military police forces, which are more meant to control the local population instead of fighting enemy armies. */
militia_squad = [
    "cwr3_b_soldier82_tl",		                                	// Team Leader
    "cwr3_b_soldier82_medic",		                                // Combat Life Saver
    "cwr3_b_soldier82_at_law",		                                // Rifleman (Light AT)
    "cwr3_b_soldier82",				                        		// Rifleman (Light)
    "cwr3_b_soldier82",				                        		// Rifleman (Light)
    "cwr3_b_soldier82"				                        		// Rifleman (Light)
];

// Militia vehicles. Lightweight vehicle classnames the game will pick from randomly as sector defenders. Can also be empty for only infantry milita.
militia_vehicles = [
    "cwr3_b_m151_m2"                                                // Land Rover 110 (M2) Woodland
];

// All enemy vehicles that can spawn as sector defenders and patrols at high enemy combat readiness (aggression levels).
opfor_vehicles = [
    "cwr3_b_m151_m2",		                                        // M151 (M2)
    "cwr3_b_hmmwv_m2",		                                        // HMMWV (M2)
    "cwr3_b_hmmwv_tow",		                                        // HMMWV TOW
    "cwr3_b_m113a1",		                                        // M113A1
    "cwr3_b_m113a3",		                                        // M113A3
    "cwr3_b_m2a2",		                                        	// M2A2 Bradley
    "cwr3_b_uk_fv432_gpmg",		                                	// FV432 Bulldog
    "cwr3_b_uk_fv432_peak",		                                	// FV432 Bulldog (Turret)
    "cwr3_b_uk_fv101",	                                            // FV101 Scorpion
    "cwr3_b_uk_fv107",	                                            // FV107 Scimitar
    "cwr3_b_m60a3",		                                        	// M60A3
    "cwr3_b_m60a3_tts",		                                        // M60A3 TTS
    "cwr3_b_m1",		                                        	// M1 Abrams
	"cwr3_b_uk_fv4201",		                                        // FV4201 Chieftain Mk8
    "cwr3_b_uk_fv4030",		                                        // FV4030 Challenger 1
    "cwr3_b_m1a1"			                                		// M1A1 Abrams
];

// All enemy vehicles that can spawn as sector defenders and patrols but at a lower enemy combat readiness (aggression levels).
opfor_vehicles_low_intensity = [
    "cwr3_b_m151_m2",		                                        // M151 (M2)
    "cwr3_b_hmmwv_m2",		                                        // HMMWV (M2)
    "cwr3_b_hmmwv_tow",		                                        // HMMWV TOW
    "cwr3_b_m113a1",		                                        // M113A1
    "cwr3_b_m113a3",		                                        // M113A3
    "cwr3_b_uk_fv432_gpmg",		                                	// FV432 Bulldog
    "cwr3_b_uk_fv432_peak"		                                	// FV432 Bulldog (Turret)
];

// All enemy vehicles that can spawn as battlegroups, either assaulting or as reinforcements, at high enemy combat readiness (aggression levels).
opfor_battlegroup_vehicles = [
    "cwr3_b_hmmwv_m2",		                                        // HMMWV (M2)
    "cwr3_b_hmmwv_tow",		                                        // HMMWV TOW
    "cwr3_b_m113a1",		                                        // M113A1
    "cwr3_b_m113a3",		                                        // M113A3
    "cwr3_b_m2a2",		                                        	// M2A2 Bradley
    "cwr3_b_uk_fv432_gpmg",		                                	// FV432 Bulldog
    "cwr3_b_uk_fv432_peak",		                                	// FV432 Bulldog (Turret)
    "cwr3_b_uk_fv101",	                                            // FV101 Scorpion
    "cwr3_b_uk_fv107",	                                            // FV107 Scimitar
    "cwr3_b_m60a3",		                                        	// M60A3
    "cwr3_b_m60a3_tts",		                                        // M60A3 TTS
    "cwr3_b_m1",		                                        	// M1 Abrams
    "cwr3_b_uk_fv4030",		                                        // FV4030 Challenger 1
    "cwr3_b_m1a1",			                                		// M1A1 Abrams
    "cwr3_b_ah1f",	                                                // AH-1S(MC)
    "cwr3_b_uk_lynx_ah7_cas",                                       // Lynx AH.7 (Rockets)
    "cwr3_b_uk_lynx_ah7_tow",                                       // Lynx AH.7 (TOW)
    "cwr3_b_uh60_x4_esss",	                                        // UH-60 (x4 ESSS)
    "cwr3_b_kiowa_m2"		                                        // OH-58D Kiowa
];

// All enemy vehicles that can spawn as battlegroups, either assaulting or as reinforcements, at lower enemy combat readiness (aggression levels).
opfor_battlegroup_vehicles_low_intensity = [
    "cwr3_b_m151_m2",		                                        // M151 (M2)
    "cwr3_b_hmmwv_m2",		                                        // HMMWV (M2)
    "cwr3_b_hmmwv_tow",		                                        // HMMWV TOW
    "cwr3_b_m113a1",		                                        // M113A1
    "cwr3_b_m113a3",		                                        // M113A3
    "cwr3_b_uk_fv432_gpmg",		                                	// FV432 Bulldog
    "cwr3_b_uk_fv432_peak",		                                	// FV432 Bulldog (Turret)
    "cwr3_b_uk_lynx_ah7_tow",                                       // Lynx AH.7 (TOW)
    "cwr3_b_uk_hc1",	                                            // Chinook HC-1
    "cwr3_b_uh60"		                                        	// UH-60
];

/* All vehicles that spawn within battlegroups (see the above 2 arrays) and also hold 8 soldiers as passengers.
If something in this array can't hold all 8 soldiers then buggy behaviours may occur.    */
opfor_troup_transports = [
    "cwr3_b_m113a1",		                                        // M113A1
    "cwr3_b_m113a3",		                                        // M113A3
    "cwr3_b_uk_fv432_gpmg",		                                	// FV432 Bulldog
    "cwr3_b_uk_fv432_peak",		                                	// FV432 Bulldog (Turret)
    "cwr3_b_uk_hc1",	                                            // Chinook HC-1
    "cwr3_b_uh60"		                                        	// UH-60
];

// Enemy rotary-wings that will need to spawn in flight.
opfor_choppers = [
    "cwr3_b_ah1f",	                                                // AH-1S(MC)
    "cwr3_b_uk_lynx_ah7_cas",                                       // Lynx AH.7 (Rockets)
    "cwr3_b_uk_lynx_ah7_tow",                                       // Lynx AH.7 (TOW)
    "cwr3_b_uh60_x4_esss",	                                        // UH-60 (x4 ESSS)
    "cwr3_b_kiowa_m2"		                                        // OH-58D Kiowa
];

// Enemy fixed-wings that will need to spawn in the air.
opfor_air = [
    "cwr3_b_a10",	                                                // A-10A Thunderbolt
	"cwr3_b_f4e",	                                                // F-4E Phantom
	"cwr3_b_uk_F4M",	                                            // F-4M Phantom
	"cwr3_b_usmc_f4s",	                                            // F-4S Phantom
	"cwr3_b_f16c",	                                                // F-16C Viper
    "cwr3_b_usmc_av8b",		                                        // AV-8B
    "cwr3_b_uk_frs1"	                                            // Sea Harrier FRS.1
];
