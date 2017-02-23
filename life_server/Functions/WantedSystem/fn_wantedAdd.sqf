private["_uid","_type","_index","_data","_crimes","_val","_customBounty","_name"];
_uid = [_this,0,"",[""]] call BIS_fnc_param;
_name = [_this,1,"",[""]] call BIS_fnc_param;
_type = [_this,2,"",[""]] call BIS_fnc_param;
_customBounty = [_this,3,-1,[0]] call BIS_fnc_param;
if(_uid == "" OR _type == "" OR _name == "") exitWith {};
switch(_type) do
{
	case "187V": {_type = ["Homicide avec vehicule",2000]};
	case "187": {_type = ["Homicide",5000]};
	case "901": {_type = ["Evasion de prison",2500]};
    case "225": {_type = ["Exces de vitesse",500]}; 
    case "225E": {_type = ["Chauffard de la route",1000]}; 
	case "261": {_type = ["Viol",2000]}; 
	case "261A": {_type = ["Tentative de viol",1000]};
	case "215": {_type = ["Tentative de vol de vehicule",500]};
	case "213": {_type = ["Utilisation illégales d'explosifs",5000]};
	case "211": {_type = ["Vol",200]};
	case "207": {_type = ["Kidnapping",2000]};
	case "207A": {_type = ["Tentative de kidnapping",1000]};
	case "920": {_type = ["Esclavagisme",3000]};	
	case "390": {_type = ["Ivresse publique",200]};
	case "487": {_type = ["Vol de voiture",500]};
	case "488": {_type = ["Infraction mineure",100]};
	case "480": {_type = ["Delit de fuite",200]};
	case "481": {_type = ["Possession de drogues",500]};
	case "482": {_type = ["Intention de distribuer",1000]};
	case "483": {_type = ["Trafic de drogue",4000]};
	case "485": {_type = ["Tentative de crochetage",250]};
	case "486": {_type = ["Crochetage de menotte",500]};
	case "459": {_type = ["Cambriolage",1000]};
	case "800": {_type = ["Torture",2500]};	
	case "902": {_type = ["Aide evasion prisonnier",7500]};
	case "919": {_type = ["Vol d'organe",2000]};	
    case "1": {_type = ["Homicide avec vehicule 2000€",2000]};
    case "2": {_type = ["Homicide 5000€",5000]};
    case "3": {_type = ["Evasion de prison 2500€",2500]};
    case "4": {_type = ["Exces de vitesse 1000€",1000]};
    case "5": {_type = ["Chauffard de la route 1000€",1000]};
    case "6": {_type = ["Viol 2000€",2000]};
    case "7": {_type = ["Kidnapping 2000€",2000]};
    case "8": {_type = ["Tentative de kidnapping 1000€",1000]};
    case "9": {_type = ["Ivresse publique 200€",200]};
    case "10": {_type = ["Vol de voiture 500€",500]};
    case "11": {_type = ["Infraction mineure 100€",100]};
    case "12": {_type = ["Delit de fuite 200€",200]};
    case "13": {_type = ["Possession de drogues 500€",500]};
    case "14": {_type = ["Intention de distribuer 1000€",1000]};
    case "15": {_type = ["Trafic de drogue 4000€",4000]};
    case "16": {_type = ["Cambriolage 1000€",1000]};
    case "17": {_type = ["Vol d'organe 2000€",2000]};
	default {_type = [];};
};
if(count _type == 0) exitWith {};
if(_customBounty != -1) then {_type set[1,_customBounty];};
_index = [_uid,life_wanted_list] call TON_fnc_index;
if(_index != -1) then
{
	_data = life_wanted_list select _index;
	_crimes = _data select 2;
	_crimes pushBack (_type select 0);
	_val = _data select 3;
	life_wanted_list set[_index,[_name,_uid,_crimes,(_type select 1) + _val]];
}
	else
{
	life_wanted_list pushBack [_name,_uid,[(_type select 0)],(_type select 1)];
};