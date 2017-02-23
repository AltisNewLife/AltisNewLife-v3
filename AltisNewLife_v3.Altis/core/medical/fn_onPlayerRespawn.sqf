#include <macro.h>
private["_unit","_corpse"];
_unit = _this select 0;
_corpse = _this select 1;
life_corpse = _corpse;
//Comment this code out if you want them to keep the weapon on the ground.
private["_containers"];
_containers = nearestObjects[getPosATL _corpse,["WeaponHolderSimulated"],5];
{deleteVehicle _x;} foreach _containers;
_unit setVariable["restrained",FALSE,TRUE];
_unit setVariable["Escorting",FALSE,TRUE];
_unit setVariable["transporting",FALSE,TRUE];
_unit setVariable["steam64id",(getPlayerUID player),true];
_unit setVariable["realname",profileName,true];
_unit setVariable["missingOrgan",FALSE,TRUE];
_unit setVariable["hasOrgan",FALSE,TRUE]; 
_unit setVariable["pet_owner",FALSE,TRUE]; 
_unit setVariable["enslaved",FALSE,TRUE];
 _unit setVariable["fou",FALSE,TRUE];
_unit addRating 9999999999999999;
player playMoveNow "amovppnemstpsraswrfldnon";
[] call life_fnc_setupActions;
[[_unit,life_sidechat,playerSide],"TON_fnc_managesc",false,false] spawn life_fnc_MP;
player enableFatigue (__GETC__(life_enableFatigue));
if(playerSide == east) then {
[] spawn life_fnc_adacDefault;
};