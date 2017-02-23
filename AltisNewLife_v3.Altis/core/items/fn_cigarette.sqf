closeDialog 0;
hint "Trop de stress... une petite clope pour se detendre un peu !";
sleep 3;
// Vampire code for smokeeffect
if (vehicle player != player) then {
	if ((typeOf (vehicle player)) in ["B_G_Quadbike_01_F","B_Quadbike_01_F","C_Quadbike_01_F","I_Quadbike_01_F","O_Quadbike_01_F"]) then {
		_smoke = "SmokeShell" createVehicle position player;
		_smoke attachTo [(vehicle player),[0,-0.2,0.1]];
	} else {
		_smoke = "SmokeShell" createVehicle position player;
		_smoke attachTo [(vehicle player),[-0.3,-0.08,-0.3]];
	};
} else {
	_smoke = "SmokeShell" createVehicle position player;
	_smoke attachTo [player,[0,0,0.1],"pelvis"];
};