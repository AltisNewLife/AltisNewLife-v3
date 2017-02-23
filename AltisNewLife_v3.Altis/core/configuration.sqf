#include <macro.h>
life_query_time = time;
life_bounty_contract = [];
life_bounty_uid = "0";
life_action_delay = time;
life_trunk_vehicle = Objnull;
life_session_completed = false;
life_garage_store = false;
life_session_tries = 0;
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_clothing_filter = 0;
life_clothing_uniform = -1;
life_redgull_effect = time;
life_is_processing = false;
life_bail_paid = false;
life_impound_inuse = false;
life_action_inUse = false;
life_spikestrip = ObjNull;
life_wanted = 0;
life_last_wanted = 0;
life_respawn_timer = 2;
life_has_insurance = false;
life_nametags = [];
life_knockout = false;
life_interrupted = false;
life_respawned = false;
life_removeWanted = false;
life_action_gathering = false;
life_sex_ill = 0;
life_checked = 0;
life_channel_send = true;
life_fatigue = 0.3;
life_god = false;
life_frozen = false;
life_markers = false;
life_drink = 0;
life_sitting = false;
life_slaver = false;
life_enslaved = false;
life_fou = false;
life_fps = false;
Life_request_timer = false;
__CONST__(life_save_civ,TRUE); //Save weapons for civs?
__CONST__(life_save_yinv,TRUE); //Save Y-Inventory for players?
__CONST__(life_revive_cops,TRUE);
__CONST__(life_revive_fee,400);
__CONST__(life_houseLimit,6);
__CONST__(life_gangPrice,50000);
__CONST__(life_gangUpgradeBase,10000);
__CONST__(life_gangUpgradeMultipler,2.5);
__CONST__(life_enableFatigue,false);
life_clothing_purchase = [-1,-1,-1,-1,-1];
/*
****** Weight Variables *****
*/
life_maxWeight = 64;
life_maxWeightT = 64;
life_carryWeight = 0;
life_mur = ObjNull;
life_sac = ObjNull;
life_barre = ObjNull;
life_cone = ObjNull;
life_lightr = ObjNull;
life_lightg = ObjNull;
life_lighty = ObjNull;
life_flecheg = ObjNull;
life_fleched = ObjNull;

/*
****** Food Variables *******
*/
life_eat_Salema = 40;
life_eat_Ornate = 20;
life_eat_Mackerel = 20;
life_eat_Tuna = 100;
life_eat_Mullet = 30;
life_eat_CatShark = 60;
life_eat_Rabbit = 20;
life_eat_Apple = 5;
life_eat_turtlesoup = 62;
life_eat_donuts = 30;
life_eat_redburger = 70;
life_eat_frite = 20;
life_eat_Peach = 10;
life_eat_grapes = 10;
/*
****** Life Variables *******
*/
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_bank_fail = false;
life_use_atm = true;
life_is_arrested = false;
life_is_alive = false;
life_delivery_in_progress = false;
life_action_in_use = false;
life_thirst = 100;
life_hunger = 100;
life_battery = 100;
__CONST__(life_paycheck_period,5);
argent_liquide = 0;
__CONST__(life_impound_car,500);
__CONST__(life_impound_boat,600);
__CONST__(life_impound_air,850);
life_istazed = false;
life_my_gang = ObjNull;
life_vehicles = [];

