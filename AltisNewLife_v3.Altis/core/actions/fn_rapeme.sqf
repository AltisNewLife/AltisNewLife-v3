private["_target","_who","_obj","_caller","_rapesuccessmessages","_rapefailmessages","_success","_randommessage"];
_target = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_caller = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param;
_who = [_this,2,"",[""]] call BIS_fnc_param;
if(isNull _target) exitWith {};
if(isNull _caller) exitWith {};
if(_target != player) exitWith {};
if(_who == "") exitWith {};
_rapesuccessmessages=[
"Vous vous faite violer et vous sentez un gros calibre vous dechirer l'anus",
"Vous vous faite violer et bizarrement vous commencer a aimer ca"
];
_rapefailmessages=[
"Il arrive a rien, il prefere sans doute se faire violer",
"Il es trop moux du slip pour tirer son coup"
];
titleText[format["%1 essaye de vous violer...",_who],"PLAIN"];
[[0,format["%1 est en train de se faire violer !",name player]],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
sleep 3;
_success=random(100);
if (_success < 50) then {
	_unit say3D "punch";
	[[getPlayerUID _caller,name _caller,"261"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
	_randommessage=_rapesuccessmessages call BIS_fnc_selectRandom;
	titleText[format["%1 %2",_who,_randommessage],"PLAIN"];
	hint 'Vous avez ete victime de viol !\n\nVous avez pris cher, votre anus a souffert !';
	[[0,format["Vous avez reussi a violer %1 ! Il ne pourra plus s'asseoir pendant une semaine..", name _target]],"life_fnc_broadcast",_caller,false] spawn life_fnc_MP;
	[] spawn {
	player setdamage ((damage player)+.15);
	player forcewalk true;
	sleep (3 * 60);
	player forcewalk false;
	};
}
else {
	_unit say3D "punch";
	[[getPlayerUID _caller,name _caller,"261A"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
	[[0,format["Vous n'avez pas ete capable de violer %1.. Vous vous etes blesse durant cette tentative..",name _target]],"life_fnc_broadcast",_caller,false] spawn life_fnc_MP;
	[[_caller],"life_fnc_rapefail",_caller,false] spawn life_fnc_MP;
	_randommessage=_rapefailmessages call BIS_fnc_selectRandom;
	titleText[format["%1 %2",_who,_randommessage],"PLAIN"];
};
[] spawn {sleep (3 * 60); player setVariable["raped",FALSE,TRUE];};