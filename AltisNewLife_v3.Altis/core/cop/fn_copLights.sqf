Private ["_vehicle","_lightRed","_lightBlue","_lightleft","_lightright","_leftRed","_lightLeft2","_lightRight2"];
_vehicle = _this select 0;
if(isNil "_vehicle" OR isNull _vehicle OR !(_vehicle getVariable "lights")) exitWith {};
_lightRed = [20, 0.1, 0.1];
_lightBlue = [0.1, 0.1, 20];
_lightleft = "#lightpoint" createVehicle getpos _vehicle;  
_lightleft2 = "#lightpoint" createVehicle getpos _vehicle; 
sleep 0.2;
_lightleft setLightColor _lightRed; 
_lightleft setLightBrightness 0.2;  
_lightleft setLightAmbient [0.1,0.1,1];
_lightleft2 setLightColor _lightRed; 
_lightleft2 setLightBrightness 0.4;  
_lightleft2 setLightAmbient [0.1,0.1,1];

switch (typeOf _vehicle) do
{
	case "C_Offroad_01_F":
	{
		_lightleft lightAttachObject [_vehicle, [-0.37, 0.0, 0.52]];
		_lightleft2 lightAttachObject [_vehicle, [-0.27, 0.2, 0.52]];
	
	};
	
	case "B_MRAP_01_F":
	{
		_lightleft lightAttachObject [_vehicle, [-0.50,1.5,-0.68]];
		_lightleft2 lightAttachObject [_vehicle, [-0.37, -1.9, 0.7]];
	};
	
	case "C_SUV_01_F":
	{
		_lightleft lightAttachObject [_vehicle, [-0.38,2.2,-0.55]];
		_lightleft2 lightAttachObject [_vehicle, [-0.37,-1.2,0.42]];
	};

	case "C_Hatchback_01_sport_F":
	{
		_lightleft lightAttachObject [_vehicle, [-0.38,2.2,-0.55]];
		_lightleft2 lightAttachObject [_vehicle, [-0.37,-1.2,0.42]];
	};

	case "I_MRAP_03_F":
	{
		_lightleft lightAttachObject [_vehicle, [-0.37,-0.4,0.65]];
		_lightleft2 lightAttachObject [_vehicle, [-0.37,-1.9,0.65]];
	};

	case "B_Heli_Light_01_F":
	{
		_lightleft lightAttachObject [_vehicle, [-0.50,1.5,-0.78]];
		_lightleft2 lightAttachObject [_vehicle, [-0.50,1.2,-0.78]];
	};

	case "B_Heli_Light_01_armed_F":
	{
		_lightleft lightAttachObject [_vehicle, [-0.50,1.5,-0.78]];
		_lightleft2 lightAttachObject [_vehicle, [-0.50,1.2,-0.78]];
	};
};

_lightleft setLightAttenuation [0.181, 0, 1000, 130]; 
_lightleft setLightIntensity 10;
_lightleft setLightFlareSize 0.38;
_lightleft setLightFlareMaxDistance 150;
_lightleft setLightUseFlare true;
_lightleft2 setLightAttenuation [0.181, 0, 1000, 130]; 
_lightleft2 setLightIntensity 10;
_lightleft2 setLightFlareSize 0.38;
_lightleft2 setLightFlareMaxDistance 150;
_lightleft2 setLightUseFlare true;

_lightright = "#lightpoint" createVehicle getpos _vehicle;   
_lightright2 = "#lightpoint" createVehicle getpos _vehicle;     
sleep 0.2;

_lightright setLightColor _lightBlue; 
_lightright setLightBrightness 0.2;  
_lightright setLightAmbient [0.1,0.1,1]; 
_lightright2 setLightColor _lightBlue; 
_lightright2 setLightBrightness 0.4;  
_lightright2 setLightAmbient [0.1,0.1,1]; 

switch (typeOf _vehicle) do
{
	case "C_Offroad_01_F":
	{
		_lightright lightAttachObject [_vehicle, [0.37, 0.0, 0.52]];
		_lightright2 lightAttachObject [_vehicle, [0.27, 0.2, 0.52]];
	};
	
	case "B_MRAP_01_F":
	{
		_lightright lightAttachObject [_vehicle, [0.50,1.5,-0.68]];
		_lightright2 lightAttachObject [_vehicle, [0.37, -1.9, 0.7]];
	};
	
	case "C_SUV_01_F":
	{
		_lightright lightAttachObject [_vehicle, [0.38,2.2,-0.55]];
		_lightright2 lightAttachObject [_vehicle, [0.37,-1.2,0.42]];
	};

	case "I_MRAP_03_F":
	{
		_lightright lightAttachObject [_vehicle, [0.37,-0.4,0.62]];
		_lightright2 lightAttachObject [_vehicle, [0.37,-1.9,0.62]]; 
	};
	case "C_Hatchback_01_sport_F":
	{
		_lightright lightAttachObject [_vehicle, [0.38,2.2,-0.55]];
		_lightright2 lightAttachObject [_vehicle, [0.37,-1.2,0.42]];
	};

	case "B_Heli_Light_01_F":
	{
		_lightright lightAttachObject [_vehicle, [0.50,1.5,-0.78]];
		_lightright2 lightAttachObject [_vehicle, [0.50,1.2,-0.78]];
	};

	case "B_Heli_Light_01_armed_F":
	{
		_lightright lightAttachObject [_vehicle, [0.50,1.5,-0.78]];
		_lightright2 lightAttachObject [_vehicle, [0.50,1.2,-0.78]];
	};
};
  
_lightright setLightAttenuation [0.181, 0, 1000, 130]; 
_lightright setLightIntensity 10;
_lightright setLightFlareSize 0.38;
_lightright setLightFlareMaxDistance 150;
_lightright setLightUseFlare true;
_lightright2 setLightAttenuation [0.181, 0, 1000, 130]; 
_lightright2 setLightIntensity 10;
_lightright2 setLightFlareSize 0.38;
_lightright2 setLightFlareMaxDistance 150;
_lightright2 setLightUseFlare true;

//ARE YOU ALL HAPPY?!?!?!?!?!?!?!?!?%#?@WGD?TGD?BN?ZDHBFD?GA
_lightleft setLightDayLight true;
_lightright setLightDayLight true;
_lightleft2 setLightDayLight true;
_lightright2 setLightDayLight true;

_leftRed = true;  
while{ (alive _vehicle)} do  
{  
	if(!(_vehicle getVariable "lights")) exitWith {};
	if(_leftRed) then  
	{  
		_leftRed = false;  
		_lightright setLightBrightness 0.0;  
		_lightright2 setLightBrightness 0.0; 
		sleep 0.03;
		_lightleft setLightBrightness 6;  
		_lightleft2 setLightBrightness 6; 
	}  
		else  
	{  
		_leftRed = true;  
		_lightleft setLightBrightness 0.0;  
		_lightleft2 setLightBrightness 0.0;
		sleep 0.03;
		_lightright setLightBrightness 6;
		_lightright2 setLightBrightness 6;   
	};  
	sleep (_this select 1);  
};  
deleteVehicle _lightleft;
deleteVehicle _lightright;
deleteVehicle _lightleft2;
deleteVehicle _lightright2;