bank_robber = [];
switch (playerSide) do
{
case west:
{
compte_banque = 3000;
life_paycheck = 300;
};
case civilian:
{
compte_banque = 2000;
life_paycheck = 200;
};

case independent: {
compte_banque = 4000;
life_paycheck = 500;
};

case east: {
compte_banque = 5000;
life_paycheck = 400;
};
};
life_vShop_rentalOnly = ["B_MRAP_01_hmg_F","B_G_Offroad_01_armed_F"];
__CONST__(life_vShop_rentalOnly,life_vShop_rentalOnly);
life_inv_items =
[
"life_inv_oilu",
"life_inv_oilp",
"life_inv_heroinu",
"life_inv_heroinp",
"life_inv_cannabis",
"life_inv_marijuana",
"life_inv_apple",
"life_inv_rabbit",
"life_inv_salema",
"life_inv_ornate",
"life_inv_mackerel",
"life_inv_tuna",
"life_inv_mullet",
"life_inv_catshark",
"life_inv_turtle",
"life_inv_fishingpoles",
"life_inv_water",
"life_inv_donuts",
"life_inv_turtlesoup",
"life_inv_coffee",
"life_inv_fuelF",
"life_inv_fuelE",
"life_inv_pickaxe",
"life_inv_copperore",
"life_inv_ironore",
"life_inv_ironr",
"life_inv_copperr",
"life_inv_sand",
"life_inv_salt",
"life_inv_saltr",
"life_inv_glass",
"life_inv_tbacon",
"life_inv_lockpick",
"life_inv_redgull",
"life_inv_peach",
"life_inv_diamond",
"life_inv_coke",
"life_inv_cokep",
"life_inv_diamondr",
"life_inv_spikeStrip",
"life_inv_rock",
"life_inv_cement",
"life_inv_goldbar",
"life_inv_blastingcharge",
"life_inv_boltcutter",
"life_inv_defusekit",
"life_inv_storagesmall",
"life_inv_storagebig",
"life_inv_puranium",
"life_inv_ipuranium",
"life_inv_uranium1",
"life_inv_uranium2",
"life_inv_uranium3",
"life_inv_uranium4",
"life_inv_uranium",
"life_inv_skull",
"life_inv_skullp",
"life_inv_ephedrine",
"life_inv_phosphore",
"life_inv_metylamine",
"life_inv_iode",
"life_inv_meth97",
"life_inv_wine",
"life_inv_grapes",
"life_inv_cornmeal",
"life_inv_beerp",
"life_inv_whiskey",
"life_inv_rye",
"life_inv_hops",
"life_inv_yeast",
"life_inv_bottles",
"life_inv_bottledshine",
"life_inv_bottledbeer",
"life_inv_bottledwhiskey",
"life_inv_moonshine",
"life_inv_mash",
"life_inv_redburger",
"life_inv_sprite",
"life_inv_pepsi",
"life_inv_frite",
"life_inv_battery",
"life_inv_cafe",
"life_inv_smoothies",
"life_inv_kidney",
"life_inv_nitro",
"life_inv_zipties",
"life_inv_speedbomb",
"life_inv_orr",
"life_inv_lingotor",
"life_inv_goldbarp",
"life_inv_underwatercharge",
"life_inv_scalpel",
"life_inv_mur",
"life_inv_sac",
"life_inv_cone",
"life_inv_barre",
"life_inv_lightr",
"life_inv_lightg",
"life_inv_lighty",
"life_inv_flecheg",
"life_inv_fleched",
"life_inv_gpstracker",
"life_inv_kit",
"life_inv_poudre",
"life_inv_tissu",
"life_inv_electro",
"life_inv_tobacco",
"life_inv_cigarette",
"life_inv_cle",
"life_inv_cb",
"life_inv_marijuanam",
"life_inv_doubloon",
"life_inv_silverpiece",
"life_inv_ruby",
"life_inv_diamondf",
"life_inv_pearl",
"life_inv_excavator",
"life_inv_platinep",
"life_inv_osmium",
"life_inv_palladium",
"life_inv_camisole",
"life_inv_multipass"
];

