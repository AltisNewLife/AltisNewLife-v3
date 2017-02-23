private["_unit","_item"];
_unit = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_container = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param;
_item = [_this,2,"",[""]] call BIS_fnc_param;
if(isNull _unit OR _item == "") exitWith {}; //Bad thingies?
switch(playerSide) do
{
	case west: {if(_item in ["U_B_CombatUniform_mcam","U_B_CTRG_1","U_B_CTRG_3","U_Rangemaster","U_B_CombatUniform_mcam_vest"]) then {[] call life_fnc_copUniSet;};
	case civilian: {if(_item in ["U_I_CombatUniform","U_C_WorkerCoveralls","U_C_Scientist","U_B_CombatUniform_mcam_ves","U_B_CombatUniform_mcam","U_MillerBody","U_C_Poor_2"]) then {[] call life_fnc_copUniSet;};	
	case independent: {if(_item in ["U_C_WorkerCoveralls"]) then {[] call life_fnc_copUniSet;};
	case east: {if(_item in ["U_C_WorkerCoveralls","U_B_Wetsuit","U_Rangemaster"]) then {[] call life_fnc_copUniSet;};	
};