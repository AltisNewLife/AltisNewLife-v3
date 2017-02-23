#include <macro.h>
if(playerSide == west) then
{
if ((__GETC__(life_coplevel) > 1) && (uniform player == "U_Rangemaster")) then {
player setObjectTextureGlobal[0,"texture\flic\gendarme.jpg"];
};

if ((__GETC__(life_coplevel) > 4) && (uniform player == "U_B_CombatUniform_mcam")) then {
player setObjectTextureGlobal[0,"texture\flic\encadrement.jpg"];
};

if ((__GETC__(life_coplevel) > 6) && (uniform player == "U_B_CTRG_1")) then {
player setObjectTextureGlobal[0,"texture\flic\commandement.jpg"];
};

if ((__GETC__(life_coplevel) > 6) && (uniform player == "U_B_CombatUniform_mcam_vest")) then {
player setObjectTextureGlobal[0,"texture\flic\commandement.jpg"];
};

if ((__GETC__(life_coplevel) > 4) && (uniform player == "U_B_CTRG_3")) then {
player setObjectTextureGlobal[0,"texture\flic\gign.jpg"];
};

};

if(playerSide == independent) then
{
if (uniform player == "U_C_WorkerCoveralls") then {
player setObjectTextureGlobal[0,"texture\clothes_civ\medic_uniform2.jpg"];
};
};

if(playerSide == civilian) then
{
if (uniform player == "U_I_CombatUniform") then {
player setObjectTextureGlobal[0,"texture\clothes_civ\bh.jpg"];
};
if (uniform player == "U_C_WorkerCoveralls") then {
player setObjectTextureGlobal[0,"texture\clothes_civ\depanneur.jpg"];
};
if (uniform player == "U_C_Scientist") then {
player setObjectTextureGlobal[0,"texture\clothes_civ\nuke.jpg"];
};
if (uniform player == "U_B_CombatUniform_mcam_vest") then {
player setObjectTextureGlobal[0,"texture\clothes_civ\merc.jpg"];
};
if (uniform player == "U_B_CombatUniform_mcam") then {
player setObjectTextureGlobal[0,"texture\clothes_civ\merc_reb.jpg"];
};
if (uniform player == "U_MillerBody") then {
player setObjectTextureGlobal[0,"texture\clothes_civ\prisonnier.jpg"];
};
if (uniform player == "U_C_Poor_2") then {
player setObjectTextureGlobal[0,"texture\clothes_civ\kitty.jpg"];
};
};

if(playerSide == east) then
{
if (uniform player == "U_C_WorkerCoveralls") then {
player setObjectTextureGlobal[0,"texture\clothes_civ\macdo.jpg"];
};
if (uniform player == "U_B_Wetsuit") then {
player setObjectTextureGlobal[0,"texture\clothes_civ\batman.jpg"];
};
if (uniform player == "U_Rangemaster") then {
player setObjectTextureGlobal[0,"texture\clothes_civ\cravate.jpg"];
};
};