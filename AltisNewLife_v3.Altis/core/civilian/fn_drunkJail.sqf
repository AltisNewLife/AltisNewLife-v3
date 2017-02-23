private["_bad","_unit"];
_unit = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _unit) exitWith {}; //Dafuq?
if(_unit != player) exitWith {}; //Dafuq?
if(life_is_arrested) exitWith {}; //Dafuq i'm already arrested
_bad = [_this,1,false,[false]] call BIS_fnc_param;
player setVariable["restrained",false,true];
player setVariable["Escorting",false,true];
player setVariable["transporting",false,true];
titleText["Quelle nuit de débauche ! Comment j'ai fait pour atterir ici ?","PLAIN"];
player setPos (getMarkerPos "jail_marker");
if(_bad) then
{
	waitUntil {alive player};
	sleep 1;
};
if(player distance (getMarkerPos "jail_marker") > 400) then
{
	player setPos (getMarkerPos "jail_marker");
};
if(life_inv_heroinu > 0) then {[false,"life_inv_heroinu",life_inv_heroinu] call life_fnc_handleInv;};
if(life_inv_heroinp > 0) then {[false,"life_inv_heroinp",life_inv_heroinp] call life_fnc_handleInv;};
if(life_inv_cocaineu > 0) then {[false,"life_inv_cocaineu",life_inv_coke] call life_fnc_handleInv;};
if(life_inv_cocainep > 0) then {[false,"life_inv_cocainep",life_inv_cokep] call life_fnc_handleInv;};
if(life_inv_turtle > 0) then {[false,"life_inv_turtle",life_inv_turtle] call life_fnc_handleInv;};
if(life_inv_cannabis > 0) then {[false,"life_inv_cannabis",life_inv_cannabis] call life_fnc_handleInv;};
if(life_inv_marijuana > 0) then {[false,"life_inv_marijuana",life_inv_marijuana] call life_fnc_handleInv;};
if(life_inv_ziptie > 0) then {[false,"life_inv_ziptie",life_inv_ziptie] call life_fnc_handleInv;};
if(life_inv_kidney > 0) then {[false,"life_inv_kidney",life_inv_kidney] call life_fnc_handleInv;};
life_is_arrested = true;
life_jailed = true;
life_bac = 0.00;
removeAllWeapons player;
if(vest player == "V_HarnessOGL_brn") then {removeVest player;};
{player removeMagazine _x} foreach (magazines player);
[[player,_bad],"life_fnc_jailSys",false,false] spawn life_fnc_MP;
[true] call life_fnc_sessionHandle;