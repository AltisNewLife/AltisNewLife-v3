switch (playerSide) do
{
	case west:
	{
       life_actions = [player addAction["<t color='#FFFF33'>Enlever objet</t>",life_fnc_packupitem,"",0,false,false,"",' _objet = nearestObjects[getPos player,["Land_Razorwire_F","RoadBarrier_F","Land_BagFence_Short_F","Land_CncBarrier_stripes_F","RoadCone_F","Land_Flush_Light_red_F","Land_Flush_Light_green_F","Land_Flush_Light_yellow_F","ArrowDesk_L_F","ArrowDesk_R_F"],8] select 0; !isNil "_objet" && !isNil {(_objet getVariable "item")}']];
	   life_actions = life_actions + [player addAction["Descendre",life_fnc_copEnter,"exit",100,false,false,"",'(vehicle player != player) && (locked(vehicle player)==2)']];
	};
	case civilian:
	{
		life_actions = [player addAction["Lancer le filet de peche",life_fnc_dropFishingNet,"",0,false,false,"",' (surfaceisWater (getPos vehicle player)) && (vehicle player isKindOf "Ship") && life_carryWeight < life_maxWeight && speed (vehicle player) < 2 && speed (vehicle player) > -1 && !life_net_dropped ']];
	    life_actions = life_actions + [player addAction["<t color='#FF0000'>Activer sa veste explosive</t>",life_fnc_suicideBomb,"",0,false,false,"",' vest player == "V_HarnessOGL_brn" && alive player && playerSide == civilian && !life_istazed && !(player getVariable "restrained") && !(player getVariable "Escorting") && !(player getVariable "transporting")']]; 
		life_actions = life_actions + [player addAction["Voler",life_fnc_robAction,"",0,false,false,"",'!isNull cursorTarget && player distance cursorTarget < 3.5 && isPlayer cursorTarget && animationState cursorTarget == "Incapacitated" && !(cursorTarget getVariable["robbed",FALSE]) ']];
};
	case independent:
	{
		life_actions = [player addAction["<t color='#FFFF33'>Enlever objet</t>",life_fnc_packupitem,"",0,false,false,"",' _objet = nearestObjects[getPos player,["Land_Razorwire_F","RoadBarrier_F","Land_BagFence_Short_F","Land_CncBarrier_stripes_F","RoadCone_F","Land_Flush_Light_red_F","Land_Flush_Light_green_F","Land_Flush_Light_yellow_F","ArrowDesk_L_F","ArrowDesk_R_F"],8] select 0; !isNil "_objet" && !isNil {(_objet getVariable "item")}']];
    };
};