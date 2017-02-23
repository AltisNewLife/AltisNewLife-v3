private["_vehicle"];
_vehicle = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _vehicle) exitWith {};
if(isNil {_vehicle getVariable "reverse"}) exitWith {};
while {true} do
{
	if(!(_vehicle getVariable "reverse")) exitWith {};
	if(count (crew (_vehicle)) == 0) then {_vehicle setVariable["reverse",false,true]};
	if(!alive _vehicle) exitWith {};
	if(isNull _vehicle) exitWith {};
	_vehicle say3D "reverse_truck";
	sleep 2.56;
	if(isNull driver _vehicle) then { _vehicle setVariable["reverse",false,true]};
	if(!(_vehicle getVariable "reverse")) exitWith {
		life_truckreverse_active = false;
	};
};