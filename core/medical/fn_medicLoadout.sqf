/*
	File: fn_medicLoadout.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Loads the medic out with the default gear.
*/
private["_handle"];
_handle = [] spawn life_fnc_stripDownPlayer;
waitUntil {scriptDone _handle};

player forceaddUniform "U_I_HeliPilotCoveralls";
player addItem "FirstAidKit";
player addItem "FirstAidKit";
player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemCompass";
player assignItem "ItemCompass";
player addItem "ItemWatch";
player assignItem "ItemWatch";
player addBackpack "B_Carryall_oucamo";
mybackpack = unitBackpack player;
mybackpack addItemCargoGlobal ["FirstAidKit",1];

[[unitBackpack player,0,"texture\Medic\med_backpack.jpg"],"life_fnc_setTexture",true,false] spawn life_fnc_MP;
[[player,0,"texture\Medic\med_uniform.jpg"],"life_fnc_setTexture",true,false] spawn life_fnc_MP;

[] call life_fnc_saveGear;
