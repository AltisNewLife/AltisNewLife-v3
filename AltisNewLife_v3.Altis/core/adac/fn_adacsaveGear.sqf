private["_ret","_uItems","_bItems","_vItems","_pItems","_hItems","_yItems","_uMags","_vMags","_bMags","_pMag","_hMag","_uni","_ves","_bag","_handled"];
_ret = [];
_ret set[count _ret,uniform player];
_ret set[count _ret,vest player];
_ret set[count _ret,backpack player];
_ret set[count _ret,goggles player];
_ret set[count _ret,headgear player];
_ret set[count _ret,assignedItems player];
_ret set[count _ret,primaryWeapon player];
_ret set[count _ret,handGunWeapon player];
_uItems = [];
_uMags = [];
_bItems = [];
_bMags = [];
_vItems = [];
_vMags = [];
_pItems = [];
_hItems = [];
_yItems = [];
if(uniform player != "") then
{
{
if (_x in (magazines player)) then {
_uMags = _uMags + [_x];
} else {
_uItems = _uItems + [_x];
};
} forEach (uniformItems player);
};

if(backpack player != "") then
{
{
if (_x in (magazines player)) then {
_bMags = _bMags + [_x];
} else {
_bItems = _bItems + [_x];
};
} forEach (backpackItems player);
};

if(vest player != "") then
{
{
if (_x in (magazines player)) then {
_vMags = _vMags + [_x];
} else {
_vItems = _vItems + [_x];
};
} forEach (vestItems player);
};

if (count (primaryWeaponMagazine player) > 0 ) then
{
_pMag = ((primaryWeaponMagazine player) select 0);
if (_pMag != "") then
{
_uni = player canAddItemToUniform _pMag;
_ves = player canAddItemToVest _pMag;
_bag = player canAddItemToBackpack _pMag;
_handled = false;
if (_ves) then
{
_vMags = _vMags + [_pMag];
_handled = true;
};
if (_uni AND !_handled) then
{
_uMags = _uMags + [_pMag];
_handled = true;
};
if (_bag AND !_handled) then
{
_bMags = _bMags + [_pMag];
_handled = true;
};
};
};

if (count (handgunMagazine player) > 0 ) then
{
_hMag = ((handgunMagazine player) select 0);
if (_hMag != "") then
{
_uni = player canAddItemToUniform _hMag;
_ves = player canAddItemToVest _hMag;
_bag = player canAddItemToBackpack _hMag;
_handled = false;
if (_ves) then
{
_vMags = _vMags + [_hMag];
_handled = true;
};
if (_uni AND !_handled) then
{
_uMags = _uMags + [_hMag];
_handled = true;
};
if (_bag AND !_handled) then
{
_bMags = _bMags + [_hMag];
_handled = true;
};
};
};

if(count (primaryWeaponItems player) > 0) then
{
{
_pItems = _pItems + [_x];
} forEach (primaryWeaponItems player);
};

if(count (handGunItems player) > 0) then
{
{
_hItems = _hItems + [_x];
} forEach (handGunItems player);
};

