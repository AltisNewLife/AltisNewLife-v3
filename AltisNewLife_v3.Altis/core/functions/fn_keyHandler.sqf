/*
	File: fn_keyHandler.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main key handler for event 'keyDown'
*/
private ["_handled","_shift","_alt","_code","_ctrl","_alt","_ctrlKey","_veh","_locked","_interactionKey","_mapKey","_interruptionKeys","_player"];
_ctrl = _this select 0;
_code = _this select 1;
_shift = _this select 2;
_ctrlKey = _this select 3;
_alt = _this select 4;
_speed = speed cursorTarget;
_handled = false;
_player = player;

_interactionKey = if(count (actionKeys "User10") == 0) then {219} else {(actionKeys "User10") select 0};
_mapKey = actionKeys "ShowMap" select 0;
//hint str _code;
_interruptionKeys = [17,30,31,32]; //A,S,W,D

//Vault handling...
if((_code in (actionKeys "GetOver") || _code in (actionKeys "salute")) && {(player getVariable ["restrained",false])}) exitWith {
	true;
};

if(life_action_inUse) exitWith {
	if(!life_interrupted && _code in _interruptionKeys) then {life_interrupted = true;};
	_handled;
};
//Block ²
if((_code in (actionKeys "SelectAll") || _code in (actionKeys "ForceCommandingMode"))) then {_handled = true;};

//if (_code in (actionKeys "TacticalView")) then { hint "Ce mode n'est pas autorisé sur nos serveurs." ; _handled = true;};

//Hotfix for Interaction key not being able to be bound on some operation systems.
if(count (actionKeys "User10") != 0 && {(inputAction "User10" > 0)}) exitWith {
	//Interaction key (default is Left Windows, can be mapped via Controls -> Custom -> User Action 10)
	if(!life_action_inUse) then {
		[] spawn 
		{
			private["_handle"];
			_handle = [] spawn life_fnc_actionKeyHandler;
			waitUntil {scriptDone _handle};
			life_action_inUse = false;
		};
	};
	true;
};

