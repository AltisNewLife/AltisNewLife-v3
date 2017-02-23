#include <macro.h>
private["_end"];
player addRating 99999999;
waitUntil {!(isNull (findDisplay 46))};
if((__GETC__(life_medicLevel)) < 1) exitWith {
	["Notwhitelisted",FALSE,TRUE] call BIS_fnc_endMission;
	sleep 35;
};
[] call life_fnc_spawnMenu;
waitUntil{!isNull (findDisplay 38500)};
waitUntil{isNull (findDisplay 38500)};