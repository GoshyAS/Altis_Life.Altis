waitUntil {!(isNull (findDisplay 46))};
disableSerialization;
 
_rscLayer = "statusBar" call BIS_fnc_rscLayer;
_rscLayer cutRsc["statusBar","PLAIN"];
systemChat format["Bienvenue sur le serveur FaZe Life !", _rscLayer];

[] spawn {
sleep 5;
_statusText = "FaZe Life";
_counter = 180;
_timeSinceLastUpdate = 0;
while {true} do
{
sleep 1;
_counter = _counter - 1;
_statusText = "FaZe Life";

tdlcheure = getmarkerSize "tdlch1" select 0;
		tdlcminute = getmarkersize "tdlcm1" select 0;
		tdlcseconde = getMarkerSize "tdlcs1" select 0;
			if (tdlcheure <= 9) then
			{
				tdlcheure = "0" + format["%1",tdlcheure];
			};
			if (tdlcminute <= 9) then
			{
				tdlcminute = "0" + format["%1",tdlcminute];
			};
			if (tdlcseconde <= 9) then
			{
				tdlcseconde = "0" + format["%1",tdlcseconde];
			};

((uiNamespace getVariable "StatusBar")displayCtrl 1000)ctrlSetText format["FPS: %1 | Gendarme: %2 | Civil: %3 | SAMU: %4 | Position: %5 | TS : Faze-France.ddns.net:10008 | Heure : %7h%8 %9", round diag_fps, west countSide playableUnits, civilian countSide playableUnits, independent countSide playableUnits,mapGridPosition player, _counter,tdlcheure,tdlcminute,tdlcseconde];
};
};