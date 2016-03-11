[Code]
procedure setDownloads;
begin
	CreateDir(ExpandConstant('{tmp}\downloads'));
    idpAddFileComp('http://Materialvernichtungskombinat.de/download/1128/',  ExpandConstant('{tmp}\downloads\clanicons-full-eu-20150429.7z'),  'xvm\allclan');
    idpAddFileComp('http://Materialvernichtungskombinat.de/download/1396/',  ExpandConstant('{tmp}\downloads\goharu_910v1SD.7z'),  'tank\goharusd');
    idpAddFileComp('http://Materialvernichtungskombinat.de/download/1398/',  ExpandConstant('{tmp}\downloads\goharu_910v1HD.7z'),  'tank\goharuhd');

	idpAddFileComp('http://www.goofy67-wot.de/files/HangMan/hangars/0.9.7_Hangar_Minimalistic_V2.rar',  ExpandConstant('{tmp}\downloads\0.9.7_Hangar_Minimalistic_V2.rar'),  'hangar\man\mini');
	idpAddFileComp('http://www.goofy67-wot.de/files/HangMan/hangars/0.9.7_Hangars_Basic_811.rar',  ExpandConstant('{tmp}\downloads\0.9.7_Hangars_Basic_811.rar'),  'hangar\man\basic811');
    idpAddFileComp('http://www.goofy67-wot.de/files/HangMan/hangars/0.9.7_Hangars_Premium_811.rar',  ExpandConstant('{tmp}\downloads\0.9.7_Hangars_Premium_811.rar'),  'hangar\man\premium811');
    idpAddFileComp('http://www.goofy67-wot.de/files/HangMan/hangars/0.9.7_Hell_Hangar_Desert.rar',  ExpandConstant('{tmp}\downloads\0.9.7_Hell_Hangar_Desert.rar'),  'hangar\man\helldesert');
    idpAddFileComp('http://www.goofy67-wot.de/files/HangMan/hangars/0.9.7_Hell_Hangar_Summer.rar',  ExpandConstant('{tmp}\downloads\0.9.7_Hell_Hangar_Summer.rar'),  'hangar\man\hellsummer');
    idpAddFileComp('http://www.goofy67-wot.de/files/HangMan/hangars/0.9.7_Hell_Hangar_Winter.rar',  ExpandConstant('{tmp}\downloads\0.9.7_Hell_Hangar_Winter.rar'),  'hangar\man\hellwinter');
    idpAddFileComp('http://www.goofy67-wot.de/files/HangMan/hangars/0.9.7_Hangar_4th_July.rar',  ExpandConstant('{tmp}\downloads\0.9.7_Hangar_4th_July.rar'),  'hangar\man\4thjuly');
    idpAddFileComp('http://www.goofy67-wot.de/files/HangMan/hangars/0.9.7_Hangar_28Nov.rar',  ExpandConstant('{tmp}\downloads\0.9.7_Hangar_28Nov.rar'),  'hangar\man\28nov');
    idpAddFileComp('http://www.goofy67-wot.de/files/HangMan/hangars/0.9.7_Hangar_Halloween_V2.rar',  ExpandConstant('{tmp}\downloads\0.9.7_Hangar_Halloween_V2.rar'),  'hangar\man\halloween');
    idpAddFileComp('http://www.goofy67-wot.de/files/HangMan/hangars/0.9.7_Hangar_IGR_Cave.rar',  ExpandConstant('{tmp}\downloads\0.9.7_Hangar_IGR_Cave.rar'),  'hangar\man\cave');
    idpAddFileComp('http://www.goofy67-wot.de/files/HangMan/hangars/0.9.7_hangar_NatDay_CN.rar',  ExpandConstant('{tmp}\downloads\0.9.7_hangar_NatDay_CN.rar'),  'hangar\man\cnnatday');
    idpAddFileComp('http://www.goofy67-wot.de/files/HangMan/hangars/0.9.7_Hangar_WG_Bday.rar',  ExpandConstant('{tmp}\downloads\0.9.7_Hangar_WG_Bday.rar'),  'hangar\man\wgbday');
    idpAddFileComp('http://www.goofy67-wot.de/files/HangMan/hangars/WGBday_no_Logos.rar',  ExpandConstant('{tmp}\downloads\WGBday_no_Logos.rar'),  'hangar\man\wgbday\ad');
    idpAddFileComp('http://www.goofy67-wot.de/files/HangMan/hangars/0.9.7_Hangar_11Sept.rar',  ExpandConstant('{tmp}\downloads\0.9.7_Hangar_11Sept.rar'),  'hangar\man\11sep');
    idpAddFileComp('http://www.goofy67-wot.de/files/HangMan/hangars/0.9.7_Hangar_8Nov.rar',  ExpandConstant('{tmp}\downloads\0.9.7_Hangar_8Nov.rar'),  'hangar\man\8nov');
    idpAddFileComp('http://www.goofy67-wot.de/files/HangMan/hangars/0.9.7_Hangar_23Feb_V2.rar',  ExpandConstant('{tmp}\downloads\0.9.7_Hangar_23Feb_V2.rar'),  'hangar\man\23febv2');
    idpAddFileComp('http://www.goofy67-wot.de/files/HangMan/hangars/0.9.7_Hangar_23Feb_V3.rar',  ExpandConstant('{tmp}\downloads\0.9.7_Hangar_23Feb_V3.rar'),  'hangar\man\23febv3');
    idpAddFileComp('http://www.goofy67-wot.de/files/HangMan/hangars/Addon_23Feb_V3_German.rar',  ExpandConstant('{tmp}\downloads\Addon_23Feb_V3_German.rar'),  'hangar\man\23febv3\addon');
    idpAddFileComp('http://www.goofy67-wot.de/files/HangMan/hangars/0.9.7_Hangar_11nov.rar',  ExpandConstant('{tmp}\downloads\0.9.7_Hangar_11nov.rar'),  'hangar\man\11nov');
    idpAddFileComp('http://www.goofy67-wot.de/files/HangMan/hangars/0.9.7_Hangar_9may.rar',  ExpandConstant('{tmp}\downloads\0.9.7_Hangar_9may.rar'),  'hangar\man\9may');
    idpAddFileComp('http://www.goofy67-wot.de/files/HangMan/hangars/0.9.7_Hangar_Fury.rar',  ExpandConstant('{tmp}\downloads\0.9.7_Hangar_Fury.rar'),  'hangar\man\fury');
    idpAddFileComp('http://www.goofy67-wot.de/files/HangMan/hangars/Fury_no_signs.rar',  ExpandConstant('{tmp}\downloads\Fury_no_signs.rar'),  'hangar\man\fury\ad');
    idpAddFileComp('http://www.goofy67-wot.de/files/HangMan/hangars/Fury_german_Addon.rar',  ExpandConstant('{tmp}\downloads\Fury_german_Addon.rar'),  'hangar\man\fury\german');
    idpAddFileComp('http://www.goofy67-wot.de/files/HangMan/hangars/Fury_USSR_Addon.rar',  ExpandConstant('{tmp}\downloads\Fury_USSR_Addon.rar'),  'hangar\man\fury\ussr');
    idpAddFileComp('http://www.goofy67-wot.de/files/HangMan/hangars/0.9.7_Hangar_Forest_Road.rar',  ExpandConstant('{tmp}\downloads\0.9.7_Hangar_Forest_Road.rar'),  'hangar\man\forest');
    idpAddFileComp('http://www.goofy67-wot.de/files/HangMan/hangars/0.9.7_Hangar_Open_Door.rar',  ExpandConstant('{tmp}\downloads\0.9.7_Hangar_Open_Door.rar'),  'hangar\man\opendoor');
    idpAddFileComp('http://www.goofy67-wot.de/files/HangMan/hangars/0.9.7_Hangar_Tankfactory.rar',  ExpandConstant('{tmp}\downloads\0.9.7_Hangar_Tankfactory.rar'),  'hangar\man\tankfactory');
    idpAddFileComp('http://www.goofy67-wot.de/files/HangMan/hangars/0.9.7_Hangar_Trainstation.rar',  ExpandConstant('{tmp}\downloads\0.9.7_Hangar_Trainstation.rar'),  'hangar\man\trainstation');
    idpAddFileComp('http://www.goofy67-wot.de/files/HangMan/hangars/0.9.7_Hangar_Waldlager.rar',  ExpandConstant('{tmp}\downloads\0.9.7_Hangar_Waldlager.rar'),  'hangar\man\waldlager');
    idpAddFileComp('http://www.goofy67-wot.de/files/HangMan/hangars/0.9.7_Hangar_Winter_2015.rar',  ExpandConstant('{tmp}\downloads\0.9.7_Hangar_Winter_2015.rar'),  'hangar\man\win2015');
    idpAddFileComp('http://www.goofy67-wot.de/files/HangMan/hangars/Hangar_Bridge_Summer.rar',  ExpandConstant('{tmp}\downloads\Hangar_Bridge_Summer.rar'),  'hangar\man\bridgesummer');
    idpAddFileComp('http://www.goofy67-wot.de/files/HangMan/hangars/Hangar_Bridge_Winter.rar',  ExpandConstant('{tmp}\downloads\Hangar_Bridge_Winter.rar'),  'hangar\man\bridgewinter');

    idpSetOption('DetailedMode','1');
    idpSetOption('DetailsButton','0');
    idpDownloadAfter(wpReady);
