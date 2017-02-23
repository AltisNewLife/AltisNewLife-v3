[] spawn  {
	private["_fnc_food","_fnc_water","_fnc_battery"];
	_fnc_food = 
	{
		if(life_hunger < 2) then {player setDamage 1; hint "Vous êtes mort de faim";}
		else
		{
		life_hunger = life_hunger - 10;
		[] call life_fnc_hudUpdate;
		if(life_hunger < 2) then {player setDamage 1; hint "Vous êtes mort de faim";};
		switch(life_hunger) do {
			case 30: {hint "Vous n'avez rien mangé depuis un certain temps, vous devriez trouver quelque chose à manger !";};
			case 20: {hint "Vous commencez à mourir de faim, vous avez besoin de trouver quelque chose à manger, sinon vous allez mourir !";};
			case 10: {hint "Vous êtes en train de mourir de faim, vous allez mourir très bientôt si vous ne mangez pas quelque chose";player setFatigue 1;};
			};
		};
	};
	
	_fnc_water = 
	{
		if(life_thirst < 2) then {player setDamage 1; hint "Vous êtes mort de soif";}
		else
		{
			life_thirst = life_thirst - 10;
			[] call life_fnc_hudUpdate;
			if(life_thirst < 2) then {player setDamage 1; hint "Vous êtes mort de soif";};
			switch(life_thirst) do 
			{
				case 30: {hint "Vous n'avez rien bu depuis un certain temps, vous devriez trouver quelque chose à boire !";};
				case 20: {hint "Vous commencez à mourir de soif, vous avez besoin de trouver quelque chose à boire, sinon, vous allez mourir"; player setFatigue 1;};
				case 10: {hint "Vous êtes en train de mourir de soif, vous allez mourir très bientôt si vous ne buvez pas quelque chose"; player setFatigue 1;};
			};
		};
	};
	
	_fnc_battery =                                 
	{
		if(life_battery < 2) then {hint "Votre batterie est vide";}
		else
		{
			life_battery = life_battery - 5;
			[] call life_fnc_hudUpdate;
			if(life_battery < 2) then {hint "Votre batterie est vide";};
			switch(life_battery) do 
			{
				case 30: {hint "Votre batterie est a 30%.";};
				case 20: {hint "Votre batterie est faible plus que 20%.";};
				case 10: {hint "Recharger votre telephone, il ne vous reste plus que 10%.";};
			};
		};
	};
	[] spawn  {
	while{true} do
	{
		sleep 180;
		if(life_drink > 0) then {
			if(life_drink <= 0.02) then {life_drink = 0.00;} else {life_drink = life_drink - 0.02;};
			[] call life_fnc_hudUpdate;
			switch(true) do {
				case (life_drink == 0.00): {hint "Vous etes sobre";};
				case (life_drink == 0.08): {hint "Vous pouvez maintenant conduire légalement.";};
			};
		};
	};
};
[] spawn  {
	while{true} do
	{
		waitUntil {life_drink > 0.08};
		player setVariable["intoxicated",true,true];
		[[0,format["%1 semble un peu pompette",name player]],"life_fnc_broadcast",(position player) nearEntities [["Man"], 50],false] spawn life_fnc_MP;
		while{life_drink > 0.08} do {
			"dynamicBlur" ppEffectEnable true;
			"dynamicBlur" ppEffectAdjust [round ((1+(life_drink-.1))^10)];
			"dynamicBlur" ppEffectCommit 1;
			sleep 5;
		};
		"dynamicBlur" ppEffectEnable false;
		player setVariable["intoxicated",false,true];
	};
};

[] spawn  {
	while{true} do
	{
		waitUntil {life_drink > 0.30};
		_obj = "Land_ClutterCutter_small_F" createVehicle (getPosATL player);
		_obj setPosATL (getPosATL player);
		[[player,"AinjPfalMstpSnonWnonDf_carried_fallwc"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
		player attachTo [_obj,[0,0,0]];
		[[0,format["%1 a fait un coma éthylique",name player]],"life_fnc_broadcast",(position player) nearEntities [["Man"], 100],false] spawn life_fnc_MP;
		while{life_drink > 0.30} do {
			hint "Vous etes au dessus des 0.30, vous risquez un empoisonnement. Allez a l'hopital ou buvez du café ! Si vous dépassez les 0.40 vous allez mourir.";
			sleep 60;
		};
		detach player;
		[[player,"amovppnemstpsraswrfldnon"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
	};
};

	while{true} do
	{
		sleep 600;
		[] call _fnc_water;
		sleep 100;
		[] call _fnc_battery;
		sleep 250;
		[] call _fnc_food;
	};
};

[] spawn
{
	private["_bp","_load","_cfg"];
	while{true} do
	{
		waitUntil {backpack player != ""};
		_bp = backpack player;
		_cfg = getNumber(configFile >> "CfgVehicles" >> (backpack player) >> "maximumload");
		_load = round(_cfg / 8);
		if (backpack player == "B_AssaultPack_blk") then { _load =40; };
		if (backpack player == "B_Kitbag_cbr") then { _load =40; };
		if (backpack player == "B_Kitbag_mcamo") then { _load =40; };
		if (backpack player == "B_UAV_01_backpack_F") then { _load =40; };
		life_maxWeight = life_maxWeightT + _load;
		if(playerSide == west) then {(unitBackpack player) setObjectTextureGlobal [0,""];};
		if(playerSide == Independent) then {(unitBackpack player) setObjectTextureGlobal [0,""];};
		waitUntil {backpack player != _bp};
		if(backpack player == "") then 
		{
			life_maxWeight = life_maxWeightT;
		};
	};
};

[] spawn
{
	while {true} do
	{
		sleep 1.5;
		if(life_carryWeight > life_maxWeight && !isForcedWalk player) then {
			player forceWalk true;
			player setFatigue 1;
			hint "Vous êtes surchargé, vous ne pouvez plus courrir ou bouger rapidement à moins de lacher quelques objets !";
		} else {
			if(isForcedWalk player) then {
				player forceWalk false;
			};
		};
	};
};

[] spawn  
{
	private["_walkDis","_myLastPos","_MaxWalk","_runHunger","_runDehydrate"];
	_walkDis = 0;
	_myLastPos = (getPos player select 0) + (getPos player select 1);
	_MaxWalk = 1200;
	while{true} do 
	{
		sleep 0.5;
		if(!alive player) then {_walkDis = 0;}
		else
		{
			_CurPos = (getPos player select 0) + (getPos player select 1);
			if((_CurPos != _myLastPos) && (vehicle player == player)) then
			{
				_walkDis = _walkDis + 1;
				if(_walkDis == _MaxWalk) then
				{
					_walkDis = 0;
					life_thirst = life_thirst - 5;
					life_hunger = life_hunger - 5;
					[] call life_fnc_hudUpdate;
				};
			};
			_myLastPos = (getPos player select 0) + (getPos player select 1);
		};
	};
};

[] spawn  {
	while{true} do
	{
		waitUntil {(player getVariable "missingOrgan")};
		life_max_health = .50;
		while{(player getVariable "missingOrgan")} do {
			life_thirst =  50;
			life_hunger =  50;
			if(damage player < (1 - life_max_health)) then {player setDamage (1 - life_max_health);};
			"dynamicBlur" ppEffectEnable true;
			"dynamicBlur" ppEffectAdjust [2];
			"dynamicBlur" ppEffectCommit 1;
			sleep 5;
		};
		"dynamicBlur" ppEffectEnable false;
		life_max_health = 1;
	};
};

[] spawn
{
	while {true} do
	{
		private["_damage"];
		sleep 1;
		while {((player distance (getMarkerPos "Warm_Marker") < 250) && (player getVariable["Revive",TRUE]))} do
		{
			if(uniform player == "U_C_Scientist") then
			{
				hint "!!! Tu es dans une zone radioactive !!! Mais ta combinaison te protège";
				sleep 5;
			}else
			{
				hint "!!! ATTENTION TU ES DANS UNE ZONE RADIOACTIVE !!! Tu risque de mourir si tu n'es pas protégé";
				_damage = damage player;
				_damage = _damage + 0.1;
				player setDamage (_damage);
				[] call life_fnc_hudUpdate;
				sleep 5;
			};
		};
	};
}; 