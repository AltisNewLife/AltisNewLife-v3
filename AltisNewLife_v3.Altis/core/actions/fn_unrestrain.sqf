private["_unit"];
_unit = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _unit OR !(_unit getVariable["restrained",FALSE])) exitWith {};
if((player distance _unit > 2)) exitWith {titleText["Vous devez etre a moins de 2 metres","PLAIN"]};
if(life_inv_zipties > 0) then
{
    life_inv_zipties = life_inv_zipties + 1;
} else {
    [true,"zipties",1] call life_fnc_handleInv;
};
if(life_inv_cle < 1) exitWith { hint "Vous n'avez pas de clef pour demenotter !"};
//if(life_inv_lockpick < 1) exitWith { hint "Vous n'avez pas de clé pour demenotter !"; };
//life_inv_lockpick = life_inv_lockpick - 1;
player say3D "cuff";
hint "Vous avez liberé un civil";
_unit setVariable["restrained",FALSE,TRUE];
_unit setVariable["Escorting",FALSE,TRUE];
_unit setVariable["transporting",FALSE,TRUE];
detach _unit;
[[0,format["%1 a été liberé par %2",_unit getVariable["realname",name _unit], profileName]],"life_fnc_broadcast",west,FALSE] call life_fnc_MP;