private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
ctrlSetText[3103,"admin Clothing Store"];
switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
		["U_C_Poloshirt_blue","Poloshirt Blue",175],
		["U_C_Poloshirt_burgundy","Poloshirt Burgundy",150],
		["U_C_Poloshirt_redwhite","Poloshirt Red/White",100],
		["U_C_Poloshirt_salmon","Poloshirt Salmon",100],
		["U_C_Poloshirt_stripped","Poloshirt stripped",100],
		["U_C_Poloshirt_tricolour","Poloshirt Tricolor",100],
		["U_C_Poor_2","Rag tagged clothes",125],
		["U_IG_Guerilla2_2","Green stripped shirt & Pants",325],
		["U_IG_Guerilla3_1","Brown Jacket & Pants",375],
		["U_IG_Guerilla2_3","The Outback Rangler",600],
		["U_C_HunterBody_grn","The Hunters Look",750],
		["U_C_WorkerCoveralls","Mechanic Coveralls",1250],
		["U_OrestesBody","Surfing On Land",550],
		["U_C_Poloshirt_burgundy","Poloshirt ACAB",250],		
	    ["U_IG_Guerilla1_1",nil,2500],
		["U_I_G_Story_Protagonist_F",nil,4000],
		["U_I_G_resistanceLeader_F",nil,600],
		["U_O_PilotCoveralls",nil,8000],
		["U_IG_leader","Guerilla Leader",8000],
		["U_O_GhillieSuit",nil,25000]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["H_Bandanna_camo","Camo Bandanna",100],
			["H_Bandanna_surfer","Surfer Bandanna",100],
			["H_Bandanna_gry","Grey Bandanna",100],
			["H_Bandanna_cbr",nil,100],
			["H_Bandanna_surfer",nil,100],
			["H_Bandanna_khk","Khaki Bandanna",100],
			["H_Bandanna_sgg","Sage Bandanna",100],
			["H_StrawHat","Straw Fedora",100],
			["H_BandMask_blk","Hat & Bandanna",150],
			["H_Booniehat_tan",nil,200],
			["H_Hat_blue",nil,150],
			["H_Hat_brown",nil,150],
			["H_Hat_checker",nil,170],
			["H_Hat_grey",nil,140],
			["H_Hat_tan",nil,130],
			["H_Cap_blu",nil,100],
			["H_Cap_grn",nil,100],
			["H_Cap_grn_BI",nil,100],
			["H_Cap_oli",nil,100],
			["H_Cap_red",nil,100],
			["H_Cap_tan",nil,100],
			["H_ShemagOpen_tan",nil,420],
			["H_Shemag_olive",nil,420],
			["H_ShemagOpen_khk",nil,400],
			["H_MilCap_mcamo",nil,600],
			["H_Bandanna_camo",nil,300]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Squares",nil,10],
			["G_Aviator",nil,100],
			["G_Lady_Mirror",nil,100],
			["G_Lady_Dark",nil,100],
			["G_Lady_Blue",nil,100],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55]
		];
	};
	
	//Vest
	case 3:
	{
		[
		    ["V_TacVest_khk",nil,6000],
			["V_BandollierB_cbr",nil,2500],
			["V_HarnessO_brn",nil,3000]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_Kitbag_mcamo",nil,1250],
			["B_Kitbag_cbr",nil,2000],
			["B_Parachute",nil,2500],
			["B_UAV_01_backpack_F",nil,500000]
		];
	};
};
