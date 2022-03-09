/*
    Needed Mods:
    - CUP Weapons
    - CUP Vehicles
    - CUP Units
    - CUP Terrains Core
    - Cold War Rearmed III

    Optional Mods:
    - Cold War Rearmed III - Soviet Airborne Forces Expansion
*/

/*
    --- Support classnames ---
    Each of these should be unique.
    The same classnames for different purposes may cause various unpredictable issues with player actions.
    Or not, just don't try!
*/
FOB_typename = "BMP2_HQ_INS_unfolded";	                                // This is the main FOB HQ building.
FOB_box_typename = "B_Slingload_01_Cargo_F";                            // This is the FOB as a container.
FOB_truck_typename = "cwr3_o_ural_hq";	                                // This is the FOB as a vehicle.
Arsenal_typename = "B_supplyCrate_F";                                   // This is the virtual arsenal as portable supply crates.
Respawn_truck_typename = "cwr3_o_bmp2_hq";	                        	// This is the mobile respawn (and medical) truck.
huron_typename = "cwr3_o_mi6t";	                                		// This is Spartan 01, a multipurpose mobile respawn as a helicopter.
crewman_classname = "cwr3_o_soldier_crew";                              // This defines the crew for vehicles.
pilot_classname = "cwr3_o_soldier_pilot";                               // This defines the pilot for helicopters.
KP_liberation_little_bird_classname = "cwr3_o_mi8_mtv3";	        	// These are the little birds which spawn on the Freedom or at Chimera bas
KP_liberation_boat_classname = "cwr3_o_mi24d";	                        // These are the boats which spawn at the stern of the Freedom.
KP_liberation_truck_classname = "cwr3_o_ural_open";	                	// These are the trucks which are used in the logistic convoy system.
KP_liberation_small_storage_building = "ContainmentArea_02_sand_F";     // A small storage area for resources.
KP_liberation_large_storage_building = "ContainmentArea_01_sand_F";     // A large storage area for resources.
KP_liberation_recycle_building = "land_cwr3_repair_center";	        	// The building defined to unlock FOB recycling functionality.
KP_liberation_air_vehicle_building = "RU_WarfareBAircraftFactory";		// The building defined to unlock FOB air vehicle functionality.
KP_liberation_heli_slot_building = "RU_WarfareBUAVterminal";            // The helipad used to increase the GLOBAL rotary-wing cap.
KP_liberation_plane_slot_building = "RU_WarfareBVehicleServicePoint";	// The hangar used to increase the GLOBAL fixed-wing cap.
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
    ["cwr3_o_soldier",10,0,0],		                        		// Rifleman
    ["cwr3_o_soldier_backpack",10,0,0],		                		// Rifleman (Backpack)
    ["cwr3_o_soldier_at_rpg7",20,0,0],                            	// Rifleman (RPG-7)
    ["cwr3_o_soldier_gl",12,0,0],	                                // Grenadier
    ["cwr3_o_soldier_ar",12,0,0],	                                // Autorifleman
    ["cwr3_o_soldier_mg",15,0,0],	                                // Machinegunner
	["cwr3_o_soldier_marksman",15,0,0],                           	// Marksman
    ["cwr3_o_soldier_at_at4",25,12,0],                            	// AT Specialist (AT-4)
    ["cwr3_o_soldier_aa_strela",20,2,0],                          	// AA Specialist (Strela)
    ["cwr3_o_soldier_aa_igla",20,5,0],                           	// AA Specialist (Igla)
    ["cwr3_o_soldier_medic",15,0,0],                              	// Medic
    ["cwr3_o_soldier_engineer",15,0,0],                           	// Engineer
    ["cwr3_o_soldier_sniper",40,5,0],                               // Sniper
    ["cwr3_o_soldier_spotter",20,0,0],                              // Spotter
    ["cwr3_o_soldier_crew",10,0,0],                                 // Crewman
    ["cwr3_o_soldier_pilot",10,0,0],                                // Pilot
	["cwr3_o_spetsnaz",15,0,0],		                                // Spetsnaz
	["cwr3_o_spetsnaz_akms_sd",15,0,0],		                        // Spetsnaz (AKMS SD)
	["cwr3_o_spetsnaz_sapper",18,0,0],                              // Spetsnaz (Sapper)
	["cwr3_o_spetsnaz_at_rpg18",18,0,0],                            // Spetsnaz Rifleman (RPG-18)
	["cwr3_o_spetsnaz_at_rpg7",20,0,0],                             // Spetsnaz AT Specialist (RPG-7)
	["cwr3_o_spetsnaz_gl",15,0,0],		                            // Spetsnaz Grenadier
	["cwr3_o_spetsnaz_mg",15,0,0],	                                // Spetsnaz Machinegunner
	["cwr3_o_spetsnaz_ar",15,0,0],	                                // Spetsnaz Autorifleman
	["cwr3_o_spetsnaz_medic",15,0,0],		                        // Spetsnaz Medic
    ["cwr3_o_soldier82",10,0,0],		                        	// Rifleman
    ["cwr3_o_soldier82_backpack",10,0,0],		                	// Rifleman (Backpack)
    ["cwr3_o_soldier82_at_rpg7",20,0,0],                            // Rifleman (RPG-7)
    ["cwr3_o_soldier82_gl",12,0,0],	                                // Grenadier
    ["cwr3_o_soldier82_ar",12,0,0],	                                // Autorifleman
    ["cwr3_o_soldier82_mg",15,0,0],	                                // Machinegunner
	["cwr3_o_soldier82_marksman",15,0,0],                           // Marksman
    ["cwr3_o_soldier82_at_at4",25,12,0],                            // AT Specialist (AT-4)
    ["cwr3_o_soldier82_aa_strela",20,2,0],                          // AA Specialist (Strela)
    ["cwr3_o_soldier82_aa_igla",20,5,0],                           	// AA Specialist (Igla)
    ["cwr3_o_soldier82_medic",15,0,0],                              // Medic
    ["cwr3_o_soldier82_engineer",15,0,0]                           	// Engineer
];