end;

[Run]
;Filename: {tmp}\7za.exe; WorkingDir: {app}; Flags: runasoriginaluser runhidden; Parameters: " x -y {tmp}\downloads\clanicons-full-eu-20150429.7z"; Components: xvm\allclan; StatusMsg: Entpacke die Clan Icons. Das volle Paket umfasst ca. 49.173 Icons. Bitte habe Geduld!
;Filename: {tmp}\7za.exe; WorkingDir: {app}; Flags: runasoriginaluser runhidden; Parameters: " x -y {tmp}\downloads\goharu_910v1SD.7z"; Components: tank\goharusd; StatusMsg: Entpacke die Hitzonendateien (SD). Bitte habe Geduld!
;Filename: {tmp}\7za.exe; WorkingDir: {app}; Flags: runasoriginaluser runhidden; Parameters: " x -y {tmp}\downloads\goharu_910v1HD.7z"; Components: tank\goharuhd; StatusMsg: Entpacke die Hitzonendateien (HD). Bitte habe Geduld!

;Filename: {tmp}\UnRAR.exe; WorkingDir: {app}\res_mods; Flags: runasoriginaluser runhidden; Parameters: " x -y {tmp}\downloads\0.9.7_Hangar_Minimalistic_V2.rar"; Components: hangar\man\mini; StatusMsg: Entpacke den Minimalistic Hangar. Bitte habe Geduld!
;Filename: {tmp}\UnRAR.exe; WorkingDir: {app}\res_mods; Flags: runasoriginaluser runhidden; Parameters: " x -y {tmp}\downloads\0.9.7_Hangars_Basic_811.rar"; Components: hangar\man\basic811; StatusMsg: Entpacke den Basic Hangar aus Version 0.8.x. Bitte habe Geduld!
;Filename: {tmp}\UnRAR.exe; WorkingDir: {app}\res_mods; Flags: runasoriginaluser runhidden; Parameters: " x -y {tmp}\downloads\0.9.7_Hangars_Premium_811.rar"; Components: hangar\man\premium811; StatusMsg: Entpacke den Premium Hangar aus Version 0.8.x. Bitte habe Geduld!
;Filename: {tmp}\UnRAR.exe; WorkingDir: {app}\res_mods; Flags: runasoriginaluser runhidden; Parameters: " x -y {tmp}\downloads\0.9.7_Hell_Hangar_Desert.rar"; Components: hangar\man\helldesert; StatusMsg: Entpacke den Hangar Hellinger Wüste. Bitte habe Geduld!
;Filename: {tmp}\UnRAR.exe; WorkingDir: {app}\res_mods; Flags: runasoriginaluser runhidden; Parameters: " x -y {tmp}\downloads\0.9.7_Hell_Hangar_Summer.rar"; Components: hangar\man\hellsummer; StatusMsg: Entpacke den Hangar Hellinger Sommer. Bitte habe Geduld!
;Filename: {tmp}\UnRAR.exe; WorkingDir: {app}\res_mods; Flags: runasoriginaluser runhidden; Parameters: " x -y {tmp}\downloads\0.9.7_Hell_Hangar_Winter.rar"; Components: hangar\man\hellwinter; StatusMsg: Entpacke den Hangar Hellinger Winter. Bitte habe Geduld!
;
;Filename: {tmp}\UnRAR.exe; WorkingDir: {app}\res_mods; Flags: runasoriginaluser runhidden; Parameters: " x -y {tmp}\downloads\0.9.7_Hangar_4th_July.rar"; Components: hangar\man\4thjuly; StatusMsg: Entpacke den Eventhangar 4. Juli. Bitte habe Geduld!
;Filename: {tmp}\UnRAR.exe; WorkingDir: {app}\res_mods; Flags: runasoriginaluser runhidden; Parameters: " x -y {tmp}\downloads\0.9.7_Hangar_28Nov.rar"; Components: hangar\man\28nov; StatusMsg: Entpacke den Eventhangar 28. November. Bitte habe Geduld!
;Filename: {tmp}\UnRAR.exe; WorkingDir: {app}\res_mods; Flags: runasoriginaluser runhidden; Parameters: " x -y {tmp}\downloads\0.9.7_Hangar_Halloween_V2.rar"; Components: hangar\man\halloween; StatusMsg: Entpacke den Hangar Halloween V2. Bitte habe Geduld!
;Filename: {tmp}\UnRAR.exe; WorkingDir: {app}\res_mods; Flags: runasoriginaluser runhidden; Parameters: " x -y {tmp}\downloads\0.9.7_Hangar_IGR_Cave.rar"; Components: hangar\man\cave; StatusMsg: Entpacke den Hangar IGR Cave. Bitte habe Geduld!
;Filename: {tmp}\UnRAR.exe; WorkingDir: {app}\res_mods; Flags: runasoriginaluser runhidden; Parameters: " x -y {tmp}\downloads\0.9.7_hangar_NatDay_CN.rar"; Components: hangar\man\cnnatday; StatusMsg: Entpacke den Hangar China National Day. Bitte habe Geduld!
;Filename: {tmp}\UnRAR.exe; WorkingDir: {app}\res_mods; Flags: runasoriginaluser runhidden; Parameters: " x -y {tmp}\downloads\0.9.7_Hangar_WG_Bday.rar"; Components: hangar\man\wgbday; StatusMsg: Entpacke den Hangar WG Birthday. Bitte habe Geduld!
;Filename: {tmp}\UnRAR.exe; WorkingDir: {app}\res_mods\0.9.7; Flags: runasoriginaluser runhidden; Parameters: " x -y {tmp}\downloads\WGBday_no_Logos.rar"; Components: hangar\man\wgbday\ad; StatusMsg: Entpacke den Addon WG Birthday (Logo entfernen). Bitte habe Geduld!
;Filename: {tmp}\UnRAR.exe; WorkingDir: {app}\res_mods; Flags: runasoriginaluser runhidden; Parameters: " x -y {tmp}\downloads\0.9.7_Hangar_11Sept.rar"; Components: hangar\man\11sep; StatusMsg: Entpacke den Eventhangar 11. Sep. Bitte habe Geduld!
;Filename: {tmp}\UnRAR.exe; WorkingDir: {app}\res_mods; Flags: runasoriginaluser runhidden; Parameters: " x -y {tmp}\downloads\0.9.7_Hangar_8Nov.rar"; Components: hangar\man\8nov; StatusMsg: Entpacke den Eventhangar 8. Nov (Mohnfeld). Bitte habe Geduld!
;Filename: {tmp}\UnRAR.exe; WorkingDir: {app}\res_mods; Flags: runasoriginaluser runhidden; Parameters: " x -y {tmp}\downloads\0.9.7_Hangar_23Feb_V2.rar"; Components: hangar\man\23febv2; StatusMsg: Entpacke den Eventhangar 23. Feb (v2). Bitte habe Geduld!
;Filename: {tmp}\UnRAR.exe; WorkingDir: {app}\res_mods; Flags: runasoriginaluser runhidden; Parameters: " x -y {tmp}\downloads\0.9.7_Hangar_23Feb_V3.rar"; Components: hangar\man\23febv3; StatusMsg: Entpacke den Eventhangar 23. Feb (v3). Bitte habe Geduld!
;Filename: {tmp}\UnRAR.exe; WorkingDir: {app}\res_mods; Flags: runasoriginaluser runhidden; Parameters: " x -y {tmp}\downloads\Addon_23Feb_V3_German.rar"; Components: hangar\man\23febv3\german; StatusMsg: Entpacke den Eventhangar 23. Feb (v3) mit Dt. Panzern. Bitte habe Geduld!
;Filename: {tmp}\UnRAR.exe; WorkingDir: {app}\res_mods; Flags: runasoriginaluser runhidden; Parameters: " x -y {tmp}\downloads\0.9.7_Hangar_11nov.rar"; Components: hangar\man\11nov; StatusMsg: Entpacke den Eventhangar 11. Nov. Bitte habe Geduld!
;Filename: {tmp}\UnRAR.exe; WorkingDir: {app}\res_mods; Flags: runasoriginaluser runhidden; Parameters: " x -y {tmp}\downloads\0.9.7_Hangar_9may.rar"; Components: hangar\man\9may; StatusMsg: Entpacke den Hangar Reichstag (9. Mai). Bitte habe Geduld!
;Filename: {tmp}\UnRAR.exe; WorkingDir: {app}\res_mods; Flags: runasoriginaluser runhidden; Parameters: " x -y {tmp}\downloads\0.9.7_Hangar_Fury.rar"; Components: hangar\man\fury; StatusMsg: Entpacke den Hangar Fury. Bitte habe Geduld!
;Filename: {tmp}\UnRAR.exe; WorkingDir: {app}\res_mods\0.9.7; Flags: runasoriginaluser runhidden; Parameters: " x -y {tmp}\downloads\Fury_no_signs.rar"; Components: hangar\man\fury\ad; StatusMsg: Entpacke den Addon Fury (Werbetafeln entfernen). Bitte habe Geduld!
;Filename: {tmp}\UnRAR.exe; WorkingDir: {app}\res_mods\0.9.7; Flags: runasoriginaluser runhidden; Parameters: " x -y {tmp}\downloads\Fury_german_Addon.rar"; Components: hangar\man\fury\german; StatusMsg: Entpacke den Addon Fury (Deutsche Edition). Bitte habe Geduld!
;Filename: {tmp}\UnRAR.exe; WorkingDir: {app}\res_mods\0.9.7; Flags: runasoriginaluser runhidden; Parameters: " x -y {tmp}\downloads\Fury_USSR_Addon.rar"; Components: hangar\man\fury\ussr; StatusMsg: Entpacke den Addon Fury (USSR Edition). Bitte habe Geduld!
;
;Filename: {tmp}\UnRAR.exe; WorkingDir: {app}\res_mods; Flags: runasoriginaluser runhidden; Parameters: " x -y {tmp}\downloads\0.9.7_Hangar_Forest_Road.rar"; Components: hangar\man\forest; StatusMsg: Entpacke den Hangar Forest Road. Bitte habe Geduld!
;Filename: {tmp}\UnRAR.exe; WorkingDir: {app}\res_mods; Flags: runasoriginaluser runhidden; Parameters: " x -y {tmp}\downloads\0.9.7_Hangar_Open_Door.rar"; Components: hangar\man\opendoor; StatusMsg: Entpacke den Hangar Open Door. Bitte habe Geduld!
;Filename: {tmp}\UnRAR.exe; WorkingDir: {app}\res_mods; Flags: runasoriginaluser runhidden; Parameters: " x -y {tmp}\downloads\0.9.7_Hangar_Tankfactory.rar"; Components: hangar\man\tankfactory; StatusMsg: Entpacke den Hangar Tankfactory. Bitte habe Geduld!
;Filename: {tmp}\UnRAR.exe; WorkingDir: {app}\res_mods; Flags: runasoriginaluser runhidden; Parameters: " x -y {tmp}\downloads\0.9.7_Hangar_Trainstation.rar"; Components: hangar\man\trainstation; StatusMsg: Entpacke den Hangar Trainstation. Bitte habe Geduld!
;Filename: {tmp}\UnRAR.exe; WorkingDir: {app}\res_mods; Flags: runasoriginaluser runhidden; Parameters: " x -y {tmp}\downloads\0.9.7_Hangar_Waldlager.rar"; Components: hangar\man\waldlager; StatusMsg: Entpacke den Hangar Waldlager. Bitte habe Geduld!
;Filename: {tmp}\UnRAR.exe; WorkingDir: {app}\res_mods; Flags: runasoriginaluser runhidden; Parameters: " x -y {tmp}\downloads\0.9.7_Hangar_Winter_2015.rar"; Components: hangar\man\win2015; StatusMsg: Entpacke den Hangar Winter 2015. Bitte habe Geduld!
;Filename: {tmp}\UnRAR.exe; WorkingDir: {app}\res_mods; Flags: runasoriginaluser runhidden; Parameters: " x -y {tmp}\downloads\Hangar_Bridge_Summer.rar"; Components: hangar\man\bridgesummer; StatusMsg: Entpacke den Hangar Brücke (Sommer). Bitte habe Geduld!
;Filename: {tmp}\UnRAR.exe; WorkingDir: {app}\res_mods; Flags: runasoriginaluser runhidden; Parameters: " x -y {tmp}\downloads\Hangar_Bridge_Winter.rar"; Components: hangar\man\bridgewinter; StatusMsg: Entpacke den Hangar Brücke (Winter). Bitte habe Geduld!

