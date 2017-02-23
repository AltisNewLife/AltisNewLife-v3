pb_spielstatus=1;
[["Laser Game","Un joueur vient d'ouvrir un lobby pour une nouvelle partie ! Il se refermera dans 60 secondes !"],"life_fnc_ryn_message",true,false] spawn life_fnc_MP;
sleep 60;

if (count pb_spieler>=2) then {

	pb_spielstatus=2;
	{
		[[2],"life_fnc_pb_response",_x,false] spawn life_fnc_MP;
	} forEach pb_spieler;
	sleep 180;
	_msg = "4 minutes restantes";
	{
		[[1,_msg],"life_fnc_pb_response",_x,false] spawn life_fnc_MP;
	} forEach pb_spieler;
	sleep 60;
	_msg = "3 minutes restantes";
	{
		[[1,_msg],"life_fnc_pb_response",_x,false] spawn life_fnc_MP;
	} forEach pb_spieler;
	sleep 60;
	_msg = "2 minutes restantes";
	{
		[[1,_msg],"life_fnc_pb_response",_x,false] spawn life_fnc_MP;
	} forEach pb_spieler;
	sleep 60;
	_msg = "1 minute restante";
	{
		[[1,_msg],"life_fnc_pb_response",_x,false] spawn life_fnc_MP;
		[[4],"life_fnc_pb_response",_x,false] spawn life_fnc_MP;
	} forEach pb_spieler;
	sleep 60;
	{
		[[3],"life_fnc_pb_response",_x,false] spawn life_fnc_MP;
	} forEach pb_spieler;
	pb_spieler = [];
	pb_spielstatus = 0;
	joinmode = 0;
	publicVariable "joinmode";

} else {

	_msg = "Partie annulée ! Pas assez de joueurs dans le lobby !";
	{
		[[1,_msg],"life_fnc_pb_response",_x,false] spawn life_fnc_MP;
	} forEach pb_spieler;
	pb_spieler = [];
	pb_spielstatus=0;
	joinmode = 0;
	publicVariable "joinmode";

};