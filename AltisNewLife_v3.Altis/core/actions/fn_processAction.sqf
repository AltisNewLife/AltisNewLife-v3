private["_vendor","_type","_itemInfo","_oldItem","_oldItem2","_newItem","_cost","_upp","_hasLicense","_itemName","_oldVal","_oldVal2","_ui","_progress","_pgText","_cP","_error"];
_vendor = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_type = [_this,3,"",[""]] call BIS_fnc_param;
if(isNull _vendor OR _type == "" OR (player distance _vendor > 10)) exitWith {};
_error = false;
_itemInfo = switch (_type) do
{
	case "oil": {["oilu","oilp",100,"Raffinage du pétrole",false];};
	case "diamond": {["diamond","diamondc",150,"Purification des diamants",false]};
	case "heroin": {["heroinu","heroinp",200,"Fabrication d'héroïne",false]};
	case "copper": {["copperore","copper_r",50,"Fonte du cuivre",false]};
	case "iron": {["ironore","iron_r",50,"Fonte du fer",false]};
	case "sand": {["sand","glass",50,"Traîtement du sable",false]};
	case "salt": {["salt","salt_r",50,"Raffinage du Sel",false]};
	case "cocaine": {["cocaine","cocainep",250,"Fabrication de cocaïne",false]};
    case "uranium1": {["uranium1","uranium2",500,"Nettoyage de l'Uranium",false]};
    case "uranium4": {["uranium4","uranium",500,"Sécher l'Uranium",false]};
	case "skull": {["skull","skullp",100,"Restauration d'une antiquité",false]};
	case "marijuana": {["cannabis","marijuana",150,"Fabrication de weed",false]};
	case "cement": {["rock","cement",50,"Mixage du ciment",false]};
	case "glassArt": {["glass","bottle",50,"Fabrication de bouteilles",false]};
    case "grapes": {["grapes","wine",50,"Fabrication de vin",false]};
	case "mash": {["water","mash",50,"Mixer les grains",true,"cornmeal",false]};
	case "whiskey": {["yeast","whiskey",100,"Fermentation du Whisky",true,"rye",false]};
	case "beer": {["yeast","beerp",100,"Brassage de la biere",true,"hops",false]};
	case "moonshine": {["yeast","moonshine",250,"Transformation en Moonshine",true,"mash"]};
	case "bottledshine": {["moonshine","bottledshine",250,"Bouteille de Moonshine",true,"bottles"]};
	case "bottledbeer": {["beerp","bottledbeer",250,"Bouteille de Biere",true,"bottles"]};
	case "bottledwhiskey": {["whiskey","bottledwhiskey",250,"Bouteille de Whisky",true,"bottles"]};
    case "lingot": {["orr","lingotor",150,"Fonte de l'or",false]};
    case "tobacco": {["tobacco","cigarette",0,"Roulage de clope",false]};
	case "platine": {["osmium","platinep",100,"Traitement de l'alliage",true,"palladium"]};
	case "uranium2": {["uranium2","uranium3",500,"Dissolution Uranium Militaire",true,"puranium"]};
	default {[]};
};
if(count _itemInfo == 0) exitWith {};
_2var = _itemInfo select 4;  // true if process action is with 2 Items and false if processing with 1 Item.
_oldItem = _itemInfo select 0;
_newItem = _itemInfo select 1;
_cost = _itemInfo select 2;
_upp = _itemInfo select 3;
//2vars
if(_2var) then { _oldItem2 = _itemInfo select 5; }; //set Itemname if (processing with 2 Items = true)
if(_vendor in [esclave]) then {
	_hasLicense = true;
} else {
	_hasLicense = missionNamespace getVariable (([_type,0] call life_fnc_licenseType) select 0);
};
//_hasLicense = missionNamespace getVariable (([_type,0] call life_fnc_licenseType) select 0);
_itemName = [([_newItem,0] call life_fnc_varHandle)] call life_fnc_varToStr;
_oldVal = missionNamespace getVariable ([_oldItem,0] call life_fnc_varHandle);


