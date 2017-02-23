#include <macro.h> 
private["_vehicle","_ret","_path"];
_vehicle = [_this,0,"",[""]] call BIS_fnc_param;
if(_vehicle == "") exitWith {[]};
_ret = [];
switch (_vehicle) do
{
	case "B_Quadbike_01_F":
	{
		_ret = 
		[
			["\A3\Soft_F\Quadbike_01\Data\quadbike_01_opfor_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_black_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_blue_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_red_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_white_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_indp_co.paa","civ"],
			["\a3\soft_f_gamma\Quadbike_01\data\quadbike_01_indp_hunter_co.paa","civ"],
			["\a3\soft_f_gamma\Quadbike_01\data\quadbike_01_indp_hunter_co.paa","civ"],
			["texture\car\flic\gendarmerie_quad.jpg","cop"]		
		];
	};
	case "C_Hatchback_01_F":
	{
		_ret =
		[
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base01_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base02_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base03_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base04_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base06_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base07_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base08_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base09_co.paa","civ"],
			["texture\car\flic\gendarmerie_hatch.jpg","cop"]
		];
	};
	case "C_Hatchback_01_sport_F":
	{
		_ret =
		[
			["texture\car\hatch_ocho.jpg","civ"],	
			["texture\car\hatch_porche.jpg","civ"],
			["texture\car\hatch_monster.jpg","civ"],
			["texture\car\flic\gendarmerie_hatch.jpg","cop"]
		];
	};
	case "C_Offroad_01_F":
	{
		_ret = 
		[
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_co.paa", "civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE02_CO.paa", "civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE03_CO.paa","civ"],			
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE04_CO.paa","civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE05_CO.paa","civ"],
			["texture\car\medic\med_offroad.jpg","med"],				
			["texture\car\offroad_monster.jpg","civ"],				
			["texture\car\offroad_noir.jpg","civ"],		
            ["texture\car\flic\gendarmerie_offroad.jpg","cop"]
		];
	};

	
	case "C_SUV_01_F":
	{
		_ret =
		[
			["texture\car\suv_blanc.jpg","civ"],
			["texture\car\suv_noir.jpg","civ"],
			["texture\car\suv_monster.jpg","civ"],
			["texture\car\suv_starsky.jpg","civ"],	
			["texture\car\flic\gendarmerie_suv.jpg","cop"]		
		];
	};
	
	case "C_Van_01_box_F":
	{
		_ret = 
		[
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa","civ"],
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa","civ"],
			["texture\car\medic\medic_box.jpg","med","texture\car\medic\medic_box2.jpg"]				
		];
	};
	
	case "C_Van_01_transport_F":
	{
		_ret = 
		[
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa","civ"],
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa","civ"]
		];
	};
	
	
	case "B_Heli_Light_01_F":
	{
		_ret = 
		[
			["texture\car\flic\gendarmerie_heli.jpg","cop"],	
			["texture\car\medic\heli_medic.jpg","med"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_blue_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_blueline_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_elliptical_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_furious_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_jeans_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_speedy_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_sunset_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_vrana_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_wave_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_digital_co.paa","civ"],
			["texture\car\heli_civil.jpg","civ"],
			["texture\car\lbird_reb.jpg","civ"]		
		];
	};
	
	case "I_Heli_Transport_02_F":
	{
		_path = "\a3\air_f_beta\Heli_Transport_02\Data\Skins\";
		_ret =
		[
			[_path + "heli_transport_02_1_ion_co.paa","civ",_path + "heli_transport_02_2_ion_co.paa",_path + "heli_transport_02_3_ion_co.paa"],
			[_path + "heli_transport_02_1_dahoman_co.paa","civ",_path + "heli_transport_02_2_dahoman_co.paa",_path + "heli_transport_02_3_dahoman_co.paa"],
			["texture\car\mohawk_reb.jpg","civ","texture\car\mohawk_reb.jpg","texture\car\mohawk_reb.jpg"]
		];
	};
	
	case "I_Heli_light_03_unarmed_F":
	{
		_ret = 
		[
			["texture\car\hellcat_reb.jpg","civ"],
			["texture\car\noir.jpg","cop"]
		];
	};
	
	case "O_Heli_Light_02_unarmed_F":
	{
		_ret = 
		[
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_co.paa","civ"],
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_civilian_co.paa","civ"],
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_indp_co.paa","civ"],
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_opfor_co.paa","civ"],
			["texture\car\medic\med_orca.jpg","med"]
		];
	};
	
	
	case "B_MRAP_01_F":
	{
		_ret = 
		[
			["texture\car\flic\gendarmerie_hunter.jpg","cop","texture\car\flic\gendarmerie_hunter_back.jpg"],
			["texture\car\hunter_cdp.jpg","civ","texture\car\hunter_cdp_back.jpg"],			
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","civ"],
		    ["texture\car\noir.jpg","cop"]
		];
	};

	case "B_MRAP_01_hmg_F":
	{
		_ret = 
		[
			["texture\car\flic\gendarmerie_hunter.jpg","cop","texture\car\flic\gendarmerie_hunter_back.jpg"],
			["texture\car\hunter_cdp.jpg","civ","texture\car\hunter_cdp_back.jpg"],			
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","civ"],
		    ["texture\car\noir.jpg","cop"]
		];
	};
	
	case "O_MRAP_02_F":
	{
		_ret = 
		[
			["texture\car\ifrit_foret_front.jpg","civ","texture\car\ifrit_foret_back.jpg"],	
			["texture\car\ifrit_red_front.jpg","civ","texture\car\ifrit_red_back.jpg"],	
			["texture\car\ifrit_noir_front.jpg","civ","texture\car\ifrit_noir_back.jpg"],
			["texture\car\ifrit_white_front.jpg","civ","texture\car\ifrit_white_back.jpg"]		
		];
	};

	case "O_MRAP_02_hmg_F":
	{
		_ret = 
		[
			["texture\car\ifrit_foret_front.jpg","civ","texture\car\ifrit_foret_back.jpg"],	
			["texture\car\ifrit_red_front.jpg","civ","texture\car\ifrit_red_back.jpg"],	
			["texture\car\ifrit_noir_front.jpg","civ","texture\car\ifrit_noir_back.jpg"],	
			["texture\car\ifrit_white_front.jpg","civ","texture\car\ifrit_white_back.jpg"]	
		];
	};
	
	case "I_MRAP_03_F":
	{
		_ret = 
		[
			["texture\car\strider_merc.jpg","merc"],
			["texture\car\flic\gendarmerie_strider.jpg","cop"],
		    ["texture\car\noir.jpg","civ"],
		    ["texture\car\noir.jpg","cop"]
		];
	};

	case "I_Truck_02_covered_F":
	{
		_ret = 
		[
		    ["texture\car\zamak_fed.jpg","civ","texture\car\zamak_fed_back.jpg"],
			["texture\car\zamak_redbull.jpg","civ","texture\car\zamak_redbull_back.jpg"],
		    ["texture\car\zamak_weed.jpg","civ","texture\car\zamak_weed_back.jpg"],			
			["\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa","civ","\a3\soft_f_beta\Truck_02\data\truck_02_kuz_co.paa"],
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","civ"]
		];
	};
	
	case "I_Truck_02_transport_F":
	{
		_ret = 
		[
			["\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa","civ","\a3\soft_f_beta\Truck_02\data\truck_02_kuz_co.paa"],
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","civ"]
		];
	};
	
	case "B_Truck_01_mover_F":
	{
		_ret = 
		[
			["texture\car\hemtt_depanneur.jpg","civ"]
		];
	};

};

_ret;