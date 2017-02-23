class DefaultEventhandlers;
class CfgPatches 
{
	class life_server
	{
		units[] = {"C_man_1"};
		weapons[] = {};
		requiredAddons[] = {"A3_Data_F","A3_Soft_F","A3_Soft_F_Offroad_01","A3_Characters_F"};
		fileName = "life_server.pbo";
		author[]= {"TAW_Tonic"}; 
	};
};

class CfgFunctions
{
	class BIS_Overwrite
	{
		tag = "BIS";
		class MP
		{
			file = "\life_server\Functions\MP";
			class initMultiplayer{};
			class call{};
			class spawn{};
			class execFSM{};
			class execVM{};
			class execRemote{};
			class addScore{};
			class setRespawnDelay{};
			class onPlayerConnected{};
			class initPlayable{};
			class missionTimeLeft{};
		};
	};
	
	class MySQL_Database
	{
		tag = "DB";
		class MySQL
		{
			file = "\life_server\Functions\MySQL";
			class numberSafe {};
			class mresArray {};
			class queryRequest{};
			class asyncCall{};
			class insertRequest{};
			class updateRequest{};
			class mresToArray {};
			class insertVehicle {};
			class bool{};
			class mresString {};
			class updatePartial {};
			class repaintVehicle {};
		};
	};
	
	class Life_System
	{
		tag = "life";
		class Wanted_Sys
		{
			file = "\life_server\Functions\WantedSystem";
			class wantedFetch {};
			class wantedPerson {};
			class wantedBounty {};
			class wantedTicket {};
			class wantedPardon {};
			class wantedRemove {};
			class wantedAdd {};
			class wantedPunish {};
		};
		class Misc
		{
			file = "\life_server\Functions\MISC";
			class licensePrice {};
			class virt_shops {};
			class itemIcon {};			
			class itemWeight {};
			class licenseType {};
			class vehicleListCfg {};	
			class vehicleColorCfg {};
			class vehicleColorStr {};	
			class vehicleWeightCfg {};
			class weaponShopCfg {};
			class eatFood {};
			class impoundPrice {};
			class taxRate {};
			class vehShopLicenses {};
			class vehicleAnimate {};
			class houseConfig {};
			class adacDefault {};
			class craftCfg {};
			class clothing_cop {};
			class clothing_bruce {};
			class clothing_reb {};
			class clothing_dive {};
			class clothing_kart {};
			class clothing_admin {};
			class clothing_med {};
			class clothing_merc {};
			class clothing_merc_reb {};			
			class clothing_bhc {}; 
			class clothing_usine {}; 
			class clothing_dep {}; 			
			class initSafeCode {postInit=1;};
		};	
		class Jail_Sys
		{
			file = "\life_server\Functions\Jail";
			class jailSys {};
 			class jailTimer {};
  			class jailPlayer {};		
		};
		class Client_Code
		{
			file = "\life_server\Functions\Client";
		};
	};
	
	class TON_System
	{
		tag = "TON";
		class Systems
		{
			file = "\life_server\Functions\Systems";
			class managesc {};
			class cleanup {};
			class huntingZone {};
			class getID {};
			class vehicleCreate {};
			class vehicleDead {};
			class spawnVehicle {};
			class getVehicles {};
			class vehicleStore {};
			class vehicleDelete {};
			class spikeStrip {};
			class logIt {};
			class federalUpdate {};
			class chopShopSell {};
			class clientDisconnect {};
			class cleanupRequest {};
			class setObjVar {};
			class keyManagement {};
			class goldUpdate {};
			class vehicleRepaint {};	
			class InsureCar {};			
		};

		class Paintball
		{
			file = "\life_server\Functions\paintball";
			class paintball {};
			class game {};
		};
		
		class Housing
		{
			file = "\life_server\Functions\Housing";
			class addHouse {};
			class fetchPlayerHouses {};
			class initHouses {};
			class sellHouse {};
			class updateHouseContainers {};
			class updateHouseTrunk {};
			class houseCleanup {};
		};
		
		class Gangs
		{
			file = "\life_server\Functions\Gangs";
			class insertGang {};
			class queryPlayerGang {};
			class removeGang {};
			class updateGang {};
		};
		
        class Airdrop
		{
			file = "\life_server\Functions\airdrop";
			class generateAirdrop {};
		};		
	};
};

class CfgVehicles
{
	class Car_F;
	class CAManBase;
	class Civilian;
	class Civilian_F : Civilian
	{
		class EventHandlers;
	};
	
	class C_man_1 : Civilian_F
	{
		class EventHandlers: EventHandlers
		{
			init = "(_this select 0) execVM ""\life_server\fix_headgear.sqf""";
		};
	};
};