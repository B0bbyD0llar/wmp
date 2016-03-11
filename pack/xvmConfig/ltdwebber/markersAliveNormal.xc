/**
 * Options for alive with Alt markers.
 * Настройки маркеров для живых без Alt.
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
      // Параметры тени.
      "shadow": ${"common.xc":"shadowNormal" }
    },
    // Индикатор здоровья.
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
      // Параметры анимации отнимаемого здоровья.
      "damage": {
        "alpha": 80,                    //     прозрачность
        "color": "{{c:dmg}}",           //     цвет
        "fade": 1                       //     время затухания в секундах
      }
    },
    "damageText": ${"common.xc":"damageTextNormal"},
    "damageTextPlayer": ${"common.xc":"damageTextNormal"},
    "damageTextSquadman": ${"common.xc":"damageTextNormal"},
    // Vehicle contour icon.
    // Контурная иконка танка.
    "contourIcon": {
      // false - disable / не отображать.
      "visible": false,
      // Axis field coordinates.
      // Положение поля по осям.
      "x": 6,
      "y": -65,
      // Opacity (dynamic transparency allowed, see macros.txt).
      // Прозрачность (допускается использование динамической прозрачности, см. macros.txt).
      "alpha": 100,
      // Color (dynamic colors allowed, see macros.txt).
      // Цвет (допускается использование динамического цвета, см. macros.txt).
      "color": null,
      // Color intensity from 0 to 100. The default is 0 (off).
      // Интенсивность цвета от 0 до 100. По умолчанию 0, т.е. выключено.
      "amount": 0
    },
    // Player or clan icon.
    // Иконка игрока или клана.
    "clanIcon": {
      "visible": false,  // false - disable        / не отображать.
      "x": 0,            // Position on the X axis / Положение по оси X.
      "y": -67,          // Position on the Y axis / Положение по оси Y.


      "w": 16,           // Width                  / Ширина.
      "h": 16,           // Height                 / Высота.
      // Opacity (dynamic transparency allowed, see macros.txt).
      // Прозрачность (допускается использование динамической прозрачности, см. macros.txt)
      "alpha": 100
    },
    // Vehicle tier.
    // Уровень танка.
    "levelIcon": {
      "visible": false,  // false - disable        / не отображать.
      "x": 0,            // Position on the X axis / Положение по оси X.


      "y": -21,          // Position on the Y axis / Положение по оси Y.
      "alpha": 100       // Opacity                / Прозрачность.
    },
    // Markers "Help!" and "Attack!".
    // Маркеры "Нужна помощь" и "Атакую".
    "actionMarker": {
      "visible": true,   // false - disable        / не отображать.
      "x": 0,            // Position on the X axis / Положение по оси X.
      "y": -67,          // Position on the Y axis / Положение по оси Y.
      "alpha": 100       // Opacity                / Прозрачность.
    },
    // Block of text fields.
    // Блок текстовых полей.
    "textFields": [
      // Text field with the name of the tank.
      // Текстовое поле с названием танка.
      {
        "name": "Name",
        "visible": true,
        "x": 0,
        "y": -46,
        "alpha": 100,
        "color": null,
        "font": {
          "name": "$FieldFont",
          "size": 11,
          "align": "center",
          "bold": false,
          "italic": false
        },
        "shadow": ${"common.xc":"shadowNormal"},
        "format": "{{name}}"
      },
      {      	
        "name": "Vehicle",
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
        "format": "{{vehicle}}"
      },
      {
        "name": "Vehicle Tier",
        "visible": false,
        "x": 0,
        "y": -62,
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
        "format": "{{hp}}"
      },
	  {
        "name": "xTe Rating",
        "visible": true,
        "x": 17,
        "y": -7,
        "alpha": 80,
        "color": null,
        "font": {
          "name": "Webdings",
          "size": 6,
          "align": "center",
          "bold": true,
          "italic": false
        },
        "shadow": ${"common.xc":"shadowNormal"},
        "format": "<font color='#DDDDDD'><font color='{{c:xte}}'>/</font></font>"
      },
      {
        "name": "WN8 Rating",
        "visible": true,
        "x": 22,
        "y": -7,
        "alpha": 80,
        "color": null,
        "font": {
          "name": "Webdings",
          "size": 8,
          "align": "center",
          "bold": true,
          "italic": false
        },
        "shadow": ${"common.xc":"shadowNormal"},
        "format": "<font color='#DDDDDD'><font color='{{c:wn8}}'>/</font></font>"
      },
      {
        "name": "Overall Rating",
        "visible": true,
        "x": 28,
        "y": -7,
        "alpha": 80,
        "color": null,
        "font": {
          "name": "Webdings",
          "size": 7,
          "align": "center",
          "bold": true,
          "italic": false
        },      
        "shadow": ${"common.xc":"shadowNormal"},
        "format": "<font color='#DDDDDD'><font color='{{c:rating}}'>/</font></font>"
      },        
      {
        "name": "Tank Rating",
        "visible": true,
        "x": 33,
        "y": -7,
        "alpha": 80,
        "color": null,
        "font": {
          "name": "Webdings",
          "size": 7,
          "align": "center",
          "bold": true,
          "italic": false
        },
        "shadow": ${"common.xc":"shadowNormal"},
        "format": "<font color='#DDDDDD'><font color='{{c:t-rating}}'>/</font></font>"
      },
      {
        "name": "Turretmarker",
        "visible": true,
        "x": -30,
        "y": -4,
        "alpha": 70,
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
    "textFields": [
	{
        "name": "Name and Clan",
        "visible": true,
        "x": 0,
        "y": -46,
        "alpha": 100,
        "color": null,
        "font": {
          "name": "$FieldFont",
          "size": 11,
          "align": "center",
          "bold": false,
          "italic": false
        },
        "shadow": ${"common.xc":"shadowNormal"},
        "format": "{{name}}"
      },
      {
        "name": "Vehicle",
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
        "format": "{{vehicle}}"
      },
      {
        "name": "Vehicle Tier",
        "visible": false,
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
        "format": "{{hp}}"
      },
	  {
        "name": "xTe Rating",
        "visible": true,
        "x": 17,
        "y": -7,
        "alpha": 80,
        "color": null,
        "font": {
          "name": "Webdings",
          "size": 6,
          "align": "center",
          "bold": true,
          "italic": false
        },
        "shadow": ${"common.xc":"shadowNormal"},
        "format": "<font color='#DDDDDD'><font color='{{c:xte}}'>/</font></font>"
      },
      {
        "name": "WN8 Rating",
        "visible": true,
        "x": 22,
        "y": -7,
        "alpha": 100,
        "color": null,
        "font": {
          "name": "Webdings",
          "size": 8,
          "align": "center",
          "bold": true,
          "italic": false
        },
        "shadow": ${"common.xc":"shadowNormal"},
        "format": "<font color='#DDDDDD'><font color='{{c:wn8}}'>/</font></font>"
      },
{
        "name": "Overall Rating",
        "visible": true,
        "x": 28,
        "y": -7,
        "alpha": 80,
        "color": null,
        "font": {
          "name": "Webdings",
          "size": 7,
          "align": "center",
          "bold": true,
          "italic": false
        },
        "shadow": ${"common.xc":"shadowNormal"},
        "format": "<font color='#DDDDDD'><font color='{{c:rating}}'>/</font></font>"
      },      
      {
        "name": "Tank Rating",
        "visible": true,
        "x": 33,
        "y": -7,
        "alpha": 80,
        "color": null,
        "font": {
          "name": "Webdings",
          "size": 7,
          "align": "center",
          "bold": true,
          "italic": false
        },
        "shadow": ${"common.xc":"shadowNormal"},
        "format": "<font color='#DDDDDD'><font color='{{c:t-rating}}'>/</font></font>"
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
  }
}