light_vehicles = [
    ["cwr3_o_uaz",25,0,25],		                                	// UAZ
    ["cwr3_o_uaz_dshkm",25,30,25],	                                // UAZ (DShKM)
    ["cwr3_o_uaz_ags30",37,40,25],	                                // UAZ (AGS-30)
    ["cwr3_o_uaz_spg9",37,40,25],	                                // UAZ (SPG-9)
    ["cwr3_o_uaz_aa",50,80,25],	                                	// UAZ (AA)
	["cwr3_o_vdv_uaz452",25,0,30],									// UAZ-452
    ["cwr3_o_ural_zu23",100,100,80],	                            // Ural (ZU-23)
    ["cwr3_o_bm21",300,500,75],		                                // BM-21
	["cwr3_o_btr60",80,30,100],		                                // BTR-60PB
    ["cwr3_o_btr80",100,30,130],	                                // BTR-80
	["cwr3_o_bmp1",100,130,130],	                                // BMP-1
	["cwr3_o_mtlb_pk",70,30,100],	                                // MT-LB LV
	["cwr3_o_mtlb_mev",70,0,100],	                                // MT-LB Ambulance
	["cwr3_o_mtlb_sa13",100,120,100],								// SA-13
	["cwr3_o_t55",120,150,170],		                                // T-55
	["cwr3_o_ural",50,0,75],	                                    // Ural
    ["cwr3_o_ural_open",50,0,75],	                                // Ural (Open)
	["cwr3_o_ural_empty",25,0,75],	                                // Ural (Cargo)
	["cwr3_o_zodiac",25,0,100],		                                // Zodiac
    ["cwr3_o_boat",70,50,100]			                        	// Mark II PBR
];

heavy_vehicles = [
    ["cwr3_o_brdm2",80,50,120],			                            // BRDM-2
    ["cwr3_o_brdm2_atgm",80,120,120],		                        // BRDM-2 (ATGM)
    ["cwr3_o_bmp1p",100,150,150],	                                // BMP-1P
    ["cwr3_o_bmp2",120,150,150],	                                // BMP-2
	["cwr3_o_bmp2_zu23",100,165,150],								// BMP-2 (ZU-23)
	["cwr3_o_bmp2_mev",100,0,150],		                            // BMP-2 Ambulance
    ["cwr3_o_zsu",100,165,150],			                        	// ZSU-23-4 Afghanski
	["cwr3_o_vmf_pt76b",120,130,150],			                	// PT-76B
    ["cwr3_o_t55a",220,200,230],	                                // T-55A
    ["cwr3_o_t55amv",220,220,230],	                                // T-55AMV
    ["cwr3_o_t64b",260,330,250],	                                // T-64B
    ["cwr3_o_t64bv",300,350,250],	                                // T-64BV
    ["cwr3_o_t72a",240,350,200],	                                // T-72A
    ["cwr3_o_t72b1",270,400,200]	                                // T-72B1
];

air_vehicles = [
    ["cwr3_o_mi8_mev",100,0,250],		                        	// Mi-8AMT (Medevac)
    ["cwr3_o_mi8_amt",100,50,250],		                        	// Mi-8AMT Doorguns
    ["cwr3_o_mi8_mtv3",350,80,250],	                                // Mi-8MTV3
	["cwr3_o_mi6a",200,25,400],										// Mi-6A (ViV)
	["cwr3_o_an2",100,0,200],										// AN-2
	["cwr3_o_an12_unarmed",200,0,350],                              // An-12BP (Unarmed)
	["cwr3_o_an12",200,50,350],                                    	// An-12BK (Tail-gun)
    ["cwr3_o_mi24d",200,350,300],		                        	// Mi-24D
    ["cwr3_o_mi24p",300,400,300],		                        	// Mi-24P
    ["cwr3_o_mi24v",400,450,300],		                        	// Mi-24V
	["cwr3_o_v80",430,500,300],			                        	// V-80 (Ka-50 Prototype)
	["cwr3_o_mig23",250,500,600],			                        // MiG-23 Flogger-K
	["cwr3_o_mig27",250,500,600],			                        // MiG-27 Flogger-J
	["cwr3_o_su17m4",350,600,500],			                        // Su-17M4 Fitter
    ["cwr3_o_su25",300,700,450]		                                // Su-25 Frogfoot
];

