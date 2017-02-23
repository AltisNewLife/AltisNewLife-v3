#include <macro.h>
if(life_inv_cigarette < 30) exitWith {hint "Vous devez travailler pour votre liberté, rouler 30 cigarettes !"};

if(life_inv_cigarette >= 30) then 
{
	[false,"cigarette",30] call life_fnc_handleInv;
	player setPos (getMarkerPos "slave_trader_center");
	slave_task1 setTaskState "Vous avez gagné votre liberté !";
	player removeSimpleTask slave_task1;
	hint "Vous avez gagné votre liberté !";
};
life_enslaved = false;
player setVariable["enslaved",true,true];
sleep (10 * 60);
player setVariable["enslaved",false,true];
hint "Attention ! Vous pouvez a nouveau vous faire asservir en esclavage !";