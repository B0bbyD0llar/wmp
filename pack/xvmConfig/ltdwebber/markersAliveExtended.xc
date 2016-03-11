/**
 * Options for alive with Alt markers.
 * Настройки маркеров для живых с Alt.
 */
{
  // Floating damage values.
  // Всплывающий урон.
  "damageText": {
    // false - disable / не отображать.
    "visible": true,
    // Axis field coordinates
    // Положение поля по осям
    "x": 0,
    "y": -67,
    // Opacity (dynamic transparency allowed, see macros.txt).
    // Прозрачность (допускается использование динамической прозрачности, см. macros.txt)
    "alpha": 100,
    // Color (dynamic colors allowed, see macros.txt).
    // Цвет (допускается использование динамического цвета, см. macros.txt)
    "color": null,
    // Параметры шрифта.
    "font": {
      "name": "$FieldFont",           // Font name      / Название
      "size": 18,                     // Font size      / Размер
      "align": "center",              // Text alignment (left, center, right) /   Выравнивание текста (left, center, right)
      "bold": false,                  // True - bold    / Жирный.
      "italic": false                 // True - italic  / Курсив.
    },
    // Параметры тени.
    "shadow": {
      "alpha": 100,                   // Opacity          / Прозрачность.
      "color": "0x000000",            //                    Цвет.
      "angle": 45,                    // Offset angle     / Угол смещения.
      "distance": 0,                  // Offset distance  / Дистанция смещения.
      "size": 6,                      //                    Размер.
      "strength": 200                 // Intensity        / Интенсивность.
    },
    // Rising speed of displayed damage (float up speed).
    // Время отображения отлетающего урона.
    "speed": 2,
    // Maximum distance of target for which damage rises.
    // Расстояние, на которое отлетает урон.
    "maxRange": 40,
    // Text for normal damage (see description of macros in the macros.txt).
    // Текст при обычном уроне (см. описание макросов в macros.txt).
    "damageMessage": "{{dmg}}",
    // Text for ammo rack explosion (see description of macros in the macros.txt).
    // Текст при взрыве боеукладки (см. описание макросов в macros.txt).
    "blowupMessage": "{{l10n:blownUp}}\n{{dmg}}"
  },
  // Настройки для союзников.
  "ally": {
    // Type of vehicle icon (HT/MT/LT/TD/Arty).
    // Иконка типа танка (ТТ/СТ/ЛТ/ПТ/Арта).
    "vehicleIcon": {
      // false - disable / не отображать
      "visible": true,
      // true - show speaker even if visible=false
      // true - показывать спикер, даже если visible=false
      "showSpeaker": false,
      // Axis field coordinates
      // Положение поля по осям
      "x": 0,
      "y": -16,
      // Opacity.
      // Прозрачность.
      "alpha": 100,
      // Color (currently not in use).
      // Цвет (в данный момент не используется).
      "color": null,
      // Maximum scale (default is 100).
      // Максимальный масштаб (по умолчанию 100).
      "maxScale": 100,
      // Offset along the X axis (?)
      // Смещение по оси X (?)
      "scaleX": 0,
      // Offset along the Y axis (?)
      // Смещение по оси Y (?)
      "scaleY": 16,
      "shadow": ${"common.xc":"shadowNormal" }
    },
    "healthBar": {
      "visible": true,                  //   false - не отображать
      "x": -41,                         //   положение по оси X
      "y": -32,                         //   положение по оси Y
      "alpha": 100,                     //   прозрачность (допускается использование динамической прозрачности, см. macros.txt)
      "color": null,                    //   цвет основной (допускается использование динамического цвета, см. macros.txt)
      "lcolor": null,                   //   цвет дополнительный (для градиента)
      "width": 80,                      //   ширина полосы здоровья
      "height": 12,                     //   высота полосы здоровья
      // Параметры подложки и рамки.
      "border": {
        "alpha": 30,                    //     прозрачность
        "color": "0x000000",            //     цвет
        "size": 1                       //     размер рамки
      },
      // Параметры оставшегося здоровья.
      "fill": {
        "alpha": 30                     //     прозрачность
      },
      "damage": {
        "alpha": 80,
        "color": "{{c:dmg}}",
        "fade": 1
      }
    },
    "damageText": ${"common.xc":"damageTextNormal"},
    "damageTextPlayer": ${"common.xc":"damageTextNormal"},
    "damageTextSquadman": ${"common.xc":"damageTextNormal"},
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
      "y": -58,
      "alpha": 100
    },
    "actionMarker": {
      "visible": true,
      "x": 0,
      "y": -67,
      "alpha": 100
    },
    "textFields": [
	{
        "name": "Flag",
        "visible": true,
        "x": -49,
        "y": -18,
        "alpha": 100,
        "color": null,
        "font": {
          "name": "$FieldFont",
          "size": 14,
          "align": "center",
          "bold": false,
          "italic": false
        },
        "shadow": ${"common.xc":"shadowNormal"},
        "format": "<img src='xvm://res/icons/flags/{{flag|default}}.png' width='16' height='13'>"
      },
      {
        "name": "Nick and Clan",
        "visible": true,
        "x": 0,
        "y": -35,
        "alpha": 100,
        "color": null,
        "font": {
          "name": "$FieldFont",
          "size": 14,
          "align": "center",
          "bold": false,
          "italic": false
        },
        "shadow": ${"common.xc":"shadowNormal"},
        "format": "{{nick}}"
      },
      {
        "name": "Vehicle Tier",
        "visible": true,
        "x": 0,
        "y": -46,
        "alpha": 80,
        "color": null,
        "font": {
          "name": "$FieldFont",
          "size": 11,
          "align": "center",
          "bold": true,
          "italic": false
        },
        "shadow": ${"common.xc":"shadowNormal"},
        "format": "{{rlevel}}"
      },
      {
        "name": "Health",
        "visible": true,
        "x": 0,
        "y": -19,
        "alpha": 100,
        "color": "0xFFFFFF",
        "font": {
          "name": "$FieldFont",
          "size": 11,
          "align": "center",
          "bold": true,
          "italic": false
        },
        "shadow": ${"common.xc":"shadowNormal"},
        "format": "{{hp}}/{{hp-max}}"
      },
      {
        "name": "xTE Rating/WN8 Rating/Overall Rating/Tank Rating",
        "visible": true,
        "x": 56,
        "y": -7,
        "alpha": 80,
        "color": null,
        "font": {
          "name": "$FieldFont",
          "size": 10,
          "align": "right",
          "bold": true,
          "italic": false
        },
        "shadow": ${"common.xc":"shadowNormal"},
        "format": "<font color='#DDDDDD'><font color='{{c:xte}}'>{{xte%2d|--}}</font> | <font color='{{c:wn8}}'>{{wn8%4d|----}}</font> | <font color='{{c:rating}}'>{{rating%d~%|--%}}</font> | <font color='{{c:t-rating}}'>{{t-rating%d~%|--%}}</font></font>"
      },
      {
        "name": "Turretmarker",
        "visible": true,
        "x": -30,
        "y": -4,
        "alpha": 80,
        "color": "0xFFFF00",
        "font": {
          "name": "xvm",
          "size": 14,
          "align": "center",
          "bold": true,
          "italic": false
        },
        "shadow": ${"common.xc":"shadowNormal"},
        "format": "{{turret}}"
      }
    ]
  },
  "enemy": {
    "vehicleIcon": ${"ally.vehicleIcon"},
    "healthBar": ${"ally.healthBar"},
    "damageText": ${"common.xc":"damageTextNormal"},
    "damageTextPlayer": ${"common.xc":"damageTextNormal"},
    "damageTextSquadman": ${"common.xc":"damageTextNormal"},
    "contourIcon": ${"ally.contourIcon"},
    "clanIcon": ${"ally.clanIcon"},
    "levelIcon": ${"ally.levelIcon"},
    "actionMarker": ${"ally.actionMarker"},
    "textFields": ${"ally.textFields"}
  }
}
