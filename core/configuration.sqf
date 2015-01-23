#include <macro.h>
/*
	Master Life Configuration File
	This file is to setup variables for the client, there are still other configuration files in the system

*****************************
****** Backend Variables *****
*****************************
*/
life_query_time = time;
life_action_delay = time;
life_trunk_vehicle = Objnull;
life_session_completed = false;
life_garage_store = false;
life_session_tries = 0;
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_clothing_filter = 0;
life_clothing_uniform = -1;
life_redgull_effect = time;
life_is_processing = false;
life_bail_paid = false;
life_impound_inuse = false;
life_action_inUse = false;
life_spikestrip = ObjNull;
life_respawn_timer = 1; //Scaled in minutes
life_knockout = false;
life_interrupted = false;
life_respawned = false;
life_removeWanted = false;
compteurdeballes = 0;


//Persistent Saving
__CONST__(life_save_civ,TRUE); //Save weapons for civs?
__CONST__(life_save_yinv,TRUE); //Save Y-Inventory for players?

//Revive constant variables.
__CONST__(life_revive_cops,TRUE); //Set to false if you don't want cops to be able to revive downed players.
__CONST__(life_revive_fee,500); //Fee for players to pay when revived.

//House Limit
__CONST__(life_houseLimit,2); //Maximum amount of houses a player can buy (TODO: Make Tiered licenses).

//Gang related stuff?
__CONST__(life_gangPrice,75000); //Price for creating a gang (They're all persistent so keep it high to avoid 345345345 gangs).
__CONST__(life_gangUpgradeBase,10000); //MASDASDASD
__CONST__(life_gangUpgradeMultipler,2.5); //BLAH

//Uniform price (0),Hat Price (1),Glasses Price (2),Vest Price (3),Backpack Price (4)
life_clothing_purchase = [-1,-1,-1,-1,-1];
/*
*****************************
****** Weight Variables *****
*****************************
*/
life_maxWeight = 35; //Identifies the max carrying weight (gets adjusted throughout game when wearing different types of clothing).
life_maxWeightT = 35; //Static variable representing the players max carrying weight on start.
life_carryWeight = 0; //Represents the players current inventory weight (MUST START AT 0).

/*
*****************************
****** Life Variables *******
*****************************
*/
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_bank_fail = false;
life_use_atm = true;
life_is_arrested = false;
life_delivery_in_progress = false;
life_action_in_use = false;
life_thirst = 100;
life_hunger = 100;
__CONST__(life_paycheck_period,5); //Five minutes
life_cash = 0;
__CONST__(life_impound_car,950);
__CONST__(life_impound_boat,3000);
__CONST__(life_impound_air,1500);
life_istazed = false;
life_my_gang = ObjNull;

life_fatigue = 0.2; // (20%)

life_vehicles = [];
bank_robber = [];

/*
*****************************
****** Zone de minage *******
*****************************
*/
life_ramasser = ["apple_1","apple_2","apple_3","apple_4","peaches_1","peaches_2","peaches_3","peaches_4","heroin_1","cocaine_1","weed_1","raisin_1","raisin_2","biere_1","biere_2"];
life_miner = ["lead_1","iron_1","salt_1","sand_1","diamond_1","oil_1","oil_2","rock_1","osmium_1","palladium_1"]; // a modif ici et dans core\items\fn_pickaxe.sqf
life_hache = ["bois_1","bois_2"]; // a modif ici et dans core\items\fn_hache.sqf

switch (playerSide) do
{
	case west:
	{
		life_atmcash = 30000; //Starting Bank Money
		life_paycheck = 2000; //Paycheck Amount
	};
	case civilian:
	{
		life_atmcash = 30000; //Starting Bank Money
		life_paycheck = 1500; //Paycheck Amount
	};

	case independent: {
		life_atmcash = 30000;
		life_paycheck = 3200;
	};
};

/*
	Master Array of items?
*/
life_vShop_rentalOnly = ["B_MRAP_01_hmg_F","B_G_Offroad_01_armed_F"];
__CONST__(life_vShop_rentalOnly,life_vShop_rentalOnly); //These vehicles can never be bought and only 'rented'. Used as a balancer & money sink. If you want your server to be chaotic then fine.. Remove it..

