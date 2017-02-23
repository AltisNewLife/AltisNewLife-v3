enableSaving [false, false];
X_Server = false;
X_Client = false;
X_JIP = false;
StartProgress = false;
if(!isDedicated) then { X_Client = true;};
enableSaving[false,false];
life_versionInfo = "Altis Life RPG v3.1.4.8";
[] execVM "briefing.sqf";
[] execVM "KRON_Strings.sqf";
[] execVM "scripts\statusBar.sqf";
[] execVM "scripts\IgiLoadinit.sqf";
[] execVM "scripts\zlt_fastrope.sqf";
[] execVM "scripts\teargas.sqf";
nul=[] execVM "scripts\IntLight.sqf";
{_x setMarkerAlphaLocal 0} forEach ["mrkRed","mrkRed_1","mrkRed_1_1","mrkRed_1_3","mrkGreen"];
if(isDedicated && isNil("life_market_prices")) then
{
	[] call life_fnc_marketconfiguration;
	diag_log "Prix du marche genere!";
	"life_market_prices" addPublicVariableEventHandler
	{
		diag_log format["Bourse mise a jour ! %1", _this select 1];
	};
	[] execFSM "core\fsm\server.fsm";
	diag_log "Server FSM executed";
};
[8*60,3*60,20*60,3*60,20*60,3*60] execVM 'scripts\repetitive_cleanup.sqf';
StartProgress = true;
life_fnc_switchMove = {
    private["_object","_anim"];
    _object = _this select 0;
    _anim = _this select 1;

    _object switchMove _anim;    
};
setTerrainGrid 50;
CHVD_allowNoGrass = true; // Set 'false' if you want to disable "None" option for terrain (default: true)
CHVD_maxView = 12000; // Set maximum view distance (default: 12000)
CHVD_maxObj = 12000; // Set maximimum object view distance (default: 12000)