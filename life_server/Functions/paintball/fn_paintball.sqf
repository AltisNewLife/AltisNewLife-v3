private["_uid"];
_uid = [_this,0,"",[""]] call BIS_fnc_param;

if (count pb_spieler==0&&pb_spielstatus==0) then {
	[[],"TON_fnc_game",false,false] spawn life_fnc_MP;
	pb_spielstatus = 1;
};

if (pb_spielstatus==1) then {
	_uidarr = [_uid];
	_geld = [_this,1,0,[0]] call BIS_fnc_param;
	if (_geld>=500) then {
		pb_spieler = pb_spieler + _uidarr;
		[[5,"Vous vous etes inscrit pour la prochaine partie !"],"life_fnc_pb_response",_uid,false] spawn life_fnc_MP;
	} else {
		[[1,"Vous n'avez pas 500€ sur vous !"],"life_fnc_pb_response",_uid,false] spawn life_fnc_MP;
	};
};

if ((pb_spielstatus==2&&count pb_spieler>=2)||(count pb_spieler==pb_maxspieler)) then {
	[[1,"Malheureusement le jeu a deja commence ou la partie est deja complete, merci de refaire un essai plus tard !"],"life_fnc_pb_response",_uid,false] spawn life_fnc_MP;
};