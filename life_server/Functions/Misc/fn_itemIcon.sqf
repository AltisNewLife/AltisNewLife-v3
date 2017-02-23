/*
	File: fn_itemIcon.sqf
	Author: EdgeKiller

	Description:
	Return the icon for each altis life item.
*/
private["_var"];
_var = [_this,0,"",[""]] call BIS_fnc_param;
if(_var == "") exitWith {""};

switch (_var) do
{
	case "life_inv_oilu": {("icons\oil_unprocessed.paa")};
	case "life_inv_oilp": {("icons\oil_processed.paa")};
	case "life_inv_heroinu": {("icons\heroin_unprocessed.paa")};
	case "life_inv_heroinp": {("icons\heroin_processed.paa")};
	case "life_inv_cannabis": {("icons\cannabis.paa")};
	case "life_inv_marijuana": {("icons\marijuana.paa")};
	case "life_inv_apple": {("icons\apple.paa")};
	case "life_inv_rabbit": {("icons\meat.paa")};
	case "life_inv_salema": {("icons\fish.paa")};
	case "life_inv_ornate": {("icons\fish.paa")};
	case "life_inv_mackerel": {("icons\fish.paa")};
	case "life_inv_tuna": {("icons\fish.paa")};
	case "life_inv_mullet": {("icons\fish.paa")};
	case "life_inv_catshark": {("icons\fish.paa")};
	case "life_inv_turtle": {("icons\turtle.paa")};
	case "life_inv_fishingpoles": {("icons\fishingpoles.paa")};
	case "life_inv_water": {("icons\water.paa")};
	case "life_inv_coffee": {("icons\coffee.paa")};
	case "life_inv_turtlesoup": {("icons\turtle_soup.paa")};
	case "life_inv_donuts": {("icons\donut.paa")};
	case "life_inv_fuelE": {("icons\fuel.paa")};
	case "life_inv_fuelF": {("icons\fuel.paa")};
	case "life_inv_pickaxe": {("icons\pickaxe.paa")};
	case "life_inv_copperore": {("icons\copper_ore.paa")};
	case "life_inv_ironore": {("icons\iron_ore.paa")};
	case "life_inv_ironr": {("icons\iron.paa")};
	case "life_inv_copperr": {("icons\copper.paa")};
	case "life_inv_sand": {("icons\sand.paa")};
	case "life_inv_salt": {("icons\salt_unprocessed.paa")};
	case "life_inv_saltr": {("icons\saltr.paa")};
	case "life_inv_glass": {("icons\glass.paa")};
	case "life_inv_diamond": {("icons\diamond.paa")};
	case "life_inv_diamondr": {("icons\diamondr.paa")};
	case "life_inv_tbacon": {("icons\meat.paa")};
	case "life_inv_redgull": {("icons\redgull.paa")};
	case "life_inv_lockpick": {("icons\lockpick.paa")};
	case "life_inv_peach": {("icons\peach.paa")};
	case "life_inv_coke": {("icons\cocain_unprocessed.paa")};
	case "life_inv_cokep": {("icons\cocain_processed.paa")};
	case "life_inv_skull": {("icons\skull.paa")};
	case "life_inv_skullp": {("icons\skull.paa")};
	case "life_inv_spikeStrip": {("icons\spikestrip.paa")};
	case "life_inv_rock": {("icons\rock.paa")};
	case "life_inv_cement": {("icons\cement.paa")};
	case "life_inv_goldbar": {("icons\goldbar.paa")};
	case "life_inv_blastingcharge": {("icons\blastingcharge.paa")};
	case "life_inv_boltcutter": {("icons\boltcutter.paa")};
	case "life_inv_defusekit": {("icons\defusekit.paa")};
	case "life_inv_storagesmall": {("icons\storagesmall.paa")};
	case "life_inv_storagebig": {("icons\storagebig.paa")};
	case "life_inv_puranium": {("icons\uranium.paa")};
    case "life_inv_uranium1": {("icons\uranium.paa")};
    case "life_inv_uranium2": {("icons\uranium.paa")};
    case "life_inv_uranium3": {("icons\uranium.paa")};
    case "life_inv_uranium4": {("icons\uranium.paa")};
    case "life_inv_uranium": {("icons\uranium.paa")};
    case "life_inv_underwatercharge": {("icons\blastingcharge.paa")};
	case "life_inv_sprite": {("icons\sprite.paa")};
	case "life_inv_pepsi": {("icons\pepsi.paa")};
	case "life_inv_ephedrine": {("icons\salt_unprocessed.paa")};
	case "life_inv_phosphore": {("icons\gun.paa")};
	case "life_inv_metylamine":  {("icons\cocain_unprocessed.paa")};
	case "life_inv_iode": {("icons\salt_unprocessed.paa")};
	case "life_inv_meth97": {("icons\meth.paa")};
	case "life_inv_mash": {("icons\salt_unprocessed.paa")};
	case "life_inv_yeast": {("icons\oil_unprocessed.paa")};
	case "life_inv_rye": {("icons\salt_unprocessed.paa")};
	case "life_inv_hops": {("icons\heroin_unprocessed.paa")};
	case "life_inv_whiskey": {("icons\whisky.paa")};
	case "life_inv_beerp": {("icons\beer.paa")};
	case "life_inv_bottles": {("icons\bouteille.paa")};
	case "life_inv_cornmeal": {("icons\mais.paa")};
	case "life_inv_bottledwhiskey": {("icons\whisky.paa")};
	case "life_inv_bottledbeer": {("icons\beer.paa")};
	case "life_inv_bottledshine": {("icons\moonshine.paa")};
	case "life_inv_moonshine": {("icons\moonshine.paa")};
    case "life_inv_wine": {("icons\vin.paa")};
    case "life_inv_grapes": {("icons\grapes.paa")};
	case "life_inv_redburger": {("icons\hamburger.paa")};
	case "life_inv_frite": {("icons\food.paa")};
    case "life_inv_battery": {("icons\battery.paa")};
	case "life_inv_goldbar": {("icons\goldbar.paa")};
	case "life_inv_kidney": {("icons\kidney.paa")};
	case "life_inv_zipties": {("icons\menottes.paa")};
	case "life_inv_nitro": {("icons\nitro.paa")};
	case "life_inv_cafe": {("icons\coffee.paa")};
	case "life_inv_smoothies": {("icons\smoothie.paa")};
	case "life_inv_speedbomb": {("icons\speed.paa")};
	case "life_inv_orr": {("icons\gold.paa")};
    case "life_inv_lingotor": {("icons\goldbar.paa")};
    case "life_inv_goldbarp": {("icons\goldbar.paa")};
	case "life_inv_scalpel": {("icons\scalpel.paa")};
	case "life_inv_mur": {("icons\mur.paa")};
	case "life_inv_sac": {("icons\sac.paa")};
	case "life_inv_cone": {("icons\cone.paa")};
	case "life_inv_barre": {("icons\barre.paa")};
	case "life_inv_lightr": {("icons\lightr.paa")};
	case "life_inv_lightg": {("icons\lightg.paa")};
	case "life_inv_lighty": {("icons\lighty.paa")};
	case "life_inv_flecheg": {("icons\flecheg.paa")};
	case "life_inv_fleched": {("icons\fleched.paa")};
	case "life_inv_gpstracker": {("icons\gps.paa")};
	case "life_inv_kit": {("icons\kit.paa")};
	case "life_inv_poudre": {("icons\gun.paa")};
	case "life_inv_tissu": {("icons\tissu.paa")};
	case "life_inv_electro": {("icons\electro.paa")};
	case "life_inv_tobacco": {("icons\tabac.paa")};
	case "life_inv_cigarette": {("icons\cigarette.paa")};
	case "life_inv_cle": {("icons\cle.paa")};
	case "life_inv_cb": {("icons\cb.paa")};
	case "life_inv_marijuanam": {("icons\medm.paa")};
	case "life_inv_excavator": {("icons\excavator.paa")};
	case "life_inv_doubloon": {("icons\doublon.paa")};
	case "life_inv_silverpiece": {("icons\silver.paa")};
	case "life_inv_ruby": {("icons\ruby.paa")};
	case "life_inv_diamondf": {("icons\diamondr.paa")};
	case "life_inv_pearl": {("icons\pearl.paa")};
	case "life_inv_platinep": {("icons\iron.paa")};
	case "life_inv_osmium": {("icons\heroin_unprocessed.paa")};
	case "life_inv_palladium": {("icons\platine.paa")};
	case "life_inv_camisole": {"icons\camisole.paa"};
	case "life_inv_multipass": {("icons\lockpick.paa")};
};