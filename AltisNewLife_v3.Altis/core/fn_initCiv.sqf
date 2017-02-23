#include <macro.h>
private["_spawnPos","_playerPosition"];
civ_spawn_1 = nearestObjects[getMarkerPos  "civ_spawn_1", ["Land_i_Shop_01_V1_F","Land_i_Shop_02_V1_F","Land_i_Shop_03_V1_F","Land_i_Stone_HouseBig_V1_F"],250];
civ_spawn_2 = nearestObjects[getMarkerPos  "civ_spawn_2", ["Land_i_Shop_01_V1_F","Land_i_Shop_02_V1_F","Land_i_Shop_03_V1_F","Land_i_Stone_HouseBig_V1_F"],250];
civ_spawn_3 = nearestObjects[getMarkerPos  "civ_spawn_3", ["Land_i_Shop_01_V1_F","Land_i_Shop_02_V1_F","Land_i_Shop_03_V1_F","Land_i_Stone_HouseBig_V1_F"],250];
civ_spawn_4 = nearestObjects[getMarkerPos  "civ_spawn_4", ["Land_i_Shop_01_V1_F","Land_i_Shop_02_V1_F","Land_i_Shop_03_V1_F","Land_i_Stone_HouseBig_V1_F"],250];
waitUntil {!(isNull (findDisplay 46))};
_playerPosition = civ_position;

if((str(player) in ["civ_81","civ_82","civ_83","civ_84","civ_85","civ_86","civ_87","civ_88","civ_89","civ_90"])) then {
	if(__GETC__(life_donator) == 0) then {
		["NotWhitelisted",false,true] call BIS_fnc_endMission;
		sleep 35;
	};
};

if (!life_is_alive) then
{
	//[0] call life_fnc_setPain;
	//[false] call life_fnc_brokenLeg;
	[] call life_fnc_spawnMenu;
	waitUntil{!isNull (findDisplay 38500)};
	waitUntil{isNull (findDisplay 38500)}; 
	life_is_alive = true;
	[] execVM "msgbienvenue.sqf";
}	
else
{
	if(life_is_arrested) then
				{
				life_is_arrested = false;
				[player,true] spawn life_fnc_jail;
				} 
					else 
						{
						hint format["Vous etes toujours en vie. Vous etes a votre dernière position connue."];
						player setPos _playerPosition;
						};	
	life_is_alive = true;
}; 

player addRating 9999999;