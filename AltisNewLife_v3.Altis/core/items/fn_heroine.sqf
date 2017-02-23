closeDialog 0;
hint "Je crois que je pars en sucette...";
[[0,format["%1 se pique à l'heroine comme un toxico !!!",name player]],"life_fnc_broadcast",civilian,false] spawn life_fnc_MP;
[[0,format["ATTENTION: Des toxicomanes se piquent en pleine rue ! Mais que fais la police ? -Anonyme",name player]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
private["_force"];
for "_i" from 0 to 200 do
{
	_force = random 15;
	"chromAberration" ppEffectEnable true;
	"chromAberration" ppEffectAdjust [_force / 24, _force / 24, false];
	"chromAberration" ppEffectCommit (0.3 + random 0.1);
	waituntil {ppEffectCommitted "chromAberration"};
	sleep 0.02;
};
"chromAberration" ppEffectEnable false;