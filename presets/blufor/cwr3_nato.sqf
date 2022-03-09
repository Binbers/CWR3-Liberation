/*
    Needed Mods:
    - CUP Weapons
    - CUP Vehicles
    - CUP Units
    - CUP Terrains Core
    - Cold War Rearmed III

    Optional Mods:
    - Cold War Rearmed III - United States Marine Corps Expansion
    - Cold War Rearmed III - British Armed Forces Expansion
*/

/*
    --- Support classnames ---
    Each of these should be unique.
    The same classnames for different purposes may cause various unpredictable issues with player actions.
    Or not, just don't try!
*/
FOB_typename = "Gue_WarfareBBarracks";		                            // This is the main FOB HQ building.
FOB_box_typename = "B_Slingload_01_Cargo_F";                            // This is the FOB as a container.
FOB_truck_typename = "cwr3_b_hmmwv_transport";                          // This is the FOB as a vehicle.
Arsenal_typename = "cwr3_crate_basicweapons_us";                        // This is the virtual arsenal as portable supply crates.
Respawn_truck_typename = "cwr3_b_m577_hq";		                		// This is the mobile respawn truck.
huron_typename = "cwr3_b_usmc_ch53e";                          	        // This is Spartan 01, a multipurpose mobile respawn as a helicopter.
crewman_classname = "cwr3_b_soldier_crew";		                		// This defines the crew for vehicles.
pilot_classname = "cwr3_b_soldier_pilot";                               // This defines the pilot for helicopters.
guerilla_classname = "cwr3_i_commander";                            	// This defines the pilot for helicopters.
KP_liberation_little_bird_classname = "cwr3_b_uh60_ffv";  				// These are the little birds which spawn on the Freedom or at Chimera base.
KP_liberation_boat_classname = "cwr3_b_uk_hc1";		                	// These are the boats which spawn at the stern of the Freedom.
KP_liberation_jet_classname = "cwr3_b_ah1f";		  					// Other aircraft
KP_liberation_truck_classname = "cwr3_b_m939";	 	                	// These are the trucks which are used in the logistic convoy system.
KP_liberation_small_storage_building = "ContainmentArea_02_sand_F";     // A small storage area for resources.
KP_liberation_large_storage_building = "ContainmentArea_01_sand_F";     // A large storage area for resources.
KP_liberation_recycle_building = "land_cwr3_repair_center";	        	// The building defined to unlock FOB recycling functionality.
KP_liberation_air_vehicle_building = "USMC_WarfareBAircraftFactory";    // The building defined to unlock FOB air vehicle functionality.
KP_liberation_heli_slot_building = "USMC_WarfareBUAVterminal";			// The helipad used to increase the GLOBAL rotary-wing cap.
KP_liberation_plane_slot_building = "USMC_WarfareBVehicleServicePoint"; // The hangar used to increase the GLOBAL fixed-wing cap.
KP_liberation_supply_crate = "CargoNet_01_box_F";                       // This defines the supply crates, as in resources.
KP_liberation_ammo_crate = "B_CargoNet_01_ammo_F";                      // This defines the ammunition crates.
KP_liberation_fuel_crate = "CargoNet_01_barrels_F";                     // This defines the fuel crates.

