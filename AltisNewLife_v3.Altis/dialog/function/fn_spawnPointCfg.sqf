#include <macro.h>
private["_side","_return"];
_side = [_this,0,civilian,[civilian]] call BIS_fnc_param;
switch (_side) do {
	case west:
	{
	_return = [
			["cop_spawn_1","Kavala","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["cop_spawn_6","Athira","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["cop_spawn_5","Douane","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["cop_spawn_pc","Point de controle","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["cop_spawn_2","Garde-côtes","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["taxi_spawn_camp","Camp Entrainement","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"]
		];
		if(license_cop_swat && playerSide == west) then {
		_return = _return + [["spawn_gign","QG GIGN","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"]];
		};
	};
	case civilian:
	{
		if(license_civ_rebel && playerSide == civilian) then {
		_return = [
					["civ_spawn_reb","Sofia [Rebelle]","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"],
					["civ_spawn_1","Kavala","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_3","Athira","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_6","Rodopoli","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_5","Pyrgos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				    ["spawn_casino","Casino","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"]
		        ];
		};
		if(!license_civ_rebel && playerSide == civilian) then {
		_return = [
					["civ_spawn_1","Kavala","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_3","Athira","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_6","Rodopoli","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_5","Pyrgos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				    ["spawn_casino","Casino","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"]
				];
		};
		if(license_civ_merc && playerSide == civilian) then {
			_return = _return + [["spawn_merc","Mercenaires","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]];
		};
		if(license_civ_merc_reb && playerSide == civilian) then {
			_return = _return + [["spawn_merc_reb","Mercenaires","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]];
		};
		if(license_reb_gang1 && playerSide == civilian) then {
			_return = _return + [["spawn_gang1","QG Gang","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]];
		};
		if(license_reb_gang2 && playerSide == civilian) then {
			_return = _return + [["spawn_gang2","QG Gang","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]];
		};
		if(license_reb_gang3 && playerSide == civilian) then {
			_return = _return + [["spawn_gang3","QG Gang","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]];
		};
		if(license_reb_gang4 && playerSide == civilian) then {
			_return = _return + [["spawn_gang4","QG Gang","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]];
		};
		if(license_reb_gang5 && playerSide == civilian) then {
			_return = _return + [["spawn_gang5","QG Gang","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]];
		};
		if(license_reb_gang6 && playerSide == civilian) then {
			_return = _return + [["spawn_gang6","QG Gang","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]];
		};
		if(license_reb_gang7 && playerSide == civilian) then {
			_return = _return + [["spawn_gang7","QG Gang","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]];
		};
		if(license_reb_gang8 && playerSide == civilian) then {
			_return = _return + [["spawn_gang8","QG Gang","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]];
		};
		if(license_reb_gang9 && playerSide == civilian) then {
			_return = _return + [["spawn_gang9","QG Gang","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]];
		};
		if(license_reb_gang10 && playerSide == civilian) then {
			_return = _return + [["spawn_gang10","QG Gang","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]];
		};
		if(license_civ_usine && playerSide == civilian) then {
			_return = _return + [["spawn_usine","Entreprise","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]];
		};
		if(license_civ_depanneur && playerSide == civilian) then {
			_return = _return + [["spawn_dep","Entreprise","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]];
		};
		if(__GETC__(life_donator) > 0) then {
			_return = _return + [["spawn_don","Neochori [V.I.P]","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]];
		};
		if(count life_houses > 0) then {
		{
			_pos = call compile format["%1",_x select 0];
			_house = nearestBuilding _pos;
			_houseName = getText(configFile >> "CfgVehicles" >> (typeOf _house) >> "displayName");
			_return pushBack [format["house_%1",_house getVariable "uid"],_houseName,"\a3\ui_f\data\map\MapControl\lighthouse_ca.paa"];
} foreach life_houses;
};
	};
	case independent:
	{
		_return = [
			["medic_spawn_1","Kavala","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_2","Douane","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_3","Pyrgos","\a3\ui_f\data\map\MapControl\hospital_ca.paa"]
		];
	};
	case east: {
		_return = [
			["spawn_adac_kavala","Mairie Kavala","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["civ_spawn_3","Athira","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["cop_spawn_5","Douane","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["cop_spawn_2","Garde cotes","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["medic_spawn_3","Pyrgos","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["civ_spawn_6","Rodopoli","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["civ_spawn_reb","Sofia","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["taxi_spawn_camp","Camp Entrainement","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"]
		];
	};
};
_return;