{missionNamespace setVariable[_x,0];} foreach life_inv_items;
life_licenses =
[
["license_cop_air","cop"],
["license_cop_swat","cop"],
["license_cop_cg","cop"],
["license_cop_cea","cop"],
["license_civ_driver","civ"],
["license_civ_air","civ"],
["license_civ_heroin","civ"],
["license_civ_marijuana","civ"],
["license_civ_gang","civ"],
["license_civ_boat","civ"],
["license_civ_oil","civ"],
["license_civ_dive","civ"],
["license_civ_truck","civ"],
["license_civ_gun","civ"],
["license_civ_rebel","civ"],
["license_civ_coke","civ"],
["license_civ_diamond","civ"],
["license_civ_copper","civ"],
["license_civ_iron","civ"],
["license_civ_sand","civ"],
["license_civ_salt","civ"],
["license_civ_cement","civ"],
["license_med_air","med"],
["license_civ_home","civ"],
["license_civ_uranium","civ"],
["license_civ_skull","civ"],
["license_civ_meth97","civ"],
["license_civ_grapes","civ"],
["license_civ_stiller","civ"],
["license_civ_liquor","civ"],
["license_civ_bottler","civ"],
["license_civ_depanneur","civ"],
["license_civ_taxi","civ"],
["license_cop_driver","cop"],
["license_civ_special","civ"],
["license_civ_merc","civ"],
["license_civ_merc_reb","civ"],
["license_civ_usine","civ"],
["license_civ_chauffeur","civ"],
["license_civ_lingot","civ"],
["license_civ_pute","civ"],
["license_civ_bountyh", "civ"],
["license_reb_gang1", "civ"],
["license_reb_gang2", "civ"],
["license_reb_gang3", "civ"],
["license_reb_gang4", "civ"],
["license_reb_gang5", "civ"],
["license_reb_gang6", "civ"],
["license_reb_gang7", "civ"],
["license_reb_gang8", "civ"],
["license_reb_gang9", "civ"],
["license_reb_gang10", "civ"],
["license_civ_medmarijuana","civ"],
["license_civ_mineralogiste","civ"]
];
{missionNamespace setVariable[(_x select 0),false];} foreach life_licenses;
life_illegal_items = [["heroinu",400],["heroinp",800],["cocaine",500],["cocainep",900],["marijuana",600],["turtle",900],["blastingcharge",1000],["boltcutter",50],["speedbomb",30000],["zipties",20],["cle",10],["lockpick",10],["ephedrine",200],["metylamine",200],["meth97",4000],["moonshine",500],["bottledshine",900],["mash",100],["kidney",6000],["uranium",5000],["uranium1",500],["uranium2",500],["uranium3",500],["uranium4",500],["puranium",100]];
sell_array =
[
// VENTE ILLEGALES
["heroinu",400],
["heroinp",800],
["cocaine",500],
["cocainep",900],
["marijuana",600],
["ephedrine",200],
["phosphore",0],
["metylamine",200],
["iode",0],
["meth97",4000],
["uranium",5000],
// VENTE RESSOURCES
["oilp",500],
["diamond",300],
["diamondc",600],
["iron_r",320],
["copper_r",150],
["salt_r",250],
["glass",200],
["cement",195],
["goldbar",9000],
["skull",150],
["skullp",500],
["mash",250],
["rye",200],
["hops",180],
["yeast",200],
["lingotor",800],
["goldbarp",7000],
// VENTE ITEM
["apple",5],
["rabbit",6],
["salema",5],
["ornate",5],
["mackerel",15],
["tuna",70],
["mullet",20],
["catshark",30],
["water",1],
["turtle",900],
["turtlesoup",400],
["donuts",2],
["coffee",1],
["tbacon",5],
["lockpick",10],
["pickaxe",75],
["redgull",50],
["fuelF",50],
["fuelE",5],
["peach",5],
["spikeStrip",80],
["blastingcharge",2000],
["boltcutter",400],
["defusekit",100],
["storagesmall",4000],
["storagebig",14000],
["bottledshine",900],
["bottledwhiskey",600],
["bottledbeer",500],
["moonshine",500],
["whiskey",300],
["beerp",200],
["cornmeal",40],
["mash",200],
["bottles",4],
["wine",200],
["grapes",7],
["redburger",2],
["sprite",1],
["pepsi",1],
["frite",1],
["battery",75],
["cafe",1],
["smoothies",1],
["kidney",7500],
["nitro",1800],
["zipties",40],
["speedbomb",40000],
["underwatercharge",3000],
["scalpel",300],
["mur",100],
["sac",100],
["cone",10],
["barre",100],
["lightr",10],
["lightg",10],
["lighty",10],
["flecheg",20],
["fleched",20],
["puranium",800],
["gpstracker",800],
["kit",100],
["poudre",1],
["tissu",10],
["electro",100],
["cigarette",1],
["cle",20],
["cb",300],
["doubloon",100],
["silverpiece",100],
["ruby",500],
["pearl",400],
["diamondf",4000],
["excavator",400],
["marijuanam",150],
["platinep",400],
["osmium",200],
["palladium",200],
["fouille",400],
["camisole",50],
["multipass",100]
];
__CONST__(sell_array,sell_array);

