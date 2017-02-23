/*
	File: fn_dropItemsFloor.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Try tu put item on the floor.
*/
private["_obj","_unit","_item","_value","_data","_data2","_death","_total","_weight","_exit","_ind"];
_unit = _this select 0;
_death = _this select 1;
_data = "";
_value = "";
_exit = false;
if (_death) then {
	_data2 = life_inv_items + ["argent_liquide"];
} else {
	_data = lbData[2005,(lbCurSel 2005)];
	if (_data == "") exitWith{hint "Vous devez choisir un objet.";_exit = true;};
	_data2 = [_data,0] call life_fnc_varHandle;
	_data2 = [_data2];
	if(life_is_processing) exitWith {hint "Vous êtes en train de process petit malin.";_exit = true;};
	if(player != vehicle player) exitWith {titleText["Vous ne pouvez pas jeter un objet lorsque vous êtes dans un véhicule.","PLAIN"];_exit = true;};
	if(side player != west) then {
		//_ind = [_data,life_illegal_items] call TON_fnc_index;
		_ind = [_data,life_illegal_items] call TON_fnc_index;
		if(_ind != -1 && ([west,getPos player,100] call life_fnc_nearUnits)) exitWith {titleText["C'est un objet illégal et les flics sont à proximité, vous ne pouvez jetez pas cette preuve","PLAIN"];_exit = true;};
	};
};
if(_exit) exitWith {};
if (count _data2 < 1) exitWith{};

if((time - life_action_delay) < 3 && !(_death)) exitWith {hint "Vous ne pouvez pas lacher des objets aussi rapidement. Essayez de les lacher par paquet!"};
life_action_delay = time;

