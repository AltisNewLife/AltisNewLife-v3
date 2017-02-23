private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
ctrlSetText[3103,"Boutique Chasseur de Prime"];
switch (_filter) do
{
case 0:
{
[
["U_I_CombatUniform",nil,500]
];
};

case 1:
{
[
["H_MilCap_gry",nil,10]
];
};

case 2:
{
[
["G_Shades_Black",nil,25]
];
};

case 3:
{
[
["V_TacVest_blk",nil,1000]
];
};

case 4:
{
[
["B_AssaultPack_blk",nil,400],
["B_FieldPack_blk",nil,400],
["B_Bergen_blk",nil,400]
];
};
};