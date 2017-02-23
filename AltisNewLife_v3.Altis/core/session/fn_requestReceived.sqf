#include <macro.h>
life_session_tries = life_session_tries + 1;
if(life_session_completed) exitWith {};
if(life_session_tries > 3) exitWith {cutText["Il y a eu une erreur en essayant de configurer votre client.","BLACK FADED"]; 0 cutFadeOut 999999999;};
0 cutText ["Demande reçue du serveur... Validation...","BLACK FADED"];
0 cutFadeOut 9999999;

if(isNil "_this") exitWith {[] call SOCK_fnc_insertPlayerInfo;};
if(typeName _this == "STRING") exitWith {[] call SOCK_fnc_insertPlayerInfo;};
if(count _this == 0) exitWith {[] call SOCK_fnc_insertPlayerInfo;};
if((_this select 0) == "Error") exitWith {[] call SOCK_fnc_insertPlayerInfo;};
if((getPlayerUID player) != _this select 0) exitWith {[] call SOCK_fnc_dataQuery;};

//Lets make sure some vars are not set before hand.. If they are get rid of them, hopefully the engine purges past variables but meh who cares.
if(!isServer && (!isNil "bitch_level" OR !isNil "life_coplevel" OR !isNil "life_donator")) exitWith {
	[[profileName,getPlayerUID player,"VariablesAlreadySet"],"SPY_fnc_cookieJar",false,false] spawn life_fnc_MP;
	[[profileName,format["Variables set before client initialization...\nbitch_level: %1\nlife_coplevel: %2\nlife_donator: %3",bitch_level,life_coplevel,life_donator]],"SPY_fnc_notifyAdmins",true,false] spawn life_fnc_MP;
	sleep 0.9;
	["SpyGlass",false,false] execVM "\a3\functions_f\Misc\fn_endMission.sqf";
};
//Parse basic player information.
argent_liquide = parseNumber (_this select 2);
compte_banque = parseNumber (_this select 3);
__CONST__(bitch_level,parseNumber(_this select 4));
//__CONST__(life_donator,0);
__CONST__(life_donator,parseNumber(_this select 5));
//Loop through licenses
if(count (_this select 6) > 0) then {
	{missionNamespace setVariable [(_x select 0),(_x select 1)];} foreach (_this select 6);
};
life_gear = _this select 8;
[] call life_fnc_loadGear;
switch (__GETC__(life_donator)) do
{
	case 1: {life_paycheck = life_paycheck + 100;};
	case 2: {life_paycheck = life_paycheck + 200;};
	case 3: {life_paycheck = life_paycheck + 300;};
	case 4: {life_paycheck = life_paycheck + 400;};
	case 5: {life_paycheck = life_paycheck + 500;};	
	case 6: {life_paycheck = life_paycheck + 600;};		
};
switch(playerSide) do {
	case west: {
		__CONST__(life_coplevel,parseNumber(_this select 7));
		//cop_gear = _this select 8;
		//[] spawn life_fnc_loadGear;
		life_blacklisted = _this select 9;
		__CONST__(life_medicLevel,0);
		__CONST__(life_adacLevel,0);
		__CONST__(life_reblevel,0);		
	};
	
	case civilian: {
		life_is_arrested = _this select 7;
		//civ_gear = _this select 8;
		__CONST__(life_reblevel,parseNumber(_this select 9));			
		civ_position = _this select 10;
        life_is_alive = _this select 11;
		__CONST__(life_coplevel,0);
		__CONST__(life_medicLevel,0);
		__CONST__(life_adacLevel,0);
		//[] spawn life_fnc_civLoadGear;
		life_houses = _this select 12;
		{
			_house = nearestBuilding (call compile format["%1", _x select 0]);
			life_vehicles pushBack _house;
		} foreach life_houses;
		
		life_gangData = _This select 13;
		if(count life_gangData != 0) then {
			[] spawn life_fnc_initGang;
		};
		[] spawn life_fnc_initHouses;
	};
	
	case independent: {
		__CONST__(life_medicLevel, parseNumber(_this select 7));
		//med_gear = _this select 8;
		//[] spawn life_fnc_medicloadGear;
		__CONST__(life_copLevel,0);
		__CONST__(life_adacLevel,0);
		__CONST__(life_reblevel,0);		
	};
	
	case east: {
		__CONST__(life_adacLevel,parseNumber(_this select 7));
		adac_gear = _this select 8;
		[] spawn life_fnc_adacloadGear;
		__CONST__(life_copLevel,0);
		__CONST__(life_medicLevel,0);
		__CONST__(life_reblevel,0);		
	};
};

if(count (_this select 15) > 0) then {
	{life_vehicles pushBack _x;} foreach (_this select 15);
};

switch (__GETC__(life_coplevel)) do
{
	case 1: {life_paycheck = life_paycheck + 0;};
	case 2: {life_paycheck = life_paycheck + 50;};
	case 3: {life_paycheck = life_paycheck + 100;};
	case 4: {life_paycheck = life_paycheck + 150;};
	case 5: {life_paycheck = life_paycheck + 200;};
	case 6: {life_paycheck = life_paycheck + 300;};
	case 7: {life_paycheck = life_paycheck + 400;};
	case 8: {life_paycheck = life_paycheck + 500;};
	case 9: {life_paycheck = life_paycheck + 600;};
	case 10: {life_paycheck = life_paycheck + 650;};
	case 11: {life_paycheck = life_paycheck + 700;};
	case 12: {life_paycheck = life_paycheck + 800;};	
};

life_session_completed = true;