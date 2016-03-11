/**
 * Common Definitions = Definitions used in more than one file
 */
{
  // Shadows
  "shadowNormal": {
    "alpha": 80,
    "color": "0x000000",
    "angle": 0,
    "distance": 0,
    "size": 2,
    "strength": 200
  },
  // Shadows with Blur
  "shadowBlur": {
    "enabled": true,
    "color": "0x000000",
    "distance": 0,
    "angle": 0,
    "alpha": 80,
    "blur": 3,
    "strength": 3
  },
  // Clanicon display
  "clanIcon": {
    "show": true,
    "x": 83,
    "y": 5,
    "xr": 110,
    "yr": 5,
    "w": 16,
    "h": 16,
    "alpha": 90
  },
  // Clanicon display Battle Loading
  "clanIconBL": {
    "show": false,
    "x": 0,
    "y": 5,
    "xr": 0,
    "yr": 5,
    "w": 16,
    "h": 16,
    "alpha": 90
  },
  // Markers damagetext
  "damageTextNormal": {
    "visible": true,
    "x": 0,
    "y": -70,
    "alpha": 100,
    "color": null,
    "font": {
      "name": "$FieldFont",
      "size": 16,
      "align": "center",
      "bold": true,
      "italic": false
    },
    "shadow": ${"shadowNormal"},
    "speed": 2,
    "maxRange": 60,
    "damageMessage": "-{{dmg}}",
    "blowupMessage": "<font face='xvm' size='28'>\u002c</font>\n-{{dmg}}"
  },
  // Markers damagetext at death
  "damageTextDead": {
    "visible": true,
    "x": 0,
    "y": -70,
    "alpha": 100,
    "color": null,
    "font": {
      "name": "$FieldFont",
      "size": 16,
      "align": "center",
      "bold": true,
      "italic": false
    },
    "shadow": ${"shadowNormal"},
    "speed": 2,
    "maxRange": 60,
    "damageMessage": "<font face='xvm' size='28'>\u002b</font>\n-{{dmg}}",
    "blowupMessage": "<font face='xvm' size='28'>\u002c</font>\n-{{dmg}}"
  }
}