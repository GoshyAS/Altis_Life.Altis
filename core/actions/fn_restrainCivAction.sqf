/*
	File: fn_restrainAction.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Retrains the target.
*/
private["_unit"];
_unit = cursorTarget;
if(isNull _unit) exitWith {}; //Not valid
if((_unit getVariable "restrainedCiv")) exitWith {titleText[format["Deja menotte"],"PLAIN"];};
//if((_unit getVariable "restrained")) exitWith {};
//if(side _unit == west) exitWith {};
if(player == _unit) exitWith {titleText[format["Vous ne pouvez pas vous menotte !"],"PLAIN"];};
if(!isPlayer _unit) exitWith {titleText[format["Vous ne pouvez pas menotte un PNJ!"],"PLAIN"];};
if(!(life_inv_Zip > 0)) exitWith {titleText[format["Vous n'avez pas de serflex !"],"PLAIN"];};
//Broadcast!



_unit setVariable["restrainedCiv",true,true];
//_unit setVariable["restrained",true,true];
[[player], "life_fnc_restrainCiv", _unit, false] spawn life_fnc_MP;
(([false,"life_inv_Zip",1] call life_fnc_handleInv)); // Supression du zip
//[[0,format["%1 a ete menotte par %2", name _unit, name player]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;