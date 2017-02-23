private["_container","_unit"];
if(count _this == 1) exitWith {false};
_unit = _this select 0;
_container = _this select 1;

_isPack = getNumber(configFile >> "CfgVehicles" >> (typeOf _container) >> "isBackpack");
//if(_isPack == 1) then {
if(_isPack == 1 && playerSide != west) then {
	hint "Vous ne pouvez pas regarder à l'interieur de ce sac";
	[] spawn {
		waitUntil {!isNull (findDisplay 602)};
		closeDialog 0;
	};
};

if((typeOf _container) in ["Box_IND_Grenades_F","B_supplyCrate_F"]) exitWith {
	_house = nearestBuilding (getPosATL player);
	if(!(_house in life_vehicles) && {(_house getVariable ["locked",false])}) then {
		hint "Vous n'etes pas autorisé a acceder à ce stockage, tant que le proprietaire ne l'ouvre pas !";
		[] spawn {
			waitUntil {!isNull (findDisplay 602)};
			closeDialog 0;
		};
	};
};

if(_container isKindOf "Car" || _container isKindOf "Ship" || _container isKindOf "Air") exitWith {
	if(!(_container in life_vehicles) && {(locked _container) == 2}) exitWith {
	hint "Vous n'etes pas autorisé a acceder à ce stockage, tant que le proprietaire ne l'ouvre pas !";
	[] spawn {
	waitUntil {!isNull (findDisplay 602)};
	closeDialog 0;
	};
};
};

if((playerSide == west) && (uniform player == "U_Rangemaster") || (uniform player == "U_B_CombatUniform_mcam") || (uniform player == "U_B_CTRG_1") || (uniform player == "U_B_CTRG_3") || (uniform player == "U_B_CombatUniform_mcam_vest")) then {
[] call life_fnc_copUniSet;
};

if((playerSide == independent) && (uniform player == "U_C_WorkerCoveralls")) then {
[] call life_fnc_copUniSet;
};

if((playerSide == civilian) && (uniform player == "U_I_CombatUniform") || (uniform player == "U_C_WorkerCoveralls") || (uniform player == "U_C_Scientist") || (uniform player == "U_B_CombatUniform_mcam_vest") || (uniform player == "U_B_CombatUniform_mcam") || (uniform player == "U_MillerBody") || (uniform player == "U_C_Poor_2")) then {
[] call life_fnc_copUniSet;
};

if((playerSide == east) && (uniform player == "U_C_WorkerCoveralls") || (uniform player == "U_B_Wetsuit") || (uniform player == "U_Rangemaster")) then {
[] call life_fnc_copUniSet;
};


//Allow alive players who've been knocked out to be looted, just not the dead ones
//if(_container isKindOf "Man" && !alive _container) exitWith {
//	hint "Vous n'êtes pas autorisé à piller les cadavres";
//	[] spawn {
//		waitUntil {!isNull (findDisplay 602)};
//		closeDialog 0;
//	};
//};