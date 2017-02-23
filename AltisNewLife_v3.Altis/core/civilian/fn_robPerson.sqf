private["_robber"];
_robber = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _robber) exitWith {};
if(argent_liquide > 0) then
{
	[[argent_liquide],"life_fnc_robReceive",_robber,false] spawn life_fnc_MP;
	[[getPlayerUID _robber,_robber getVariable["realname",name _robber],"211"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
	[[0,format["%1 a volé %3€ à %2",_robber getVariable["realname",name _robber],profileName,[argent_liquide] call life_fnc_numberText]],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
	argent_liquide = 0;
}
	else
{
	[[1,format["%1 n'a pas d'argent...",profileName]],"life_fnc_broadcast",_robber,false] spawn life_fnc_MP;
};