life_inv_items =
[
	"life_inv_oilu",
	"life_inv_oilp",
	"life_inv_heroinu",
	"life_inv_heroinp",
	"life_inv_cannabis",
	"life_inv_marijuana",
	"life_inv_apple",
	"life_inv_rabbit",
	"life_inv_salema",
	"life_inv_ornate",
	"life_inv_mackerel",
	"life_inv_tuna",
	"life_inv_mullet",
	"life_inv_catshark",
	"life_inv_turtle",
	"life_inv_fishingpoles",
	"life_inv_water",
	"life_inv_donuts",
	"life_inv_turtlesoup",
	"life_inv_coffee",
	"life_inv_fuelF",
	"life_inv_fuelE",
	"life_inv_pickaxe",
	"life_inv_copperore",
	"life_inv_ironore",
	"life_inv_ironr",
	"life_inv_copperr",
	"life_inv_sand",
	"life_inv_salt",
	"life_inv_saltr",
	"life_inv_glass",
	"life_inv_tbacon",
	"life_inv_lockpick",
	"life_inv_redgull",
	"life_inv_peach",
	"life_inv_diamond",
	"life_inv_coke",
	"life_inv_cokep",
	"life_inv_diamondr",
	"life_inv_spikeStrip",
	"life_inv_rock",
	"life_inv_cement",
	"life_inv_goldbar",
	"life_inv_blastingcharge",
	"life_inv_boltcutter",
	"life_inv_defusekit",
	"life_inv_storagesmall",
	"life_inv_storagebig",

    //Gosh
    "life_inv_vin",
	"life_inv_raisin",
    "life_inv_moonshine",
    "life_inv_barrier",

    "life_inv_platinep",
	"life_inv_osmium",
	"life_inv_palladium",

	//TDLC
	"life_tdlc_biere",
	"life_tdlc_malt",
	"life_tdlc_houblon",
	"life_tdlc_bois",
	"life_tdlc_papier",
	"life_tdlc_fauxbillet",
	"life_tdlc_hache",
	"life_inv_Zip"

];

//Setup variable inv vars.
{missionNamespace setVariable[_x,0];} foreach life_inv_items;
//Licenses [license var, civ/cop]
life_licenses =
[
	["license_cop_air","cop"],
	["license_cop_swat","cop"],
	["license_cop_cg","cop"],
	["license_civ_driver","civ"],
	["license_civ_air","civ"],
	["license_civ_heroin","civ"],
	["license_civ_marijuana","civ"],
	["license_civ_gang","civ"],
	["license_civ_boat","civ"],
	["license_civ_oil","civ"],
	["license_civ_dive","civ"],
	["license_civ_truck","civ"],
	["license_civ_gun","civ"],
	["license_civ_rebel","civ"],
	["license_civ_coke","civ"],
	["license_civ_diamond","civ"],
	["license_civ_copper","civ"],
	["license_civ_iron","civ"],
	["license_civ_sand","civ"],
	["license_civ_salt","civ"],
	["license_civ_cement","civ"],
	["license_med_air","med"],
	["license_civ_home","civ"],

   	//Gosh
    ["license_civ_vin","civ"],
    ["license_civ_moonshine","civ"],

    ["license_civ_mineralogiste","civ"],

	//TDLC
	["license_biere","civ"],
	["license_bois","civ"],
	["license_bois2","civ"],

	["license_civ_admin","civ"],
	["license_civ_admin","cop"],
	["license_civ_admin","med"]
];

//Setup License Variables
{missionNamespace setVariable[(_x select 0),false];} foreach life_licenses;

life_dp_points = ["dp_1","dp_2","dp_3","dp_4","dp_5","dp_6","dp_7","dp_8","dp_9","dp_10","dp_11","dp_12","dp_13","dp_14","dp_15","dp_15","dp_16","dp_17","dp_18","dp_19","dp_20","dp_21","dp_22","dp_23","dp_24","dp_25"];
//[shortVar,reward]
life_illegal_items = [["heroinu",1200],["heroinp",2500],["cocaine",1500],["cocainep",3500],["moonshine",2500],["marijuana",2000],["turtle",3000],["blastingcharge",10000],["boltcutter",500],["fauxbillet",2500]];


