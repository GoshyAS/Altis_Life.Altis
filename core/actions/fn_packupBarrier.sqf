/*
	File: fn_packupBarrier.sqf

	Description:
	Packs up a deployed spike strip.
*/
private["_barrier"];
_barrier = nearestObjects[getPos player,["RoadBarrier_F"],8] select 0;
if(isNil "_barrier") exitWith {};

if(([true,"barrier",1] call life_fnc_handleInv)) then
{
	titleText["Vous avez rangé la barrière.","PLAIN"];
	//player removeAction life_action_spikeStripPickup;
	life_action_barrierPickup = nil;
	deleteVehicle _barrier;
};