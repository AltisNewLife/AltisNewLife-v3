private["_target"];
_target = cursorTarget;
if(isNull _target) exitWith {};
if(!isPlayer _target) exitWith {};
if(_target getVariable["raped",false]) exitWith {};
titleText[format["Tentative de viol %1...",name _target],"PLAIN"];
[[_target,player,name player],"life_fnc_rapeme",_target,false] spawn life_fnc_MP;
_target setVariable["raped",TRUE,TRUE];