/*
	Sell / buy arrays
*/
sell_array =
[
	["salema",45],
	["ornate",40],
	["mackerel",175],
	["tuna",700],
	["mullet",250],
	["catshark",300],
	["rabbit",65],
	["water",5],
	["coffee",5],
	["turtlesoup",1000],
	["donuts",60],
	["tbacon",25],
	["lockpick",75],
	["pickaxe",750],
	["redgull",200],
	["fuelF",500],
	["spikeStrip",1200],
	
	
	
	["peach",80],
	["apple",60],
	
	["cement",2980],
	["diamond",2980],
	["diamondc",5000],
	["iron_r",3200],
	["copper_r",2800],
	["salt_r",3250],
	["glass",3750],
	["oilp",4400],
	
	["cocaine",3000],
	["cocainep",6800],
	["goldbar",100000],
	["marijuana",5700],
	["turtle",8000],
	["heroinu",3400],
	["heroinp",7200],

    //Gosh
    ["vin",2800],
	["raisin",500],
    ["moonshine",6400],
    ["barrier",800],

    ["platinep",4300],
	["osmium",1400],
	["palladium",1600],


	//TDLC 							NOTE : prix a fix plus tard
	["biere",3400],
	["malt",200],
	["houblon",200],
	["bois",500],
	["papier",3000],
	
	["Zip",1200],
	
	["fauxbillet",7300]

];
__CONST__(sell_array,sell_array);

buy_array =
[
	["apple",60],
	["rabbit",75],
	["salema",55],
	["ornate",50],
	["mackerel",200],
	["tuna",900],
	["mullet",300],
	["catshark",350],
	["water",10],
	["turtle",4000],
	["turtlesoup",2500],
	["donuts",120],
	["coffee",10],
	["tbacon",75],
	["lockpick",150],
	["pickaxe",1200],
	["redgull",1500],
	["fuelF",850],
	["peach",80],
	["spikeStrip",2500],
	["blastingcharge",35000],
	["boltcutter",7500],
	["defusekit",2500],
	["storagesmall",75000],
	["storagebig",150000],

    //Gosh
    ["barrier",1000],

	//TDLC
	["hache",500],
	["Zip",2000]
];
__CONST__(buy_array,buy_array);

life_weapon_shop_array =
[
	["arifle_sdar_F",7500],
	["hgun_P07_snds_F",650],
	["hgun_P07_F",1500],
	["ItemGPS",45],
	["ToolKit",75],
	["FirstAidKit",65],
	["Medikit",450],
	["NVGoggles",0],
	["16Rnd_9x21_Mag",15],
	["20Rnd_556x45_UW_mag",35],
	["ItemMap",35],
	["ItemCompass",25],
	["Chemlight_blue",50],
	["Chemlight_yellow",50],
	["Chemlight_green",50],
	["Chemlight_red",50],
	["hgun_Rook40_F",500],
	["arifle_Katiba_F",5000],
	["30Rnd_556x45_Stanag",65],
	["20Rnd_762x51_Mag",85],
	["30Rnd_65x39_caseless_green",50],
	["DemoCharge_Remote_Mag",7500],
	["SLAMDirectionalMine_Wire_Mag",2575],
	["optic_ACO_grn",250],
	["acc_flashlight",100],
	["srifle_EBR_F",15000],
	["arifle_TRG21_F",3500],
	["optic_MRCO",5000],
	["optic_Aco",850],
	["arifle_MX_F",7500],
	["arifle_MXC_F",5000],
	["arifle_MXM_F",8500],
	["MineDetector",500],
	["optic_Holosight",275],
	["acc_pointer_IR",175],
	["arifle_TRG20_F",2500],
	["SMG_01_F",1500],
	["arifle_Mk20C_F",4500],
	["30Rnd_45ACP_Mag_SMG_01",60],
	["30Rnd_9x21_Mag",30]
];
__CONST__(life_weapon_shop_array,life_weapon_shop_array);

