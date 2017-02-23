private["_vehicle","_veh_data"];
if(dialog) exitWith {};
_vehicle = [_this,0,Objnull,[Objnull]] call BIS_fnc_param;
if(isNull _vehicle OR !(_vehicle isKindOf "Car" OR _vehicle isKindOf "Air" OR _vehicle isKindOf "Ship" OR _vehicle isKindOf "House_F")) exitWith {};
if((_vehicle getVariable ["trunk_in_use",false])) exitWith {hint "Le coffre de ce véhicule est en cours d'utilisation, une seule personne à la fois."};
_vehicle setVariable["trunk_in_use",true,true];
if(!createDialog "TrunkMenu") exitWith {"Failed Creating Dialog";};
disableSerialization;
if(_vehicle isKindOf "House_F") then {
	ctrlSetText[3501,format["Stockage - %1",getText(configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "displayName")]];
} else {
	ctrlSetText[3501,format["Stockage vehicule - %1",getText(configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "displayName")]];
};
if(_vehicle isKindOf "House_F") then {
	private["_mWeight"];
	_mWeight = 0;
	{_mWeight = _mWeight + ([(typeOf _x)] call life_fnc_vehicleWeightCfg);} foreach (_vehicle getVariable["containers",[]]);
	_veh_data = [_mWeight,(_vehicle getVariable["Trunk",[[],0]]) select 1];
} else {
	_veh_data = [_vehicle] call life_fnc_vehicleWeight;
};
if(_vehicle isKindOf "House_F" && {count (_vehicle getVariable ["containers",[]]) == 0}) exitWith {hint "Vous devez installer des conteneurs afin de disposer des capacités de stockage !"; closeDialog 0; _vehicle setVariable["trunk_in_use",false,true];};
if(_veh_data select 0 == -1 && {!(_vehicle isKindOf "House_F")}) exitWith {closeDialog 0; _vehicle setVariable["trunk_in_use",false,true]; hint "Ce véhicule n'est pas capable de stocker des objets virtuels.";};
ctrlSetText[3504,format["Poids : %1/%2",_veh_data select 1,_veh_data select 0]];
[_vehicle] call life_fnc_vehInventory;
life_trunk_vehicle = _vehicle;
_vehicle spawn
{
	waitUntil {isNull (findDisplay 3500)};
	_this setVariable["trunk_in_use",false,true];
	if(_this isKindOf "House_F") then {
		[[_this],"TON_fnc_updateHouseTrunk",false,false] spawn life_fnc_MP;
	};
};