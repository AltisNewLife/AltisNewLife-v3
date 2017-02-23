waitUntil {!(isNull (findDisplay 46))};
disableSerialization;
_rscLayer = "osefStatusBar" call BIS_fnc_rscLayer;
_rscLayer cutRsc["osefStatusBar","PLAIN"];
[] spawn {
sleep 5;
_counter = 180;
_timeSinceLastUpdate = 0;
while {true} do
{
sleep 1;
_counter = _counter - 1;
((uiNamespace getVariable "osefStatusBar")displayCtrl 1000)ctrlSetText format["%1 FPS | Civil : %2 | Gendarme : %3 | Medecin : %4 | Position : %5 ", round diag_fps, civilian countSide playableUnits, west countSide playableUnits, independent countSide playableUnits,mapGridPosition player, _counter];
};
};