#define MyAppName "Webbers ModPack "
#define MyAppPublisher "Ltd Webber"
#define MyAppURL "http://materialvernichtungskombinat.de"
#define MyDefaultDir "C:\Games\World_of_Tanks"
#define MyAppWotVersion "0.9.14"
#define BuildNum Int(ReadIni(SourcePath	+ "\\BuildInfo.ini","Info","Build","0"))
#expr BuildNum = BuildNum + 1
;#expr WriteIni(SourcePath + "\\BuildInfo.ini","Info","Build", BuildNum)
#define MyAppVersion '1.914.' + Str(BuildNum)

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
;Compression=lzma2
;SolidCompression=true
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
;Filename: {app}\wmp\WotNumbersSetup.msi; Description: WoT Numbers installieren; Flags: shellexec postinstall; Tasks: wotnumbers

[Types]
Name: DMVK; Description: Empfohlenes Setup für DMVK Mitglieder; Languages: de
Name: Angepasst; Description: Angepasst; Flags: iscustom; Languages: de

[Tasks]
Name: clear; Description: Mod-Ordner vor der Installation leeren; Languages: de
Name: replay; Description: Replays mit WoT verknüpfen; Languages: de
Name: aduondesktop; Description: Verknüpfung zum ActiveDossierUploader auf dem Desktop anlegen; Components: other\vbaddict; Languages: de
;Name: tiondesktop; Description: Verknüpfung zum Tank Inspector auf dem Desktop anlegen; Components: other\tankinspector; Languages: de
;Name: wotnumbers; Description: WOT Number im Anschluß installieren; GroupDescription: Statistiktools

[Components]
Name: xvm; Description: XVM 6.2.1; Types: DMVK; MinVersion: 0.0,5.0
;Name: xvm\hpplayerpanel; Description: zeige HP Balken im Spielerpanel (rechts und links oben im Gefecht) [P-]
Name: xvm\autologin; Description: automatisch anmelden; Types: DMVK; Languages: de
Name: xvm\dyn; Description: dynamsiche Kameraeffekte deaktivieren; Types: DMVK
Name: xvm\wn8mm; Description: zeige WN8x Werte auf der Minimap (dezent); Types: DMVK; Languages: de
;Name: xvm\flagwg; Description: Flaggen nach Clientsprache statt XVM Einstellungen
Name: xvm\hitlog; Description: zeige verteilten Schaden (links unter dem Spielerpanel); Types: DMVK
Name: xvm\pp; Description: Playerpanel (Spielerlisten links und rechts oben im Gefecht)
Name: xvm\pp\std; Description: Standard XVM Playerpanel; Flags: exclusive
Name: xvm\pp\xvm; Description: Erweitertes XVM Playerpanel; Types: DMVK; Flags: exclusive
Name: xvm\sf; Description: Ladebildschirm & Gefechtsübersicht
Name: xvm\sf\v2; Description: Kompakte Informationen; Flags: exclusive
Name: xvm\sf\v1; Description: Erweiterte Informationen; Types: DMVK; Flags: exclusive
Name: xvm\otm; Description: OTM (Over Target Markers) Fahrzeug Markierungen
Name: xvm\otm\std; Description: Standard WOT Markierungen benutzen; Flags: exclusive
Name: xvm\otm\ext; Description: Erweiterte Markierungen anzeigen; Types: DMVK; Flags: exclusive
Name: xvm\carousel; Description: Panzerauswahl in der Garage; Types: DMVK; Languages: de
Name: xvm\carousel\1; Description: 1-zeilige; Types: DMVK; Flags: exclusive; Languages: de
Name: xvm\carousel\2; Description: 2-zeilige; Flags: exclusive; Languages: de
Name: xvm\carousel\3; Description: 3-zeilige; Flags: exclusive; Languages: de
Name: xvm\carousel\4; Description: 4-zeilige; Flags: exclusive; Languages: de
Name: xvm\sixthpic; Description: Sechter Sinn Bild
Name: xvm\sixthpic\mgs; Description: Metal Gear Solid (Ausrufezeichen); Flags: exclusive
Name: xvm\sixthpic\bulb; Description: Glühbirne; Types: DMVK; Flags: exclusive
Name: xvm\sixthpic\hdr; Description: Saurons Auge; Flags: exclusive
Name: xvm\sixthpic\cat; Description: Depri Cat; Flags: exclusive
Name: xvm\sixthpic\doug; Description: Doug; Flags: exclusive
;Name: xvm\sixthsound; Description: Sechter Sinn Ton
;Name: xvm\sixthsound\mgs; Description: Metal Gear Solid; Types: DMVK; Flags: exclusive
;Name: xvm\sixthsound\road; Description: Road Runner; Flags: exclusive
;Name: xvm\sixthsound\timer; Description: Beep mit Countdown; Flags: exclusive
;Name: xvm\sixthsound\doug; Description: Gaaatzeeee (Doug); Flags: exclusive
Name: xvm\contour; Description: Contour Icons
Name: xvm\contour\korolins; Description: Korolins Contour Icons (DMVK Setting); Types: DMVK; Flags: exclusive
;Name: xvm\contour\tomsa; Description: Tomsa's Contour Icons (veraltete); Flags: exclusive
;Name: xvm\contour\hakkerlp; Description: HakkerLP's Contour Icons; Flags: exclusive

Name: hangar; Description: Garagen Mods
Name: hangar\extvehicle; Description: Erweiterte Fahrzeuginformationen; Types: DMVK
;Name: hangar\extcrew; Description: Erweiterte Besatzungsinformationen
;Name: hangar\omv; Description: Offline Karten Erkunder
Name: hangar\man; Description: Garagen Manager (HangMan)

Name: session; Description: Sitzungsstatistik; Types: DMVK
Name: session\resetdaily; Description: automatisch zurücksetzen (6Uhr); Types: DMVK
Name: session\short; Description: kurze Tagesauswertung; Types: DMVK; Flags: exclusive
Name: session\long; Description: ausführliche Tagesauswertung; Flags: exclusive
;Name: session\textchange; Description: InGame Gefechtsmeldungen grafisch aufbessern

Name: crosshair; Description: Fadenkreuz Mods
Name: crosshair\std; Description: Standard Crosshair benutzen; Flags: exclusive
Name: crosshair\jimbo; Description: J1mB0's Crosshair; Types: DMVK; Flags: exclusive

