_this enableSimulation false;
_this allowDamage false;
_this setObjectTexture [0, "images\panneaux\depan.jpg"];
_this addAction["<t color='#ADFF2F'>DAB</t>",life_fnc_atmMenu];
_this addAction["March�",life_fnc_virt_menu,"marketusine",0,false,false,"",' license_civ_dep && playerSide == civilian'];
_this addAction["V�tements",life_fnc_clothingMenu,"dep",0,false,false,"",' license_civ_depanneur && playerSide == civilian'];
_this addAction["Magasin",life_fnc_virt_menu,"dep"];
_this addAction["Fournitures de Secours",life_fnc_weaponShopMenu,"genstore"];
_this addAction["Achat Vehicule",life_fnc_vehicleShopMenu,["civ_servt",civilian,"civ_servt_1","civ","Bruce's New & Used Trucks"]];
_this addAction["Garage",  {   [[getPlayerUID player,playerSide,"Car",player],"TON_fnc_getVehicles",false,false] spawn life_fnc_MP; life_garage_type = "Car";   createDialog "Life_impound_menu";   disableSerialization;   ctrlSetText[2802,"Recherche..."];   life_garage_sp = "civ_servt_1";  }];
_this addAction["Mettre au garage",  {   private["_nearVehicle"];   systemChat str(_this select 0);   _nearVehicle = nearestObjects[(getPos (_this select 0)),["Car","Ship","Air"],20] select 0;   if(isNil "_nearVehicle") exitWith {hint "Gare ton v�hicule a cot� !";};   [[_nearVehicle,false,(_this select 1)],"TON_fnc_vehicleStore",false,false] spawn life_fnc_MP;   hint "Mise au garage...";   life_garage_store = true;  },"",0,false,false,"",'!life_garage_store'];