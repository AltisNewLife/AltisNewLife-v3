#include <macro.h>
/*
	File: fn_p_openMenu.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Opens the players virtual inventory menu
*/
if(!alive player || dialog) exitWith {}; //Prevent them from opening this for exploits while dead.
createDialog "playerSettings";
disableSerialization;

switch(playerSide) do
{
	case west: 
	{
		ctrlShow[2011,false];
		ctrlShow[2025,false];		
		ctrlShow[9800,false];		
	};
	
	case civilian:
	{
		if(!license_civ_bountyh) then
		{		
		ctrlShow[2012,false];
		ctrlShow[9800,false];
		};
	};
	case east:
    {
        ctrlShow[2012,false];//wanted menu
        ctrlShow[2011,false];// gang menu
    };
	case independent:
    {
        ctrlShow[2012,false];//wanted menu
        ctrlShow[2011,false];//gang menu
		ctrlShow[2025,false];
		ctrlShow[9800,false]; // << Wantend+ Dialog Button
    };
};

if(__GETC__(bitch_level) < 1) then
{
	ctrlShow[2020,false];
	ctrlShow[2021,false];
	ctrlShow[9800,false]; // << Wantend+ Dialog Button
};

[] call life_fnc_p_updateMenu;

if(__GETC__(bitch_level) < 1) then
{
	ctrlShow[2020,false];
	ctrlShow[2021,false];
};