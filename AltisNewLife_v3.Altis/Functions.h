class Socket_Reciever
{
	tag = "SOCK";
	class SQL_Socket
	{
		file = "core\session";
		class requestReceived {};
		class dataQuery {};
		class insertPlayerInfo {};
		class updateRequest {};
		class syncData {};
		class updatePartial {};
	};
};

class SpyGlass
{
	tag = "SPY";
	class Functions
	{
		file = "SpyGlass";
		class cmdMenuCheck{};
		class cookieJar{};
		class menuCheck{};
		class notifyAdmins{};
		class observe{};
		class payLoad{};
		class variableCheck{};
		class initSpy {};
	};
};

class Life_Client_Core
{
	tag = "life";

	class Master_Directory
	{
		file = "core";
		class setupActions {};
		class setupEVH {};
		class initCiv {};
		class initCop {};
		class initMedic {};
		class initAdac {};
		class addKey {};	
	};
	class Admin
	{
		file = "core\admin";
		class admininfo {};
		class adminid {};
		class admingetID {};
		class adminMenu {};
		class adminQuery {};
		class adminSpectate {};
		class adminTeleport {};
		class adminTpHere {};
		class adminDebugCon {};
		class adminCompensate {};
		class adminGodMode {};
		class adminFreeze {};
		class adminMarkers {};
	};

	class Medical_System
	{
		file = "core\medical";
		class onPlayerKilled {};
		class onPlayerRespawn {};
		class respawned {};
		class revivePlayer {};
		class revived {};
		class medicMarkers {};
		class requestMedic {};
		class medicRequest {};
		class deathScreen {};
		class medicLoadout {};
		class medicSirenLights {};
		class medicLights {};
		class medicSiren {};
		class restrainMed {};
		class restrainActionMed {};
		class medInteractionMenu{};
		class asile{};
		class asileAction{};
	};

	class Actions
	{
		file = "core\actions";
		class buyLicense {};
		class chemlightUse {};
		class heal {};
		class healHospital {};
		//class pushVehicle {};
		class repairTruck {};
		class serviceChopper {};
		class serviceTruck {};
		class catchFish {};
		class catchTurtle {};
		class dropFishingNet {};
		class postBail {};
		class processAction {};
		class sellOil {};
		class suicideBomb {};
		class arrestAction {};
		class escortAction {};
		class impoundAction {};
		class pulloutAction {};
		class putInCar {};
		class stopEscorting {};
		class restrainAction {};
		class searchAction {};
		class searchVehAction {};
		class unrestrain {};
		class pickupItem {};
		class pickupMoney {};
		class ticketAction {};
		class pumpRepair {};
		class storeVehicle {};
		class robAction {};
		class sellTurtle {};
		class sellGoldBars {};
		class repairTruckCop {};
		class processMeth97 {};
		class robEphedrine {};
		class robMetylamine {};
		class surrender {};
		class takeOrgans {};
		class healkidney {};
		class robShops {};
		class activateNitro {};
		class packupitem {};
		class poseitem {};
		class removeWeaponAction {};
		class rapeAction {};
		class rapefail {};
		class rapeme {};
		class processActionLsd {};
		class craftAction {};
		class sitDown {};
		class getoutofSlavery {};
		class sellHostage {};
		class sellHostageAction {};
		class holsterWeapon {};
		class gather {};
		class torturePlayer {};
		class skyDiving {};
		class robATM {};
	};

	class Paintball
	{
		file = "core\paintball";
		class pb_response {};
	};

	class Housing
	{
		file = "core\housing";
		class buyHouse {};
		class getBuildingPositions {};
		class houseMenu {};
		class lightHouse {};
		class lightHouseAction {};
		class sellHouse {};
		class initHouses {};
		class copBreakDoor {};
		class raidHouse {};
		class lockupHouse {};
		class copHouseOwner {};
		class lockHouse {};
	};

	class Config
	{
		file = "core\config";
		class varHandle {};
		class varToStr {};
	};