/*
    --- Friendly classnames ---
    Each array below represents one of the 7 pages within the build menu.
    Format: ["vehicle_classname",supplies,ammunition,fuel],
    Example: ["B_APC_Tracked_01_AA_F",300,150,150],
    The above example is the NATO IFV-6a Cheetah, it costs 300 supplies, 150 ammunition and 150 fuel to build.
    IMPORTANT: The last element inside each array must have no comma at the end!
*/
infantry_units = [
    ["cwr3_b_soldier",10,0,0],			                        		// Rifleman
	["cwr3_b_soldier_m14",10,0,0],			                        	// Rifleman (M14)
    ["cwr3_b_soldier_at_law",15,0,0],		                        	// Rifleman (LAW)
    ["cwr3_b_soldier_gl",12,0,0],		                        		// Grenadier
	["cwr3_b_soldier_mg",12,0,0],		                        		// Machinegunner
    ["cwr3_b_soldier_ar",15,0,0],		                        		// Automatic Rifleman (M249)
    ["cwr3_b_soldier_marksman",15,0,0],			                		// Designated Marksman
    ["cwr3_b_soldier_at_m47",25,12,0],		                        	// AT Specialist (M47)
    ["cwr3_b_soldier_at_m67",20,2,0],		                        	// AT Specialist (M67)
    ["cwr3_b_soldier_aa_redeye",20,2,0],	                        	// AA Specialist (Redeye)
    ["cwr3_b_soldier_aa_stinger",25,5,0],	                        	// AA Specialist (Stinger)
    ["cwr3_b_soldier_medic",15,0,0],			                		// Medic
    ["cwr3_b_soldier_engineer",15,0,0],			                		// Engineer
    ["cwr3_b_soldier_sniper",20,2,0],	                                // Sniper (M21)
    ["cwr3_b_soldier_spotter",10,0,0],                                  // Spotter
    ["cwr3_b_soldier_crew",5,0,0],		                        		// Crewman
    ["cwr3_b_soldier_pilot",5,0,0],	                                    // Pilot
	["cwr3_b_blackop",15,0,0],			                                // Black Op (Night, MP5SD)
    ["cwr3_b_blackop_laser",20,0,0],                                    // Black Op (Night, Laser)
    ["cwr3_b_blackop_mp5a5",10,0,0],			                        // Black Op (Night, MP5A5)
    ["cwr3_b_blackop_uzi",10,0,0],				                        // Black Op (Night, Uzi)
    ["cwr3_b_blackop_day",15,0,0],				                        // Black Op (Day, MP5SD)
    ["cwr3_b_blackop_day_mp5a5",10,0,0],		                        // Black Op (Day, MP5A5)
    ["cwr3_b_blackop_day_uzi",10,0,0],			                        // Black Op (Day, Uzi)
    ["cwr3_b_blackop_day_xms",15,0,0],                                  // Black Op (Day, XMS)
    ["cwr3_b_soldier82",5,0,0],				                        	// Rifleman
	["cwr3_b_soldier82_m14",5,0,0],				                        // Rifleman (M14)
    ["cwr3_b_soldier82_at_law",7,0,0],		                        	// Rifleman (LAW)
    ["cwr3_b_soldier82_gl",6,0,0],		                        		// Grenadier
	["cwr3_b_soldier82_mg",6,0,0],		                        		// Machinegunner
    ["cwr3_b_soldier82_ar_m16",6,0,0],		                        	// Automatic Rifleman (M249)
    ["cwr3_b_soldier82_marksman",7,0,0],			                	// Designated Marksman
    ["cwr3_b_soldier82_at_m47",12,12,0],		                        // AT Specialist (M47)
    ["cwr3_b_soldier82_at_m67",10,2,0],		                        	// AT Specialist (M67)
    ["cwr3_b_soldier82_aa_redeye",10,2,0],	                        	// AA Specialist (Redeye)
    ["cwr3_b_soldier82_aa_stinger",12,5,0],	                        	// AA Specialist (Stinger)
    ["cwr3_b_soldier82_medic",7,0,0],			                		// Medic
    ["cwr3_b_soldier82_engineer",7,0,0],			                	// Engineer
    ["cwr3_b_ranger",5,0,0],				                        	// Rifleman
	["cwr3_b_ranger_m14",5,0,0],				                        // Rifleman (M14)
	["cwr3_b_ranger_xms",5,0,0],										// Rifleman (XMS)
    ["cwr3_b_ranger_at_law",7,0,0],			                        	// Rifleman (LAW)
    ["cwr3_b_ranger_gl",6,0,0],			                        		// Grenadier
	["cwr3_b_ranger_mg",6,0,0],			                        		// Machinegunner
    ["cwr3_b_ranger_ar",7,0,0],				                        	// Automatic Rifleman (M249)
    ["cwr3_b_ranger_marksman",7,0,0],				                	// Designated Marksman
    ["cwr3_b_ranger_at_m47",12,12,0],			                        // AT Specialist (M47)
    ["cwr3_b_ranger_at_m67",10,2,0],		                        	// AT Specialist (M67)
    ["cwr3_b_ranger_at_carlgustaf",12,2,0],		                        // AT Specialist (CG)
    ["cwr3_b_ranger_aa_redeye",10,2,0],		                        	// AA Specialist (Redeye)
    ["cwr3_b_ranger_aa_stinger",12,5,0],	                        	// AA Specialist (Stinger)
    ["cwr3_b_ranger_medic",7,0,0],				                		// Medic
    ["cwr3_b_ranger_engineer",7,0,0],				                	// Engineer
    ["cwr3_b_ranger_sniper",10,2,0],	                                // Sniper (M21)
    ["cwr3_b_ranger_spotter",5,0,0],	                                // Spotter
    ["cwr3_b_uk_soldier",5,0,0],				                        // Rifleman
    ["cwr3_b_uk_soldier_at_law",7,0,0],			                        // Rifleman (LAW)
    ["cwr3_b_uk_soldier_tl",6,0,0],				                        // Team Leader
    ["cwr3_b_uk_soldier_ar",6,0,0],				                        // Automatic Rifleman (Bren)
    ["cwr3_b_uk_soldier_mg",8,0,0],				                        // Machinegunner
    ["cwr3_b_uk_soldier_marksman",7,0,0],				                // Designated Marksman
    ["cwr3_b_uk_soldier_at_carlgustaf",12,5,0],	                        // AT Specialist (CG)
    ["cwr3_b_uk_soldier_aa_javelin",12,5,0],	                        // AA Specialist (Javelin)
    ["cwr3_b_uk_soldier_medic",7,0,0],					                // Medic
    ["cwr3_b_uk_soldier_engineer",7,0,0],				                // Engineer
    ["cwr3_b_uk_soldier_sniper",10,2,0],		                        // Sniper (L42)
    ["cwr3_b_uk_soldier_spotter",5,0,0],	                            // Spotter
    ["cwr3_b_uk_soldier_crew",5,0,0],			                        // Crewman
    ["cwr3_b_uk_soldier_pilot",5,0,0],	                                // Pilot
    ["cwr3_b_uk_soldier_sas_night",15,0,0],                             // SAS Trooper (Night, MP5SD)
    ["cwr3_b_uk_soldier_sas_laser_night",20,0,0],                       // SAS Trooper (Night, Laser)
    ["cwr3_b_uk_soldier_sas",15,0,0],	                                // SAS Trooper (Day, M16A1)
    ["cwr3_b_uk_soldier_sas_laser",20,0,0],				                // SAS Trooper (Day, Laser)
    ["cwr3_b_usmc_soldier",10,0,0],				                        // Rifleman
    ["cwr3_b_usmc_soldier_at_law",15,0,0],		                        // Rifleman (LAW)
    ["cwr3_b_usmc_soldier_gl",12,0,0],			                        // Grenadier
    ["cwr3_b_usmc_soldier_ar_m16",12,0,0],		                        // Automatic Rifleman (M16)
    ["cwr3_b_usmc_soldier_mg",17,0,0],			                        // Machinegunner
    ["cwr3_b_usmc_soldier_marksman",15,0,0],			                // Designated Marksman
    ["cwr3_b_usmc_soldier_at_m67",20,2,0],		                        // AT Specialist (M67)
    ["cwr3_b_usmc_soldier_at_smaw",25,10,0],	                        // AT Specialist (SMAW)
    ["cwr3_b_usmc_soldier_aa_stinger",25,5,0],	                        // AA Specialist (Stinger)
    ["cwr3_b_usmc_soldier_medic",15,0,0],			        			// Medic
    ["cwr3_b_usmc_soldier_engineer",15,0,0],			        		// Engineer
    ["cwr3_b_usmc_soldier_sniper",20,2,0],	                        	// Sniper (M21)
    ["cwr3_b_usmc_soldier_spotter",10,0,0],                             // Spotter
    ["cwr3_b_usmc_soldier_crew",5,0,0]		                        	// Crewman
];

