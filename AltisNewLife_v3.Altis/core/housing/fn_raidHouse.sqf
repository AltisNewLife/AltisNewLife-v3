#include <macro.h>
private["_house","_uid","_cpRate","_cP","_title","_titleText","_ui","_houseInv","_houseInvData","_houseInvVal"];
_house = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _house OR !(_house isKindOf "House_F")) exitWith {};
if(isNil {(_house getVariable "house_owner")}) exitWith {hint "Cette maison n'appartient a personne !"};
_uid = (_house getVariable "house_owner") select 0;
if(!([_uid] call life_fnc_isUIDActive)) exitWith {hint "Cette personne n'est pas en ligne, vous ne pouvez pas piller sa maison !"};
_houseInv = _house getVariable ["Trunk",[[],0]];
if(_houseInv isEqualTo [[],0]) exitWith {hint "Il n'y a rien dans la maison."};
life_action_inUse = true;
disableSerialization;
_title = "Recherche en cours....";
5 cutRsc ["life_progress","PLAIN"];
_ui = uiNamespace getVariable "life_progress";
_progressBar = _ui displayCtrl 38201;
_titleText = _ui displayCtrl 38202;
_titleText ctrlSetText format["%2 (1%1)...","%",_title];
_progressBar progressSetPosition 0.01;
_cP = 0.01;
_cpRate = 0.0075;
while {true} do
{
	sleep 0.26;
	if(isNull _ui) then {
		5 cutRsc ["life_progress","PLAIN"];
		_ui = uiNamespace getVariable "life_progress";
	};
	_cP = _cP + _cpRate;
	_progressBar progressSetPosition _cP;
	_titleText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_title];
	if(_cP >= 1 OR !alive player) exitWith {};
	if(player distance _house > 13) exitWith {};
};
5 cutText ["","PLAIN"];
if(player distance _house > 13) exitWith {life_action_inUse = false; titleText["Vous etes parti trop loin de la maison !","PLAIN"]};
if(!alive player) exitWith {life_action_inUse = false;};
life_action_inUse = false;
_houseInvData = _houseInv select 0;
_houseInvVal = _houseInv select 1;
_value = 0;
{
	_var = _x select 0;
	_val = _x select 1;
	_index = [_var,life_illegal_items] call TON_fnc_index;
	if(_index != -1) then {
		_vIndex = [_var,__GETC__(sell_array)] call TON_fnc_index;
		if(_vIndex != -1) then {
			_houseInvData set[_forEachIndex,-1];
			_houseInvData = _houseInvData - [-1];
			_houseInvVal = _houseInvVal - (([_var] call life_fnc_itemWeight) * _val);
			_value = _value + (_val * ((__GETC__(sell_array) select _vIndex) select 1));
		};
	};
} foreach (_houseInv select 0);
if(_value > 0) then {
	[[0,format["Une maison a été perquisitionné et contenait %1€ de drogues et objets de contre-bande.",[_value] call life_fnc_numberText]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
	compte_banque = compte_banque + _value;
	_house setVariable["Trunk",[_houseInvData,_houseInvVal],true];
	[[_house],"TON_fnc_updateHouseTrunk",false,false] spawn life_fnc_MP;
} else {
	hint "Rien d'illégal dans cette maison.";
};