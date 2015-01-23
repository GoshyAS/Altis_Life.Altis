#include <macro.h>
/*
	File:
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration list / array for buyable vehicles & prices and their shop.
*/
private["_shop","_return"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {[]};
_return = [];
switch (_shop) do
{
	case "kart_shop":
	{
		_return = [
			["C_Kart_01_Red_F",25000],
			["C_Kart_01_Vrana_F",25000],
			["C_Kart_01_Fuel_F",25000],
			["C_Kart_01_Blu_F",25000],
			["C_Kart_01_F",25000]
		];
	};
	case "med_shop":
	{
		_return = [
			["C_Offroad_01_F",15000],
			["C_SUV_01_F",25000],
			["I_Truck_02_medical_F",60000],
			["O_Truck_03_medical_F",85000],
			["B_Truck_01_medical_F",100000]
		];
	};
	
	case "med_air_hs": {
		_return = [
			["B_Heli_Light_01_F",60000],
			["O_Heli_Light_02_unarmed_F",120000]
		];
	};
    
    case "med_air": {
		_return = [
			["B_Heli_Light_01_F",60000],
			["O_Heli_Light_02_unarmed_F",120000]
		];
	};
	
	case "civ_car":
	{
		_return = 
		[
			["B_Quadbike_01_F",1000],
			//["C_Kart_01_F",250000],
			["C_Hatchback_01_F",9000],
			["C_Offroad_01_F",12500],
			["C_SUV_01_F",25000],
			["C_Van_01_transport_F",60000]
		];
	};
	
	case "civ_truck":
	{
		_return =
		[
			["C_Van_01_box_F",100000],
			["I_Truck_02_transport_F",125000],
			["I_Truck_02_covered_F",185000],
			["B_Truck_01_transport_F",225000],
			["O_Truck_03_transport_F",230000],
		//	["O_Truck_03_covered_F",290000],
			["B_Truck_01_box_F",350000]
		];	
	};
		
	case "reb_car":
	{
		_return =
		[
			["O_G_Quadbike_01_F",3000],
			["O_G_Offroad_01_F",20000],
			["O_MRAP_02_F",375000],
			["B_Heli_Light_01_F",350000],
            ["O_Heli_Transport_04_covered_F",700000],
            ["O_Heli_Transport_04_bench_F",700000]
		];
		
		if(license_civ_rebel) then
		{
			_return set[count _return,
			["B_G_Offroad_01_armed_F",800000]];
			_return set[count _return,
			["O_MRAP_02_hmg_F",2950000]];
		};
	};	

	case "cop_car":
	{
		_return set[count _return,["C_Offroad_01_F",20000]]; // Level 0
		//_return set[count _return,["B_Truck_01_transport_F",150000]];
		if(__GETC__(life_coplevel) > 2) then
		{
			_return set[count _return,["C_Hatchback_01_F",35000]];
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_return set[count _return,["C_SUV_01_F",30000]];
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_return set[count _return,["C_Hatchback_01_sport_F",50000]];
		};
		if(__GETC__(life_coplevel) > 5) then
		{
			_return set[count _return,["B_MRAP_01_F",100000]];
		};
		if(__GETC__(life_coplevel) > 7) then
		{
			_return set[count _return,["B_MRAP_01_hmg_F",250000]];
		};
		if(__GETC__(life_coplevel) > 9) then
		{
			_return set[count _return,["I_MRAP_03_F",100000]];
		};
		/*if(__GETC__(life_coplevel) > 5) then
		{
			_return set[count _return,
			["I_Truck_02_box_F",10000]];
			//_return set[count _return,["I_MRAP_03_hmg_F",375000]];
			_return set[count _return,
			["I_MRAP_03_F",10]];
		};
		if(__GETC__(life_coplevel) > 6) then
		{
			_return set[count _return,
			["O_MBT_02_cannon_F",0]];
			_return set[count _return,
			["B_MBT_01_cannon_F",0]];
			_return set[count _return,
			["B_MBT_01_arty_F",0]];
			_return set[count _return,
			["B_MBT_01_mlrs_F",0]];
			_return set[count _return,
			["I_APC_Wheeled_03_cannon_F",0]];
		};
		if(__GETC__(life_coplevel) > 7) then
		{
			_return set[count _return,
			["O_MBT_02_cannon_F",0]];
			_return set[count _return,
			["B_MBT_01_cannon_F",0]];
		};*/
	};
	
	case "civ_air":
	{
		_return =
		[
			["B_Heli_Light_01_F",250000],
            ["C_Heli_Light_01_civil_F",450000],
			["O_Heli_Light_02_unarmed_F",650000]
		];
	};
	
	case "cop_air":
	{
		if(__GETC__(life_coplevel) > 3) then
		{
			_return set[count _return,["B_Heli_Light_01_F",100000]];
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_return set[count _return,["C_Heli_Light_01_civil_F",100000]];
		};
		if(__GETC__(life_coplevel) > 6) then
		{
			_return set[count _return,["O_Heli_Light_02_unarmed_F",300000]];
		};
		if(__GETC__(life_coplevel) > 8) then
		{
			_return set[count _return,["B_Heli_Transport_03_unarmed_F",900000]];
            _return set[count _return,["B_Heli_Transport_01_F",1200000]];
		};
	};
	
	case "cop_airhq":
	{
		if(__GETC__(life_coplevel) > 3) then
		{
			_return set[count _return,["B_Heli_Light_01_F",100000]];
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_return set[count _return,["C_Heli_Light_01_civil_F",100000]];
		};
		if(__GETC__(life_coplevel) > 6) then
		{
			_return set[count _return,["O_Heli_Light_02_unarmed_F",300000]];
		};
		if(__GETC__(life_coplevel) > 8) then
		{
			_return set[count _return,["B_Heli_Transport_03_unarmed_F",900000]];
			_return set[count _return,["B_Heli_Transport_01_F",1200000]];
		};
	};
	
	case "civ_ship":
	{
		_return =
		[
			["C_Rubberboat",10000],
			["C_Boat_Civil_01_F",55000]
		];
	};

	case "cop_ship":
	{
		if(__GETC__(life_coplevel) > 2) then
		{
			_return set[count _return,["C_Boat_Civil_01_police_F",9000]];
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_return set[count _return,["B_Boat_Transport_01_F",3000]];
		};
		if(__GETC__(life_coplevel) > 5) then
		{
			_return set[count _return,["B_SDV_01_F",25000]];
		};
		if(__GETC__(life_coplevel) > 6) then
		{
			_return set[count _return,["B_Boat_Armed_01_minigun_F",125000]];
		};
	};
	
	case "car_g_1_admin":
	{
		if((__GETC__(life_adminlevel) < 1) OR !((getplayerUID player) in ["76561198084501424","76561198054324324","76561197987204652","76561197997682413","76561198067492915","76561198088666619"])) exitwith {closeDialog 0; hint format["Vous n'etes pas Administrateur, d�gagez de la et ne parlez a personne de ce que vous avez vue ici sinon vous allez le payer de votre vie car ceci est une information top secrete et donc bah, on tuera votre famille, vos amis, vos peluches, votre chien et meme votre mamie. Vous savez ce qu'il vous reste a faire maintenant monsieur %1, votre personnage s'autod�truira en meme temps que le serveur !",name player];};
		_return =
		[
			["B_Quadbike_01_F",500],
			["C_Offroad_01_F",2500],
			["C_Hatchback_01_sport_F",10000],
			["C_SUV_01_F",20000],
			["C_Van_01_fuel_F",7500],
			["B_Heli_Light_01_F",100000],
			["O_Heli_Light_02_unarmed_F",175000],
			["I_Heli_Transport_02_F",300000],
			["B_Heli_Transport_01_F",100000],
			["I_MRAP_03_hmg_F",3500000],
			["B_G_Offroad_01_F",15000],
			["O_MRAP_02_F",180000],
			["I_MRAP_03_F",300000],
			["B_MRAP_01_F",50000],
			["B_Truck_01_covered_F",300000],
			["B_G_Offroad_01_armed_F",350000],
			["O_Truck_03_covered_F",400000],
			["I_Heli_light_03_unarmed_F",450000],
			["C_Kart_01_Red_F",25000],
			["C_Kart_01_Vrana_F",25000],
			["C_Kart_01_Fuel_F",25000],
			["C_Kart_01_Blu_F",25000],
			["C_Kart_01_F",25000],
			["C_Van_01_transport_F",25000],
			["B_Truck_01_transport_F",25000],
			["B_Truck_01_box_F",12],
			["C_Hatchback_01_F",10000],
			["I_Truck_02_transport_F",10000],
			["I_Truck_02_covered_F",10000],
			["O_Truck_02_box_F",10000],
			["O_Truck_03_device_F",800000],
			["C_Van_01_box_F",15000],
			["Box_NATO_AmmoOrd_F",0],
			["Box_East_AmmoOrd_F",0], 
			["Box_IND_AmmoOrd_F",0], 
			["Box_NATO_Grenades_F",0], 
			["Box_East_Grenades_F",0], 
			["Box_IND_Grenades_F",0], 
			["Box_NATO_Ammo_F",0], 
			["Box_East_Ammo_F",0], 
			["Box_IND_Ammo_F",0], 
			["Box_IND_Support_F",0], 
			["Box_East_Support_F",0], 
			["Box_NATO_Support_F",0],
			["B_supplyCrate_F",0], 
			["IG_supplyCrate_F",0], 
			["O_supplyCrate_F",0], 
			["I_supplyCrate_F",0],
			["B_Heli_Light_01_armed_F",3500000],
			["B_Heli_Transport_03_F",1],
			["B_Heli_Transport_03_unarmed_F",1],
			["O_Heli_Transport_04_F",1],
			["O_Heli_Transport_04_bench_F",1],
			["O_Heli_Transport_04_fuel_F",1],
			["O_Heli_Transport_04_box_F",1],
			["O_Heli_Transport_04_medevac_F",1],
			["O_Heli_Transport_04_ammo_F",1],
			["O_Heli_Transport_04_repair_F",1],
			["O_Heli_Transport_04_covered_F",1],
			["C_Heli_Light_01_civil_F",1]
		];
		_return set[count _return,["O_MRAP_02_hmg_F",3500000]];
		_return set[count _return,["B_MRAP_01_hmg_F",600000]];
	};
	
	case "gipn_car":
	{
		_return =
		[
			["I_MRAP_03_F",300000],
            ["C_SUV_01_F",20000],
            ["O_MRAP_02_F",300000],
			["I_MRAP_03_hmg_F",3500000],
			["B_Heli_Light_01_armed_F",3500000],
			["O_Heli_Light_02_unarmed_F",250000]
		];
	};

    case "gipn_air":
	{
		_return =
		[
                        ["I_Heli_Transport_02_F",500000],
                        ["B_Heli_Light_01_F",80000]
		];
	};
	
	case "veh_mili":
	{
		_return = 
		[
			["C_SUV_01_F",20000],
			["I_MRAP_03_F",240000],
			["I_MRAP_03_hmg_F",750000],
			["B_MRAP_01_F",240000],
			["C_Hatchback_01_sport_F",75000],
			["B_MRAP_01_hmg_F",650000],
			["B_Truck_01_covered_F",300000]
		];
	};
	
	case "mili_air":
	{
		_return =
		[
			["B_Heli_Light_01_F",80000]
		];
	};
	
	case "tdlccar_donate":
	{
		if(__GETC__(life_donator) < 1) exitwith {closeDialog 0; hint "Vous n'etes pas donateur";};
		_return =
		[
			["B_Quadbike_01_F",500],
			["C_Offroad_01_F",2500],
			["C_SUV_01_F",20000],
			["C_Van_01_Fuel_F",7500],
			["B_Heli_Light_01_F",100000],
			["C_Hatchback_01_sport_F",10000],
			["B_Truck_01_covered_F",150000],
			["O_Truck_03_device_F",800000]
		];

		if(license_civ_rebel) then
		{
			_return set[count _return,["O_MRAP_02_F",275000]];
			_return set[count _return,["I_MRAP_03_F",300000]];
            _return set[count _return,["O_Truck_03_covered_F",400000]];
			_return set[count _return,["B_G_Offroad_01_armed_F",650000]];
           // _return set[count _return,["I_Heli_light_03_unarmed_F",450000]];
			//_return set[count _return,["B_Heli_Light_01_armed_F",900000]];
			//_return set[count _return,["I_MRAP_03_hmg_F",1500000]];
		};
	};
	
	case "tdlcair_donate":
	{
		if(__GETC__(life_donator) < 1) exitwith {closeDialog 0; hint "Vous n'etes pas donateur";};
		_return = 
		[
			["I_Heli_Transport_02_F",500000],
			["O_Heli_Light_02_unarmed_F",650000]
		];
		
		if(license_civ_rebel) then
		{
            _return set[count _return,["I_Heli_light_03_unarmed_F",450000]];
			//_return set[count _return,["B_Heli_Light_01_armed_F",900000]];
		};
	};
};

_return;

