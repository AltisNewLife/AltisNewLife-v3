_this enableSimulation false;
_this allowDamage false;
_this addAction["Armurerie",life_fnc_weaponShopMenu,"gun",0,false,false,"",' license_civ_gun && playerSide == civilian'];
_this addAction["Permis de port d'arme",life_fnc_buyLicense,"gun",0,false,false,"",' !license_civ_gun && playerSide == civilian '];