{
	_item = _x;
	_var = [_item,1] call life_fnc_varHandle;
	_total = missionNamespace getVariable _item;
	if (_death) then {
		_value = missionNamespace getVariable _item;
		if(_item!="argent_liquide") then {
			[false,_var,_value] call life_fnc_handleInv;
		};
	} else {
		_value = ctrlText 2010;
		if(parseNumber(_value) <= 0) exitWith {hint "Vous avez besoin de rentrer le montant que vous voulez lacher.";_exit = true;};
		if(!([false,_var,(parseNumber _value)] call life_fnc_handleInv)) exitWith {hint "Vous ne pouvez pas lacher autant d'objet, peut-être que vous n'en avez pas assez?";_exit = true;};
		_value = (parseNumber _value);
	};
	if(_exit) exitWith {};
	_weight = ([_var] call life_fnc_itemWeight) * _value;
	
	switch(_item) do
	{
		case "life_inv_water":
		{
			if(_value > 0) then
			{
				_pos = _unit modelToWorld[0,3,0];
				_pos = [_pos select 0, _pos select 1, 0];
				_obj = "Land_BottlePlastic_V2_F" createVehicle _pos;
				_obj setPos _pos;
				_obj setVariable["item",[_var,_value],true];
			};
		};
		
		case "life_inv_tbacon":
		{
			if(_value > 0) then
			{
				_pos = _unit modelToWorld[0,3,0];
				_pos = [_pos select 0, _pos select 1, 0];
				_obj = "Land_TacticalBacon_F" createVehicle _pos;
				_obj setPos _pos;
				_obj setVariable["item",[_var,_value],true];
			};
		};
		
		case "life_inv_redgull":
		{
			if(_value > 0) then
			{
				_pos = _unit modelToWorld[0,3,0];
				_pos = [_pos select 0, _pos select 1, 0];
				_obj = "Land_Can_V3_F" createVehicle _pos;
				_obj setPos _pos;
				_obj setVariable["item",[_var,_value],true];
			};
		};
		
		case "life_inv_fuelE":
		{
			if(_value > 0) then
			{
				_pos = _unit modelToWorld[0,3,0];
				_pos = [_pos select 0, _pos select 1, 0];
				_obj = "Land_CanisterFuel_F" createVehicle _pos;
				_obj setPos _pos;
				_obj setVariable["item",[_var,_value],true];
			};
		};
		
		case "life_inv_fuelF":
		{
			if(_value > 0) then
			{
				_pos = _unit modelToWorld[0,3,0];
				_pos = [_pos select 0, _pos select 1, 0];
				_obj = "Land_CanisterFuel_F" createVehicle _pos;
				_obj setPos _pos;
				_obj setVariable["item",[_var,_value],true];
			};
		};
		
		case "life_inv_coffee":
		{
			if (_value > 0) then
			{
				_pos = _unit modelToWorld[0,3,0];
				_pos = [_pos select 0, _pos select 1, 0];
				_obj = "Land_Can_V3_F" createVehicle _pos;
				_obj setPos _pos;
				_obj setVariable["item",[_var,_value],true];
			};
		};
		
		case "life_inv_battery":
		{
			if (_value > 0) then
			{
				_pos = _unit modelToWorld[0,3,0];
				_pos = [_pos select 0, _pos select 1, 0];
				_obj = "Land_Battery_F" createVehicle _pos;
				_obj setPos _pos;
				_obj setVariable["item",[_var,_value],true];
			};
		};
		
		case "life_inv_cigarette":
		{
			if (_value > 0) then
			{
				_pos = _unit modelToWorld[0,3,0];
				_pos = [_pos select 0, _pos select 1, 0];
				_obj = "Land_Matches_F" createVehicle _pos;
				_obj setPos _pos;
				_obj setVariable["item",[_var,_value],true];
			};
		};
		
		case "life_inv_pepsi":
		{
			if (_value > 0) then
			{
				_pos = _unit modelToWorld[0,3,0];
				_pos = [_pos select 0, _pos select 1, 0];
				_obj = "Land_Can_V1_F" createVehicle _pos;
				_obj setPos _pos;
				_obj setVariable["item",[_var,_value],true];
			};
		};
		case "life_inv_sprite":
		{
			if (_value > 0) then
			{
				_pos = _unit modelToWorld[0,3,0];
				_pos = [_pos select 0, _pos select 1, 0];
				_obj = "Land_Can_V1_F" createVehicle _pos;
				_obj setPos _pos;
				_obj setVariable["item",[_var,_value],true];
			};
		};
		case "life_inv_meth97":
		{
			if (_value > 0) then
			{
				_pos = _unit modelToWorld[0,3,0];
				_pos = [_pos select 0, _pos select 1, 0];
				_obj = "Land_Antibiotic_F" createVehicle _pos;
				_obj setPos _pos;
				_obj setVariable["item",[_var,_value],true];
			};
		};
		case "life_inv_zipties":
		{
			if (_value > 0) then
			{
				_pos = _unit modelToWorld[0,3,0];
				_pos = [_pos select 0, _pos select 1, 0];
				_obj = "Land_MetalWire_F" createVehicle _pos;
				_obj setPos _pos;
				_obj setVariable["item",[_var,_value],true];
			};
		};
		case "life_inv_cokep":
		{
			if (_value > 0) then
			{
				_pos = _unit modelToWorld[0,3,0];
				_pos = [_pos select 0, _pos select 1, 0];
				_obj = "Land_PowderedMilk_F" createVehicle _pos;
				_obj setPos _pos;
				_obj setVariable["item",[_var,_value],true];
			};
		};
		case "life_inv_boltcutter":
		{
			if (_value > 0) then
			{
				_pos = _unit modelToWorld[0,3,0];
				_pos = [_pos select 0, _pos select 1, 0];
				_obj = "Land_Pliers_F" createVehicle _pos;
				_obj setPos _pos;
				_obj setVariable["item",[_var,_value],true];
			};
		};
		case "life_inv_lockpick":
		{
			if (_value > 0) then
			{
				_pos = _unit modelToWorld[0,3,0];
				_pos = [_pos select 0, _pos select 1, 0];
				_obj = "Land_CanOpener_F" createVehicle _pos;
				_obj setPos _pos;
				_obj setVariable["item",[_var,_value],true];
			};
		};	
		case "life_inv_pickaxe":
		{
			if (_value > 0) then
			{
				_pos = _unit modelToWorld[0,3,0];
				_pos = [_pos select 0, _pos select 1, 0];
				_obj = "Land_Shovel_F" createVehicle _pos;
				_obj setPos _pos;
				_obj setVariable["item",[_var,_value],true];
			};
		};	
		case "life_inv_mauer":
		{
			if (_value > 0) then
			{
				_pos = _unit modelToWorld[0,3,0];
				_pos = [_pos select 0, _pos select 1, 0];
				_obj = "RoadBarrier_F" createVehicle _pos;
				_obj setPos _pos;
				_obj setVariable["item",[_var,_value],true];
			};
		};	
		case "life_inv_sac":
		{
			if (_value > 0) then
			{
				_pos = _unit modelToWorld[0,3,0];
				_pos = [_pos select 0, _pos select 1, 0];
				_obj = "RoadBarrier_F" createVehicle _pos;
				_obj setPos _pos;
				_obj setVariable["item",[_var,_value],true];
			};
		};	
		case "life_inv_skull":
		{
			if (_value > 0) then
			{
				_pos = _unit modelToWorld[0,3,0];
				_pos = [_pos select 0, _pos select 1, 0];
				_obj = "Land_HumanSkull_F" createVehicle _pos;
				_obj setPos _pos;
				_obj setVariable["item",[_var,_value],true];
			};
		};	
		case "life_inv_skullp":
		{
			if (_value > 0) then
			{
				_pos = _unit modelToWorld[0,3,0];
				_pos = [_pos select 0, _pos select 1, 0];
				_obj = "Land_HumanSkull_F" createVehicle _pos;
				_obj setPos _pos;
				_obj setVariable["item",[_var,_value],true];
			};
		};			
		case "life_inv_scalpel":
		{
			if (_value > 0) then
			{
				_pos = _unit modelToWorld[0,3,0];
				_pos = [_pos select 0, _pos select 1, 0];
				_obj = "Land_PenBlack_F" createVehicle _pos;
				_obj setPos _pos;
				_obj setVariable["item",[_var,_value],true];
			};
		};
		case "life_inv_kit":
		{
			if (_value > 0) then
			{
				_pos = _unit modelToWorld[0,3,0];
				_pos = [_pos select 0, _pos select 1, 0];
				_obj = "Land_Hammer_F" createVehicle _pos;
				_obj setPos _pos;
				_obj setVariable["item",[_var,_value],true];
			};
		};	
		case "life_inv_bottles":
		{
			if (_value > 0) then
			{
				_pos = _unit modelToWorld[0,3,0];
				_pos = [_pos select 0, _pos select 1, 0];
				_obj = "Land_BottlePlastic_V2_F" createVehicle _pos;
				_obj setPos _pos;
				_obj setVariable["item",[_var,_value],true];
			};
		};			
		case "life_inv_bottledwhiskey":
		{
			if (_value > 0) then
			{
				_pos = _unit modelToWorld[0,3,0];
				_pos = [_pos select 0, _pos select 1, 0];
				_obj = "Land_BottlePlastic_V1_F" createVehicle _pos;
				_obj setPos _pos;
				_obj setVariable["item",[_var,_value],true];
			};
		};				
		case "life_inv_bottledbeer":
		{
			if (_value > 0) then
			{
				_pos = _unit modelToWorld[0,3,0];
				_pos = [_pos select 0, _pos select 1, 0];
				_obj = "Land_BottlePlastic_V1_F" createVehicle _pos;
				_obj setPos _pos;
				_obj setVariable["item",[_var,_value],true];
			};
		};				
		case "life_inv_bottledshine":
		{
			if (_value > 0) then
			{
				_pos = _unit modelToWorld[0,3,0];
				_pos = [_pos select 0, _pos select 1, 0];
				_obj = "Land_BottlePlastic_V1_F" createVehicle _pos;
				_obj setPos _pos;
				_obj setVariable["item",[_var,_value],true];
			};
		};				
		case "life_inv_wine":
		{
			if (_value > 0) then
			{
				_pos = _unit modelToWorld[0,3,0];
				_pos = [_pos select 0, _pos select 1, 0];
				_obj = "Land_BottlePlastic_V1_F" createVehicle _pos;
				_obj setPos _pos;
				_obj setVariable["item",[_var,_value],true];
			};
		};				
		case "life_inv_gpstracker":
		{
			if (_value > 0) then
			{
				_pos = _unit modelToWorld[0,3,0];
				_pos = [_pos select 0, _pos select 1, 0];
				_obj = "Land_MobilePhone_smart_F" createVehicle _pos;
				_obj setPos _pos;
				_obj setVariable["item",[_var,_value],true];
			};
		};	
		case "life_inv_cb":
		{
			if (_value > 0) then
			{
				_pos = _unit modelToWorld[0,3,0];
				_pos = [_pos select 0, _pos select 1, 0];
				_obj = "Land_MobilePhone_smart_F" createVehicle _pos;
				_obj setPos _pos;
				_obj setVariable["item",[_var,_value],true];
			};
		};			
		case "argent_liquide":
		{
			if(_value > 0) then
			{
				_pos = _unit modelToWorld[0,3,0];
				_pos = [_pos select 0, _pos select 1, 0];
				_obj = "Land_Money_F" createVehicle _pos;
				_obj setVariable["item",["money",_value],true];
				_obj setPos _pos;
				["cash","set",(_total - _value)] call life_fnc_updateCash;
			};
		};
		
		
		default
		{
			if(_value > 0) then
			{
				_pos = _unit modelToWorld[0,3,0];
				_pos = [_pos select 0, _pos select 1, 0];
				_obj = "Land_Suitcase_F" createVehicle _pos;
				//[[_obj],"life_fnc_simDisable",nil,true] spawn BIS_fnc_mp;
				_obj setPos _pos;
				_obj setVariable["item",[_var,_value],true];
				//missionNamespace setVariable[_x,(_total - _value)];
				//life_carryWeight = life_carryWeight - _weight;
			};
		};
	};
	if (_value > 0) then {_obj setVariable["idleTime",time,true];};
} foreach (_data2);

[] call life_fnc_p_updateMenu;