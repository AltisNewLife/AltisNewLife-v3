private["_nearby"];
_nearby = nearestObjects[(vehicle player),["Car","Ship","Air"],10];
if(count (_nearby) > 1) then
{
	_vehicle = _nearby select 1;
	_name = getText(configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "displayName");
	titleText[format["Service en cours %1 ne pas bouger...",_name],"PLAIN"];
	titleFadeOut 12;
	sleep 10;
	if((vehicle player) distance _vehicle > 10) exitWith {titleText["Echec vous devez rester a moins de 10 metres","PLAIN"];};
	titleText[format["Vous avez fait le plein/reparer %1",_name],"PLAIN"];
	if(!local _vehicle) then
	{
		[{_vehicle setFuel 1;},"BIS_fnc_spawn",_vehicle,false] spawn life_fnc_MP;
	}
		else
	{
		_vehicle setFuel 1;
	};
	_vehicle setDamage 0;
};