life_garage_prices =
[
	//Kart
    ["C_Kart_01_Red_F",3750],
	["C_Kart_01_Vrana_F",3750],
	["C_Kart_01_Fuel_F",3750],
	["C_Kart_01_Blu_F",3750],
	["C_Kart_01_F",3750],
    
	// Quad
	["B_QuadBike_01_F",150],
    ["O_G_Quadbike_01_F",150],
    
    //SUV Tout terrain et hayon
	["C_Hatchback_01_F",1350],
    ["C_Hatchback_01_sport_F",3000],
	["C_Offroad_01_F", 1875],
	["B_G_Offroad_01_F",1875],
	["C_SUV_01_F",3750],
    
    //Camion
	["C_Van_01_transport_F",5000],
	["C_Van_01_fuel_F",5000],
	["C_Van_01_box_F",5000],
    
	["I_Truck_02_transport_F",10000], //Zamak transport
	["I_Truck_02_covered_F",10000],	//Zamak couvert
    
	["B_Truck_01_transport_F",20000], // Hemtt transport
	["B_Truck_01_box_F", 25000], //Hemtt cargaison
    
    ["O_Truck_03_transport_F",20000], // Tempest transport
    ["O_Truck_03_covered_F",17500], // Tempest couvert
    
    ["I_Truck_02_medical_F",60000], //Zamak médical
	["O_Truck_03_medical_F",85000], //Tempest médical
	["B_Truck_01_medical_F",100000], //Hemmt médical
    
    //Helico
    ["B_Heli_Light_01_F",20000], //Little Bird
	["O_Heli_Light_02_unarmed_F",30000], //Orca
    ["C_Heli_Light_01_civil_F",35000], //M900
    ["B_Heli_Transport_03_unarmed_F",45000], //Huron noir
    ["B_Heli_Transport_01_F",50000], //Ghost hawk
    ["I_Heli_Transport_02_F",35000], // Mohawk
    ["O_Heli_Transport_04_covered_F",45000], // Taru Transport
    ["O_Heli_Transport_04_bench_F",45000], // Taru banc
    ["O_Heli_Transport_04_F",45000], // Taru 
    
    //Bateau
	["C_Rubberboat",1350],
	["C_Boat_Civil_01_F",4500],
	["B_Boat_Transport_01_F",450],
	["C_Boat_Civil_01_police_F",3500],
	["B_Boat_Armed_01_minigun_F",16500],
	["B_SDV_01_F",25000],
    
    //Véhicule blindé
    ["O_MRAP_02_F",45000], //Ifrit
	["B_MRAP_01_F",7500], //Hunter
    ["I_MRAP_03_F",100000] //Strider
];
__CONST__(life_garage_prices,life_garage_prices);

