#include <macro.h>
/*
	File : fn_clothing_tdlc_donateur.sqf
	Author : TDLC 	<tdlctv@live.fr>
	
	Copyright : Interdiction d'utiliser ce script ainsi que tout les autres script intitulé "TDLC_xxx.sqf" ou "fn_tdlc_xxx.sqf" ou "fn_xxx_tdlc_xxx.sqf"
	Ne pas reproduire
	Ne pas partager
	Ne pas me broyer les couilles !
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Vetements donateurs"];

if(__GETC__(life_donator) < 1) exitwith {closeDialog 0; hint "Vous n'etes pas donateur";};

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["U_IG_Guerilla1_1",nil,2000],
			["U_I_G_Story_Protagonist_F",nil,4500],
			["U_I_G_resistanceLeader_F",nil,6500],
			["U_O_SpecopsUniform_ocamo",nil,6500],
			["U_O_PilotCoveralls",nil,9610],
			["U_IG_leader","Guerilla Leader",9340],
			["U_O_GhillieSuit",nil,25000]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["H_ShemagOpen_tan",nil,250],
			["H_Shemag_olive",nil,250],
			["H_ShemagOpen_khk",nil,200],
			["H_HelmetO_ocamo",nil,700],
			["H_MilCap_oucamo",nil,700],
			["H_Bandanna_camo",nil,450]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Squares",nil,10],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55]
		];
	};
	
	//Vest
	case 3:
	{
		[
			["V_TacVest_khk",nil,6500],
			["V_BandollierB_cbr",nil,2500],
			["V_HarnessO_brn",nil,5500]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_AssaultPack_cbr",nil,500],
			["B_Kitbag_mcamo",nil,500],
			["B_TacticalPack_oli",nil,500],
			["B_FieldPack_ocamo",nil,500],
			["B_Bergen_sgg",nil,500],
			["B_Kitbag_cbr",nil,500],
			["B_Carryall_oli",nil,500],
			["B_Carryall_khk",nil,500]
		];
	};
};