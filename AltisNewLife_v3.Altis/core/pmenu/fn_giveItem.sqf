private["_unit","_val"];
_val = ctrlText 2010;
ctrlShow[2002,false];
if((lbCurSel 2023) == -1) exitWith {hint "Rien n'a été selectionné !";ctrlShow[2002,true];};
_unit = lbData [2023,lbCurSel 2023];
_unit = call compile format["%1",_unit];
if((lbCurSel 2005) == -1) exitWith {hint "Vous n'avez pas sélectionné l'objet que vous voulez donner.";ctrlShow[2002,true];};
_item = lbData [2005,(lbCurSel 2005)];
if(isNil "_unit") exitWith {ctrlShow[2002,true];};
if(_unit == player) exitWith {ctrlShow[2002,true];};
if(isNull _unit) exitWith {ctrlShow[2002,true];};
if(!([_val] call TON_fnc_isnumber)) exitWith {hint "Vous n'avez pas saisi un format de nombre correct.";ctrlShow[2002,true];};
if(parseNumber(_val) <= 0) exitWith {hint "Vous devez entrer un montant valide que vous voulez donner.";ctrlShow[2002,true];};
if(isNil "_unit") exitWith {ctrlShow[2001,true]; hint "L'individu sélectionné est hors de portée";};
if(!([false,_item,(parseNumber _val)] call life_fnc_handleInv)) exitWith {hint "Impossible d'en donner plus, peut etre vous n'en avez plus assez ?";ctrlShow[2002,true];};
[[_unit,_val,_item,player],"life_fnc_receiveItem",_unit,false] spawn life_fnc_MP;
_type = [_item,0] call life_fnc_varHandle;
_type = [_type] call life_fnc_varToStr;
hint format["Vous avez donné %1 %2 %3",_unit,_val,_type];
[] call life_fnc_p_updateMenu;
ctrlShow[2002,true];