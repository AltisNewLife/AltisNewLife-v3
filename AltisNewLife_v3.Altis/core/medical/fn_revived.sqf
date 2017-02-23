private["_medic","_dir"];
_medic = [_this,0,"Unknown Medic",[""]] call BIS_fnc_param;
_oldGear = [life_corpse] call life_fnc_fetchDeadGear;
[_oldGear] spawn life_fnc_loadDeadGear;
[[life_corpse],"life_fnc_corpse",nil,FALSE] spawn life_fnc_MP;
_dir = getDir life_corpse;
hint format["%1 vous a fait revivre et prend %2€ de votre compte bancaire pour le service.",_medic,[(call life_revive_fee)] call life_fnc_numberText];
closeDialog 0;
life_deathCamera cameraEffect ["TERMINATE","BACK"];
camDestroy life_deathCamera;
if(compte_banque > (call life_revive_fee)) then {
	compte_banque = compte_banque - (call life_revive_fee);
} else {
	compte_banque = 0;
};
player setDir _dir;
player setPosASL (visiblePositionASL life_corpse);
life_corpse setVariable["Revive",nil,TRUE];
life_corpse setVariable["name",nil,TRUE];
[[life_corpse],"life_fnc_corpse",true,false] spawn life_fnc_MP;
hideBody life_corpse;
player setVariable["Revive",nil,TRUE];
player setVariable["name",nil,TRUE];
player setVariable["Reviving",nil,TRUE];
if (playerSide == civilian) then
{
life_is_alive = true;
};
[] call life_fnc_hudUpdate;