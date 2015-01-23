/*
	File: fn_spawnPointCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for available spawn points depending on the units side.
	
	Return:
	[Spawn Marker,Spawn Name,Image Path]
*/
#include <macro.h>
private["_side","_return"];
_side = [_this,0,civilian,[civilian]] call BIS_fnc_param;

//Spawn Marker, Spawn Name, PathToImage
switch (_side) do
{
	case west:
	{
		_return = 
		[
			["cop_spawn_1","QG Kavala","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["cop_spawn_2","QG Aerien Athira","\a3\ui_f\data\map\Markers\NATO\b_air.paa"],
			["cop_spawn_3","QG Sofia","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
		];
		
		if ((license_civ_admin) OR (__GETC__(life_adminlevel) >= 1)) then
		{
			_return = 
			[
				["cop_spawn_1","QG Kavala","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["cop_spawn_2","QG Aerien Athira","\a3\ui_f\data\map\Markers\NATO\b_air.paa"],
				["cop_spawn_3","QG Sofia","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_1","Kavala Civil","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_2","Pyrgos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_3","Athira","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_4","Sofia","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["reb_spawn_1","Camp rebelle","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["reb_spawn_2","Ville rebelle","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["reb_spawn_3","Plateforme rebelle","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["medic_spawn_1","Hopital de Kavala","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
				["medic_spawn_3","Hopital de Pyrgos","\a3\ui_f\data\map\MapControl\hospital_ca.paa"]
				
			];
		};
	};
	
	case civilian:
	{
		_return = [
			["civ_spawn_1","Kavala","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["civ_spawn_2","Pyrgos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["civ_spawn_3","Athira","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["civ_spawn_4","Sofia","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
		];
		
		if (license_civ_rebel) then
		{
			_return = 
			[
				["reb_spawn_1","Camp rebelle","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["reb_spawn_2","Ville rebelle","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["reb_spawn_3","Plateforme rebelle","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
			];
		};
		
		if ((license_civ_admin) OR (__GETC__(life_adminlevel) >= 1)) then
		{
			_return = 
			[
				["civ_spawn_1","Kavala","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_2","Pyrgos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_3","Athira","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_4","Sofia","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["reb_spawn_1","Camp rebelle","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["reb_spawn_2","Ville rebelle","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["reb_spawn_3","Plateforme rebelle","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["medic_spawn_1","Hopital de Kavala","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
				["medic_spawn_3","Hopital de Pyrgos","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
				["cop_spawn_1","QG Kavala","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["cop_spawn_2","QG Aerien Athira","\a3\ui_f\data\map\Markers\NATO\b_air.paa"],
				["cop_spawn_3","QG Sofia","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
			];
		};
		
		if(count life_houses > 0) then {
			{
				_pos = call compile format["%1",_x select 0];
				_house = nearestBuilding _pos;
				_houseName = getText(configFile >> "CfgVehicles" >> (typeOf _house) >> "displayName");
				
				_return pushBack [format["house_%1",_house getVariable "uid"],_houseName,"\a3\ui_f\data\map\MapControl\lighthouse_ca.paa"];
			} foreach life_houses;
		};
	};
	
	case independent: {
		_return = [
			["medic_spawn_1","Hopital de Kavala","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			//["medic_spawn_2","Athira Regional","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_3","Hopital de Pyrgos","\a3\ui_f\data\map\MapControl\hospital_ca.paa"]
		];
		
		if ((license_civ_admin) OR (__GETC__(life_adminlevel) >= 1)) then
		{
			_return = 
			[
				["medic_spawn_1","Hopital de Kavala","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
				["medic_spawn_3","Hopital de Pyrgos","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
				["civ_spawn_1","Kavala","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_2","Pyrgos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_3","Athira","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_4","Sofia","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["reb_spawn_1","Camp rebelle","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["reb_spawn_2","Ville rebelle","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["reb_spawn_3","Plateforme rebelle","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["cop_spawn_1","QG Kavala","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["cop_spawn_2","QG Aerien Athira","\a3\ui_f\data\map\Markers\NATO\b_air.paa"],
				["cop_spawn_3","QG Sofia","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
			];
		};
	};
};

_return;