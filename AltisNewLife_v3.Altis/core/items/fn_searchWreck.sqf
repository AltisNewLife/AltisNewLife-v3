private["_sum","_items","_random","_delay"];
_items = [];
for "_i" from 1 to 30 do { _items set[count _items, "lockpick"]; };
for "_i" from 1 to 25 do { _items set[count _items, "zipties"]; };
for "_i" from 1 to 10 do { _items set[count _items, "scalpel"]; };
for "_i" from 1 to 7 do { _items set[count _items, "oilp"]; };
for "_i" from 1 to 6 do { _items set[count _items, "silverpiece"]; };
for "_i" from 1 to 4 do { _items set[count _items, "cocainep"]; };
for "_i" from 1 to 3 do { _items set[count _items, "doubloon"]; };
for "_i" from 1 to 2 do { _items set[count _items, "pearl"]; };
for "_i" from 1 to 2 do { _items set[count _items, "ruby"]; };
_items set[count _items, "diamondf"];

if (playerSide == west) exitWith {hint "Les policiers ne peuvent pas fouiller les epaves."};
if (player distance (nearestObject[player,"Land_UWreck_FishingBoat_F"]) > 50) exitWith {titleText["Vous devez être plus proche d'une épave de navire pour utiliser l'excavateur.","PLAIN"]};
if ((getPosASL player) select 2 > -10) exitWith {titleText["L'excavateur nécessite plus de pression d'eau (vous n'êtes pas assez profond).","PLAIN"]};
titleText["Recherche d'objets precieux...","PLAIN"];
if (life_action_in_use) exitWith {};
life_action_in_use = true;

_delay = 4;

_success = false;
while{life_carryWeight < life_maxWeight} do 
{
	if (speed player > 1) exitWith {};
	if (player distance (nearestObject[player,"Land_UWreck_FishingBoat_F"]) > 50) exitWith {titleText["Vous devez être plus proche d'une épave de navire pour utiliser l'excavateur.","PLAIN"]};
	if ((getPosASL player) select 2 > -10) exitWith {titleText["L'excavateur nécessite plus de pression d'eau, vous n'êtes pas assez profond.","PLAIN"]};
	if (life_carryWeight >= life_maxWeight) exitWith {_success=true;};
	_random = _items select round (random ((count _items)-1));
	_sum =[_random,1,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
	if (_sum > 0) then
	{
		if (([true,_random,1] call life_fnc_handleInv)) then
		{
			sleep _delay;
			titleText["Vous avez trouvé des objets precieux.","PLAIN"];
			titleFadeOut 1;
		};
	};
};
life_action_in_use = false;

if (_success) then { titleText["L'excavateur d'épave est plein, verifier votre inventaire","PLAIN"]; }
else { titleText["Annulé il y a trop de mouvement !","PLAIN"]; };


