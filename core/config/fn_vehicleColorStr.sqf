/*
	File: fn_vehicleColorStr.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Master configuration for color strings depending on their index location.
*/
private["_vehicle","_color","_index"];
_vehicle = [_this,0,"",[""]] call BIS_fnc_param;
_index = [_this,1,-1,[0]] call BIS_fnc_param;
_color = "";

switch (_vehicle) do
{
    case "C_Offroad_01_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "Rouge";};
			case 1: {_color = "Jaune";};
			case 2: {_color = "Blanc";};
			case 3: {_color = "Bleu";};
			case 4: {_color = "Rouge fonce";};
			case 5: {_color = "Bleu / Blanc"};
            case 6: {_color = "Taxi";};
            case 7: {_color = "Gendarmerie"};
			case 8: {_color = "Monster"};
			case 9: {_color = "SMUR"};/*
			case 10: {_color = "Taxi"};
			case 11: {_color = "Depannage"};*/
		};
	};
        case "DAR_ImpalaCiv" :
	{
		switch (_index) do
		{
			case 0: {_color = "Noir";};
			case 1: {_color = "Bleu";};
			case 2: {_color = "Rouge";};
			case 3: {_color = "Silver";};
		};
	};

	case "C_Hatchback_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Beige";};
			case 1: {_color = "Vert";};
			case 2: {_color = "Bleu";};
			case 3: {_color = "Bleu fonce";};
			case 4: {_color = "Jaune";};
			case 5: {_color = "Blanc"};
			case 6: {_color = "Gris"};
			case 7: {_color = "Noir"};
            case 8: {_color = "Gendarmerie"};
			case 9: {_color = "Dragon bleu"};
			case 10: {_color = "Manster enorgy"};
		};
	};

	case "C_Hatchback_01_sport_F":
	{
		switch(_index) do
		{
			case 0: {_color = "Rouge"};
			case 1: {_color = "Bleu fonce"};
			case 2: {_color = "Orange"};
			case 3: {_color = "Noir / Blanc"};
			case 4: {_color = "Tan"};
			case 5: {_color = "Vert"};
			case 6: {_color = "Gendarmerie"};
			case 7: {_color = "Dragon bleu"};
			case 8: {_color = "Monster energy"};/*
			case 9: {_color = "Dragon bleu"};
			case 10: {_color = "Manster enorgy"};*/
		};
	};

	case "C_SUV_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Rouge fonce";};
			case 1: {_color = "Silver";};
			case 2: {_color = "Orange";};
			/*
            case 4: {_color = "Noir";};
            case 5: {_color = "BR";};
            case 6: {_color = "BAT";};*/
			case 3: {_color = "Gendarmerie";};/*
			case 8: {_color = "Forrory";};
			
			case 11: {_color = "Tauren Vert/Noir";};
				case 12: {_color = "SUV RESERVE Admin";};
				
			//case 15: {_color = "TDLCMobile";};
			case 15: {_color = "RCA";};
			
			case 17: {_color = "Snake Lilium"};
			case 18: {_color = "Racing Noir Lilium"};*/
			//case 20: {_color = "Shield"};
            case 4: {_color = "Médecin"};
				case 5: {_color = "SUV Branks"};
				case 6: {_color = "SUV RESERVE Admin";};
				case 7: {_color = "SUV Admin Blanc/noir";};
			case 8: {_color = "SUV Camo";};
			case 9: {_color = "SUV Rebelle";};
			case 10: {_color = "Rose";};
			case 11: {_color = "Vert/Noir Tauren";};
			case 12: {_color = "Noir";};
			case 13: {_color = "Ferrari";};
		};
	};

	case "C_Van_01_box_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Blanc"};
			case 1: {_color = "Rouge"};
			case 2: {_color = "Branks"};
		};
	};

	case "C_Van_01_transport_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Blanc"};
			case 1: {_color = "Rouge"};
		};
	};

	case "C_Van_01_fuel_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Blanc"};
			case 1: {_color = "Rouge"};
			case 2: {_color = "Branks"};
		};
	};

	case "B_Quadbike_01_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "Brown"};
			case 1: {_color = "Digi Desert"};
			case 2: {_color = "Noir"};
			case 3: {_color = "Bleu"};
			case 4: {_color = "Rouge"};
			case 5: {_color = "Blanc"};
			case 6: {_color = "Digi Vert"};
			case 7: {_color = "Hunter Camo"};
			case 8: {_color = "Rebel Camo"};
		};
	};

	case "B_Heli_Light_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Gendarmerie"};  // ["texture\police_heli.jpg","cop"], 
			case 1: {_color = "Gendarmerie bis"}; //["texture\police_heli.jpg","bug"],
			case 2: {_color = "Civ Noir"};	//["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_ion_co.paa","fed"],
			case 3: {_color = "Civ Bleu"};	//["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_blue_co.paa","civ"],
			case 4: {_color = "Civ Rouge"}; //Digi Vert	["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_co.paa","civ"],
			case 5: {_color = "Digi Vert"}; //Bleuline //["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_indp_co.paa","donate"],
			case 6: {_color = "Bleuline"}; //Elliptical ["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_blueline_co.paa","civ"],
			case 7: {_color = "Elliptical"}; //Furious ["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_elliptical_co.paa","civ"],
			case 8: {_color = "furious"}; //Jeans Bleu ["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_furious_co.paa","civ"],
			case 9: {_color = "Jeans Bleu"}; //Speedy Rougeline ["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_jeans_co.paa","civ"],
			case 10: {_color = "Speedy Rougeline"}; //Sunset //["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_speedy_co.paa","civ"],
			case 11: {_color = "Sunset"};  //Vrana ["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_sunset_co.paa","civ"],
			case 12: {_color = "Vrana"}; //["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_vrana_co.paa","civ"],
            case 13: {_color = "Digital"}; //["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_digital_co.paa","reb"]
			//case 14: {_color = "Criminel"};
            case 14: {_color = "Médecin"};

	};

};

	case "O_Heli_Light_02_unarmed_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Noir"};
			case 1: {_color = "Blanc / Bleu"};
            case 2: {_color = "Noir"};
			case 3: {_color = "Digi Vert"};
			case 4: {_color = "Desert Digi"};
            case 5: {_color = "Gendarmerie"};
			case 6: {_color = "Medic"};
		};
	};
	
	case "I_MRAP_03_F": // ajout TDLC Strider camo
	{
		switch (_index) do
		{
			case 0: {_color = "Beige"};
			case 1: {_color = "gendarmerie"};
			case 2: {_color = "camo rebelle"};
			/*case 3: {_color = "Rouge"};
			case 4: {_color = "Rose/Noir"};
			case 5: {_color = "Bleu"};
			case 6: {_color = "Gris"};
			case 7: {_color = "RCA"};*/
			//case 8: {_color = "Shield"};
		};
	};
	
	case "I_MRAP_03_hmg_F": // ajout TDLC Strider camo
	{
		switch (_index) do
		{
			case 0: {_color = "camo rebelle"};
			case 1: {_color = "gendarmerie"};
			case 2: {_color = "Beige"};
			/*case 3: {_color = "Rouge"};
			case 4: {_color = "Rose/Noir"};
			case 5: {_color = "Bleu"};
			case 6: {_color = "Gris"};
			case 7: {_color = "RCA"};*/
			//case 8: {_color = "Shield"};
		};
	};

    case "O_MRAP_02_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Rebelle"};
			case 1: {_color = "Ifrit Noir"};
			case 2: {_color = "Ifrit Rose"};/*
			case 3: {_color = "RCA"};*/
			case 1: {_color = "Admin Ifrit Noir"};
		};
	};
	
	case "O_MRAP_02_hmg_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Rebelle"};
			case 1: {_color = "Ifrit Noir"};
			case 2: {_color = "Ifrit Rose"};/*
			case 3: {_color = "RCA"};*/
			case 1: {_color = "Admin Ifrit Noir"};
		};
	};

	case "B_MRAP_01_hmg_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Gendarmerie"};
			//case 1: {_color = "Gendarmerie"};
		};
	};

	case "B_MRAP_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Gendarmerie"};
            //case 1: {_color = "Noir"};
			//case 2: {_color = "Gendarmerie"};
            //case 3: {_color = "KZ"};
		};
	};

	case "I_Truck_02_coveRouge_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Orange"};
			case 1: {_color = "Noir"};
		};
	};

	case "I_Truck_02_transport_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Orange"};
			case 1: {_color = "Noir"};
		};
	};
	
	case "B_Truck_01_box_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Civil"};
			case 1: {_color = "test1"};
		};
	};

	case "B_APC_Wheeled_01_cannon_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Noir"};
		};
	};

	case "O_Heli_Attack_02_Noir_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Noir"};
		};
	};

	case "I_Heli_Transport_02_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Ion"};
			case 1: {_color = "Dahoman"};/*
			case 2: {_color = "Rebelle Lilium"};
			case 3: {_color = "Lilium Rouge et noir"};*/
		};
	};

	case "B_APC_Wheeled_01_cannon_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Noir"};
		};
	};
	
	case "O_Truck_02_box_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Branks"};
		};
	};
	
	case "C_Boat_Civil_01_police_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Gendarmerie"};
		};
	};
	
	case "C_Heli_Light_01_civil_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Gendarmerie"};
		};
	};
	
	case "B_Heli_Transport_03_unarmed_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Gendarmerie"};
		};
	};
	
	case "B_Heli_Transport_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Gendarmerie"};
		};
	};
};

_color;