#include <macro.h>
private["_group"];
life_action_gangInUse = nil;
if(compte_banque < (__GETC__(life_gangPrice))) exitWith {
	hint format["Vous n'avez pas assez d'argent sur votre compte.\n\nIl vous manque : %1€",[((__GETC__(life_gangPrice))-compte_banque)] call life_fnc_numberText];
	{(group player) setVariable[_x,nil,true];} foreach ["gang_id","gang_owner","gang_name","gang_members","gang_maxmembers","gang_bank"];
};
__SUB__(compte_banque,(__GETC__(life_gangPrice)));
hint format["Vous avez crée le gang %1 pour %2€",(group player) getVariable "gang_name",[(__GETC__(life_gangPrice))] call life_fnc_numberText];