#include <macro.h>
/*
	File : tdlc_script.sqf
	Author : TDLC 	<tdlctv@live.fr>
*/
if(isServer) then 
{
	[] spawn
	{
		settimemultiplier 15;
	};
	
	[] spawn // clean les cadavres
	{
		listecadavre = [];
		
		while {true} do
		{
			listecadavre = alldeadmen;
			if ((count listecadavre) > 1) then
			{
				{	joueuraterre = _x; RemoveAllWeapons _x;
					_clear = nearestObjects [joueuraterre,["weaponholder"],5];
					_clear = _clear + nearestObjects [joueuraterre,["GroundWeaponHolder"],5];
					_clear = _clear + nearestObjects [joueuraterre,["WeaponHolderSimulated"],5];

					_destroyed = 0;
					for "_i" from 0 to count _clear - 1 
					do
					{
						_destroyed = _destroyed + 1;
						deleteVehicle (_clear select _i);
					}; 
					removeAllWeapons _x;
					{joueuraterre removeMagazine _x;} foreach (magazines joueuraterre);
				} foreach alldeadmen; // pour delete les armes au sol et vider les cadavres
				
				[] spawn
				{
					_purgetimer = listecadavre;
					_purge = _purgetimer;
					
					sleep 300;
					{
						/*[_x] spawn
						{
							
						
						}
						if(!(_x getVariable "Revive")) then*/
						hidebody _x;
						sleep 2;
						deletevehicle _x;
					} foreach _purge;
				};
			};
			sleep 3;
		};
	};
	
	[] spawn
	{
		while {true} do
		{
			sleep 1;
			
			_tdlcdate = call compile ("real_date" callExtension "+");
			
			tdlcheure1 = _tdlcdate select 3;
			tdlcminute1 = _tdlcdate select 4;
			tdlcseconde1 = _tdlcdate select 5;
			
			"tdlch1" SetMarkerSize [tdlcheure1,1];
			"tdlcm1" SetMarkerSize [tdlcminute1,1];
			"tdlcs1" SetMarkerSize [tdlcseconde1,1];
			
		};
	};
};



