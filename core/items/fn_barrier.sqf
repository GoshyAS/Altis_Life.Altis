/*
	File: fn_barrier.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	cree la barriere et la place
*/
private["_position","_barrier"];
_barrier = "RoadBarrier_F" createVehicle [0,0,0];
_barrier attachTo[player,[0,5.5,0]];
_barrier setDir 90;
_barrier setVariable["item",true];
_barrier setVariable["idleTime",time,true];

life_barrier = _barrier;
waitUntil {isNull life_barrier};

if(isNull _barrier) exitWith {life_barrier = ObjNull;};
_barrier setPos [(getPos _barrier select 0),(getPos _barrier select 1),0];
_barrier setDamage 1;