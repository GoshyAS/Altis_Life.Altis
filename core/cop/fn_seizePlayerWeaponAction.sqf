/*
	File: fn_seizePlayerWeaponAction.sqf
	Author: Skalicon

	Description:
	Removes the players weapons client side
*/
removeAllWeapons player;
[] call life_fnc_saveGear;
//[] call life_fnc_sessionUpdate; //Should make weapon remove persistent
[] call life_fnc_civLoadGear;
titleText["Votre armement a été saisi","PLAIN"];