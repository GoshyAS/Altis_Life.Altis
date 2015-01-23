/*
	File: fn_setupActions.sqf
	
	Description:
	Master addAction file handler for all client-based actions.
*/
switch (playerSide) do
{
	case civilian:
	{
		//Drop fishing net
		life_actions = [player addAction[localize "STR_pAct_DropFishingNet",life_fnc_dropFishingNet,"",0,false,false,"",'
		(surfaceisWater (getPos vehicle player)) && (vehicle player isKindOf "Ship") && life_carryWeight < life_maxWeight && speed (vehicle player) < 15 && speed (vehicle player) > -15 && !life_net_dropped ']];
		//Rob person
		life_actions = life_actions + [player addAction["Voler la personne",life_fnc_robAction,"",0,false,false,"",'
        !isNull cursorTarget && player distance cursorTarget < 3.5 && isPlayer cursorTarget && animationState cursorTarget in ["Incapacitated","amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon"] && !(cursorTarget getVariable["robbed",FALSE]) ']];
		
		life_actions = [player addAction["Lier les main du joueur",life_fnc_restrainCivAction,cursorTarget,9999999,false,false,"",' 
		!isNull cursorTarget && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && alive cursorTarget && (life_inv_Zip > 0)&& cursorTarget distance player < 3.5 && animationState cursorTarget in ["Incapacitated","amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon","AmovPpneMstpSnonWnonDnon"] && speed cursorTarget < 1 ']]; //&& (side cursorTarget == civilian) && !(cursorTarget getVariable "Escorting") && !(cursorTarget getVariable "restrainedCiv") && !(cursorTarget getVariable "restrainedCiv")    														 ((animationState cursorTarget == "AmovPpneMstpSnonWnonDnon") OR (animationState cursorTarget == "Incapacitated"))

		life_actions = life_actions + [player addAction["Gyrophare Allumé",{[[vehicle player,0.22],"life_fnc_copLights",true,false] spawn life_fnc_MP; vehicle player setVariable["lights",true,true];},"",0,false,false,"",' vehicle player != player && !isNil {vehicle player getVariable "lights"} && ((driver vehicle player) == player) && !(vehicle player getVariable "lights")']]; // && sunOrMoon < 1 && (typeOf vehicle player) in ["C_Offroad_01_F","B_MRAP_01_F","C_SUV_01_F"] &&
		life_actions = life_actions + [player addAction["Gyrophare Eteint",{vehicle player setVariable["lights",false,true];},"",0,false,false,"", ' vehicle player != player && !isNil {vehicle player getVariable "lights"} && ((driver vehicle player) == player) && (vehicle player getVariable "lights") ']]; // && (typeOf vehicle player) in ["C_Offroad_01_F","B_MRAP_01_F","C_SUV_01_F"] 

	};
    
    case west:
	{
		//Place barriere
		life_actions = life_actions + [player addAction["<t color='#FFFF33'>Placer la barrière routière</t>",{if(!isNull life_barrier) then {detach life_barrier; life_barrier = ObjNull;};},"",999,false,false,"",'!isNull life_barrier']];

		//Reprendre des barriere
		life_actions = life_actions + [player addAction["<t color='#FFFF33'>Reprendre la barrière routière.</t>",life_fnc_packupBarrier,"",0,false,false,"",
		' _barrier = nearestObjects[getPos player,["RoadBarrier_F"],8] select 0; !isNil "_barrier" && !isNil {(_barrier getVariable "item")}']];
        
        //Saisir armes
        life_actions = life_actions + [player addAction["<t color='#FFFF00'>Saisir l'armement</t>+",
        life_fnc_seizePlayerWeapon,cursorTarget,0,false,false,"",'!isNull cursorTarget && (player distance cursorTarget) 
        < 6 && speed cursorTarget < 2 && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && (side cursorTarget == civilian) 
        && (cursorTarget getVariable "restrained")']];
        
        //Saisir Objets
		life_actions = life_actions + [player addAction["Saisir objets",life_fnc_seizeObjects,cursorTarget,0,false,false,"",
        '((count(nearestObjects [player,["WeaponHolder"],3])>0) || (count(nearestObjects [player,["GroundWeaponHolder"],3])>0) || (count(nearestObjects [player,["WeaponHolderSimulated"],3])>0))']];

	};
};

life_actions = life_actions + [player addAction["Reparer le Vehicle (?500)",life_fnc_pumpRepair,"",999,false,false,"",
' vehicle player != player && (typeOf cursorTarget == "Land_fs_feed_F") && (vehicle player) distance cursorTarget < 6 ']];

life_actions = life_actions + [player addAction["Liberer le joueur",life_fnc_unrestrainCiv,cursorTarget,0,false,false,"",
		' !isNull cursorTarget && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && animationState cursorTarget == "AmovPercMstpSnonWnonDnon_Ease" && player distance cursorTarget < 3.5 && (cursorTarget getVariable "restrainedCiv") && !(cursorTarget getVariable "Escorting") ']]; // && (side cursorTarget == civilian)
		