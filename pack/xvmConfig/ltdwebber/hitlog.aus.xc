/**
 * Hit log (my hits calculator).
 */
{
  "hitLog": {
    // false - Disable.
    "visible": false,
    // Show enemy HP left by Alt press
    // Destroyed enemies and enemies HP gets updated only when it markers become visible.
    // Markers are visible only inside 1000m side square.
    // Square with 1000 meters side is game engine restriction. Maximum marker show distance.
    // Particular enemy data will not be updated while you cant see this enemy marker or its wreck.
    "hpLeft": {
        // false - Disable.
        "enabled": true,
        // Header - Only localization macros are allowed, see readme-en.txt.
        "header": "<font size='14' color='#FFFFFF'>{{l10n:hpLeftTitle}}</font>",
        // Row in HP list (macros allowed, see readme-en.txt).
        "format": "<textformat leading='-2' tabstops='[35,88]'><font size='14'><font size='15' color='{{c:hp-ratio}}'><b>{{hp}}</b></font><tab><font color='#FFFFFF'> / </font>{{hp-max}}<tab><font size='16' face='XVMSymbol' color='{{c:vtype}}'>{{vtype}}</font> <font color='#FFFFFF'><b>{{vehicle}}</b></font> <font size='11'color='#FFFFFF'>{{name%.16s~..}}</font></font></textformat>"
    },   
    // X position (negative values - bind to right side of screen).
    "x": 5,     // Hitlog below players panel
    //"x": 365,   // Hitlog next to clock
    // Y position (negative values - bind to bottom side of screen).
    "y": 440,   // Hitlog below players panel
    //"y": 5,     // Hitlog next to clock
    // Width.
    "w": 300,
    // Height.
    "h": 230,
    // Number of lines with hits. Old lines will be pushed out.
    "lines": 10,
    // Log direction: up - lines will be added from up to down, down - from down to up.
    "direction": "down",
    // Group hits by players name.
    "groupHitsByPlayer": true,
    // Insert order: begin - insert new values to begin, end - add to end.
 	"insertOrder": "begin",
    // Substitution for {{dead}} macro when tank is dead.
    "deadMarker": "<font face='XVMSymbol' size='16' color='#FE3C33'><b>+</b></font>",
    "blowupMarker": "<font face='XVMSymbol' size='16' color='#FE3C33'><b>,</b></font>",
    // Default header format (before first hit). Macros IS NOT allowed.
    "defaultHeader": "<font size='14'><font color='#DDDDDD'><b>.</b></font>",
    // Hits header format, including last hit (macros allowed, see readme-en.txt).
    "formatHeader": "<font size='14'><font color='#DDDDDD'>{{l10n:Hits}}:</font> <b>x{{n|0}}</b> {{l10n:Total}}: <font size='15' color='#6BFF62'><b>{{dmg-total|0}}</b></font> <font size='14'><b>(Ø {{dmg-avg%d|0}})</b></font>",
    // List of hits format (macros allowed, see readme-en.txt).
    "formatHistory": "<textformat leading='-2' tabstops='[20,60,88]'><font size='12'><b>x{{n-player}}:</font><tab><font size='15' color='#6BFF62'><b>{{dmg-player}}</b></font><tab><font size='14' color='{{c:dmg-kind}}'><b>{{dmg}}</b></font><tab><font size='16' face='XVMSymbol' color='{{c:vtype}}'>{{vtype}}</font> <font size='14'><b> {{vehicle}}</b></font> <font size='11'>{{name%.16s~..}}</font> <font size='16' face='XVMSymbol'><b>{{dead}}</b></font></textformat>",
    // Shadow options.
    "shadow": ${"common.xc":"shadowNormal"}
  }
}
