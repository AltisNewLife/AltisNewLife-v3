closeDialog 0;
hint "Allez ca me fera pas de mal un peu de coke dans le pif";
[[0,format["%1 sniff une bonne grosse ligne de coke !",name player]],"life_fnc_broadcast",civilian,false] spawn life_fnc_MP;
[[0,format["ATTENTION: Des civils sniff de plus en plus de coke, notre ile a besoin que vous arretez tous ces drogués ! -Anonyme",name player]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;

private["_force"];
for "_i" from 0 to 500 do
{
	_force = random 15;
	player setFatigue 0;
	"chromAberration" ppEffectEnable true;
	"chromAberration" ppEffectAdjust [_force / 50, _force / 50, false];
	"chromAberration" ppEffectCommit (0.3 + random 0.1);
	"dynamicBlur" ppEffectEnable true; // enables ppeffect
	"dynamicBlur" ppEffectAdjust [1]; // intensity of blur
	"dynamicBlur" ppEffectCommit 15; // time till vision is fully blurred
	waituntil {ppEffectCommitted "chromAberration"};
	sleep 0.02;
};
player setFatigue 0;
"dynamicBlur" ppEffectEnable true; // enables ppeffect
"dynamicBlur" ppEffectAdjust [0]; // enables normal vision
"dynamicBlur" ppEffectCommit 15; // time it takes to normal
"chromAberration" ppEffectEnable false;