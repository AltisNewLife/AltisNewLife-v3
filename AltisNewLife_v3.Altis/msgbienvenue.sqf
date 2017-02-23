private [ "_camera", "_welcomeMessage", "_camDistance" ];
_welcomeMessage = format["Bienvenue dans votre nouvelle vie %1",format["%1", name player]];
_camDistance = 40;
waitUntil { alive player };
showCinemaBorder true;
camUseNVG false;
playsound "IntroCiv";
_camera = "camera" camCreate [(position player select 0)-2, position player select 1,(position player select 2)+_camDistance];
_camera cameraEffect ["internal","back"];
_camera camSetFOV 2.000;
_camera camCommit 0;
waitUntil {camCommitted _camera};
_camera camSetTarget vehicle player;
_camera camSetRelPos [0,0,2];
_camera camCommit 8;
cutText [_welcomeMessage, "PLAIN DOWN"];
waitUntil {camCommitted _camera};
_camera cameraEffect ["terminate","back"];
camDestroy _camera;
sleep 1;
_onScreenTime = 5;
sleep 3;
_role1 = "Bienvenue dans votre nouvelle vie";
_role1names = ["Les habitants de cette île parlent français"];
_role2 = "Trouvez du travail, faites des rencontres et fonder votre groupe";
_role2names = ["Surveillez bien la bourse, gagnez beaucoup d'argent et devenez proprietaires"];
_role3 = "MAIS ATTENTION ! SOYEZ PRUDENT !";
_role3names = ["Nul n'est censé ignorer la loi, la police sera la pour vous le rappeler."];
_role4 = "Touche interaction [WINDOWS]";
_role4names = ["Interagir | Ramasser | Pêcher/récolter | S'asseoir"];
_role5 = "Nombreux raccourcis clavier";
_role5names = ["Liste disponible sur votre map dans le menu de gauche 'COMMANDES'"];
_role6 = "Plus d'infos sur le site www.altisnewlfe.fr";
_role6names = ["ou branchez-vous sur ts.altisnewlife.fr"];
{
sleep 2;
_memberFunction = _x select 0;
_memberNames = _x select 1;
_finalText = format ["<t size='0.7' color='#AEEE00' align='center'>%1<br /></t>", _memberFunction];
_finalText = _finalText + "<t size='0.6' color='#FFFFFF' align='center'>";
{_finalText = _finalText + format ["%1<br />", _x]} forEach _memberNames;
_finalText = _finalText + "</t>";
_onScreenTime + (((count _memberNames) - 1) * 0.5);
[
_finalText,
[safezoneX + safezoneW - 1.0,0.50],
[safezoneY + safezoneH - 0.8,0.7],
_onScreenTime,
0.5
] spawn BIS_fnc_dynamicText;
sleep (_onScreenTime);
} forEach [
[_role1, _role1names],
[_role2, _role2names],
[_role3, _role3names],
[_role4, _role4names],
[_role5, _role5names],
[_role6, _role6names]
];