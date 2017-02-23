private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
ctrlSetText[3103,"Vetements Rebelle"];
_ret = [];
switch (_filter) do
{
//Uniforms
case 0:
{
_ret =
[
["U_IG_Guerilla1_1",nil,300],
["U_IG_leader",nil,300],
["U_O_CombatUniform_oucamo",nil,400],
["U_O_SpecopsUniform_ocamo",nil,400],
["U_O_OfficerUniform_ocamo",nil,500],
["U_I_CombatUniform_tshirt",nil,450],
["U_I_OfficerUniform",nil,500],
["U_O_PilotCoveralls",nil,550],
["U_I_pilotCoveralls",nil,550],
["U_I_HeliPilotCoveralls",nil,550],
["U_O_GhillieSuit",nil,5000],
["U_I_GhillieSuit",nil,5000]
];
if(license_civ_gang) then
{
_ret pushBack ["U_B_CTRG_1",nil,500];
_ret pushBack ["U_B_CTRG_3",nil,500];
_ret pushBack ["U_B_CTRG_2",nil,500];
};
};
//Hats
case 1:
{
_ret =
[
["H_Cap_brn_SPECOPS",nil,80],
["H_Cap_khaki_specops_UK",nil,80],
["H_Cap_tan_specops_US",nil,80],
["H_Cap_blk_Raven",nil,80],
["H_Bandanna_camo",nil,80],
["H_Bandanna_mcamo",nil,80],
["H_HelmetB_camo",nil,80],
["H_HelmetB_sand",nil,80],
["H_HelmetO_ocamo",nil,80],
["H_HelmetO_oucamo",nil,80],
["H_HelmetIA",nil,00],
["H_PilotHelmetHeli_O",nil,80],
["H_PilotHelmetHeli_I",nil,80],
["H_Booniehat_indp",nil,80],
["H_Booniehat_dgtl",nil,80],
["H_Booniehat_mcamo",nil,80],
["H_Booniehat_dirty",nil,80],
["H_MilCap_ocamo",nil,80],
["H_MilCap_mcamo",nil,80],
["H_MilCap_rucamo",nil,80],
["H_MilCap_dgtl",nil,80],
["H_Shemag_olive",nil,80],
["H_Shemag_khk",nil,80],
["H_ShemagOpen_tan",nil,80]
];
if(license_civ_gang) then
{
_ret pushBack ["H_Beret_grn","Beret",50];
_ret pushBack ["H_Beret_02","Beret Officier",100];
_ret pushBack ["H_Beret_Colonel","Beret Colonel",200];
_ret pushBack ["H_PilotHelmetFighter_B","Masque a Gaz",500];
};
};
//Glasses
case 2:
{
_ret =
[
["G_Bandanna_aviator",nil,5],
["G_Bandanna_beast",nil,5],
["G_Bandanna_blk",nil,5],
["G_Bandanna_khk",nil,5],
["G_Bandanna_oli",nil,5],
["G_Bandanna_shades",nil,5],
["G_Bandanna_sport",nil,5],
["G_Bandanna_tan",nil,5]
];
};
//Vest
case 3:
{
_ret =
[
["V_Chestrig_khk",nil,500],
["V_Chestrig_rgr",nil,500],
["V_Chestrig_oli",nil,500],
["V_BandollierB_khk",nil,500],
["V_BandollierB_cbr",nil,500],
["V_BandollierB_rgr",nil,500],
["V_Chestrig_oli",nil,500],
["V_TacVest_khk",nil,500],
["V_TacVest_brn",nil,500],
["V_TacVest_oli",nil,500],
["V_I_G_resistanceLeader_F",nil,500],
["V_TacVest_camo",nil,500],
["V_HarnessO_brn",nil,500],
["V_HarnessOGL_brn","VESTE EXPLOSIVE",100000]
];
if(license_civ_gang) then
{
_ret pushBack ["V_PlateCarrier1_rgr",nil,200];
_ret pushBack ["V_PlateCarrier2_rgr",nil,200];
_ret pushBack ["V_PlateCarrierGL_rgr",nil,200];
_ret pushBack ["V_PlateCarrierH_CTRG",nil,200];
_ret pushBack ["V_PlateCarrierIA1_dgtl",nil,200];
_ret pushBack ["V_PlateCarrierIAGL_dgtl",nil,200];
_ret pushBack ["V_RebreatherIA",nil,400];
};
};
//Backpacks
case 4:
{
_ret =
[
["B_AssaultPack_dgtl",nil,250],
["B_AssaultPack_mcamo",nil,250],
["B_Kitbag_mcamo",nil,450],
["B_FieldPack_oucamo",nil,300],
["B_FieldPack_ocamo",nil,300],
["B_Bergen_mcamo",nil,450],
["B_Carryall_oucamo",nil,500],
["B_Carryall_ocamo",nil,500],
["B_Carryall_mcamo",nil,500]
];
};
};
_ret;