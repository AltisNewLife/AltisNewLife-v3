#include <macro.h>
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
ctrlSetText[3103,"Uniforme Gendarmerie"];
_ret = [];
switch (_filter) do
{
case 0:
{
_ret pushBack ["U_Rangemaster","Uniforme Gendarme",2];
_ret pushBack ["U_O_Wetsuit","Tenue de plongée",20];
if(__GETC__(life_coplevel) > 4) then
{
_ret pushBack ["U_B_CombatUniform_mcam","Encadrement",40];
_ret pushBack ["U_B_CTRG_3","GIGN",80];
_ret pushBack ["U_I_pilotCoveralls","Pilote",100];
};
if(__GETC__(life_coplevel) > 6) then
{
_ret pushBack ["U_B_CTRG_1","Commandement",40];
_ret pushBack ["U_B_CombatUniform_mcam_vest","Commandement",40];
};
if(license_cop_cea) then
{
_ret pushBack ["U_B_GhillieSuit","Ghillie",60];
_ret pushBack ["U_MillerBody","Tenue Militaire",40];
};
};
case 1:
{
_ret pushBack ["H_Cap_police",nil,7];
_ret pushBack ["H_PilotHelmetFighter_B","Masque a Gaz",10];
if(__GETC__(life_coplevel) > 4) then
{
_ret pushBack ["H_Beret_blk_POLICE",nil,1];
_ret pushBack ["H_Beret_blk",nil,1];
_ret pushBack ["H_Beret_grn",nil,1];
_ret pushBack ["H_Beret_red",nil,1];
_ret pushBack ["H_HelmetB_light_black","GIGN",5];
_ret pushBack ["H_PilotHelmetHeli_B","Pilote",15];

};
if(__GETC__(life_coplevel) > 8) then
{
_ret pushBack ["H_Beret_Colonel",nil,1];
};
if(license_cop_cea) then
{
_ret pushBack ["H_HelmetSpecB","Casque Militaire",60];
};
};
case 2:
{
_ret pushBack ["G_Shades_Black",nil,2];
_ret pushBack ["G_Shades_Blue",nil,2];
_ret pushBack ["G_Sport_Blackred",nil,2];
_ret pushBack ["G_Sport_Checkered",nil,2];
_ret pushBack ["G_Sport_Blackyellow",nil,2];
_ret pushBack ["G_Sport_BlackWhite",nil,2];
_ret pushBack ["G_Squares",nil,10];
_ret pushBack ["G_Aviator",nil,10];
_ret pushBack ["G_Lady_Mirror",nil,15];
_ret pushBack ["G_Lady_Dark",nil,15];
_ret pushBack ["G_Lady_Blue",nil,15];
_ret pushBack ["G_Diving",nil,5];

if ((license_cop_cea) OR (license_cop_swat)) then
{
_ret pushBack ["G_Balaclava_blk",nil,1];
_ret pushBack ["G_Balaclava_combat",nil,1];
_ret pushBack ["G_Balaclava_lowprofile",nil,1];
_ret pushBack ["G_Balaclava_oli",nil,1];
};

};
case 3:
{
_ret pushBack ["V_TacVest_blk_POLICE",nil,15];
_ret pushBack ["V_PlateCarrier1_blk",nil,15];
_ret pushBack ["V_RebreatherB",nil,50];
if(__GETC__(life_coplevel) > 6) then
{
_ret pushBack ["V_TacVestIR_blk",nil,25];
};
if(license_cop_cea) then
{
_ret pushBack ["V_PlateCarrier2_rgr",nil,60];
};
};
case 4:
{
_ret pushBack ["B_Kitbag_cbr",nil,8];
_ret pushBack ["B_Carryall_cbr",nil,12];
if(license_cop_cea) then
{
_ret pushBack ["B_UAV_01_backpack_F",nil,50];
};
};
};
//[] call life_fnc_equipGear;
_ret;