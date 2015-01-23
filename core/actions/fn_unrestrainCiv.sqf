/*
	File: fn_unrestrain.sqf
*/
private["_unit"];
_unit = cursorTarget;

if(isNull _unit || !(_unit getVariable "restrainedCiv")) exitWith {};

_unit setVariable["restrainedCiv",false,true];
//[[0,format["%1 a ete demenotte par %2", name _unit, name player]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;