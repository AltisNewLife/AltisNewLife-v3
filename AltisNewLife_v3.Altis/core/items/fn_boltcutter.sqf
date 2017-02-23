private["_building","_door","_doors","_cpRate","_title","_progressBar","_titleText","_cp","_ui"];
_building = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _building) exitWith {};
if(!(_building isKindOf "House_F")) exitWith {hint "Vous ne cherchez pas sur une porte de maison"};
if(isNil "life_boltcutter_uses") then {life_boltcutter_uses = 0;};
//if((nearestObject [[16774.0,13620.0,0],"Land_Dome_Big_F"]) == _building OR (nearestObject [[16774.0,13620.0,0],"Land_Research_house_V1_F"]) == _building) then {
//	[[[1,2],"!!!!! Quelqu'un essaie de voler la banque fédérale !!!"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
//};
if((nearestObject [[3172.168,12918.9,0],"Land_i_Barracks_V2_F"]) == _building) then {
	[[[1,2],"!!! Quelqu'un essaie d'entrer dans la salle informatique !!!"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
} else {
	[[0,"Quelqu'un a été vu rentrant dans une maison par effraction."],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
};

_doors = getNumber(configFile >> "CfgVehicles" >> (typeOf _building) >> "NumberOfDoors");
_door = 0;
//Find the nearest door
for "_i" from 1 to _doors do {
	_selPos = _building selectionPosition format["Door_%1_trigger",_i];
	_worldSpace = _building modelToWorld _selPos;
		if(player distance _worldSpace < 5) exitWith {_door = _i;};
};
if(_door == 0) exitWith {hint "Vous n'etes pas a coté de la porte"}; //Not near a door to be broken into.
if((_building getVariable[format["bis_disabled_Door_%1",_door],0]) == 0) exitWith {hint "Cette porte est deja déverouillé"};
life_action_inUse = true;

//Setup the progress bar
disableSerialization;
_title = "Crochetage de la porte";
5 cutRsc ["life_progress","PLAIN"];
_ui = uiNamespace getVariable "life_progress";
_progressBar = _ui displayCtrl 38201;
_titleText = _ui displayCtrl 38202;
_titleText ctrlSetText format["%2 (1%1)...","%",_title];
_progressBar progressSetPosition 0.01;
_cP = 0.01;

switch (typeOf _building) do {
	case "Land_Dome_Small_F": {_cpRate = 0.008;};
	case "Land_Research_house_V1_F": {_cpRate = 0.008;};
	//case "Land_i_Barracks_V2_F": {_cpRate = 0.008;};	
	default {_cpRate = 0.008;}
};

while {true} do
{
	if(animationState player != "AinvPknlMstpSnonWnonDnon_medic_1") then {
		[[player,"AinvPknlMstpSnonWnonDnon_medic_1"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
		player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1";
	};
	sleep 0.26;
	if(isNull _ui) then {
		5 cutRsc ["life_progress","PLAIN"];
		_ui = uiNamespace getVariable "life_progress";
		_progressBar = _ui displayCtrl 38201;
		_titleText = _ui displayCtrl 38202;
	};
	_cP = _cP + _cpRate;
	_progressBar progressSetPosition _cP;
	_titleText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_title];
	if(_cP >= 1 OR !alive player) exitWith {};
	if(life_istazed) exitWith {_ui = "osefStatusBar" call BIS_fnc_rscLayer;_ui cutRsc["osefStatusBar","PLAIN"];}; //Tazed
	if(life_interrupted) exitWith {_ui = "osefStatusBar" call BIS_fnc_rscLayer;_ui cutRsc["osefStatusBar","PLAIN"];};
	};

//Kill the UI display and check for various states
5 cutText ["","PLAIN"];
player playActionNow "stop";
if(!alive player OR life_istazed) exitWith {life_action_inUse = false;_ui = "osefStatusBar" call BIS_fnc_rscLayer;_ui cutRsc["osefStatusBar","PLAIN"];};
if((player getVariable["restrained",false])) exitWith {life_action_inUse = false;_ui = "osefStatusBar" call BIS_fnc_rscLayer;_ui cutRsc["osefStatusBar","PLAIN"];};
if(life_interrupted) exitWith {life_interrupted = false; titleText["Action annulée","PLAIN"]; life_action_inUse = false;_ui = "osefStatusBar" call BIS_fnc_rscLayer;_ui cutRsc["osefStatusBar","PLAIN"];};
_ui = "osefStatusBar" call BIS_fnc_rscLayer;_ui cutRsc["osefStatusBar","PLAIN"];
life_boltcutter_uses = life_boltcutter_uses + 1;
life_action_inUse = false;
if(life_boltcutter_uses >= 5) then {
	[false,"boltcutter",1] call life_fnc_handleInv;
	life_boltcutter_uses = 0;
};

_building setVariable[format["bis_disabled_Door_%1",_door],0,true]; //Unlock the door.
if((_building getVariable["locked",false])) then {
	_building setVariable["locked",false,true];
};
[[getPlayerUID player,profileName,"459"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;