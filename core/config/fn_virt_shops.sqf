/*
	File: fn_virt_shops.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Config for virtual shops.
*/
private["_shop"];
_shop = _this select 0;

switch (_shop) do
{
	case "market": {["Marché d'altis",["vin","water","rabbit","apple","redgull","tbacon","lockpick","hache","pickaxe","fuelF","peach","storagesmall","storagebig"]]}; // vendre du vin ici
	case "rebel": {["Marchand rebelle",["boltcutter","blastingcharge","Zip"]]};
	case "gang": {["Gang", ["water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","blastingcharge","boltcutter"]]};
	case "wongs": {["Wong's Food Cart",["turtlesoup","turtle"]]};
	case "coffee": {["Stratis Coffee Club",["coffee","donuts"]]};
	case "heroin": {["Dealer",["cocainep","heroinp","marijuana"]]};
	case "oil": {["Oil Trader",["oilp","pickaxe","fuelF"]]};
	case "fishmarket": {["Altis Fish Market",["salema","ornate","mackerel","mullet","tuna","catshark"]]};
	case "glass": {["Carglass",["glass"]]};
	case "iron": {["Altis Industrial Trader",["iron_r","copper_r"]]};
	case "diamond": {["Diamond Dealer",["diamond","diamondc"]]};
	case "salt": {["Salt Dealer",["salt_r"]]};
	case "cop": {["Cop Item Shop",["donuts","coffee","spikeStrip","barrier","water","rabbit","apple","redgull","fuelF","defusekit"]]};
	case "cement": {["Cement Dealer",["cement"]]};
	case "gold": {["Gold Buyer",["goldbar"]]};
    
    //Gosh
    case "alcoleg": {["Acheteur d'alcool",["vin"]]};
    case "alcoileg": {["Contrebandier",["moonshine"]]};
    case "geo": {["Acheteur de minéraux",["platinep"]]};
	
	//marchand TDLC
	case "wood_market": {["Menuiserie",["bois","water","apple","hache"]]};
	case "wood2_market": {["Imprimerie",["papier"]]};
	case "wood3_market": {["Monnayeur",["fauxbillet"]]};
	case "beer_market": {["Brasserie",["biere"]]};
};