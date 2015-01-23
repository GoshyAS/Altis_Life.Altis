private ["_amount1", "_amount2", "_amount3"];
_amount1 = life_tdlc_houblon;
_amount2 = life_tdlc_malt;
_amount3 = "";

if (_amount1 < _amount2) then 
{
	_amount3 = (_amount2 - (_amount2 - _amount1));
	_amount2 = (_amount2 - (_amount2 - _amount1));
};
if (_amount2 < _amount1) then 
{
	_amount3 = (_amount1 - (_amount1 - _amount2));
	_amount1 = (_amount1 - (_amount1 - _amount2));
};
if (_amount1 == _amount2) then 
{
	_amount3 = _amount1;
};
if (life_tdlc_houblon <= 0) exitWith { hint "Vous avez besoin de houblon pour creer une biere"; };
if (life_tdlc_malt <= 0) exitWith { hint "Vous avez besoin de malt pour creer une biere"; };
if(vehicle player != player) exitWith {hint "Vous ne pouvez pas faire cette action en vehicule !"};

//License check - change first line if your dont use license for it
if(license_biere) then
 {
	if(([false,"malt",_amount2] call life_fnc_handleInv) && ([false,"houblon",_amount1] call life_fnc_handleInv)) then 
	{
	titleText["En cours de traitement..", "PLAIN"];
	titleFadeOut 5;
	sleep 6;
		if (([true, "biere", _amount3] call life_fnc_handleInv)) then 
		{
		titleText [format ["Vous avez creer %1 biere.", _amount3], "PLAIN"];
		};
	};
}
else
{
	hint "Vous avez besoins de la license pour pouvoir faire cette action";
}