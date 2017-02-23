private["_container"];
_container = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _container) exitWith {}; //MEH

if((typeOf _container) in ["Box_IND_Grenades_F","B_supplyCrate_F"]) exitWith {
	_house = lineIntersectsWith [getPosASL player, ATLtoASL screenToWorld[0.5,0.5]];
	
	switch(true) do {
		case (count _house == 0): {_exit = true;};
		case (count _house == 1): {_house = _house select 0;};
		default {
			{if(_x isKindOf "House_F") exitWith {_house = _x;};} foreach _house;
		};
	};
	if(!isNil "_exit" OR !(_house isKindOf "House_F")) exitWith {systemChat "Erreur en sauvegardant, ne trouve pas de maison a cote !"};
	[[_house],"TON_fnc_updateHouseContainers",false,false] spawn life_fnc_MP;
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
