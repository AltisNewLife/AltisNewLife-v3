private["_method"];
if(argent_liquide < 50) then
{
	if(compte_banque < 50) exitWith {_method = 0;};
	_method = 2;
}
	else
{
	_method = 1;
};
switch (_method) do
{
	case 0: {hint "Vous n'avez pas 50€ dans votre compte"};
	case 1: {vehicle player setDamage 0; argent_liquide = argent_liquide - 50; hint "Vous avez repare votre vehicule pour 50€";};
	case 2: {vehicle player setDamage 0; compte_banque = compte_banque - 50; hint "Vous avez repare votre vehicule pour 50€";};
};