private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
ctrlSetText[3103,"Vetement mercenaire"];
_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{
		_ret = 
		[
		    ["U_B_CombatUniform_mcam","Tenue Mercenaire",50],
			["U_B_HeliPilotCoveralls",nil,1000],
			["U_O_Wetsuit","Tenue de plongée",200]		
		];
	};
	
	//Hats
	case 1:
	{
		_ret = 
		[
			["H_Watchcap_blk",nil,85],		
			["H_HelmetB_light_black",nil,85],
			["H_Beret_blk",nil,250],
			["H_Beret_02",nil,250],		
			["H_Beret_Colonel",nil,250]
		];
	};
	
	//Glasses
	case 2:
	{
		_ret = 
		[
			["G_Bandanna_aviator",nil,5],
			["G_Diving",nil,50]
		];
	};
	
	//Vest
	case 3:
	{
		_ret = 
		[
			["V_PlateCarrier1_blk",nil,200],	
			["V_RebreatherB",nil,500]
		];
	};
	
	//Backpacks
	case 4:
	{
		_ret = 
		[
			["B_AssaultPack_blk",nil,400],
			["B_FieldPack_blk",nil,400],
			["B_Bergen_blk",nil,400],
			["B_Carryall_cbr",nil,500]
		];
	};
};
_ret;