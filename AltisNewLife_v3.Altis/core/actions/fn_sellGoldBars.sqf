#include <macro.h>
private["_index","_price","_val"];
if(life_inv_goldbar == 0) exitWith {
	titleText["Vous n'avez pas d'or à vendre.","PLAIN"];
};
_index = ["goldbar",__GETC__(sell_array)] call fnc_index;
_price = (__GETC__(sell_array) select _index) select 1;
_val = life_inv_goldbar;
_price = _price * _val;
if([false,"goldbar",life_inv_goldbar] call life_fnc_handleInv) then {
	titleText[format["Vous avez vendu %1 barre d'or pour %2€",_val,[_price] call life_fnc_numberText],"PLAIN"];
	argent_liquide = argent_liquide + _price;
};