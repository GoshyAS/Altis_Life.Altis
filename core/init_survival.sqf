[] spawn  {
	private["_fnc_food","_fnc_water"];
	_fnc_food = 
	{
		/*if(life_hunger < 2) then {player setDamage 1; hint localize "STR_NOTF_EatMSG_Death";}
		else
		{
		life_hunger = life_hunger - 10;
		[] call life_fnc_hudUpdate;
		if(life_hunger < 2) then {player setDamage 1; hint localize "STR_NOTF_EatMSG_Death";};
		switch(life_hunger) do {
			case 30: {hint localize "STR_NOTF_EatMSG_1";};
			case 20: {hint localize "STR_NOTF_EatMSG_2";};
			case 10: {hint localize "STR_NOTF_EatMSG_3";player setFatigue 1;};
			};
		};*/ // Fin message basique
		
		if(life_hunger < 2) then 
		{
			player setDamage 1;
			hint "Vous êtes mort de faim. Dommage, on vous avait prévenu ... haha hahahahah hahahahah hahah";
			[[2,format["Cette personne a oublié de manger : %1 il en a payé le prix, c'est pour ça les enfants qu'il faut manger 5 fruits et légumes par jour.",name player]],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
		}
		else
		{
			life_hunger = life_hunger - 10;
			[] call life_fnc_hudUpdate;
			if(life_hunger < 2) then 
			{
				player setDamage 1;
				hint "Vous êtes mort de faim. Dommage, on vous avait prévenu ... haha hahahahah hahahahah hahah";
				[[2,format["Cette personne a oublié de manger : %1 il en a payé le prix, c'est pour ça les enfants qu'il faut manger 5 fruits et légumes par jour.",name player]],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
			};
			switch(life_hunger) do 
			{
				case 30: {hint "Vous n'avez pas mangé depuis un moment, faites attention, manger dans les plus brefs delais!";};
				case 20: {hint "Vous n'avez toujours rien mange depuis tout à l'heure ? Vous jouez avec votre vie ...";};
				case 10: {hint "Vous êtes vraiment épuisé, vous avez tellement faim que vous pourriez manger ce serpent a votre pied ou ce magnifique lapin qui galope devant vous ... ou vos amis... attention a pas mangé la terre d'ici la ...";player setFatigue 1;};
			};
		};
	};
	
	_fnc_water = 
	{
		/*if(life_thirst < 2) then {player setDamage 1; hint localize "STR_NOTF_DrinkMSG_Death";}
		else
		{
			life_thirst = life_thirst - 10;
			[] call life_fnc_hudUpdate;
			if(life_thirst < 2) then {player setDamage 1; hint localize "STR_NOTF_DrinkMSG_Death";};
			switch(life_thirst) do 
			{
				case 30: {hint localize "STR_NOTF_DrinkMSG_1";};
				case 20: {hint localize "STR_NOTF_DrinkMSG_2"; player setFatigue 1;};
				case 10: {hint localize "STR_NOTF_DrinkMSG_3"; player setFatigue 1;};
			};
		};*/ // Fin message basique
		
		if(life_thirst < 2) then 
		{
			player setDamage 1;
			hint "Vous êtes mort de déshydratation. Dommage, on vous avait prévenu ... haha hahahahah hahahahah hahah";
			[[2,format["Cette personne a oublié de boire : %1 il en a payé le prix, c'est pour ça les enfants qu'il faut boire 2 litres d'eau par jour.",name player]],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
		}
		else
		{
			life_thirst = life_thirst - 10;
			[] call life_fnc_hudUpdate;
			if(life_thirst < 2) then 
			{
				player setDamage 1;
				hint "Vous êtes mort de déshydratation. Dommage, on vous avait prévenu ... haha hahahahah hahahahah hahah";
				[[2,format["Cette personne a oublié de boire : %1 il en a payé le prix, c'est pour ça les enfants qu'il faut boire 2 litres d'eau par jour.",name player]],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
			};
			switch(life_thirst) do 
			{
				case 30: {hint"Vous n'avez rien bu depuis un petit moment, vous commencer à vous déshydraté...";};
				case 20: {hint "Vous n'avez rien bu depuis tout à l'heure .. attention mon gars, tu vas bientôt crever si tu ne trouves pas de l'eau rapidement..."; player setFatigue 1;};
				case 10: {hint "HAHAHA Vous suffoquez ? Vous ne pouvez plus courir ? c'est bête hein ? Avouez, vous avez oublié d'acheter cette magnifique bouteille d'eau au marché car vous ne vouliez pas perdre 10$ n'est-ce pas ? Cours vite mon petit, tu vas bientôt crever et moi pendant ce temps la, je vais acheter du popcorn, et je vais te regarder crever comme une merde ... hahahahahahaha ... tic ... tac ... tic ... tac ...tu entend ce bruit ? bah tu ne l'entendras plus pour longtemps, encore 10 minutes à attendre et tu crèveras tel un vieux en maison de retraite pendant la canicule... mouhahahahahahaha Cordialement, TDLC PS: Si tu meurs, tout le monde verra que tu est mort comme une grosse merde, a+"; player setFatigue 1;};
			};
		};
	};
	
	while{true} do
	{
		sleep 600;
		[] call _fnc_water;
		sleep 250;
		[] call _fnc_food;
	};
};

[] spawn
{
	private["_bp","_load","_cfg"];
	while{true} do
	{
		waitUntil {backpack player != ""};
		_bp = backpack player;
		_cfg = getNumber(configFile >> "CfgVehicles" >> (backpack player) >> "maximumload");
		_load = round(_cfg / 8);
		life_maxWeight = life_maxWeightT + _load;
		waitUntil {backpack player != _bp};
		if(backpack player == "") then 
		{
			life_maxWeight = life_maxWeightT;
		};
	};
};

[] spawn
{
	while {true} do
	{
		sleep 1.5;
		if(life_carryWeight > life_maxWeight && !isForcedWalk player) then {
			player forceWalk true;
			player setFatigue 1;
			hint localize "STR_NOTF_MaxWeight";
		} else {
			if(isForcedWalk player) then {
				player forceWalk false;
			};
		};
	};
};

[] spawn  
{
	private["_walkDis","_myLastPos","_MaxWalk","_runHunger","_runDehydrate"];
	_walkDis = 0;
	_myLastPos = (getPos player select 0) + (getPos player select 1);
	_MaxWalk = 1200;
	while{true} do 
	{
		sleep 0.5;
		if(!alive player) then {_walkDis = 0;}
		else
		{
			_CurPos = (getPos player select 0) + (getPos player select 1);
			if((_CurPos != _myLastPos) && (vehicle player == player)) then
			{
				_walkDis = _walkDis + 1;
				if(_walkDis == _MaxWalk) then
				{
					_walkDis = 0;
					life_thirst = life_thirst - 5;
					life_hunger = life_hunger - 5;
					[] call life_fnc_hudUpdate;
				};
			};
			_myLastPos = (getPos player select 0) + (getPos player select 1);
		};
	};
};

[] spawn 
{
	while{true} do
	{
		sleep 900;
		systemChat format["MESSAGE AUTOMATIQUE : Reboot Automatique a 02h00, 06h00, 12h00, 16h00, 20h00 (Heure francaise)"];
		hint "Reboot Automatique a 02h00, 06h00, 12h00, 16h00, 20h00 (Heure francaise)";
		systemChat format["Pour information, il est actuellement %1 %2 %3 (Heure Serveur)",tdlcheure,tdlcminute,tdlcseconde];
	};
};

_illegalmarkers = ["Dealer_1","Dealer_1_3","Dealer_1_4","Weed_p_1","cocaine_1","coke_area","heroin_1","heroin_area","heroin_p","turtle_1","turtle_1_name","turtle_2","turtle_1_name_1","turtle_3","turtle_1_name_2","turle_dealer","turle_dealer_1","turle_dealer_2","gang_area_1","gang_area_2","gang_area_3","Cocaine_p_1","Rebelop_1","Rebelop_1_2_1","Rebelop_1_2","chop_shop_4","chop_shop_2","chop_shop_1","chop_shop_3","Rebelop_1_1","monnayeurefeg","imprimeriezone","weed_1","weed_area","gold_bar_dealer","copper_mine_1_1_2","copper_mine_1_1","oil_trader_5_1_1","oil_trader_5_1"];

if (playerSide == west) then {

{ deleteMarkerLocal _x; } forEach _illegalmarkers;

};