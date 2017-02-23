if (isMultiplayer) then {
	["BIS_fnc_initMultiplayer"] call bis_fnc_startLoadingScreen;
	BIS_fnc_MP_packet = [];
	"BIS_fnc_MP_packet" addPublicVariableEventHandler {_this call BIS_fnc_MPexec};
	waituntil {!isnil "bis_functions_mainscope"};
	_queue = bis_functions_mainscope getvariable ["BIS_fnc_MP_queue",[]];
	{
		_varValue = +_x;
		_mode = 	[_varValue,0,[0]] call bis_fnc_paramin;
		_params = 	[_varValue,1,[]] call bis_fnc_paramin;
		_functionName =	[_varValue,2,"",[""]] call bis_fnc_paramin;
		_target =	[_varValue,3,-1,[objnull,true,0,[],sideUnknown,grpnull]] call bis_fnc_paramin;
		_isPersistent =	[_varValue,4,false,[false]] call bis_fnc_paramin;
		_isCall =	[_varValue,5,false,[false]] call bis_fnc_paramin;
		switch (typename _target) do {
			case (typename objnull): {
				if (local _target) then {
					["BIS_fnc_MP_packet",[_mode,_params,_functionName,_target,false,_isCall]] call BIS_fnc_MPexec;
				};
			};
			case (typename true): {
				if (_target) then {
					["BIS_fnc_MP_packet",[_mode,_params,_functionName,_target,false,_isCall]] call BIS_fnc_MPexec; 
				} else {
					[_params,_functionName,_target,false,_isCall] call BIS_fnc_MP;
				};
			};
			case (typename grpnull);
			case (typename sideUnknown): {
				["BIS_fnc_MP_packet",[_mode,_params,_functionName,_target,false,_isCall]] call BIS_fnc_MPexec;
			};
			case (typename 0): {
			};
		};
	} foreach _queue;
	["BIS_fnc_initMultiplayer"] call bis_fnc_endLoadingScreen;
};