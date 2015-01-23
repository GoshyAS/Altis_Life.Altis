/*
	File: fn_restrain.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Retrains the client.
*/
private["_cop"];
_cop = [_this,0,Objnull,[Objnull]] call BIS_fnc_param;
if(isNull _cop) exitWith {};

//Monitor excessive restrainment
[] spawn
{
	private["_time"];
	while {true} do
	{
		_time = time;
		waitUntil {(time - _time) > (30 * 60)};
		
		if(!(player getVariable["restrainedCiv",FALSE])) exitWith {};
		if(!([west,getPos player,30] call life_fnc_nearUnits) && (player getVariable["restrainedCiv",FALSE]) && vehicle player == player) exitWith {
			player setVariable["restrainedCiv",FALSE,TRUE];
			titleText["Vous avez été demenotté par le serveur car vous avez suffisament attendu.","PLAIN"];
		};
	};
};

if((player getVariable["surrender",FALSE])) then { player setVariable["surrender",FALSE,TRUE]; player switchMove ""; };
titleText[format["Vous avez été menotte par %1",name _cop],"PLAIN"];
				
while {player getVariable "restrainedCiv"} do
{
	player playMove "AmovPercMstpSnonWnonDnon_Ease";
	_state = vehicle player;
	waitUntil {animationState player != "AmovPercMstpSnonWnonDnon_Ease" || !(player getvariable "restrainedCiv") || vehicle player != _state};
			
	if(!alive player) exitWith
	{
		player setVariable ["restrainedCiv",false,true];
	};
	
	if(vehicle player != player) then
	{
		//disableUserInput true;
		if(driver (vehicle player) == player) then {player action["eject",vehicle player];};
	}
		else
	{
		//disableUserInput false;
	};
};

//disableUserInput false;
		
if(alive player) then
{
	player switchMove "AmovPercMstpSlowWrflDnon_SaluteIn";
};