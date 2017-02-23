#include <macro.h>
private["_end"];
player addRating 9999999;
waitUntil {!(isNull (findDisplay 46))};
_end = false;
if((str(player) in ["adac_1","adac_2","adac_3","adac_4","adac_5"])) then {
	if((__GETC__(life_adaclevel) == 0) && (__GETC__(bitch_level) == 0)) then {
		["NotWhitelisted",false,true] call BIS_fnc_endMission;
		sleep 35;
	};
};
[] call life_fnc_spawnMenu;
waitUntil{!isNull (findDisplay 38500)};
waitUntil{isNull (findDisplay 38500)};
player setVariable["adaclevel", __GETC__(life_medicLevel), true];
player setVariable["adminlevel", __GETC__(bitch_level), true];