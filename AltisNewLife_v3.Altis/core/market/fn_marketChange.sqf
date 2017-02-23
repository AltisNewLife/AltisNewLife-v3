private["_rand","_modifier","_price", "_globalchange","_defaultprice","_shortname","_difference"];
_rand = [0,200] call life_fnc_randomRound;
diag_log "[MARKET] marketChange called.";
switch(true) do
{
	case (_rand <= 20): 
	{
		{
			if(random(10) <= 4) then
			{
				_modifier = [-10,10] call life_fnc_randomRound;
				if(_modifier < 0) then
				{
					[_x select 0, -(_modifier), true] call life_fnc_marketSell; 
				}
				else
				{
					[_x select 0, _modifier, true] call life_fnc_marketBuy; 
				};
			};
		}
		foreach life_market_prices;
	};
	case (_rand <= 30):
	{
		[[0,"BOURSE INFO : Le recyclage des dechets toxique se porte bien"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		["uranium", [5,10] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		diag_log "+Bourse+ Event Uranium";
	};
	case (_rand <= 50):
	{
		[[0,"BOURSE INFO : Les investisseurs perdent confiance aux dollars !"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		["lingotor", [5,10] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["diamondc", [5,10] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		diag_log "+Bourse+ Event Or+Diamant";
	};	
	case (_rand <= 60):
	{
		[[0,"INFO BOURSE : Le business des drogues se portent bien"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		["marijuana", [5,10] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["cocainep", [5,10] call life_fnc_randomRound, true] call life_fnc_marketBuy;
		["heroinp", [5,10] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["meth97", [5,10] call life_fnc_randomRound, true] call life_fnc_marketBuy; 	
		diag_log "+Bourse+ Event Drogue";
	};
	case (_rand <= 70):
	{
		[[0,"INFO BOURSE : Un pétrolier vient de couler !"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		["oilp", [10,20] call life_fnc_randomRound, true] call life_fnc_marketBuy;
		["cement", [10,20] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		diag_log "+Bourse+ Event Petrole";
	};
	case (_rand <= 90): 
	{
		[[0,"INFO BOURSE : On manque de materiaux de construction"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		["cement", [10,20] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["iron_r", [10,20] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["glass", [5,15] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["copper_r", [5,10] call life_fnc_randomRound, true] call life_fnc_marketBuy; 		
		["platinep", [5,10] call life_fnc_randomRound, true] call life_fnc_marketBuy; 				
		diag_log "+Bourse+ Event Materiaux";
	};
	case (_rand <= 100):
	{
		[[0,"BOURSE INFO : L'industrie électronique a besoin de metaux !"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		["lingotor", [5,10] call life_fnc_randomRound, true] call life_fnc_marketBuy;
		["copper_r", [5,10] call life_fnc_randomRound, true] call life_fnc_marketBuy; 			
		["iron_r", [5,10] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["platinep", [5,10] call life_fnc_randomRound, true] call life_fnc_marketBuy; 			
		diag_log "+Bourse+ Event Metaux";
	};
	default //market change: default version
	{
		//diag_log format["[MARKET] marketChange did nothing. Rand=%1", _rand];
		{
			//Get default price
			_defaultprice = 0;
			_shortname = _x select 0;
			_price = _x select 1;
			_globalchange = _x select 2;
		
			{
				if((_x select 0) == _shortname) exitWith
				{
					_defaultprice = _x select 1;
				};
			}
			foreach life_market_resources;
			
			if(_defaultprice > 0) then
			{
				_difference = _defaultprice - _price; //Defaultprice - current price
				_modifier = _difference * (random 0.4);
				_modifier = round _modifier;			
				diag_log format["+Bourse+ Modif valeur pour : %1 de %2 a %3 par %4", _shortname, _price, (_price + _modifier), _modifier];		
				_price = _price + _modifier;
				_globalchange = _globalchange + _modifier;			
				//New price arr
				life_market_prices set [_forEachIndex, [_shortname, _price,_globalchange,_modifier] ]; //set raw values		
			}
			else
			{
				diag_log format["+Bourse+ Mauvaise valeur pour %1", _shortname];
			};
		}
		foreach life_market_prices;
	};
};
publicVariable "life_market_prices";