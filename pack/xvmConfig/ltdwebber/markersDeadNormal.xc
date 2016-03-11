/**
 * Options for dead with Alt markers.
 */
{
  "ally": {
    "vehicleIcon": {
      "visible": true,
      "showSpeaker": false,
      "x": 0,
      "y": -16,
      "alpha": 100,
      "color": null,
      "maxScale": 80,
      "scaleX": 0,
      "scaleY": 16,
      "shadow": ${"common.xc":"shadowNormal"}
    },
    "healthBar": {
      "visible": false,
      "x": -41,
      "y": -32,
      "alpha": 100,
      "color": null,
      "lcolor": null,
      "width": 80,
      "height": 10,
      "border": {
        "alpha": 30,
        "color": "0x000000",
        "size": 1.7
      },
      "fill": {
        "alpha": 45
      },
      "damage": {
        "alpha": 80,
        "color": "{{c:dmg}}",
        "fade": 1
      }
    },
    "damageText": ${"common.xc":"damageTextDead"},
    "damageTextPlayer": ${"common.xc":"damageTextDead"},
    "damageTextSquadman": ${"common.xc":"damageTextDead"},
    "contourIcon": {
      "visible": false,
      "x": 0,
      "y": -59,
      "alpha": 100,
      "color": null,
      "amount": 0
    },
    "clanIcon": {
      "visible": false,
      "x": 0,
      "y": -81,
      "w": 16,
      "h": 16,
      "alpha": 80
    },
    "levelIcon": {
      "visible": false,
      "x": 0,
      "y": -21,
      "alpha": 100
    },
    "actionMarker": {
      "visible": true,
      "x": 0,
      "y": -67,
      "alpha": 100
    },
    "textFields": []
  },
  "enemy": {
    "vehicleIcon": ${"ally.vehicleIcon"},
    "healthBar": ${"ally.healthBar"},
    "damageText": ${"common.xc":"damageTextDead"},
    "damageTextPlayer": ${"common.xc":"damageTextDead"},
    "damageTextSquadman": ${"common.xc":"damageTextDead"},
    "contourIcon": ${"ally.contourIcon"},
    "clanIcon": ${"ally.clanIcon"},
    "levelIcon": ${"ally.levelIcon"},
    "actionMarker": ${"ally.actionMarker"},
    "textFields": []
  }
}
