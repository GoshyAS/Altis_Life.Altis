/*
	File: fn_vehicleColorCfg.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Master configuration for vehicle colors.
*/
private["_vehicle","_ret","_path"];
_vehicle = [_this,0,"",[""]] call BIS_fnc_param;
if(_vehicle == "") exitWith {[]};
_ret = [];

switch (_vehicle) do
{
	case "I_Heli_Transport_02_F":
	{
		_path = "\a3\air_f_beta\Heli_Transport_02\Data\Skins\";
		_ret =
		[
			[_path + "heli_transport_02_1_ion_co.paa","civ",_path + "heli_transport_02_2_ion_co.paa",_path + "heli_transport_02_3_ion_co.paa"],
			[_path + "heli_transport_02_1_dahoman_co.paa","civ",_path + "heli_transport_02_2_dahoman_co.paa",_path + "heli_transport_02_3_dahoman_co.paa"]/*,
			["texture\lilium\mohawk_front_reb.paa","donate","texture\lilium\mohawk_back_reb.paa","texture\lilium\mohawk_under_reb.paa"],
			["texture\lilium\mohawk_front_lilium.paa","donate","texture\lilium\mohawk_back_lilium.paa","texture\lilium\mohawk_under_lilium.paa"]*/
		];
	};
	
	case "I_MRAP_03_F":
	{
		_path = "\a3\soft_f_beta\MRAP_03\data\";
		_ret =
		[
			[_path + "mrap_03_ext_co.paa","reb"],
			["texture\Police\stridercop.jpg","cop"],
			[_path + "mrap_03_ext_indp_co.paa","reb"]/*,
			["texture\Rebel\striderrouge.jpg","reb"],
			["texture\Rebel\striderrose.jpg","reb"],
			["texture\Rebel\striderbleu.jpg","reb"],
			["texture\Rebel\stridergris.jpg","reb"],
			["texture\Prive\strider_rca.jpg","kz"]*/
			//["texture\stridershield.jpg","cop"]
		];
	};
	
	case "I_MRAP_03_hmg_F":
	{
		_path = "\a3\soft_f_beta\MRAP_03\data\";
		_ret =
		[
			[_path + "mrap_03_ext_indp_co.paa","reb"],
			["texture\Police\stridercop.jpg","cop"],
			[_path + "mrap_03_ext_co.paa","reb"]/*,
			["texture\Rebel\striderrouge.jpg","reb"],
			["texture\Rebel\striderrose.jpg","reb"],
			["texture\Rebel\striderbleu.jpg","reb"],
			["texture\Rebel\stridergris.jpg","reb"],
			["texture\Prive\strider_rca.jpg","kz"]*/
			//["texture\stridershield.jpg","cop"]
		];
	};

	case "C_Hatchback_01_sport_F":
	{
		_path = "\a3\soft_f_gamma\Hatchback_01\data\";
		_ret =
		[
			[_path + "hatchback_01_ext_sport01_co.paa","civ"],
			[_path + "hatchback_01_ext_sport02_co.paa","civ"],
			[_path + "hatchback_01_ext_sport03_co.paa","civ"],
			[_path + "hatchback_01_ext_sport04_co.paa","civ"],
			[_path + "hatchback_01_ext_sport05_co.paa","civ"],
			[_path + "hatchback_01_ext_sport06_co.paa","civ"],
			["texture\Police\police_ayon.jpg","cop"],
			["texture\Civil\dragon_hatchback_sport.jpg","donate"],
			["texture\Civil\hatchback_sport_emg.jpg","donate"]
		];
	};

	case "C_Offroad_01_F":
	{
		_ret =
		[
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_co.paa", "civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE01_CO.paa", "civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE02_CO.paa", "civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE03_CO.paa","civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE04_CO.paa","civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE05_CO.paa","civ"],
            ["#(argb,8,8,3)color(0.6,0.3,0.01,1)","civ"],
			["texture\Police\police_offroad.jpg","cop"],
			["texture\Civil\monsterenergy_off.jpg","civ"],
			["texture\Medic\ttmedic.jpg","med"]/*,
			["texture\lilium\offroad_taxi.paa","civ"],
			["texture\lilium\offroad_depannage.paa","civ"]*/
		];
	};

	case "C_Hatchback_01_F":
	{
		_ret =
		[
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base01_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base02_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base03_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base04_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base06_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base07_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base08_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base09_co.paa","civ"],
            ["texture\Police\police_ayon.jpg","cop"],
			["texture\Civil\dragon_hatchback_sport.jpg","donate"],
			["texture\Civil\hatchback_sport_emg.jpg","donate"]
		];
	};

	case "DAR_ImpalaCiv":
	{
		_ret =
		[
			["impala\Data\BodyBlack_co.paa","civ"],
			["impala\Data\BodyBlue_co.paa","civ"],
			["impala\Data\BodyRed_co.paa","civ"],
			["impala\Data\BodySilver_co.paa","civ"]
		];
	};

	case "C_SUV_01_F":
	{
		_ret =
		[
			["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_co.paa","civ"],
			["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_03_co.paa","civ"],
			["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_04_co.paa","civ"],
			["texture\Police\suvgendar.jpg","cop"],
			
			["texture\Medic\suvmedic.jpg","med"], //4
			["texture\Admin\suv_branks.jpg","admin"],
			["texture\Admin\suvadmin.jpg","admin"],
			["texture\Admin\suv_tdlc.jpg","admin"],
			["texture\Rebel\suv_camo.jpg","reb"],//8
			["texture\Rebel\suv_reb.jpg","reb"],//9
			["texture\Civil\tdlc_suv_rose.jpg","donate"],
			["texture\Civil\suvciv.jpg","donate"],
			["texture\Civil\civile_suv_noir.jpg","donate"],
			["texture\Civil\ferrari_suv.jpg","donate"]
		];
	};

        case "O_MRAP_02_F":
	{
		_ret =
		[
			["\a3\soft_f\MRAP_02\Data\mrap_02_ext_01_co.paa","reb","\a3\soft_f\MRAP_02\Data\mrap_02_ext_02_co.paa"],
			["texture\Rebel\ifritnoir.jpg","reb","texture\Rebel\ifritnoir2.jpg"],
			["texture\Rebel\ifritrose.jpg","reb","texture\Rebel\ifritrose2.jpg","#(argb,8,8,2)color(1,0,1,1)"],/*
			["texture\Prive\ifrit_rca.jpg","kz","texture\Prive\ifrit1_rca.jpg"],*/
			["texture\Admin\ifrit_admin.jpg","admin","texture\Admin\ifrit1_admin.jpg"]
		];
	};
	
	case "O_MRAP_02_hmg_F":
	{
		_ret =
		[
			["\a3\soft_f\MRAP_02\Data\mrap_02_ext_01_co.paa","reb","\a3\soft_f\MRAP_02\Data\mrap_02_ext_02_co.paa"],
			["texture\Rebel\ifritnoir.jpg","reb","texture\Rebel\ifritnoir2.jpg"],
			["texture\Rebel\ifritrose.jpg","reb","texture\Rebel\ifritrose2.jpg","#(argb,8,8,2)color(1,0,1,1)"],/*
			["texture\Prive\ifrit_rca.jpg","kz","texture\Prive\ifrit1_rca.jpg"],*/
			["texture\Admin\ifrit_admin.jpg","admin","texture\Admin\ifrit1_admin.jpg","#(argb,8,8,3)color(0.05,0.05,0.05,1)"]
		];
	};

	case "C_Van_01_box_F":
	{
		_ret =
		[
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa","civ"],
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa","civ"],
			["texture\Admin\van_avant.jpg","admin","texture\Admin\van_box_branks.jpg"]
		];
	};
	
	case "C_Van_01_fuel_F":
	{
		_ret =
		[
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa","civ"],
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa","civ"],
			["texture\Admin\van_avant.jpg","admin","texture\Admin\van_tank.jpg"]
		];
	};

	case "C_Van_01_transport_F":
	{
		_ret =
		[
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa","civ"],
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa","civ"]
		];
	};

	case "B_Quadbike_01_F":
	{
		_ret =
		[
			["\A3\Soft_F\Quadbike_01\Data\Quadbike_01_co.paa","cop"],
			["\A3\Soft_F\Quadbike_01\Data\quadbike_01_opfor_co.paa","reb"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_black_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_blue_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_red_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_white_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_indp_co.paa","civ"],
			["\a3\soft_f_gamma\Quadbike_01\data\quadbike_01_indp_hunter_co.paa","civ"],
			["\a3\soft_f_gamma\Quadbike_01\data\quadbike_01_indp_hunter_co.paa","reb"]
		];
	};

	case "B_Heli_Light_01_F":
	{
		_ret =
		[
            ["texture\Police\littlebirdgendar.jpg","cop"],  //0
			["texture\Police\littlebirdgendar.jpg","bug"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_ion_co.paa","fed"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_blue_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_indp_co.paa","donate"],//5
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_blueline_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_elliptical_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_furious_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_jeans_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_speedy_co.paa","civ"],//10
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_sunset_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_vrana_co.paa","civ"],
			//["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_blue_co.paa","jour"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_digital_co.paa","reb"], //13
            ["texture\Medic\littlebirdmedic.jpg","med"]
	];
};

	case "O_Heli_Light_02_unarmed_F":
	{
		_ret =
		[
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_co.paa","fed"],
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_civilian_co.paa","civ"],
            ["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_co.paa","civ"],
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_indp_co.paa","donate"],
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_opfor_co.paa","reb"],
            ["texture\Police\orcagendar.jpg","cop"],
			["texture\Medic\orcamedic.jpg","med"]
		];
	};

        case "B_MRAP_01_hmg_F":
	{
		_ret =
		[
			["texture\Police\huntergendarmerie.jpg","cop","texture\Police\bachehunter.jpg","#(argb,8,8,3)color(0.05,0.05,0.05,1)"]
           // ["texture\Police\swat_hunter_1.jpg","cop"]
		];
	};

	case "B_MRAP_01_F":
	{
		_ret =
		[
			["texture\Police\huntergendarmerie.jpg","cop","texture\Police\bachehunter.jpg","#(argb,8,8,3)color(0.05,0.05,0.05,1)"]
		];
	};

	case "I_Truck_02_covered_F":
	{
		_ret =
		[
			["\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa","civ","\a3\soft_f_beta\Truck_02\data\truck_02_kuz_co.paa"],
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","fed"]
		];
	};
	
	case "O_Truck_02_box_F":
	{
		_ret =
		[
			["texture\Admin\zamak_avant.jpg","admin","texture\Admin\truck_02_branks.jpg"]
		];
	};

	case "I_Truck_02_transport_F":
	{
		_ret =
		[
			["\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa","civ","\a3\soft_f_beta\Truck_02\data\truck_02_kuz_co.paa"],
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","fed"]
		];
	};
	
	case "B_Truck_01_box_F":
	{
		_ret =
		[
			["texture\Civil\truck_01_ext_01_co.jpg","admin","texture\Civil\truck_01_ext_02_co.jpg"]
			//["#(argb,8,8,3)color(0.05,0.05,0.05,1)","admin","#(argb,2,8,3)color(2.05,2.05,2.05,1)","#(argb,2,8,3)color(0.85,2.85,1.05,1)"]
		];
	};

	case "B_APC_Wheeled_01_cannon_F":
	{
		_ret =
		[
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","fed"]
		];
	};

	case "O_Heli_Attack_02_black_F":
	{
		_ret =
		[
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","fed"]
		];
	};
	
	case "C_Boat_Civil_01_police_F":
	{
		_ret =
		[
			["texture\Police\boatgen.jpg","cop"]
		];
	};
	
	case "C_Heli_Light_01_civil_F":
	{
		_ret =
		[
			["#(argb,8,8,3)color(0.00,0.00,0.15,1)","cop","#(argb,8,8,3)color(0.00,0.00,0.15,1)"]
		];
	};
	
	case "B_Heli_Transport_03_unarmed_F":
	{
		_ret =
		[
			["#(argb,8,8,3)color(0.00,0.00,0.06,1)","cop","#(argb,8,8,3)color(0.00,0.00,0.06,1)"]
		];
	};
	
	case "B_Heli_Transport_01_F":
	{
		_ret =
		[
			["#(argb,8,8,3)color(0.00,0.00,0.09,1)","cop","#(argb,8,8,3)color(0.00,0.00,0.09,1)"]
		];
	};
};

_ret;