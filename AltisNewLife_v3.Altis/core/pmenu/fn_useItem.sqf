private["_item"];
disableSerialization;
if((lbCurSel 2005) == -1) exitWith {hint "Vous devez d'abord choisir un objet !";};
_item = lbData[2005,(lbCurSel 2005)];
switch (true) do
{
	case (_item == "water" or _item == "coffee"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			life_thirst = 100;
			player setFatigue 0;
			if(_item == "life_inv_coffee" && life_bac > 0.00) then {
				if(life_bac <= 0.02) then {life_bac = 0.00;} else {life_bac = life_bac - 0.02;};
			};
		};
	};
	
	case (_item == "boltcutter"): {
		[cursorTarget] spawn life_fnc_boltcutter;
		closeDialog 0;
	};
	
	case (_item == "blastingcharge"): {
		player reveal fed_bank;
		(group player) reveal fed_bank;
		[cursorTarget] spawn life_fnc_blastingCharge;
	};
	
	case (_item == "defusekit"): {
		[cursorTarget] spawn life_fnc_defuseKit;
	};
	
	case (_item in ["storagesmall","storagebig"]): {
		[_item] call life_fnc_storageBox;
	};
	
	case (_item == "heroinp"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_heroine;
		};
	};
	case (_item in ["cocainep","cokep"]):	
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			life_thirst = 100;
			life_hunger = 100;
			[] spawn life_fnc_coke;
			player setDamage 0;
		};
	};
	
	case (_item == "marijuana"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			life_thirst = 60;
			life_hunger = 50;
			[] spawn life_fnc_useWeed;
			player setDamage 0;
		};
	};
	case (_item == "meth97"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			life_thirst = 30;
			life_hunger = 30;
			[] spawn life_fnc_meth97;
			player setDamage 0.5;
		};
	};
	case (_item == "cigarette"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_cigarette;
		};
	};
	case (_item == "wine"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
	    {
		    hint "Vous avez bu du vin";
			life_drink = life_drink + 0.03;
		};
	};
		case (_item =="bottledwhiskey"):
	{
		if((player getVariable ["inDrink",FALSE])) exitWith {hint "Vous avez deja bu";};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			if(isNil "life_drink") then {life_drink = 0;};
			life_drink = life_drink + 0.06;
			if (life_drink < 0.07) exitWith {};
			[] spawn life_fnc_drinkwhiskey;
		};
	};
	
	case (_item =="bottledshine"):
	{
		if((player getVariable ["inDrink",FALSE])) exitWith {hint "Vous avez deja bu";};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			if(isNil "life_drink") then {life_drink = 0;};
			life_drink = life_drink + 0.08;
			if (life_drink < 0.09) exitWith {};
			[] spawn life_fnc_drinkmoonshine;
		};
	};
	
	case (_item =="bottledbeer"):
	{
		if((player getVariable ["inDrink",FALSE])) exitWith {hint "Vous avez deja bu";};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			if(isNil "life_drink") then {life_drink = 0;};
			life_drink = life_drink + 0.02;
			if (life_drink < 0.06) exitWith {};
			[] spawn life_fnc_drinkbeer;
		};
	};
	
	case (_item in ["redgull","sprite","pepsi","cafe","icecap","expresso","smoothies"]):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			life_thirst = 100;
			player setFatigue 0;
			[] spawn
			{
				life_redgull_effect = time;
				titleText["Vous pouvez maintenant courir plus longtemps pendant 3 minutes","PLAIN"];
				player enableFatigue false;
				waitUntil {!alive player OR ((time - life_redgull_effect) > (3 * 60))};
				player enableFatigue true;
			};
		};
	};
	
	case (_item == "zipties"):
	{
		if(playerSide == civilian && !isNull cursorTarget && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && alive cursorTarget && cursorTarget getVariable ["surrender", true] && cursorTarget distance player < 3 && isPlayer cursorTarget && !(cursorTarget getVariable "Escorting") && !(cursorTarget getVariable "restrained") && speed cursorTarget < 1) then
		{
			if(([false,"zipties",1] call life_fnc_handleInv)) then
				{
					[] call life_fnc_restrainAction;
				};
		};
	};	
	
	case (_item == "camisole"):
	{
	if(playerSide == independent && !isNull cursorTarget && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && alive cursorTarget && cursorTarget getVariable ["surrender", true] && cursorTarget distance player < 3 && isPlayer cursorTarget && !(cursorTarget getVariable "Escorting") && !(cursorTarget getVariable "restrained") && speed cursorTarget < 1) then
		{
			if(([false,"camisole",1] call life_fnc_handleInv)) then
				{
					[] call life_fnc_restrainMed;
				};
		};
	};		
	case (_item == "spikeStrip"):
	{
		if(!isNull life_spikestrip) exitWith {hint "Vous deployez deja cet objet"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			["spikes"] spawn life_fnc_poseitem;
		};
	};
	
	case (_item == "mur"):
	{
		if(!isNull life_mur) exitWith {hint "Vous deployez deja cet objet"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[_item] spawn life_fnc_poseitem;
		};
	};
	
	case (_item == "sac"):
	{
		if(!isNull life_sac) exitWith {hint "Vous deployez deja cet objet"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[_item] spawn life_fnc_poseitem;
		};
	};
	
	case (_item == "cone"):
	{
		if(!isNull life_cone) exitWith {hint "Vous deployez deja cet objet"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[_item] spawn life_fnc_poseitem;
		};
	};
	
	case (_item == "barre"):
	{
		if(!isNull life_barre) exitWith {hint "Vous deployez deja cet objet"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[_item] spawn life_fnc_poseitem;
		};
	};
	
	case (_item == "lightr"):
	{
		if(!isNull life_lightr) exitWith {hint "Vous deployez deja cet objet"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[_item] spawn life_fnc_poseitem;
		};
	};

	case (_item == "lightg"):
	{
		if(!isNull life_lightg) exitWith {hint "Vous deployez deja cet objet"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[_item] spawn life_fnc_poseitem;
		};
	};
	
	case (_item == "lighty"):
	{
		if(!isNull life_lighty) exitWith {hint "Vous deployez deja cet objet"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[_item] spawn life_fnc_poseitem;
		};
	};
		
	case (_item == "flecheg"):
	{
		if(!isNull life_barre) exitWith {hint "Vous deployez deja cet objet"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[_item] spawn life_fnc_poseitem;
		};
	};
	
	case (_item == "fleched"):
	{
		if(!isNull life_barre) exitWith {hint "Vous deployez deja cet objet"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[_item] spawn life_fnc_poseitem;
		};
	};
			
	case (_item == "fuelF"):
	{
		if(vehicle player != player) exitWith {hint "Vous ne pouvez pas faire le plein quand vous etes dans le vehicule !"};
		[] spawn life_fnc_jerryRefuel;
	};
	
	case (_item == "lockpick"):
	{
		[] spawn life_fnc_lockpick;
	};
	
	case (_item in ["apple","rabbit","salema","ornate","mackerel","tuna","mullet","catshark","turtle","turtlesoup","donuts","tbacon","peach","grapes","burger","frite","redburger"]):
	{
		[_item] call life_fnc_eatFood;
	};

	case (_item == "pickaxe"):
	{
		[] spawn life_fnc_pickAxeUse;
	};
	
	case (_item == "battery"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			life_battery = 100;
			hint "Votre batterie est pleine maintenant.";
		};
	};
	
	case (_item == "kidney"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			player setVariable["missingOrgan",false,true];
			life_thirst = 100;
			life_hunger = 100;
			player setFatigue .5;
		};
	};
	case (_item == "nitro"):
	{
		[] spawn life_fnc_nitro;
	};
	case (_item == "speedbomb"):
	{
		[] spawn life_fnc_speedBomb;
	};
	case (_item == "vammo"):
	{
		[] spawn life_fnc_vehAmmo;
	};
	case (_item == "excavator"):
	{
		[] spawn life_fnc_searchWreck;
	};
	case (_item == "underwatercharge"): {
		player reveal gold_safe;
		(group player) reveal gold_safe;
		[cursorTarget] spawn life_fnc_underwaterCharge;
	};
	case (_item == "gpstracker"): {
		[cursorTarget] spawn life_fnc_gpsTracker;
	};
	case (_item ==  "multipass"):
	{
		[] spawn life_fnc_multipass;
	};		
	case (_item ==  "scalpel"):
	{
		titleText["Cet objet sert a prelever les organes, menottez votre victime et utilisez la touche WINDOWS !","PLAIN"];
	};		
	default
	{
		hint "Cet objet n'est pas utilisable";
	};
};
[] call life_fnc_p_updateMenu;
[] call life_fnc_hudUpdate;