light_vehicles = [
    ["cwr3_b_m151",25,0,25],		                                // M151
    ["cwr3_b_m151_m2",25,30,25],		                        	// M151 (M2)
    ["cwr3_b_uk_landrover",37,0,50],		                        // Landrover
    ["CUP_B_LR_MG_GB_W",37,30,50],		                        	// Landrovr (M2)
	["CUP_I_LR_AA_RACS",49,100,50],									// Landrover (SAM)
    ["cwr3_b_hmmwv",37,0,25],			                        	// HMMWV
    //["cwr3_b_hmmwv_transport",37,0,25],		                    // HMMWV (Softtop)
    ["cwr3_b_hmmwv_m2",37,30,25],	                                // HMMWV M2
    ["cwr3_b_hmmwv_tow",37,50,25],	                                // HMMWV TOW
    ["cwr3_b_hmmwv_mk19",37,40,25],	                                // HMMWV MK19
    ["CUP_B_HMMWV_Avenger_USMC",125,150,50],	                    // HMMWV Avenger
    ["cwr3_b_m163",100,175,130],		                        	// M163 PIVADS
    ["cwr3_b_m113a1",80,30,100],	                                // M113A1
    ["cwr3_b_m113a1_mev",60,0,100],	                                // M113A1 Ambulance
	["cwr3_b_m113a3",100,30,130],	                                // M113A3
	["cwr3_b_m113a3_mev",80,0,130],	                                // M113A3 Ambulance
    ["cwr3_b_uk_fv432_gpmg",100,30,130],                            // FV432 (GPMG)
    ["cwr3_b_uk_fv432_peak",100,50,130],                            // FV432 (Turret)
    ["CUP_B_FV432_Mortar",100,150,130],		                        // FV432 (Mortar)
    ["cwr3_b_m939",50,0,75],		                                // M939
    ["cwr3_b_m939_open",50,0,75],	                                // M939 (Open)
	["cwr3_b_m939_empty",25,0,75],	                                // M939 (Cargo)
    ["cwr3_b_uk_fv620_transport",50,0,75],		                	// FV620 Stalwart
    ["cwr3_b_zodiac",25,0,100],		                                // Zodiac
    ["cwr3_b_boat",70,50,100],			                        	// Mark II PBR
    ["CUP_B_Frigate_ANZAC",3000,5000,4500]	                        // Frigate AKA Dump all your supplies
];

