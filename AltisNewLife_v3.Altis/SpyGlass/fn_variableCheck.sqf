#define steamid getPlayerUID player
#define GVAR getVariable
/*
	File: fn_variableCheck.sqf
	
	Description:
	Checks against harmful variables, disable this if client-performance is 
	to bad in the fn_initSpy.sqf, the menuCheck should be good enough!
*/
private["_badVariables","_checkThread"];
_badVariables = ["JxM","XXMMWW_expammo","XXMMWW_god3","XXMMWW_god4","XXMMWW_god2","XXMMWW_goetmod","XXMMWW_tocur","XXMMWW_misseles","XXMMWW_healit",
"XXMMWW_healme","XXMMWW_tepe","XXMMWW_boom","XXMMWW_acp","XXMMWW_p07","XXMMWW_fakecop","XXMMWW_meins","XXMMWW_atm","XXMMWW_cash","XXMMWW_escorttt",
"XXMMWW_restrain","XXMMWW_SDAR","XXMMWW_mk200","XXMMWW_katiba","XXMMWW_khaybar","XXMMWW_mx","XXMMWW_lrr","XXMMWW_lynx","XXMMWW_mxc","XXMMWW_LMG_Zafir",
"XXMMWW_PDW64","XXMMWW_titaen","XXMMWW_erpege","XXMMWW_day","XXMMWW_dday","XXMMWW_ladida","XXMMWW_night","XXMMWW_nighd","XXMMWW_maxweight",
"XXMMWW_JJJJ_MMMM___EEEEEEE_AL_NoWeight_toggle","XXMMWW_alllicenses","XXMMWW_zinvhack","XXMMWW_exploammo","XXMMWW_notaze","XXMMWW_mein1",
"XXMMWW_targetkey","XXMMWW_qf","XXMMWW_rf","XXMMWW_jetbus","_jetslut","_ALEXxxx","XXMMWW_HeliSquad","XXMMWW_fly","XXMMWW_Kick_t","XXMMWW_JailEscape",
"XXMMWW_JailPlayer","XXMMWW_altilife","XXMMWW_cashall","XXMMWW_nyan","XXMMWW_DAHUGETHINGG","XXMMWW_3Dtext","XXMMWW_boxquad","pic","veh",
"wuat_fpsMonitor","unitList","list_wrecked","Listw","p","fffffffffff","markPos","pos","marker","TentS","VL","MV","mk2","i","j","fuckmegrandma",
"mehatingjews","scode","TTT5OptionNR","igodokxtt","omgwtfbbq","namePlayer","thingtoattachto","HaxSmokeOn","v","antiloop","ARGT_JUMP","selecteditem",
"moptions","delaymenu","gluemenu","spawnweapons1","abcd","skinmenu","playericons","changebackpack","keymenu","img","surrmenu","footSpeedIndex",
"ctrl_onKeyDown","plrshldblcklst","musekeys","dontAddToTheArray","morphtoanimals","playerDistanceScreen","pm","debugConsoleIndex","MY_KEYDOWN_FNC",
"TAG_onKeyDown","changestats","helpmenu","ViLayer","maphalf","activeITEMlist","unitsmenu","xZombieBait","shnmenu","slag","xtags","tempslag",
"dayzRespawn2","dayzRespawn3","hangender","addgun","ESP","BIS_fnc_3dCredits_n","activeITEMlistanzahl","xyzaa","iBeFlying","rem","DAYZ_CA1_Lollipops",
"bowonky","HMDIR","HDIR","keymenu2","hotkeymenu","letmeknow","Monky_funcs_inited","atext","boost","Ug8YtyGyvguGF","inv","rspwn","nd","qofjqpofq",
"invall","initarr","reinit","byebyezombies","mahcaq","mapm","weapFun","firstrun","take1","dwarden","bowen","monky","footSpeedKeys","wl","spawnitems1",
"god","toggle_keyEH","drawic","ptags","abox1","dayz_godmode","testIndex","g0d","zombieshield","pathtoscrdir","g0dmode","zeus","zeusmode","cargod",
"qopfkqpofqk","monkytp","pbx","playershield","zombieDistanceScreen","theKeyControl","plrshldblckls","lmzsjgnas","vm","Monky_hax_toggled","pu","nb",
"vspeed","godlol","aesp","godall","initarr3","initarr2","DEV_ConsoleOpen","LOKI_GUI_Key_Color","W_O_O_K_I_E_FUD_Pro_RE","W_O_O_K_I_E_FUD_Car_RE",
"W_O_O_K_I_E_FUD_FuckUp_GunStore","W_O_O_K_I_E_FUD_M_E_N_U_initMenu","W_O_O_K_I_E_FuckUp_GunStore_a","W_O_O_K_I_E_M_E_N_U_funcs_inited",
"Menu_Init_Lol","E_X_T_A_S_Y_Atm","W_O_O_K_I_E_Pro_RE","W_O_O_K_I_E_Debug_Mon","W_O_O_K_I_E_Debug_1337","Veh_S_P_A_W_N_Shitt","sfsefse",
"tw4etinitMenu","tw4etgetControl","efr4243234","sdfwesrfwesf233","sdgff4535hfgvcxghn","adadawer24_1337","lkjhgfuyhgfd",
"E_X_T_A_S_Y_M_E_N_U_funcs_inited","dayz_serverObjectMonitor","fsfgdggdzgfd","fsdddInfectLOL","Wookie_List","Wookie_Pro_RE","Wookie_Car_RE",
"Wookie_Debug_Mon","faze_funcs_inited","advertising_banner_infiSTAR","atext_star_xa","Monky_hax_dbclick","debug_star_colorful","AntiAntiAntiAntiHax",
"antiantiantiantih4x","hub","scrollinit","gfYJV","Lystic_LMAOOOOOOOOOOOOOOOOOOO","Lystic_Re","Lysto_Lyst","E_X_T_A_S_Y_Keybinds","Menulocations",
"Lystic_Init","scroll_m_init_star","exstr1","pathtoscrdir3","Monky_initMenu","player_zombieCheck","E_X_T_A_S_Y_Recoil","abcdefGEH","wierdo",
"go_invisible_infiSTAR","serverObjectMonitor","enamearr","locdb","sCode","infAmmoIndex","nukeDONEstar","FUCKTONIC","E_X_T_A_S_Y_FuckUp_GunStore_a",
"E_X_T_A_S_Y_Cash_1k_t","E_X_T_A_S_Y_Cash_a","E_X_T_A_S_Y_LicenseDrive","E_X_T_A_S_Y_Menu_LOOOOOOOOOL","JxMxE_hide","JME_Keybinds",
"JME_has_yet_to_fuck_this_shit","JME_deleteC","JME_Tele","JME_ANAL_PLOW","JME_M_E_N_U_initMenu","JME_M_E_N_U_hax_toggled","JxMxE_Veh_M",
"JxMxE_LifeCash500k","JME_KillCursor","JME_OPTIONS","JME_M_E_N_U_fill_TROLLmenu","ASSPLUNGE","FOXBYPASS","POLICE_IN_HELICOPTA","JxMxE_EBRP",
"JxMxEsp","JxMxE_GOD","JxMxE_Heal","JxMxE_TP","JxMxE_Infect","JxMxE_secret","Metallica_vehicleg0dv3_infiSTAR","JJJJ_MMMM___EEEEEEE_INIT_MENU",
"JJJJ_MMMM___EEEEEEE_GAPER","JJJJ_MMMM___EEEEEEE_SMOKExWEEDxEVERYDAY_BUM_RAPE","JJJJ_MMMM___EEEEEEE_OPTIONS","JJJJ_MMMM___EEEEEEE_M_E_N_U_fill_Target",
"E3p","Jesus_MODE","MissileStrike","AL_Liscenses","NoIllegal","NoWeight","m0nkyaatp_sadksadxa","m0nkyaatp_RANDSTR","myvar23","player_adminlevel","TNK",
"I_like_turtles","BIGM","Does_Tonic_Like_to_take_Turtle_penis_in_the_ass_LODESTARS","Does_Tonic_Like_to_take_Turtle_penis_in_the_ass_LODESTAR1","GMod",
"No_No_No_Tonic_likes_A_Big_Fat_Sheep_Cock_Right_in_the_bum_G0d_Mode","Sload","T3le","life_no_injection","Tonic_has_a_gaping_vagina","my_anus_hurtz",
"aKFerm","aKMMenu","aKTitans","aKLikeaG0d","riasgremory_G0d_Mode","aKCarG0d","riasgremory_Car_Jesus","aKE5p","riasgremory_isseilol","aKPMark",
"riasgremory_Noobs","riasgremory_Bitches","riasgremory_Map_Markers","aKUnMmo","jenesuispasuncheateur_unamo","aKVoit","Loljesaispasquoiecriremdr",
"isseigremory","gremorysama","aKTaCu","aKCardetroy","aKGetKey","aKKillcursor","aKNoEscort","aKEscort","aKtroll","aKTPall","aKUnrestrain",
"aKNoEscortMe","aKNoTaze","aKJailplayer","aKLisense","riasgremory_titans_shit_reold","Tonic_merde","jaimepaslepoisin_HLEAL",
"TTTT_IIII___TTTTTTT_RAP_FR","TTTT_IIII___TTTTTTT_REPGA","TTTT_IIII___TTTTTTT_REPGAs","Root_Main4","Root_Pistol4","Root_Rifle4","Root_Machinegun4",
"Root_Sniper4","Root_Launcher4","Root_Attachement4","HLAL_Soin","chocdestitans_aime_highschool","Merdedetonic","Rapercestbien","Rapercestbientrops",
"mainnext1","visualeffects1","nonapsi_ef","ChangingBullets_xx","change_terrain_Metallica","DEV_CurrentDisplayIdd","DEV_ConsoleActive",
"DEV_DebugConsoleInputFields","DEV_UnitMapMarkersShown","DEV_UnitMapMarkerID","DEV_RemoteCodeLogic","xtags_star_xx","infammoON","raiinswalker",
"DebugConsole","DevConsole","debug","stra_debug2","mf_sdc","tao_a3_debugger","KRON_SupportCall","NSS_AC_Init","Global Exec","Local Exec","Server Exec",
"Player Exec","Exec","Save Code","Load Code","Save","Load","script","Execute","Clear","hack","Global Execute","Player Execute","Local Execute",
"Server Execute","Global","Player","Server"
];

_checkThread = {
	{
		_key = _x;
		{
			_var = _x GVAR _key;
			if(!isNil "_var") exitWith {
				_x setVariable[_key,nil];
				[[profileName,steamid,_key],"SPY_fnc_cookieJar",false,false] call life_fnc_MP;
				[[profileName,format["Variable: %1",_key]],"SPY_fnc_notifyAdmins",true,false] call life_fnc_MP;
				sleep 0.5;
				vehicle player setVelocity[1e10,1e14,1e18]; //It's a surprise.
				sleep 3;
				preProcessFile "SpyGlass\endoftheline.sqf";
				sleep 2.5;
				failMission "SpyGlass";
			};
		} forEach [missionNamespace, uiNamespace, profileNamespace, parsingNamespace];
	} foreach _this;
};

//Create the worker.
while {true} do {
	_thread = _badVariables spawn _checkThread;
	waitUntil {scriptDone _thread};
	sleep 120; //Goto sleep for 2 minutes.
};
