#define MyAppName "Webbers ModPack "
#define MyAppPublisher "Ltd Webber"
#define MyAppURL "https://materialvernichtungskombinat.de"
#define MyDefaultDir "C:\Games\World_of_Tanks"
#define MyAppWotVersion "1.11.0.0"
#define BuildNum Int(ReadIni(SourcePath	+ "\\BuildInfo.ini","Info","Build","0"))
#expr BuildNum = BuildNum + 1
;#expr WriteIni(SourcePath + "\\BuildInfo.ini","Info","Build", BuildNum)
#define MyAppVersion '1.110.' + Str(BuildNum)

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
;InfoBeforeFile=embedded\before.rtf
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

[Components]
Name: xvm; Description: XVM; Types: DMVK; MinVersion: 0.0,5.0
Name: battle; Description: Gefechtsmods; Types: DMVK
Name: battle\infopanel; Description: zusätzliche Informationen zum anvisierten Ziel einblenden; Types: DMVK
Name: battle\igwn8; Description: InGame Live WN8 (nur Näherungswert); Types: DMVK
Name: battle\smarker; Description: Awfultanker ServerMarker; Types: DMVK
;Name: battle\moe; Description: MarkOnGunExtended; Types: DMVK
;Name: battle\spgst; Description: SPG Shell Flytime; Types: DMVK

