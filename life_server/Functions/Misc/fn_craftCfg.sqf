#include <macro.h>
/*
	File: fn_craftCfg.sqf
	Author: EdgeKiller

	Description:
	Master configuration file for the crafting menu.

*/
private["_craft"];
_craft = [_this,0,"",[""]] call BIS_fnc_param;
if(_craft == "") exitWith {closeDialog 0}; //Bad shop type passed.

switch(_craft) do
{
	case "weapon":
	{
		switch(true) do
		{
			default
			{
				["Weapons",
					[
						//[Object classname, [item #1,quantity item #1,item #2,quantity item #2]],]
						["hgun_P07_F", ["life_inv_copperr",4,"life_inv_ironr",4,"life_inv_kit",1]],
						["hgun_Rook40_F", ["life_inv_copperr",5,"life_inv_ironr",6,"life_inv_kit",1]],
						["hgun_Pistol_heavy_02_F", ["life_inv_copperr",7,"life_inv_ironr",7,"life_inv_kit",1]],
						["SMG_01_F", ["life_inv_copperr",9,"life_inv_ironr",8,"life_inv_kit",1]],
						["SMG_02_F", ["life_inv_copperr",10,"life_inv_ironr",9,"life_inv_kit",1]],
						["hgun_PDW2000_F", ["life_inv_copperr",12,"life_inv_ironr",11,"life_inv_kit",1]],
						["arifle_TRG21_F", ["life_inv_lingotor",1,"life_inv_copperr",10,"life_inv_ironr",10,"life_inv_kit",1]],
						["arifle_SDAR_F", ["life_inv_lingotor",1,"life_inv_copperr",12,"life_inv_ironr",12,"life_inv_kit",1]],
						["arifle_Mk20_F", ["life_inv_lingotor",1,"life_inv_copperr",13,"life_inv_ironr",13,"life_inv_kit",2]],						
						["arifle_Katiba_F", ["life_inv_lingotor",1,"life_inv_copperr",14,"life_inv_ironr",14,"life_inv_kit",2]],						
						["arifle_MX_F", ["life_inv_lingotor",2,"life_inv_copperr",15,"life_inv_ironr",15,"life_inv_kit",2]],
						["30Rnd_556x45_Stanag", ["life_inv_copperr",2,"life_inv_ironr",2,"life_inv_poudre",20]],
						["30Rnd_65x39_caseless_green", ["life_inv_copperr",2,"life_inv_ironr",2,"life_inv_poudre",20]],						
						["30Rnd_65x39_caseless_mag", ["life_inv_copperr",2,"life_inv_ironr",2,"life_inv_poudre",20]],							
						["200Rnd_65x39_cased_Box", ["life_inv_copperr",3,"life_inv_ironr",3,"life_inv_poudre",30]],
						["10Rnd_762x51_Mag", ["life_inv_copperr",2,"life_inv_ironr",2,"life_inv_poudre",20]]	
					]
				];
			};
		};
	};

	case "uniform":
	{
		switch(true) do
		{
			default
			{
				["Clothes",
					[
						["U_IG_Guerilla1_1", ["life_inv_tissu",5]],
						["U_IG_Guerilla2_1", ["life_inv_tissu",5]],
						["U_C_HunterBody_grn", ["life_inv_tissu",10]],
						["U_NikosBody", ["life_inv_tissu",10]]			
					]
				];
			};
		};
	};

	case "backpack":
	{
		switch(true) do
		{
			default
			{
				["Backpacks",
					[
						["B_AssaultPack_cbr", ["life_inv_tissu",15,"life_inv_ironr",1]],
						["B_Carryall_oli", ["life_inv_tissu",20,"life_inv_ironr",1]]				
					]
				];
			};
		};
	};

	case "item":
	{
		switch(true) do
		{
			default
			{
				["Items",
					[
						["life_inv_pickaxe", ["life_inv_ironr",2]],
						["life_inv_zipties", ["life_inv_ironr",2]],
						["life_inv_nitro", ["life_inv_ironr",2,"life_inv_oilp",1,"life_inv_electro",1]],
						["life_inv_gpstracker", ["life_inv_lingotor",1,"life_inv_ironr",2,"life_inv_electro",1]],
						["life_inv_underwatercharge", ["life_inv_poudre",30,"life_inv_ironr",2,"life_inv_electro",1]],	
						["life_inv_blastingcharge", ["life_inv_poudre",30,"life_inv_ironr",2,"life_inv_electro",1]]			
					]
				];
			};
		};
	};
};