if((time - life_action_delay) < 1.5) exitWith {
	hint "Vous ne pouvez pas utiliser rapidement la touche action !";
	if(!isNil {(_this select 0) getVariable "inUse"}) then {
		_this select 0 setVariable["inUse",false,true];
	};
};
private["_obj","_val"];
_obj = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_val = (_obj getVariable "item") select 1;
if(isNil {_val}) exitWith {};
if(isNull _obj || player distance _obj > 3) exitWith {if(!isNull _obj) then {_obj setVariable["inUse",false,true];};};
if((_obj getVariable["PickedUp",false])) exitWith {deleteVehicle _obj;};
_obj setVariable["PickedUp",TRUE,TRUE];
if(!isNil {_val}) then
{
	deleteVehicle _obj;
	switch (true) do
	{
		case (_val > 2000000) : {_val = 10000;}; //VAL>20mil->100k
		case (_val > 500000) : {_val = 25000;}; //VAL>5mil->250k
		default {};
	};
	
	player playmove "AinvPknlMstpSlayWrflDnon";
	titleText[format["Vous avez pris %1€",[_val] call life_fnc_numberText],"PLAIN"];
	argent_liquide = argent_liquide + _val;
	life_action_delay = time;
};