/*
Pickup Item AllinOne
by inoDB - AltisNewLife.fr - for AltisDev & Tonic's Community
*/
private ["_objet","_mur","_sac","_spikes","_cone","_barre","_lightr","_lightg","_lighty","_flecheg","_fleched"];
_objet = _this select 0;
switch (_objet) do
{
        case "mur":
        {
			_mur = "Land_CncBarrier_stripes_F" createVehicle [0,0,0];
			_mur attachTo[player,[0,5.5,0.2]];
			_mur setDir 90;
			_mur setVariable["item","murDeployed",true];
			life_action_murDeploy = player addAction["<t color='#00FF00'>Placer</t>",{if(!isNull life_mur) then {detach life_mur; life_mur = ObjNull;}; player removeAction life_action_murDeploy; life_action_murDeploy = nil;},"",999,false,false,"",'!isNull life_mur'];
			life_mur = _mur;
			waitUntil {isNull life_mur};
			if(!isNil "life_action_murDeploy") then {player removeAction life_action_murDeploy;};
			if(isNull _mur) exitWith {life_mur = ObjNull;};
			_mur setPos [(getPos _mur select 0),(getPos _mur select 1),0];
			_mur allowDamage false;
        };
        case "sac":
        {
			_sac = "Land_BagFence_Short_F" createVehicle [0,0,0];
			_sac attachTo[player,[0,5.5,0.2]];
			_sac setDir 90;
			_sac setVariable["item","sacDeployed",true];
			life_action_sacDeploy = player addAction["<t color='#00FF00'>Placer</t>",{if(!isNull life_sac) then {detach life_sac; life_sac = ObjNull;}; player removeAction life_action_sacDeploy; life_action_sacDeploy = nil;},"",999,false,false,"",'!isNull life_sac'];
			life_sac = _sac;
			waitUntil {isNull life_sac};
			if(!isNil "life_action_sacDeploy") then {player removeAction life_action_sacDeploy;};
			if(isNull _sac) exitWith {life_sac = ObjNull;};
			_sac setPos [(getPos _sac select 0),(getPos _sac select 1),0];
			_sac allowDamage false;
        };
        case "spikes":
        {
			_spikes = "Land_Razorwire_F" createVehicle [0,0,0];
			_spikes attachTo[player,[0,5.5,0]];
			_spikes setDir 90;
			_spikes setVariable["item","spikeDeployed",true];
			life_action_spikesDeploy = player addAction["<t color='#00FF00'>Placer</t>",{if(!isNull life_spikes) then {detach life_spikes; life_spikes = ObjNull;}; player removeAction life_action_spikesDeploy; life_action_spikesDeploy = nil;},"",999,false,false,"",'!isNull life_spikes'];
			life_spikes = _spikes;
			waitUntil {isNull life_spikes};
			if(!isNil "life_action_spikesDeploy") then {player removeAction life_action_spikesDeploy;};
			if(isNull _spikes) exitWith {life_spikes = ObjNull;};
			_spikes setPos [(getPos _spikes select 0),(getPos _spikes select 1),0];
			_spikes setDamage 1; //With this script only Spike allow damage
        };
        case "cone":
        {
			_cone = "RoadCone_F" createVehicle [0,0,0];
			_cone attachTo[player,[0,5.5,0.2]];
			_cone setDir 90;
			_cone setVariable["item","coneDeployed",true];
			life_action_coneDeploy = player addAction["<t color='#00FF00'>Placer</t>",{if(!isNull life_cone) then {detach life_cone; life_cone = ObjNull;}; player removeAction life_action_coneDeploy; life_action_coneDeploy = nil;},"",999,false,false,"",'!isNull life_cone'];
			life_cone = _cone;
			waitUntil {isNull life_cone};
			if(!isNil "life_action_coneDeploy") then {player removeAction life_action_coneDeploy;};
			if(isNull _cone) exitWith {life_cone = ObjNull;};
			_cone setPos [(getPos _cone select 0),(getPos _cone select 1),0];
			_cone allowDamage false;
        };
        case "barre":
        {
			_barre = "RoadBarrier_F" createVehicle [0,0,0];
			_barre attachTo[player,[0,5.5,0.2]];
			_barre setDir 90;
			_barre setVariable["item","barreDeployed",true];
			life_action_barreDeploy = player addAction["<t color='#00FF00'>Placer</t>",{if(!isNull life_barre) then {detach life_barre; life_barre = ObjNull;}; player removeAction life_action_barreDeploy; life_action_barreDeploy = nil;},"",999,false,false,"",'!isNull life_barre'];
			life_barre = _barre;
			waitUntil {isNull life_barre};
			if(!isNil "life_action_barreDeploy") then {player removeAction life_action_barreDeploy;};
			if(isNull _barre) exitWith {life_barre = ObjNull;};
			_barre setPos [(getPos _barre select 0),(getPos _barre select 1),0];
			_barre allowDamage false;
        };
        case "lightr":
        {
			_lightr = "Land_Flush_Light_red_F" createVehicle [0,0,0];
			_lightr attachTo[player,[0,5.5,0]];
			_lightr setDir 90;
			_lightr setVariable["item","lightrDeployed",true];
			life_action_lightrDeploy = player addAction["<t color='#00FF00'>Placer</t>",{if(!isNull life_lightr) then {detach life_lightr; life_lightr = ObjNull;}; player removeAction life_action_lightrDeploy; life_action_lightrDeploy = nil;},"",999,false,false,"",'!isNull life_lightr'];
			life_lightr = _lightr;
			waitUntil {isNull life_lightr};
			if(!isNil "life_action_lightrDeploy") then {player removeAction life_action_lightrDeploy;};
			if(isNull _lightr) exitWith {life_lightr = ObjNull;};
			_lightr setPos [(getPos _lightr select 0),(getPos _lightr select 1),0];
			_lightr allowDamage false;
        };
        case "lightg":
        {
			_lightg = "Land_Flush_Light_green_F" createVehicle [0,0,0];
			_lightg attachTo[player,[0,5.5,0]];
			_lightg setDir 90;
			_lightg setVariable["item","lightgDeployed",true];
			life_action_lightgDeploy = player addAction["<t color='#00FF00'>Placer</t>",{if(!isNull life_lightg) then {detach life_lightg; life_lightg = ObjNull;}; player removeAction life_action_lightgDeploy; life_action_lightgDeploy = nil;},"",999,false,false,"",'!isNull life_lightg'];
			life_lightg = _lightg;
			waitUntil {isNull life_lightg};
			if(!isNil "life_action_lightgDeploy") then {player removeAction life_action_lightgDeploy;};
			if(isNull _lightg) exitWith {life_lightg = ObjNull;};
			_lightg setPos [(getPos _lightg select 0),(getPos _lightg select 1),0];
			_lightg allowDamage false;
        };
        case "lighty":
        {
			_lighty = "Land_Flush_Light_yellow_F" createVehicle [0,0,0];
			_lighty attachTo[player,[0,5.5,0]];
			_lighty setDir 90;
			_lighty setVariable["item","lightyDeployed",true];
			life_action_lightyDeploy = player addAction["<t color='#00FF00'>Placer</t>",{if(!isNull life_lighty) then {detach life_lighty; life_lighty = ObjNull;}; player removeAction life_action_lightyDeploy; life_action_lightyDeploy = nil;},"",999,false,false,"",'!isNull life_lighty'];
			life_lighty = _lighty;
			waitUntil {isNull life_lighty};
			if(!isNil "life_action_lightyDeploy") then {player removeAction life_action_lightyDeploy;};
			if(isNull _lighty) exitWith {life_lighty = ObjNull;};
			_lighty setPos [(getPos _lighty select 0),(getPos _lighty select 1),0];
			_lighty allowDamage false;
        };
        case "flecheg":
        {
			_flecheg = "ArrowDesk_L_F" createVehicle [0,0,0];
			_flecheg attachTo[player,[0,5.5,0.2]];
			_flecheg setDir 90;
			_flecheg setVariable["item","flechegDeployed",true];
			life_action_flechegDeploy = player addAction["<t color='#00FF00'>Placer</t>",{if(!isNull life_flecheg) then {detach life_flecheg; life_flecheg = ObjNull;}; player removeAction life_action_flechegDeploy; life_action_flechegDeploy = nil;},"",999,false,false,"",'!isNull life_flecheg'];
			life_flecheg = _flecheg;
			waitUntil {isNull life_flecheg};
			if(!isNil "life_action_flechegDeploy") then {player removeAction life_action_flechegDeploy;};
			if(isNull _flecheg) exitWith {life_flecheg = ObjNull;};
			_flecheg setPos [(getPos _flecheg select 0),(getPos _flecheg select 1),0];
			_flecheg allowDamage false;
        };
        case "fleched":
        {
			_fleched = "ArrowDesk_R_F" createVehicle [0,0,0];
			_fleched attachTo[player,[0,5.5,0]];
			_fleched setDir 90;
			_fleched setVariable["item","flechedDeployed",true];
			life_action_flechedDeploy = player addAction["<t color='#00FF00'>Placer</t>",{if(!isNull life_fleched) then {detach life_fleched; life_fleched = ObjNull;}; player removeAction life_action_flechedDeploy; life_action_flechedDeploy = nil;},"",999,false,false,"",'!isNull life_fleched'];
			life_fleched = _fleched;
			waitUntil {isNull life_fleched};
			if(!isNil "life_action_flechedDeploy") then {player removeAction life_action_flechedDeploy;};
			if(isNull _fleched) exitWith {life_fleched = ObjNull;};
			_fleched setPos [(getPos _fleched select 0),(getPos _fleched select 1),0];
			_fleched allowDamage false;
        };
};