heavy_vehicles = [
    ["cwr3_b_usmc_lav25m240",100,130,130],	                        // LAV-25A1
    ["cwr3_b_uk_fv510",100,160,100],		                        // Warrior
    ["cwr3_b_usmc_aav",100,150,150],		                        // AAVP7 A1
    ["cwr3_b_m2a2",120,150,150],	                                // M2A2 Bradley
    ["cwr3_b_uk_fv101",120,130,150],			                	// FV101 Scorpion
    ["cwr3_b_uk_fv107",120,130,150],			                	// FV107 Scimitar
    ["cwr3_b_m60a3",200,350,200],			                		// M60A3
    ["cwr3_b_m60a3_tts",230,350,200],			                	// M60A3 TTS
	["cwr3_b_uk_fv4201",230,350,200],			                	// FV4201 Chieftain Mk8
    ["cwr3_b_m1",250,375,175],			                        	// M1 Abrams
    ["cwr3_b_uk_fv4030",300,525,150],		                        // FV4030 Challenger 1
    ["cwr3_b_m1a1",300,550,175],					                // M1A1 Abrams
    ["cwr3_b_m270_he",150,750,200],	                                // M270 MLRS (HE)
    ["cwr3_b_m270_dpicm",150,800,200]		                        // M270 MLRS (DPICM)
];

air_vehicles = [
    ["cwr3_b_uh1",100,0,160],		                                // UH-1H Huey
    ["cwr3_b_uh1_mev",100,0,160],	                                // UH-1H Huey (Medevac)
	["cwr3_b_uh1_armed",100,40,160],			                	// UH-1H Huey (Armed)
    ["cwr3_b_uh1_gunship",100,80,160],			                	// UH-1H Huey (Gunship)
	["CUP_B_UH1D_slick_GER_KSK",100,0,160],							// Bundeswehr UH-1D Huey
	["CUP_B_UH1D_armed_GER_KSK",100,40,160],						// Bundeswehr UH-1D Huey (Armed)
	["CUP_B_UH1D_gunship_GER_KSK",100,80,160],						// Bundeswehr UH-1D Huey (Gunship)
	["cwr3_b_usmc_uh1",100,0,160],									// USMC UH-1 Huey
	["cwr3_b_usmc_uh1_mev",100,0,160],								// USMC UH-1 Huey (Medevac)
	["cwr3_b_usmc_uh1_armed",100,40,160],							// USMC UH-1 Huey (Armed)
	["cwr3_b_usmc_uh1_gunship",100,80,160],							// USMC UH-1 Huey (Gunship)
    ["cwr3_b_mh6j",100,0,160],		                                // MH-6 Littlebird
    ["cwr3_b_ah6j",100,80,160],		                                // AH-6 Littlebird
    ["cwr3_b_uk_puma_hc1",100,0,160],                         		// SA330 Puma HC.1
    ["cwr3_b_uk_lynx_ah7_transport",100,0,200],		                // Lynx AH.7
    ["cwr3_b_uk_lynx_ah7_cas",100,50,200],		                	// Lynx AH.7 (CRV-7)
    ["cwr3_b_uk_lynx_ah7_tow",100,100,200],		                	// Lynx AH.7 (TOW)
    ["cwr3_b_kiowa_ffar",100,20,200],			                	// OH-58D Kiowa (FFAR)
    ["cwr3_b_kiowa_m2",100,30,200],			                		// OH-58D Kiowa (M2 and FFAR)
    ["cwr3_b_kiowa_at",100,50,200],			                		// OH-58D Kiowa (AGM-114)
    ["cwr3_b_uh60_ffv",150,25,250],	                                // UH-60 Blackhawk (FFV)
    ["cwr3_b_uh60_m2",150,50,250],	                                // UH-60 Blackhawk (M2)
    ["cwr3_b_ch47",180,25,300],			                        	// CH-47 Chinook
    ["cwr3_b_uk_hc1",180,25,300],		                        	// Chinook HC.1
	//["cwr3_b_usmc_ch53e",200,25,400],								// CH-53E Super Stallion
	["CUP_B_CH53E_GER",200,25,400],									// Bundeswehr CH-53G
    ["cwr3_b_c130",200,0,350],                                      // C-130
    ["cwr3_b_c130_cargo",200,0,350],                                // C-130 (Cargo)
    ["cwr3_b_ah1f",200,380,160],		                        	// AH-1S(MC)
	["cwr3_b_usmc_ah1f",200,380,160],		                        // USMC AH-1J (actually AH-1S(MC) but whatever)
    ["cwr3_b_uh60_x4_esss",350,300,300],	                        // UH-60 Blackhawk (ESSS x4)
    ["cwr3_b_ah64",300,400,300],		                        	// AH-64A
    ["cwr3_b_ah64_hellfire",400,500,300],		                	// AH-64A (AGM-114K)
    ["cwr3_b_frs1",200,300,440],		                        	// Sea Harrier FRS.1
    ["cwr3_b_usmc_av8b",300,600,440],		                        // AV-8B Harrier II
    ["CUP_B_GR9_DYN_GB",350,650,440],		                        // Harrier GR.9
	["cwr3_b_f16c",350,600,500],			                        // F-16C Viper
	["cwr3_b_f4e",250,500,600],			                        	// F-4E Phantom
	["cwr3_b_uk_F4M",250,500,600],			                        // F-4M Phantom FGR.2
	["cwr3_b_usmc_f4s",250,500,600],			                    // F-4S Phantom
    ["cwr3_b_a10",300,700,450]		                                // A-10A Thunderbolt II
];

