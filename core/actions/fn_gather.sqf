/*
	File: fn_gather.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main functionality for gathering.
*/
private["_gather","_itemWeight","_diff","_itemName","_val","_zone"]; // ,"_resourceZones","_minage"
//_resourceZones = ["apple_1","apple_2","apple_3","apple_4","peaches_1","peaches_2","peaches_3","peaches_4","heroin_1","cocaine_1","weed_1","raisin_1","raisin_2","bois_1","bois_2","biere_1","bierre_2"]; // Cette ligne est a configurer dans le fichier configuration.sqf
_zone = "";
_demandepickaxe = false;

// _minage = ["lead_1","iron_1","salt_1","sand_1","diamond_1","oil_1","oil_2","rock_1","osmium_1","palladium_1"]; // Cette ligne est a configurer dans le fichier configuration.sqf en plus du fichier 

if(life_action_inUse) exitWith {}; //Action is in use, exit to prevent spamming.

//Find out what zone we're near
{
	if(player distance (getMarkerPos _x) < 80) exitWith {_zone = _x;};
} foreach life_ramasser;

{
	if(player distance (getMarkerPos _x) < 80) exitWith { []call life_fnc_pickaxeUse; _demandepickaxe = true; };
} foreach life_miner;

{
	if(player distance (getMarkerPos _x) < 80) exitWith { []call life_fnc_hache; _demandepickaxe = true; };
} foreach life_hache;

if(_demandepickaxe) exitWith {};

if(_zone == "") exitWith {
	life_action_inUse = false;
};

//Get the resource that will be gathered from the zone name...
switch(true) do {
	case (_zone in ["apple_1","apple_2","apple_3","apple_4"]): {_gather = "apple"; _val = 3;};
	case (_zone in ["peaches_1","peaches_2","peaches_3","peaches_4"]): {_gather = "peach"; _val = 3;};
	case (_zone in ["heroin_1"]): {_gather = "heroinu"; _val = 1;};
	case (_zone in ["cocaine_1"]): {_gather = "cocaine"; _val = 1;};
	case (_zone in ["weed_1"]): {_gather = "cannabis"; _val = 1;};
    case (_zone in ["raisin_1","raisin_2"]): {_gather = "raisin"; _val = 3;};
	case (_zone in ["biere_1"]): {_gather = "houblon"; _val = 2;};
	case (_zone in ["biere_2"]): {_gather = "malt"; _val = 2;};
	default {""};
};
//gather check??
if(vehicle player != player) exitWith {};

_diff = [_gather,_val,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
if(_diff == 0) exitWith {hint localize "STR_NOTF_InvFull"};
life_action_inUse = true;
for "_i" from 0 to 2 do
{
	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	waitUntil{animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";};
	sleep 2.5;
};

if(([true,_gather,_diff] call life_fnc_handleInv)) then
{
	_itemName = [([_gather,0] call life_fnc_varHandle)] call life_fnc_varToStr;
	titleText[format[localize "STR_NOTF_Gather_Success",_itemName,_diff],"PLAIN"];
};

life_action_inUse = false;
