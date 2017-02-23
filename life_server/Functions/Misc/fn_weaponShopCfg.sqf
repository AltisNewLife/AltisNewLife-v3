#include <macro.h>
private["_shop","_dis"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0};
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
switch(_shop) do
{
case "cop_gendarme":
{
switch(true) do
{
case (playerSide != west): {"Tu n'es pas un policier !"};
case (__GETC__(life_coplevel) == 1):
{
["Armurerie Adjoint",
[
["SMG_01_F","Vermin .45",0 * _dis],                                    
["30Rnd_45ACP_Mag_SMG_01",nil,0 * _dis],
["arifle_sdar_F","Fusil Taser",0 * _dis],
["20Rnd_556x45_UW_mag",nil,0 * _dis],
["hgun_P07_snds_F","Pistolet Taser",0 * _dis],
["16Rnd_9x21_Mag",nil,0 * _dis],
["muzzle_snds_acp",nil,0 * _dis],
["muzzle_snds_L",nil,0 * _dis],
["optic_Holosight_smg",nil,0 * _dis],
["Chemlight_red",nil,0 * _dis],
["Chemlight_yellow",nil,0 * _dis],
["Chemlight_green",nil,0 * _dis],
["Chemlight_blue",nil,0 * _dis],
["ItemRadio","Telephone",0 * _dis],
["ItemCompass",nil,0 * _dis],
["ItemGPS",nil,0 * _dis],
["ItemMap",nil,0 * _dis],
["MineDetector",nil,0 * _dis],
["Rangefinder",nil,0 * _dis],
["Binocular",nil,0 * _dis],										
["ToolKit",nil,0 * _dis],
["Medikit",nil,0 * _dis],
["FirstAidKit",nil,0 * _dis],
["NVGoggles",nil,0 * _dis]
]
];
};
case (__GETC__(life_coplevel) == 2):
{
["Armurerie Brigadier",
[
["arifle_MXC_Black_F","MXC 6.5",0 * _dis],
["30Rnd_65x39_caseless_mag",nil,0 * _dis],
["SMG_01_F","Vermin .45",0 * _dis],                                    
["30Rnd_45ACP_Mag_SMG_01",nil,0 * _dis],
["arifle_sdar_F","Fusil Tazer",0 * _dis],
["20Rnd_556x45_UW_mag",nil,0 * _dis],
["hgun_P07_snds_F","Pistolet Taser",0 * _dis],
["16Rnd_9x21_Mag",nil,0 * _dis],
["muzzle_snds_acp",nil,0 * _dis],
["muzzle_snds_L",nil,0 * _dis],
["muzzle_snds_H",nil,0 * _dis],
["acc_flashlight",nil,0 * _dis],
["acc_pointer_IR",nil,0 * _dis],
["optic_Holosight_smg",nil,0 * _dis],
["optic_Aco",nil,0 * _dis],
["optic_Arco",nil,0 * _dis],
["optic_Hamr",nil,0 * _dis],
["optic_MRCO",nil,0 * _dis],
["optic_DMS",nil,0 * _dis],
["optic_SOS",nil,0 * _dis],
["optic_LRPS",nil,0 * _dis],
["optic_NVS",nil,0 * _dis],
["SmokeShellBlue","Gaz lacrymogene",0 * _dis],
["HandGrenade_Stone","Grenade Flash",0 * _dis], 
["Chemlight_red",nil,0 * _dis],
["Chemlight_yellow",nil,0 * _dis],
["Chemlight_green",nil,0 * _dis],
["Chemlight_blue",nil,0 * _dis],
["ItemRadio","Telephone",0 * _dis],
["ItemCompass",nil,0 * _dis],
["ItemGPS",nil,0 * _dis],
["ItemMap",nil,0 * _dis],
["MineDetector",nil,0 * _dis],
["Rangefinder",nil,0 * _dis],
["Binocular",nil,0 * _dis],										
["ToolKit",nil,0 * _dis],
["Medikit",nil,0 * _dis],
["FirstAidKit",nil,0 * _dis],
["NVGoggles_OPFOR",nil,0 * _dis]
]
];
};
case (__GETC__(life_coplevel) == 3):
{
["Armurerie Gendarme",
[
["arifle_MX_Black_F","MX 6.5",0 * _dis],
["30Rnd_65x39_caseless_mag",nil,0 * _dis],      
["arifle_MXC_Black_F","MCX 6.5",0 * _dis],
["30Rnd_65x39_caseless_mag",nil,0 * _dis],
["SMG_01_F","Vermin .45",0 * _dis],                                    
["30Rnd_45ACP_Mag_SMG_01",nil,0 * _dis],
["arifle_sdar_F","Fusil Taser",0 * _dis],
["20Rnd_556x45_UW_mag",nil,0 * _dis],
["hgun_P07_snds_F","Pistolet Taser",0 * _dis],
["16Rnd_9x21_Mag",nil,0 * _dis],
["muzzle_snds_acp",nil,0 * _dis],
["muzzle_snds_L",nil,0 * _dis],
["muzzle_snds_H",nil,0 * _dis],
["acc_flashlight",nil,0 * _dis],
["acc_pointer_IR",nil,0 * _dis],
["optic_Holosight_smg",nil,0 * _dis],
["optic_Aco",nil,0 * _dis],
["optic_Arco",nil,0 * _dis],
["optic_Hamr",nil,0 * _dis],
["optic_MRCO",nil,0 * _dis],
["optic_DMS",nil,0 * _dis],
["optic_SOS",nil,0 * _dis],
["optic_LRPS",nil,0 * _dis],
["optic_NVS",nil,0 * _dis],
["SmokeShellBlue","Gaz lacrymogene",0 * _dis],
["HandGrenade_Stone","Grenade Flash",0 * _dis], 
["Chemlight_red",nil,0 * _dis],
["Chemlight_yellow",nil,0 * _dis],
["Chemlight_green",nil,0 * _dis],
["Chemlight_blue",nil,0 * _dis],
["ItemRadio","Telephone",0 * _dis],
["ItemCompass",nil,0 * _dis],
["ItemGPS",nil,0 * _dis],
["ItemMap",nil,0 * _dis],
["MineDetector",nil,0 * _dis],
["Rangefinder",nil,0 * _dis],
["Binocular",nil,0 * _dis],										
["ToolKit",nil,0 * _dis],
["Medikit",nil,0 * _dis],
["FirstAidKit",nil,0 * _dis],
["NVGoggles_OPFOR",nil,0 * _dis]
]
];
};
case (__GETC__(life_coplevel) == 4):
{
["Armurerie Chef",
[
["arifle_MXM_Black_F","MXM 6.5",0 * _dis],
["30Rnd_65x39_caseless_mag",nil,0 * _dis],			
["arifle_MX_Black_F","MX 6.5",0 * _dis],
["30Rnd_65x39_caseless_mag",nil,0 * _dis],      
["arifle_MXC_Black_F","MXC 6.5",0 * _dis],
["30Rnd_65x39_caseless_mag",nil,0 * _dis],
["SMG_01_F","Vermin .45",0 * _dis],                                    
["30Rnd_45ACP_Mag_SMG_01",nil,0 * _dis],
["arifle_sdar_F","Fusil Taser",0 * _dis],
["20Rnd_556x45_UW_mag",nil,0 * _dis],
["hgun_P07_snds_F","Pistolet Taser",0 * _dis],
["16Rnd_9x21_Mag",nil,0 * _dis],
["muzzle_snds_acp",nil,0 * _dis],
["muzzle_snds_L",nil,0 * _dis],
["muzzle_snds_H",nil,0 * _dis],
["acc_flashlight",nil,0 * _dis],
["acc_pointer_IR",nil,0 * _dis],
["optic_Holosight_smg",nil,0 * _dis],
["optic_Aco",nil,0 * _dis],
["optic_Arco",nil,0 * _dis],
["optic_Hamr",nil,0 * _dis],
["optic_MRCO",nil,0 * _dis],
["optic_DMS",nil,0 * _dis],
["optic_SOS",nil,0 * _dis],
["optic_LRPS",nil,0 * _dis],
["optic_NVS",nil,0 * _dis],
["SmokeShellBlue","Gaz lacrymogene",0 * _dis],
["HandGrenade_Stone","Grenade Flash",0 * _dis], 
["Chemlight_red",nil,0 * _dis],
["Chemlight_yellow",nil,0 * _dis],
["Chemlight_green",nil,0 * _dis],
["Chemlight_blue",nil,0 * _dis],
["ItemRadio","Telephone",0 * _dis],
["ItemCompass",nil,0 * _dis],
["ItemGPS",nil,0 * _dis],
["ItemMap",nil,0 * _dis],
["MineDetector",nil,0 * _dis],
["Rangefinder",nil,0 * _dis],
["Binocular",nil,0 * _dis],										
["ToolKit",nil,0 * _dis],
["Medikit",nil,0 * _dis],
["FirstAidKit",nil,0 * _dis],
["NVGoggles_OPFOR",nil,0 * _dis]
]
];
};
case (__GETC__(life_coplevel) == 5):
{
["Armurerie Adjudant",
[
["arifle_MX_SW_Black_F","MX SW 6.5",0 * _dis],
["100Rnd_65x39_caseless_mag",nil,0 * _dis],
["arifle_MXM_Black_F","MXM 6.5",0 * _dis],
["30Rnd_65x39_caseless_mag",nil,0 * _dis],     
["arifle_MX_Black_F","MX 6.5",0 * _dis],
["30Rnd_65x39_caseless_mag",nil,0 * _dis],      
["arifle_MXC_Black_F","MXC 6.5",0 * _dis],
["30Rnd_65x39_caseless_mag",nil,0 * _dis],
["SMG_01_F","Vermin .45",0 * _dis],                                    
["30Rnd_45ACP_Mag_SMG_01",nil,0 * _dis],
["arifle_sdar_F","Fusil Taser",0 * _dis],
["20Rnd_556x45_UW_mag",nil,0 * _dis],
["hgun_P07_snds_F","Pistolet Taser",0 * _dis],
["16Rnd_9x21_Mag",nil,0 * _dis],
["muzzle_snds_acp",nil,0 * _dis],
["muzzle_snds_L",nil,0 * _dis],
["muzzle_snds_H",nil,0 * _dis],
["acc_flashlight",nil,0 * _dis],
["acc_pointer_IR",nil,0 * _dis],
["optic_Holosight_smg",nil,0 * _dis],
["optic_Aco",nil,0 * _dis],
["optic_Arco",nil,0 * _dis],
["optic_Hamr",nil,0 * _dis],
["optic_MRCO",nil,0 * _dis],
["optic_DMS",nil,0 * _dis],
["optic_SOS",nil,0 * _dis],
["optic_LRPS",nil,0 * _dis],
["optic_NVS",nil,0 * _dis],
["SmokeShellBlue","Gaz lacrymogene",0 * _dis],
["HandGrenade_Stone","Grenade Flash",0 * _dis],
["SatchelCharge_Remote_Mag","Explosif",0 * _dis],
["Chemlight_red",nil,0 * _dis],
["Chemlight_yellow",nil,0 * _dis],
["Chemlight_green",nil,0 * _dis],
["Chemlight_blue",nil,0 * _dis],
["ItemRadio","Telephone",0 * _dis],
["ItemCompass",nil,0 * _dis],
["ItemGPS",nil,0 * _dis],
["ItemMap",nil,0 * _dis],
["MineDetector",nil,0 * _dis],
["Rangefinder",nil,0 * _dis],
["Binocular",nil,0 * _dis],										
["ToolKit",nil,0 * _dis],
["Medikit",nil,0 * _dis],
["FirstAidKit",nil,0 * _dis],
["NVGoggles_OPFOR",nil,0 * _dis]
]
];
};
case (__GETC__(life_coplevel) == 6):
{
["Armurerie Major",
[
["srifle_EBR_F","Mk18 7.62",0 * _dis],
["20Rnd_762x51_Mag",nil,0 * _dis],
["arifle_MXM_Black_F","MXM 6.5",0 * _dis],
["30Rnd_65x39_caseless_mag",nil,0 * _dis],      
["arifle_MX_Black_F","MX 6.5",0 * _dis],
["30Rnd_65x39_caseless_mag",nil,0 * _dis],      
["arifle_MXC_Black_F","MXC 6.5",0 * _dis],
["30Rnd_65x39_caseless_mag",nil,0 * _dis],
["SMG_01_F","Vermin .45",0 * _dis],                                    
["30Rnd_45ACP_Mag_SMG_01",nil,0 * _dis],
["arifle_sdar_F","Fusil Taser",0 * _dis],
["20Rnd_556x45_UW_mag",nil,0 * _dis],
["hgun_P07_snds_F","Pistolet Taser",0 * _dis],
["16Rnd_9x21_Mag",nil,0 * _dis],
["muzzle_snds_acp",nil,0 * _dis],
["muzzle_snds_L",nil,0 * _dis],
["muzzle_snds_H",nil,0 * _dis],
["muzzle_snds_B",nil,0 * _dis],
["acc_flashlight",nil,0 * _dis],
["acc_pointer_IR",nil,0 * _dis],
["optic_Holosight_smg",nil,0 * _dis],
["optic_Aco",nil,0 * _dis],
["optic_Arco",nil,0 * _dis],
["optic_Hamr",nil,0 * _dis],
["optic_MRCO",nil,0 * _dis],
["optic_DMS",nil,0 * _dis],
["optic_SOS",nil,0 * _dis],
["optic_LRPS",nil,0 * _dis],
["optic_NVS",nil,0 * _dis],
["SmokeShellBlue","Gaz lacrymogene",0 * _dis],
["HandGrenade_Stone","Grenade Flash",0 * _dis],
["SatchelCharge_Remote_Mag","Explosif",0 * _dis],
["Chemlight_red",nil,0 * _dis],
["Chemlight_yellow",nil,0 * _dis],
["Chemlight_green",nil,0 * _dis],
["Chemlight_blue",nil,0 * _dis],
["ItemRadio","Telephone",0 * _dis],
["ItemCompass",nil,0 * _dis],
["ItemGPS",nil,0 * _dis],
["ItemMap",nil,0 * _dis],
["MineDetector",nil,0 * _dis],
["Rangefinder",nil,0 * _dis],
["Binocular",nil,0 * _dis],										
["ToolKit",nil,0 * _dis],
["Medikit",nil,0 * _dis],
["FirstAidKit",nil,0 * _dis],
["NVGoggles_OPFOR",nil,0 * _dis]
]
];
};
case (__GETC__(life_coplevel) == 7):
{
["Armurerie Lieutenant",
[
["LMG_Mk200_F","Mk200 6.5",0 * _dis],
["200Rnd_65x39_cased_Box",nil,0 * _dis],
["srifle_EBR_F","Mk18 7.62",0 * _dis],
["20Rnd_762x51_Mag",nil,0 * _dis],
["arifle_MX_SW_Black_F","MX SW 6.5",0 * _dis],
["100Rnd_65x39_caseless_mag",nil,0 * _dis],
["arifle_MXM_Black_F","MXM 6.5",0 * _dis],
["30Rnd_65x39_caseless_mag",nil,0 * _dis],      
["arifle_MX_Black_F","MX 6.5",0 * _dis],
["30Rnd_65x39_caseless_mag",nil,0 * _dis],      
["arifle_MXC_Black_F","MXC 6.5",0 * _dis],
["30Rnd_65x39_caseless_mag",nil,0 * _dis],
["SMG_01_F","Vermin .45",0 * _dis],                                    
["30Rnd_45ACP_Mag_SMG_01",nil,0 * _dis],
["arifle_sdar_F","Fusil Taser",0 * _dis],
["20Rnd_556x45_UW_mag",nil,0 * _dis],
["hgun_P07_snds_F","Pistolet Taser",0 * _dis],
["16Rnd_9x21_Mag",nil,0 * _dis],
["muzzle_snds_acp",nil,0 * _dis],
["muzzle_snds_L",nil,0 * _dis],
["muzzle_snds_H",nil,0 * _dis],
["muzzle_snds_H_MG",nil,0 * _dis],
["muzzle_snds_B",nil,0 * _dis],
["acc_flashlight",nil,0 * _dis],
["acc_pointer_IR",nil,0 * _dis],
["optic_Holosight_smg",nil,0 * _dis],
["optic_Aco",nil,0 * _dis],
["optic_Arco",nil,0 * _dis],
["optic_Hamr",nil,0 * _dis],
["optic_MRCO",nil,0 * _dis],
["optic_DMS",nil,0 * _dis],
["optic_SOS",nil,0 * _dis],
["optic_LRPS",nil,0 * _dis],
["optic_NVS",nil,0 * _dis],
["SmokeShellBlue","Gaz lacrymogene",0 * _dis],
["HandGrenade_Stone","Grenade Flash",0 * _dis],
["SatchelCharge_Remote_Mag","Explosif",0 * _dis], 
["Chemlight_red",nil,0 * _dis],
["Chemlight_yellow",nil,0 * _dis],
["Chemlight_green",nil,0 * _dis],
["Chemlight_blue",nil,0 * _dis],
["ItemRadio","Telephone",0 * _dis],
["ItemCompass",nil,0 * _dis],
["ItemGPS",nil,0 * _dis],
["ItemMap",nil,0 * _dis],
["MineDetector",nil,0 * _dis],
["Rangefinder",nil,0 * _dis],
["Binocular",nil,0 * _dis],										
["ToolKit",nil,0 * _dis],
["Medikit",nil,0 * _dis],
["FirstAidKit",nil,0 * _dis],
["NVGoggles_OPFOR",nil,0 * _dis]
]
];
};
case (__GETC__(life_coplevel) == 8):
{
["Armurerie Capitaine",
[
["srifle_EBR_F","Mk18 7.62",0 * _dis],
["20Rnd_762x51_Mag",nil,0 * _dis],
["LMG_Mk200_F","Mk200 6.5",0 * _dis],
["200Rnd_65x39_cased_Box",nil,0 * _dis],
["arifle_MX_SW_Black_F","MX SW 6.5",0 * _dis],
["100Rnd_65x39_caseless_mag",nil,0 * _dis],
["arifle_MXM_Black_F","MXM 6.5",0 * _dis],
["30Rnd_65x39_caseless_mag",nil,0 * _dis],      
["arifle_MX_Black_F","MX 6.5",0 * _dis],
["30Rnd_65x39_caseless_mag",nil,0 * _dis],      
["arifle_MXC_Black_F","MXC 6.5",0 * _dis],
["30Rnd_65x39_caseless_mag",nil,0 * _dis],
["SMG_01_F","Vermin .45",0 * _dis],                                    
["30Rnd_45ACP_Mag_SMG_01",nil,0 * _dis],
["arifle_sdar_F","Fusil Taser",0 * _dis],
["20Rnd_556x45_UW_mag",nil,0 * _dis],
["hgun_P07_snds_F","Pistolet Taser",0 * _dis],
["16Rnd_9x21_Mag",nil,0 * _dis],
["muzzle_snds_acp",nil,0 * _dis],
["muzzle_snds_L",nil,0 * _dis],
["muzzle_snds_H",nil,0 * _dis],
["muzzle_snds_H_MG",nil,0 * _dis],
["muzzle_snds_B",nil,0 * _dis],
["acc_flashlight",nil,0 * _dis],
["acc_pointer_IR",nil,0 * _dis],
["optic_Holosight_smg",nil,0 * _dis],
["optic_Aco",nil,0 * _dis],
["optic_Arco",nil,0 * _dis],
["optic_Hamr",nil,0 * _dis],
["optic_MRCO",nil,0 * _dis],
["optic_DMS",nil,0 * _dis],
["optic_SOS",nil,0 * _dis],
["optic_LRPS",nil,0 * _dis],
["optic_NVS",nil,0 * _dis],
["SmokeShellBlue","Gaz lacrymogene",0 * _dis],
["HandGrenade_Stone","Grenade Flash",0 * _dis],
["SatchelCharge_Remote_Mag","Explosif",0 * _dis], 
["Chemlight_red",nil,0 * _dis],
["Chemlight_yellow",nil,0 * _dis],
["Chemlight_green",nil,0 * _dis],
["Chemlight_blue",nil,0 * _dis],
["ItemRadio","Telephone",0 * _dis],
["ItemCompass",nil,0 * _dis],
["ItemGPS",nil,0 * _dis],
["ItemMap",nil,0 * _dis],
["MineDetector",nil,0 * _dis],
["Rangefinder",nil,0 * _dis],
["Binocular",nil,0 * _dis],										
["ToolKit",nil,0 * _dis],
["Medikit",nil,0 * _dis],
["FirstAidKit",nil,0 * _dis],
["NVGoggles_OPFOR",nil,0 * _dis]
]
];
};
case (__GETC__(life_coplevel) == 9):
{
["Armurerie Commandant",
[
["launch_NLAW_F",nil,0 * _dis],
["NLAW_F",nil,0 * _dis],
["srifle_EBR_F","Mk18 7.62",0 * _dis],
["20Rnd_762x51_Mag",nil,0 * _dis],
["LMG_Mk200_F","Mk200 6.5",0 * _dis],
["200Rnd_65x39_cased_Box",nil,0 * _dis],
["arifle_MX_SW_Black_F","MX SW 6.5",0 * _dis],
["100Rnd_65x39_caseless_mag",nil,0 * _dis],
["arifle_MXM_Black_F","MXM 6.5",0 * _dis],
["30Rnd_65x39_caseless_mag",nil,0 * _dis],      
["arifle_MX_Black_F","MX 6.5",0 * _dis],
["30Rnd_65x39_caseless_mag",nil,0 * _dis],      
["arifle_MXC_Black_F","MXC 6.5",0 * _dis],
["30Rnd_65x39_caseless_mag",nil,0 * _dis],
["SMG_01_F","Vermin .45",0 * _dis],                                    
["30Rnd_45ACP_Mag_SMG_01",nil,0 * _dis],
["arifle_sdar_F","Fusil Taser",0 * _dis],
["20Rnd_556x45_UW_mag",nil,0 * _dis],
["hgun_P07_snds_F","Pistolet Taser",0 * _dis],
["16Rnd_9x21_Mag",nil,0 * _dis],
["muzzle_snds_acp",nil,0 * _dis],
["muzzle_snds_L",nil,0 * _dis],
["muzzle_snds_H",nil,0 * _dis],
["muzzle_snds_H_MG",nil,0 * _dis],
["muzzle_snds_B",nil,0 * _dis],
["acc_flashlight",nil,0 * _dis],
["acc_pointer_IR",nil,0 * _dis],
["optic_Holosight_smg",nil,0 * _dis],
["optic_Aco",nil,0 * _dis],
["optic_Arco",nil,0 * _dis],
["optic_Hamr",nil,0 * _dis],
["optic_MRCO",nil,0 * _dis],
["optic_DMS",nil,0 * _dis],
["optic_SOS",nil,0 * _dis],
["optic_LRPS",nil,0 * _dis],
["optic_NVS",nil,0 * _dis],
["SmokeShellBlue","Gaz lacrymogene",0 * _dis],
["HandGrenade_Stone","Grenade Flash",0 * _dis],
["SatchelCharge_Remote_Mag","Explosif",0 * _dis],
["Chemlight_red",nil,0 * _dis],
["Chemlight_yellow",nil,0 * _dis],
["Chemlight_green",nil,0 * _dis],
["Chemlight_blue",nil,0 * _dis],
["ItemRadio","Telephone",0 * _dis],
["ItemCompass",nil,0 * _dis],
["ItemGPS",nil,0 * _dis],
["ItemMap",nil,0 * _dis],
["MineDetector",nil,0 * _dis],
["Rangefinder",nil,0 * _dis],
["Binocular",nil,0 * _dis],										
["ToolKit",nil,0 * _dis],
["Medikit",nil,0 * _dis],
["FirstAidKit",nil,0 * _dis],
["NVGoggles_OPFOR",nil,0 * _dis]
]
];
};
case (__GETC__(life_coplevel) == 10):
{
["Armurerie Lt-Colonel",
[
["launch_NLAW_F",nil,0 * _dis],
["NLAW_F",nil,0 * _dis],
["srifle_GM6_F","Lynx 12.7",0 * _dis],
["5Rnd_127x108_Mag",nil,0 * _dis],
["srifle_LRR_F","M320 .408",0 * _dis],
["7Rnd_408_Mag",nil,150],
["srifle_EBR_F","Mk18 7.62",0 * _dis],
["20Rnd_762x51_Mag",nil,0 * _dis],
["LMG_Mk200_F","Mk200 6.5",0 * _dis],
["200Rnd_65x39_cased_Box",nil,0 * _dis],
["arifle_MX_GL_Black_F","MX GL 6.5",0 * _dis],
["1Rnd_SmokeBlue_Grenade_shell",nil,0 * _dis],
["30Rnd_65x39_caseless_mag",nil,0 * _dis],
["arifle_MX_SW_Black_F","MX SW 6.5",0 * _dis],
["100Rnd_65x39_caseless_mag",nil,0 * _dis],
["arifle_MXM_Black_F","MXM 6.5",0 * _dis],
["30Rnd_65x39_caseless_mag",nil,0 * _dis],      
["arifle_MX_Black_F","MX 6.5",0 * _dis],
["30Rnd_65x39_caseless_mag",nil,0 * _dis],     
["arifle_MXC_Black_F","MXC 6.5",0 * _dis],
["30Rnd_65x39_caseless_mag",nil,0 * _dis],
["SMG_01_F","Vermin .45",0 * _dis],                                    
["30Rnd_45ACP_Mag_SMG_01",nil,0 * _dis],
["arifle_sdar_F","Fusil Taser",0 * _dis],
["20Rnd_556x45_UW_mag",nil,0 * _dis],
["hgun_P07_snds_F","Pistolet Taser",0 * _dis],
["16Rnd_9x21_Mag",nil,0 * _dis],
["muzzle_snds_acp",nil,0 * _dis],
["muzzle_snds_L",nil,0 * _dis],
["muzzle_snds_H",nil,0 * _dis],
["muzzle_snds_H_MG",nil,0 * _dis],
["muzzle_snds_B",nil,0 * _dis],
["acc_flashlight",nil,0 * _dis],
["acc_pointer_IR",nil,0 * _dis],
["optic_Holosight_smg",nil,0 * _dis],
["optic_Aco",nil,0 * _dis],
["optic_Arco",nil,0 * _dis],
["optic_Hamr",nil,0 * _dis],
["optic_MRCO",nil,0 * _dis],
["optic_DMS",nil,0 * _dis],
["optic_SOS",nil,0 * _dis],
["optic_LRPS",nil,0 * _dis],
["optic_NVS",nil,0 * _dis],
["SmokeShellBlue","Gaz lacrymogene",0 * _dis],
["HandGrenade_Stone","Grenade Flash",0 * _dis],
["SatchelCharge_Remote_Mag","Explosif",0 * _dis], 
["Chemlight_red",nil,0 * _dis],
["Chemlight_yellow",nil,0 * _dis],
["Chemlight_green",nil,0 * _dis],
["Chemlight_blue",nil,0 * _dis],
["ItemRadio","Telephone",0 * _dis],
["ItemCompass",nil,0 * _dis],
["ItemGPS",nil,0 * _dis],
["ItemMap",nil,0 * _dis],
["MineDetector",nil,0 * _dis],
["Rangefinder",nil,0 * _dis],
["Binocular",nil,0 * _dis],										
["ToolKit",nil,0 * _dis],
["Medikit",nil,0 * _dis],
["FirstAidKit",nil,0 * _dis],
["NVGoggles_OPFOR",nil,0 * _dis]
]
];
};
case (__GETC__(life_coplevel) == 11):
{
["Armurerie Colonel",
[
["launch_NLAW_F",nil,0 * _dis],
["NLAW_F",nil,0 * _dis],
["srifle_GM6_F","Lynx 12.7",0 * _dis],
["5Rnd_127x108_Mag",nil,0 * _dis],
["srifle_LRR_F","M320 .408",0 * _dis],
["7Rnd_408_Mag",nil,150],
["srifle_EBR_F","Mk18 7.62",0 * _dis],
["20Rnd_762x51_Mag",nil,0 * _dis],
["LMG_Mk200_F","Mk200 6.5",0 * _dis],
["200Rnd_65x39_cased_Box",nil,0 * _dis],
["arifle_MX_GL_Black_F","MX GL 6.5",0 * _dis],
["1Rnd_SmokeBlue_Grenade_shell",nil,0 * _dis],
["30Rnd_65x39_caseless_mag",nil,0 * _dis],
["arifle_MX_SW_Black_F","MX SW 6.5",0 * _dis],
["100Rnd_65x39_caseless_mag",nil,0 * _dis],
["arifle_MXM_Black_F","MXM 6.5",0 * _dis],
["30Rnd_65x39_caseless_mag",nil,0 * _dis],      
["arifle_MX_Black_F","MX 6.5",0 * _dis],
["30Rnd_65x39_caseless_mag",nil,0 * _dis],     
["arifle_MXC_Black_F","MXC 6.5",0 * _dis],
["30Rnd_65x39_caseless_mag",nil,0 * _dis],
["SMG_01_F","Vermin .45",0 * _dis],                                    
["30Rnd_45ACP_Mag_SMG_01",nil,0 * _dis],
["arifle_sdar_F","Fusil Taser",0 * _dis],
["20Rnd_556x45_UW_mag",nil,0 * _dis],
["hgun_P07_snds_F","Pistolet Taser",0 * _dis],
["16Rnd_9x21_Mag",nil,0 * _dis],
["muzzle_snds_acp",nil,0 * _dis],
["muzzle_snds_L",nil,0 * _dis],
["muzzle_snds_H",nil,0 * _dis],
["muzzle_snds_H_MG",nil,0 * _dis],
["muzzle_snds_B",nil,0 * _dis],
["acc_flashlight",nil,0 * _dis],
["acc_pointer_IR",nil,0 * _dis],
["optic_Holosight_smg",nil,0 * _dis],
["optic_Aco",nil,0 * _dis],
["optic_Arco",nil,0 * _dis],
["optic_Hamr",nil,0 * _dis],
["optic_MRCO",nil,0 * _dis],
["optic_DMS",nil,0 * _dis],
["optic_SOS",nil,0 * _dis],
["optic_LRPS",nil,0 * _dis],
["optic_NVS",nil,0 * _dis],
["SmokeShellBlue","Gaz lacrymogene",0 * _dis],
["HandGrenade_Stone","Grenade Flash",0 * _dis],
["SatchelCharge_Remote_Mag","Explosif",0 * _dis], 
["Chemlight_red",nil,0 * _dis],
["Chemlight_yellow",nil,0 * _dis],
["Chemlight_green",nil,0 * _dis],
["Chemlight_blue",nil,0 * _dis],
["ItemRadio","Telephone",0 * _dis],
["ItemCompass",nil,0 * _dis],
["ItemGPS",nil,0 * _dis],
["ItemMap",nil,0 * _dis],
["MineDetector",nil,0 * _dis],
["Rangefinder",nil,0 * _dis],
["Binocular",nil,0 * _dis],										
["ToolKit",nil,0 * _dis],
["Medikit",nil,0 * _dis],
["FirstAidKit",nil,0 * _dis],
["NVGoggles_OPFOR",nil,0 * _dis]
]
];
};
case (__GETC__(life_coplevel) == 12):
{
["Armurerie General",
[
["launch_NLAW_F",nil,0 * _dis],
["NLAW_F",nil,0 * _dis],
["srifle_GM6_F","Lynx 12.7",0 * _dis],
["5Rnd_127x108_Mag",nil,0 * _dis],
["srifle_LRR_F","M320 .408",0 * _dis],
["7Rnd_408_Mag",nil,150],
["srifle_EBR_F","Mk18 7.62",0 * _dis],
["20Rnd_762x51_Mag",nil,0 * _dis],
["LMG_Mk200_F","Mk200 6.5",0 * _dis],
["200Rnd_65x39_cased_Box",nil,0 * _dis],
["arifle_MX_GL_Black_F","MX GL 6.5",0 * _dis],
["1Rnd_SmokeBlue_Grenade_shell",nil,0 * _dis],
["30Rnd_65x39_caseless_mag",nil,0 * _dis],
["arifle_MX_SW_Black_F","MX SW 6.5",0 * _dis],
["100Rnd_65x39_caseless_mag",nil,0 * _dis],
["arifle_MXM_Black_F","MXM 6.5",0 * _dis],
["30Rnd_65x39_caseless_mag",nil,0 * _dis],      
["arifle_MX_Black_F","MX 6.5",0 * _dis],
["30Rnd_65x39_caseless_mag",nil,0 * _dis],     
["arifle_MXC_Black_F","MXC 6.5",0 * _dis],
["30Rnd_65x39_caseless_mag",nil,0 * _dis],
["SMG_01_F","Vermin .45",0 * _dis],                                    
["30Rnd_45ACP_Mag_SMG_01",nil,0 * _dis],
["arifle_sdar_F","Fusil Taser",0 * _dis],
["20Rnd_556x45_UW_mag",nil,0 * _dis],
["hgun_P07_snds_F","Pistolet Taser",0 * _dis],
["16Rnd_9x21_Mag",nil,0 * _dis],
["muzzle_snds_acp",nil,0 * _dis],
["muzzle_snds_L",nil,0 * _dis],
["muzzle_snds_H",nil,0 * _dis],
["muzzle_snds_H_MG",nil,0 * _dis],
["muzzle_snds_B",nil,0 * _dis],
["acc_flashlight",nil,0 * _dis],
["acc_pointer_IR",nil,0 * _dis],
["optic_Holosight_smg",nil,0 * _dis],
["optic_Aco",nil,0 * _dis],
["optic_Arco",nil,0 * _dis],
["optic_Hamr",nil,0 * _dis],
["optic_MRCO",nil,0 * _dis],
["optic_DMS",nil,0 * _dis],
["optic_SOS",nil,0 * _dis],
["optic_LRPS",nil,0 * _dis],
["optic_NVS",nil,0 * _dis],
["SmokeShellBlue","Gaz lacrymogene",0 * _dis],
["HandGrenade_Stone","Grenade Flash",0 * _dis],
["SatchelCharge_Remote_Mag","Explosif",0 * _dis], 
["Chemlight_red",nil,0 * _dis],
["Chemlight_yellow",nil,0 * _dis],
["Chemlight_green",nil,0 * _dis],
["Chemlight_blue",nil,0 * _dis],
["ItemRadio","Telephone",0 * _dis],
["ItemCompass",nil,0 * _dis],
["ItemGPS",nil,0 * _dis],
["ItemMap",nil,0 * _dis],
["MineDetector",nil,0 * _dis],
["Rangefinder",nil,0 * _dis],
["Binocular",nil,0 * _dis],										
["ToolKit",nil,0 * _dis],
["Medikit",nil,0 * _dis],
["FirstAidKit",nil,0 * _dis],
["NVGoggles_OPFOR",nil,0 * _dis]
]
];
};
};
};
case "med_basic":
{
switch (true) do
{
case (playerSide != independent): {"Vous n'etes pas medecin"};
default
{
["Magasin Hopital",
[
["Chemlight_red",nil,30 * _dis],
["Chemlight_yellow",nil,30 * _dis],
["Chemlight_green",nil,30 * _dis],
["Chemlight_blue",nil,30 * _dis],
["ItemRadio","Telephone",50 * _dis],
["ItemCompass",nil,10 * _dis],
["ItemGPS",nil,50 * _dis],
["ItemMap",nil,10 * _dis],
["Rangefinder",nil,100 * _dis],
["Binocular",nil,50 * _dis],
["Toolkit",nil,50 * _dis],
["Medikit",nil,50 * _dis],
["FirstAidKit",nil,30 * _dis],
["NVGoggles",nil,200 * _dis]
]
];
};
};
};
case "rebel":
{
switch(true) do
{
case (playerSide != civilian): {"Tu n'es pas un civil !"};
case (!license_civ_rebel): {"Tu n'as pas ta licence de rebelle !"};
default
{
["Armurie Rebelle",
[
["hgun_Rook40_F","Rook-40 9mm",1000 * _dis],
["16Rnd_9x21_Mag",nil,50 * _dis],
["hgun_P07_F","P07 9mm",1000 * _dis],
["16Rnd_9x21_Mag",nil,500 * _dis],
["hgun_ACPC2_F","ACP-C2 .45",1000 * _dis],
["9Rnd_45ACP_Mag",nil,50 * _dis],
["hgun_Pistol_heavy_01_F","4-five .45",2000 * _dis],
["11Rnd_45ACP_Mag",nil,50 * _dis],
["hgun_Pistol_heavy_02_F","Zubr .45",3000 * _dis],
["6Rnd_45ACP_Cylinder",nil,50 * _dis],
["hgun_PDW2000_F","PDW2000 9mm",3500 * _dis],
["30Rnd_9x21_Mag",nil,70 * _dis],
["SMG_02_F","Sting 9mm",4000 * _dis],
["30Rnd_9x21_Mag",nil,70 * _dis],
["SMG_01_F","Vermin .45",4500 * _dis],
["30Rnd_45ACP_Mag_SMG_01",nil,70 * _dis],
["arifle_SDAR_F","SDAR 5.56",5000 * _dis],
["30Rnd_556x45_Stanag",nil,100 * _dis],
["arifle_TRG21_F","TRG-21 5.56",5000 * _dis],
["30Rnd_556x45_Stanag",nil,100 * _dis],
["arifle_Mk20_F","MK20 5.56",5000 * _dis],
["30Rnd_556x45_Stanag",nil,100 * _dis],
["arifle_Katiba_F","Katiba 6.5",7500 * _dis],
["30Rnd_65x39_caseless_green",nil,100 * _dis],
["srifle_DMR_01_F","Rahim 7.62",15000 * _dis],
["10Rnd_762x51_Mag",nil,1000 * _dis],
["muzzle_snds_L",nil,500 * _dis],
["muzzle_snds_acp",nil,500 * _dis],
["muzzle_snds_M",nil,500 * _dis],
["muzzle_snds_H",nil,500 * _dis],
["muzzle_snds_B",nil,500 * _dis],
["acc_flashlight",nil,750 * _dis],
["acc_pointer_IR",nil,750 * _dis],
["optic_MRD",nil,150 * _dis],
["optic_Yorris",nil,150 * _dis],
["optic_Holosight",nil,300 * _dis],
["optic_Holosight_smg",nil,300 * _dis],
["optic_Aco",nil,300 * _dis],
["optic_Arco",nil,300 * _dis],
["optic_Hamr",nil,300 * _dis],
["optic_MRCO",nil,300 * _dis],
["optic_DMS",nil,3000 * _dis],
["optic_SOS",nil,5000 * _dis],
["optic_LRPS",nil,5000 * _dis],
["optic_NVS",nil,6000 * _dis],
["SmokeShellRed","Fumigene",500 * _dis],
["HandGrenade_Stone","Grenade Flash",800 * _dis],
["ItemRadio","Telephone",50 * _dis],
["ItemCompass",nil,10 * _dis],
["ItemGPS",nil,50 * _dis],
["ItemMap",nil,10 * _dis],
["Rangefinder",nil,100 * _dis],
["Binocular",nil,50 * _dis],
["Toolkit",nil,50 * _dis],
["FirstAidKit",nil,30 * _dis],
["NVGoggles",nil,200 * _dis]
]
];
};
};
};
case "gun":
{
switch(true) do
{
case (playerSide != civilian): {"Tu n'es pas un civil !"};
case (!license_civ_gun): {"Tu n'as pas ton permis de port d'arme!"};
default
{
["Armurie Civil",
[
["hgun_Rook40_F","Rook-40 9mm",1000 * _dis],
["16Rnd_9x21_Mag",nil,50 * _dis],
["hgun_P07_F","P07 9mm",1000 * _dis],
["16Rnd_9x21_Mag",nil,500 * _dis],
["hgun_ACPC2_F","ACP-C2 .45",1000 * _dis],
["9Rnd_45ACP_Mag",nil,50 * _dis],
["hgun_Pistol_heavy_01_F","4-five .45",2000 * _dis],
["11Rnd_45ACP_Mag",nil,50 * _dis],
["hgun_Pistol_heavy_02_F","Zubr .45",3000 * _dis],
["6Rnd_45ACP_Cylinder",nil,50 * _dis],
["optic_MRD",nil,150 * _dis],
["optic_Yorris",nil,150 * _dis],
["muzzle_snds_L",nil,500 * _dis],
["muzzle_snds_acp",nil,500 * _dis]
]
];
};
};
};

case "gang":
{
switch(true) do
{
case (playerSide != civilian): {"Tu n'es pas civil !"};
case (!license_civ_gang): {"Tu ne fais pas partie de la famille !"};
default
{
["Armurie de Gang",
[
["hgun_Rook40_F","Rook-40 9mm",1000 * _dis],
["16Rnd_9x21_Mag",nil,50 * _dis],
["hgun_P07_F","P07 9mm",1000 * _dis],
["16Rnd_9x21_Mag",nil,500 * _dis],
["hgun_ACPC2_F","ACP-C2 .45",1000 * _dis],
["9Rnd_45ACP_Mag",nil,50 * _dis],
["hgun_Pistol_heavy_01_F","4-five .45",2000 * _dis],
["11Rnd_45ACP_Mag",nil,50 * _dis],
["hgun_Pistol_heavy_02_F","Zubr .45",3000 * _dis],
["6Rnd_45ACP_Cylinder",nil,50 * _dis],
["hgun_PDW2000_F","PDW2000 9mm",3500 * _dis],
["30Rnd_9x21_Mag",nil,70 * _dis],
["SMG_02_F","Sting 9mm",4000 * _dis],
["30Rnd_9x21_Mag",nil,70 * _dis],
["SMG_01_F","Vermin .45",4500 * _dis],
["30Rnd_45ACP_Mag_SMG_01",nil,70 * _dis],
["arifle_SDAR_F","SDAR 5.56",5000 * _dis],
["30Rnd_556x45_Stanag",nil,100 * _dis],
["arifle_TRG21_F","TRG-21 5.56",5000 * _dis],
["30Rnd_556x45_Stanag",nil,100 * _dis],
["arifle_Mk20_F","MK20 5.56",5000 * _dis],
["30Rnd_556x45_Stanag",nil,100 * _dis],
["arifle_Katiba_F","Katiba 6.5",7500 * _dis],
["30Rnd_65x39_caseless_green",nil,100 * _dis],
["arifle_Katiba_GL_F","Katiba GL 6.5",7500 * _dis],
["30Rnd_65x39_caseless_green",nil,100 * _dis],
["1Rnd_SmokeRed_Grenade_shell",nil,1000 * _dis],
["srifle_DMR_01_F","Rahim 7.62",15000 * _dis],
["10Rnd_762x51_Mag",nil,1000 * _dis],
["LMG_Zafir_F","Zafir 7.62",25000 * _dis],
["150Rnd_762x51_Box",nil,2000 * _dis],
["srifle_EBR_F","Mk18 7.62",55000 * _dis],
["20Rnd_762x51_Mag",nil,3000 * _dis],
["srifle_LRR_CAMO_F","M320 .408",75000 * _dis],
["7Rnd_408_Mag",nil,3500 * _dis],
["muzzle_snds_L",nil,500 * _dis],
["muzzle_snds_acp",nil,500 * _dis],
["muzzle_snds_M",nil,500 * _dis],
["muzzle_snds_H",nil,500 * _dis],
["muzzle_snds_B",nil,500 * _dis],
["acc_flashlight",nil,750 * _dis],
["acc_pointer_IR",nil,750 * _dis],
["optic_MRD",nil,150 * _dis],
["optic_Yorris",nil,150 * _dis],
["optic_Holosight",nil,300 * _dis],
["optic_Holosight_smg",nil,300 * _dis],
["optic_Aco",nil,300 * _dis],
["optic_Arco",nil,300 * _dis],
["optic_Hamr",nil,300 * _dis],
["optic_MRCO",nil,300 * _dis],
["optic_DMS",nil,3000 * _dis],
["optic_SOS",nil,5000 * _dis],
["optic_LRPS",nil,5000 * _dis],
["optic_NVS",nil,6000 * _dis],
["SmokeShellRed","Fumigene",500 * _dis],
["HandGrenade_Stone","Grenade Flash",800 * _dis],
["SLAMDirectionalMine_Wire_Mag",nil,2000 * _dis],
["Chemlight_red",nil,30 * _dis],
["Chemlight_yellow",nil,30 * _dis],
["Chemlight_green",nil,30 * _dis],
["Chemlight_blue",nil,30 * _dis],
["ItemRadio","Telephone",50 * _dis],
["ItemCompass",nil,10 * _dis],
["ItemGPS",nil,50 * _dis],
["ItemMap",nil,10 * _dis],
["Rangefinder",nil,100 * _dis],
["Binocular",nil,50 * _dis],
["Toolkit",nil,50 * _dis],
["FirstAidKit",nil,30 * _dis],
["NVGoggles",nil,200 * _dis]
]
];
};
};
};

case "merc":
{
switch(true) do
{
case (playerSide != civilian): {"Tu ne peux pas etre un mercenaire !"};
case (!license_civ_merc): {"Tu n'as pas la licence de Mercenaire !"};
default
{
["Armurerie Mercenaire",
[
["srifle_GM6_F",nil,85000 * _dis],
["5Rnd_127x108_Mag",nil,4000 * _dis],
["5Rnd_127x108_APDS_Mag",nil,20000 * _dis],
["srifle_EBR_F",nil,50000 * _dis],
["20Rnd_762x51_Mag",nil,2500 * _dis],
["LMG_Mk200_F",nil,40000 * _dis],
["200Rnd_65x39_cased_Box",nil,2000 * _dis],
["arifle_MXM_F",nil,35000 * _dis],
["30Rnd_65x39_caseless_mag",nil,2000 * _dis],
["arifle_MX_SW_F",nil,35000 * _dis],
["100Rnd_65x39_caseless_mag",nil,2000 * _dis],
["arifle_MX_F",nil,25000 * _dis],
["30Rnd_65x39_caseless_mag",nil,1500 * _dis],
["arifle_MXC_F",nil,25000 * _dis],
["30Rnd_65x39_caseless_mag",nil,1500 * _dis],
["SMG_01_F","Vermin .45",0 * _dis],                                    
["30Rnd_45ACP_Mag_SMG_01",nil,0 * _dis],
["hgun_ACPC2_F","ACP-C2 .45",1000 * _dis],
["9Rnd_45ACP_Mag",nil,50 * _dis],
["muzzle_snds_acp",nil,500 * _dis],
["muzzle_snds_H",nil,500 * _dis],
["muzzle_snds_H_MG",nil,500 * _dis],
["muzzle_snds_B",nil,500 * _dis],
["acc_flashlight",nil,750 * _dis],
["acc_pointer_IR",nil,750 * _dis],
["optic_Holosight",nil,300 * _dis],
["optic_Holosight_smg",nil,300 * _dis],
["optic_Aco",nil,300 * _dis],
["optic_Arco",nil,300 * _dis],
["optic_Hamr",nil,300 * _dis],
["optic_MRCO",nil,300 * _dis],
["optic_DMS",nil,3000 * _dis],
["optic_SOS",nil,5000 * _dis],
["optic_LRPS",nil,5000 * _dis],
["optic_NVS",nil,6000 * _dis],
["SmokeShell","Fumigene",0 * _dis],
["HandGrenade_Stone","Grenade Flash",800 * _dis],
["SLAMDirectionalMine_Wire_Mag",nil,2000 * _dis],
["Chemlight_red",nil,30 * _dis],
["Chemlight_yellow",nil,30 * _dis],
["Chemlight_green",nil,30 * _dis],
["Chemlight_blue",nil,30 * _dis],
["ItemRadio","Telephone",50 * _dis],
["ItemCompass",nil,10 * _dis],
["ItemGPS",nil,50 * _dis],
["ItemMap",nil,10 * _dis],
["Rangefinder",nil,100 * _dis],
["Binocular",nil,50 * _dis],
["Toolkit",nil,50 * _dis],
["FirstAidKit",nil,30 * _dis],
["NVGoggles_OPFOR",nil,200 * _dis]
]
];
};
};
};

case "bhws":
{
switch(true) do
{
case (playerSide != civilian): {"Tu ne peux pas etre un chasseur de prime !"};
case (!license_civ_bountyh): {"Tu n'as pas la licence de Chasseur de prime !"};
default
{
["Armurerie Chasseur de prime",
[
["arifle_Mk20C_plain_F","Tazer",1000 * _dis],
["30Rnd_556x45_Stanag_Tracer_Yellow","Mag Tazer",25 * _dis],
["hgun_Pistol_heavy_02_F","Arme letale",2000 * _dis],
["6Rnd_45ACP_Cylinder",nil,50 * _dis],
["SMG_01_F","Arme letale",4000 * _dis],
["30Rnd_45ACP_Mag_SMG_01",nil,50 * _dis],
["muzzle_snds_acp",nil,500 * _dis],
["muzzle_snds_M",nil,500 * _dis],
["acc_flashlight",nil,750 * _dis],
["acc_pointer_IR",nil,750 * _dis],
["optic_Yorris",nil,150 * _dis],
["optic_Holosight",nil,300 * _dis],
["optic_Holosight_smg",nil,300 * _dis],
["optic_Aco",nil,300 * _dis],
["optic_Arco",nil,300 * _dis],
["optic_Hamr",nil,300 * _dis],
["optic_MRCO",nil,300 * _dis],
["Smokeshell","Grenade fumigene",800 * _dis],
["Chemlight_red",nil,30 * _dis],
["Chemlight_yellow",nil,30 * _dis],
["Chemlight_green",nil,30 * _dis],
["Chemlight_blue",nil,30 * _dis],
["ItemRadio","Telephone",50 * _dis],
["ItemCompass",nil,10 * _dis],
["ItemGPS",nil,50 * _dis],
["ItemMap",nil,10 * _dis],
["Rangefinder",nil,100 * _dis],
["Binocular",nil,50 * _dis],
["Toolkit",nil,50 * _dis],
["FirstAidKit",nil,30 * _dis],
["NVGoggles_OPFOR",nil,200 * _dis]
]
];
};
};
};

case "swat":
{
switch(true) do
{
case (playerSide != west): {"Tu ne peux pas etre GIGN !"};
case (!license_cop_swat): {"Tu n'as pas la licence de GIGN !"};
default
{
["Armurerie GIGN",
[
["srifle_GM6_F",nil,0 * _dis],
["5Rnd_127x108_Mag",nil,0 * _dis],
["srifle_LRR_F",nil,0 * _dis],
["7Rnd_408_Mag",nil,0 * _dis],
["srifle_EBR_F",nil,0 * _dis],
["20Rnd_762x51_Mag",nil,0 * _dis],
["LMG_Mk200_F",nil,0 * _dis],
["200Rnd_65x39_cased_Box",nil,0 * _dis],
["arifle_MX_GL_Black_F",nil,0 * _dis],
["1Rnd_SmokeBlue_Grenade_shell",nil,0 * _dis],
["30Rnd_65x39_caseless_mag",nil,0 * _dis],
["arifle_MXM_Black_F",nil,0 * _dis],
["30Rnd_65x39_caseless_mag",nil,0 * _dis],
["arifle_MX_SW_Black_F",nil,0 * _dis],
["100Rnd_65x39_caseless_mag",nil,0 * _dis],
["arifle_MXC_Black_F",nil,0 * _dis],
["30Rnd_65x39_caseless_mag",nil,0 * _dis],
["arifle_MX_Black_F",nil,0 * _dis],
["30Rnd_65x39_caseless_mag",nil,0 * _dis],
["SMG_01_F","Vermin",0 * _dis],
["30Rnd_45ACP_Mag_SMG_01",nil,0 * _dis],
["arifle_sdar_F","Fusil Tazer",0 * _dis],
["20Rnd_556x45_UW_mag","Fusil Tazer Mag.",0 * _dis],
["hgun_P07_snds_F","Tazer",0 * _dis],
["16Rnd_9x21_Mag",nil,0 * _dis],
["muzzle_snds_acp",nil,0 * _dis],
["muzzle_snds_L",nil,0 * _dis],
["muzzle_snds_H",nil,0 * _dis],
["muzzle_snds_H_MG",nil,0 * _dis],
["muzzle_snds_B",nil,0 * _dis],
["acc_flashlight",nil,0 * _dis],
["acc_pointer_IR",nil,0 * _dis],
["optic_Holosight_smg",nil,0 * _dis],
["optic_Aco",nil,0 * _dis],
["optic_Arco",nil,0 * _dis],
["optic_Hamr",nil,0 * _dis],
["optic_MRCO",nil,0 * _dis],
["optic_DMS",nil,0 * _dis],
["optic_SOS",nil,0 * _dis],
["optic_LRPS",nil,0 * _dis],
["optic_NVS",nil,0 * _dis],
["SmokeShellBlue","Gaz lacrymogene",0 * _dis],
["HandGrenade_Stone","Grenade Flash",0 * _dis],
["SatchelCharge_Remote_Mag","Explosif",0 * _dis],
["Chemlight_red",nil,0 * _dis],
["Chemlight_yellow",nil,0 * _dis],
["Chemlight_green",nil,0 * _dis],
["Chemlight_blue",nil,0 * _dis],
["ItemRadio","Telephone",0 * _dis],
["ItemCompass",nil,0 * _dis],
["ItemGPS",nil,0 * _dis],
["ItemMap",nil,0 * _dis],
["MineDetector",nil,0 * _dis],
["Rangefinder",nil,0 * _dis],
["Binocular",nil,0 * _dis],
["Toolkit",nil,0 * _dis],
["Medikit",nil,0 * _dis],
["FirstAidKit",nil,0 * _dis],
["NVGoggles_OPFOR",nil,0 * _dis]
]
];
};
};
};

case "cea":
{
switch(true) do
{
case (playerSide != west): {"Tu ne peux pas etre membre du CEA !"};
case (!license_cop_cea): {"Tu n'as pas la licence CEA !"};
default
{
["Armurerie CEA",
[
["srifle_GM6_CAMO_F","Lyxn 12.7",0 * _dis],
["5Rnd_127x108_APDS_Mag",nil,0 * _dis],
["srifle_LRR_CAMO_F","M320 .408",0 * _dis],
["7Rnd_408_Mag",nil,0 * _dis],
["srifle_EBR_F","Mk18 7.62",0 * _dis],
["20Rnd_762x51_Mag",nil,0 * _dis],
["LMG_Zafir_F","Zafir 7.62",0 * _dis],
["150Rnd_762x51_Box",nil,0 * _dis],
["LMG_Mk200_F","Mk200 6.5",0 * _dis],
["200Rnd_65x39_cased_Box",nil,0 * _dis],
["muzzle_snds_H_MG",nil,0 * _dis],
["muzzle_snds_B",nil,0 * _dis],
["acc_flashlight",nil,0 * _dis],
["acc_pointer_IR",nil,0 * _dis],
["optic_Holosight",nil,0 * _dis],
["optic_Aco",nil,0 * _dis],
["optic_Arco",nil,0 * _dis],
["optic_Hamr",nil,0 * _dis],
["optic_MRCO",nil,0 * _dis],
["optic_DMS",nil,0 * _dis],
["optic_SOS",nil,0 * _dis],
["optic_LRPS",nil,0 * _dis],
["optic_NVS",nil,0 * _dis],
["SmokeShellBlue","Gaz lacrymogene",0 * _dis],
["HandGrenade_Stone","Grenade Flash",0 * _dis],
["SatchelCharge_Remote_Mag","Explosif",0 * _dis],
["Chemlight_red",nil,0 * _dis],
["Chemlight_yellow",nil,0 * _dis],
["Chemlight_green",nil,0 * _dis],
["Chemlight_blue",nil,0 * _dis],
["ItemRadio","Telephone",0 * _dis],
["ItemCompass",nil,0 * _dis],
["B_UavTerminal","Telecommande Drone",1000 * _dis],
["ItemGPS",nil,0 * _dis],
["ItemMap",nil,0 * _dis],
["MineDetector",nil,0 * _dis],
["Rangefinder",nil,0 * _dis],
["Binocular",nil,0 * _dis],
["Toolkit",nil,0 * _dis],
["Medikit",nil,0 * _dis],
["FirstAidKit",nil,0 * _dis],
["NVGoggles",nil,0 * _dis]
]
];
};
};
};

case "genstore":
{
["Magasin General",
[
["Chemlight_red",nil,30 * _dis],
["Chemlight_yellow",nil,30 * _dis],
["Chemlight_green",nil,30 * _dis],
["Chemlight_blue",nil,30 * _dis],
["ItemRadio","Telephone",50 * _dis],
["ItemCompass",nil,10 * _dis],
["ItemGPS",nil,50 * _dis],
["ItemMap",nil,10 * _dis],
["Rangefinder",nil,100 * _dis],
["Binocular",nil,50 * _dis],
["Toolkit",nil,50 * _dis],
["FirstAidKit",nil,30 * _dis],
["NVGoggles_INDEP",nil,200 * _dis]
]
];
};

case "uranium":
{
switch(true) do
{
case (playerSide != civilian): {"Tu n'es pas civil!"};
case (!license_civ_uranium): {"Tu n'as pas la formation Uranium !"};
default
{
["Objet Traitement Uranium",
[
["Toolkit",nil,50 * _dis],
["FirstAidKit",nil,30 * _dis],
["U_C_Scientist","Combinaison Anti-radiation",2000 * _dis]
]
];
};
};
};

case "usine":
{
switch(true) do
{
case (playerSide != civilian): {"Tu n'es pas civil !"};
case (!license_civ_usine): {"Tu ne fait pas partie de cette entreprise !"};
default
{
["Magasin Entreprise",
[
["U_C_Scientist","Combinaison Anti-radiation",1000 * _dis],
["hgun_P07_F","P07 9mm",800 * _dis],
["30Rnd_9x21_Mag",nil,100 * _dis],
["arifle_MXM_Black_F","MXM 6.5",2000 * _dis],
["30Rnd_65x39_caseless_mag",nil,200 * _dis],
["muzzle_snds_L",nil,500 * _dis],
["muzzle_snds_H",nil,500 * _dis],
["acc_flashlight",nil,750 * _dis],
["acc_pointer_IR",nil,750 * _dis],
["optic_Aco",nil,300 * _dis],
["optic_Arco",nil,300 * _dis],
["optic_Hamr",nil,300 * _dis],
["optic_MRCO",nil,300 * _dis],
["optic_DMS",nil,3000 * _dis],
["optic_SOS",nil,5000 * _dis],
["optic_LRPS",nil,5000 * _dis],
["optic_NVS",nil,6000 * _dis],
["Chemlight_red",nil,30 * _dis],
["Chemlight_yellow",nil,30 * _dis],
["Chemlight_green",nil,30 * _dis],
["Chemlight_blue",nil,30 * _dis],
["ItemRadio","Telephone",50 * _dis],
["ItemCompass",nil,10 * _dis],
["ItemGPS",nil,50 * _dis],
["ItemMap",nil,10 * _dis],
["Rangefinder",nil,100 * _dis],
["Binocular",nil,50 * _dis],
["Toolkit",nil,50 * _dis],
["FirstAidKit",nil,30 * _dis],
["NVGoggles",nil,200 * _dis]
]
];
};
};
};
};