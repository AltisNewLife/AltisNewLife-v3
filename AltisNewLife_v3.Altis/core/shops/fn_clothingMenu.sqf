private["_list","_clothes","_pic","_filter"];
createDialog "Life_Clothing";
disableSerialization;
if((_this select 3) in ["bruce","dive","reb","kart"] && playerSide != civilian && playerSide != east ) exitWith {hint "Vous devez être civil pour utiliser ce magasin !"; closeDialog 0;};
if((_this select 3) == "reb" && !license_civ_rebel) exitWith {hint "Vous n'avez pas encore de formation rebelle"; closeDialog 0;};
if((_this select 3) == "merc" && !license_civ_merc) exitWith {hint "Vous n'avez pas encore la licence de mercenaire"; closeDialog 0;};
if((_this select 3) == "merc_reb" && !license_civ_merc_reb) exitWith {hint "Vous n'avez pas encore la licence de mercenaire"; closeDialog 0;};
if((_this select 3) == "usine" && !license_civ_usine) exitWith {hint "Vous ne travaillez pas dans cette entreprise"; closeDialog 0;};
if((_this select 3) == "dep" && !license_civ_depanneur) exitWith {hint "Vous ne travaillez pas dans cette entreprise"; closeDialog 0;};
if((_this select 3) == "bhc" && !license_civ_bountyh) exitWith {hint "Vous n'avez pas encore la licence de Chasseur de prime"; closeDialog 0;};
if((_this select 3) == "dive" && !license_civ_dive) exitWith {hint "Désolé, vous devez achetez la licence."; closeDialog 0;};
if((_this select 3) in ["cop"] && playerSide != west && playerSide != east ) exitWith {hint "Vous devez être flic pour utiliser ce magasin !"; closeDialog 0;};
if((_this select 3) in ["medic"] && playerSide != Independent && playerSide != east ) exitWith {hint "Vous devez être medecin pour utiliser ce magasin !"; closeDialog 0;};
life_clothing_store = _this select 3;

//License Check?
_var = [life_clothing_store,0] call life_fnc_licenseType;
if(_var select 0 != "") then
{
	if(!(missionNamespace getVariable (_var select 0))) exitWith {hint format["Vous avez besoin de %1 pour acheter dans ce magasin !",[_var select 0] call life_fnc_varToStr]; closeDialog 0;};
};

//initialize camera view
life_shop_cam = "CAMERA" camCreate getPos player;
showCinemaBorder false;
life_shop_cam cameraEffect ["Internal", "Back"];
life_shop_cam camSetTarget (player modelToWorld [0,0,1]);
life_shop_cam camSetPos (player modelToWorld [1,4,2]);
life_shop_cam camSetFOV .33;
life_shop_cam camSetFocus [50, 0];
life_shop_cam camCommit 0;
life_cMenu_lock = false;

if(isNull (findDisplay 3100)) exitWith {};
_list = (findDisplay 3100) displayCtrl 3101;
_filter = (findDisplay 3100) displayCtrl 3105;
lbClear _filter;
lbClear _list;

_filter lbAdd "Uniformes";
_filter lbAdd "Casquettes";
_filter lbAdd "Lunettes";
_filter lbAdd "Vestes";
_filter lbAdd "Sacs a dos";

_filter lbSetCurSel 0;

life_oldClothes = uniform player;
life_olduniformItems = uniformItems player;
life_oldBackpack = backpack player;
life_oldVest = vest player;
life_oldVestItems = vestItems player;
life_oldBackpackItems = backpackItems player;
life_oldGlasses = goggles player;
life_oldHat = headgear player;

waitUntil {isNull (findDisplay 3100)};
life_shop_cam cameraEffect ["TERMINATE","BACK"];
camDestroy life_shop_cam;
life_clothing_filter = 0;
if(isNil "life_clothesPurchased") exitWith
{
	life_clothing_purchase = [-1,-1,-1,-1,-1];
	if(life_oldClothes != "") then {player addUniform life_oldClothes;} else {removeUniform player};
	//[] call life_fnc_copUniform;
	if(life_oldHat != "") then {player addHeadgear life_oldHat} else {removeHeadgear player;};
	if(life_oldGlasses != "") then {player addGoggles life_oldGlasses;} else {removeGoggles player};
	if(backpack player != "") then
	{
		if(life_oldBackpack == "") then
		{
			removeBackpack player;
		}
			else
		{
			removeBackpack player;
			player addBackpack life_oldBackpack;
			clearAllItemsFromBackpack player;
			if(count life_oldBackpackItems > 0) then
			{
				{
					[_x,true,true] call life_fnc_handleItem;
				} foreach life_oldBackpackItems;
			};
		};
	};
	
	if(count life_oldUniformItems > 0) then
	{
		{[_x,true,false,false,true] call life_fnc_handleItem;} foreach life_oldUniformItems;
	};
	
	if(vest player != "") then
	{
		if(life_oldVest == "") then
		{
			removeVest player;
		}
			else
		{
			player addVest life_oldVest;
			if(count life_oldVestItems > 0) then
			{
				{[_x,true,false,false,true] call life_fnc_handleItem;} foreach life_oldVestItems;
			};
		};
	};
};
life_clothesPurchased = nil;

if((life_clothing_purchase select 0) == -1) then
{
	if(life_oldClothes != uniform player) then {player addUniform life_oldClothes;};
	//[] call life_fnc_copUniform;
};
if((life_clothing_purchase select 1) == -1) then
{
	if(life_oldHat != headgear player) then {if(life_oldHat == "") then {removeHeadGear player;} else {player addHeadGear life_oldHat;};};
};
if((life_clothing_purchase select 2) == -1) then
{
	if(life_oldGlasses != goggles player) then
	{
		if(life_oldGlasses == "") then 
		{
			removeGoggles player;
		}
			else
		{
			player addGoggles life_oldGlasses;
		};
	};
};
if((life_clothing_purchase select 3) == -1) then
{
	if(life_oldVest != vest player) then
	{
		if(life_oldVest == "") then {removeVest player;} else
		{
			player addVest life_oldVest;
			{[_x,true,false,false,true] call life_fnc_handleItem;} foreach life_oldVestItems;
		};
	};
};
if((life_clothing_purchase select 4) == -1) then
{
	if(life_oldBackpack != backpack player) then
	{
		if(life_oldBackpack == "") then {removeBackpack player;} else
		{
			removeBackpack player;
			player addBackpack life_oldBackpack;
			{[_x,true,true] call life_fnc_handleItem;} foreach life_oldBackpackItems;
		};
	};
};
life_clothing_purchase = [-1,-1,-1,-1,-1];
[] call life_fnc_saveGear;