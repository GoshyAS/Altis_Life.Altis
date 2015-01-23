/*
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Handles various different ammo types being fired.
*/
private["_ammoType","_projectile"];
_player = _this select 0;
_weap = currentWeapon _player;
_ammo = _player ammo _weap;


_ammoType = _this select 4; 
_projectile = _this select 6;

if(_ammoType == "GrenadeHand_stone") then {
	_projectile spawn {
		private["_position"];
		while {!isNull _this} do {
			_position = getPosATL _this;
			sleep 0.1;
		};
		[[_position],"life_fnc_flashbang",true,false] spawn life_fnc_MP;
	};
};

if ((_weap == "hgun_P07_snds_F" OR _weap == "hgun_P07_F") && playerSide == west ) then {
	/*compteurdeballes = compteurdeballes + 1;
	if (compteurdeballes > 2) then
	{*/
		reload _player;
		compteurdeballes = 0;
	//};
};