static_vehicles = [
	["cwr3_b_searchlight",0,0,0],	                                // Searchlight
    ["cwr3_b_m2hb_high",10,15,0],	                                // M2 Machine Gun
    ["cwr3_b_m2hb_low",10,15,0],			                		// M2 Minitripod
    ["cwr3_b_tow",30,60,0],		                                	// TOW Tripod
	["CUP_B_SPG9_CDF",20,30,0],		                                // SPG9
    ["cwr3_b_uk_javelin_lml",25,40,0],		                        // Javelin SAM Pod
	["CUP_B_RBS70_HIL",25,50,0],									// RBS-70 SAM Pod
    ["CUP_WV_B_CRAM",300,400,0],                                    // C-RAM
    ["CUP_WV_B_SS_Launcher",350,500,0],                             // Mk-29 GMLS
    ["CUP_WV_B_RAM_Launcher",350,600,0],                            // Mk-49 GMLS
    ["cwr3_b_m252",10,40,0],		                                // M252 81mm Mortar
    ["cwr3_b_m119",50,200,0]		                                // M119
];

buildings = [
    ["land_cwr3_tent2",0,0,0],
    ["land_cwr3_tent2_large",0,0,0],
    ["land_cwr3_campingtent",50,0,0],
    ["Land_GuardHouse_02_F",50,0,0],
    ["Land_Hlidac_budka",0,0,0],
    ["Land_GuardShed",50,0,0],
    ["Land_Barracks_02_F",0,0,0],
    ["Land_Barracks_03_F",0,0,0],
    ["Land_i_Barracks_V2_F",0,0,0],
    ["Flag_NATO_F",50,0,0],
    ["Flag_US_F",50,0,0],
    ["Flag_UK_F",50,0,0],
    ["Flag_White_F",0,0,0],
    ["USMC_WarfareBFieldhHospital",0,0,0],
    ["Flag_RedCrystal_F",50,0,0],
    ["CamoNet_BLUFOR_F",50,0,0],
    ["CamoNet_BLUFOR_open_F",50,0,0],
    ["CamoNet_BLUFOR_big_F",50,0,0],
    ["Land_Shed_Big_F",0,0,0],
    ["Land_Shed_Small_F",0,0,0],
    ["Land_WoodPile_F",50,0,0],
    ["Campfire_burning_F",0,0,0],
    ["Land_PortableLight_single_F",0,0,0],
    ["Land_PortableLight_double_F",0,0,0],
    ["Land_Camping_Light_F",0,0,0],
    ["Land_LampSolar_F",0,0,0],
    ["Land_LampHalogen_F",0,0,0],
    ["Land_LampStreet_small_F",0,0,0],
    ["Land_LampAirport_F",0,0,0],
    ["Land_HelipadCircle_F",100,0,0],                                 // Strictly aesthetic - as in it does not increase helicopter cap!
    ["Land_HelipadRescue_F",100,0,0],                                 // Strictly aesthetic - as in it does not increase helicopter cap!
    ["PortableHelipadLight_01_blue_F",0,0,0],
    ["PortableHelipadLight_01_green_F",0,0,0],
    ["PortableHelipadLight_01_red_F",0,0,0],
    ["cwr3_vysilacka",50,0,0],
    ["cwr3_tv",50,0,0],
    ["cwr3_table_tv",50,0,0],
    ["cwr3_baileys",50,0,0],
    ["cwr3_barbero",50,0,0],
    ["cwr3_bushbeer",50,0,0],
    ["cwr3_hangar_kytka",50,0,0],
    ["cwr3_kentucky",50,0,0],
    ["cwr3_martini",50,0,0],
    ["cwr3_napoleon",50,0,0],
    ["cwr3_seagram",50,0,0],
    ["cwr3_whiskey",50,0,0],
    ["Target_F",50,0,0],
    ["TargetStatic_ACR",50,0,0],
    ["Land_FoodSacks_01_large_brown_F",50,0,0],
    ["Land_PaperBox_open_empty_F",50,0,0],
    ["Land_PaperBox_open_full_F",50,0,0],
    ["Land_WaterBottle_01_stack_F",50,0,0],
    ["Land_WaterBottle_01_pack_F",50,0,0],
    ["Fridge_01_closed_F",50,0,0],
    ["Land_FMradio_F",50,0,0],
    ["CUP_Dkamna_uhli",50,0,0],
    ["Land_DieselGroundPowerUnit_01_F",50,0,0],
    ["Land_PowerGenerator_F",50,0,0],
    ["Land_CanisterFuel_F",50,0,0],
    ["Land_ToolTrolley_02_F",50,0,0],
    ["Land_WeldingTrolley_01_F",50,0,0],
    ["Land_Workbench_01_F",50,0,0],
    ["Land_GasTank_01_blue_F",50,0,0],
    ["Land_GasTank_01_khaki_F",50,0,0],
    ["Land_GasTank_01_yellow_F",50,0,0],
    ["Land_GasTank_02_F",50,0,0],
    ["Land_BarrelWater_F",50,0,0],
    ["Land_BarrelWater_grey_F",50,0,0],
    ["Land_WaterBarrel_F",50,0,0],
    ["Land_WaterTank_F",50,0,0],
    ["Land_fort_bagfence_round",50,0,0],
    ["Land_fort_bagfence_long",50,0,0],
    ["Land_fort_bagfence_corner",50,0,0],
	["cwr3_wire",50,0,0],
    ["Land_BagBunker_Small_F",50,0,0],
    ["Land_BagBunker_Large_F",50,0,0],
	["land_cwr3_fortress_big",50,0,0],
	["Land_Bunker_01_small_F",0,0,0],
	["Land_Bunker_01_blocks_3_F",0,0,0],
	["cwr3_excercisetrack3",50,0,0],
	["Land_Pallets_F",50,0,0],
	["Fort_EnvelopeBig",50,0,0],
	["Fort_EnvelopeSmall",50,0,0],
	["Land_BagFence_End_F",50,0,0],
	["Land_BagFence_Corner_F",50,0,0],
	["Land_BagFence_Long_F",50,0,0],
	["Land_BagFence_Round_F",50,0,0],
	["Land_BagFence_Short_F",50,0,0],
	["Land_BagFence_01_end_green_F",50,0,0],
	["Land_BagFence_01_corner_green_F",50,0,0],
	["Land_BagFence_01_long_green_F",50,0,0],
	["Land_BagFence_01_round_green_F",50,0,0],
	["Land_BagFence_01_short_green_F",50,0,0],
	["Land_SandbagBarricade_01_half_F",50,0,0],
	["Land_SandbagBarricade_01_F",50,0,0],
	["Land_SandbagBarricade_01_hole_F",50,0,0],
	["Land_Plank_01_4m_F",50,0,0],
	["Land_Trench_01_grass_F",50,0,0],
    ["Land_fort_rampart",50,0,0],
    ["Land_fort_artillery_nest",50,0,0],
    ["land_cwr3_ammostore2",50,0,0],
	["Land_CncBarrier_F",50,0,0],
	["Land_CncBarrier_stripes_F",50,0,0],
    ["Land_CncBarrierMedium_F",50,0,0],
    ["Land_CncBarrierMedium4_F",50,0,0],
    ["Land_WoodenTable_02_large_F",50,0,0],
    ["Land_WoodenTable_large_F",50,0,0],
    ["Land_ChairWood_F",50,0,0],
    ["Land_CampingChair_V1_F",50,0,0],
    ["Land_CampingChair_V2_F",50,0,0],
    ["Land_CampingTable_F",50,0,0],
    ["Land_IntravenStand_01_2bags_F",50,0,0],
    ["Land_FirstAidKit_01_closed_F",50,0,0],
    ["Land_FirstAidKit_01_open_F",50,0,0],
    ["Land_PainKillers_F",50,0,0],
    ["Land_Bandage_F",50,0,0],
    ["Land_Notepad_F",50,0,0],
    ["Land_PensAndPencils_F",50,0,0],
    ["Land_PencilYellow_F",50,0,0],
    ["Land_File1_F",50,0,0],
    ["Land_FilePhotos_F",50,0,0],
    ["Book_01_F",50,0,0],
    ["Land_Photos_V6_F",50,0,0],
    ["Land_Photos_V1_F",50,0,0],
    ["Land_Photoframe_02_standing_F",50,0,0],
    ["Land_GymBench_01_F",50,0,0],
    ["Land_ToiletBox_F",50,0,0],
    ["Land_Canteen_F",50,0,0],
    ["Land_TinContainer_F",50,0,0],
    ["Land_Tableware_01_stackOfNapkins_F",50,0,0],
    ["Land_BottlePlastic_V2_F",50,0,0],
    ["Land_PowderedMilk_F",50,0,0],
    ["Land_TacticalBacon_F",50,0,0],
    ["Land_BakedBeans_F",50,0,0],
    ["Land_CerealsBox_F",50,0,0],
    ["Land_WaterPurificationTablets_F",50,0,0],
    ["Land_Orange_01_F",50,0,0],
    ["Land_Ammobox_rounds_F",50,0,0],
    ["Land_FoodContainer_01_White_F",50,0,0],
    ["Land_PaperBox_01_small_closed_brown_F",50,0,0],
    ["Land_Rugbyball_01_F",50,0,0],
    ["Land_Football_01_F",50,0,0],
    ["Land_Basketball_01_F",50,0,0],
    ["Land_Baseball_01_F",50,0,0],
    ["Land_BaseballMitt_01_F",50,0,0],
    ["Land_Compass_F",50,0,0],
    ["Land_Map_F",50,0,0],
    ["CUP_vojenska_palanda",50,0,0],
    ["Land_DeskChair_01_olive_F",50,0,0],
    ["Land_PlasticCase_01_large_olive_F",50,0,0],
    ["Land_Stretcher_01_folded_olive_F",50,0,0],
    ["Land_Stretcher_01_olive_F",50,0,0],
    ["Land_EmergencyBlanket_01_discarded_F",50,0,0],
    ["Land_PlasticCase_01_small_olive_F",50,0,0],
    ["Land_Pillow_F",50,0,0],
    ["Land_Pillow_grey_F",50,0,0],
    ["Land_Sleeping_bag_folded_F",50,0,0],
    ["Land_Sleeping_bag_F",50,0,0],
    ["Land_OfficeCabinet_02_F",50,0,0],
    ["CUP_metalcase_01",50,0,0],
    ["CUP_metalcase_02",50,0,0],
    ["cwr3_tablemap_desert",50,0,0],
    ["cwr3_tablemap_eden",50,0,0],
    ["cwr3_tablemap_cain",50,0,0],
    ["cwr3_tablemap_abel",50,0,0],
    ["cwr3_tablemap_noe",50,0,0],
    ["cwr3_table",50,0,0],
    ["cwr3_noticeboard_desert",50,0,0],
    ["cwr3_noticeboard_eden",50,0,0],
    ["cwr3_noticeboard_cain",50,0,0],
    ["cwr3_noticeboard_abel",50,0,0],
    ["cwr3_noticeboard_noe",50,0,0],
    ["Land_Concrete_SmallWall_4m_F",50,0,0],
    ["Land_Concrete_SmallWall_8m_F",50,0,0],
    ["Land_CncShelter_F",50,0,0],
    ["Land_CncWall1_F",50,0,0],
    ["Land_CncWall4_F",50,0,0],
    ["Land_Sign_WarningMilitaryArea_F",50,0,0],
    ["Land_Sign_WarningMilAreaSmall_F",50,0,0],
    ["Land_Sign_WarningMilitaryVehicles_F",50,0,0],
    ["Land_Razorwire_F",50,0,0],
    ["Land_ClutterCutter_large_F",0,0,0]
];

