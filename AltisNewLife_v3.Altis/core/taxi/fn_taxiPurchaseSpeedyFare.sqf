private["_index","_loc","_price","_sp","_kill","_time","_failed"];
_kill = false;
_index = lbCurSel 48402;
_loc = lbData[48402,_index];
_sp = getMarkerPos _loc;
_price = lbValue[48402,(lbCurSel 48402)];
_time = _price / 1000 * 2;
_price = _price * 1.5;
if(_price < 0) exitWith {};
_failed = false;
if(argent_liquide >= _price) then
{
	argent_liquide = argent_liquide - _price;
} else {
	if(compte_banque < (_price + 100)) then
	{
		_failed = true;
	} else {
		hint "Un supplément 100€ a été retiré de votre compte bancaire !";
		compte_banque = compte_banque - _price - 100;
	};
};
if(_failed) exitWith {hint "Vous n'avez pas assez d'argent !";};
closeDialog 0;
cutText["En route vers votre destination...","BLACK FADED"];
0 cutFadeOut 9999999;
player setPos getMarkerPos "respawn_civilian";
sleep (_time + 1);
player setPos _sp;
cutText ["Vous etes arrivé à destination.","BLACK IN"];
[true] call life_fnc_sessionHandle;