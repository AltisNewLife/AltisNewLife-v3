private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0;};
if(!dialog) then
{
	if(!(createDialog "shop_menu")) exitWith {};
};
disableSerialization;
ctrlSetText[601,format["Argent : %1€",[argent_liquide] call life_fnc_numberText]];
switch (_shop) do
{
	case "reb":
	{
		ctrlSetText[2505,"Boutique Rebelle"];
		ctrlShow[2503,false];
		ctrlShow[2513,false];
		ctrlShow[2514,false];
	};
	case "cop":
	{
		ctrlSetText[2505,"Boutique Gendarmerie"];
		ctrlShow[2503,false];
	};
	case "gun":
	{
		ctrlSetText[2505,"Armurerie"];
		ctrlShow[2503,false];
		ctrlShow[2513,false];
		ctrlShow[2514,false];
	};
	case "gang":
	{
		ctrlSetText[2505,"Boutique de Gang"];
		ctrlShow[2503,false];
		ctrlShow[2513,false];
		ctrlShow[2514,false];
	};
	case "dive":
	{
		ctrlSetText[2505,"Boutique de plongée"];
		ctrlShow[2503,false];
		ctrlShow[2510,false];
		ctrlShow[2511,false];
		ctrlShow[2513,false];
	};
	case "gen":
	{
		ctrlSetText[2505,"Magasin General"];
		ctrlShow[2503,false];
	};
	case "merc":
	{
		ctrlSetText[2505,"Boutique Mercenaire"];
	};
	case "usine":
	{
		ctrlSetText[2505,"Boutique Entreprise"];
	};
};

["guns"] call life_fnc_shops_changeMenu;
