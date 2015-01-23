#include <macro.h>
/*
	File: fn_initCop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Cop Initialization file.
*/
private["_end"];
player addRating 9999999;
waitUntil {!(isNull (findDisplay 46))};
_end = false;
if(life_blacklisted) exitWith
{
	["Blacklisted",false,true] call BIS_fnc_endMission;
	sleep 30;
};

if(!(str(player) in ["cop_1","cop_2","cop_3","cop_4"])) then {
	if((__GETC__(life_coplevel) == 0) && (__GETC__(life_adminlevel) == 0)) then {
		["NotWhitelisted",false,true] call BIS_fnc_endMission;
		sleep 35;
	};
};

if((__GETC__(life_coplevel) == 0) && (__GETC__(life_adminlevel) == 0)) then 
{
	["NotWhitelisted",false,true] call BIS_fnc_endMission;
	sleep 35;
};


player setVariable["rank",(__GETC__(life_coplevel)),true];
switch (__GETC__(life_coplevel)) do
{
	case 1: {life_paycheck = life_paycheck + 500;};//coplevel 1
	case 2: {life_paycheck = life_paycheck + 1000;};//coplevel 2
	case 3: {life_paycheck = life_paycheck + 1500;};//etc...
	case 4: {life_paycheck = life_paycheck + 2000;};//modifie les chiffres selon tes désirs
	case 5: {life_paycheck = life_paycheck + 2500;};
	case 6: {life_paycheck = life_paycheck + 3000;};
	case 7: {life_paycheck = life_paycheck + 3500;};
	case 8: {life_paycheck = life_paycheck + 4000;};
	case 9: {life_paycheck = life_paycheck + 4500;};
	case 10: {life_paycheck = life_paycheck + 5000;};
};
[] call life_fnc_spawnMenu;
waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.

[] spawn
{
while {true} do
	{
		waitUntil {uniform player == "U_Rangemaster"};
		player setObjectTextureGlobal [0,"texture\Police\gav_uniform.jpg"];
		waitUntil {uniform player != "U_Rangemaster"};
	};
};

[] spawn
{
while {true} do
	{
		waitUntil {uniform player == "U_B_CombatUniform_mcam_worn"};
		player setObjectTextureGlobal [0,"texture\Police\uniformoffsup.jpg"];
		waitUntil {uniform player != "U_B_CombatUniform_mcam_worn"};
	};
};

[] spawn
{
while {true} do
	{
		waitUntil {uniform player == "U_B_CombatUniform_mcam"};
		player setObjectTextureGlobal [0,"texture\Police\uniformoff.jpg"];
		waitUntil {uniform player != "U_B_CombatUniform_mcam"};
	};
};

sleep 10;
[] spawn life_fnc_tdlc_eq_bug;

