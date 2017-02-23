#include <macro.h>
/*
	File: fn_playerTags.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Adds the tags above other players heads when close and have visible range.
*/
private["_ui","_units","_goggles","_uniform","_headgear"];
#define iconID 78000
#define scale 0.8
if(visibleMap OR {!alive player} OR {dialog}) exitWith {
	500 cutText["","PLAIN"];
};

_ui = uiNamespace getVariable ["Life_HUD_nameTags",displayNull];
if(isNull _ui) then {
	500 cutRsc["Life_HUD_nameTags","PLAIN"];
	_ui = uiNamespace getVariable ["Life_HUD_nameTags",displayNull];
};

//_units = nearestObjects[(visiblePosition player),["Man","Land_Pallet_MilBoxes_F","Land_Sink_F"], 50];
_units = nearestObjects[(visiblePosition player),["Man"], 50];
_units = _units - [player];

{
	private[ "_text"];
	//_name = _x getVariable ["realname", name _x];
	//_hasName = if(!isNil {(_x getVariable "realname")}) then {true} else {false};
	_idc = _ui displayCtrl (iconID + _forEachIndex);

	if(!(lineIntersects [eyePos player, eyePos _x, player, _x]) && {!isNil {_x getVariable "realname"}}) then {
		_dist = 10;
		_pos = switch(typeOf _x) do {
			//case "Land_Pallet_MilBoxes_F": {[visiblePosition _x select 0, visiblePosition _x select 1, (getPosATL _x select 2) + 1.5]};
			//case "Land_Sink_F": {[visiblePosition _x select 0, visiblePosition _x select 1, (getPosATL _x select 2) + 2]};
			default {[visiblePosition _x select 0, visiblePosition _x select 1, ((_x modelToWorld (_x selectionPosition "head")) select 2)+.5]};
		};
		_sPos = worldToScreen _pos;
		_distance = _pos distance player;
		if(count _sPos > 1 && {_distance < _dist}) then {
			_headgear = headgear _x;
			_goggles = goggles _x;
			_uniform = uniform _x;
		
			if(_headgear in ["H_Shemag_olive","H_Shemag_khk","H_ShemagOpen_tan","H_ShemagOpen_khk"] OR 
			_goggles in ["G_Bandanna_aviator","g_balaclava_combat","G_Bandanna_beast","G_Bandanna_tan","G_Bandanna_sport","G_Bandanna_blk","G_Bandanna_oli","G_Bandanna_shades","G_Balaclava_blk","G_Balaclava_lowprofile","G_Balaclava_combat","G_Balaclava_oli"] OR
			_uniform in ["U_I_GhillieSuit","U_B_GhillieSuit","U_O_GhillieSuit"]) then {
				_text = format["<t color='#FF6600'>* Masqué *</t>"];
			} else {
				_text = switch (true) do {
					case (_x in (units grpPlayer) && playerSide == civilian): {format["<t color='#00FF00'>%1</t>",(_x getVariable ["realname",name _x])];};
					case (!isNil {(_x getVariable "coplevel")}): {format["<img image='%1' size='1'></img> <t color='#FFFFFF'>%2</t>",switch ((_x getVariable "coplevel")) do {
						case 4: {"\a3\ui_f\data\gui\cfg\Ranks\corporal_gs.paa"}; 
						case 5: {"\a3\ui_f\data\gui\cfg\Ranks\sergeant_gs.paa"};
						case 6: {"\a3\ui_f\data\gui\cfg\Ranks\major_gs.paa"};
						case 7: {"\a3\ui_f\data\gui\cfg\Ranks\lieutenant_gs.paa"};
						case 8: {"\a3\ui_f\data\gui\cfg\Ranks\captain_gs.paa"};
						case 9: {"\a3\ui_f\data\gui\cfg\Ranks\colonel_gs.paa"};
						case 10: {"\a3\ui_f\data\gui\cfg\Ranks\colonel_gs.paa"};
						case 11: {"\a3\ui_f\data\gui\cfg\Ranks\colonel_gs.paa"};					
						case 12: {"\a3\ui_f\data\gui\cfg\Ranks\general_gs.paa"};
						default {"\a3\ui_f\data\gui\cfg\Ranks\private_gs.paa"};
						},_x getVariable ["realname",name _x]]};
					case ((!isNil {_x getVariable "name"} && playerSide == independent)): {format["<t color='#FF0000'><img image='a3\ui_f\data\map\MapControl\hospital_ca.paa' size='1.5'></img></t> %1",_x getVariable ["name","Unknown Player"]]};
					default {
						if(!isNil {(group _x) getVariable "gang_name"}) then {
							format["%1<br/><t size='0.8' color='#B6B6B6'>%2</t>",_x getVariable ["realname",name _x],(group _x) getVariable ["gang_name",""]];
						} else {
							_x getVariable ["realname",name _x];
						};
					};
				};
			};
			
			_idc ctrlSetStructuredText parseText _text;
			_idc ctrlSetPosition [_sPos select 0, _sPos select 1, 0.4, 0.65];
			_idc ctrlSetScale scale;
			_idc ctrlSetFade 0;
			_idc ctrlCommit 0;
			_idc ctrlShow true;
		} else {
			_idc ctrlShow false;
		};
	} else {
		_idc ctrlShow false;
	};
} foreach _units;