buy_array =
[
["apple",6],
["rabbit",7],
["salema",6],
["ornate",6],
["mackerel",20],
["tuna",80],
["mullet",30],
["catshark",40],
["water",1],
["turtle",1000],
["turtlesoup",500],
["donuts",3],
["coffee",1],
["tbacon",5],
["lockpick",20],
["pickaxe",100],
["redgull",75],
["fuelF",60],
["fuelE",10],
["peach",6],
["spikeStrip",100],
["blastingcharge",3000],
["boltcutter",500],
["defusekit",200],
["storagesmall",5000],
["storagebig",15000],
["bottledshine",1000],
["bottledwhiskey",700],
["bottledbeer",600],
["moonshine",900],
["whiskey",600],
["beerp",500],
["cornmeal",50],
["mash",250],
["bottles",10],
["wine",400],
["grapes",9],
["redburger",3],
["sprite",2],
["pepsi",2],
["frite",2],
["battery",100],
["cafe",1],
["smoothies",2],
["kidney",7500],
["nitro",2000],
["zipties",50],
["speedbomb",50000],
["underwatercharge",4000],
["scalpel",400],
["mur",200],
["sac",200],
["cone",10],
["barre",150],
["lightr",10],
["lightg",10],
["lighty",10],
["flecheg",20],
["fleched",20],
["puranium",1000],
["gpstracker",1000],
["kit",200],
["poudre",2],
["tissu",20],
["electro",200],
["cigarette",1],
["cle",30],
["cb",500],
["doubloon",170],
["silverpiece",150],
["ruby",550],
["pearl",500],
["diamondf",5000],
["excavator",500],
["marijuanam",160],
["platinep",460],
["osmium",240],
["palladium",260],
["fouille",500],
["camisole",50],
["multipass",200]
];
__CONST__(buy_array,buy_array);

life_weapon_shop_array =
[
["launch_NLAW_F",0],
["NLAW_F",0],
["srifle_GM6_F",0],
["5Rnd_127x108_Mag",0],
["srifle_LRR_F",0],
["7Rnd_408_Mag",0],
["srifle_EBR_F",0],
["20Rnd_762x51_Mag",0],
["LMG_Mk200_F",0],
["200Rnd_65x39_cased_Box",0],
["arifle_MX_GL_Black_F",0],
["1Rnd_SmokeBlue_Grenade_shell",0],
["30Rnd_65x39_caseless_mag",0],
["arifle_MXM_Black_F",0],
["30Rnd_65x39_caseless_mag",0],
["arifle_MX_SW_Black_F",0],
["100Rnd_65x39_caseless_mag",0],
["arifle_MXC_Black_F",0],
["30Rnd_65x39_caseless_mag",0],
["arifle_MX_Black_F",0],
["30Rnd_65x39_caseless_mag",0],
["SMG_01_F",0],
["30Rnd_45ACP_Mag_SMG_01",0],
["arifle_sdar_F",0],
["20Rnd_556x45_UW_mag",0],
["hgun_P07_snds_F",0],
["16Rnd_9x21_Mag",0],
["muzzle_snds_acp",0],
["muzzle_snds_L",0],
["muzzle_snds_H",0],
["muzzle_snds_H_MG",0],
["muzzle_snds_B",0],
["acc_flashlight",0],
["acc_pointer_IR",0],
["optic_Holosight_smg",0],
["optic_Aco",0],
["optic_Arco",0],
["optic_Hamr",0],
["optic_MRCO",0],
["optic_DMS",0],
["optic_SOS",0],
["optic_LRPS",0],
["optic_NVS",0],
["SmokeShellBlue",0],
["HandGrenade_Stone",0],
["SatchelCharge_Remote_Mag",0],
["Chemlight_red",0],
["Chemlight_yellow",0],
["Chemlight_green",0],
["Chemlight_blue",0],
["ItemRadio",0],
["ItemCompass",0],
["ItemGPS",0],
["ItemMap",0],
["MineDetector",0],
["Rangefinder",0],
["Binocular",0],
["Toolkit",0],
["Medikit",0],
["FirstAidKit",0],
["NVGoggles_OPFOR",0]
];
__CONST__(life_weapon_shop_array,life_weapon_shop_array);

life_taxi_stands =
[
["taxi_spawn_kavala","Kavala",civilian],
["taxi_spawn_athira","Athira",civilian],
["taxi_spawn_rodo","Rodopoli",civilian],
["taxi_spawn_pyrgos","Pyrgos",civilian],
["taxi_spawn_sofia","Sofia",civilian],
["taxi_spawn_casino","Casino",civilian],
["taxi_spawn_camp","Camp d'entrainement",civilian],
["taxi_spawn_camp","Camp d'entrainement",west],
["taxi_spawn_kavalap","Gendarmerie Kavala",west],
["taxi_spawn_athirap","Gendarmerie Athira",west],
["taxi_spawn_pyrgosp","Gendarmerie Pyrgos",west],
["taxi_spawn_frontp","Poste Frontière",west],
["taxi_spawn_gardecote","Garde Cotes",west]

];