support_vehicles = [
    [Arsenal_typename,25,100,0],
    [Respawn_truck_typename,200,0,100],
    [FOB_box_typename,300,500,0],
    [FOB_truck_typename,300,500,75],
    [KP_liberation_small_storage_building,0,0,0],
    [KP_liberation_large_storage_building,0,0,0],
    [KP_liberation_recycle_building,250,0,0],
    [KP_liberation_air_vehicle_building,1000,0,0],
    [KP_liberation_heli_slot_building,250,0,0],
    [KP_liberation_plane_slot_building,500,0,0],
    ["Land_PaperBox_closed_F",50,0,0],
    ["ACE_medicalSupplyCrate_advanced",50,0,0],
    ["ACE_Box_82mm_Mo_HE",50,40,0],
    ["ACE_Box_82mm_Mo_Smoke",50,10,0],
    ["ACE_Box_82mm_Mo_Illum",50,10,0],
    ["ACE_Wheel",10,0,0],
    ["ACE_Track",10,0,0],
    ["USAF_missileCart_W_AGM114",50,150,0],                             // Missile Cart (AGM-114)
    ["USAF_missileCart_AGMMix",50,150,0],                               // Missile Cart (AGM-65 Mix)
    ["USAF_missileCart_AGM1",50,150,0],                                 // Missile Cart (AGM-65D)
    ["USAF_missileCart_AGM2",50,150,0],                                 // Missile Cart (AGM-65E)
    ["USAF_missileCart_AGM3",50,150,0],                                 // Missile Cart (AGM-65K)
    ["USAF_missileCart_AA1",50,150,0],                                  // Missile Cart (AIM-9M/AIM-120)
    ["USAF_missileCart_AA2",50,150,0],                                  // Missile Cart (AIM-9X/AIM-120)
    ["USAF_missileCart_GBU12_green",50,150,0],                          // Missile Cart (GBU12 Green)
    ["USAF_missileCart_GBU12_maritime",50,150,0],                       // Missile Cart (GBU12 Maritime)
    ["USAF_missileCart_GBU12",50,150,0],                                // Missile Cart (GBU12)
    ["USAF_missileCart_Gbu31",50,150,0],                                // Missile Cart (GBU31)
    ["USAF_missileCart_GBU39",50,150,0],                                // Missile Cart (GBU39)
    ["USAF_missileCart_Mk82",50,150,0],                                 // Missile Cart (Mk82)
    ["cwr3_b_uk_mk10",120,0,100],	                                	// LCU Mk.10
    ["CUP_B_TowingTractor_USMC",50,0,75],                               // Towing Tractor
    ["cwr3_b_m939_repair",350,0,75],	                                // M939 Repair
    ["cwr3_b_m939_refuel",50,0,375],		                        	// M939 Refuel
    ["cwr3_b_m939_reammo",50,300,75],	                                // M939 Reammo
    ["cwr3_b_uk_fv620_repair",350,0,75],                                // FV620 Stalwart Repair
    ["cwr3_b_uk_fv620_refuel",50,0,375],	                        	// FV620 Refuel
    ["cwr3_b_uk_fv620_reammo",50,300,75],	                        	// FV620 Reammo
    ["B_Slingload_01_Repair_F",375,0,0],                                // Huron Repair
    ["B_Slingload_01_Fuel_F",75,0,300],                                 // Huron Fuel
    ["B_Slingload_01_Ammo_F",75,300,0]                                  // Huron Ammo
];

