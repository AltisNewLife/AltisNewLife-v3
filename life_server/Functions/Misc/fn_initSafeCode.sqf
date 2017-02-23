fnc_compileFinal = {   
    private ["_var","_ns","_code","_arr"];
    _var = [_this,0,"",[""]] call BIS_fnc_param;
    _ns = [_this,1,missionNamespace,[missionNamespace]] call BIS_fnc_param;
    _code = _ns getVariable [_var, 0];
    if (typeName _code != typeName {}) exitWith {false};
    _arr = toArray str _code;
    _arr set [0,32];
    _arr set [count _arr - 1,32];
    _code = compileFinal toString _arr;
    _ns setVariable [_var, _code];
    true
};
fnc_setupconfig = {
    life_xoaHlanleGoEbiaf = ["licensePrice","virt_shops","itemIcon","itemWeight","licenseType","vehicleListCfg","vehicleColorCfg","vehicleColorStr","vehicleWeightCfg","weaponShopCfg","eatFood","impoundPrice","taxRate","vehShopLicenses","vehicleAnimate","houseConfig","adacDefault","craftCfg","clothing_cop","clothing_bruce","clothing_reb","clothing_dive","clothing_kart","clothing_admin","clothing_med","clothing_merc","clothing_merc_reb","clothing_bhc","clothing_usine","clothing_dep"];
    if(!isServer) then {
        diag_log "::Life Client:: Loading AltisNewLife";
        cutText["Chargement en cours... merci de patienter","BLACK FADED"];
        {
            waitUntil {!(isNil format["life_fnc_%1",_x]);};
        } forEach life_xoaHlanleGoEbiaf;
    } else {
        {
            [format["life_fnc_%1",_x]] call fnc_compileFinal;
            publicVariable format["life_fnc_%1",_x];
        } forEach life_xoaHlanleGoEbiaf;
    };
};
["fnc_setupconfig"] call fnc_compileFinal;
publicVariable "fnc_setupconfig";
[] spawn fnc_setupconfig;