[Dirs]
Name: {app}\wmp
Name: {app}\mods; Flags: uninsneveruninstall
Name: {app}\mods\{#MyAppWotVersion}; Flags: uninsneveruninstall
Name: {app}\res_mods; Flags: uninsneveruninstall
Name: {app}\res_mods\{#MyAppWotVersion}; Flags: uninsneveruninstall
Name: {app}\res_mods\{#MyAppWotVersion}\gui
Name: {app}\res_mods\{#MyAppWotVersion}\gui\flash
Name: {app}\res_mods\{#MyAppWotVersion}\gui\flash\atlases

Name: {app}\res_mods\configs; Components: xvm
Name: {app}\res_mods\configs\xvm; Components: xvm
Name: {app}\res_mods\configs\xvm\py_macro; Components: xvm
Name: {app}\res_mods\configs\xvm\py_macro\xvm; Components: xvm
Name: {app}\res_mods\configs\xvm\ltdwebber; Components: xvm

Name: {app}\res_mods\mods; Components: xvm
Name: {app}\res_mods\mods\packages; Components: xvm
Name: {app}\res_mods\mods\shared_resources; Components: xvm
Name: {app}\res_mods\mods\shared_resources\xvm; Components: xvm
Name: {app}\res_mods\mods\shared_resources\xvm\res; Components: xvm

Name: {app}\mods\configs; Components: battle\igwn8 battle\infopanel
Name: {app}\mods\configs\infopanel; Components: battle\infopanel
Name: {app}\mods\configs\protanki; Components: battle\igwn8
Name: {app}\mods\resources; Components: battle\igwn8
Name: {app}\mods\resources\protanki; Components: battle\igwn8

Name: {app}\res_mods\{#MyAppWotVersion}\scripts; Components: battle\smarker
Name: {app}\res_mods\{#MyAppWotVersion}\scripts\client; Components: battle\smarker
Name: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui; Components: battle\smarker
Name: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods; Components: battle\smarker
Name: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods\at_servermarker; Components: battle\smarker
Name: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods\at_servermarker\markers; Components: battle\smarker

;Name: {app}\mods\configs\mods_gui; Components: battle\moe
;Name: {app}\mods\configs\spoter; Components: battle\moe
;Name: {app}\mods\{#MyAppWotVersion}\spoter; Components: battle\moe
;Name: {app}\mods\configs\promod


[Files]
Source: pack\xvm\res_mods\*; DestDir: {app}\res_mods; Flags: ignoreversion createallsubdirs recursesubdirs; Components: xvm
Source: pack\xvm\mods\*; DestDir: {app}\mods; Flags: ignoreversion createallsubdirs recursesubdirs; Components: xvm

Source: pack\xvmConfig\ltdwebber\@xvm.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber\; Components: xvm
Source: pack\xvmConfig\ltdwebber\alpha.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber\; Components: xvm
Source: pack\xvmConfig\ltdwebber\battle.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber\; Components: xvm
Source: pack\xvmConfig\ltdwebber\battleLabels.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber\; Components: xvm
Source: pack\xvmConfig\ltdwebber\battleLabelsTemplates.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber\; Components: xvm
Source: pack\xvmConfig\ltdwebber\battleLoading.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber\; Components: xvm
Source: pack\xvmConfig\ltdwebber\battleLoadingTips.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber\; Components: xvm
Source: pack\xvmConfig\ltdwebber\battleResults.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber\; Components: xvm
Source: pack\xvmConfig\ltdwebber\camera.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber\; Components: xvm
Source: pack\xvmConfig\ltdwebber\captureBar.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber\; Components: xvm
Source: pack\xvmConfig\ltdwebber\carousel.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber\; Components: xvm
Source: pack\xvmConfig\ltdwebber\carouselNormal.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber\; Components: xvm
Source: pack\xvmConfig\ltdwebber\carouselSmall.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber\; Components: xvm
Source: pack\xvmConfig\ltdwebber\colors.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber\; Components: xvm
Source: pack\xvmConfig\ltdwebber\damageLog.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber\; Components: xvm
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
Source: pack\xvmConfig\ltdwebber\tweaks.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber\; Components: xvm
Source: pack\xvmConfig\ltdwebber\tooltips.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber\; Components: xvm
Source: pack\xvmConfig\ltdwebber\userInfo.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber\; Components: xvm
Source: pack\xvmConfig\ltdwebber\vehicleNames.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber\; Components: xvm
Source: pack\xvmConfig\ltdwebber\xmqp.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber\; Components: xvm
Source: pack\xvmConfig\ltdwebber\widgets.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber; Components: xvm
Source: pack\xvmConfig\ltdwebber\widgetsTemplates.xc; DestDir: {app}\res_mods\configs\xvm\ltdwebber; Components: xvm

Source: pack\xvmConfig (Std)\xvm\py_macro\*; Flags: ignoreversion createallsubdirs recursesubdirs; DestDir: {app}\res_mods\configs\xvm\py_macro; Components: xvm
Source: pack\xvmConfig\xvm.xc; DestDir: {app}\res_mods\configs\xvm; Components: xvm

Source: {srcexe}; DestDir: {app}\wmp; Flags: ignoreversion external
Source: embedded\7za.exe; DestDir: {tmp}\; Flags: deleteafterinstall; Components: ; Tasks: ; Languages: 
Source: embedded\UnRAR.exe; DestDir: {tmp}\; Flags: deleteafterinstall; Components: ; Tasks: ; Languages: 

Source: pack\Contour Icons\Korolins (DMVK)\1.11.0.0\mod\gui\flash\atlases\battleAtlas.png; Components: xvm; DestDir: {app}\res_mods\{#MyAppWotVersion}\gui\flash\atlases
Source: pack\Contour Icons\Korolins (DMVK)\1.11.0.0\mod\gui\flash\atlases\battleAtlas.dds; Components: xvm; DestDir: {app}\res_mods\{#MyAppWotVersion}\gui\flash\atlases
Source: pack\Contour Icons\Korolins (DMVK)\1.11.0.0\mod\gui\flash\atlases\battleAtlas.xml; Components: xvm; DestDir: {app}\res_mods\{#MyAppWotVersion}\gui\flash\atlases

Source: pack\Live WN8\mods\1.11.0.0\izeberg.modsettingsapi_1.3.1.wotmod; Components: battle\igwn8; DestDir: {app}\mods\{#MyAppWotVersion}
Source: pack\Live WN8\mods\1.11.0.0\poliroid.modslistapi_1.3.4.wotmod; Components: battle\igwn8; DestDir: {app}\mods\{#MyAppWotVersion}
Source: pack\Live WN8\mods\1.11.0.0\tv.protanki.efficiency_2.6.wotmod; Components: battle\igwn8; DestDir: {app}\mods\{#MyAppWotVersion}
Source: pack\Live WN8\mods\configs\protanki\efficiency.ltd.json; Components: battle\igwn8; DestDir: {app}\mods\configs\protanki; DestName: efficiency.json

Source: pack\InfoPanel\mods\1.11.0.0\izeberg.modsettingsapi_1.3.1.wotmod; Components: battle\infopanel; DestDir: {app}\mods\{#MyAppWotVersion}
Source: pack\InfoPanel\mods\1.11.0.0\poliroid.modslistapi_1.3.4.wotmod; Components: battle\infopanel; DestDir: {app}\mods\{#MyAppWotVersion}
Source: pack\InfoPanel\mods\1.11.0.0\tv.protanki.infopanel.wotmod; Components: battle\infopanel; DestDir: {app}\mods\{#MyAppWotVersion}
Source: pack\InfoPanel\mods\configs\infopanel\skin_1_simple.xml; Components: battle\infopanel; DestDir: {app}\mods\configs\infopanel
Source: pack\InfoPanel\mods\configs\infopanel\skin_2_standard.xml; Components: battle\infopanel; DestDir: {app}\mods\configs\infopanel
Source: pack\InfoPanel\mods\configs\infopanel\skin_3_colored.xml; Components: battle\infopanel; DestDir: {app}\mods\configs\infopanel

;Source: pack\Marksongun\mods\configs\mods_gui\i18n\de.json; DestDir: {app}\mods\configs\mods_gui\i18n; Components: battle\moe
;Source: pack\Marksongun\mods\configs\mods_gui\i18n\en.json; DestDir: {app}\mods\configs\mods_gui\i18n; Components: battle\moe
;Source: pack\Marksongun\mods\configs\mods_gui\i18n\ru.json; DestDir: {app}\mods\configs\mods_gui\i18n; Components: battle\moe
;Source: pack\Marksongun\mods\configs\spoter\marksOnGunExtended\i18n\de.json; DestDir: {app}\mods\configs\spoter\marksOnGunExtended\i18n; Components: battle\moe
;Source: pack\Marksongun\mods\configs\spoter\marksOnGunExtended\i18n\en.json; DestDir: {app}\mods\configs\spoter\marksOnGunExtended\i18n; Components: battle\moe
;Source: pack\Marksongun\mods\configs\spoter\marksOnGunExtended\i18n\ru.json; DestDir: {app}\mods\configs\spoter\marksOnGunExtended\i18n; Components: battle\moe
;Source: pack\Marksongun\mods\configs\spoter\marksOnGunExtended\marksOnGunExtended.json; DestDir: {app}\mods\configs\spoter\marksOnGunExtended; Components: battle\moe
;Source: pack\Marksongun\mods\1.10.0.1\mod_mods_gui_2.25.wotmod; DestDir: {app}\mods\{#MyAppWotVersion}; Components: battle\moe
;Source: pack\Marksongun\mods\1.10.0.1\gambiter.guiflash_0.3.2.wotmod; DestDir: {app}\mods\{#MyAppWotVersion}; Components: battle\moe
;Source: pack\Marksongun\mods\1.10.0.1\spoter\spoter.marksOnGunExtended_8.09.wotmod; DestDir: {app}\mods\{#MyAppWotVersion}\spoter; Components: battle\moe

;Source: pack\Flytime\mods\1.9.0.1\gambiter.guiflash_0.3.1.wotmod; DestDir: {app}\mods\{#MyAppWotVersion}; Components: battle\spgst
;Source: pack\Flytime\mods\1.9.0.1\oldskool.flytime.spg_1.0.6.wotmod; DestDir: {app}\mods\{#MyAppWotVersion}; Components: battle\spgst
;Source: pack\Flytime\mods\1.9.0.1\oldskool.modsettings.api_1.1.6.wotmod; DestDir: {app}\mods\{#MyAppWotVersion}; Components: battle\spgst
;Source: pack\Flytime\mods\1.9.0.1\poliroid.modslistapi_1.3.1.wotmod; DestDir: {app}\mods\{#MyAppWotVersion}; Components: battle\spgst
;Source: pack\Flytime\mods\configs\promod\flytime.json; DestDir: {app}\mods\configs\promod\; Components: battle\spgst

Source: pack\ServerMarker\1.11.0.0\scripts\client\gui\mods\at_servermarker\markers\128template.pdn; Components: battle\smarker; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods\at_servermarker\markers
Source: pack\ServerMarker\1.11.0.0\scripts\client\gui\mods\at_servermarker\markers\64template.pdn; Components: battle\smarker; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods\at_servermarker\markers
Source: pack\ServerMarker\1.11.0.0\scripts\client\gui\mods\at_servermarker\markers\pentagon_blue64.dds; Components: battle\smarker; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods\at_servermarker\markers
Source: pack\ServerMarker\1.11.0.0\scripts\client\gui\mods\at_servermarker\markers\pentagon_green64.dds; Components: battle\smarker; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods\at_servermarker\markers
Source: pack\ServerMarker\1.11.0.0\scripts\client\gui\mods\at_servermarker\markers\pentagon_red64.dds; Components: battle\smarker; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods\at_servermarker\markers
Source: pack\ServerMarker\1.11.0.0\scripts\client\gui\mods\at_servermarker\markers\standard_blue64.dds; Components: battle\smarker; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods\at_servermarker\markers
Source: pack\ServerMarker\1.11.0.0\scripts\client\gui\mods\at_servermarker\markers\standard_green64.dds; Components: battle\smarker; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods\at_servermarker\markers
Source: pack\ServerMarker\1.11.0.0\scripts\client\gui\mods\at_servermarker\markers\standard_red64.dds; Components: battle\smarker; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods\at_servermarker\markers
Source: pack\ServerMarker\1.11.0.0\scripts\client\gui\mods\at_servermarker\markers\tervete128.dds; Components: battle\smarker; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods\at_servermarker\markers
Source: pack\ServerMarker\1.11.0.0\scripts\client\gui\mods\at_servermarker\AT_ServerMarker_config.json; Components: battle\smarker; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods\at_servermarker
Source: pack\ServerMarker\1.11.0.0\scripts\client\gui\mods\mod_AT_ServerMarker.pyc; Components: battle\smarker; DestDir: {app}\res_mods\{#MyAppWotVersion}\scripts\client\gui\mods

[INI]
Filename: {app}\wmp\Zur Modpack Homepage.url; Section: InternetShortcut; Key: URL; String: https://materialvernichtungskombinat.de/hilfe/webbers-modpack/
Filename: {app}\wmp\XVM Seite öffnen.url; Section: InternetShortcut; Key: URL; String: https://www.modxvm.com/en/; Components: xvm

[InstallDelete]
Name: {app}\res_mods\{#MyAppWotVersion}\*; Type: filesandordirs; Tasks: clear
Name: {app}\res_mods\mods\*; Type: filesandordirs; Tasks: clear
Name: {app}\res_mods\config\*; Type: filesandordirs; Tasks: clear

[Icons]
Name: {group}\Webber's ModPack\zur ModPack Homepage; Filename: https://materialvernichtungskombinat.de/hilfe/modpack/
Name: {group}\Webber's ModPack\zur XVM Homepage; Filename: https://www.modxvm.com/en/; Components: xvm
Name: {group}\Webber's ModPack\Webber's ModPack anpassen; Filename: {app}\wmp\{srcexe}; Parameters: /modify=1; WorkingDir: {app}\wmp; Languages: de; MinVersion: 0.0,5.0
Name: {group}\Webber's ModPack\Webber's ModPack entfernen; Filename: {uninstallexe}

[LangOptions]
LanguageID=$0407

[UninstallDelete]
Name: {app}\wmp; Type: filesandordirs
