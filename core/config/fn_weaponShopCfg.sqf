#include <macro.h>
/*
	File: fn_weaponShopCfg.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Master configuration file for the weapon shops.

	Return:
	String: Close the menu
	Array:
	[Shop Name,
	[ //Array of items to add to the store
		[classname,Custom Name (set nil for default),price]
	]]
*/
private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.

switch(_shop) do
{
	case "cop_basic":
	{
		switch(true) do
		{
			case (playerSide != west): {"Vous n'êtes pas gendarme!"};
			default
			{
				["Armurerie GAV",
					[
						["SMG_02_F","Sting",10000],
						["30Rnd_9x21_Mag","Munition Sting",75],
						["hgun_P07_snds_F","Taser",2000],
						["16Rnd_9x21_Mag","Munition Taser",50],
						["optic_ACO_grn",nil,1500],
						["acc_flashlight",nil,200],
						["acc_pointer_IR",nil,200],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["Medikit",nil,1000],
						["NVGoggles_OPFOR",nil,2000]
					]
				];
			};
		};
	};

	case "med_basic":
	{
		switch (true) do
		{
			case (playerSide != independent): {"Vous n'êtes pas médecin!"};
			default {
				["Hôpital",
					[
						["ItemGPS",nil,100],
						["Binocular",nil,150],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,500],
						["NVGoggles_INDEP",nil,1200],
                        ["U_I_HeliPilotCoveralls",nil,12000],
						["B_Carryall_oucamo",nil,3000]
					]
				];
			};
		};
	};

	case "cop_patrol":
	{
		switch(true) do
		{
			case (playerSide != west): {"Vous n'êtes pas gendarme!"};
			case (__GETC__(life_coplevel) < 2): {"Vous n'êtes pas Brigadier!"};
			default
			{
				["Armurerie Brigadier",
					[
						["arifle_Mk20C_F","Mk20",20000],
						["30Rnd_556x45_Stanag","Munition 5.56",250],
						["SMG_02_F","Sting",10000],
						["30Rnd_9x21_Mag","Munition Sting",75],
						["hgun_P07_snds_F","Taser",2000],
						["16Rnd_9x21_Mag","Munition Taser",50],
						["muzzle_snds_M","Silencieux 5.56",1000],
						["muzzle_snds_H","Silencieux MX",200],
						["optic_Holosight",nil,1200],
						["optic_Arco",nil,2500],
						["acc_flashlight",nil,200],
						["acc_pointer_IR",nil,200],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["Medikit",nil,1000],
						["NVGoggles_OPFOR",nil,2000]
					]
				];
			};
		};
	};

	case "cop_sergent":
	{
		switch(true) do
		{
			case (playerSide != west): {"Vous n'êtes pas gendarme!"};
			case (__GETC__(life_coplevel) < 3): {"Vous nêtes pas Gendarme!"};
			default
			{
				["Armurerie Gendarme",
					[
						["arifle_MXC_Black_F","MXC",20000],
						["30Rnd_65x39_caseless_mag","Munition MX",250],
						["arifle_Mk20C_F",nil,20000],
						["30Rnd_556x45_Stanag","Munition 5.56",250],
						["muzzle_snds_M","Silencieux 5.56",1000],
						["muzzle_snds_H","Silencieux MX",200],
						["optic_Holosight",nil,1200],
						["optic_Arco",nil,2500],
						["optic_Hamr",nil,1500],
						["acc_flashlight",nil,200],
						["acc_pointer_IR",nil,200],
						["SMG_02_F","Sting",10000],
						["30Rnd_9x21_Mag","Munition Sting",75],
						["hgun_P07_snds_F","Taser",2000],
						["16Rnd_9x21_Mag","Munition Taser",50],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["Medikit",nil,1000],
						["NVGoggles_OPFOR",nil,2000]
					]
				];
			};
		};
	};

	case "cop_adj":
	{
		switch(true) do
		{
			case (playerSide != west): {"Vous n'êtes pas gendarme!"};
			case (__GETC__(life_coplevel) < 4): {"Vous nêtes pas Adjudant!"};
			default
			{
				["Armurerie Adjudant",
					[
						["arifle_MX_Black_F",nil,25000],
						["arifle_MXC_Black_F","MXC",20000],
						["30Rnd_65x39_caseless_mag","Munition MX",250],
						["arifle_Mk20C_F",nil,20000],
						["30Rnd_556x45_Stanag","Munition 5.56",250],
						["muzzle_snds_M","Silencieux 5.56",1000],
						["muzzle_snds_H","Silencieux MX",200],
						["optic_Holosight",nil,1200],
						["optic_Arco",nil,2500],
						["optic_Hamr",nil,1500],
						["optic_MRCO",nil,1500],
						["acc_flashlight",nil,200],
						["acc_pointer_IR",nil,200],
						["SMG_02_F","Sting",10000],
						["30Rnd_9x21_Mag","Munition Sting",75],
						["hgun_P07_snds_F","Taser",2000],
						["16Rnd_9x21_Mag","Munition Taser",50],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["Medikit",nil,1000],
						["NVGoggles_OPFOR",nil,2000]
					]
				];
			};
		};
	};

	case "cop_major":
	{
		switch(true) do
		{
			case (playerSide != west): {"Vous n'êtes pas gendarme!"};
			case (__GETC__(life_coplevel) < 5): {"Vous nêtes pas Major!"};
			default
			{
				["Armurerie Major",
					[
						["arifle_MXM_Black_F",nil,30000],
						["arifle_MX_Black_F",nil,25000],
						["arifle_MXC_Black_F","MXC",20000],
						["30Rnd_65x39_caseless_mag","Munition MX",250],
						["arifle_Mk20C_F",nil,20000],
						["30Rnd_556x45_Stanag","Munition 5.56",250],
						["muzzle_snds_M","Silencieux 5.56",1000],
						["muzzle_snds_H","Silencieux MX",200],
						["optic_Holosight",nil,1200],
						["optic_Arco",nil,2500],
						["optic_Hamr",nil,1500],
						["optic_MRCO",nil,1500],
						["optic_DMS",nil,1500],
						["acc_flashlight",nil,200],
						["acc_pointer_IR",nil,200],
						["SMG_02_F","Sting",10000],
						["30Rnd_9x21_Mag","Munition Sting",75],
						["hgun_P07_snds_F","Taser",2000],
						["16Rnd_9x21_Mag","Munition Taser",50],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["Medikit",nil,1000],
						["NVGoggles_OPFOR",nil,2000]
					]
				];
			};
		};
	};

	case "cop_lt":
	{
		switch(true) do
		{
			case (playerSide != west): {"Vous n'êtes pas gendarme!"};
			case (__GETC__(life_coplevel) < 6): {"Vous nêtes pas Lieutenant!"};
			default
			{
				["Armurerie Lieutenant",
					[
						["arifle_MX_SW_Black_F",nil,35000],
						["100Rnd_65x39_caseless_mag","Munition MX SW",250],
						["arifle_MXM_Black_F",nil,30000],
						["arifle_MX_Black_F",nil,25000],
						["arifle_MXC_Black_F","MXC",20000],
						["30Rnd_65x39_caseless_mag","Munition MX",250],
						["arifle_Mk20C_F",nil,20000],
						["30Rnd_556x45_Stanag","Munition 5.56",250],
						["muzzle_snds_M","Silencieux 5.56",1000],
						["muzzle_snds_H","Silencieux MX",200],
                        ["SmokeShellBlue","Fumigène bleue",200],
                        ["SmokeShell","Fumigène blanche",200],
						["optic_Holosight",nil,1200],
						["optic_Arco",nil,2500],
						["optic_Hamr",nil,1500],
						["optic_MRCO",nil,1500],
						["optic_DMS",nil,1500],
						["optic_SOS",nil,1500],
						["acc_flashlight",nil,200],
						["acc_pointer_IR",nil,200],
						["SMG_02_F","Sting",10000],
						["30Rnd_9x21_Mag","Munition Sting",75],
						["hgun_P07_snds_F","Taser",2000],
						["16Rnd_9x21_Mag","Munition Taser",50],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["Medikit",nil,1000],
						["NVGoggles_OPFOR",nil,2000]
					]
				];
			};
		};
	};

	case "cop_cap":
	{
		switch(true) do
		{
			case (playerSide != west): {"Vous n'êtes pas gendarme!"};
			case (__GETC__(life_coplevel) < 7): {"Vous nêtes pas Capitaine!"};
			default
			{
				["Armurerie Capitaine",
					[
						["LMG_Mk200_F",nil,40000],
						["200Rnd_65x39_cased_Box","Munition Mk200",250],
						["muzzle_snds_H_MG","Silencieux Mk200",200],
						["arifle_MX_SW_Black_F",nil,35000],
						["100Rnd_65x39_caseless_mag","Munition MX SW",250],
						["arifle_MXM_Black_F",nil,30000],
						["arifle_MX_Black_F",nil,25000],
						["arifle_MXC_Black_F","MXC",20000],
						["30Rnd_65x39_caseless_mag","Munition MX",250],
						["arifle_Mk20C_F",nil,20000],
						["30Rnd_556x45_Stanag","Munition 5.56",250],
						["muzzle_snds_M","Silencieux 5.56",1000],
						["muzzle_snds_H","Silencieux MX",200],
                        ["SmokeShellBlue","Fumigène bleue",200],
                        ["SmokeShell","Fumigène blanche",200],
						["optic_Holosight",nil,1200],
						["optic_Arco",nil,2500],
						["optic_Hamr",nil,1500],
						["optic_MRCO",nil,1500],
						["optic_DMS",nil,1500],
						["optic_SOS",nil,1500],
						["acc_flashlight",nil,200],
						["acc_pointer_IR",nil,200],
						["SMG_02_F","Sting",10000],
						["30Rnd_9x21_Mag","Munition Sting",75],
						["hgun_P07_snds_F","Taser",2000],
						["16Rnd_9x21_Mag","Munition Taser",50],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
                        ["Rangefinder",nil,500],
						["Medikit",nil,1000],
						["NVGoggles_OPFOR",nil,2000]
					]
				];
			};
		};
	};

	case "cop_com":
	{
		switch(true) do
		{
			case (playerSide != west): {"Vous n'êtes pas gendarme!"};
			case (__GETC__(life_coplevel) < 8): {"Vous nêtes pas Commandant!"};
			default
			{
				["Armurerie Commandant",
					[
						["arifle_MX_GL_Black_F",nil,45000],
						["3Rnd_Smoke_Grenade_shell","Fumigène blanche GL",250],
                        ["3Rnd_SmokeBlue_Grenade_shell","Fumigène bleue GL",250],
						["LMG_Mk200_F",nil,40000],
						["200Rnd_65x39_cased_Box","Munition Mk200",250],
						["muzzle_snds_H_MG","Silencieux Mk200",200],
						["arifle_MX_SW_Black_F",nil,35000],
						["100Rnd_65x39_caseless_mag","Munition MX SW",250],
						["arifle_MXM_Black_F",nil,30000],
						["arifle_MX_Black_F",nil,25000],
						["arifle_MXC_Black_F","MXC",20000],
						["30Rnd_65x39_caseless_mag","Munition MX",250],
						["arifle_Mk20C_F",nil,20000],
						["30Rnd_556x45_Stanag","Munition 5.56",250],
						["muzzle_snds_M","Silencieux 5.56",1000],
						["muzzle_snds_H","Silencieux MX",200],
                        ["SmokeShellBlue","Fumigène bleue",200],
                        ["SmokeShell","Fumigène blanche",200],
						["optic_Holosight",nil,1200],
						["optic_Arco",nil,2500],
						["optic_Hamr",nil,1500],
						["optic_MRCO",nil,1500],
						["optic_DMS",nil,1500],
						["optic_SOS",nil,1500],
						["acc_flashlight",nil,200],
						["acc_pointer_IR",nil,200],
						["SMG_02_F","Sting",10000],
						["30Rnd_9x21_Mag","Munition Sting",75],
						["hgun_P07_snds_F","Taser",2000],
						["16Rnd_9x21_Mag","Munition Taser",50],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
                        ["Rangefinder",nil,500],
						["Medikit",nil,1000],
						["NVGoggles_OPFOR",nil,2000]
					]
				];
			};
		};
	};

	case "cop_col":
	{
		switch(true) do
		{
			case (playerSide != west): {"Vous n'êtes pas gendarme!"};
			case (__GETC__(life_coplevel) < 9): {"Vous nêtes pas Colonel!"};
			default
			{
				["Armurerie Colonel",
					[
						["srifle_LRR_F",nil,40000],
                        ["srifle_LRR_camo_F",nil,40000],
						["7Rnd_408_Mag","Munition M320",250],
						["arifle_MX_GL_Black_F",nil,45000],
						["3Rnd_Smoke_Grenade_shell","Fumigène blanche GL",250],
                        ["3Rnd_SmokeBlue_Grenade_shell","Fumigène bleue GL",250],
						["LMG_Mk200_F",nil,40000],
						["200Rnd_65x39_cased_Box","Munition Mk200",250],
						["muzzle_snds_H_MG","Silencieux Mk200",200],
						["arifle_MX_SW_Black_F",nil,35000],
						["100Rnd_65x39_caseless_mag","Munition MX SW",250],
						["arifle_MXM_Black_F",nil,30000],
						["arifle_MX_Black_F",nil,25000],
						["arifle_MXC_Black_F","MXC",20000],
						["30Rnd_65x39_caseless_mag","Munition MX",250],
						["arifle_Mk20C_F",nil,20000],
						["30Rnd_556x45_Stanag","Munition 5.56",250],
						["muzzle_snds_M","Silencieux 5.56",1000],
						["muzzle_snds_H","Silencieux MX",200],
                        ["SmokeShellBlue","Fumigène bleue",200],
                        ["SmokeShell","Fumigène blanche",200],
						["optic_Holosight",nil,1200],
						["optic_Arco",nil,2500],
						["optic_Hamr",nil,1500],
						["optic_MRCO",nil,1500],
						["optic_DMS",nil,1500],
						["optic_SOS",nil,1500],
						["optic_LRPS",nil,1500],
						["acc_flashlight",nil,200],
						["acc_pointer_IR",nil,200],
						["SMG_02_F","Sting",10000],
						["30Rnd_9x21_Mag","Munition Sting",75],
						["hgun_P07_snds_F","Taser",2000],
						["16Rnd_9x21_Mag","Munition Taser",50],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
                        ["Rangefinder",nil,500],
						["Medikit",nil,1000],
						["NVGoggles_OPFOR",nil,2000]
					]
				];
			};
		};
	};

	case "cop_gen":
	{
		switch(true) do
		{
			case (playerSide != west): {"Vous n'êtes pas gendarme!"};
			case (__GETC__(life_coplevel) < 10): {"Vous nêtes pas Général!"};
			default
			{
				["Armurerie Général",
					[
						["srifle_EBR_ACO_F",nil,30000],
					    ["20Rnd_762x51_Mag","Munition Mk18",250],
                        ["muzzle_snds_B","Silencieux Mk18",500],
						["srifle_LRR_F",nil,40000],
                        ["srifle_LRR_camo_F",nil,40000],
						["7Rnd_408_Mag","Munition M320",250],
						["arifle_MX_GL_Black_F",nil,45000],
						["3Rnd_Smoke_Grenade_shell","Fumigène blanche GL",250],
                        ["3Rnd_SmokeBlue_Grenade_shell","Fumigène bleue GL",250],
						["LMG_Mk200_F",nil,40000],
						["200Rnd_65x39_cased_Box","Munition Mk200",250],
						["muzzle_snds_H_MG","Silencieux Mk200",200],
						["arifle_MX_SW_Black_F",nil,35000],
						["100Rnd_65x39_caseless_mag","Munition MX SW",250],
						["arifle_MXM_Black_F",nil,30000],
						["arifle_MX_Black_F",nil,25000],
						["arifle_MXC_Black_F","MXC",20000],
						["30Rnd_65x39_caseless_mag","Munition MX",250],
						["arifle_Mk20C_F",nil,20000],
						["30Rnd_556x45_Stanag","Munition 5.56",250],
						["muzzle_snds_M","Silencieux 5.56",1000],
						["muzzle_snds_H","Silencieux MX",200],
                        ["SmokeShellBlue","Fumigène bleue",200],
                        ["SmokeShell","Fumigène blanche",200],
						["optic_Holosight",nil,1200],
						["optic_Arco",nil,2500],
						["optic_Hamr",nil,1500],
						["optic_MRCO",nil,1500],
						["optic_DMS",nil,1500],
						["optic_SOS",nil,1500],
						["optic_LRPS",nil,1500],
						["acc_flashlight",nil,200],
						["acc_pointer_IR",nil,200],
						["SMG_02_F","Sting",10000],
						["30Rnd_9x21_Mag","Munition Sting",75],
						["hgun_ACPC2_F",nil,5000],
					    ["9Rnd_45ACP_Mag","Munition ACP",75],
					    ["muzzle_snds_acp","Silencieux ACP",200],
						["hgun_P07_snds_F","Taser",2000],
						["16Rnd_9x21_Mag","Munition Taser",50],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
                        ["Rangefinder",nil,500],
						["Medikit",nil,1000],
						["NVGoggles_OPFOR",nil,2000]
					]
				];
			};
		};
	};

	case "rebel":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Vous n'êtes pas un civil!"};
			case (!license_civ_rebel): {"Vous n'avez pas la license rebelle!"};
			default
			{
				["Rebelle",
					[
						["arifle_TRG20_F",nil,50000],
						["arifle_TRG21_F",nil,50000],
						["30Rnd_556x45_Stanag","Munition TRG20/TRG21",150],
						["arifle_Katiba_F",nil,85000],
						["arifle_Katiba_C_F",nil,95000],
						["30Rnd_65x39_caseless_green","Munition Katiba",200],
						["srifle_EBR_F",nil,180000],
						["20Rnd_762x51_Mag","Munition Mk18",250],
						["srifle_DMR_01_F",nil,300000],
						["10Rnd_762x51_Mag","Munition Rahim",300],
						["LMG_Zafir_F",nil,300000],
						["150Rnd_762x51_Box","Munition Zafir",300],
						["150Rnd_762x51_Box_Tracer","Munition Traçante Zafir",300],
						["srifle_GM6_F",nil,550000],
                        ["srifle_GM6_camo_F",nil,550000],
						["5Rnd_127x108_Mag","Munition Lynx",450],
						["muzzle_snds_B","Silencieux Mk18",5000],
						["muzzle_snds_H","Silencieux Katiba",5000],
						["muzzle_snds_M","Silencieux 5.56",5000],
						["optic_DMS",nil,2500],
						["optic_ACO_grn",nil,3500],
						["optic_Arco",nil,3500],
						["optic_Holosight",nil,3600],
						["optic_Hamr",nil,7500],
						["optic_MRCO",nil,7500],
						["optic_SOS",nil,15000],
						["optic_NVS",nil,25000],
						["acc_flashlight",nil,1000],
						["acc_pointer_IR",nil,1500],
                        ["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["NVGoggles",nil,2000],
						["NVGoggles_OPFOR",nil,15000],
						["NVGoggles_INDEP",nil,15000],
						["hgun_Pistol_Signal_F",nil,10000],
						["6Rnd_RedSignal_F",nil,100],
						["6Rnd_GreenSignal_F",nil,100],
						["TDLC","  ",0],
						["TDLC","Cargaison Police",0],
						["TDLC","  ",0],
						["200Rnd_65x39_cased_Box","MK200 Munition",10000],
						["200Rnd_65x39_cased_Box_Tracer","MK200 Tracer",8000],
						["30Rnd_65x39_caseless_mag",nil,3500],
						["30Rnd_9x21_Mag",nil,500],
						["7Rnd_408_Mag",nil,50000],
						["5Rnd_127x108_Mag",nil,50000],
						["5Rnd_127x108_APDS_Mag",nil,80000],
						["20Rnd_762x51_Mag",nil,5500],
						["3Rnd_SmokeBlue_Grenade_shell",nil,7500],
						//["SmokeShellBlue",nil,5000],
						["muzzle_snds_H",nil,50000],
						["muzzle_snds_L",nil,650]
					]
				];
			};
		};
	};
	
	/*case "rebel": // serv Regency TDLC armement rebelle
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_rebel): {"You don't have a Rebel training license!"};
			default
			{
				["Mohammed's Jihadi Shop",
					[
						["hgun_Rook40_F",nil,10000],
						["arifle_TRG20_F","TRG-20 5.56 mm",30000],
						["arifle_Mk20_F",nil,40000],
						["arifle_Mk20C_plain_F",nil,35000],
						["srifle_GM6_SOS_F",nil,800000],
						["5Rnd_127x108_Mag",nil,40000],
						["5Rnd_127x108_APDS_Mag",nil,80000],
						//["Laserdesignator",nil,200000],
						["srifle_EBR_F",nil,375000],
						["20Rnd_762x51_Mag",nil,2000],
						["arifle_Katiba_C_F",nil,35000],
						["arifle_Katiba_F",nil,100000],
						["arifle_Katiba_GL_F",nil,110000],
						["LMG_Zafir_F",nil,300000],
						["launch_RPG32_F",nil,450000],
						["optic_ACO_grn",nil,2000],
						["optic_NVS",nil,70000],
						["acc_flashlight",nil,1000],
						["optic_Aco",nil,2000],
						["optic_Holosight",nil,3000],
						["optic_MRCO",nil,10000],
						["optic_DMS",nil,25000],
						["30Rnd_9x21_Mag",nil,200],
						["30Rnd_556x45_Stanag","Munition TRG 5.56 mm",300],
						["30Rnd_65x39_caseless_green_mag_Tracer",nil,550],
						["10Rnd_762x51_Mag",nil,500],
						["20Rnd_762x51_Mag",nil,500],
						["30Rnd_65x39_caseless_green",nil,275],
						["150Rnd_762x51_Box",nil,50000],
						["RPG32_HE_F",nil,500000],
						["V_HarnessOGL_brn",nil,2000000],
						["ToolKit",nil,1000],
						["itemgps",nil,5000],
						["FirstAidKit",nil,500],
						["Rangefinder",nil,12000],
						["NVGoggles",nil,15000],
						["NVGoggles_OPFOR",nil,15000],
						["NVGoggles_INDEP",nil,15000],
						["MiniGrenade","Grenade Mini",5000],
						["1Rnd_SmokeRed_Grenade_shell",nil,7500],
						["1Rnd_Smoke_Grenade_shell",nil,7500],
						["1Rnd_SmokeGreen_Grenade_shell",nil,100000],
						["1Rnd_SmokeYellow_Grenade_shell",nil,7500],
						["1Rnd_SmokePurple_Grenade_shell",nil,7500],
						["SmokeShell",nil,5000],
						["SmokeShellYellow",nil,5000],
						["SmokeShellGreen",nil,75000],
						["SmokeShellRed",nil,5000],
						["SmokeShellPurple",nil,5000],
						["UGL_FlareWhite_F",nil,7500],
						["UGL_FlareGreen_F",nil,7500],
						["UGL_FlareRed_F",nil,7500],
						["UGL_FlareYellow_F",nil,7500],
						["UGL_FlareCIR_F",nil,7500],
						["hgun_Pistol_Signal_F",nil,10000],
						["6Rnd_RedSignal_F",nil,100],
						["6Rnd_GreenSignal_F",nil,100],
						["TDLC","  ",0],
						["TDLC","Cargaison Police",0],
						["TDLC","  ",0],
						["200Rnd_65x39_cased_Box","MK200 Munition",10000],
						["200Rnd_65x39_cased_Box_Tracer","MK200 Tracer",8000],
						["30Rnd_65x39_caseless_mag",nil,3500],
						["30Rnd_9x21_Mag",nil,500],
						["7Rnd_408_Mag",nil,50000],
						["5Rnd_127x108_Mag",nil,50000],
						["5Rnd_127x108_APDS_Mag",nil,80000],
						["20Rnd_762x51_Mag",nil,5500],
						["3Rnd_SmokeBlue_Grenade_shell",nil,7500],
						//["SmokeShellBlue",nil,5000],
						["muzzle_snds_H",nil,50000],
						["muzzle_snds_L",nil,650]
					]
				];
			};
		};
	};*/

	case "gun":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Vous n'êtes pas un civil!"};
			case (!license_civ_gun): {"Vous n'avez pas la license de port d'armes!"};
			default
			{
				["Aux armes de Billy Joe",
					[
						["hgun_Rook40_F",nil,8500],
						["30Rnd_9x21_Mag","Munition Rook",100],
						["hgun_ACPC2_F",nil,9500],
						["9Rnd_45ACP_Mag","Munition ACP",100],
						["hgun_Pistol_heavy_01_F",nil,10500],
						["11Rnd_45ACP_Mag","Munition 4five",100],
						["hgun_Pistol_heavy_02_F",nil,11500],
						["6Rnd_45ACP_Cylinder","Munition Zubr",100],
						["SMG_01_F",nil,25000],
						["30Rnd_45ACP_Mag_SMG_01","Munition Vermin",150],
						["arifle_SDAR_F",nil,15000],
						["20Rnd_556x45_UW_mag","Munition SDAR",100],
						["hgun_PDW2000_F",nil,22000],
						["30Rnd_9x21_Mag","Munition PDW",150],
						["optic_ACO_grn_smg",nil,2500],
						["V_Rangemaster_belt",nil,4900]
					]
				];
			};
		};
	};


	case "gang":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Vous n'êtes pas un civil!"};
			default
			{
				["Hideout Armament",
					[
						["hgun_Rook40_F",nil,1500],
						["hgun_Pistol_heavy_02_F",nil,2500],
						["hgun_ACPC2_F",nil,4500],
						["hgun_PDW2000_F",nil,9500],
						["optic_ACO_grn_smg",nil,950],
						["V_Rangemaster_belt",nil,1900],
						["16Rnd_9x21_Mag",nil,25],
						["9Rnd_45ACP_Mag",nil,45],
						["6Rnd_45ACP_Cylinder",nil,50],
						["30Rnd_9x21_Mag",nil,75]
					]
				];
			};
		};
	};

	case "genstore":
	{
		["Magasin général",
			[
				["Binocular",nil,150],
				["ItemGPS",nil,100],
				["ToolKit",nil,250],
				["FirstAidKit",nil,150],
				["NVGoggles_INDEP",nil,2000]
			]
		];
	};
	
	case "tdlcgun_donate":
	{
		switch(true) do
		{
			//case (playerSide != civilian): {"vous n'etes pas un civil!"};
			case (__GETC__(life_donator) < 1): {"Vous n'etes pas donateur !"};
			default
			{
				["Magasin Donateur",
					[
					
						["ItemMap",nil,0],
						["ItemCompass",nil,0],
						["ItemWatch",nil,0],
						["ItemGPS",nil,0],
						["NVGoggles",nil,0],
						["NVGoggles_OPFOR",nil,0],
						["NVGoggles_INDEP",nil,0],
						["Rangefinder",nil,1200],
						["ToolKit",nil,25],
						["FirstAidKit",nil,25],

						["hgun_Rook40_F",nil,5000],
						["arifle_TRG20_F",nil,15000],
						["arifle_Mk20_F",nil,20000],
						["arifle_Mk20C_plain_F",nil,13500],
						["srifle_GM6_SOS_F",nil,400000],
						["5Rnd_127x108_Mag",nil,20000],
						["5Rnd_127x108_APDS_Mag",nil,40000],
						//["Laserdesignator",nil,100000],
						["srifle_EBR_F",nil,187500],
						["20Rnd_762x51_Mag",nil,1000],
						["arifle_Katiba_C_F",nil,20000],
						["arifle_Katiba_F",nil,50000],
						["arifle_Katiba_GL_F",nil,55000],
						["LMG_Zafir_F",nil,150000],
						["launch_RPG32_F",nil,300000],
						["optic_ACO_grn",nil,1000],
						["optic_NVS",nil,35000],
						["acc_flashlight",nil,0],
						["optic_Aco",nil,1000],
						["optic_Holosight",nil,1500],
						["optic_MRCO",nil,5000],
						["optic_DMS",nil,12500],
						["30Rnd_9x21_Mag",nil,100],
						["30Rnd_556x45_Stanag",nil,100],
						["30Rnd_65x39_caseless_green_mag_Tracer",nil,270],
						["10Rnd_762x51_Mag",nil,250],
						["20Rnd_762x51_Mag",nil,250],
						["30Rnd_65x39_caseless_green",nil,90],
						["150Rnd_762x51_Box",nil,25000],
						["RPG32_HE_F",nil,250000],
						["V_HarnessOGL_brn","Suicide vest",1500000],
						//["ToolKit",nil,1000],
						//["itemgps",nil,5000],
						//["FirstAidKit",nil,500],
						//["Rangefinder",nil,12000],
						//["NVGoggles_OPFOR",nil,15000],
						//["NVGoggles_INDEP",nil,15000],
						//["MiniGrenade","Grenade Mini",2500],
						["1Rnd_SmokeRed_Grenade_shell",nil,3200],
						["1Rnd_Smoke_Grenade_shell",nil,4000],
						["1Rnd_SmokeGreen_Grenade_shell",nil,5000],
						["1Rnd_SmokeYellow_Grenade_shell",nil,5000],
						["1Rnd_SmokePurple_Grenade_shell",nil,5000],
						["SmokeShell",nil,3000],
						["SmokeShellYellow",nil,3000],
						["SmokeShellGreen",nil,35000],
						["SmokeShellRed",nil,2000],
						["SmokeShellPurple",nil,3000],
						["UGL_FlareWhite_F",nil,7500],
						["UGL_FlareGreen_F",nil,7500],
						["UGL_FlareRed_F",nil,7500],
						["UGL_FlareYellow_F",nil,7500],
						["UGL_FlareCIR_F",nil,7500],
						["hgun_Pistol_Signal_F",nil,5000],
						["6Rnd_RedSignal_F",nil,50],
						["6Rnd_GreenSignal_F",nil,50],
						["TDLC","  ",0],
						["TDLC","Cargaison Police",0],
						["TDLC","  ",0],
						["200Rnd_65x39_cased_Box","MK200 Munition",8000],
						["200Rnd_65x39_cased_Box_Tracer","MK200 Tracer",6000],
						["30Rnd_65x39_caseless_mag",nil,800],
						["30Rnd_9x21_Mag",nil,300],
						["7Rnd_408_Mag",nil,40000],
						//["5Rnd_127x108_Mag",nil,40000],
						//["5Rnd_127x108_APDS_Mag",nil,50000],
						["20Rnd_762x51_Mag",nil,1000],
						["3Rnd_SmokeBlue_Grenade_shell",nil,7500],
						//["SmokeShellBlue",nil,5000],
						["muzzle_snds_H",nil,40000],
						["muzzle_snds_L",nil,450]
						
						//ancienne armes
						/*["srifle_DMR_01_F",nil,125000],
						["10Rnd_762x51_Mag",nil,250],
						["arifle_MX_F",nil,50000],
						["SMG_02_ACO_F",nil,10000],
						//["MineDetector",nil,1000],
						["arifle_MX_SW_F",nil,200000],
						["arifle_MX_SW_Black_F",nil,200000],
						["100Rnd_65x39_caseless_mag",nil,30000],
						
						["srifle_EBR_F",nil,275000],
						["20Rnd_762x51_Mag",nil,2000],
						//["DemoCharge_Remote_Mag",nil,10000],
						["LMG_Mk200_F",nil,300000],
						["muzzle_snds_H_MG",nil,100000],
						["arifle_MX_GL_Black_F",nil,70000],
						["3Rnd_SmokeBlue_Grenade_shell",nil,750],
						
						["200Rnd_65x39_cased_Box",nil,5000],
						["200Rnd_65x39_cased_Box_Tracer",nil,4000],
						["MiniGrenade","Flashbang",10000]*/
					]
				];
			};
		};
	};
};
