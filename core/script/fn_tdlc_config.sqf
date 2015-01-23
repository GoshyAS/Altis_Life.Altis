#include <macro.h>
/*
	File : tdlc_config.sqf
	Author : TDLC 	<tdlctv@live.fr>
*/

waitUntil {!(isNull (findDisplay 46))};
sleep 3;

[] spawn
{
	while {true} do
	{
		if (typeof vehicle player == "C_SUV_01_F") then
		{
			vehicle player setmass 1400;
			vehicle player setCenterOfMass [-0.010813,-0.506166,-0.757481];
		};
		sleep 1;
	};
};