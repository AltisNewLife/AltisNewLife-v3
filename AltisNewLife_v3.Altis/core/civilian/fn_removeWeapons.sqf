private["_cop"];
_cop = [_this,0,Objnull,[objNull]] call BIS_fnc_param;
if(_cop == player) then {};
if(isNull _cop OR !(player getVariable["restrained",FALSE])) exitWith {};
removeAllWeapons player;
{player removeMagazine _x} foreach (magazines player);
titleText["Vos armes on ete saisies.","PLAIN"];
[[0,format["%Les armes de %1 ont ete saisies par %2 !", name player, name _cop]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;