static_vehicles = [
	["cwr3_o_searchlight",0,0,0],	                                // Searchlight
    ["cwr3_o_nsv_high",10,15,0],                                    // NSV
    ["cwr3_o_nsv_low",10,15,0],			                        	// NSV Minitripod
	["cwr3_o_konkurs_tripod",0,0,0],								// Konkurs
    ["cwr3_o_spg9",20,30,0],	                                    // SPG-9
    ["cwr3_o_zu23",25,50,0],		                                // ZU-23
    ["cwr3_o_2b14",10,40,0],		                                // Podnos 2B14
    ["cwr3_o_d30_at",50,200,0],	                                	// D-30 AT
    ["cwr3_o_d30",50,200,0]	                                    	// D-30
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
    ["cwr3_Flag_Chdkz",50,0,0],
    ["cwr3_Flag_VDV",50,0,0],
    ["cwr3_Flag_USSR",50,0,0],
    ["Flag_White_F",0,0,0],
    ["RU_WarfareBFieldhHospital",0,0,0],
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
    ["CUP_O_LCVP_SLA",100,0,50],	                                    // LCVP
    ["CUP_O_LCVP_VIV_SLA",100,0,50],	                                // LCVP (VIV)
	["cwr3_o_vmf_zubr",120,0,100],	                                	// Hovercraft
    ["CUP_O_Tractor_SLA",50,0,75],                                      // Towing Tractor
    ["cwr3_o_ural_repair",350,0,75],	                                // Ural Repair
    ["cwr3_o_ural_refuel",50,0,375],		                        	// Ural Refuel
    ["cwr3_o_ural_reammo",50,300,75],	                                // Ural Reammo
	["cwr3_o_mtlb_repair",370,0,100],									// MTLB Repair
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
    "cwr3_o_soldier82_sl",
    "cwr3_o_soldier82",
    "cwr3_o_soldier82",
    "cwr3_o_soldier82_at_rpg7",
    "cwr3_o_soldier82_gl",
    "cwr3_o_soldier82_ar",
    "cwr3_o_soldier82_ar",
    "cwr3_o_soldier82_marksman",
    "cwr3_o_soldier82_medic",
    "cwr3_o_soldier82_engineer"
];

// Heavy infantry squad.
blufor_squad_inf = [
    "cwr3_o_soldier82_sl",
    "cwr3_o_soldier82_at_rpg7",
    "cwr3_o_soldier82_at_rpg7",
    "cwr3_o_soldier82_gl",
    "cwr3_o_soldier82_ar",
    "cwr3_o_soldier82_ar",
    "cwr3_o_soldier82_mg",
    "cwr3_o_soldier82_marksman",
    "cwr3_o_soldier82_medic",
    "cwr3_o_soldier82_engineer"
];

// AT specialists squad.
blufor_squad_at = [
    "cwr3_o_soldier82_sl",
    "cwr3_o_soldier82_aat_rpg7",
    "cwr3_o_soldier82_aat_rpg7",
    "cwr3_o_soldier82_at_rpg7",
    "cwr3_o_soldier82_at_rpg7",
    "cwr3_o_soldier82_at_at4",
    "cwr3_o_soldier82_medic",
    "cwr3_o_soldier82_engineer"
];

// AA specialists squad.
blufor_squad_aa = [
    "cwr3_o_soldier82_sl",
    "cwr3_o_soldier82_aaa_strela",
    "cwr3_o_soldier82_aaa_strela",
    "cwr3_o_soldier82_aa_strela",
    "cwr3_o_soldier82_aa_strela",
    "cwr3_o_soldier82_aa_strela",
    "cwr3_o_soldier82_medic",
    "cwr3_o_soldier82_engineer"
];

// Force recon squad.
blufor_squad_recon = [
    "cwr3_o_spetsnaz_gl",
    "cwr3_o_spetsnaz",
    "cwr3_o_spetsnaz_sapper",
    "cwr3_o_spetsnaz",
    "cwr3_o_spetsnaz_at_rpg7",
    "cwr3_o_spetsnaz_at_rpg7",
    "cwr3_o_spetsnaz_mg"
];

// Paratroopers squad.
blufor_squad_para = [
    "cwr3_o_soldier",
    "cwr3_o_soldier",
    "cwr3_o_soldier",
    "cwr3_o_soldier",
    "cwr3_o_soldier",
    "cwr3_o_soldier",
    "cwr3_o_soldier_at_rpg7",
    "cwr3_o_soldier_at_rpg7",
    "cwr3_o_soldier_at_rpg7",
    "cwr3_o_soldier_at_rpg7"
];

/*
    --- Elite vehicles ---
    Classnames below have to be unlocked by capturing military bases.
    Which base locks a vehicle is randomized on the first start of the campaign.
*/
elite_vehicles = [
    "CUP_O_SU34_RU"	                                            // Su-34 Prototype
];
