removeAllContainers player;
removeAllWeapons player;
player AddUniform "U_Rangemaster";
player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemCompass";
player assignItem "ItemCompass";
removeGoggles player;
removeHeadGear player;
if(hmd player != "") then {
player unlinkItem (hmd player);
};
[] call life_fnc_saveGear;