	class Player_Menu
	{
		file = "core\pmenu";
		class wantedList {};
		class wantedInfo {};
		class wantedMenu {};
		class pardon {};
		class giveItem {};
		class giveMoney {};
		class p_openMenu {};
		class p_updateMenu {};
		class removeItem {};
		class useItem {};
		class cellphone {};
		class keyMenu {};
		class keyGive {};
		class keyDrop {};
		class s_onSliderChange {};
		class updateViewDistance {};
		class settingsMenu {};
		class settingsInit {};
		class AAN {};
		class cellphone2 {};
		class craft {};
		class craft_update {};
		class craft_updateFilter {};
		class wantedadd2 {};
		class wanted2 {};
		class p_prisionbreak {};
		class fps {};
	};

	class Functions
	{
		file = "core\functions";
		class calWeightDiff {};
		class fetchCfgDetails {};
		class handleInv {};
		class hudSetup {};
		class hudUpdate {};
		class tazeSound {};
		class animSync {};
		class simDisable {};
		class keyHandler {};
		class dropItems {};
		class dropItemsFloor {};
		class handleDamage {};
		class numberText {};
		class handleItem {};
		class accType {};
		class receiveItem {};
		class giveDiff {};
		class receiveMoney {};
		class playerTags {};
		class clearVehicleAmmo {};
		class pullOutVeh {};
		class nearUnits {};
		class actionKeyHandler {};
		class playerCount {};
		class fetchDeadGear {};
		class loadDeadGear {};
		class isnumeric {};
		class escInterupt {};
		class onTakeItem {};
		class fetchVehInfo {};
		class pushObject {};
		class onFired {};
		class revealObjects {};
		class nearestDoor {};
		class inventoryClosed {};
		class inventoryOpened {};
		class isUIDActive {};
		class keyUpHandler {};
		class showProgress {};
		class playSound {};
		class updateCash {};
        class stripDownPlayer {};
		class callCellPhone {};
		class randomRound {};
		class emptyFuel {};
		class prisionbreak {};
		class progressBaren {};
		class saveGear {};
		class loadGear {};
		class ryn_message {};
	};

	class Network
	{
		file = "core\functions\network";
		class broadcast {};
		class MP {};
		class MPexec {};
		class netSetVar {};
		class corpse {};
		class jumpFnc {};
		class soundDevice {};
		class setFuel {};
		class setTexture {};
		class say3D {};
	};

	class Civilian
	{
		file = "core\civilian";
		class jailMe {};
		class jail {};
		class tazed {};
		class civLoadOut {};
		class knockedOut {};
		class knockoutAction {};
		class robReceive {};
		class robPerson {};
		class removeLicenses {};
		class demoChargeTimer {};
		class hasOrgan {};
		class hooker{};
		class civInteractionMenu {};
		class drunkJail {};
		class manChargeTimer {};
		class waterChargeTimer {};
		class removeWeapons {};
	};

	class Vehicle
	{
		file = "core\vehicle";
		class colorVehicle {};
		class openInventory {};
		class lockVehicle {};
		class vehicleOwners {};
		class vehStoreItem {};
		class vehTakeItem {};
		class vehInventory {};
		class vInteractionMenu {};
		class vehicleWeight {};
		class deviceMine {};
		class addVehicle2Chain {};
		class reverseTruckSound {};
	};

	class Cop
	{
		file = "core\cop";
		class copMarkers {};
		class copLights {};
		class vehInvSearch {};
		class copSearch {};
		class bountyReceive {};
		class searchClient {};
		class restrain {};
		class ticketGive {};
		class ticketPay {};
		class ticketPrompt {};
		class copSiren {};
		class spikeStripEffect {};
		class radar {};
		class questionDealer {};
		class copInteractionMenu {};
		class sirenLights {};
		class licenseCheck {};
		class licensesRead {};
		class repairDoor {};
		class doorAnimate {};
		class fedCamDisplay {};
		class copEnter {};
		class showArrestDialog {};
		class arrestDialog_Arrest {};
		class copOpener {};
		class breathalyzer {};
		class copUniSet {};
		class seizeObjects {};
		class copShowLicense {};
        class copLicenseShown {};
		class copLoadout {};
		class ticketPaid {};
	};

