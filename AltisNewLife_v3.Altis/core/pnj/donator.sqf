_this enableSimulation false;
_this allowDamage false;
_this setObjectTexture [0, "images\donateur.jpg"];
_this addAction["Magasin Général",life_fnc_weaponShopMenu,"genstore"];
_this addAction["Marché",life_fnc_virt_menu,"market"];
_this addAction["Marché Donateur",life_fnc_virt_menu,"marketdonateur",0,false,false,"",' license_civ_special && playerSide == civilian'];
_this addAction["Armes Donateur",life_fnc_weaponShopMenu,"special",0,false,false,"",' license_civ_special && playerSide == civilian'];
_this addAction["Vetements",life_fnc_clothingMenu,"bruce"];
_this addAction["Concessionnaire",life_fnc_vehicleShopMenu,["special",civilian,["veh_don"],"civ","Carl's Airial Auto's"]];
_this addAction["Garage",{[[getPlayerUID player,playerSide,"Car",player],"TON_fnc_getVehicles",false,false] spawn life_fnc_MP; life_garage_type = "Car";  createDialog "Life_impound_menu";   disableSerialization;   ctrlSetText[2802,"Recherche..."];   life_garage_sp = "veh_don";  }];
_this addAction["Mettre au garage",{private["_nearVehicle"];_nearVehicle = nearestObjects[(getPos (_this select 0)),["Car","Ship","Air"],20] select 0;   if(isNil "_nearVehicle") exitWith {hint "Gare ton véhicule a coté !";};   [[_nearVehicle,false,(_this select 1)],"TON_fnc_vehicleStore",false,false] spawn life_fnc_MP;   hint "Mise au garage...";   life_garage_store = true;  },"",0,false,false,"",'!life_garage_store'];
_this addAction["Garage Hélico",{[[getPlayerUID player,playerSide,"Air",player],"TON_fnc_getVehicles",false,false] spawn life_fnc_MP;  life_garage_type = "Air"; createDialog "Life_impound_menu";   disableSerialization;   ctrlSetText[2802,"Recherche..."];   life_garage_sp = "veh_don";  }];
