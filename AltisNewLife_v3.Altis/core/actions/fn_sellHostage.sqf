#include <macro.h>
private["_unit","_rate"];
_rate = 15000;
_unit = cursorTarget;
if(isNull _unit) exitWith {hint "null Target"};
if(!(_unit getVariable ["restrained",false])) exitWith {hint "La victime n'est pas menotté"};
if((_unit getVariable ["enslaved",false])) exitWith { hint "Votre victime a récemment été asservis, vous devez attendre un peu avant de l'asservir à nouveau"};
if((player getVariable ["slaver",false])) exitWith { hint "Vous avez déjà asservi quelqu'un, vous devez attendre un peu !"};
if(playerSide == west) exitWith {hint "Les flics ne peuvent pas vendre d'esclave"};
if(side _unit == independent) exitWith {hint "Les medecins ne peuvent pas etre vendu comme esclave"};
if(player == _unit) exitWith {hint "Vous ne pouvez pas vous vendre vous meme !"};
if(!isPlayer _unit) exitWith {hint "Ce n'est pas un humain"};
if(life_slaver) exitWith {hint "Vous avez déjà asservi quelqu'un, vous devez attendre un peu !"}; 
if((player distance (getMarkerPos "slave_trader_center") > 10)) exitWith {hint "Vous n'etes pas assez prêt du marchand"};
if((player distance (getMarkerPos "slave_trader_center") < 10)) then
{
	[[getPlayerUID player,player getVariable["realname",name player],"920"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
	detach _unit;
	[[_unit,false],"life_fnc_sellHostageAction",_unit,false] spawn life_fnc_MP;
};
argent_liquide = argent_liquide + _rate;
hint "Vous avez vendu un esclave pour 15000€";
life_slaver = true;
player setVariable["slaver",true,true];
sleep (10 * 60);
life_slaver = false;
player setVariable["slaver",false,true];
hint "Vous pouvez asservir le monde a nouveau...";