life_garage_sell =
[
	//Kart
    ["C_Kart_01_Red_F",18750],
	["C_Kart_01_Vrana_F",18750],
	["C_Kart_01_Fuel_F",18750],
	["C_Kart_01_Blu_F",18750],
	["C_Kart_01_F",18750],
    
	// Quad
	["B_QuadBike_01_F",750],
    ["O_G_Quadbike_01_F",750],
    
    //SUV Tout terrain et hayon
	["C_Hatchback_01_F",6750],
    ["C_Hatchback_01_sport_F",3000],
	["C_Offroad_01_F", 9375],
	["B_G_Offroad_01_F",9375],
	["C_SUV_01_F",18750],
    
    //Camion
	["C_Van_01_transport_F",45000],
	["C_Van_01_fuel_F",4500],
	["C_Van_01_box_F",75000],
    
	["I_Truck_02_transport_F",93750], //Zamak transport
	["I_Truck_02_covered_F",138750],	//Zamak couvert
    
	["B_Truck_01_transport_F",168750], // Hemtt transport
	["B_Truck_01_box_F", 262500], //Hemtt cargaison
    
    ["O_Truck_03_transport_F",172500], // Tempest transport
    ["O_Truck_03_covered_F",217500], // Tempest couvert
    
    ["I_Truck_02_medical_F",60000], //Zamak médical
	["O_Truck_03_medical_F",85000], //Tempest médical
	["B_Truck_01_medical_F",100000], //Hemmt médical
    
    //Helico
    ["B_Heli_Light_01_F",262500], //Little Bird
	["O_Heli_Light_02_unarmed_F",487500], //Orca
    ["C_Heli_Light_01_civil_F",337500], //M900
    ["B_Heli_Transport_03_unarmed_F",675000], //Huron noir
    ["B_Heli_Transport_01_F",900000], //Ghost hawk
    ["I_Heli_Transport_02_F",375000], // Mohawk
    ["O_Heli_Transport_04_covered_F",525000], // Taru Transport
    ["O_Heli_Transport_04_bench_F",525000], // Taru banc
    ["O_Heli_Transport_04_F",525000], // Taru 
    
    //Bateau
	["C_Rubberboat",6750],
	["C_Boat_Civil_01_F",41500],
	["B_Boat_Transport_01_F",2250],
	["C_Boat_Civil_01_police_F",6875],
	["B_Boat_Armed_01_minigun_F",93750],
	["B_SDV_01_F",18750],
    
    //Véhicule blindé
    ["O_MRAP_02_F",281250], //Ifrit
	["B_MRAP_01_F",112500], //Hunter
    ["I_MRAP_03_F",100000] //Strider
];
__CONST__(life_garage_sell,life_garage_sell);

life_assur_prices =
[
	//Kart
    ["C_Kart_01_Red_F",3750],
    ["C_Kart_01_Vrana_F",3750],
	["C_Kart_01_Fuel_F",3750],
	["C_Kart_01_Blu_F",3750],
	["C_Kart_01_F",3750],
    
	// Quad
	["B_QuadBike_01_F",500],
    ["O_G_Quadbike_01_F",500],
    
    //SUV Tout terrain et hayon
	["C_Hatchback_01_F",1500],
    ["C_Hatchback_01_sport_F",2000],
	["C_Offroad_01_F", 9000],
	["B_G_Offroad_01_F",9000],
	["C_SUV_01_F",3750],
    
    //Camion
	["C_Van_01_transport_F",20000],
	["C_Van_01_fuel_F",4500],
	["C_Van_01_box_F",25000],
    
	["I_Truck_02_transport_F",35000], //Zamak transport
	["I_Truck_02_covered_F",35000],	//Zamak couvert
    
	["B_Truck_01_transport_F",40000], // Hemtt transport
	["B_Truck_01_box_F", 45000], //Hemtt cargaison
    
    ["O_Truck_03_transport_F",40000], // Tempest transport
    ["O_Truck_03_covered_F",40000], // Tempest couvert
    
    ["I_Truck_02_medical_F",60000], //Zamak médical
	["O_Truck_03_medical_F",85000], //Tempest médical
	["B_Truck_01_medical_F",100000], //Hemmt médical
    
    //Helico
    ["B_Heli_Light_01_F",50000], //Little Bird
	["O_Heli_Light_02_unarmed_F",75000], //Orca
    ["C_Heli_Light_01_civil_F",60000], //M900
    ["B_Heli_Transport_03_unarmed_F",85000], //Huron noir
    ["B_Heli_Transport_01_F",90000], //Ghost hawk
    ["I_Heli_Transport_02_F",55000], // Mohawk
    ["O_Heli_Transport_04_covered_F",55000], // Taru Transport
    ["O_Heli_Transport_04_bench_F",55000], // Taru banc
    ["O_Heli_Transport_04_F",60000], // Taru 
    
    //Bateau
	["C_Rubberboat",1500],
	["C_Boat_Civil_01_F",5000],
	["B_Boat_Transport_01_F",2000],
	["C_Boat_Civil_01_police_F",6500],
	["B_Boat_Armed_01_minigun_F",9000],
	["B_SDV_01_F",1900],
    
    //Véhicule blindé
    ["O_MRAP_02_F",90000], //Ifrit
	["B_MRAP_01_F",25000], //Hunter
    ["I_MRAP_03_F",75000] //Strider
];
__CONST__(life_assur_prices,life_assur_prices);