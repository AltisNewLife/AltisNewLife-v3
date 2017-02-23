private["_packet","_array","_flag","_civPosition"];
_civPosition = getPos player;
_packet = [getPlayerUID player,(player getVariable["realname",name player]),playerSide,argent_liquide,compte_banque];
_array = [];
_flag = switch(playerSide) do {case west: {"cop"}; case civilian: {"civ"}; case independent: {"med"}; case east: {"adac"};};
{
	if(_x select 1 == _flag) then
	{
		_array pushBack [_x select 0,(missionNamespace getVariable (_x select 0))];
	};
} foreach life_licenses;
_packet pushBack _array;

[] call life_fnc_saveGear;
_packet pushBack life_gear;
switch (playerSide) do {
	//case west: {
		//[] call life_fnc_saveGear;
		//_packet set[count _packet,cop_gear];};
	case civilian: {
		//[] call life_fnc_civFetchGear;
		//_packet set[count _packet,civ_gear];
		_packet pushBack life_is_arrested;
		_packet pushBack _civPosition;
		_packet pushBack life_is_alive;
	};
	//case independent: {
		//[] call life_fnc_medicSaveGear;
		//_packet set[count _packet,med_gear];};
	case east: {
		[] call life_fnc_adacSaveGear;
		_packet pushBack adac_gear;
		};
};
[_packet,"DB_fnc_updateRequest",false,false] spawn life_fnc_MP;