private["_house"];
_house = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _house OR !(_house isKindOf "House_F")) exitWith {};
_state = _house getVariable["locked",true];
if(_state) then {
	_house setVariable["locked",false,true];
	titleText["Stockage de la maison deverrouillé","PLAIN"];
} else {
	_house setVariable["locked",true,true];
	titleText["Stockage de la maison verrouillé","PLAIN"];
};