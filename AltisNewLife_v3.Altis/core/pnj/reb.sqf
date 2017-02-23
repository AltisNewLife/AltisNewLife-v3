_this enableSimulation false;
_this allowDamage false;
_this addAction["Marché Rebelle",life_fnc_virt_menu,"marketReb",0,false,false,"",' license_civ_rebel && playerSide == civilian'];
_this addAction["Vêtements Rebel",life_fnc_clothingMenu,"reb",0,false,false,"",' license_civ_rebel && playerSide == civilian'];
_this addAction["Armes Rebelle",life_fnc_weaponShopMenu,"rebel",0,false,false,"",' license_civ_rebel && playerSide == civilian'];
_this addAction["Devenir Rebelle",life_fnc_buyLicense,"rebel",0,false,false,"",' !license_civ_rebel && playerSide == civilian '];