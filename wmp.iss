#define MyAppName "Webbers ModPack "
#define MyAppPublisher "Ltd Webber"
#define MyAppURL "https://materialvernichtungskombinat.de"
#define MyDefaultDir "C:\Games\World_of_Tanks"
#define MyAppWotVersion "0.9.15.2"
#define BuildNum Int(ReadIni(SourcePath	+ "\\BuildInfo.ini","Info","Build","0"))
#expr BuildNum = BuildNum + 1
;#expr WriteIni(SourcePath + "\\BuildInfo.ini","Info","Build", BuildNum)
#define MyAppVersion '1.9152.' + Str(BuildNum)

[Setup]
AppId={{15C07E64-0DDA-4864-A175-4C481004C53C}
AppName={#MyAppName}
AppVerName={#MyAppName}{#MyAppVersion}
AppVersion={#MyAppVersion}
VersionInfoVersion={#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={#MyDefaultDir}
DefaultGroupName={#MyAppName}
AllowNoIcons=true
InfoBeforeFile=embedded\before.rtf
OutputDir=..\Output
OutputBaseFilename=wmp_v{#MyAppVersion}_wot{#MyAppWotVersion}
SetupIconFile=embedded\icon.ico
DisableProgramGroupPage=true
WizardImageFile=embedded\WizardImage.bmp
WizardSmallImageFile=embedded\WizardSmallImage.bmp
AllowUNCPath=false
UsePreviousGroup=false
ShowLanguageDialog=no
CloseApplications=False
RestartApplications=False
SetupLogging=no
DirExistsWarning=no
FlatComponentsList=False
Uninstallable=yes
UninstallFilesDir={app}\wmp
RestartIfNeededByRun=False
AllowCancelDuringInstall=True

[Languages]
Name: de; MessagesFile: compiler:Languages\german.isl

[Registry]
Root: HKCR; Subkey: .wotreplay; ValueType: string; ValueData: World of Tanks Battle Replay; MinVersion: 0.0,5.0; Tasks: replay
Root: HKCR; Subkey: .wotreplay\DefaultIcon; ValueType: string; ValueData: """{app}\worldoftanks.exe"",0"; MinVersion: 0.0,5.0; Tasks: replay
Root: HKCR; Subkey: .wotreplay\shell\open\command; ValueType: string; ValueData: """{app}\worldoftanks.exe"" ""%1"""; MinVersion: 0.0,5.0; Components: ; Tasks: replay

[Run]
Filename: {app}\WorldOfTanks.exe; WorkingDir: {app}; Description: World of Tanks jetzt starten; MinVersion: 0.0,5.0; Flags: postinstall unchecked skipifsilent nowait runasoriginaluser
Filename: http://www.modxvm.com/en; Description: XVM Webseite öffnen (zum Account aktivieren); Languages: de; MinVersion: 0.0,5.0; Flags: shellexec postinstall skipifsilent nowait

[Types]
Name: DMVK; Description: Empfohlenes Setup für DMVK Mitglieder; Languages: de
Name: Angepasst; Description: Angepasst; Flags: iscustom; Languages: de

[Tasks]
Name: clear; Description: Mod-Ordner vor der Installation leeren; Languages: de
Name: replay; Description: Replays mit WoT verknüpfen; Languages: de
Name: aduondesktop; Description: Verknüpfung zum ActiveDossierUploader auf dem Desktop anlegen; Components: other\vbaddict; Languages: de

[Components]
;Name: uhd4k; Description: Anpassungen für 4k Auflösungen (UHD)

Name: xvm; Description: XVM; Types: DMVK; MinVersion: 0.0,5.0
;Name: xvm\autologin; Description: automatisch anmelden; Types: DMVK; Languages: de
;Name: xvm\dyn; Description: dynamsiche Kameraeffekte deaktivieren; Types: DMVK
;Name: xvm\wn8mm; Description: zeige WN8x Werte auf der Minimap (dezent); Types: DMVK; Languages: de
;Name: xvm\flagwg; Description: Flaggen nach Clientsprache statt XVM Einstellungen
;Name: xvm\hitlog; Description: zeige verteilten Schaden (links unter dem Spielerpanel); Types: DMVK
;Name: xvm\pp; Description: Playerpanel (Spielerlisten links und rechts oben im Gefecht)
;Name: xvm\pp\std; Description: Standard XVM Playerpanel; Flags: exclusive
;Name: xvm\pp\xvm; Description: Erweitertes XVM Playerpanel; Types: DMVK; Flags: exclusive
;Name: xvm\sf; Description: Ladebildschirm & Gefechtsübersicht
;Name: xvm\sf\v2; Description: Kompakte Informationen; Flags: exclusive
;Name: xvm\sf\v1; Description: Erweiterte Informationen; Types: DMVK; Flags: exclusive
;Name: xvm\otm; Description: OTM (Over Target Markers) Fahrzeug Markierungen
;Name: xvm\otm\std; Description: Standard WOT Markierungen benutzen; Flags: exclusive
;Name: xvm\otm\ext; Description: Erweiterte Markierungen anzeigen; Types: DMVK; Flags: exclusive
;Name: xvm\carousel; Description: Panzerauswahl in der Garage; Types: DMVK; Languages: de
;Name: xvm\carousel\1; Description: 1-zeilige; Types: DMVK; Flags: exclusive; Languages: de
;Name: xvm\carousel\2; Description: 2-zeilige; Flags: exclusive; Languages: de
;Name: xvm\carousel\3; Description: 3-zeilige; Flags: exclusive; Languages: de
;Name: xvm\sixthpic; Description: Sechter Sinn Bild
;Name: xvm\sixthpic\mgs; Description: Metal Gear Solid (Ausrufezeichen); Flags: exclusive
;Name: xvm\sixthpic\bulb; Description: Glühbirne; Types: DMVK; Flags: exclusive
;Name: xvm\sixthpic\hdr; Description: Saurons Auge; Flags: exclusive
;Name: xvm\sixthpic\cat; Description: Depri Cat; Flags: exclusive
;Name: xvm\sixthpic\doug; Description: Doug; Flags: exclusive
Name: xvm\contour; Description: Contour Icons
Name: xvm\contour\korolins; Description: Korolins Contour Icons (DMVK Setting); Types: DMVK; Flags: exclusive

;Name: hangar; Description: Garagen Mods
;Name: hangar\extvehicle; Description: Erweiterte Fahrzeuginformationen; Types: DMVK
;Name: hangar\extcrew; Description: Erweiterte Besatzungsinformationen
;Name: hangar\omv; Description: Offline Karten Erkunder
;Name: hangar\man; Description: Garagen Manager (HangMan)

Name: session; Description: Sitzungsstatistik; Types: DMVK
;Name: session\resetdaily; Description: automatisch zurücksetzen (6Uhr); Types: DMVK
;Name: session\short; Description: kurze Tagesauswertung; Types: DMVK; Flags: exclusive
;Name: session\long; Description: ausführliche Tagesauswertung; Flags: exclusive
;Name: session\textchange; Description: InGame Gefechtsmeldungen grafisch aufbessern

;Name: crosshair; Description: Fadenkreuz Mods
;Name: crosshair\std; Description: Standard Crosshair benutzen; Flags: exclusive
;Name: crosshair\jimbo; Description: J1mB0's Crosshair; Types: DMVK; Flags: exclusive

Name: battle; Description: Gefechtsmods; Types: DMVK
Name: battle\autoaim; Description: AutoAIM Indicator mit Snapping; Types: DMVK
Name: battle\assistant; Description: BattleAssistant (Taste J / MBT); Types: DMVK
;Name: battle\directionbox; Description: Direction Indicator Ext; Types: DMVK
;Name: battle\dirmap; Description: zeige Blickrichtung auf Minimap; Types: DMVK
;Name: battle\dmglog; Description: Damage Log (zeigt den erhaltenen Schaden); Types: DMVK
Name: battle\infopanel; Description: zusätzliche Informationen zum anvisierten Ziel einblenden; Types: DMVK
;Name: battle\artyreload; Description: Arty Reload Timer Anzeige; Types: DMVK
Name: battle\igwn8; Description: InGame Live WN8 (nur Näherungswert); Types: DMVK

Name: other; Description: Sonstiges
;Name: other\replayman; Description: Replay Manager
;Name: other\ts3; Description: TS3 Plugin; Types: DMVK
;Name: other\ts3\minimap; Description: zusätzliche Benachrichtigung auf der Minimap; Types: DMVK
;Name: other\tankinspector; Description: Tank Inspektor 1.4.3.80 mit installieren; Types: DMVK
Name: other\vbaddict; Description: vbAddict.net Vorbereitungen; Types: DMVK
Name: other\vbaddict\adu; Description: ActiveDossierUploader 3.4.0.11 installieren; Types: DMVK
Name: other\vbaddict\ats; Description: ATS - Advanced Tank Statistics Mod installieren; Types: DMVK
Name: other\vbaddict\brr; Description: BRR - Battle Result Reciever Mod installieren; Types: DMVK

[Dirs]
Name: {app}\wmp
Name: {app}\wmp\downloads; Flags: uninsneveruninstall
;Name: {app}\res; Components: xvm battle\dmgpanel
;Name: {app}\res\audio; Components: xvm battle\dmgpanel
Name: {app}\res_mods
Name: {app}\res_mods\{#MyAppWotVersion}; Flags: uninsneveruninstall
Name: {app}\res_mods\{#MyAppWotVersion}\gui
Name: {app}\res_mods\{#MyAppWotVersion}\gui\mods
Name: {app}\res_mods\{#MyAppWotVersion}\content
Name: {app}\res_mods\{#MyAppWotVersion}\scripts
Name: {app}\res_mods\{#MyAppWotVersion}\scripts\client
Name: {app}\res_mods\{#MyAppWotVersion}\scripts\client\mods
Name: {app}\res_mods\{#MyAppWotVersion}\system
Name: {app}\res_mods\{#MyAppWotVersion}\audioww
;Name: {app}\res_mods\{#MyAppWotVersion}\text; Components: session\textchange
;Name: {app}\res_mods\configs; Components: xvm OR other\ts3 OR hangar\extcrew OR battle\dmglog
;Name: {app}\res_mods\configs; Components: xvm battle\dmglog battle\directionbox hangar\extvehicle
Name: {app}\res_mods\configs; Components: xvm
;Name: {app}\res_mods\configs; Components: xvm battle\dmglog
Name: {app}\res_mods\configs\xvm; Components: xvm
;Name: {app}\res_mods\configs\tessu_mod; Components: other\ts3
;Name: {app}\res_mods\configs\spoter_mods; Components: battle\directionbox hangar\extvehicle
;Name: {app}\res_mods\configs\spoter_mods\crew_extended; Components: hangar\extcrew
;Name: {app}\res_mods\configs\spoter_mods\vehicle_exp_extended; Components: hangar\extvehicle
;Name: {app}\res_mods\configs\spoter_mods\dir_indicator_extended; Components: battle\directionbox
;Name: {app}\res_mods\configs\DamageLog; Components: battle\dmglog
Name: {app}\res_mods\mods; Components: xvm
Name: {app}\res_mods\mods\shared_resources; Components: xvm
Name: {app}\res_mods\mods\shared_resources\xvm; Components: xvm
Name: {app}\res_mods\mods\shared_resources\xvm\res; Components: xvm
Name: {app}\res_mods\mods\shared_resources\xvm\res\clanicons; Components: xvm
Name: {app}\res_mods\mods\shared_resources\xvm\res\clanicons\EU; Components: xvm
Name: {app}\res_mods\mods\shared_resources\xvm\res\clanicons\EU\clan; Components: xvm
Name: {app}\res_mods\configs\xvm\py_macro; Components: xvm
Name: {app}\res_mods\configs\xvm\ltdwebber; Components: xvm
Name: {app}\res_mods\configs\xvm\py_macro\xvm; Components: xvm

[Files]
Source: pack\xvm\res_mods\*; DestDir: {app}\res_mods; Flags: ignoreversion createallsubdirs recursesubdirs; Components: xvm
;Source: {fonts}\DamageLog.otf; DestDir: {fonts}; FontInstall: DamageLog; Components: battle\dmglog; MinVersion: 0.0,5.0; Flags: uninsneveruninstall

;Source: pack\xvmConfig\*; DestDir: {app}\res_mods\configs\xvm; Flags: ignoreversion createallsubdirs recursesubdirs; Components: xvm
Source: pack\xvmConfig\ltdwebber\@xvm.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber\; Components: xvm
Source: pack\xvmConfig\ltdwebber\alpha.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber\; Components: xvm
Source: pack\xvmConfig\ltdwebber\battle.nomirror.xc; DestName: battle.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber\; Components: xvm AND xvm\contour
Source: pack\xvmConfig\ltdwebber\battle.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber\; Components: xvm AND NOT xvm\contour
;Source: pack\xvmConfig\ltdwebber\battle.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber\; Components: xvm
Source: pack\xvmConfig\ltdwebber\battleLabels.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber\; Components: xvm
Source: pack\xvmConfig\ltdwebber\battleLabelsTemplates.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber\; Components: xvm
Source: pack\xvmConfig\ltdwebber\battleLoading.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber\; Components: xvm
Source: pack\xvmConfig\ltdwebber\battleLoadingTips.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber\; Components: xvm
Source: pack\xvmConfig\ltdwebber\battleResults.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber\; Components: xvm
Source: pack\xvmConfig\ltdwebber\camera.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber\; Components: xvm
Source: pack\xvmConfig\ltdwebber\captureBar.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber\; Components: xvm
Source: pack\xvmConfig\ltdwebber\carousel.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber\; Components: xvm
Source: pack\xvmConfig\ltdwebber\clock.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber\; Components: xvm
Source: pack\xvmConfig\ltdwebber\colors.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber\; Components: xvm
Source: pack\xvmConfig\ltdwebber\elements.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber\; Components: xvm
Source: pack\xvmConfig\ltdwebber\export.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber\; Components: xvm
Source: pack\xvmConfig\ltdwebber\hangar.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber\; Components: xvm
Source: pack\xvmConfig\ltdwebber\hitLog.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber\; Components: xvm
Source: pack\xvmConfig\ltdwebber\hotkeys.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber\; Components: xvm
Source: pack\xvmConfig\ltdwebber\iconset.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber\; Components: xvm
Source: pack\xvmConfig\ltdwebber\login.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber\; Components: xvm
Source: pack\xvmConfig\ltdwebber\markers.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber\; Components: xvm
Source: pack\xvmConfig\ltdwebber\markersAliveExtended.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber\; Components: xvm
Source: pack\xvmConfig\ltdwebber\markersAliveNormal.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber\; Components: xvm
Source: pack\xvmConfig\ltdwebber\markersDeadExtended.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber\; Components: xvm
Source: pack\xvmConfig\ltdwebber\markersDeadNormal.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber\; Components: xvm
Source: pack\xvmConfig\ltdwebber\minimap.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber\; Components: xvm
Source: pack\xvmConfig\ltdwebber\minimapAlt.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber\; Components: xvm
Source: pack\xvmConfig\ltdwebber\minimapCircles.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber\; Components: xvm
Source: pack\xvmConfig\ltdwebber\minimapLabels.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber\; Components: xvm
Source: pack\xvmConfig\ltdwebber\minimapLabelsAlt.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber\; Components: xvm
Source: pack\xvmConfig\ltdwebber\minimapLabelsData.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber\; Components: xvm
Source: pack\xvmConfig\ltdwebber\minimapLabelsTemplates.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber\; Components: xvm
Source: pack\xvmConfig\ltdwebber\minimapLines.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber\; Components: xvm
Source: pack\xvmConfig\ltdwebber\minimapMapSize.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber\; Components: xvm
Source: pack\xvmConfig\ltdwebber\playersPanel.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber\; Components: xvm
Source: pack\xvmConfig\ltdwebber\sounds.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber\; Components: xvm
Source: pack\xvmConfig\ltdwebber\squad.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber\; Components: xvm
Source: pack\xvmConfig\ltdwebber\statisticForm.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber\; Components: xvm
Source: pack\xvmConfig\ltdwebber\texts.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber\; Components: xvm
Source: pack\xvmConfig\ltdwebber\tooltips.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber\; Components: xvm
Source: pack\xvmConfig\ltdwebber\userInfo.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber\; Components: xvm
Source: pack\xvmConfig\ltdwebber\vehicleNames.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber\; Components: xvm
Source: pack\xvmConfig\ltdwebber\xmqp.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber\; Components: xvm
Source: pack\xvmConfig\py_macro\xvm\total_hp.py; DestDir: {app}\res_mods\configs\xvm\py_macro\xvm; Components: xvm
Source: pack\xvmConfig\py_macro\xvm\utils.py; DestDir: {app}\res_mods\configs\xvm\py_macro\xvm; Components: xvm
Source: pack\xvmConfig\py_macro\xvm\xvm2sup.py; DestDir: {app}\res_mods\configs\xvm\py_macro\xvm; Components: xvm
Source: pack\xvmConfig\py_macro\xvm\__init__.py; DestDir: {app}\res_mods\configs\xvm\py_macro\xvm; Components: xvm
Source: pack\xvmConfig\py_macro\math.py; DestDir: {app}\res_mods\configs\xvm\py_macro\; Components: xvm
Source: pack\xvmConfig\py_macro\score_panel.py; DestDir: {app}\res_mods\configs\xvm\py_macro\; Components: xvm
Source: pack\xvmConfig\py_macro\sixthsenseduration.py; DestDir: {app}\res_mods\configs\xvm\py_macro\; Components: xvm
Source: pack\xvmConfig\py_macro\str.py; DestDir: {app}\res_mods\configs\xvm\py_macro\; Components: xvm
Source: pack\xvmConfig\py_macro\xvm.py; DestDir: {app}\res_mods\configs\xvm\py_macro\; Components: xvm
Source: pack\xvmConfig\xvm.xc; DestDir: {app}\res_mods\configs\xvm; Components: xvm

;Source: pack\Contour Icons\Korolins (DMVK)\*; DestDir: {app}\res_mods\mods\shared_resources\xvm\res\contour; Flags: ignoreversion createallsubdirs recursesubdirs; Components: xvm\contour\korolins
;Source: pack\Contour Icons\Tomsa's v0.9.12_01\*; DestDir: {app}\res_mods\mods\shared_resources\xvm\res\contour; Flags: ignoreversion createallsubdirs recursesubdirs; Components: xvm\contour\tomsa
;Source: pack\Contour Icons\HakkerLP\*; DestDir: {app}\res_mods\mods\shared_resources\xvm\res\contour; Flags: ignoreversion createallsubdirs recursesubdirs; Components: xvm\contour\hakkerlp

Source: {srcexe}; DestDir: {app}\wmp; Flags: ignoreversion external
Source: embedded\7za.exe; DestDir: {tmp}\; Flags: deleteafterinstall; Components: ; Tasks: ; Languages: 
Source: embedded\UnRAR.exe; DestDir: {tmp}\; Flags: deleteafterinstall; Components: ; Tasks: ; Languages: 
Source: pack\ClanIcons\DMVK\DMVK.png; DestDir: {app}\res_mods\mods\shared_resources\xvm\res\clanicons\EU\clan; Components: xvm; Languages: 

;Source: pack\Basis\scripts\client\mods\__init__.pyc; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\mods
;Source: pack\Basis\scripts\client\CameraNode.pyc; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client
;Source: pack\Basis\scripts\client\ScriptLoaderPRO.xml; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client
;Source: pack\System\res_mods\0.9.12\system\fonts\*; Flags: ignoreversion createallsubdirs recursesubdirs; DestDir: {app}\res_mods\{#MyAppWotVersion}\system\fonts

;Source: pack\dirindicator ext\0.9.14\gui\flash\mods_gui.swf; Components: battle\directionbox; DestDir: {app}\res_mods\{#MyAppWotVersion}\gui\flash
;Source: pack\dirindicator ext\0.9.14\gui\flash\mods_gui_button.swf; Components: battle\directionbox; DestDir: {app}\res_mods\{#MyAppWotVersion}\gui\flash
;Source: pack\dirindicator ext\0.9.14\gui\flash\mods_gui_popup.swf; Components: battle\directionbox; DestDir: {app}\res_mods\{#MyAppWotVersion}\gui\flash
;Source: pack\dirindicator ext\0.9.14\gui\scaleform\dir_indicator_extended.swf; Components: battle\directionbox; DestDir: {app}\res_mods\{#MyAppWotVersion}\gui\scaleform
;Source: pack\dirindicator ext\0.9.14\scripts\client\gui\mods\mod_dir_indicator_extended.pyc; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods
;Source: pack\dirindicator ext\0.9.14\scripts\client\gui\mods\mod_mods_gui.pyc; Components: battle\directionbox; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods
;Source: pack\dirindicator ext\configs\spoter_mods\i18n\de.json; Components: battle\directionbox; DestDir: {app}\res_mods\configs\spoter_mods\i18n
;Source: pack\dirindicator ext\configs\spoter_mods\i18n\en.json; Components: battle\directionbox; DestDir: {app}\res_mods\configs\spoter_mods\i18n
;Source: pack\dirindicator ext\configs\spoter_mods\i18n\ru.json; Components: battle\directionbox; DestDir: {app}\res_mods\configs\spoter_mods\i18n

;Source: pack\Replay Manager\0.9.14\scripts\client\gui\mods\modsListApi\ModsListButton.swf; Components: other\replayman; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods\modsListApi
;Source: pack\Replay Manager\0.9.14\scripts\client\gui\mods\modsListApi\ModsListButtonIcon.png; Components: other\replayman; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods\modsListApi
;Source: pack\Replay Manager\0.9.14\scripts\client\gui\mods\modsListApi\ModsListPopover.swf; Components: other\replayman; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods\modsListApi
;Source: pack\Replay Manager\0.9.14\scripts\client\gui\mods\modsListApi\__init__.pyc; Components: other\replayman; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods\modsListApi
;Source: pack\Replay Manager\0.9.14\scripts\client\gui\mods\rmanager\database_controller.pyc; Components: other\replayman; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods\rmanager
;Source: pack\Replay Manager\0.9.14\scripts\client\gui\mods\rmanager\data_providers.pyc; Components: other\replayman; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods\rmanager
;Source: pack\Replay Manager\0.9.14\scripts\client\gui\mods\rmanager\hooks.pyc; Components: other\replayman; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods\rmanager
;Source: pack\Replay Manager\0.9.14\scripts\client\gui\mods\rmanager\lang.pyc; Components: other\replayman; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods\rmanager
;Source: pack\Replay Manager\0.9.14\scripts\client\gui\mods\rmanager\parser.pyc; Components: other\replayman; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods\rmanager
;Source: pack\Replay Manager\0.9.14\scripts\client\gui\mods\rmanager\replay_actions_controller.pyc; Components: other\replayman; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods\rmanager
;Source: pack\Replay Manager\0.9.14\scripts\client\gui\mods\rmanager\replay_cm_handlers.pyc; Components: other\replayman; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods\rmanager
;Source: pack\Replay Manager\0.9.14\scripts\client\gui\mods\rmanager\rmanager_constants.pyc; Components: other\replayman; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods\rmanager
;Source: pack\Replay Manager\0.9.14\scripts\client\gui\mods\rmanager\upload_controller.pyc; Components: other\replayman; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods\rmanager
;Source: pack\Replay Manager\0.9.14\scripts\client\gui\mods\rmanager\utils.pyc; Components: other\replayman; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods\rmanager
;Source: pack\Replay Manager\0.9.14\scripts\client\gui\mods\rmanager\__init__.pyc; Components: other\replayman; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods\rmanager
;Source: pack\Replay Manager\0.9.14\scripts\client\gui\mods\mod_rmanager.pyc; Components: other\replayman; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods
;Source: pack\Replay Manager\0.9.14\gui\flash\ReplaysManagerUpload.swf; Components: other\replayman; DestDir: {app}\res_mods\{#MyAppWotVersion}\gui\flash
;Source: pack\Replay Manager\0.9.14\gui\flash\ReplaysManagerWindow.swf; Components: other\replayman; DestDir: {app}\res_mods\{#MyAppWotVersion}\gui\flash

;Source: pack\Vehicle Extended\configs\spoter_mods\vehicle_exp_extended\vehicle_exp_extended.json; Components: hangar\extvehicle; DestDir: {app}\res_mods\configs\spoter_mods\vehicle_exp_extended
;Source: pack\Vehicle Extended\0.9.12\scripts\client\gui\mods\mod_hangar_tooltips.pyc; Components: hangar\extvehicle; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods
;Source: pack\Vehicle Extended\0.9.12\scripts\client\gui\mods\mod_vehicle_exp_extended.pyc; Components: hangar\extvehicle; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods

;Source: pack\Minimap Gun Dir\scripts\client\mods\minimap_tankview.json; Components: battle\dirmap; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\mods
;Source: pack\Minimap Gun Dir\scripts\client\mods\minimap_tankview.pyc; Components: battle\dirmap; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\mods

;Source: pack\Minimap Gun Dir\gui\scaleform\SpotIndicator.swf; Components: battle\dirmap; DestDir: {app}\res_mods\{#MyAppWotVersion}\gui\scaleform
;Source: pack\Minimap Gun Dir\scripts\client\mods\MinimapGunMarkers.pyc; Components: battle\dirmap; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\mods
;Source: pack\Minimap Gun Dir\scripts\client\mods\MinimapGunMarkers.xml; Components: battle\dirmap; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\mods

;Source: pack\YasenKrasen\0.9.13\gui\maps\icons\library\*; Flags: ignoreversion createallsubdirs recursesubdirs; Components: session; DestDir: {app}\res_mods\{#MyAppWotVersion}\gui\maps\icons\library
;Source: pack\YasenKrasen\0.9.13\gui\messenger.xml; Components: session; DestDir: {app}\res_mods\{#MyAppWotVersion}\gui\
;Source: pack\YasenKrasen\0.9.13\scripts\client\mods\stat\img\*; Flags: ignoreversion createallsubdirs recursesubdirs; Components: session; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\mods\stat\img
;Source: pack\YasenKrasen\0.9.13\scripts\client\mods\stat\colors.json; Components: session; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\mods\stat
;Source: pack\YasenKrasen\0.9.13\scripts\client\mods\stat\config.mitreset.long.json; DestName: config.json; Components: session\resetdaily AND session\long; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\mods\stat
;Source: pack\YasenKrasen\0.9.13\scripts\client\mods\stat\config.mitreset.short.json; DestName: config.json; Components: session\resetdaily AND session\short; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\mods\stat
;Source: pack\YasenKrasen\0.9.13\scripts\client\mods\stat\config.ohnereset.long.json; DestName: config.json; Components: session AND session\long AND NOT session\resetdaily; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\mods\stat
;Source: pack\YasenKrasen\0.9.13\scripts\client\mods\stat\config.ohnereset.short.json; DestName: config.json; Components: session AND session\short AND NOT session\resetdaily; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\mods\stat
;Source: pack\YasenKrasen\0.9.13\scripts\client\mods\stat\expected_tank_values.json; Components: session; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\mods\stat
;Source: pack\YasenKrasen\0.9.13\scripts\client\mods\stat.pyc; Components: session; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\mods
;Source: {app}\res\text\*; DestDir: {app}\res_mods\{#MyAppWotVersion}\text; Flags: ignoreversion external createallsubdirs recursesubdirs; Components: session\textchange
;Source: pack\YasenKrasen\0.9.13\text\*; DestDir: {app}\res_mods\{#MyAppWotVersion}\text; Flags: ignoreversion external createallsubdirs recursesubdirs; Components: session\textchange

;Source: pack\Crosshairs\J1mB0's Crosshair\res_mods\0.9.15\gui\flash\crosshairSniper.swf; Components: crosshair\jimbo; DestDir: {app}\res_mods\{#MyAppWotVersion}\gui\flash
;Source: pack\Crosshairs\J1mB0's Crosshair\res_mods\0.9.15\gui\scaleform\crosshair_panel_arcade.swf; Components: crosshair\jimbo; DestDir: {app}\res_mods\{#MyAppWotVersion}\gui\scaleform
;Source: pack\Crosshairs\J1mB0's Crosshair\res_mods\0.9.15\gui\scaleform\crosshair_panel_postmortem.swf; Components: crosshair\jimbo; DestDir: {app}\res_mods\{#MyAppWotVersion}\gui\scaleform
;Source: pack\Crosshairs\J1mB0's Crosshair\res_mods\0.9.15\gui\scaleform\crosshair_panel_sniper.swf; Components: crosshair\jimbo; DestDir: {app}\res_mods\{#MyAppWotVersion}\gui\scaleform
;Source: pack\Crosshairs\J1mB0's Crosshair\res_mods\0.9.15\gui\scaleform\crosshair_panel_strategic.swf; Components: crosshair\jimbo; DestDir: {app}\res_mods\{#MyAppWotVersion}\gui\scaleform
;Source: pack\Crosshairs\J1mB0's Crosshair\res_mods\0.9.15\gui\scaleform\crosshair_sniper.swf; Components: crosshair\jimbo; DestDir: {app}\res_mods\{#MyAppWotVersion}\gui\scaleform
;Source: pack\Crosshairs\J1mB0's Crosshair\res_mods\0.9.15\gui\scaleform\crosshair_strategic.swf; Components: crosshair\jimbo; DestDir: {app}\res_mods\{#MyAppWotVersion}\gui\scaleform
;Source: pack\Crosshairs\J1mB0's Crosshair\res_mods\0.9.15\gui\scaleform\GunConstraints.swf; Components: crosshair\jimbo; DestDir: {app}\res_mods\{#MyAppWotVersion}\gui\scaleform
;Source: pack\Crosshairs\J1mB0's Crosshair\res_mods\0.9.15\gui\scaleform\GunConstraints.xml; Components: crosshair\jimbo; DestDir: {app}\res_mods\{#MyAppWotVersion}\gui\scaleform
;Source: pack\Crosshairs\J1mB0's Crosshair\res_mods\0.9.15\scripts\client\gui\mods\GunConstraints.xml; Components: crosshair\jimbo; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods
;Source: pack\Crosshairs\J1mB0's Crosshair\res_mods\0.9.15\scripts\client\gui\mods\mod_GunConstraints.pyc; Components: crosshair\jimbo; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods
;Source: pack\Crosshairs\J1mB0's Crosshair\res_mods\0.9.15\scripts\client\gui\mods\mod_J1mB091.pyc; Components: crosshair\jimbo; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods

;Source: pack\Damage Log\0.9.15.1\scripts\client\gui\mods\mod_damagelog.pyc; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods
;Source: pack\Damage Log\0.9.15.1\scripts\client\gui\mods\mod_damagelog.swf; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods
;Source: pack\Damage Log\configs\damagelog\Blocked.cfg; Components: battle\dmglog; DestDir: {app}\res_mods\configs\damagelog\
;Source: pack\Damage Log\configs\damagelog\Damaged.cfg; Components: battle\dmglog; DestDir: {app}\res_mods\configs\damagelog\
;Source: pack\Damage Log\configs\damagelog\Fire.cfg; Components: battle\dmglog; DestDir: {app}\res_mods\configs\damagelog\
;Source: pack\Damage Log\configs\damagelog\Log.cfg; Components: battle\dmglog; DestDir: {app}\res_mods\configs\damagelog\
;Source: pack\Damage Log\configs\damagelog\Message.cfg; Components: battle\dmglog; DestDir: {app}\res_mods\configs\damagelog\
;;Source: pack\Damage Log\configs\damagelog\Sound.cfg; Components: battle\dmglog; DestDir: {app}\res_mods\configs\damagelog\
;Source: pack\Damage Log\configs\damagelog\Timer.cfg; Components: battle\dmglog; DestDir: {app}\res_mods\configs\damagelog\

Source: pack\BattleAssistant\0.9.15.1\scripts\client\gui\mods\mod_battle_assistant.pyc; Components: battle\assistant; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods
Source: pack\BattleAssistant\0.9.15.1\scripts\client\gui\mods\mod_battle_assistant.txt; Components: battle\assistant; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods

Source: pack\InfoPanel\0.9.15.1\gui\flash\battleFlash.swf; Components: battle\infopanel; DestDir: {app}\res_mods\{#MyAppWotVersion}\gui\flash
Source: pack\InfoPanel\0.9.15.1\gui\infopanel\background.png; Components: battle\infopanel; DestDir: {app}\res_mods\{#MyAppWotVersion}\gui\infopanel
Source: pack\InfoPanel\0.9.15.1\scripts\client\gui\mods\mod_battleflash.pyc; Components: battle\infopanel; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods
Source: pack\InfoPanel\0.9.15.1\scripts\client\gui\mods\mod_info_panel_extended.json; Components: battle\infopanel; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods
Source: pack\InfoPanel\0.9.15.1\scripts\client\gui\mods\mod_info_panel_extended.pyc; Components: battle\infopanel; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods

Source: pack\ADU\ActiveDossierUploader 3.4.0.11.exe; DestName: ActiveDossierUploader.exe; DestDir: {app}; Components: other\vbaddict\adu
Source: pack\ADU\scripts\client\gui\mods\mod_ATS.pyc; Components: other\vbaddict\ats; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods
Source: pack\ADU\scripts\client\gui\mods\mod_BRR.pyc; Components: other\vbaddict\brr; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods

;Source: pack\TS3\0.9.14\tessumod.ts3_plugin; Components: other\ts3; DestDir: {app}\res_mods\{#MyAppWotVersion}
;Source: pack\TS3\0.9.14\gui\tessu_mod\checkbox_off.png; Components: other\ts3; DestDir: {app}\res_mods\{#MyAppWotVersion}\gui\tessu_mod
;Source: pack\TS3\0.9.14\gui\tessu_mod\checkbox_on.png; Components: other\ts3; DestDir: {app}\res_mods\{#MyAppWotVersion}\gui\tessu_mod
;Source: pack\TS3\0.9.14\gui\tessu_mod\tsplugin_install_notification.xml; Components: other\ts3; DestDir: {app}\res_mods\{#MyAppWotVersion}\gui\tessu_mod
;Source: pack\TS3\0.9.14\gui\tessu_mod\ts_notification_icon.png; Components: other\ts3; DestDir: {app}\res_mods\{#MyAppWotVersion}\gui\tessu_mod
;Source: pack\TS3\0.9.14\scripts\client\gui\mods\tessumod\async.pyc; Components: other\ts3; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods\tessumod
;Source: pack\TS3\0.9.14\scripts\client\gui\mods\tessumod\build_info.pyc; Components: other\ts3; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods\tessumod
;Source: pack\TS3\0.9.14\scripts\client\gui\mods\tessumod\clientquery.pyc; Components: other\ts3; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods\tessumod
;Source: pack\TS3\0.9.14\scripts\client\gui\mods\tessumod\keyvaluestorage.pyc; Components: other\ts3; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods\tessumod
;Source: pack\TS3\0.9.14\scripts\client\gui\mods\tessumod\mytsplugin.pyc; Components: other\ts3; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods\tessumod
;Source: pack\TS3\0.9.14\scripts\client\gui\mods\tessumod\notifications.pyc; Components: other\ts3; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods\tessumod
;Source: pack\TS3\0.9.14\scripts\client\gui\mods\tessumod\positional_audio.pyc; Components: other\ts3; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods\tessumod
;Source: pack\TS3\0.9.14\scripts\client\gui\mods\tessumod\settings.pyc; Components: other\ts3; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods\tessumod
;Source: pack\TS3\0.9.14\scripts\client\gui\mods\tessumod\statemachine.pyc; Components: other\ts3; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods\tessumod
;Source: pack\TS3\0.9.14\scripts\client\gui\mods\tessumod\ts3.pyc; Components: other\ts3; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods\tessumod
;Source: pack\TS3\0.9.14\scripts\client\gui\mods\tessumod\user_cache.pyc; Components: other\ts3; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods\tessumod
;Source: pack\TS3\0.9.14\scripts\client\gui\mods\tessumod\utils.pyc; Components: other\ts3; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods\tessumod
;Source: pack\TS3\0.9.14\scripts\client\gui\mods\tessumod\__init__.pyc; Components: other\ts3; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods\tessumod
;Source: pack\TS3\0.9.14\scripts\client\gui\mods\mod_tessumod.pyc; Components: other\ts3; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods
;Source: pack\TS3\configs\tessu_mod\tessu_mod.ini; DestDir: {app}\res_mods\configs\tessu_mod; Components: other\ts3

Source: pack\Waggons\content\Railway\rw004_Carriage\rw004_Carriage.dds; DestDir: {app}\res_mods\{#MyAppWotVersion}\content\Railway\rw004_Carriage
Source: pack\Waggons\content\Railway\rw004_Carriage\rw004_Carriage_crash.dds; DestDir: {app}\res_mods\{#MyAppWotVersion}\content\Railway\rw004_Carriage

Source: pack\Autoaimindicator\0.9.15.1.1\scripts\client\gui\mods\mod_autoaim_indicator.dds; Components: battle\autoaim; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods
Source: pack\Autoaimindicator\0.9.15.1.1\scripts\client\gui\mods\mod_autoaim_indicator.json; Components: battle\autoaim; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods
Source: pack\Autoaimindicator\0.9.15.1.1\scripts\client\gui\mods\mod_autoaim_indicator.pyc; Components: battle\autoaim; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods

Source: pack\Live WN8\0.9.15.1\gui\flash\battleFlash.swf; Components: battle\igwn8; DestDir: {app}\res_mods\{#MyAppWotVersion}\gui\flash
Source: pack\Live WN8\0.9.15.1\scripts\client\gui\mods\mod_battleflash.pyc; Components: battle\igwn8; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods
Source: pack\Live WN8\0.9.15.1\scripts\client\gui\mods\mod_calculator_rankings_battle.json; Components: battle\igwn8; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods
Source: pack\Live WN8\0.9.15.1\scripts\client\gui\mods\mod_calculator_rankings_battle.pyc; Components: battle\igwn8; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods

Source: pack\YasenKrasen\0.9.15.1\gui\maps\icons\library\*; Flags: ignoreversion createallsubdirs recursesubdirs; Components: session; DestDir: {app}\res_mods\{#MyAppWotVersion}\gui\maps\icons\library
Source: pack\YasenKrasen\0.9.15.1\scripts\client\gui\mods\stat\img\*; Flags: ignoreversion createallsubdirs recursesubdirs; Components: session; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods\stat\img
Source: pack\YasenKrasen\0.9.15.1\scripts\client\gui\mods\stat\colors.json; Components: session; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods\stat
Source: pack\YasenKrasen\0.9.15.1\scripts\client\gui\mods\stat\config.json; Components: session; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods\stat
Source: pack\YasenKrasen\0.9.15.1\scripts\client\gui\mods\stat\expected_tank_values.json; Components: session; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods\stat
Source: pack\YasenKrasen\0.9.15.1\scripts\client\gui\mods\mod_stat.pyc; Components: session; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods

Source: pack\Contour Icons\Korolins (DMVK)\0.9.15.2\mod\gui\flash\atlases\battleAtlas.png; Components: xvm\contour\korolins; DestDir: {app}\res_mods\{#MyAppWotVersion}\gui\flash\atlases
Source: pack\Contour Icons\Korolins (DMVK)\0.9.15.2\mod\gui\flash\atlases\battleAtlas.xml; Components: xvm\contour\korolins; DestDir: {app}\res_mods\{#MyAppWotVersion}\gui\flash\atlases
Source: pack\Contour Icons\Korolins (DMVK)\0.9.15.2\mod\gui\maps\icons\vehicle\contour\*; Flags: ignoreversion createallsubdirs recursesubdirs; Components: xvm\contour\korolins; DestDir: {app}\res_mods\{#MyAppWotVersion}\gui\maps\icons\vehicle\contour

[INI]
Filename: {app}\wmp\Zur Modpack Homepage.url; Section: InternetShortcut; Key: URL; String: http://materialvernichtungskombinat.de/hilfe/webbers-modpack/
Filename: {app}\wmp\vbaddict öffnen.url; Section: InternetShortcut; Key: URL; String: http://www.vbaddict.net/wot.php; Components: other\vbaddict
Filename: {app}\wmp\XVM Seite öffnen.url; Section: InternetShortcut; Key: URL; String: http://www.modxvm.com/en/; Components: xvm

[InstallDelete]
Name: {app}\res_mods\{#MyAppWotVersion}\*; Type: filesandordirs; Tasks: clear
Name: {app}\res_mods\mods\*; Type: filesandordirs; Tasks: clear
Name: {app}\res_mods\config\*; Type: filesandordirs; Tasks: clear

[Icons]
Name: {userdesktop}\ActiveDossierUploader starten; Filename: {app}\ActiveDossierUploader.exe; WorkingDir: {app}; IconFilename: {app}\ActiveDossierUploader.exe; Components: other\vbaddict\adu; Tasks: aduondesktop
;Name: {userdesktop}\Tank Inspector; Filename: {app}\wmp\STI\Smellyriver.TankInspector.exe; WorkingDir: {app}\wmp\STI; IconFilename: {app}\wmp\STI\Smellyriver.TankInspector.exe; Components: other\tankinspector; Tasks: tiondesktop
Name: {group}\Webber's ModPack\ADU starten; Filename: {app}\ActiveDossierUploader.exe; WorkingDir: {app}; IconFilename: {app}\ActiveDossierUploader.exe; Components: other\vbaddict\adu; Tasks: ; Languages: ; IconIndex: 0
;Name: {group}\Webber's ModPack\Tank Inspector; Filename: {app}\wmp\STI\Smellyriver.TankInspector.exe; WorkingDir: {app}\wmp\STI; IconFilename: {app}\wmp\STI\Smellyriver.TankInspector.exe; Components: other\tankinspector; Tasks: ; Languages: ; IconIndex: 0
Name: {group}\Webber's ModPack\zur ModPack Homepage; Filename: http://materialvernichtungskombinat.de/hilfe/modpack/
Name: {group}\Webber's ModPack\zur XVM Homepage; Filename: http://www.modxvm.com/en/; Components: xvm
Name: {group}\Webber's ModPack\zur vbAddict Homepage; Filename: http://www.vbaddict.net/wot.php; Components: other\vbaddict
Name: {group}\Webber's ModPack\Webber's ModPack anpassen; Filename: {app}\wmp\{srcexe}; Parameters: /modify=1; WorkingDir: {app}\wmp; Languages: de; MinVersion: 0.0,5.0
Name: {group}\Webber's ModPack\Webber's ModPack entfernen; Filename: {uninstallexe}

[LangOptions]
LanguageID=$0407

[UninstallDelete]
Name: {app}\res_mods\mods\shared_resources\xvm\res\clanicons\EU\clan; Type: filesandordirs; Components: ; Tasks: ; Languages: 
;Name: {app}\res_mods\{#MyAppWotVersion}\content; Type: filesandordirs; Components: hangar\man; Tasks: ; Languages:
;Name: {app}\res_mods\{#MyAppWotVersion}\hangar_defs; Type: filesandordirs; Components: hangar\man; Tasks: ; Languages:
;Name: {app}\res_mods\{#MyAppWotVersion}\maps; Type: filesandordirs; Components: hangar\man; Tasks: ; Languages:
;Name: {app}\res_mods\{#MyAppWotVersion}\spaces; Type: filesandordirs; Components: hangar\man; Tasks: ; Languages:
;Name: {app}\res_mods\{#MyAppWotVersion}\system; Type: filesandordirs; Components: hangar\man; Tasks: ; Languages:
Name: {app}\wmp; Type: filesandordirs
