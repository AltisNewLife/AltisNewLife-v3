private["_veh","_ret"];
_veh = _this select 0;
_ret = false;
if(_veh == "B_Quadbike_01_F") exitWith {true}; //ATV's don't need to require a license anymore.
switch (life_veh_shop select 0) do
{
	case "med_shop": {_ret = true;};
	case "kart_shop": {_ret = license_civ_driver;};
	case "med_air_hs": {_ret = license_med_air;};
	case "civ_car": {_ret = license_civ_driver;};
	case "civ_ship": {_ret = license_civ_boat;};
	case "civ_air": {_ret = license_civ_air;};
	case "cop_air": {_ret = license_cop_air;};
	case "cop_airhq": {_ret = license_cop_air;};
	case "civ_truck":	{_ret = license_civ_truck;};
	case "civ_servt":	{_ret = license_civ_depanneur;};
	case "reb_car": {_ret = license_civ_rebel;};
	case "cop_car": {_ret = license_cop_driver;};
	case "special": {_ret = license_civ_special;};
	case "merc": {_ret = license_civ_merc;};
	case "usine": {_ret = license_civ_usine;};	
	case "chauffeur": {_ret = license_civ_chauffeur;};		
	case "cop_ship": 
	{
		if(_veh == "B_Boat_Armed_01_minigun_F") then
		{
			_ret = license_cop_cg;
		}
			else
		{
			_ret = true;
		};
	};
};

_ret;