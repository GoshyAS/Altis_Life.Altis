/*
	File : tdlc_pos_player.sqf
	Author : TDLC 	<tdlctv@live.fr>
*/

while {true} do
{
	_unit = vehicle player;
	_marker = "joueur_marker";
	
	//showGPS true;
	_marker setMarkerColorLocal "ColorWhite";

	[] spawn
	{
		_unit = vehicle player;
		_marker = "joueur_marker";
		
		while{alive _unit} do
		{
			waituntil {visibleMap};
			_marker setMarkerColorLocal "ColorBlue";
			sleep 0.5;
			_marker setMarkerColorLocal "ColorWhite";
			sleep 0.5
		};
	};
	[] spawn
	{
		_unit = vehicle player;
		_marker = "joueur_marker";
		
		while{true} do
		{
			waituntil {visibleMap};
			_marker setMarkerAlphaLocal 1;
			waituntil {!visibleMap};
			_marker setMarkerAlphaLocal 0;
		};
	};
	while{alive _unit}do 
	{
		waituntil {visibleMap};
		_marker setMarkerPosLocal (getPos _unit);
		//_market setMarkerDirLocal _dir;
		//sleep 0.50;
		
		
	};

	_marker setMarkerColorLocal "ColorWhite";
};

//trolol = [vehicle player,"joueur_marker"] execVM "core\script\pos_player.sqf"