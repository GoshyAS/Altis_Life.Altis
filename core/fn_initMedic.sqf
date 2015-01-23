#include <macro.h>
/*
	File: fn_initMedic.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Initializes the medic..
*/
private["_end"];
player addRating 99999999;
waitUntil {!(isNull (findDisplay 46))};

if((__GETC__(life_medicLevel)) < 1) exitWith {
	["Notwhitelisted",FALSE,TRUE] call BIS_fnc_endMission;
	sleep 35;
};

[] call life_fnc_spawnMenu;
waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.

[] spawn
{
	while {true} do
	{
		waitUntil {uniform player == "U_I_HeliPilotCoveralls"};
		[[player,0,"texture\Medic\med_uniform.jpg"],"life_fnc_setTexture",true,false] spawn life_fnc_MP;
		waitUntil {uniform player != "U_I_HeliPilotCoveralls"};
	};
};

[] spawn
{
	while {true} do
	{
		waitUntil {backpack player == "B_Carryall_oucamo"};
		[[unitBackpack player,0,"texture\Medic\med_backpack.jpg"],"life_fnc_setTexture",true,false] spawn life_fnc_MP;
		waitUntil {backpack player != "B_Carryall_oucamo"};
	};
};