[CustomMessages]
de.IDP_FormCaption           =Download zusätzlicher Dateien
de.IDP_FormDescription       =Bitte warten, das Setup lädt nun zusätzliche Dateien...
de.IDP_TotalProgress         =Gesamter Fortschritt:
de.IDP_CurrentFile           =Aktuelle Datei:
de.IDP_File                  =Datei:
de.IDP_Speed                 =Geschwindigkeit:
de.IDP_Status                =Status:
de.IDP_ElapsedTime           =Vergangene Zeit:
de.IDP_RemainingTime         =Verbleibende Zeit:
de.IDP_DetailsButton         =Details
de.IDP_HideButton            =Verstecken
de.IDP_RetryButton           =Wiederholen
de.IDP_IgnoreButton          =
de.IDP_KBs                   =kB/s
de.IDP_MBs                   =MB/s
de.IDP_X_of_X                =%.2f von %.2f
de.IDP_KB                    =KB
de.IDP_MB                    =MB
de.IDP_GB                    =GB
de.IDP_Initializing          =Initialisieren...
de.IDP_GettingFileInformation=Empfange Dateiinformationen...
de.IDP_StartingDownload      =Starte Download...
de.IDP_Connecting            =Verbinde...
de.IDP_Downloading           =Downloade...
de.IDP_DownloadComplete      =Download abgeschlossen
de.IDP_DownloadFailed        =Download fehlgeschlagen
de.IDP_CannotConnect         =Die Verbindung konnte nicht hergestellt werden
de.IDP_CancellingDownload    =Download wird abgebrochen...
de.IDP_Unknown               =Unbekannt
de.IDP_DownloadCancelled     =Download abgebrochen
de.IDP_RetryNext             =Prüfen Sie Ihre Verbindung und klicken Sie auf 'Wiederholen' für einen erneuten Versuch oder klicken Sie auf 'Weiter' um dennoch fortzusetzen.
de.IDP_RetryCancel           =Prüfen Sie Ihre Verbindung und klicken Sie auf 'Wiederholen' für einen erneuten Versuch oder klicken Sie auf 'Abbrechen' um das Setup zu verlassen.
de.IDP_FilesNotDownloaded    =
de.IDP_HTTPError_X           =HTTP Fehler %d
de.IDP_400                   =Ungültige Anforderung (400)
de.IDP_401                   =Nicht autorisiert (401)
de.IDP_404                   =Datei nicht gefunden (404)
de.IDP_407                   =Proxy-Authentifizierung erforderlich (407)
de.IDP_500                   =Interner Serverfehler (500)
de.IDP_502                   =Falsches Gateway (502)
de.IDP_503                   =Service nicht verfügbar (503)
