/*
	File : tdlc_eq_bug.sqf
	Author : TDLC 	<tdlctv@live.fr>
*/

equipementbug = false;

test_stuffbug = format["%1 %2 %3 %4 %5",uniform player, vest player, primaryWeapon player, Backpack player, headgear player];

if (test_stuffbug == "U_B_CombatUniform_mcam_tshirt V_PlateCarrierSpec_rgr arifle_MX_pointer_F B_AssaultPack_rgr_Medic H_HelmetB_light_desert") then
{
	hint format ["Bonjour %1, nous sommes navrés, mais il semble que vos équipements ont été mal chargé ou enregistré. Nous vous équipons d'un équipement de base pour nous excuser, veuillez signaler cette erreur aux administrateurs ou aux développeurs du serveur. Merci de votre compréhension",name player];
	equipementbug = true;
};

if (equipementbug) then
{
	removeAllWeapons player;
	removeAllItems player;
	removeAllAssignedItems player;
	removeUniform player;
	removeVest player;
	removeBackpack player;
	removeHeadgear player;
	removeGoggles player;

	player forceAddUniform "U_Rangemaster";
	for "_i" from 1 to 2 do {player addItemToUniform "30Rnd_65x39_caseless_mag_Tracer";};
	player addVest "V_TacVest_blk_POLICE";
	for "_i" from 1 to 6 do {player addItemToVest "30Rnd_65x39_caseless_mag_Tracer";};
	for "_i" from 1 to 4 do {player addItemToVest "SmokeShellBlue";};
	for "_i" from 1 to 4 do {player addItemToVest "16Rnd_9x21_Mag";};
	player addBackpack "B_Carryall_mcamo";
	for "_i" from 1 to 2 do {player addItemToBackpack "ToolKit";};
	player addItemToBackpack "Medikit";
	player addHeadgear "H_Cap_police";
	player addGoggles "G_Shades_Black";

	player addWeapon "arifle_MXC_Black_F";
	player addPrimaryWeaponItem "muzzle_snds_H";
	player addPrimaryWeaponItem "acc_pointer_IR";
	player addPrimaryWeaponItem "optic_Hamr";
	player addWeapon "hgun_P07_snds_F";
	player addWeapon "Binocular";

	player linkItem "ItemMap";
	player linkItem "ItemCompass";
	player linkItem "ItemWatch";
	player linkItem "ItemGPS";
	player linkItem "NVGoggles_OPFOR";
	
	sleep 8;
hint format ["Bonjour %1, nous sommes navrés, mais il semble que vos équipements ont été mal chargé ou enregistré. Nous vous équipons d'un équipement de base pour nous excuser, veuillez signaler cette erreur aux administrateurs ou aux développeurs du serveur. Merci de votre compréhension",name player];

};

