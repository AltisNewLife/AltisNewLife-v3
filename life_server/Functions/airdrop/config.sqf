airdrop_helicopter_main = "B_Heli_Transport_03_unarmed_F";
airdrop_helicopter_scnd = "B_Heli_Attack_01_F";
airdrop_chance = 100;
airdrop_positions = [[6224.38,11925.8,0.00156784],[7592,13856,0.00119019],[10018,12119.2,0.00144005],[9122.34,17830.7,0.00247192]];
_airdrop_time_interval = [1,4]; //Time given in hours, this is the interval in which the airdrop should take place
airdrop_time_min = _airdrop_time_interval select 0;
airdrop_time_max = _airdrop_time_interval select 1;
airdrop_time_min = airdrop_time_min*3600;
airdrop_time_max = airdrop_time_max*3600;
if (airdrop_time_min>=airdrop_time_max) exitWith {airdrop_enable=false;};
airdrop_enable=true;
airdrop_goingon=false;