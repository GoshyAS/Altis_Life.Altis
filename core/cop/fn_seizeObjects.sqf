/*
	File: fn_seizeWeapon.sqf
//  Autor: By Koex // CommunityOfGamer.fr
	Description:

*/
_clear = nearestObjects [player,["weaponholder"],3];
_clear = _clear + nearestObjects [player,["GroundWeaponHolder"],3];
_clear = _clear + nearestObjects [player,["WeaponHolderSimulated"],3];

_destroyed = 0;
for "_i" from 0 to count _clear - 1 
do
{
	_destroyed = _destroyed + 1;
	deleteVehicle (_clear select _i);
};

titleText[format["%1 sur le sol ont été saisis.", _destroyed],"PLAIN"];