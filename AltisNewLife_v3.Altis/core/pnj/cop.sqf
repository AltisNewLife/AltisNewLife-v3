_this enableSimulation false; 
_this allowDamage false;
_this addAction["<t color='#ADFF2F'>DAB</t>",life_fnc_atmMenu];
_this addAction["Marché",life_fnc_virt_menu,"cop"];
_this addAction["Uniformes",life_fnc_clothingMenu,"cop"];
_this addAction["Armes Gendarmerie",life_fnc_weaponShopMenu,"cop_gendarme"];
_this addAction["Armes GIGN",life_fnc_weaponShopMenu,"swat",0,false,false,"",' license_cop_swat && playerSide == west'];
_this addAction["Armes CEA",life_fnc_weaponShopMenu,"cea",0,false,false,"",' license_cop_cea && playerSide == west'];
_this addAction["Permis de pilote",life_fnc_buyLicense,"cair",0,false,false,"",' !license_cop_air && playerSide == west '];
_this addAction["Permis de conduire",life_fnc_buyLicense,"copdriver",0,false,false,"",' !license_cop_driver && playerSide == west '];