Name: battle; Description: Gefechtsmods; Types: DMVK
Name: battle\autoaim; Description: AutoAIM Indicator mit Snapping; Types: DMVK
Name: battle\assistant; Description: BattleAssistant (Taste J); Types: DMVK
Name: battle\directionbox; Description: Direction Indicator Ext; Types: DMVK
Name: battle\teamhp; Description: alternatives Team HP Pool Panel
;Name: battle\dirmap; Description: zeige Blickrichtung auf Minimap; Types: DMVK
Name: battle\dmglog; Description: Damage Log (zeigt den erhaltenen Schaden); Types: DMVK
;Name: battle\infopanel; Description: zusätzliche Informationen zum anvisierten Ziel einblenden; Types: DMVK
;Name: battle\artyreload; Description: Arty Reload Timer Anzeige; Types: DMVK
Name: battle\igwn8; Description: InGame Live WN8 (nur Näherungswert); Types: DMVK

Name: other; Description: Sonstiges
Name: other\replayman; Description: Replay Manager
Name: other\ts3; Description: TS3 Plugin; Types: DMVK
;Name: other\ts3\minimap; Description: zusätzliche Benachrichtigung auf der Minimap; Types: DMVK
;Name: other\tankinspector; Description: Tank Inspektor 1.4.3.80 mit installieren; Types: DMVK
Name: other\vbaddict; Description: vbAddict.net Vorbereitungen; Types: DMVK
Name: other\vbaddict\adu; Description: ActiveDossierUploader 3.4.0.7 installieren; Types: DMVK
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
Name: {app}\res_mods\{#MyAppWotVersion}\content
Name: {app}\res_mods\{#MyAppWotVersion}\scripts
Name: {app}\res_mods\{#MyAppWotVersion}\scripts\client
Name: {app}\res_mods\{#MyAppWotVersion}\scripts\client\mods
Name: {app}\res_mods\{#MyAppWotVersion}\system
;Name: {app}\res_mods\{#MyAppWotVersion}\text; Components: session\textchange
;Name: {app}\res_mods\configs; Components: xvm OR other\ts3 OR hangar\extcrew OR battle\dmglog
;Name: {app}\res_mods\configs; Components: xvm battle\dmglog battle\directionbox hangar\extvehicle
Name: {app}\res_mods\configs; Components: xvm battle\dmglog
Name: {app}\res_mods\configs\xvm; Components: xvm
;Name: {app}\res_mods\configs\tessu_mod; Components: other\ts3
Name: {app}\res_mods\configs\spoter_mods; Components: battle\directionbox hangar\extvehicle
;Name: {app}\res_mods\configs\spoter_mods\crew_extended; Components: hangar\extcrew
Name: {app}\res_mods\configs\spoter_mods\vehicle_exp_extended; Components: hangar\extvehicle
Name: {app}\res_mods\configs\spoter_mods\dir_indicator_extended; Components: battle\directionbox
Name: {app}\res_mods\configs\DamageLog; Components: battle\dmglog
Name: {app}\res_mods\mods; Components: xvm
Name: {app}\res_mods\mods\shared_resources; Components: xvm
Name: {app}\res_mods\mods\shared_resources\xvm; Components: xvm
Name: {app}\res_mods\mods\shared_resources\xvm\res; Components: xvm
Name: {app}\res_mods\mods\shared_resources\xvm\res\clanicons; Components: xvm
Name: {app}\res_mods\mods\shared_resources\xvm\res\clanicons\EU; Components: xvm
Name: {app}\res_mods\mods\shared_resources\xvm\res\clanicons\EU\clan; Components: xvm

[Files]
Source: pack\xvm\res_mods\*; DestDir: {app}\res_mods; Flags: ignoreversion createallsubdirs recursesubdirs; Components: xvm
Source: {fonts}\DamageLog.otf; DestDir: {fonts}; FontInstall: DamageLog; Components: battle\dmglog; MinVersion: 0.0,5.0; Flags: uninsneveruninstall

;Source: pack\xvmWGFlags\res_mods\mods\packages\xvm_main\python\stats.pyc; DestDir: {app}\res_mods\mods\packages\xvm_main\python; Components: xvm\flagwg
;Source: pack\xvmWGFlags\res_mods\mods\packages\xvm_main\python\stats.pyc.org; DestDir: {app}\res_mods\mods\packages\xvm_main\python; Components: xvm\flagwg
;Source: pack\xvmWGFlags\res_mods\mods\shared_resources\xvm\res\icons\flags\*; DestDir: {app}\res_mods\mods\shared_resources\xvm\res\icons\flags; Flags: ignoreversion createallsubdirs recursesubdirs; Components: xvm\flagwg

Source: pack\xvmConfig\xvm.xc; DestDir: {app}\res_mods\configs\xvm; Components: xvm
Source: pack\xvmConfig\ltdwebber\img\*; DestDir: {app}\res_mods\configs\xvm\ltdwebber\img; Flags: ignoreversion createallsubdirs recursesubdirs; Components: xvm
Source: pack\xvmConfig\ltdwebber\@xvm.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber; Components: xvm
Source: pack\xvmConfig\ltdwebber\alpha.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber; Components: xvm
Source: pack\xvmConfig\ltdwebber\battle.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber; Components: xvm
;Source: pack\xvmConfig\ltdwebber\battle.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber; Components: xvm AND NOT xvm\hpplayerpanel
;Source: pack\xvmConfig\ltdwebber\battle.hp.xc; DestName: battle.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber; Components: xvm AND xvm\hpplayerpanel
Source: pack\xvmConfig\ltdwebber\battleLoading.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber; Components: xvm AND NOT xvm\sf\v2
Source: pack\xvmConfig\ltdwebber\battleLoading.v2.xc; DestName: battleLoading.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber; Components: xvm\sf\v2
Source: pack\xvmConfig\ltdwebber\battleResults.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber; Components: xvm
Source: pack\xvmConfig\ltdwebber\captureBar.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber; Components: xvm
Source: pack\xvmConfig\ltdwebber\camera.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber; Components: xvm AND NOT xvm\dyn AND NOT crosshair\jimbo
;Source: pack\xvmConfig\ltdwebber\camera.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber; Components: xvm AND NOT xvm\dyn
Source: pack\xvmConfig\ltdwebber\camera.nodyn.xc; DestName: camera.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber; Components: xvm\dyn AND NOT crosshair\jimbo
;Source: pack\xvmConfig\ltdwebber\camera.nodyn.xc; DestName: camera.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber; Components: xvm\dyn
Source: pack\xvmConfig\ltdwebber\camera.jimbo.xc; DestName: camera.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber; Components: xvm AND NOT xvm\dyn AND crosshair\jimbo
Source: pack\xvmConfig\ltdwebber\camera.jimbo.nodyn.xc; DestName: camera.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber; Components: xvm\dyn AND crosshair\jimbo
Source: pack\xvmConfig\ltdwebber\carousel.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber; Components: xvm\carousel\1
Source: pack\xvmConfig\ltdwebber\carousel.2.xc; DestName: carousel.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber; Components: xvm\carousel\2
Source: pack\xvmConfig\ltdwebber\carousel.3.xc; DestName: carousel.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber; Components: xvm\carousel\3
Source: pack\xvmConfig\ltdwebber\carousel.4.xc; DestName: carousel.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber; Components: xvm\carousel\4
Source: pack\xvmConfig\ltdwebber\clock.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber; Components: xvm
Source: pack\xvmConfig\ltdwebber\colors.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber; Components: xvm
Source: pack\xvmConfig\ltdwebber\common.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber; Components: xvm
;Source: pack\xvmConfig\ltdwebber\elements.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber; Components: xvm
Source: pack\xvmConfig\ltdwebber\elements.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber; Components: xvm AND NOT battle\teamhp
Source: pack\xvmConfig\ltdwebber\elements.teamhp.xc; DestName: elements.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber; Components: xvm AND battle\teamhp
Source: pack\xvmConfig\ltdwebber\hangar.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber; Components: xvm
Source: pack\xvmConfig\ltdwebber\hitlog.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber; Components: xvm AND xvm\hitlog
Source: pack\xvmConfig\ltdwebber\hitlog.aus.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber; DestName: hitlog.xc; Components: xvm AND NOT xvm\hitlog
Source: pack\xvmConfig\ltdwebber\hotkeys.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber; Components: xvm
Source: pack\xvmConfig\ltdwebber\iconset.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber; Components: xvm
Source: pack\xvmConfig\ltdwebber\login.autologin.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber; DestName: login.xc; Components: xvm\autologin
Source: pack\xvmConfig\ltdwebber\login.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber; Components: xvm AND NOT xvm\autologin
Source: pack\xvmConfig\ltdwebber\markers.std.xc; DestName: markers.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber; Components: xvm OR xvm\otm\std
Source: pack\xvmConfig\ltdwebber\markers.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber; Components: xvm AND NOT xvm\otm\std
Source: pack\xvmConfig\ltdwebber\markersAliveExtended.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber; Components: xvm
Source: pack\xvmConfig\ltdwebber\markersAliveNormal.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber; Components: xvm
Source: pack\xvmConfig\ltdwebber\markersDeadExtended.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber; Components: xvm
Source: pack\xvmConfig\ltdwebber\markersDeadNormal.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber; Components: xvm
Source: pack\xvmConfig\ltdwebber\minimap.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber; Components: xvm
Source: pack\xvmConfig\ltdwebber\minimapAlt.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber; Components: xvm
Source: pack\xvmConfig\ltdwebber\minimapLabelsData.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber; Components: xvm
Source: pack\xvmConfig\ltdwebber\minimapLabelsTemplates.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber; Components: xvm AND NOT xvm\wn8mm
Source: pack\xvmConfig\ltdwebber\minimapLabelsTemplates.wn8.xc; DestName: minimapLabelsTemplates.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber; Components: xvm\wn8mm
Source: pack\xvmConfig\ltdwebber\minimapMapSize.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber; Components: xvm
Source: pack\xvmConfig\ltdwebber\minimapCircles.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber; Components: xvm
Source: pack\xvmConfig\ltdwebber\minimapLabels.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber; Components: xvm
Source: pack\xvmConfig\ltdwebber\minimapLabelsAlt.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber; Components: xvm
Source: pack\xvmConfig\ltdwebber\minimapLines.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber; Components: xvm
Source: pack\xvmConfig\ltdwebber\playersPanel.std.xc; DestName: playersPanel.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber; Components: xvm OR xvm\pp\std AND NOT xvm\pp\xvm
Source: pack\xvmConfig\ltdwebber\playersPanel.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber; Components: xvm\pp\xvm
;Source: pack\xvmConfig\ltdwebber\playersPanel.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber; Components: xvm AND NOT xvm\hpplayerpanel
;Source: pack\xvmConfig\ltdwebber\playersPanel.hp.xc; DestName: playersPanel.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber; Components: xvm AND xvm\hpplayerpanel
Source: pack\xvmConfig\ltdwebber\sounds.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber; Components: xvm
Source: pack\xvmConfig\ltdwebber\squad.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber; Components: xvm
Source: pack\xvmConfig\ltdwebber\statisticForm.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber; Components: xvm AND NOT xvm\sf\v2
Source: pack\xvmConfig\ltdwebber\statisticForm.v2.xc; DestName: statisticForm.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber; Components: xvm\sf\v2
Source: pack\xvmConfig\ltdwebber\texts.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber; Components: xvm
Source: pack\xvmConfig\ltdwebber\tooltips.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber; Components: xvm
Source: pack\xvmConfig\ltdwebber\export.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber; Components: xvm
Source: pack\xvmConfig\ltdwebber\userInfo.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber; Components: xvm
Source: pack\xvmConfig\ltdwebber\vehicleNames.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber; Components: xvm

;Source: pack\6Sense\Ton\mgs\res_mods\0.9.6\gui\gui_sounds.xml; DestDir: {app}\res_mods\{#MyAppWotVersion}\gui; Flags: overwritereadonly replacesameversion; Components: xvm\sixthsound\mgs
;Source: pack\6Sense\Ton\mgs\res\audio\xvm.fev; DestDir: {app}\res\audio; Flags: overwritereadonly replacesameversion; Components: xvm\sixthsound\mgs
;Source: pack\6Sense\Ton\mgs\res\audio\xvm.fsb; DestDir: {app}\res\audio; Flags: overwritereadonly replacesameversion; Components: xvm\sixthsound\mgs
;
;Source: pack\6Sense\Ton\road\res_mods\0.9.6\gui\gui_sounds.xml; DestDir: {app}\res_mods\{#MyAppWotVersion}\gui; Flags: overwritereadonly replacesameversion; Components: xvm\sixthsound\road
;Source: pack\6Sense\Ton\road\res\audio\xvm.fev; DestDir: {app}\res\audio; Flags: overwritereadonly replacesameversion; Components: xvm\sixthsound\road
;Source: pack\6Sense\Ton\road\res\audio\xvm.fsb; DestDir: {app}\res\audio; Flags: overwritereadonly replacesameversion; Components: xvm\sixthsound\road
;
;Source: pack\6Sense\Ton\timer\res_mods\0.9.6\gui\gui_sounds.xml; DestDir: {app}\res_mods\{#MyAppWotVersion}\gui; Flags: overwritereadonly replacesameversion; Components: xvm\sixthsound\timer
;Source: pack\6Sense\Ton\timer\res\audio\xvm.fev; DestDir: {app}\res\audio; Flags: overwritereadonly replacesameversion; Components: xvm\sixthsound\timer
;Source: pack\6Sense\Ton\timer\res\audio\xvm.fsb; DestDir: {app}\res\audio; Flags: overwritereadonly replacesameversion; Components: xvm\sixthsound\timer

Source: pack\6Sense\Pics\ausrufezeichen.png; DestDir: {app}\res_mods\mods\shared_resources\xvm\res; DestName: SixthSense.png; Components: xvm\sixthpic\mgs
Source: pack\6Sense\Pics\DepriCat.png; DestDir: {app}\res_mods\mods\shared_resources\xvm\res; DestName: SixthSense.png; Components: xvm\sixthpic\cat
Source: pack\6Sense\Pics\Glühbirne.png; DestDir: {app}\res_mods\mods\shared_resources\xvm\res; DestName: SixthSense.png; Components: xvm\sixthpic\bulb
Source: pack\6Sense\Pics\Saurons Auge.png; DestDir: {app}\res_mods\mods\shared_resources\xvm\res; DestName: SixthSense.png; Components: xvm\sixthpic\hdr
Source: pack\6Sense\Pics\Doug.png; DestDir: {app}\res_mods\mods\shared_resources\xvm\res; DestName: SixthSense.png; Components: xvm\sixthpic\doug

Source: pack\Contour Icons\Korolins (DMVK)\*; DestDir: {app}\res_mods\mods\shared_resources\xvm\res\contour; Flags: ignoreversion createallsubdirs recursesubdirs; Components: xvm\contour\korolins
;Source: pack\Contour Icons\Tomsa's v0.9.12_01\*; DestDir: {app}\res_mods\mods\shared_resources\xvm\res\contour; Flags: ignoreversion createallsubdirs recursesubdirs; Components: xvm\contour\tomsa
;Source: pack\Contour Icons\HakkerLP\*; DestDir: {app}\res_mods\mods\shared_resources\xvm\res\contour; Flags: ignoreversion createallsubdirs recursesubdirs; Components: xvm\contour\hakkerlp

;Source: {app}\res\audio\*; DestDir: {app}\res_mods\{#MyAppWotVersion}\audio; Components: hangar\man battle\dmgpanel; Flags: ignoreversion external
;Source: {app}\res\audio\*; DestDir: {app}\res_mods\{#MyAppWotVersion}\audio; Components: battle\dmgpanel; Flags: ignoreversion external
Source: {srcexe}; DestDir: {app}\wmp; Flags: ignoreversion external
Source: embedded\7za.exe; DestDir: {tmp}\; Flags: deleteafterinstall; Components: ; Tasks: ; Languages: 
Source: embedded\UnRAR.exe; DestDir: {tmp}\; Flags: deleteafterinstall; Components: ; Tasks: ; Languages: 
;Source: pack\WOT Numbers\WotNumbersSetup.msi; DestDir: {app}\wmp; Tasks: wotnumbers; Languages:
Source: pack\ClanIcons\DMVK\DMVK.png; DestDir: {app}\res_mods\mods\shared_resources\xvm\res\clanicons\EU\clan; Components: xvm; Languages: 

Source: pack\Basis\scripts\client\mods\__init__.pyc; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\mods
Source: pack\Basis\scripts\client\CameraNode.pyc; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client
Source: pack\Basis\scripts\client\ScriptLoaderPRO.xml; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client
Source: pack\System\res_mods\0.9.12\system\fonts\*; Flags: ignoreversion createallsubdirs recursesubdirs; DestDir: {app}\res_mods\{#MyAppWotVersion}\system\fonts

Source: pack\dirindicator ext\0.9.14\gui\flash\mods_gui.swf; Components: battle\directionbox; DestDir: {app}\res_mods\{#MyAppWotVersion}\gui\flash
Source: pack\dirindicator ext\0.9.14\gui\flash\mods_gui_button.swf; Components: battle\directionbox; DestDir: {app}\res_mods\{#MyAppWotVersion}\gui\flash
Source: pack\dirindicator ext\0.9.14\gui\flash\mods_gui_popup.swf; Components: battle\directionbox; DestDir: {app}\res_mods\{#MyAppWotVersion}\gui\flash
Source: pack\dirindicator ext\0.9.14\gui\scaleform\dir_indicator_extended.swf; Components: battle\directionbox; DestDir: {app}\res_mods\{#MyAppWotVersion}\gui\scaleform
Source: pack\dirindicator ext\0.9.14\scripts\client\gui\mods\mod_dir_indicator_extended.pyc; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods
Source: pack\dirindicator ext\0.9.14\scripts\client\gui\mods\mod_mods_gui.pyc; Components: battle\directionbox; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods
Source: pack\dirindicator ext\configs\spoter_mods\i18n\de.json; Components: battle\directionbox; DestDir: {app}\res_mods\configs\spoter_mods\i18n
Source: pack\dirindicator ext\configs\spoter_mods\i18n\en.json; Components: battle\directionbox; DestDir: {app}\res_mods\configs\spoter_mods\i18n
Source: pack\dirindicator ext\configs\spoter_mods\i18n\ru.json; Components: battle\directionbox; DestDir: {app}\res_mods\configs\spoter_mods\i18n

Source: pack\Team HP Pool\0.9.14\gui\scaleform\FragCorrelation.swf; Components: battle\teamhp; DestDir: {app}\res_mods\{#MyAppWotVersion}\gui\scaleform
Source: pack\Team HP Pool\0.9.14\scripts\client\gui\mods\mod_team_hp.json; Components: battle\teamhp; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods
Source: pack\Team HP Pool\0.9.14\scripts\client\gui\mods\mod_team_hp.pyc; Components: battle\teamhp; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods

Source: pack\Replay Manager\0.9.14\scripts\client\gui\mods\modsListApi\ModsListButton.swf; Components: other\replayman; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods\modsListApi
Source: pack\Replay Manager\0.9.14\scripts\client\gui\mods\modsListApi\ModsListButtonIcon.png; Components: other\replayman; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods\modsListApi
Source: pack\Replay Manager\0.9.14\scripts\client\gui\mods\modsListApi\ModsListPopover.swf; Components: other\replayman; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods\modsListApi
Source: pack\Replay Manager\0.9.14\scripts\client\gui\mods\modsListApi\__init__.pyc; Components: other\replayman; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods\modsListApi
Source: pack\Replay Manager\0.9.14\scripts\client\gui\mods\rmanager\database_controller.pyc; Components: other\replayman; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods\rmanager
Source: pack\Replay Manager\0.9.14\scripts\client\gui\mods\rmanager\data_providers.pyc; Components: other\replayman; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods\rmanager
Source: pack\Replay Manager\0.9.14\scripts\client\gui\mods\rmanager\hooks.pyc; Components: other\replayman; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods\rmanager
Source: pack\Replay Manager\0.9.14\scripts\client\gui\mods\rmanager\lang.pyc; Components: other\replayman; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods\rmanager
Source: pack\Replay Manager\0.9.14\scripts\client\gui\mods\rmanager\parser.pyc; Components: other\replayman; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods\rmanager
Source: pack\Replay Manager\0.9.14\scripts\client\gui\mods\rmanager\replay_actions_controller.pyc; Components: other\replayman; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods\rmanager
Source: pack\Replay Manager\0.9.14\scripts\client\gui\mods\rmanager\replay_cm_handlers.pyc; Components: other\replayman; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods\rmanager
Source: pack\Replay Manager\0.9.14\scripts\client\gui\mods\rmanager\rmanager_constants.pyc; Components: other\replayman; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods\rmanager
Source: pack\Replay Manager\0.9.14\scripts\client\gui\mods\rmanager\upload_controller.pyc; Components: other\replayman; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods\rmanager
Source: pack\Replay Manager\0.9.14\scripts\client\gui\mods\rmanager\utils.pyc; Components: other\replayman; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods\rmanager
Source: pack\Replay Manager\0.9.14\scripts\client\gui\mods\rmanager\__init__.pyc; Components: other\replayman; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods\rmanager
Source: pack\Replay Manager\0.9.14\scripts\client\gui\mods\mod_rmanager.pyc; Components: other\replayman; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods
Source: pack\Replay Manager\0.9.14\gui\flash\ReplaysManagerUpload.swf; Components: other\replayman; DestDir: {app}\res_mods\{#MyAppWotVersion}\gui\flash
Source: pack\Replay Manager\0.9.14\gui\flash\ReplaysManagerWindow.swf; Components: other\replayman; DestDir: {app}\res_mods\{#MyAppWotVersion}\gui\flash

;Source: pack\Replay Manager\0.9.10\gui\flash\ModsListButton.swf; DestDir: {app}\res_mods\{#MyAppWotVersion}\gui\flash; Components: other\replayman
;Source: pack\Replay Manager\0.9.10\gui\flash\ModsListPopover.swf; DestDir: {app}\res_mods\{#MyAppWotVersion}\gui\flash; Components: other\replayman
;Source: pack\Replay Manager\0.9.10\gui\flash\ReplaysManagerUpload.swf; DestDir: {app}\res_mods\{#MyAppWotVersion}\gui\flash; Components: other\replayman
;Source: pack\Replay Manager\0.9.10\gui\flash\ReplaysManagerWindow.swf; DestDir: {app}\res_mods\{#MyAppWotVersion}\gui\flash; Components: other\replayman
;Source: pack\Replay Manager\0.9.10\gui\maps\rmanager\icons\filter.png; DestDir: {app}\res_mods\{#MyAppWotVersion}\gui\maps\rmanager\icons; Components: other\replayman
;Source: pack\Replay Manager\0.9.10\scripts\client\mods\rmanager\database_controller.pyc; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\mods\rmanager; Components: other\replayman
;Source: pack\Replay Manager\0.9.10\scripts\client\mods\rmanager\data_providers.pyc; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\mods\rmanager; Components: other\replayman
;Source: pack\Replay Manager\0.9.10\scripts\client\mods\rmanager\hooks.pyc; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\mods\rmanager; Components: other\replayman
;Source: pack\Replay Manager\0.9.10\scripts\client\mods\rmanager\lang.pyc; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\mods\rmanager; Components: other\replayman
;Source: pack\Replay Manager\0.9.10\scripts\client\mods\rmanager\mods_list.pyc; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\mods\rmanager; Components: other\replayman
;Source: pack\Replay Manager\0.9.10\scripts\client\mods\rmanager\parser.pyc; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\mods\rmanager; Components: other\replayman
;Source: pack\Replay Manager\0.9.10\scripts\client\mods\rmanager\replay_actions_controller.pyc; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\mods\rmanager; Components: other\replayman
;Source: pack\Replay Manager\0.9.10\scripts\client\mods\rmanager\replay_cm_handlers.pyc; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\mods\rmanager; Components: other\replayman
;Source: pack\Replay Manager\0.9.10\scripts\client\mods\rmanager\rmanager_constants.pyc; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\mods\rmanager; Components: other\replayman
;Source: pack\Replay Manager\0.9.10\scripts\client\mods\rmanager\upload_controller.pyc; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\mods\rmanager; Components: other\replayman
;Source: pack\Replay Manager\0.9.10\scripts\client\mods\rmanager\utils.pyc; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\mods\rmanager; Components: other\replayman
;Source: pack\Replay Manager\0.9.10\scripts\client\mods\rmanager\__init__.pyc; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\mods\rmanager; Components: other\replayman
;Source: pack\Replay Manager\0.9.10\scripts\client\mods\ReplaysManager.pyc; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\mods; Components: other\replayman

Source: pack\Vehicle Extended\configs\spoter_mods\vehicle_exp_extended\vehicle_exp_extended.json; Components: hangar\extvehicle; DestDir: {app}\res_mods\configs\spoter_mods\vehicle_exp_extended
;Source: pack\Vehicle Extended\0.9.12\scripts\client\gui\mods\mod_hangar_tooltips.pyc; Components: hangar\extvehicle; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods
Source: pack\Vehicle Extended\0.9.12\scripts\client\gui\mods\mod_vehicle_exp_extended.pyc; Components: hangar\extvehicle; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods

;Source: pack\Minimap Gun Dir\gui\scaleform\SpotIndicator.swf; Components: battle\dirmap; DestDir: {app}\res_mods\{#MyAppWotVersion}\gui\scaleform
;Source: pack\Minimap Gun Dir\scripts\client\mods\MinimapGunMarkers.pyc; Components: battle\dirmap; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\mods
;Source: pack\Minimap Gun Dir\scripts\client\mods\MinimapGunMarkers.xml; Components: battle\dirmap; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\mods

Source: pack\YasenKrasen\0.9.13\gui\maps\icons\library\*; Flags: ignoreversion createallsubdirs recursesubdirs; Components: session; DestDir: {app}\res_mods\{#MyAppWotVersion}\gui\maps\icons\library
Source: pack\YasenKrasen\0.9.13\gui\messenger.xml; Components: session; DestDir: {app}\res_mods\{#MyAppWotVersion}\gui\
Source: pack\YasenKrasen\0.9.13\scripts\client\mods\stat\img\*; Flags: ignoreversion createallsubdirs recursesubdirs; Components: session; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\mods\stat\img
Source: pack\YasenKrasen\0.9.13\scripts\client\mods\stat\colors.json; Components: session; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\mods\stat
Source: pack\YasenKrasen\0.9.13\scripts\client\mods\stat\config.mitreset.long.json; DestName: config.json; Components: session\resetdaily AND session\long; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\mods\stat
Source: pack\YasenKrasen\0.9.13\scripts\client\mods\stat\config.mitreset.short.json; DestName: config.json; Components: session\resetdaily AND session\short; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\mods\stat
Source: pack\YasenKrasen\0.9.13\scripts\client\mods\stat\config.ohnereset.long.json; DestName: config.json; Components: session AND session\long AND NOT session\resetdaily; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\mods\stat
Source: pack\YasenKrasen\0.9.13\scripts\client\mods\stat\config.ohnereset.short.json; DestName: config.json; Components: session AND session\short AND NOT session\resetdaily; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\mods\stat
Source: pack\YasenKrasen\0.9.13\scripts\client\mods\stat\expected_tank_values.json; Components: session; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\mods\stat
Source: pack\YasenKrasen\0.9.13\scripts\client\mods\stat.pyc; Components: session; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\mods
;Source: {app}\res\text\*; DestDir: {app}\res_mods\{#MyAppWotVersion}\text; Flags: ignoreversion external createallsubdirs recursesubdirs; Components: session\textchange
;Source: pack\YasenKrasen\0.9.13\text\*; DestDir: {app}\res_mods\{#MyAppWotVersion}\text; Flags: ignoreversion external createallsubdirs recursesubdirs; Components: session\textchange

Source: pack\Crosshairs\J1mB0's Crosshair\res_mods\0.9.14\gui\flash\crosshairSniper.swf; Components: crosshair\jimbo; DestDir: {app}\res_mods\{#MyAppWotVersion}\gui\flash
Source: pack\Crosshairs\J1mB0's Crosshair\res_mods\0.9.14\gui\scaleform\crosshair_panel_arcade.swf; Components: crosshair\jimbo; DestDir: {app}\res_mods\{#MyAppWotVersion}\gui\scaleform
Source: pack\Crosshairs\J1mB0's Crosshair\res_mods\0.9.14\gui\scaleform\crosshair_panel_postmortem.swf; Components: crosshair\jimbo; DestDir: {app}\res_mods\{#MyAppWotVersion}\gui\scaleform
Source: pack\Crosshairs\J1mB0's Crosshair\res_mods\0.9.14\gui\scaleform\crosshair_panel_sniper.swf; Components: crosshair\jimbo; DestDir: {app}\res_mods\{#MyAppWotVersion}\gui\scaleform
Source: pack\Crosshairs\J1mB0's Crosshair\res_mods\0.9.14\gui\scaleform\crosshair_panel_strategic.swf; Components: crosshair\jimbo; DestDir: {app}\res_mods\{#MyAppWotVersion}\gui\scaleform
Source: pack\Crosshairs\J1mB0's Crosshair\res_mods\0.9.14\gui\scaleform\crosshair_sniper.swf; Components: crosshair\jimbo; DestDir: {app}\res_mods\{#MyAppWotVersion}\gui\scaleform
Source: pack\Crosshairs\J1mB0's Crosshair\res_mods\0.9.14\gui\scaleform\crosshair_strategic.swf; Components: crosshair\jimbo; DestDir: {app}\res_mods\{#MyAppWotVersion}\gui\scaleform
Source: pack\Crosshairs\J1mB0's Crosshair\res_mods\0.9.14\gui\scaleform\GunConstraints.swf; Components: crosshair\jimbo; DestDir: {app}\res_mods\{#MyAppWotVersion}\gui\scaleform
Source: pack\Crosshairs\J1mB0's Crosshair\res_mods\0.9.14\gui\scaleform\GunConstraints.xml; Components: crosshair\jimbo; DestDir: {app}\res_mods\{#MyAppWotVersion}\gui\scaleform
Source: pack\Crosshairs\J1mB0's Crosshair\res_mods\0.9.14\scripts\client\gui\mods\GunConstraints.xml; Components: crosshair\jimbo; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods
Source: pack\Crosshairs\J1mB0's Crosshair\res_mods\0.9.14\scripts\client\gui\mods\mod_GunConstraints.pyc; Components: crosshair\jimbo; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods
Source: pack\Crosshairs\J1mB0's Crosshair\res_mods\0.9.14\scripts\client\gui\mods\mod_J1mB091.pyc; Components: crosshair\jimbo; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods

;Source: pack\Damage Log\audio\damageLog.fsb; Components: battle\dmglog; DestDir: {app}\res\audio
;Source: pack\Damage Log\audio\damageLog.fev; Components: battle\dmglog; DestDir: {app}\res\audio
Source: pack\Damage Log\0.9.14\gui\scaleform\damageLog.swf; Components: battle\dmglog; DestDir: {app}\res_mods\{#MyAppWotVersion}\gui\scaleform
Source: pack\Damage Log\0.9.14\scripts\client\gui\mods\mod_damagelog.pyc; Components: battle\dmglog; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods
Source: pack\Damage Log\configs\damagelog\Blocked.cfg; Components: battle\dmglog; DestDir: {app}\res_mods\configs\damagelog\
Source: pack\Damage Log\configs\damagelog\Damaged.cfg; Components: battle\dmglog; DestDir: {app}\res_mods\configs\damagelog\
Source: pack\Damage Log\configs\damagelog\Fire.cfg; Components: battle\dmglog; DestDir: {app}\res_mods\configs\damagelog\
Source: pack\Damage Log\configs\damagelog\Log.cfg; Components: battle\dmglog; DestDir: {app}\res_mods\configs\damagelog\
Source: pack\Damage Log\configs\damagelog\Message.cfg; Components: battle\dmglog; DestDir: {app}\res_mods\configs\damagelog\
;Source: pack\Damage Log\configs\damagelog\Sound.cfg; Components: battle\dmglog; DestDir: {app}\res_mods\configs\damagelog\
Source: pack\Damage Log\configs\damagelog\Timer.cfg; Components: battle\dmglog; DestDir: {app}\res_mods\configs\damagelog\

Source: pack\BattleAssistant\0.9.10\scripts\client\gui\mods\yaml\*; Components: battle\assistant; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods\yaml
Source: pack\BattleAssistant\0.9.10\scripts\client\gui\mods\mod_battle_assistant.pyc; Components: battle\assistant; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods
Source: pack\BattleAssistant\0.9.10\scripts\client\gui\mods\mod_battle_assistant.txt; Components: battle\assistant; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods

;Source: pack\InfoPanel\gui\scaleform\InfoPanel.swf; DestDir: {app}\res_mods\{#MyAppWotVersion}\gui\scaleform; Components: battle\infopanel
;Source: pack\InfoPanel\gui\scaleform\InfoPanel.xml; DestDir: {app}\res_mods\{#MyAppWotVersion}\gui\scaleform; Components: battle\infopanel
;Source: pack\InfoPanel\scripts\client\mods\InfoPanel.pyc; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\mods; Components: battle\infopanel

Source: pack\ADU\ActiveDossierUploader 3.4.0.7.exe; DestName: ActiveDossierUploader.exe; DestDir: {app}; Components: other\vbaddict\adu
Source: pack\ADU\scripts\client\mods\ATS.pyc; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\mods; Components: other\vbaddict\ats
Source: pack\ADU\scripts\client\mods\BRR.pyc; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\mods; Components: other\vbaddict\brr

Source: pack\TS3\0.9.13\tessumod.ts3_plugin; Components: other\ts3; DestDir: {app}\res_mods\{#MyAppWotVersion}
Source: pack\TS3\0.9.13\gui\tessu_mod\checkbox_off.png; Components: other\ts3; DestDir: {app}\res_mods\{#MyAppWotVersion}\gui\tessu_mod
Source: pack\TS3\0.9.13\gui\tessu_mod\checkbox_on.png; Components: other\ts3; DestDir: {app}\res_mods\{#MyAppWotVersion}\gui\tessu_mod
Source: pack\TS3\0.9.13\gui\tessu_mod\tsplugin_install_notification.xml; Components: other\ts3; DestDir: {app}\res_mods\{#MyAppWotVersion}\gui\tessu_mod
Source: pack\TS3\0.9.13\gui\tessu_mod\ts_notification_icon.png; Components: other\ts3; DestDir: {app}\res_mods\{#MyAppWotVersion}\gui\tessu_mod
Source: pack\TS3\0.9.13\scripts\client\gui\mods\tessumod\async.pyc; Components: other\ts3; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods\tessumod
Source: pack\TS3\0.9.13\scripts\client\gui\mods\tessumod\build_info.pyc; Components: other\ts3; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods\tessumod
Source: pack\TS3\0.9.13\scripts\client\gui\mods\tessumod\clientquery.pyc; Components: other\ts3; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods\tessumod
Source: pack\TS3\0.9.13\scripts\client\gui\mods\tessumod\keyvaluestorage.pyc; Components: other\ts3; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods\tessumod
Source: pack\TS3\0.9.13\scripts\client\gui\mods\tessumod\mytsplugin.pyc; Components: other\ts3; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods\tessumod
Source: pack\TS3\0.9.13\scripts\client\gui\mods\tessumod\notifications.pyc; Components: other\ts3; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods\tessumod
Source: pack\TS3\0.9.13\scripts\client\gui\mods\tessumod\positional_audio.pyc; Components: other\ts3; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods\tessumod
Source: pack\TS3\0.9.13\scripts\client\gui\mods\tessumod\settings.pyc; Components: other\ts3; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods\tessumod
Source: pack\TS3\0.9.13\scripts\client\gui\mods\tessumod\statemachine.pyc; Components: other\ts3; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods\tessumod
Source: pack\TS3\0.9.13\scripts\client\gui\mods\tessumod\ts3.pyc; Components: other\ts3; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods\tessumod
Source: pack\TS3\0.9.13\scripts\client\gui\mods\tessumod\user_cache.pyc; Components: other\ts3; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods\tessumod
Source: pack\TS3\0.9.13\scripts\client\gui\mods\tessumod\utils.pyc; Components: other\ts3; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods\tessumod
Source: pack\TS3\0.9.13\scripts\client\gui\mods\tessumod\__init__.pyc; Components: other\ts3; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods\tessumod
Source: pack\TS3\0.9.13\scripts\client\gui\mods\mod_tessumod.pyc; Components: other\ts3; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods
Source: pack\TS3\configs\tessu_mod\tessu_mod.ini; DestDir: {app}\res_mods\configs\tessu_mod; Components: other\ts3

Source: pack\Waggons\content\Railway\rw004_Carriage\rw004_Carriage.dds; DestDir: {app}\res_mods\{#MyAppWotVersion}\content\Railway\rw004_Carriage
Source: pack\Waggons\content\Railway\rw004_Carriage\rw004_Carriage_crash.dds; DestDir: {app}\res_mods\{#MyAppWotVersion}\content\Railway\rw004_Carriage

Source: pack\HangMan\res_mods\0.9.14\spaces\h09_bday_CN_2016\preview.jpg; Components: hangar\man; DestDir: {app}\res_mods\{#MyAppWotVersion}\spaces\h09_bday_CN_2016
Source: pack\HangMan\res_mods\0.9.14\spaces\h11_WGL_GrandFinal_2016\preview.jpg; Components: hangar\man; DestDir: {app}\res_mods\{#MyAppWotVersion}\spaces\h11_WGL_GrandFinal_2016
Source: pack\HangMan\res_mods\0.9.14\spaces\h12_bday_EU_2015\preview.jpg; Components: hangar\man; DestDir: {app}\res_mods\{#MyAppWotVersion}\spaces\h12_bday_EU_2015
Source: pack\HangMan\res_mods\0.9.14\spaces\hangar_premium_1may\preview.jpg; Components: hangar\man; DestDir: {app}\res_mods\{#MyAppWotVersion}\spaces\hangar_premium_1may
Source: pack\HangMan\res_mods\0.9.14\spaces\hangar_premium_26apr\preview.jpg; Components: hangar\man; DestDir: {app}\res_mods\{#MyAppWotVersion}\spaces\hangar_premium_26apr
Source: pack\HangMan\res_mods\0.9.14\spaces\hangar_premium_v2\preview.jpg; Components: hangar\man; DestDir: {app}\res_mods\{#MyAppWotVersion}\spaces\hangar_premium_v2
Source: pack\HangMan\res_mods\0.9.14\spaces\hangar_v2\preview.jpg; Components: hangar\man; DestDir: {app}\res_mods\{#MyAppWotVersion}\spaces\hangar_v2
Source: pack\HangMan\res_mods\0.9.14\spaces\hangar_victory_day\preview.jpg; Components: hangar\man; DestDir: {app}\res_mods\{#MyAppWotVersion}\spaces\hangar_victory_day
Source: pack\HangMan\res_mods\0.9.14\scripts\client\gui\mods\HangMan\swf\HangManButton.swf; Components: hangar\man; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods\HangMan\swf
Source: pack\HangMan\res_mods\0.9.14\scripts\client\gui\mods\HangMan\swf\HangManSettingsWindow.swf; Components: hangar\man; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods\HangMan\swf
Source: pack\HangMan\res_mods\0.9.14\scripts\client\gui\mods\HangMan\swf\HangManWindow.swf; Components: hangar\man; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods\HangMan\swf
Source: pack\HangMan\res_mods\0.9.14\scripts\client\gui\mods\HangMan\button.json; Components: hangar\man; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods\HangMan
Source: pack\HangMan\res_mods\0.9.14\scripts\client\gui\mods\HangMan\Button.png; Components: hangar\man; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods\HangMan
Source: pack\HangMan\res_mods\0.9.14\scripts\client\gui\mods\HangMan\HangMan.json; Components: hangar\man; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods\HangMan
Source: pack\HangMan\res_mods\0.9.14\scripts\client\gui\mods\HangMan\HangMan.xml; Components: hangar\man; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods\HangMan
Source: pack\HangMan\res_mods\0.9.14\scripts\client\gui\mods\HangMan\lang_de.json; Components: hangar\man; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods\HangMan
Source: pack\HangMan\res_mods\0.9.14\scripts\client\gui\mods\HangMan\lang_en.json; Components: hangar\man; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods\HangMan
Source: pack\HangMan\res_mods\0.9.14\scripts\client\gui\mods\HangMan\lang_ru.json; Components: hangar\man; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods\HangMan
Source: pack\HangMan\res_mods\0.9.14\scripts\client\gui\mods\HangMan\no_preview.png; Components: hangar\man; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods\HangMan
Source: pack\HangMan\res_mods\0.9.14\scripts\client\gui\mods\mod_HangMan.pyc; Components: hangar\man; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods

Source: pack\Autoaimindicator\0.9.14\scripts\client\gui\mods\mod_autoaim_indicator.dds; Components: battle\autoaim; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods
Source: pack\Autoaimindicator\0.9.14\scripts\client\gui\mods\mod_autoaim_indicator.json; Components: battle\autoaim; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods
Source: pack\Autoaimindicator\0.9.14\scripts\client\gui\mods\mod_autoaim_indicator.pyc; Components: battle\autoaim; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods

;Source: pack\Arty Reload\scripts\client\gui\mods\mod_artyReloadTimer.json; Components: battle\artyreload; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods
;Source: pack\Arty Reload\scripts\client\gui\mods\mod_artyReloadTimer.pyc; Components: battle\artyreload; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods
;Source: pack\Arty Reload\gui\scaleform\TextPanel.swf; Components: battle\artyreload; DestDir: {app}\res_mods\{#MyAppWotVersion}\gui\scaleform

Source: pack\Live WN8\0.9.14\scripts\client\gui\mods\mod_calculator_rankings_battle.json; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods
Source: pack\Live WN8\0.9.14\scripts\client\gui\mods\mod_calculator_rankings_battle.pyc; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods
Source: pack\Live WN8\0.9.14\gui\scaleform\ekspoint_mods.swf; DestDir: {app}\res_mods\{#MyAppWotVersion}\gui\scaleform

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
