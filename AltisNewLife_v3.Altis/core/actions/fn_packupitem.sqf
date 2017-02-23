/*
Packup Item AllinOne
by inoDB - AltisNewLife.fr - for AltisDev & Tonic's Community
*/
private["_mur","_sac","_spikes","_cone","_barre","_lightr","_lightg","_lighty","_flecheg","_fleched","_method"];

_mur = nearestObjects[getPos player,["Land_CncBarrier_stripes_F"],8] select 0;
_sac = nearestObjects[getPos player,["Land_BagFence_Short_F"],8] select 0;
_spikes = nearestObjects[getPos player,["Land_Razorwire_F"],8] select 0;
_cone = nearestObjects[getPos player,["RoadCone_F"],8] select 0;
_barre = nearestObjects[getPos player,["RoadBarrier_F"],8] select 0;
_lightr = nearestObjects[getPos player,["Land_Flush_Light_red_F"],8] select 0;
_lightg = nearestObjects[getPos player,["Land_Flush_Light_green_F"],8] select 0;
_lighty = nearestObjects[getPos player,["Land_Flush_Light_yellow_F"],8] select 0;
_flecheg = nearestObjects[getPos player,["ArrowDesk_L_F"],8] select 0;
_fleched = nearestObjects[getPos player,["ArrowDesk_R_F"],8] select 0;

if(!isNil "_mur") then {_method = 0;};
if(!isNil "_sac") then {_method = 1;};
if(!isNil "_spikes") then {_method = 2;};
if(!isNil "_cone") then {_method = 3;};
if(!isNil "_barre") then {_method = 4;};
if(!isNil "_lightr") then {_method = 5;};
if(!isNil "_lightg") then {_method = 6;};
if(!isNil "_lighty") then {_method = 7;};
if(!isNil "_flecheg") then {_method = 8;};
if(!isNil "_fleched") then {_method = 9;};

if((isNil "_mur") && (isNil "_sac") && (isNil "_spikes") && (isNil "_cone") && (isNil "_barre") && (isNil "_lightr") && (isNil "_lightg") && (isNil "_lighty") && (isNil "_flecheg") && (isNil "_fleched"))exitWith {};

switch (_method) do
{
	case 0: {
				if(([true,"mur",1] call life_fnc_handleInv)) then
				{
					player playmove "AinvPknlMstpSlayWrflDnon";
					sleep 0.5;
					titleText["Vous avez rangé une barriere","PLAIN"];
					deleteVehicle _mur;
				};
	};
	case 1: {
				if(([true,"sac",1] call life_fnc_handleInv)) then
				{
					player playmove "AinvPknlMstpSlayWrflDnon";
					sleep 0.5;
					titleText["Vous avez rangé des sacs de sable","PLAIN"];
					deleteVehicle _sac;
				};
	};
	case 2: {
				if(([true,"spikeStrip",1] call life_fnc_handleInv)) then
				{
					player playmove "AinvPknlMstpSlayWrflDnon";
					sleep 0.5;
					titleText["Vous avez rangé une herse.","PLAIN"];
					deleteVehicle _spikes;
				};
	};
	case 3: {
				if(([true,"cone",1] call life_fnc_handleInv)) then
				{
					player playmove "AinvPknlMstpSlayWrflDnon";
					sleep 0.5;
					titleText["Vous avez rangé un cone routier","PLAIN"];
					deleteVehicle _cone;
				};
	};
	case 4: {
				if(([true,"barre",1] call life_fnc_handleInv)) then
				{
					player playmove "AinvPknlMstpSlayWrflDnon";
					sleep 0.5;
					titleText["Vous avez rangé une barriere","PLAIN"];
					deleteVehicle _barre;
				};
	};	
	case 5: {
				if(([true,"lightr",1] call life_fnc_handleInv)) then
				{
					titleText["Vous avez rangé une lumiere","PLAIN"];
					deleteVehicle _lightr;
				};
	};
	case 6: {
				if(([true,"lightg",1] call life_fnc_handleInv)) then
				{
					player playmove "AinvPknlMstpSlayWrflDnon";
					sleep 0.5;
					titleText["Vous avez rangé une lumiere","PLAIN"];
					deleteVehicle _lightg;
				};
	};	
	case 7: {
				if(([true,"lighty",1] call life_fnc_handleInv)) then
				{
					titleText["Vous avez rangé une lumiere","PLAIN"];
					deleteVehicle _lighty;
				};
	};
	case 8: {
				if(([true,"flecheg",1] call life_fnc_handleInv)) then
				{
					player playmove "AinvPknlMstpSlayWrflDnon";
					sleep 0.5;
					titleText["Vous avez rangé une fleche","PLAIN"];
					deleteVehicle _flecheg;
				};
	};	
	case 9: {
				if(([true,"fleched",1] call life_fnc_handleInv)) then
				{
					player playmove "AinvPknlMstpSlayWrflDnon";
					sleep 0.5;
					titleText["Vous avez rangé une fleche","PLAIN"];
					deleteVehicle _fleched;
				};
	};		
};