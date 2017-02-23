/*
	File: fn_removeItem.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Removes the selected item & amount to remove from the players
	virtual inventory.
*/
private["_data","_value","_obj","_pos","_ind"];
disableSerialization;
_data = lbData[2005,(lbCurSel 2005)];
_value = ctrlText 2010;
if(_data == "") exitWith {hint "Vous n'avez rien sélectionné à enlever.";};
if(!([_value] call fnc_isnumber)) exitWith {hint "Vous n'avez pas saisi un nombre correct."};
if(parseNumber(_value) <= 0) exitWith {hint "Vous devez entrer le nombre que vous souhaitez supprimer.."};
_ind = [_data,life_illegal_items] call fnc_index;
if(_ind != -1 && ([west,getPos player,100] call life_fnc_nearUnits)) exitWith {titleText["C'est un élément illégal et les flics sont à proximité, vous ne pouvez pas séparer de la preuve","PLAIN"]};
if(player != vehicle player) exitWith {titleText["Vous ne pouvez pas supprimer un objet dans une voiture.","PLAIN"]};
if(!([false,_data,(parseNumber _value)] call life_fnc_handleInv)) exitWith {hint "Vous ne pouvez pas retirer tous ces objets, vous n'en avez peut etre pas assez ?"};
_type = [_data,0] call life_fnc_varHandle;
_type = [_type] call life_fnc_varToStr;
hint format["Vous avez jeté %1 %2 de votre inventaire.",(parseNumber _value), _type];
	
[] call life_fnc_p_updateMenu;