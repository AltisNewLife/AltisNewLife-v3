_unit = cursorTarget;
if (isNull _unit) then { _unit = _this select 0; };
if ((vehicle player) != player) exitWith { hint "Vous ne pouvez pas depuis votre vehicule." };
if ((player distance _unit) > 10) exitWith { hint "vous êtes trop loin !" };
private["_shop"];
_shop = _this select 3;
if(isNil {_shop}) exitWith {};
life_shop_type = _shop;
life_shop_npc = _this select 0;
if(_shop == "cop" && playerSide != west && playerSide != east) exitWith {hint "Vous n'etes pas flic."};
if(_shop == "hospital" && playerSide != independent && playerSide != east) exitWith {hint "Vous n'etes pas medecin."};
createDialog "shops_menu";
[] call life_fnc_virt_update;