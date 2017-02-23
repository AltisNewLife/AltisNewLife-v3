private["_type"];
_type = _this select 3;
_price = [_type] call life_fnc_licensePrice;
_license = [_type,0] call life_fnc_licenseType;
if(argent_liquide < _price) exitWith {hint format[localize "STR_NOTF_NE_1",[_price] call life_fnc_numberText,_license select 1];};
argent_liquide = argent_liquide - _price;
titleText[format[localize "STR_NOTF_B_1", _license select 1,[_price] call life_fnc_numberText],"PLAIN"];
missionNamespace setVariable[(_license select 0),true];