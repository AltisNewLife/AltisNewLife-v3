private["_unit","_killer"];
disableSerialization;
_unit = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_killer = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param;
_unit setVariable["Revive",FALSE,TRUE]; //Set the corpse to a revivable state.
_unit setVariable["name",profileName,TRUE]; //Set my name so they can say my name.
_unit setVariable["restrained",FALSE,TRUE];
_unit setVariable["Escorting",FALSE,TRUE];
_unit setVariable["transporting",FALSE,TRUE]; //Why the fuck do I have this? Is it used?
_unit setVariable["steam64id",(getPlayerUID player),true]; //Set the UID.
if (!isNull (_unit getVariable["blindfold", objNull])) then { deleteVehicle (_unit getVariable["blindfold"]); };
life_deathCamera  = "CAMERA" camCreate (getPosATL _unit);
showCinemaBorder TRUE;
life_deathCamera cameraEffect ["Internal","Back"];
createDialog "DeathScreen";
life_deathCamera camSetTarget _unit;
life_deathCamera camSetRelPos [0,3.5,4.5];
life_deathCamera camSetFOV .5;
life_deathCamera camSetFocus [50,0];
life_deathCamera camCommit 0;
(findDisplay 7300) displaySetEventHandler ["KeyDown","if((_this select 1) == 1) then {true}"]; //Block the ESC menu
_unit spawn
{
	private["_maxTime","_RespawnBtn","_Timer"];
	disableSerialization;
	_RespawnBtn = ((findDisplay 7300) displayCtrl 7302);
	_Timer = ((findDisplay 7300) displayCtrl 7301);
	
	_maxTime = time + (life_respawn_timer * 60);
	_RespawnBtn ctrlEnable false;
	waitUntil {_Timer ctrlSetText format["Nouvelle vie dispo dans : %1",[(_maxTime - time),"MM:SS.MS"] call BIS_fnc_secondsToString]; 
	//round(_maxTime - time) <= 0 OR isNull _this};
	round(_maxTime - time) <= 0 || isNull _this || Life_request_timer};
if (Life_request_timer) then {
_maxTime = time + (life_respawn_timer * 90);
waitUntil {_Timer ctrlSetText format["Nouvelle vie dispo dans : %1",[(_maxTime - time),"MM:SS.MS"] call BIS_fnc_secondsToString]; 
round(_maxTime - time) <= 0 || isNull _this};
};
Life_request_timer = false;
	_RespawnBtn ctrlEnable true;
	_Timer ctrlSetText "Vous pouvez commencer votre nouvelle vie";
};
[] spawn life_fnc_deathScreen;
[_unit] spawn
{
	private["_unit"];
	_unit = _this select 0;
	waitUntil {if(speed _unit == 0) exitWith {true}; life_deathCamera camSetTarget _unit; life_deathCamera camSetRelPos [0,3.5,4.5]; life_deathCamera camCommit 0;};
};
if(!isNull _killer && {_killer != _unit} && {side _killer != west} && {alive _killer}) then {
	if(vehicle _killer isKindOf "LandVehicle") then {
		[[getPlayerUID _killer,_killer getVariable["realname",name _killer],"187V"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
		//Get rid of this if you don't want automatic vehicle license removal.
		if(!local _killer) then {
			[[2],"life_fnc_removeLicenses",_killer,FALSE] spawn life_fnc_MP;
		};
	} else {
		[[getPlayerUID _killer,_killer getVariable["realname",name _killer],"187"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
		
		if(!local _killer) then {
			[[3],"life_fnc_removeLicenses",_killer,FALSE] spawn life_fnc_MP;
		};
	};
};
if(side _killer == west && playerSide != west) then {
	life_copRecieve = _killer;
	//Did I rob the federal reserve?
	if(!life_use_atm && {argent_liquide > 0}) then {
		[format["%1€ de la banque a ete rendu suite a la mort du braqueur.",[argent_liquide] call life_fnc_numberText],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		argent_liquide = 0;
	};
};
if(!isNull _killer && {_killer != _unit}) then {
	life_removeWanted = true;
};
_handle = [_unit] spawn life_fnc_dropItems;
waitUntil {scriptDone _handle};
life_hunger = 100;
life_thirst = 100;
life_carryWeight = 0;
argent_liquide = 0;
[] call life_fnc_hudUpdate;
[[player,life_sidechat,playerSide],"TON_fnc_managesc",false,false] spawn life_fnc_MP;

[0] call SOCK_fnc_updatePartial;
[3] call SOCK_fnc_updatePartial;