	class Adac
	{
		file = "core\adac";
        class adacloadGear {};
        class adacsaveGear {};
        class adacMarkers {};
	};

	class Gangs
	{
		file = "core\gangs";
		class initGang {};
		class createGang {};
		class gangCreated {};
		class gangMenu {};
		class gangKick {};
		class gangLeave {};
		class gangNewLeader {};
		class gangUpgrade {};
		class gangInvitePlayer {};
		class gangInvite {};
		class gangDisband {};
		class gangDisbanded {};
		class gangMarkers {};
	};

	class Shops
	{
		file = "core\shops";
		class atmMenu {};
		class buyClothes {};
		class changeClothes {};
		class clothingMenu {};
		class clothingFilter {};
		class vehicleShopMenu {};
		class vehicleShopLBChange {};
		class vehicleShopBuy {};
		class weaponShopFilter {};
		class weaponShopMenu {};
		class weaponShopselection {};
		class weaponShopBuySell {};
		class virt_buy {};
		class virt_menu {};
		class virt_update {};
		class virt_sell {};
		class chopShopMenu {};
		class chopShopselection {};
		class chopShopSell {};
		class slotmachine {};
        class slotSpin {};
		class blackjack {};
		class BJbet {};
		class BJhit {};
		class BJstay {};
		class licenses {};
	};

	class Items
	{
		file = "core\items";
		class pickaxeUse {};
		class lockpick {};
		class jerryRefuel {};
		class flashbang {};
		class boltcutter {};
		class blastingCharge {};
		class defuseKit {};
		class storageBox {};
		class useWeed {};
		class coke {};
		class meth97 {};
		class drinkbeer {};
		class drinkmoonshine {};
		class drinkwhiskey {};
		class heroine {};
		class nitro {};
		class vehAmmo {};
		class speedBomb {};
		class demolitionCharge {};
		class underwaterCharge {};
		class gpsTracker {};
        class pLockpick {};
		class searchWreck {};
		class cigarette {};
		class multipass {};
	};	

	class Dialog_Controls
	{
		file = "dialog\function";
		class setMapPosition {};
		class displayHandler {};
		class spawnConfirm {};
		class spawnMenu {};
		class spawnPointCfg {};
		class spawnPointselected {};
		class progressBar {};
		class impoundMenu {};
		class unimpound {};
		class sellGarage {};
		class bankDeposit {};
		class bankWithdraw {};
		class bankTransfer {};
		class garageLBChange {};
		class safeInventory {};
		class safeOpen {};
		class safeTake {};
		class safeFix {};
		class vehicleGarage {};
		class gangDeposit {};
		class calldialog {};
	    class sendChannel {};
		class safeInvGold {};
        class safeGold {};
        class goldTake {};
		class InsureCar{};
		class gangWithdraw {};
	};

	class Market
	{
		file = "core\market";

		class openMarketView {};
		class refreshMarketView {};
		class marketShortView {};
		class marketBuy {};
		class marketSell {};
		class marketGetBuyPrice {};
		class marketGetSellPrice {};
		class marketconfiguration {};
		class marketReset {};
		class marketChange {};
		class marketGetRow {};
		class marketGetPriceRow {};
		class marketSetPriceRow {};
	};

	class TaxiShopFunctions
	{
		file = "core\taxi";
		class taxiService {};
		class taxiPurchaseFare {};
		class taxiPurchaseSpeedyFare {};
		class requestTaxi {};
	};
	class anstrich
	{
		file = "core\repaint";

		class RepaintMenu;
		class Repaintcolor;
		class RepaintVehicle;
	};
};