{
_name = (_x select 0);
_val = (_x select 1);
if (_val > 0) then {
for "_i" from 1 to _val do {
_yItems = _yItems + [_name];
};
};
} forEach [
    ["life_inv_oilp", life_inv_oilp],
    ["life_inv_apple", life_inv_apple],
    ["life_inv_rabbit", life_inv_rabbit],
    ["life_inv_salema", life_inv_salema],
    ["life_inv_ornate", life_inv_ornate],
    ["life_inv_mackerel", life_inv_mackerel],
    ["life_inv_tuna", life_inv_tuna],
    ["life_inv_mullet", life_inv_mullet],
    ["life_inv_catshark", life_inv_catshark],
    ["life_inv_fishingpoles", life_inv_fishingpoles],
    ["life_inv_water", life_inv_water],
    ["life_inv_donuts", life_inv_donuts],
    ["life_inv_turtlesoup", life_inv_turtlesoup],
    ["life_inv_coffee", life_inv_coffee],
    ["life_inv_fuelF", life_inv_fuelF],
    ["life_inv_fuelE", life_inv_fuelE],
    ["life_inv_pickaxe", life_inv_pickaxe],
    ["life_inv_ironr", life_inv_ironr],
    ["life_inv_copperr", life_inv_copperr],
    ["life_inv_sand", life_inv_sand],
    ["life_inv_saltr", life_inv_saltr],
    ["life_inv_glass", life_inv_glass],
    ["life_inv_tbacon", life_inv_tbacon],
    ["life_inv_lockpick", life_inv_lockpick],
    ["life_inv_redgull", life_inv_redgull],
    ["life_inv_peach", life_inv_peach],
    ["life_inv_diamond", life_inv_diamond],
    ["life_inv_cokep", life_inv_cokep],
    ["life_inv_diamondr", life_inv_diamondr],
    ["life_inv_spikeStrip", life_inv_spikeStrip],
    ["life_inv_rock", life_inv_rock],
    ["life_inv_cement", life_inv_cement],
    ["life_inv_defusekit", life_inv_defusekit],
    ["life_inv_storagesmall", life_inv_storagesmall],
    ["life_inv_storagebig", life_inv_storagebig],
	["life_inv_skullp", life_inv_skullp],
	["life_inv_bottles", life_inv_bottles],
	["life_inv_wine", life_inv_wine],
	["life_inv_grapes", life_inv_grapes],
	["life_inv_redburger", life_inv_redburger],
	["life_inv_sprite", life_inv_sprite],
	["life_inv_pepsi", life_inv_pepsi],
	["life_inv_frite", life_inv_frite],
	["life_inv_battery", life_inv_battery],
	["life_inv_zipties", life_inv_zipties],
	["life_inv_nitro", life_inv_nitro],
	["life_inv_cafe", life_inv_cafe],
	["life_inv_smoothies", life_inv_smoothies],
	["life_inv_lingotor", life_inv_lingotor],
	["life_inv_mauer", life_inv_mauer],
    ["life_inv_sac", life_inv_sac],	
    ["life_inv_scalpel", life_inv_scalpel],	
	["life_inv_gpstracker", life_inv_gpstracker],
	["life_inv_kit", life_inv_kit],
	["life_inv_poudre", life_inv_poudre],
	["life_inv_speedbomb", life_inv_speedbomb],	
	["life_inv_heroinp", life_inv_heroinp],
	["life_inv_marijuana", life_inv_marijuana],
	["life_inv_puranium", life_inv_puranium], 
	["life_inv_uranium", life_inv_uranium],
	["life_inv_goldbar", life_inv_goldbar],
	["life_inv_meth97", life_inv_meth97],
	["life_inv_mash", life_inv_mash],
	["life_inv_cornmeal", life_inv_cornmeal],
	["life_inv_bottledwhiskey", life_inv_bottledwhiskey],
	["life_inv_bottledbeer", life_inv_bottledbeer],
	["life_inv_bottledshine", life_inv_bottledshine],
	["life_inv_goldbar", life_inv_goldbar],
	["life_inv_blastingcharge", life_inv_blastingcharge],
	["life_inv_boltcutter", life_inv_boltcutter],
	["life_inv_underwatercharge", life_inv_underwatercharge],	
	["life_inv_kidney", life_inv_kidney],
	["life_inv_tissu", life_inv_tissu],
	["life_inv_electro", life_inv_electro],
	["life_inv_cigarette", life_inv_cigarette],
	["life_inv_cle", life_inv_cle]
];
_ret set[count _ret,_uItems];
_ret set[count _ret,_uMags];
_ret set[count _ret,_bItems];
_ret set[count _ret,_bMags];
_ret set[count _ret,_vItems];
_ret set[count _ret,_vMags];
_ret set[count _ret,_pItems];
_ret set[count _ret,_hItems];
_ret set[count _ret,_yItems];
adac_gear = _ret;