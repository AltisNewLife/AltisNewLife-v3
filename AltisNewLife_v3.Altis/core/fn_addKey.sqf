private["_allVeh","_pUID"];
sleep 5;
_allVeh = allMissionObjects "Car" + allMissionObjects "Air" + allMissionObjects "Ship";
_name = name player;
{
	_owners = _x getVariable ["vehicle_info_owners",[]];
	_index = [_name,_owners] call TON_fnc_index;

	if(!(_index == -1)) then 
	{
	    life_vehicles pushBack _x;
		//life_vehicles set[count life_vehicles, _x];
	};	
} foreach _allVeh;