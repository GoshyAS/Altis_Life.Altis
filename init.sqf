enableSaving [false, false];

X_Server = false;
X_Client = false;
X_JIP = false;
StartProgress = false;

if(!isDedicated) then { X_Client = true;};
enableSaving[false,false];

life_versionInfo = "Altis Life RPG v3.1.4.8";
[] execVM "briefing.sqf"; //Load Briefing

[] execVM "KRON_Strings.sqf";

BipBipOn=true;
publicVariable "BipBipOn";

StartProgress = true;

"BIS_fnc_MP_packet" addPublicVariableEventHandler {_this call life_fnc_MPexec};

waitUntil {!(isNull (findDisplay 46))};
[] execVM "core\script\initscript.sqf";
[] execVM "dialog\statusBar.sqf";

[] execVM "core\script\tdlc_pos_player.sqf";

