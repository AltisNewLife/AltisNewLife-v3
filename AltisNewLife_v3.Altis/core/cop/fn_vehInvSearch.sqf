#include <macro.h>
private["_vehicle","_vehicleInfo","_value"];
_vehicle = cursorTarget;
if(isNull _vehicle) exitWith {};
if(!((_vehicle isKindOf "Air") OR (_vehicle isKindOf "Ship") OR (_vehicle isKindOf "LandVehicle"))) exitWith {};

_vehicleInfo = _vehicle getVariable ["Trunk",[]];
if(count _vehicleInfo == 0) exitWith {hint "Ce vehicule est vide"};

_value = 0;
{
	_var = _x select 0;
	_val = _x select 1;
	
	_index = [_var,life_illegal_items] call TON_fnc_index;
	if(_index != -1) then
	{
		_vIndex = [_var,__GETC__(sell_array)] call TON_fnc_index;
		if(_vIndex != -1) then
		{
			_value = _value + (_val * ((__GETC__(sell_array) select _vIndex) select 1));
		};
	};
} foreach (_vehicleInfo select 0);

if(_value > 0) then
{
	[[0,format["Ce vehicule été recherché et contenait pour %1€ en drogue et marchandises de contrebande.",[_value] call life_fnc_numberText]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
	compte_banque = compte_banque + _value;
	_vehicle setVariable["Trunk",[],true];
}
	else
{
	hint "Rien d'illégal dans ce vehicule";
};