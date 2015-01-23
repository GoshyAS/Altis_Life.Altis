/*
	File : tdlc_skin_vetements.sqf
	Author : TDLC 	<tdlctv@live.fr>
*/
sleep 5;
#include <macro.h>
if (IsServer) exitWith {};

[] spawn // pour la police // (__GETC__(life_coplevel))
{
	if (playerSide == west) then
	{
		[] spawn // Tete de lecture pour texture police par grade
		{
			if(playerSide == west) then // Recheck inutile de base mais on ne sait jamais ...
			{
				while {true} do
				{
					switch (__GETC__(life_coplevel)) do // pour les tenue par grade
					{
						case 1: 
						{
						
						};
						case 2: 
						{
						
						};
						case 3: 
						{
						
						};
						case 4: 
						{
						
						};
						case 5: 
						{
						
						};
						case 6: 
						{
							if ((uniform player) in ["U_B_CombatUniform_mcam","U_B_CombatUniform_mcam_tshirt"]) then
							{
								player setObjectTextureGlobal [0,"texture\Police\uniformoff.jpg"];
							};
							
							if (uniform player == "U_B_HeliPilotCoveralls") then
							{
							player setObjectTextureGlobal [0,"#(argb,8,8,3)color(0.00,0.00,0.15,1)"];
							};
						};
						case 7: 
						{
							if ((uniform player) in ["U_B_CombatUniform_mcam","U_B_CombatUniform_mcam_tshirt"]) then
							{
								player setObjectTextureGlobal [0,"texture\Police\uniformoff.jpg"];
							};
							
							if (uniform player == "U_B_HeliPilotCoveralls") then
							{
							player setObjectTextureGlobal [0,"#(argb,8,8,3)color(0.00,0.00,0.15,1)"];
							};
						};
						case 8: 
						{
							if ((uniform player) in ["U_B_CombatUniform_mcam","U_B_CombatUniform_mcam_tshirt"]) then
							{
								player setObjectTextureGlobal [0,"texture\Police\uniformoff.jpg"];
							};
							
							if (uniform player == "U_B_HeliPilotCoveralls") then
							{
							player setObjectTextureGlobal [0,"#(argb,8,8,3)color(0.00,0.00,0.15,1)"];
							};
						};
						case 9: 
						{
							if ((uniform player) in ["U_B_CombatUniform_mcam","U_B_CombatUniform_mcam_tshirt"]) then
							{
								player setObjectTextureGlobal [0,"texture\Police\uniformoff.jpg"];
							};
							
							if (uniform player == "U_B_CombatUniform_mcam_worn") then
							{
								player setObjectTextureGlobal [0,"texture\Police\uniformoffsup.jpg"];
							};
							
							if (uniform player == "U_B_HeliPilotCoveralls") then
							{
							player setObjectTextureGlobal [0,"#(argb,8,8,3)color(0.00,0.00,0.15,1)"];
							};
						};
						case 10: 
						{
							if ((uniform player) in ["U_B_CombatUniform_mcam","U_B_CombatUniform_mcam_tshirt"]) then
							{
								player setObjectTextureGlobal [0,"texture\Police\uniformoff.jpg"];
							};
							
							if (uniform player == "U_B_CombatUniform_mcam_worn") then
							{
								player setObjectTextureGlobal [0,"texture\Police\uniformoffsup.jpg"];
							};
							
							if (uniform player == "U_B_HeliPilotCoveralls") then
							{
							player setObjectTextureGlobal [0,"#(argb,8,8,3)color(0.00,0.00,0.15,1)"];
							};
						};
					};
					
					if (uniform player == "U_Rangemaster") then // Partie pour les vetements uniquement sans limite de grade
					{
						player setObjectTextureGlobal [0,"texture\Police\gav_uniform.jpg"];
					};
					
					if (__GETC__(life_coplevel) > 5 ) then
					{
						if (uniform player == "U_B_HeliPilotCoveralls") then
						{
							player setObjectTextureGlobal [0,"#(argb,8,8,3)color(0.05,0.05,0.05,1)"];
						};
					};
					
					if (__GETC__(life_coplevel) > 6 ) then
					{
						if (uniform player == "U_B_CombatUniform_mcam") then
						{
							player setObjectTextureGlobal [0,"texture\Police\uniformoff.jpg"];
						};
					};
					
					if (__GETC__(life_coplevel) > 9 ) then
					{
						if (uniform player == "U_B_CombatUniform_mcam_worn") then
						{
							player setObjectTextureGlobal [0,"texture\Police\uniformoffsup.jpg"];
						};
						if (uniform player == "U_B_GhillieSuit") then
						{
							player setObjectTextureGlobal [0,"#(argb,8,8,3)color(0.05,0.05,0.05,1)"];
						};
					};
					
					sleep 5;
				};
			};
		};
	};
};

[] spawn // Medic
{
	if(playerSide == independent) then 
	{
		while {true} do
		{
			if (uniform player == "U_I_HeliPilotCoveralls") then // U_Rangemaster
			{
				player setObjectTextureGlobal [0,"texture\Medic\med_uniform.jpg"];
			};
			if(backpack player == "B_Carryall_oucamo") then
			{
				unitBackpack player setObjectTextureGlobal [0,"texture\Medic\med_backpack.jpg"];
			};
			sleep 5;
		};
	};
};

