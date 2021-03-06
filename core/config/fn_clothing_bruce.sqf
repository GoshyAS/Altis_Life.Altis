/*
	File: fn_clothing_bruce.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Bruce's Outback Outfits.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Bruce's Outback Outfits"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
		["U_C_Poloshirt_blue",nil,250],
		["U_C_Poloshirt_burgundy",nil,275],
		["U_C_Poloshirt_redwhite",nil,150],
		["U_C_Poloshirt_salmon",nil,175],
		["U_C_Poloshirt_stripped",nil,125],
		["U_C_Poloshirt_tricolour",nil,350],
		["U_C_Poor_2",nil,250],
        ["U_IG_Guerilla2_1","Ensemble noir/beige",650],
		["U_IG_Guerilla2_2","Ensemble vert/gris",650],
		["U_IG_Guerilla3_1","Veste marron",735],
        ["U_IG_Guerilla3_2","Style militaire",735],
		["U_IG_Guerilla2_3","Ensemble noir/vert",1200],
		["U_C_HunterBody_grn",nil,1500],
		["U_C_WorkerCoveralls",nil,2500],
		["U_OrestesBody",nil,1100],
        ["U_NikosBody",nil,1200],
		["U_NikosAgedBody",nil,5000]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["H_Bandanna_camo",nil,120],
			["H_Bandanna_surfer",nil,130],
			["H_Bandanna_gry",nil,150],
			["H_Bandanna_cbr",nil,165],
			["H_Bandanna_surfer",nil,135],
			["H_Bandanna_khk",nil,145],
			["H_Bandanna_sgg",nil,160],
			["H_StrawHat",nil,225],
			["H_BandMask_blk",nil,300],
			["H_Booniehat_tan",nil,425],
			["H_Hat_blue",nil,310],
			["H_Hat_brown",nil,276],
			["H_Hat_checker",nil,340],
			["H_Hat_grey",nil,280],
			["H_Hat_tan",nil,265],
			["H_Cap_blu",nil,150],
			["H_Cap_grn",nil,150],
			["H_Cap_grn_BI",nil,150],
			["H_Cap_oli",nil,150],
			["H_Cap_red",nil,150],
			["H_Cap_tan",nil,150]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Squares",nil,10],
			["G_Aviator",nil,100],
			["G_Lady_Mirror",nil,150],
			["G_Lady_Dark",nil,150],
			["G_Lady_Blue",nil,150],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55]
		];
	};
	
	//Vest
	case 3:
	{
		[
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_AssaultPack_cbr",nil,2500],
			["B_Kitbag_mcamo",nil,4500],
			["B_TacticalPack_oli",nil,3500],
			["B_FieldPack_ocamo",nil,3000],
			["B_Bergen_sgg",nil,4500],
			["B_Kitbag_cbr",nil,4500],
			["B_Carryall_oli",nil,5000],
			["B_Carryall_khk",nil,5000]
		];
	};
};