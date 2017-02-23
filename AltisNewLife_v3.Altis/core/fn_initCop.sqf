#include <macro.h>
private["_end"];
player addRating 9999999;
waitUntil {!(isNull (findDisplay 46))};
_end = false;
if(life_blacklisted) exitWith
{
	["Blacklisted",false,true] call BIS_fnc_endMission;
	sleep 30;
};
if((str(player) in ["cop_1"])) then {
	if (__GETC__(life_coplevel) < 10) then {
		["NotWhitelisted",false,true] call BIS_fnc_endMission;
		sleep 35;
	};
};
if((str(player) in ["cop_2","cop_3"])) then {
	if (__GETC__(life_coplevel) < 7) then {
		["NotWhitelisted",false,true] call BIS_fnc_endMission;
		sleep 35;
	};
};
if(!(str(player) in ["cop_99"])) then {
	if((__GETC__(life_coplevel) == 0) && (__GETC__(bitch_level) == 0)) then {
		["NotWhitelisted",false,true] call BIS_fnc_endMission;
		sleep 35;
	};
};
player setVariable["rank",(__GETC__(life_coplevel)),true];
[] call life_fnc_spawnMenu;
waitUntil{!isNull (findDisplay 38500)};
waitUntil{isNull (findDisplay 38500)}; 
player setVariable["coplevel", __GETC__(life_coplevel), true];
player setVariable["medlevel", __GETC__(life_medicLevel), true];
player setVariable["adminlevel", __GETC__(bitch_level), true];
player setVariable["reblevel", __GETC__(life_reblevel), true];
{_x setMarkerAlphaLocal 0} forEach ["weed_1","cocaine_1","heroin_1","ephedrineSpot","metylamineSpot","carReseller_1","Meth","Uranium1","Uranium2","Uranium3","Uranium4","Uranium5","T_a","Dealer_1","Dealer_2","organ","slave_trader_center"];