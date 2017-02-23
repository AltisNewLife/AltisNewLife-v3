#include <macro.h>
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
ctrlSetText[3103,"Medecin"];
_ret = [];
switch (_filter) do
{
	case 0:
	{
		_ret pushBack ["U_C_WorkerCoveralls","Uniforme medecin",2];
	};
	case 1:
	{
		_ret = 
		[
			["H_Cap_red",nil,25]
		];
	};
	case 2:
	{
		_ret = 
		[
			["G_Shades_Black",nil,2],
			["G_Shades_Blue",nil,2],
			["G_Sport_Blackred",nil,2],
			["G_Sport_Checkered",nil,2],
			["G_Sport_Blackyellow",nil,2],
			["G_Sport_BlackWhite",nil,2],
			["G_Aviator",nil,7],
			["G_Squares",nil,1]
		];
	};
	case 3:
	{
	};
	case 4:
	{
		_ret =
		[
			["B_Kitbag_cbr",nil,80],
			["B_FieldPack_cbr",nil,50],
			["B_AssaultPack_cbr",nil,70],
			["B_Carryall_cbr",nil,350]
		];
	};
};
_ret;