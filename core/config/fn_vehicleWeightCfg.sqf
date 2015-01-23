/*
	File: fn_vehicleWeightCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for vehicle weight.
*/
private["_className"];
_className = [_this,0,"",[""]] call BIS_fnc_param;

switch (_className) do
{
	//Vehicule
    	//Kart
    case "C_Kart_01_Red_F": {10};
    case "C_Kart_01_Vrana_F": {10};
	case "C_Kart_01_Fuel_F": {10}; 
	case "C_Kart_01_Blu_F": {10};
	case "C_Kart_01_F": {10};
    
    	//Quad
    case "B_Quadbike_01_F": {25};
    case "O_G_Quadbike_01_F": {25};
    
    	//SUV tout terrain et hayon
	case "C_Offroad_01_F": {75};
	case "B_G_Offroad_01_F": {65};
    case "C_Hatchback_01_F": {40};
	case "C_Hatchback_01_sport_F": {40};
	case "C_SUV_01_F": {55};
    
    	//Camion
	case "C_Van_01_transport_F": {100};
	case "C_Van_01_fuel_F": {100};
	case "C_Van_01_box_F": {150};
    
	case "I_Truck_02_covered_F": {250}; //Zamak couvert
	case "I_Truck_02_transport_F": {200}; //Zamak transport
	
    case "B_Truck_01_box_F": {500}; //Hemtt cargaison
	case "B_Truck_01_transport_F": {325}; // Hemtt transport

    case "O_Truck_03_transport_F": {325}; // Tempest transport
	case "O_Truck_03_covered_F": {550}; // Tempest couvert
	case "O_Truck_03_device_F": {650}; // Tempest matériel
     
    	//Helico
    case "B_Heli_Light_01_F": {90}; //Little Bird
	case "O_Heli_Light_02_unarmed_F": {180}; //Orca
	case "I_Heli_Transport_02_F": {400}; // Mohawk
    case "C_Heli_Light_01_civil_F": {100}; // M900
    case "B_Heli_Transport_03_unarmed_F": {100}; //Huron noir
    case "B_Heli_Transport_01_F": {100}; //Ghost Hawk
    case "O_Heli_Transport_04_bench_F": {100}; // Taru banc
    case "O_Heli_Transport_04_covered_F": {300}; // Taru transport
    
    	//Bateau
	case "C_Boat_Civil_01_F": {120};
	case "C_Boat_Civil_01_police_F": {120};
	case "C_Boat_Civil_01_rescue_F": {120};
    case "C_Rubberboat": {80};
	case "O_Boat_Armed_01_hmg_F": {100};
	case "B_Boat_Armed_01_minigun_F": {100};
	case "I_Boat_Armed_01_minigun_F": {100};
	case "B_G_Boat_Transport_01_F": {45};
	case "B_Boat_Transport_01_F": {45};
    case "B_SDV_01_F": {50};
    
    	//Blindé
	case "B_MRAP_01_F": {60};
	case "O_MRAP_02_F": {60};
	case "I_MRAP_03_F": {60};
	
	case "Land_CargoBox_V1_F": {5000};
	case "Box_IND_Grenades_F": {550};
	case "B_supplyCrate_F": {1500};
	default {-1};
};