switch (_code) do
{
	//Space key for Jumping
	case 57:
	{
		if(isNil "jumpActionTime") then {jumpActionTime = 0;};
		if(_shift && {animationState player != "AovrPercMrunSrasWrflDf"} && {isTouchingGround player} && {stance player == "STAND"} && {speed player > 2} && {!life_is_arrested} && {(velocity player) select 2 < 2.5} && {time - jumpActionTime > 1.5}) then {
			jumpActionTime = time; //Update the time.
			[player,true] spawn life_fnc_jumpFnc; //Local execution
			[[player,false],"life_fnc_jumpFnc",nil,FALSE] call life_fnc_MP; //Global execution 
			_handled = true;
		};
	};

	//Map Key
	case _mapKey:
	{
		switch (playerSide) do 
		{
			case west: {if(!visibleMap) then {[] spawn life_fnc_copMarkers;}};
			case independent: {if(!visibleMap) then {[] spawn life_fnc_medicMarkers;}};
			case east: {if(!visibleMap) then {[] spawn life_fnc_adacMarkers;}};
			case civilian: {if(!visibleMap) then {[] spawn life_fnc_gangMarkers;}};
		};
	};
	//Holster / recall weapon.
	case 35:
	{
			if(!_shift && _ctrlKey && (currentWeapon player == "")) then {
				[0] call life_fnc_holsterWeapon;
			};
			
			if(_shift && !_ctrlKey && (currentWeapon player != "")) then {
				[1] call life_fnc_holsterWeapon;
			};
	};
	//Interaction key (default is Left Windows, can be mapped via Controls -> Custom -> User Action 10)
	case _interactionKey:
	{
		if(!life_action_inUse) then {
			[] spawn 
			{
				private["_handle"];
				_handle = [] spawn life_fnc_actionKeyHandler;
				waitUntil {scriptDone _handle};
				life_action_inUse = false;
			};
		};
	};
	//TOUCHE S Rendre les clé
	case 31:
	{
		if( !_shift && !_alt && !_ctrlKey &&  ((typeof vehicle player) in life_truck_types && !life_truckreverse_active && ((driver vehicle player) == player))) then
		{
			_veh = vehicle player;
			if(!life_truckreverse_active && speed _veh < 0) then
			{
				life_truckreverse_active = true;
				_veh setVariable["reverse",true,true];
				[[_veh],"life_fnc_reverseTruckSound",nil,true] spawn life_fnc_MP;
			};
		};
	};
	//V Key
	case 47:
	{
		if(playerSide != west && (player getVariable "restrained") OR (player getVariable "transporting")) then {_handled = true;};
	};

	//T Key (Trunk)
	case 20:
	{
		//if(!_alt && !_ctrlKey) then
		if(!_alt && !_ctrlKey && !life_is_processing) then 
		{
			if(vehicle player != player && alive vehicle player) then
			{
				if((vehicle player) in life_vehicles) then
				{
					[vehicle player] call life_fnc_openInventory;
				};
			}
				else
			{
				if((cursorTarget isKindOf "Car" OR cursorTarget isKindOf "Air" OR cursorTarget isKindOf "Ship" OR cursorTarget isKindOf "House_F") && player distance cursorTarget < 7 && vehicle player == player && alive cursorTarget) then
				{
					//if(cursorTarget in life_vehicles OR {!(cursorTarget getVariable ["locked",true])}) then
					if(cursorTarget in life_vehicles OR {!(cursorTarget getVariable ["locked",true])}) then 
					{
						[cursorTarget] call life_fnc_openInventory;
					};
				};
			};
		};
	};
	//L Key?
	case 38: 
	{
		//If cop run checks for turning lights on.
		if(_shift && playerSide in [west,independent]) then {
			if(vehicle player != player && (typeOf vehicle player) in ["C_Hatchback_01_F","C_Offroad_01_F","C_Hatchback_01_sport_F","B_MRAP_01_F","I_MRAP_03_F","B_MRAP_01_hmg_F","I_MRAP_03_hmg_F","B_Heli_Light_01_F","I_Heli_light_03_unarmed_F","O_Heli_Light_02_unarmed_F","B_Heli_Transport_01_camo_F","B_Heli_Light_01_armed_F","C_SUV_01_F","C_Hatchback_01_F"]) then {
				if(!isNil {vehicle player getVariable "lights"}) then {
					if(playerSide == west) then {
						[vehicle player] call life_fnc_sirenLights;
					} else {
						[vehicle player] call life_fnc_medicSirenLights;
					};
					_handled = true;
				};
			};
		};
		
		if(!_alt && !_ctrlKey) then { [] call life_fnc_radar; };
	};
	//Y Player Menu
	case 21:
	{
		//if(!_alt && !_ctrlKey && !dialog) then
		if(!_alt && !_ctrlKey && !dialog && !life_is_processing) then
		{
			[] call life_fnc_p_openMenu;
		};
	};
	//Sirene : F ; Assomer : Shift + F
	case 33:
	{
		if(_shift) then {_handled = true;};

		if(_shift && playerSide == civilian && !isNull cursorTarget && cursorTarget isKindOf "Man" && isPlayer cursorTarget && alive cursorTarget && cursorTarget distance player < 4 && speed cursorTarget < 1) then
		{
			if((animationState cursorTarget) != "Incapacitated" && (currentWeapon player == primaryWeapon player OR currentWeapon player == handgunWeapon player) && currentWeapon player != "" && !life_knockout && !(player getVariable["restrained",false]) && !life_istazed && !(player getVariable["surrender",false])) then
			{
				[cursorTarget] spawn life_fnc_knockoutAction;
				    if("ItemRadio" in assignedItems cursorTarget) then {
					  cursorTarget removeweapon "ItemRadio";
					  hint "Le telephone de la victime est tombe au sol";
					  _defenceplace1 = "Item_ItemRadio" createVehicle (player modelToWorld[0,0,0]);}
					 else { hint "La personne que vous avez assome n'a pas de telephone"};
			};
			_handled = true;
		};
		
		if(playerSide in [west,independent] && vehicle player != player && !life_siren_active && ((driver vehicle player) == player)) then
		{
			[] spawn
			{
				life_siren_active = true;
				sleep 4.7;
				life_siren_active = false;
			};
			_veh = vehicle player;
			if(isNil {_veh getVariable "siren"}) then {_veh setVariable["siren",false,true];};
			if((_veh getVariable "siren")) then
			{
				titleText ["Sirens Off","PLAIN"];
				_veh setVariable["siren",false,true];
			}
				else
			{
				titleText ["Sirens On","PLAIN"];
				_veh setVariable["siren",true,true];
				if(playerSide == west) then {
					[[_veh],"life_fnc_copSiren",nil,true] spawn life_fnc_MP;
				} else {
					//I do not have a custom sound for this and I really don't want to go digging for one, when you have a sound uncomment this and change medicSiren.sqf in the medical folder.
					[[_veh],"life_fnc_medicSiren",nil,true] spawn life_fnc_MP;
				};
			};
		};
		
	};
	//U Key
	case 22:
	{
		if(!_alt && !_ctrlKey) then {
			if(vehicle player == player) then {
				_veh = cursorTarget;
			} else {
				_veh = vehicle player;
			};
			
			if(_veh isKindOf "House_F") then {
				if(_veh in life_vehicles && player distance _veh < 8) then {
					_door = [_veh] call life_fnc_nearestDoor;
					if(_door == 0) exitWith {hint "Vous n'etes pas a cote d'une porte !"};
					_locked = _veh getVariable [format["bis_disabled_Door_%1",_door],0];
					if(_locked == 0) then {
						_veh setVariable[format["bis_disabled_Door_%1",_door],1,true];
						_veh animate [format["door_%1_rot",_door],0];
						systemChat "Vous avez verrouillé la porte.";
						hint composeText [ image "icons\lock.paa", "  Porte Vérouillée" ]; // ICI
					} else {
						_veh setVariable[format["bis_disabled_Door_%1",_door],0,true];
						_veh animate [format["door_%1_rot",_door],1];
						systemChat "Vous avez deverrouillé la porte.";
						hint composeText [ image "icons\UNlock.paa", "  Porte Déverouillée" ]; // ICI
					};
				};
			} else {
				_locked = locked _veh;
				if(_veh in life_vehicles && player distance _veh < 8) then {
					if(_locked == 2) then {
						if(local _veh) then {
							_veh lock 0;
						} else {
							[[_veh,0],"life_fnc_lockVehicle",_veh,false] spawn life_fnc_MP;
						};
						hint composeText [ image "icons\unlock.paa", " Véhicule Ouvert" ];
						systemChat "Vous avez deverrouillé le vehicule.";
					[[_veh, "car_lock",10],"life_fnc_playSound",true,false] spawn life_fnc_MP;
					} else 
					{
						if(local _veh) then 
						{
							_veh lock 2;
						} else 
						{
							[[_veh,2],"life_fnc_lockVehicle",_veh,false] spawn life_fnc_MP;
						};	
						hint composeText [ image "icons\lock.paa", " Véhicule Fermé" ];
						systemChat "Vous avez verrouillé le vehicule.";
					[[_veh, "car_lock",10],"life_fnc_playSound",true,false] spawn life_fnc_MP;
					};
				};
			};
		};
	};
	//Menotter : Shift + R
	case 19:
	{
		if(_shift) then {_handled = true;};
		if(_shift && playerSide == west && !isNull cursorTarget && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && (side cursorTarget == civilian) && alive cursorTarget && cursorTarget distance player < 3.5 && !(cursorTarget getVariable "Escorting") && !(cursorTarget getVariable "restrained") && speed cursorTarget < 1) then
		{
		
	        if([false,"zipties",1] call life_fnc_handleInv) then
			{
			[] call life_fnc_restrainAction;
			hint "Vous l'avez menotté, utiliser votre menu d'interaction";
		   }
		   else
		   {
			hint "Vous n'avez pas de menotte !";
		   };

		};
		
		if(_shift && playerSide == civilian && !isNull cursorTarget && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && (side cursorTarget in [civilian,independent,west]) && alive cursorTarget && cursorTarget distance player < 3.5 && !(cursorTarget getVariable "Escorting") && !(cursorTarget getVariable "restrained") && speed cursorTarget < 1 && animationState cursorTarget == "Incapacitated") then
	  	{
		
	        if([false,"zipties",1] call life_fnc_handleInv) then
			{
			[] call life_fnc_restrainAction;
			hint "Vous l'avez menotté, utiliser votre menu d'interaction";
		   }
		   else
		   {
			hint "Vous n'avez pas de menotte !";
		   };

		};
		if(_shift && playerSide == independent && !isNull cursorTarget && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && (side cursorTarget == civilian) && alive cursorTarget && cursorTarget distance player < 3.5 && !(cursorTarget getVariable "Escorting") && !(cursorTarget getVariable "restrained") && speed cursorTarget < 1) then
		{
			if([false,"camisole",1] call life_fnc_handleInv) then
			{
			[] call life_fnc_restrainMed;
			hint "Vous lui avez mis une camisole, utiliser votre menu d'interaction";
		   }
		   else
		   {
			hint "Vous n'avez pas de camisole !";
		   };
		};	
	};
	//Se rendre : Shift + G
	case 34:
	{
		if(_shift) then {_handled = true;};

		if (_shift) then
		{
			if (vehicle player == player && !(player getVariable ["restrained", false]) && (animationState player) != "Incapacitated" && !life_istazed) then
			{
				if (player getVariable ["surrender", false]) then
				{
					player setVariable ["surrender", false, true];
				} else
				{
					[] spawn life_fnc_surrender;
				};
			};
		};
	};
	
	//Assomer SHIFT + T
	/*
	case 30:
		{	
		if(_shift && playerSide == civilian && !isNull cursorTarget && cursorTarget isKindOf "Man" && isPlayer cursorTarget && alive cursorTarget && cursorTarget distance player < 4 && speed cursorTarget < 1) then
		{
			if((animationState cursorTarget) != "Incapacitated" && (currentWeapon player == primaryWeapon player OR currentWeapon player == handgunWeapon player) && currentWeapon player != "" && !life_knockout && !(player getVariable["restrained",false]) && !life_istazed && !(player getVariable["surrender",false])) then
			{
				[cursorTarget] spawn life_fnc_knockoutAction;
				    if("ItemRadio" in assignedItems cursorTarget) then {
					  cursorTarget removeweapon "ItemRadio";
					  hint "Le telephone de la victime est tombe au sol";
					  _defenceplace1 = "Item_ItemRadio" createVehicle (player modelToWorld[0,0,0]);}
					 else { hint "La personne que vous avez assome n'a pas de telephone"};
			};
			_handled = true;
		};
		};	
	*/
		
	//Boule Quies : Shift + B
	case 48:
	{
		if(_shift) then {
			switch (player getVariable["Earplugs",0]) do {
				case 0: {hintSilent "Boule Quiès 90%"; 1 fadeSound 0.1; player setVariable ["Earplugs", 10]; };
				case 10: {hintSilent "Boule Quiès 60%"; 1 fadeSound 0.4; player setVariable ["Earplugs", 40]; };
				case 40: {hintSilent "Boule Quiès 30%"; 1 fadeSound 0.7; player setVariable ["Earplugs", 70]; };
				case 70: {hintSilent "Boule Quiès retiré"; 1 fadeSound 1; player setVariable ["Earplugs", 0]; };
			};
		};
	};
 
    //Crochetage : Shift + C
	case 46:
	{
		if(_shift && (!life_action_inUse) && (vehicle player == player) ) then
	    //if(playerSide == civilian && (!life_action_inUse) && (vehicle player == player) ) then
        {
            {
                _str = [_x] call life_fnc_varToStr;
                _val = missionNameSpace getVariable _x;
                if(_val > 0 ) then
                {
                    if( _str == "Outil de crochetage" || _str == "lockpick" ) then
                    {
                        [] spawn life_fnc_lockpick;
                    };
                };
            } foreach life_inv_items;
        };	
	};
    //Serrure : Shift + S
	/*case 31:
	{
		if(_shift && (!life_action_inUse) && (vehicle player == player) ) then
        {
            {
                _str = [_x] call life_fnc_varToStr;
                _val = missionNameSpace getVariable _x;
                if(_val > 0 ) then
                {
                    if( _str == "Outils de sérrurier" || _str == "boltcutter" ) then
                    {
                        [cursorTarget] spawn life_fnc_boltcutter;
                    };
                };
            } foreach life_inv_items;
        };	
	};	
	*/
	//Pickaxe - <>
	case 86:
	{
		//if((!life_action_inUse) && (vehicle player == player) ) then
		if(_shift && (!life_action_inUse) && (vehicle player == player) ) then
		{
		hint "Pour l'instant tu dois piocher depuis ton menu inventaire ";
			//{
			//_str = [_x] call life_fnc_varToStr;
			//_val = missionNameSpace getVariable _x;
			//if(_val > 0 ) then
			//	{
			//	if( _str == "pioche" || _str == "pickaxe" ) then
			//		{
			//		[] spawn life_fnc_pickAxeUse;
			//		};
			//	};
			//} foreach life_inv_items;
		}
	};	
		
	//Barriere : O ; Serrure : Shift + O
	case 24:
	{
	  if(_shift) then {_handled = true;};
	  
	  	if(_shift && (!life_action_inUse) && (vehicle player == player) ) then
        {
            {
                _str = [_x] call life_fnc_varToStr;
                _val = missionNameSpace getVariable _x;
                if(_val > 0 ) then
                {
                    if( _str == "Outils de sérrurier" || _str == "boltcutter" ) then
                    {
                        [cursorTarget] spawn life_fnc_boltcutter;
                    };
                };
            } foreach life_inv_items;
        };	

	  if (!_shift && !_alt && !_ctrlKey && (playerSide == west)) then 
		{
			[] call life_fnc_copOpener;
		};
  	};

	//Takwondo (Shift + Num 1)
	case 79:
	{
	if(_shift) then {_handled = true;};
		if ((_shift) && (vehicle player == player)) then
		{
			cutText [format["Kata !"], "PLAIN DOWN"];
			player playMove "AmovPercMstpSnonWnonDnon_exerciseKata";
		};
	};

	//Kneebend Slow(Shift + Num 2)
	case 80:
	{
	if(_shift) then {_handled = true;};
		if ((_shift) && (vehicle player == player)) then
		{
			cutText [format["Gym lente"], "PLAIN DOWN"];
			player playMove "AmovPercMstpSnonWnonDnon_exercisekneeBendA";
		};
	};

	//Kneebend Fast(Shift + Num 3)
	case 81:
	{
	if(_shift) then {_handled = true;};
		if ((_shift) && (vehicle player == player)) then
		{
			cutText [format["Gym rapide"], "PLAIN DOWN"];
			player playMove "AmovPercMstpSnonWnonDnon_exercisekneeBendB";
		};
	};

	//Pushup(Shift + Num 4)
	case 75:
	{
	if(_shift) then {_handled = true;};
		if ((_shift) && (vehicle player == player)) then
		{
			cutText [format["Pompe !!!!!"], "PLAIN DOWN"];
			player playMove "AmovPercMstpSnonWnonDnon_exercisePushup";
		};
	};
	// ALT + F4
	case 62:
    {
    if(_alt && !_shift) then {
    diag_log format ["%1 a fait ALT+F4 pour se deconnecter",_player getVariable["realname",name _player]];
    [[1,format["%1 a fait ALT+F4 pour se deconnecter",_player getVariable["realname",name _player]]],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
    };
    };
	
	// CRTL+ALT+SUPPR
    case 211:
    {
    if(_ctrlKey && _alt)  then {
    diag_log format ["%1 a fait un CTRL + ALT + SUPP",_player getVariable["realname",name _player]];
    [[1,format["%1 a fait un CTRL + ALT + SUPP",_player getVariable["realname",name _player]]],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
    };
    };
	
	// CTRL + ESC
    case 49:
    {
    if(_ctrlKey) then {
    diag_log format ["%1 a fait un CTRL + ESC ",_player getVariable["realname",name _player]];
    [[1,format["%1 a fait un CTRL + ESC",_player getVariable["realname",name _player]]],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
    };
    };
	
	// N Nitro
	case 49:
	{
	    if (_shift) then {
		//if(!_alt && !_ctrlKey) then {
			[] spawn life_fnc_activateNitro;
		};
	};
	case 59: // F1
	{
		closeDialog 0;
		hintc "Cette touche est bloqué par le système";
		_handled = false;
	};

	case 60: // F2
	{
		closeDialog 0;
		hintc "Cette touche est bloqué par le système";
		_handled = false;
	};
			
	case 61: // F3
	{
		closeDialog 0;
	    hintc "Cette touche est bloqué par le système";
		_handled = false;
	};

	case 62: // F4 
	{
		closeDialog 0;
		hintc "Cette touche est bloqué par le système";
		_handled = false;
	};

	case 63: // F5
	{
		closeDialog 0;
		_handled = false;
	};

	case 64: //F6 key 
	{
		closeDialog 0;
		_handled = false;
	};

	case 65: // F7 Key
	{
		closeDialog 0;
		_handled = false;
	};

	case 66: //F8 key 
	{
		closeDialog 0;
		_handled = false;
	};
	
	case 67: //F9 key 
	{
		closeDialog 0;
		_handled = false;
	};

	case 68: //F10 key 
	{
		closeDialog 0;
		_handled = false;
	};
	
	case 211: //DELETE key
	{
		closeDialog 0;
		_handled = false;
	};	
	
};

_handled;