//2vars
if(_2var) then { _oldVal2 = missionNamespace getVariable ([_oldItem2,0] call life_fnc_varHandle); };
if(_2var) then {
       if(_oldVal !=_oldVal2) then {
              _error = true;
       };
};
if(_error) exitWith{hint "Tu dois avoir le meme nombre de produits pour traiter"};
_cost = _cost * _oldVal;
if(_oldVal == 0) exitWith {};
disableSerialization;
5 cutRsc ["life_progress","PLAIN"];
_ui = uiNameSpace getVariable "life_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["%2 (1%1)...","%",_upp];
_progress progressSetPosition 0.01;
_cP = 0.01;
life_is_processing = true;
if(_hasLicense) then
{
	while{true} do
	{
		sleep  0.3;
		_cP = _cP + 0.01;
		_progress progressSetPosition _cP;
		_pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
		if(_cP >= 1) exitWith {};
		if(player distance _vendor > 10) exitWith {};
	};

	if(player distance _vendor > 10) exitWith {hint "Tu dois rester a 10 metres pour fabriquer."; 5 cutText ["","PLAIN"]; life_is_processing = false;_ui = "osefStatusBar" call BIS_fnc_rscLayer;_ui cutRsc["osefStatusBar","PLAIN"];};
	if(!([false,_oldItem,_oldVal] call life_fnc_handleInv)) exitWith {5 cutText ["","PLAIN"]; life_is_processing = false;_ui = "osefStatusBar" call BIS_fnc_rscLayer;_ui cutRsc["osefStatusBar","PLAIN"];};
	if(!([true,_newItem,_oldVal] call life_fnc_handleInv)) exitWith {5 cutText ["","PLAIN"]; [true,_oldItem,_oldVal] call life_fnc_handleInv; life_is_processing = false;_ui = "osefStatusBar" call BIS_fnc_rscLayer;_ui cutRsc["osefStatusBar","PLAIN"];};
	5 cutText ["","PLAIN"];
	titleText[format["Tu as fabriqué %1 %2",_oldVal,_itemName],"PLAIN"];
	life_is_processing = false;
}
	else
{
	if(argent_liquide < _cost) exitWith {hint format["Tu as besoin de %1€ pour fabriquer sans licence !",[_cost] call life_fnc_numberText]; 5 cutText ["","PLAIN"]; life_is_processing = false;};

	while{true} do
	{
		sleep  0.9;
		_cP = _cP + 0.01;
		_progress progressSetPosition _cP;
		_pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
		if(_cP >= 1) exitWith {};
		if(player distance _vendor > 10) exitWith {};
	};

	if(player distance _vendor > 10) exitWith {hint "Tu dois rester a 10 metres pour fabriquer."; 5 cutText ["","PLAIN"]; life_is_processing = false;_ui = "osefStatusBar" call BIS_fnc_rscLayer;_ui cutRsc["osefStatusBar","PLAIN"];};
	if(argent_liquide < _cost) exitWith {hint format["Tu as besoin de %1€ pour fabriquer sans license !",[_cost] call life_fnc_numberText]; 5 cutText ["","PLAIN"]; life_is_processing = false;_ui = "osefStatusBar" call BIS_fnc_rscLayer;_ui cutRsc["osefStatusBar","PLAIN"];};
//2vars
	if(_2var) then
	{
	([false,_oldItem2,_oldVal2] call life_fnc_handleInv); //delete the second items (for example Iron)
	};

	if(!([false,_oldItem,_oldVal] call life_fnc_handleInv)) exitWith {5 cutText ["","PLAIN"]; life_is_processing = false;_ui = "osefStatusBar" call BIS_fnc_rscLayer;_ui cutRsc["osefStatusBar","PLAIN"];};
	if(!([true,_newItem,_oldVal] call life_fnc_handleInv)) exitWith {5 cutText ["","PLAIN"]; [true,_oldItem,_oldVal] call life_fnc_handleInv; life_is_processing = false;_ui = "osefStatusBar" call BIS_fnc_rscLayer;_ui cutRsc["osefStatusBar","PLAIN"];};
	5 cutText ["","PLAIN"];
	titleText[format["Tu as fabriqué %1 en %2 pour la somme de %3€",_oldVal,_itemName,[_cost] call life_fnc_numberText],"PLAIN"];
	argent_liquide = argent_liquide - _cost;
	life_is_processing = false;
	_ui = "osefStatusBar" call BIS_fnc_rscLayer;_ui cutRsc["osefStatusBar","PLAIN"];
};