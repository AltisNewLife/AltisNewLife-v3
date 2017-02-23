private["_return","_uItems","_bItems","_vItems","_pItems","_hItems","_yItems","_uMags","_vMags","_bMags","_pMag","_hMag","_uni","_ves","_bag","_handled"];
_return = [];
_return pushBack uniform player;
_return pushBack vest player;
_return pushBack backpack player;
_return pushBack goggles player;
_return pushBack headgear player;
_return pushBack assignedITems player;
if(playerSide == west || playerSide == civilian && {(call life_save_civ)}) then {
    _return pushBack primaryWeapon player;
    _return pushBack handgunWeapon player;
} else {
    _return pushBack [];
    _return pushBack [];
};
_uItems = [];
_uMags  = [];
_bItems = [];
_bMags  = [];
_vItems = [];
_vMags  = [];
_pItems = [];
_hItems = [];
_yItems = [];
_uni = [];
_ves = [];
_bag = [];
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

if(count (primaryWeaponMagazine player) > 0 && alive player) then
{
    _pMag = ((primaryWeaponMagazine player) select 0);
    if(_pMag != "") then
    {
        _uni = player canAddItemToUniform _pMag;
        _ves = player canAddItemToVest _pMag;
        _bag = player canAddItemToBackpack _pMag;
        _handled = false;
        if(_ves) then
        {
            _vMags = _vMags + [_pMag];
            _handled = true;
        };
        if(_uni && !_handled) then
        {
            _uMags = _uMags + [_pMag];
            _handled = true;
        };
        if(_bag && !_handled) then
        {
            _bMags = _bMags + [_pMag];
            _handled = true;
        };
    };
};

if(count (handgunMagazine player) > 0 && alive player) then
{
    _hMag = ((handgunMagazine player) select 0);
    if(_hMag != "") then
    {
        _uni = player canAddItemToUniform _hMag;
        _ves = player canAddItemToVest _hMag;
        _bag = player canAddItemToBackpack _hMag;
        _handled = false;
        if(_ves) then
        {
            _vMags = _vMags + [_hMag];
            _handled = true;
        };
        if(_uni && !_handled) then
        {
            _uMags = _uMags + [_hMag];
            _handled = true;
        };
        if(_bag && !_handled) then
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
	["life_inv_mur", life_inv_mur],
    ["life_inv_sac", life_inv_sac],	
	["life_inv_cone", life_inv_cone],
    ["life_inv_barre", life_inv_barre],
    ["life_inv_lightr", life_inv_lightr],	
	["life_inv_lightg", life_inv_lightg],
    ["life_inv_lighty", life_inv_lighty],	
	["life_inv_flecheg", life_inv_flecheg],
    ["life_inv_fleched", life_inv_fleched],		
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
	["life_inv_cle", life_inv_cle],
	["life_inv_cb", life_inv_cb],
	["life_inv_marijuanam", life_inv_marijuanam],
	["life_inv_excavator", life_inv_excavator],
	["life_inv_doubloon", life_inv_doubloon],	
	["life_inv_silverpiece", life_inv_silverpiece],
	["life_inv_ruby", life_inv_ruby],
	["life_inv_diamondf", life_inv_diamondf],	
	["life_inv_pearl", life_inv_pearl],
	["life_inv_platinep", life_inv_platinep],
	["life_inv_osmium", life_inv_osmium],
	["life_inv_palladium", life_inv_palladium],
	["life_inv_camisole", life_inv_camisole],
	["life_inv_multipass", life_inv_multipass]
];

_return pushBack _uItems;
_return pushBack _uMags;
_return pushBack _bItems;
_return pushBack _bMags;
_return pushBack _vItems;
_return pushBack _vMags;
_return pushBack _pItems;
_return pushBack _hItems;
if(call life_save_yinv) then {
    _return pushBack _yItems;
} else {
    _return pushBack [];
};
life_gear = _return;