life_garage_prices =
[
["C_Kart_01_Blu_F",50],
["C_Kart_01_Fuel_F",50],
["C_Kart_01_Red_F",50],
["C_Kart_01_Vrana_F",50],
["B_Quadbike_01_F",50],
["C_Hatchback_01_F",50],
["C_Offroad_01_F",50],
["O_G_Offroad_01_F",50],
["C_SUV_01_F",50],
["C_Hatchback_01_sport_F",50],

//CAMION
["C_Van_01_transport_F",200],
["C_Van_01_box_F",200],
["B_Truck_01_transport_F",0],// POLICE
["I_Truck_02_transport_F",500],
["I_Truck_02_covered_F",500],
["B_Truck_01_covered_F",500],
["B_Truck_01_box_F",500],
["O_Truck_03_covered_F",1000],
["O_Truck_03_ammo_F",1000],
["O_Truck_03_device_F",1000],
["B_G_Offroad_01_repair_F",0],// DEPANNEUR
["B_Truck_01_mover_F",0],// DEPANNEUR
["B_Truck_01_fuel_F",0],// USINE
["O_Truck_02_fuel_F",0],// USINE
["O_Truck_03_fuel_F",0],// USINE

//HELI
["B_Heli_Light_01_F",500],
["O_Heli_Light_02_unarmed_F",500],
["O_Heli_Transport_04_medevac_F",0],//MEDIC
["C_Heli_Light_01_civil_F",500],
["O_Heli_Light_02_unarmed_F",1000],
["I_Heli_Transport_02_F",1000],
["I_Heli_light_03_unarmed_F",1000],
["I_Heli_Transport_02_F",1000],
["O_Heli_Transport_04_bench_F",1000],
["O_Heli_Transport_04_covered_F",1000],
["B_Heli_Transport_01_F",1000],//GANG
["B_Heli_Transport_03_unarmed_F",0],//POLICE
["O_Heli_Attack_02_black_F",0],//POLICE + GANG
["I_Heli_light_03_F",0],//POLICE
["O_Heli_Transport_04_repair_F",0],//DEPANNEUR

//BATEAU
["C_Rubberboat",200],
["C_Boat_Civil_01_F",200],
["C_Boat_Civil_01_rescue_F",200],
["B_SDV_01_F",500],
["B_Boat_Armed_01_minigun_F",1000],
["B_Boat_Transport_01_F",0],//POLICE
["C_Boat_Civil_01_police_F",0],//POLICE
["O_Boat_Transport_01_F",0],//POLICE
["O_SDV_01_F",0],//POLICE
["O_Boat_Armed_01_hmg_F",0],//POLICE

//ARMEE
["O_G_Offroad_01_armed_F",2000],//REB
["B_MRAP_01_F",2000],//BOUNTY + POLICE + USINE
["O_MRAP_02_F",2000],//REB
["I_MRAP_03_F",2000],//GANG + MERC + POLICE
["B_MRAP_01_hmg_F",0],//POLICE
["B_APC_Wheeled_01_cannon_F",0]//POLICE

];
__CONST__(life_garage_prices,life_garage_prices);

