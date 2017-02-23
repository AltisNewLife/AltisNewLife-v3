#include <macro.h>
private["_curTarget","_isWater"];
_curTarget = cursorTarget;
if(life_action_inUse) exitWith {};
if(life_interrupted) exitWith {life_interrupted = false;};
_isWater = surfaceIsWater (getPosASL player);
if(isNull _curTarget) exitWith {
	if(_isWater) then {
		private["_fish"];
		_fish = (nearestObjects[getPos player,["Fish_Base_F"],3]) select 0;
		if(!isNil "_fish") then {
			[_fish] call life_fnc_catchFish;
		};
		
		if (((getPosASL player select 2) < -140) && ((player distance (getMarkerPos "archeo_1") < 143)) OR 
		(((getPosASL player select 2) < -125) && (player distance (getMarkerPos "archeo_2") < 130)) OR
		(((getPosASL player select 2) < -105) && (player distance (getMarkerPos "archeo_3") < 110))) then {
                   if(playerSide == civilian && !life_action_gathering) then {
                   _handle = [] spawn life_fnc_gather;
                   waitUntil {scriptDone _handle};
                   life_action_gathering = false;
                   };
                };
	} else {
		if(playerSide == civilian && !life_action_gathering) then {
			_handle = [] spawn life_fnc_gather;
			waitUntil {scriptDone _handle};
			life_action_gathering = false;
		};
	if(playerSide == west && (count(nearestObjects [player,["WeaponHolderSimulated","WeaponHolder","groundWeaponHolder"],5])>0)) then {
		[] call life_fnc_seizeObjects;
		};
	};
};

if((_curTarget isKindOf "Land_ChairWood_F" or _curTarget isKindOf "Land_ChairPlastic_F" or _curTarget isKindOf "Land_CampingChair_V2_F") && player distance _curTarget < 1.5) then {
	[_curTarget,player] call life_fnc_sitdown;
};

if(_curTarget isKindOf "House_F" && {player distance _curTarget < 10} OR ((nearestObject [[16572.674,12733.395,0],"Land_Dome_Small_F"]) == _curTarget OR (nearestObject [[16571.787,12732.803,0],"Land_Research_house_V1_F"]) == _curTarget)) exitWith {
	[_curTarget] call life_fnc_houseMenu;
};

if(dialog) exitWith {};
if(vehicle player != player) exitWith {};
life_action_inUse = true;
[] spawn {
	sleep 60;
	life_action_inUse = false;
};
if(_curTarget isKindOf "Man" && {!alive _curTarget} && {playerSide in [west,independent]}) exitWith {
	if(((playerSide == blufor && {(call life_revive_cops)}) || playerSide == independent) && {"Medikit" in (items player)}) then {
		[_curTarget] call life_fnc_revivePlayer;
	};
};
if(isPlayer _curTarget && _curTarget isKindOf "Man") then {
	if((_curTarget getVariable["restrained",false]) && (player distance cursorTarget < 3) && !dialog && playerSide == west) then {
		[_curTarget] call life_fnc_copInteractionMenu;
	};
	//if((_curTarget getVariable["restrained",false]) && !dialog && playerSide == civilian) then 
	if((_curTarget getVariable["restrained",false]) && (player distance cursorTarget < 3) && !dialog && playerSide == civilian) then {
	    [_curTarget] call life_fnc_civInteractionMenu;
    };
	
	if((_curTarget getVariable["restrained",false]) && (player distance cursorTarget < 3) && !dialog && playerSide == independent) then {
	    [_curTarget] call life_fnc_medInteractionMenu;
    };
	
} else {
	private["_isVehicle","_miscItems","_money"];
	_isVehicle = if((_curTarget isKindOf "landVehicle") OR (_curTarget isKindOf "Ship") OR (_curTarget isKindOf "Air")) then {true} else {false};
	_miscItems = ["Land_BottlePlastic_V1_F","Land_TacticalBacon_F","Land_Can_V3_F","Land_CanisterFuel_F","Land_Suitcase_F","Land_BottlePlastic_V2_F","Land_Battery_F","Land_Matches_F","Land_Can_V1_F","Land_Antibiotic_F","Land_MetalWire_F","Land_PowderedMilk_F","Land_Pliers_F","Land_CanOpener_F","Land_Shovel_F","Land_HumanSkull_F","Land_PenBlack_F","Land_Hammer_F","Land_MobilePhone_smart_F"];
	_animalTypes = ["Salema_F","Ornate_random_F","Mackerel_F","Tuna_F","Mullet_F","CatShark_F","Turtle_F"];
	_money = "Land_Money_F";
	if(_isVehicle) then {
		if(!dialog) then {
			if(player distance _curTarget < ((boundingBox _curTarget select 1) select 0) + 2) then {
				[_curTarget] call life_fnc_vInteractionMenu;
			};
		};
	} else {
		if((typeOf _curTarget) in _animalTypes) then {
			if((typeOf _curTarget) == "Turtle_F" && !alive _curTarget) then {
				private["_handle"];
				_handle = [_curTarget] spawn life_fnc_catchTurtle;
				waitUntil {scriptDone _handle};
			} else {
				private["_handle"];
				_handle = [_curTarget] spawn life_fnc_catchFish;
				waitUntil {scriptDone _handle};
			};
		} else {
			if((typeOf _curTarget) in _miscItems) then {
				private["_handle"];
				_handle = [_curTarget] spawn life_fnc_pickupItem;
				waitUntil {scriptDone _handle};
			} else {
				if((typeOf _curTarget) == _money && {!(_curTarget getVariable["inUse",false])}) then {
					private["_handle"];
					_curTarget setVariable["inUse",TRUE,TRUE];
					_handle = [_curTarget] spawn life_fnc_pickupMoney;
					waitUntil {scriptDone _handle};
				};
			};
		};
	};
};