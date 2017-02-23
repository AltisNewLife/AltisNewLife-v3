private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
ctrlSetText[3103,"Vetement Depanneur"];
switch (_filter) do
{
	case 0:
	{
		[
			["U_C_WorkerCoveralls","Tenue de travail",100],
			["U_I_G_Story_Protagonist_F","Tenue civil",100]
		];
	};
	case 1:
	{
		[
			["H_Cap_red",nil,12],
			["H_Cap_blu",nil,12],
			["H_Cap_grn",nil,12],
			["H_Cap_oli",nil,12],
			["H_Cap_tan",nil,12],
			["H_Cap_blk",nil,12],
			["H_Cap_press",nil,12],
			["H_BandMask_blk","Bandanna & Chapeau",12],
			["H_Bandanna_surfer","Bandanna Surfer",16],
			["H_Bandanna_sgg","Bandanna Sage",16],
			["H_Bandanna_cbr","Bandanna Coyote",16],
			["H_Bandanna_khk","Bandanna Khaki",16],
			["H_Bandanna_gry","Bandanna Gris",16],
			["H_Watchcap_blk","Bonnet Gris",16],
			["H_Watchcap_khk","Bonnet Sage",16],
			["H_Watchcap_sgg","Bonnet Khaki",16],
			["H_Hat_blue","Chapeau Bleu",20],
			["H_Hat_grey","Chapeau Gris",20],
			["H_Hat_checker","Chapeau Checker",20],
			["H_Hat_tan","Chapeau Tan",20],
			["H_Hat_brown","Chapeau Marron",20],
			["H_StrawHat_dark","Chapeau de paille froncé",20],
			["H_StrawHat","Chapeau de paille",20],
			["H_TurbanO_blk","Chapeau de paille",20],
			["H_Booniehat_khk","Chapeau Sage",20],
		    ["H_Booniehat_tan","Chapeau Tan",20],
			["H_Booniehat_grn","Chapeau Vert",20]
		];
	};
	case 2:
	{
		[
			["G_Shades_Black",nil,2],
			["G_Shades_Blue",nil,2],
			["G_Sport_Blackred",nil,2],
			["G_Sport_Checkered",nil,2],
			["G_Sport_Blackyellow",nil,2],
			["G_Sport_BlackWhite",nil,2],
			["G_Squares",nil,10],
			["G_Aviator",nil,10],
			["G_Lady_Mirror",nil,15],
			["G_Lady_Dark",nil,15],
			["G_Lady_Blue",nil,15]
		];
	};
	case 3:
	{
		[
			["V_Rangemaster_belt",nil,500],
			["V_Press_F",nil,900]
		];
	};
	case 4:
	{
		[
			["B_AssaultPack_cbr",nil,250],
			["B_AssaultPack_khk",nil,250],
			["B_AssaultPack_rgr",nil,250],
			["B_AssaultPack_sgg",nil,250],
			["B_Kitbag_cbr",nil,450],
			["B_Kitbag_sgg",nil,450],
			["B_Kitbag_sgg",nil,450],
			["B_Kitbag_sgg",nil,450],
			["B_FieldPack_cbr",nil,500],
			["B_Bergen_sgg",nil,650],
			["B_Carryall_oli",nil,500],
			["B_Carryall_khk",nil,500],
			["B_Carryall_cbr",nil,500]
		];
	};
};