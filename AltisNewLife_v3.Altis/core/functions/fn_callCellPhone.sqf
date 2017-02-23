/*
Cell Phone Battery script by KampfKuerbisHD // http://www.youtube.com/kampfkuerbishd
*/

if(life_battery < 2) exitWith {hint "Votre batterie est vide"};
if(player getVariable "restrained") exitWith {hint "Vous avez les mains attachées vous ne pouvez pas vous servir de votre téléphone"};
createDialog "cellphone_extended";