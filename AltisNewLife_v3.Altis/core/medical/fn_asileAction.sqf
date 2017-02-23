#include <macro.h>
private["_unit","_noesckey"];
_unit = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
hint format["%1", _unit];
if(isNull _unit) exitWith {};
if(life_fou) exitWith {hint "Il a deja été un esclave, attendez un peu avant de l'enchainer a nouveau !"};
_noesckey = (findDisplay 46) displayAddEventHandler ["KeyDown", "if ((_this select 1) == 1) then { true }"];
player setPos (getMarkerPos "asile_marker");
removeVest player;
removeAllWeapons player;
removeHeadgear player;
removeBackpack player;
player forceAddUniform "U_MillerBody";
player setVariable["restrained",false,true];
player setVariable["escorting",false,true];
player setVariable["transporting",false,true];
player setVariable["fou",true,true];
life_enslaved = true;
titleText["Vous avez été placé dans un asile psychiatrique !","PLAIN"];
hint "Vous avez été placé dans un asile psychiatrique";
[[0,format["%1 a été diagnostiqué comme fou et placé en asile psychiatrique !",name player]],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
sleep 15;
[] spawn 
{
	while {life_fou && alive player} do 
	{
		if(player distance (getMarkerPos "asile_marker") > 20) then
		{	
			player setPos (getMarkerPos "asile_marker");
		};
	};
};
waitUntil {!life_fou};
(findDisplay 46) displayRemoveEventHandler ["KeyDown", _noesckey];
sleep 600;
player setPos (getMarkerPos "asile_marker_out");
hint "Vous semblez aller mieux, vous pouvez reprendre une vie normale !";
life_fou = false;
player setVariable["fou",false,true];