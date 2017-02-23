private["_robber","_shop","_kassa","_ui","_progress","_pgText","_cP","_rip","_pos"];
_shop = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_robber = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param;
_action = [_this,2] call BIS_fnc_param;
if(side _robber != civilian) exitWith { hint "Tu ne peux pas voler cette station!" };
if(_robber distance _shop > 5) exitWith { hint "Tu dois être à moins de 5 mètres pour pouvoir voler cette sation" };
if !(_kassa) then { _kassa = 500; };
if (_rip) exitWith { hint "Vol déjà en cours!" };
if (vehicle player != _robber) exitWith { hint "Sortez de votre vehicule!" };
if !(alive _robber) exitWith {};
_cops = (west countSide playableUnits);

if(_cops < 2) exitWith 
{
	[[_vault,-1],"disableSerialization;",false,false] spawn life_fnc_MP; 
	hint "Il n'y a pas assez de policier pour braquer le magasin !";
};

if (currentWeapon _robber == "") exitWith { hint "Tu vas faire peur a personne sans arme !" };
if (_kassa == 0) exitWith { hint "Il n'y a pas d'argent dans la caisse!" };
_rip = true;
_kassa = 500 + round(random 1000);
_shop removeAction _action;
_shop switchMove "AmovPercMstpSsurWnonDnon";
_chance = random(100);
if(_chance >= 85) then { hint "L'alarme s'est activé, la police est alerté !"; [[1,format["ALARME! - Station essence: %1 est braqué!", _shop]],"life_fnc_broadcast",west,false] spawn life_fnc_MP; };
disableSerialization;
5 cutRsc ["life_progress","PLAIN"];
_ui = uiNameSpace getVariable "life_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["Braquage en cours, restez près de la station (10m) (1%1)...","%"];
_progress progressSetPosition 0.01;
_cP = 0.01;
if(_rip) then
{
while{true} do
{
sleep 0.85;
_cP = _cP + 0.01;
_progress progressSetPosition _cP;
_pgText ctrlSetText format["Braquage en cours, restez près de la station (10m) (%1%2)...",round(_cP * 100),"%"];
_Pos = position player; // by ehno: get player pos
				                _marker = createMarker ["Marker200", _Pos]; 
				                "Marker200" setMarkerColor "ColorRed";
				                "Marker200" setMarkerText "!ATTENTION! braquage !ATTENTION!";
				                "Marker200" setMarkerType "mil_warning";			
if(_cP >= 1) exitWith {};
if(_robber distance _shop > 10.5) exitWith { };
if!(alive _robber) exitWith {};
};
if!(alive _robber) exitWith { _rip = false; };
if(_robber distance _shop > 10.5) exitWith { deleteMarker "Marker200"; _shop switchMove ""; hint "Tu dois rester a moins de 10m pour voler la caisse! - Maintenant la caisse est barrée."; 5 cutText ["","PLAIN"]; _rip = false; };
5 cutText ["","PLAIN"];
titleText[format["Vous avez volé %1€, maintenant sauvez vous avant que la police n'arrive!",[_kassa] call life_fnc_numberText],"PLAIN"];
deleteMarker "Marker200";
argent_liquide = argent_liquide + _kassa;
_rip = false;
life_use_atm = false;
sleep (30 + random(180));
life_use_atm = true;
if!(alive _robber) exitWith {};
[[getPlayerUID _robber,name _robber,"211"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
};
sleep 300;
_action = _shop addAction["Braquage de station essence",life_fnc_robShops];	
_shop switchMove "";