/*
    --- Squads ---
    Pre-made squads for the commander build menu.
    These shouldn't exceed 10 members.
*/

// Light infantry squad.
blufor_squad_inf_light = [
    "cwr3_b_soldier82_gl",
    "cwr3_b_soldier82",
    "cwr3_b_soldier82",
    "cwr3_b_soldier82_at_law",
    "cwr3_b_soldier82_gl",
    "cwr3_b_soldier82_mg",
    "cwr3_b_soldier82_mg",
    "cwr3_b_soldier82_marksman",
    "cwr3_b_soldier82_medic",
    "cwr3_b_soldier82_engineer"
];

// Heavy infantry squad.
blufor_squad_inf = [
    "cwr3_b_soldier_gl",
    "cwr3_b_soldier_at_law",
    "cwr3_b_soldier_at_law",
    "cwr3_b_soldier_ar",
    "cwr3_b_soldier_mg",
    "cwr3_b_soldier_mg",
    "cwr3_b_soldier_amg",
    "cwr3_b_soldier_marksman",
    "cwr3_b_soldier_medic",
    "cwr3_b_soldier_engineer"
];

// AT specialists squad.
blufor_squad_at = [
    "cwr3_b_soldier82_sl",
    "cwr3_b_soldier82",
    "cwr3_b_soldier82",
    "cwr3_b_soldier82_at_m47",
    "cwr3_b_soldier82_at_m67",
    "cwr3_b_soldier82_at_m47",
    "cwr3_b_soldier82_medic",
    "cwr3_b_soldier82"
];

