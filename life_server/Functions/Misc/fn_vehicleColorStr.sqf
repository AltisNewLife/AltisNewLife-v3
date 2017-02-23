private["_vehicle","_color","_index"];
_vehicle = [_this,0,"",[""]] call BIS_fnc_param;
_index = [_this,1,-1,[0]] call BIS_fnc_param;
_color = "";

switch (_vehicle) do
{
	case "B_Quadbike_01_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "Rebelle"};
			case 1: {_color = "Black"};
			case 2: {_color = "Bleu"};
			case 3: {_color = "Rouge"};
			case 4: {_color = "Blanc"};
			case 5: {_color = "Digital"};
			case 6: {_color = "Camo"};
			case 7: {_color = "Camo Rebelle"};
			case 8: {_color = "Gendarmerie"};
		};
	};
	
	case "C_Hatchback_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Beige"};
			case 1: {_color = "Verte"};
			case 2: {_color = "Bleu"};
			case 3: {_color = "Bleu nuit"};
			case 4: {_color = "Jaune"};
			case 5: {_color = "Blanc"};
			case 6: {_color = "Gris"};
			case 7: {_color = "Noir"};
			case 8: {_color = "Gendarmerie"};
		};
	};
	
	case "C_Hatchback_01_sport_F":
	{
		switch(_index) do
		{
			case 0: {_color = "Cocci"};
			case 1: {_color = "Porsche"};
			case 2: {_color = "Monster"};	
			case 3: {_color = "Gendarmerie"};
		};
	};
	
	case "C_Offroad_01_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "Rouge"};
			case 1: {_color = "Blanc"};
			case 2: {_color = "Bleu"};
			case 3: {_color = "Rouge foncé"};
			case 4: {_color = "Bleu/Blanc"};			
			case 5: {_color = "Medecin"};
			case 6: {_color = "Monster"};
			case 7: {_color = "Noir"};		
			case 8: {_color = "Gendarmerie"};
		};
	};
	

	case "C_SUV_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Blanc"};
			case 1: {_color = "Noir"};
			case 2: {_color = "Monster"};
			case 3: {_color = "Starsky et Hutch"};
			case 4: {_color = "Gendarmerie"};		
		};
	};
	
	case "C_Van_01_box_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Blanc"};
			case 1: {_color = "Rouge"};
			case 2: {_color = "Medecin"};			
		};
	};
	
	case "C_Van_01_transport_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Blanc"};
			case 1: {_color = "Rouge"};
		};
	};
		
	case "B_Heli_Light_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Gendarmerie"};
			case 1: {_color = "Medecin"};			
			case 2: {_color = "Bleu"};
			case 3: {_color = "Rouge"};
			case 4: {_color = "Blueline"};
			case 5: {_color = "Elliptical"};
			case 6: {_color = "Furious"};
			case 7: {_color = "Jeans Blue"};
			case 8: {_color = "Speedy Redline"};
			case 9: {_color = "Sunset"};
			case 10: {_color = "Vrana"};
			case 11: {_color = "Waves Blue"};
			case 12: {_color = "Digitale"};
			case 13: {_color = "Tigré"};
			case 14: {_color = "Camo"};			
			
		};
	};
		
	case "I_Heli_Transport_02_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Noir / Jaune"};
			case 1: {_color = "Vert / Blanc"};
			case 2: {_color = "Camo"};			
		};
	};
	
	case "I_Heli_light_03_unarmed_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Rebelle"};
			case 1: {_color = "Noir"};			
		};
	};
	  	
	case "O_Heli_Light_02_unarmed_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Black"};
			case 1: {_color = "Blanc / Bleu"};
			case 2: {_color = "Digital Vert"};
			case 3: {_color = "Desert Digi"};
			case 4: {_color = "Medecin"};
		};
	};
	
	case "B_MRAP_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Gendarmerie"};
			case 1: {_color = "Chasseur de Prime"};		
			case 2: {_color = "Noir"};
			case 3: {_color = "Noir"};			
		};
	};
	
	case "B_MRAP_01_hmg_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Gendarmerie"};
			case 1: {_color = "Chasseur de Prime"};		
			case 2: {_color = "Noir"};
			case 3: {_color = "Noir"};	
		};
	};
	

	case "O_MRAP_02_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Foret"};
			case 1: {_color = "Rouge"};
			case 2: {_color = "Noir"};
			case 3: {_color = "Blanc"};			
		};
	};
	
	case "O_MRAP_02_hmg_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Foret"};
			case 1: {_color = "Rouge"};
			case 2: {_color = "Noir"};
			case 3: {_color = "Blanc"};		
		};
	};
	
	case "I_MRAP_03_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Mercenaire"};
			case 1: {_color = "Gendarmerie"};
			case 2: {_color = "Noir"};
			case 3: {_color = "Noir"};			
		};
	};
	
	case "I_Truck_02_covered_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Fedex"};
			case 1: {_color = "Redbull"};
			case 2: {_color = "Cannabis"};			
			case 3: {_color = "Civil"};
			case 4: {_color = "Camo"};		
		};
	};
	
	case "I_Truck_02_transport_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Civil"};
			case 1: {_color = "Camo"};
		};
	};
	
	case "B_Truck_01_mover_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Dépanneur"};
		};
	};
			
};

_color;