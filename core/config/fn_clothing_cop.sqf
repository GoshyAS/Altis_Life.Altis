#include <macro.h>
/*
	File: fn_clothing_cop.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Master config file for Cop clothing store.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Vêtements Gendarmerie"];

_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{
				if(__GETC__(life_coplevel) > 0) then
		{
			_ret set[count _ret,["U_Rangemaster","Uniforme",0]];
		};
				if(__GETC__(life_coplevel) > 2) then
		{
			_ret set[count _ret,["U_B_Wetsuit","Tenue de plongée OTAN",0]];
		};
		if(__GETC__(life_coplevel) > 4 ) then
		{
			_ret set[count _ret,["U_B_CombatUniform_mcam_tshirt","Uniforme d'opération",0]];
		};
		if(__GETC__(life_coplevel) > 5 ) then
		{
			_ret set[count _ret,["U_B_CombatUniform_mcam","Uniforme bleu et noir",0]];
			_ret set[count _ret,["U_O_Wetsuit","Tenue de plongée CSAT",0]];
		};
		if(__GETC__(life_coplevel) > 6 ) then
		{
			_ret set[count _ret,["U_B_HeliPilotCoveralls",nil,0]];
		};
		if(__GETC__(life_coplevel) > 8 ) then
		{
			_ret set[count _ret,["U_B_CombatUniform_mcam_worn","Uniforme noir",0]];
			_ret set[count _ret,["U_B_GhillieSuit",nil,0]];
		};
	};

	//Hats
	case 1:
	{
		if(__GETC__(life_coplevel) > 0) then
		{
			_ret pushBack ["H_Cap_Police",nil,0];
		};
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret pushBack ["H_MilCap_blue",nil,0];
		};
		if(__GETC__(life_coplevel) > 2) then
		{
			_ret pushBack ["H_Watchcap_blk",nil,0];
			_ret pushBack ["H_HelmetB_black",nil,0];
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_ret pushBack ["H_HelmetB_light_black",nil,0];
			_ret pushBack ["H_CrewHelmetHeli_B",nil,0];
		};
		if(__GETC__(life_coplevel) > 6) then
		{
			_ret pushBack ["H_HelmetSpecB_blk",nil,0];
		};
		if(__GETC__(life_coplevel) > 7) then
		{
			_ret pushBack ["H_Beret_blk",nil,0];
		};
		if(__GETC__(life_coplevel) > 8) then
		{
			_ret pushBack ["H_Beret_Colonel",nil,0];
		};
		if(__GETC__(life_coplevel) > 9) then
		{
			_ret pushBack ["H_Beret_02",nil,0];
		};

	};

	//Glasses
	case 2:
	{
		_ret =
		[
			["G_Shades_Black",nil,0],
			["G_Shades_Blue",nil,0],
			["G_Sport_Blackred",nil,0],
			["G_Sport_Checkered",nil,0],
			["G_Sport_Blackyellow",nil,0],
			["G_Sport_BlackWhite",nil,0],
			["G_Aviator",nil,0],
			["G_Squares",nil,0],
			["G_Lowprofile",nil,0],
			["G_Combat",nil,0],
			["G_Balaclava_blk",nil,0]
		];
	};

	//Vest
	case 3:
	{
		if(__GETC__(life_coplevel) > 0) then
		{
			_ret set[count _ret,["V_TacVest_blk_POLICE",nil,0]];
		};
        if(__GETC__(life_coplevel) > 1 ) then
		{
			_ret set[count _ret,["V_PlateCarrierGL_rgr",nil,0]];
		};
        if(__GETC__(life_coplevel) > 2 ) then
		{
			_ret set[count _ret,["V_PlateCarrierL_CTRG",nil,0]];
			_ret set[count _ret,["V_RebreatherB","Respirateur OTAN",0]];
		};
		if(__GETC__(life_coplevel) > 3 ) then
		{
			_ret set[count _ret,["V_PlateCarrierH_CTRG",nil,0]];
		};
		if(__GETC__(life_coplevel) > 4 ) then
		{
			_ret set[count _ret,["V_PlateCarrier1_blk",nil,0]];
		};
		if(__GETC__(life_coplevel) > 5 ) then
		{
			_ret set[count _ret,["V_RebreatherIR","Respirateur CSAT",0]];
		};
	};

	//Backpacks
	case 4:
	{
		if(__GETC__(life_coplevel) > 0) then
		{
			_ret set[count _ret,["B_TacticalPack_blk",nil,0]];
		};
        if(__GETC__(life_coplevel) > 3 ) then
		{
			_ret set[count _ret,["B_Carryall_mcamo",nil,0]];
			_ret set[count _ret,["B_Parachute",nil,0]];
		};
		if(__GETC__(life_coplevel) >= 4 ) then
		{
			_ret set[count _ret,["B_Kitbag_mcamo",nil,0]];
		};
		if(__GETC__(life_coplevel) >= 6 ) then
		{
			_ret set[count _ret,["B_Carryall_oli",nil,0]];
		};
	};
};

_ret;