// AA specialists squad.
blufor_squad_aa = [
    "cwr3_b_soldier82_gl",
    "cwr3_b_soldier82",
    "cwr3_b_soldier82",
    "cwr3_b_soldier82_aa_stinger",
    "cwr3_b_soldier82_aa_stinger",
    "cwr3_b_soldier82_aa_stinger",
    "cwr3_b_soldier82_medic",
    "cwr3_b_soldier82"
];

// Force recon squad.
blufor_squad_recon = [
    "cwr3_b_blackop_day",
    "cwr3_b_blackop_day_xms",
    "cwr3_b_blackop_day_xms",
    "cwr3_b_blackop_day_mp5a5",
    "cwr3_b_blackop_day",
    "cwr3_b_uk_soldier_sas",
    "cwr3_b_uk_soldier_sas_laser",
    "cwr3_b_uk_soldier_sas_laser",
    "cwr3_b_uk_soldier_sas",
    "cwr3_b_uk_soldier_sas_night"
];

// Paratroopers squad (The units of this squad will automatically get parachutes on build)
blufor_squad_para = [
    "cwr3_b_ranger_gl",
    "cwr3_b_ranger_mg",
    "cwr3_b_ranger_at_m47",
    "cwr3_b_ranger_at_m47",
    "cwr3_b_ranger_medic",
    "cwr3_b_ranger_gl",
    "cwr3_b_ranger_ar",
    "cwr3_b_ranger_at_law",
    "cwr3_b_ranger_aa_stinger",
    "cwr3_b_ranger_medic"
];

/*
    --- Elite vehicles ---
    Classnames below have to be unlocked by capturing military bases.
    Which base locks a vehicle is randomized on the first start of the campaign.
*/
elite_vehicles = [
    "CUP_WV_B_CRAM",                                                    // C-RAM
    "CUP_WV_B_SS_Launcher",                                             // Mk-29 GMLS
    "CUP_WV_B_RAM_Launcher",                                            // Mk-49 GMLS
    "CUP_B_Frigate_ANZAC"	                                        	// Frigate
];