life_garage_sell =
[
["C_Kart_01_Blu_F",500],
["C_Kart_01_Fuel_F",500],
["C_Kart_01_Red_F",500],
["C_Kart_01_Vrana_F",500],
["B_Quadbike_01_F",100],
["C_Hatchback_01_F",500],
["C_Offroad_01_F",800],
["O_G_Offroad_01_F",800],
["C_SUV_01_F",1500],
["C_Hatchback_01_sport_F",4000],

//CAMION
["C_Van_01_transport_F",3000],
["C_Van_01_box_F",5000],
["B_Truck_01_transport_F",5000],// POLICE
["I_Truck_02_transport_F",8000],
["I_Truck_02_covered_F",10000],
["B_Truck_01_covered_F",30000],
["B_Truck_01_box_F",40000],
["O_Truck_03_covered_F",8000],
["O_Truck_03_ammo_F",150000],
["O_Truck_03_device_F",200000],
["B_G_Offroad_01_repair_F",3000],// DEPANNEUR
["B_Truck_01_mover_F",30000],// DEPANNEUR
["B_Truck_01_fuel_F",10000],// USINE
["O_Truck_02_fuel_F",20000],// USINE
["O_Truck_03_fuel_F",40000],// USINE

//HELI
["B_Heli_Light_01_F",20000],
["O_Heli_Light_02_unarmed_F",40000],
["O_Heli_Transport_04_medevac_F",15000],//MEDIC
["C_Heli_Light_01_civil_F",80000],
["O_Heli_Light_02_unarmed_F",100000],
["I_Heli_Transport_02_F",250000],
["I_Heli_light_03_unarmed_F",40000],
["I_Heli_Transport_02_F",80000],
["O_Heli_Transport_04_bench_F",80000],
["O_Heli_Transport_04_covered_F",150000],
["B_Heli_Transport_01_F",10000],//GANG
["B_Heli_Transport_03_unarmed_F",40000],//POLICE
["O_Heli_Attack_02_black_F",100000],//POLICE + GANG
["I_Heli_light_03_F",100000],//POLICE
["O_Heli_Transport_04_repair_F",90000],//DEPANNEUR

//BATEAU
["C_Rubberboat",1000],
["C_Boat_Civil_01_F",5000],
["C_Boat_Civil_01_rescue_F",35000],
["B_SDV_01_F",5000],
["B_Boat_Armed_01_minigun_F",150000],
["B_Boat_Transport_01_F",500],//POLICE
["O_Boat_Transport_01_F",5000],//POLICE
["C_Boat_Civil_01_police_F",4000],//POLICE
["O_SDV_01_F",5000],//POLICE
["O_Boat_Armed_01_hmg_F",20000],//POLICE

//ARMEE
["O_G_Offroad_01_armed_F",40000],//REB
["B_MRAP_01_F",10000],//BOUNTY + POLICE + USINE
["O_MRAP_02_F",30000],//REB
["I_MRAP_03_F",20000],//GANG + MERC + POLICE
["B_MRAP_01_hmg_F",60000],//POLICE
["B_APC_Wheeled_01_cannon_F",90000]//POLICE
];
__CONST__(life_garage_sell,life_garage_sell);

life_assur_prices =
[
["C_Kart_01_Blu_F",500],
["C_Kart_01_Fuel_F",500],
["C_Kart_01_Red_F",500],
["C_Kart_01_Vrana_F",500],
["B_Quadbike_01_F",1000],
["C_Hatchback_01_F",1000],
["C_Offroad_01_F",1000],
["O_G_Offroad_01_F",1000],
["C_SUV_01_F",5000],
["C_Hatchback_01_sport_F",5000],

//CAMION
["C_Van_01_transport_F",10000],
["C_Van_01_box_F",10000],
["B_Truck_01_transport_F",20000],// POLICE
["I_Truck_02_transport_F",20000],
["I_Truck_02_covered_F",30000],
["B_Truck_01_covered_F",30000],
["B_Truck_01_box_F",30000],
["O_Truck_03_covered_F",50000],
["O_Truck_03_ammo_F",50000],
["O_Truck_03_device_F",50000],
["B_G_Offroad_01_repair_F",5000],// DEPANNEUR
["B_Truck_01_mover_F",5000],// DEPANNEUR
["B_Truck_01_fuel_F",5000],// USINE
["O_Truck_02_fuel_F",5000],// USINE
["O_Truck_03_fuel_F",5000],// USINE

//HELI
["B_Heli_Light_01_F",30000],
["O_Heli_Light_02_unarmed_F",30000],
["O_Heli_Transport_04_medevac_F",5000],//MEDIC
["C_Heli_Light_01_civil_F",50000],
["O_Heli_Light_02_unarmed_F",50000],
["I_Heli_Transport_02_F",50000],
["I_Heli_light_03_unarmed_F",50000],
["I_Heli_Transport_02_F",50000],
["O_Heli_Transport_04_bench_F",50000],
["O_Heli_Transport_04_covered_F",50000],
["B_Heli_Transport_01_F",50000],//GANG
["B_Heli_Transport_03_unarmed_F",5000],//POLICE
["O_Heli_Attack_02_black_F",20000],//POLICE + GANG
["I_Heli_light_03_F",5000],//POLICE
["O_Heli_Transport_04_repair_F",5000],//DEPANNEUR

//BATEAU
["C_Rubberboat",2000],
["C_Boat_Civil_01_F",5000],
["C_Boat_Civil_01_rescue_F",10000],
["B_SDV_01_F",10000],
["B_Boat_Armed_01_minigun_F",50000],
["B_Boat_Transport_01_F",5000],//POLICE
["O_Boat_Transport_01_F",5000],//POLICE
["C_Boat_Civil_01_police_F",5000],//POLICE
["O_SDV_01_F",5000],//POLICE
["O_Boat_Armed_01_hmg_F",5000]//POLICE
];
__CONST__(life_assur_prices,life_assur_prices);