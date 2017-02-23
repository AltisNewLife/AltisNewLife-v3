#include <macro.h>
private["_house","_uid","_action","_houseCfg"];
_house = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_uid = getPlayerUID player;
if(isNull _house) exitWith {};
if(!(_house isKindOf "House_F")) exitWith {};
if((_house getVariable["house_owned",false])) exitWith {hint "Cette maison a déjà un propriétaire..."};
if(!isNil {(_house getVariable "house_sold")}) exitWith {hint "Cette maison a été recemment vendu, merci de revenir dans quelques jours"};
if(!license_civ_home) exitWith {hint "Vous n'avez pas licence necessaire"};
if(count life_houses >= (__GETC__(life_houseLimit))) exitWith {hint format["Vous ne pouvez acheter que %1 maisons en ce moment.",__GETC__(life_houseLimit)]};
closeDialog 0;
_houseCfg = [(typeOf _house)] call life_fnc_houseConfig;
if(count _houseCfg == 0) exitWith {};
if(compte_banque < (_houseCfg select 0)) exitWith {hint "Vous n'avez pas assez d'argent !"};
_action = [
	format["Ce bien immobilier est disponible pour <t color='#8cff9b'>%1€</t><br/>Il peut contenir %2 contenaires",
	[(_houseCfg select 0)] call life_fnc_numberText,
	(_houseCfg select 1)],"Acheter la maison","Acheter","Annuler"
] call BIS_fnc_guiMessage;
if(_action) then {
	[[_uid,_house],"TON_fnc_addHouse",false,false] spawn life_fnc_MP;
	_house setVariable["house_owner",[_uid,profileName],true];
	_house setVariable["locked",true,true];
	_house setVariable["Trunk",[[],0],true];
	_house setVariable["containers",[],true];
	_house setVariable["uid",round(random 99999),true];
	compte_banque = compte_banque - (_houseCfg select 0);
	life_vehicles pushBack _house;
	life_houses pushBack [str(getPosATL _house),[]];
	_marker = createMarkerLocal [format["house_%1",(_house getVariable "uid")],getPosATL _house];
	_houseName = getText(configFile >> "CfgVehicles" >> (typeOf _house) >> "displayName");
	_marker setMarkerTextLocal _houseName;
	_marker setMarkerColorLocal "ColorBlue";
	_marker setMarkerTypeLocal "loc_Lighthouse";
	_numOfDoors = getNumber(configFile >> "CfgVehicles" >> (typeOf _house) >> "numberOfDoors");
	for "_i" from 1 to _numOfDoors do {
		_house setVariable[format["bis_disabled_Door_%1",_i],1,true];
	};
};