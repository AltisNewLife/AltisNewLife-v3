#include <macro.h>
private["_shop","_return","_dis"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {[]};
_return = [];
switch (__GETC__(life_donator)) do
{
	case 0: {_dis = 1;};
	case 1: {_dis = 0.9;};
	case 2: {_dis = 0.9;};
	case 3: {_dis = 0.8;};
	case 4: {_dis = 0.8;};
	case 5: {_dis = 0.7;};
	case 6: {_dis = 0.5;};
};
switch (_shop) do
{
case "kart_shop":
{
_return = [
["C_Kart_01_Fuel_F",1500 * _dis],
["C_Kart_01_F",1500 * _dis],
["C_Kart_01_Blu_F",1500 * _dis],
["C_Kart_01_Vrana_F",1500 * _dis],
["C_Kart_01_Red_F",1500 * _dis]
];
};
case "med_shop":
{
_return = [
["C_Offroad_01_F",1000 * _dis],
//["C_Hatchback_01_sport_F",5000 * _dis],
["C_Van_01_box_F",2500 * _dis]
];
};

case "med_air_hs": {
_return = [
["B_Heli_Light_01_F",8000 * _dis],
["O_Heli_Light_02_unarmed_F",10000 * _dis]
];
};

case "civ_car":
{
_return =
[
["B_Quadbike_01_F",450 * _dis],
["C_Hatchback_01_F",950 * _dis],
["C_Offroad_01_F",1450 * _dis],
["C_SUV_01_F",4500 * _dis],
["C_Hatchback_01_sport_F",6500 * _dis]
];
if(license_civ_bountyh) then
{
_return pushBack ["B_MRAP_01_F",45000 * _dis];
};
};

case "civ_truck":
{
_return =
[
["C_Van_01_transport_F",7000 * _dis],
["C_Van_01_box_F",8500 * _dis],
["I_Truck_02_transport_F",15000 * _dis],
["I_Truck_02_covered_F",18000 * _dis],
["B_Truck_01_covered_F",40000 * _dis],
["B_Truck_01_box_F",60000 * _dis]
];
};

case "civ_air":
{
_return =
[
["B_Heli_Light_01_F",30000 * _dis],
["C_Heli_Light_01_civil_F",100000 * _dis],
["I_Heli_Transport_02_F",300000 * _dis]
];
};

case "civ_ship":
{
_return =
[
["C_Rubberboat",2000 * _dis],
["C_Boat_Civil_01_F",8000 * _dis],
["C_Boat_Civil_01_rescue_F",45000 * _dis],
["B_SDV_01_F",8000 * _dis]
];
};

case "reb_car":
{
_return =
[
["B_Quadbike_01_F",450 * _dis],
["C_Hatchback_01_F",950 * _dis],
["C_Offroad_01_F",1450 * _dis],
["C_SUV_01_F",4500 * _dis],
["C_Hatchback_01_sport_F",6500 * _dis]
];
if(license_civ_rebel) then
{
_return pushBack ["O_MRAP_02_F",50000 * _dis];
_return pushBack ["O_Truck_03_transport_F",70000 * _dis];
_return pushBack ["O_Truck_03_covered_F",100000 * _dis];
_return pushBack ["O_Truck_03_ammo_F",200000 * _dis];
_return pushBack ["B_Heli_Light_01_F",50000 * _dis];
_return pushBack ["O_Heli_Light_02_unarmed_F",85000 * _dis];
_return pushBack ["I_Heli_light_03_unarmed_F",95000 * _dis];
_return pushBack ["I_Heli_Transport_02_F",100000 * _dis];
_return pushBack ["O_Heli_Transport_04_bench_F",120000 * _dis];
_return pushBack ["O_Heli_Transport_04_covered_F",200000 * _dis];
};
if(license_civ_gang) then {
_return pushBack ["O_G_Offroad_01_armed_F",120000 * _dis];
_return pushBack ["O_MRAP_02_hmg_F",4000000 * _dis];
_return pushBack ["O_Truck_03_device_F",225000 * _dis];
_return pushBack ["B_Heli_Transport_01_camo_F",2000000 * _dis];
_return pushBack ["B_Heli_Attack_01_F",3000000 * _dis];
_return pushBack ["O_APC_Wheeled_02_rcws_F",8000000 * _dis];
};
};

case "cop_car":
{
_return pushBack ["C_Offroad_01_F",500 * _dis];

if(__GETC__(life_coplevel) > 1) then
{
    _return pushBack ["C_SUV_01_F",2000 * _dis];
_return pushBack ["C_Hatchback_01_sport_F",3000 * _dis];
};
if(__GETC__(life_coplevel) > 2) then
{
_return pushBack ["B_MRAP_01_F",10000 * _dis];
};
if(__GETC__(life_coplevel) > 4) then
{
_return pushBack ["I_MRAP_03_F",20000 * _dis];
};
if(__GETC__(life_coplevel) > 8) then
{
_return pushBack ["B_MRAP_01_hmg_F",70000 * _dis];
};
if(__GETC__(life_coplevel) > 9) then
{
_return pushBack ["I_MRAP_03_hmg_F",100000 * _dis];
};
if(license_cop_cea) then
{
_return pushBack ["B_Quadbike_01_F",200 * _dis];
_return pushBack ["O_Truck_03_covered_F",10000 * _dis];
};
};

case "cop_air":
{
if(__GETC__(life_coplevel) > 1) then
{
_return pushBack ["B_Heli_Light_01_F",20000 * _dis];
};
if(__GETC__(life_coplevel) > 2) then
{
_return pushBack ["O_Heli_Light_02_unarmed_F",40000 * _dis];
};

if(__GETC__(life_coplevel) > 3) then
{
_return pushBack ["I_Heli_light_03_unarmed_F",40000 * _dis];
};

if(__GETC__(life_coplevel) > 5) then
{
_return pushBack ["B_Heli_Transport_03_unarmed_F",60000 * _dis];
_return pushBack ["B_Heli_Transport_01_F",200000 * _dis];
};

if(__GETC__(life_coplevel) > 7) then
{
_return pushBack ["I_Heli_light_03_F",150000 * _dis];
_return pushBack ["B_Heli_Attack_01_F",300000 * _dis];
};
};

case "cop_ship":
{
if(__GETC__(life_coplevel) > 2) then
{
_return pushBack ["B_Boat_Transport_01_F",1000 * _dis];
_return pushBack ["C_Boat_Civil_01_police_F",5000 * _dis];
};
if(__GETC__(life_coplevel) > 4) then
{
_return pushBack ["O_SDV_01_F",10000 * _dis];
};
if(__GETC__(life_coplevel) > 7) then
{
    _return pushBack ["I_Boat_Armed_01_minigun_F",30000 * _dis];
};
if(license_cop_cea) then
{
_return pushBack ["O_Boat_Armed_01_hmg_F",30000 * _dis];
_return pushBack ["B_G_Boat_Transport_01_F",8000 * _dis];
};
};

case "civ_servt":
{
_return =
[
["B_G_Offroad_01_repair_F",3000 * _dis],
["B_Truck_01_mover_F",30000 * _dis],
["O_Heli_Transport_04_repair_F",90000 * _dis]
];
};

case "merc":
{
if(license_civ_merc) then
{
_return pushBack ["O_G_Offroad_01_armed_F",120000 * _dis];
_return pushBack ["I_MRAP_03_F",90000 * _dis];
_return pushBack ["B_Heli_Light_01_F",50000 * _dis];
_return pushBack ["I_Heli_light_03_unarmed_F",95000 * _dis];
_return pushBack ["B_Heli_Transport_01_camo_F",2000000 * _dis];
_return pushBack ["B_Heli_Attack_01_F",3000000 * _dis];
};
};

case "merc_reb":
{
if(license_civ_merc_reb) then
{
_return pushBack ["O_G_Offroad_01_armed_F",120000 * _dis];
_return pushBack ["I_MRAP_03_F",90000 * _dis];
_return pushBack ["B_Heli_Light_01_F",50000 * _dis];
_return pushBack ["I_Heli_light_03_unarmed_F",95000 * _dis];
_return pushBack ["B_Heli_Transport_01_camo_F",2000000 * _dis];
_return pushBack ["B_Heli_Attack_01_F",3000000 * _dis];
};
};
case "usine":
{
if(license_civ_usine) then
{
_return pushBack ["B_Truck_01_fuel_F",120000 * _dis];
_return pushBack ["O_Truck_02_fuel_F",150000 * _dis];
_return pushBack ["O_Truck_03_fuel_F",200000 * _dis];
_return pushBack ["B_MRAP_01_F",450000 * _dis];
};
};

};
_return;