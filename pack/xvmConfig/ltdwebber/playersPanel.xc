/**
 * Parameters of the Players Panels ("ears").
 * Параметры панелей игроков ("ушей").
 */
{
  // Enemy spotted status marker format for substitutions in extra fields.
  // Подстановка для дополнительного поля с маркером статуса засвета
  "enemySpottedMarker": {
    // Opacity percentage of spotted markers in the panels. 0 - transparent (disabled) ... 100 - opaque.
	// Прозрачность в процентах маркеров засвета в ушах. 0 - полностью прозрачные (отключены), 100 - не прозрачные.
    "alpha": "{{a:spotted}}",
    // x position.
	// положение по горизонтали.
    "x": 0,
    // y position.
	// положение по вертикали.
    "y": 3,
	// Horizontal alignment
    // Выравнивание по горизонтали
    "align": "center",    
    // true - x position is binded to vehicle icon, false - binded to edge of the screen.
    // true - положение по горизонтали отсчитывается от иконки танка, false - от края экрана.
    "bindToIcon": true,
    // enemy spotted status marker format.
    // формат маркера статуса засвета.
    "format": "<font color='{{c:spotted}}'>{{spotted}}</font>",
    // shadow (see below).
	// настройки тени (см. ниже).
    "shadow": {}
  },
  // XMQP service activation indicator definition.
  // Шаблон индикатора активации сервиса XMQP.
  "xmqpService": { "x": 1, "y": 1, "w": 3, "h": 22, "bgColor": "{{alive?{{x-enabled?0xFFBB00|0x595959}}|0x595959}}", "borderColor": "0x000000", "alpha": "{{x-enabled?{{alive?100|50}}|0}}" },
  // Parameters of the Players Panels ("ears").
  // Параметры панелей игроков ("ушей").
  "playersPanel": {
    // Opacity percentage of the panels. 0 - transparent, 100 - opaque.
	// Прозрачность в процентах ушей. 0 - прозрачные, 100 - не прозрачные.
    "alpha": 60,
    // Opacity percentage of icons in the panels. 0 - transparent ... 100 - opaque.
	// Прозрачность в процентах иконок в ушах. 0 - прозрачные, 100 - не прозрачные.
    "iconAlpha": 100,
    // true - disable background of the selected player.
	// true - убрать подложку выбранного игрока.
    "removeSelectedBackground": false,
    // true - Remove the Players Panel mode switcher (buttons for changing size).
	// true - убрать переключатель режимов ушей мышкой.
    "removePanelsModeSwitcher": false,
    // Start panels mode. Possible values: "none", "short", "medium", "medium2", "large".
	// Начальный режим ушей. Возможные значения: "none", "short", "medium", "medium2", "large".
    "startMode": "large",
    // Alternative panels mode. Possible values: null, "none", "short", "medium", "medium2", "large".
	// Альтернативный режим ушей. Возможные значения: null, "none", "short", "medium", "medium2", "large".
    "altMode": null,      
    // Display options for Team/Clan logos (see battleLoading.xc).
	// Параметры отображения иконки игрока/клана (см. battleLoading.xc).
    "clanIcon": ${"common.xc":"clanIcon"},
    // Options for the "none" panels - empty panels.
	// Режим ушей "none" - пустые уши.
    "none": {
      // false - disable (отключить)
      "enabled": true,
      // Layout ("vertical" or "horizontal")
      // Размещение ("vertical" - вертикально, или "horizontal" - горизонтально)
      "layout": "vertical",
      // Extra fields.
      // Дополнительные поля.
      "extraFields": {
        "leftPanel": {
          "x": 0, // from left side of screen
          "y": 65,
          "width": 350,
          "height": 25,
          // Set of formats for left panel
          // Набор форматов для левой панели
          // example:
          // "format": [
          //   // simple format (just a text)
          //   "{{nick}}",
          //   "<img src='xvm://res/img/panel-bg-l-{{alive|dead}}.png' width='318' height='28'>",
          //   // extended format
          //   { "x": 20, "y": 10, "borderColor": "0xFFFFFF", "format": "{{nick}}" },
          //   { "x": 200, "src": "xvm://res/contour/{{vehiclename}}.png" }
          // ]
          //
          // types of formats available for extended format:
          //   - MovieClip (for loading image)
          //   - TextField (for writing text and creating rectangles)
          // if "src" field is present, MovieClip format will be used
          // if "src" field is absent, TextField format will be used
          //
          // fields available for extended format:
          //   "src" - resource path ("xvm://res/contour/{{vehiclename}}.png")
          //   "format" - text format (macros allowed)
          //
          // fields available for both MovieClip and TextField formats:
          //   "enabled" - enable/disable field creation (global macros allowed)
          //   "x" - x position (macros allowed)
          //   "y" - y position (macros allowed)
          //   "w" - width (macros allowed)
          //   "h" - height (macros allowed)
          //   "bindToIcon" - if enabled, x position is binded to vehicle icon (default false)
          //   "alpha" - transparency in percents (0..100) (macros allowed)
          //   "rotation" - rotation in degrees (0..360) (macros allowed)
          //   "align" - horizontal alignment ("left", "center", "right")
          //      for left panel default value is "left"
          //      for right panel default value is "right"
          //   "scaleX", "scaleY" - scaling (use negative values for mirroring)
          //
          // fields available for TextField format only:
          //   "valign" - vertical alignment ("top", "center", "bottom")
          //      default value is "top"
          //   "borderColor" - if set, draw border with specified color (macros allowed)
          //   "bgColor" - if set, draw background with specified color (macros allowed)
          //   "antiAliasType" - anti aliasing mode ("advanced" or "normal")
          //   "shadow": {
          //     "distance" (in pixels)
          //     "angle"    (0.0 .. 360.0)
          //     "color"    "0xXXXXXX"
          //     "alpha"    (0.0 .. 1.0)
          //     "blur"     (0.0 .. 255.0)
          //     "strength" (0.0 .. 255.0)
          //    }
          //
          // fields available for MovieClip format only:
          //     "highlight" - highlight icon depending on the player state, default false
          //
          // * all fields are optional
          //
          "formats": []
        },
        "rightPanel": {
          "x": 0, // from right side of screen
          "y": 65,
          "width": 350,
          "height": 25,
          // Set of formats for right panel (extended format supported, see above)
          // Набор форматов для правой панели (поддерживается расширенный формат, см. выше)
          "formats": []
        }
      }
    },
    // Options for the "short" panels - panels with frags and vehicle icon.
    // Режим ушей "short" - короткие уши (фраги и иконка танка).
    "short": {
      // false - disable (отключить)
      "enabled": true,
      // Minimum width of the column, 0-250. Default is 0.
      // Минимальная ширина поля, 0-250. По умолчанию: 0.
      "width": 0,
      // true - disable platoon icons
      // true - убрать отображение иконок взвода
      "removeSquadIcon": false,
      // transparency of vehicle level
      // прозрачность уровня танка
      "vehicleLevelAlpha": 100,  
      // Display format for frags (macros allowed, see macros.txt).
      // Формат отображения фрагов (допускаются макроподстановки, см. macros.txt).
      "fragsFormatLeft": "{{frags}}",
      "fragsFormatRight": "{{frags}}",
      // Extra fields. Each field have size 350x25. Fields are placed one above the other.
      // Дополнительные поля. Каждое поле имеет размер 350x25. Поля располагаются друг над другом.
      // Set of formats for left panel (extended format supported, see above)
      // Набор форматов для левой панели (поддерживается расширенный формат, см. выше)
      "extraFieldsLeft": [
        // XMQP service activation indicator (see above).
        // Индикатор активации сервиса XMQP (см. выше).
        ${"xmqpService"}
      ],
      // Set of formats for right panel (extended format supported, see above)
      // Набор форматов для правой панели (поддерживается расширенный формат, см. выше)
      "extraFieldsRight": [
        // enemy spotted status marker (see above).
        // маркер статуса засвета (см. выше).
        ${"enemySpottedMarker"}
      ]
    },
    // Options for the "medium" panels - the first of the medium panels.
    // Режим ушей "medium" - первые средние уши в игре.
    "medium": {
      // false - disable (отключить)
      "enabled": true,
      // Minimum width of the player's name column, 0-250. Default is 46.
      // Минимальная ширина поля имени игрока, 0-250. По умолчанию: 46.
      "width": 40,
      // true - disable platoon icons
      // true - убрать отображение иконок взвода
      "removeSquadIcon": false, 
      // transparency of vehicle level
      // прозрачность уровня танка
      "vehicleLevelAlpha": 100,	  
      // Display format for the left panel (macros allowed, see macros.txt).
      // Формат отображения для левой панели (допускаются макроподстановки, см. macros.txt).
      "formatLeft": "<font color='#DDDDDD' alpha='{{alive?#FF|#80}}'><font face='Webdings' size='9' color='{{c:xte}}'>n</font><font size='5'> </font><font face='Webdings' size='11' color='{{c:wn8}}'>n</font><font size='5'> </font><font face='Webdings' size='9' color='{{c:t-rating}}'>n</font></font>",
      // Display format for the right panel (macros allowed, see macros.txt).
      // Формат отображения для правой панели (допускаются макроподстановки, см. macros.txt).
      "formatRight": ${"playersPanel.medium.formatLeft"},
      // Display format for frags (macros allowed, see macros.txt).
      // Формат отображения фрагов (допускаются макроподстановки, см. macros.txt).
      "fragsFormatLeft": "{{frags}}",
      "fragsFormatRight": "{{frags}}",
      // Extra fields. Each field have size 350x25. Fields are placed one above the other.
      // Дополнительные поля. Каждое поле имеет размер 350x25. Поля располагаются друг над другом.
      // Set of formats for left panel (extended format supported, see above)
      // Набор форматов для левой панели (поддерживается расширенный формат, см. выше)
      "extraFieldsLeft": [
        // XMQP service activation indicator (see above).
        // Индикатор активации сервиса XMQP (см. выше).
        ${"xmqpService"}
      ],
      // Set of formats for right panel (extended format supported, see above)
      // Набор форматов для правой панели (поддерживается расширенный формат, см. выше)
      "extraFieldsRight": [
        // enemy spotted status marker (see above).
        // маркер статуса засвета (см. выше).
        ${"enemySpottedMarker"}
      ]
    },
    // Options for the "medium2" panels - the second of the medium panels.
    // Режим ушей "medium2" - вторые средние уши в игре.
    "medium2": {
      // false - disable (отключить)
      "enabled": true,
      // Maximum width of the vehicle name column, 0-250. Default is 65.
      // Максимальная ширина поля названия танка, 0-250. По умолчанию: 65.
      "width": 200,
      // true - disable platoon icons
      // true - убрать отображение иконок взвода
      "removeSquadIcon": false,
      // transparency of vehicle level
      // прозрачность уровня танка
      "vehicleLevelAlpha": 100,	  
      // Display format for the left panel (macros allowed, see macros.txt).
      // Формат отображения для левой панели (допускаются макроподстановки, см. macros.txt).
      "formatLeft":  "<textformat leading='9' tabstops='[25,50,75,190]'><font color='#DDDDDD' alpha='{{alive?#FF|#80}}'><font face='mono' size='12' color='{{c:kb}}'>{{kb%2d~k|--k}}</font><tab><font face='mono' size='11' color='{{c:t-battles}}'>{{t-battles%4d|----}}</font><tab><font face='Webdings' size='12' color='{{c:wn8}}'> n</font></font>  <img src='xvm://res/icons/xvm/xvm-user-{{xvm-user|none}}.png'> <tab><font alpha='{{alive?#FF|#80}}'>{{name%.12s~..}}</font><font color='#FFCC66'>{{clan}}</font><tab> </textformat>",
      // Display format for the right panel (macros allowed, see macros.txt).
      // Формат отображения для правой панели (допускаются макроподстановки, см. macros.txt).
      "formatRight": "<textformat leading='9' tabstops='[115,135,155]'><font alpha='{{alive?#FF|#80}}'>{{name%.12s~..}}</font><font color='#FFCC66' alpha='{{alive?#FF|#80}}'>{{clan}}</font><tab><font color='#DDDDDD'><font face='mono' size='12' color='{{c:kb}}'>{{kb%2d~k|--k}}</font><tab><font face='mono' size='12' color='{{c:t-battles}}'>{{t-battles%4d|----}}</font><tab><font face='Webdings' size='12' color='{{c:wn8}}'> n</font>  <img src='xvm://res/icons/xvm/xvm-user-{{xvm-user|none}}.png'> </font></textformat>",
      // Display format for frags (macros allowed, see macros.txt).
      // Формат отображения фрагов (допускаются макроподстановки, см. macros.txt).
      "fragsFormatLeft": "{{frags}}",
      "fragsFormatRight": "{{frags}}",
      // Extra fields. Each field have size 350x25. Fields are placed one above the other.
      // Дополнительные поля. Каждое поле имеет размер 350x25. Поля располагаются друг над другом.
      // Set of formats for left panel (extended format supported, see above)
      // Набор форматов для левой панели (поддерживается расширенный формат, см. выше)
      "extraFieldsLeft": [
        // XMQP service activation indicator (see above).
        // Индикатор активации сервиса XMQP (см. выше).
        ${"xmqpService"}
      ],
      // Set of formats for right panel (extended format supported, see above)
      // Набор форматов для правой панели (поддерживается расширенный формат, см. выше)
      "extraFieldsRight": [
        // enemy spotted status marker (see above).
        // маркер статуса засвета (см. выше).
        ${"enemySpottedMarker"}
      ]
    },
    // Options for the "large" panels - the widest panels.
    // Режим ушей "large" - широкие уши в игре.
    "large": {
      // false - disable (отключить)
      "enabled": true,
      // Minimum width of the player's name column, 0-250. Default is 170.
      // Минимальная ширина поля имени игрока, 0-250. По умолчанию: 170.
      "width": 100,
      // true - disable platoon icons
      // true - убрать отображение иконок взвода
      "removeSquadIcon": false,
      // transparency of vehicle level
      // прозрачность уровня танка
      "vehicleLevelAlpha": 100,	  
      // Display format for player nickname (macros allowed, see macros.txt).
      // Формат отображения имени игрока (допускаются макроподстановки, см. macros.txt).
      "nickFormatLeft": "<font color='#DDDDDD' alpha='{{alive?#FF|#80}}'><font face='mono' size='13' color='{{c:kb}}'>{{kb%2d~k|--k}}</font> <font face='mono' size='12' color='{{c:t-battles}}'>{{t-battles%4d|----}}</font> <font face='Webdings' size='9' color='{{c:xte}}'>n</font><font size='5'> </font><font face='Webdings' size='10' color='{{c:wn8}}'>n</font><font size='5'> </font><font face='Webdings' size='9' color='{{c:rating}}'>n</font><font size='5'> </font><font face='Webdings' size='9' color='{{c:t-rating}}'>n</font></font> <img src='xvm://res/icons/xvm/xvm-user-{{xvm-user|none}}.png'> ",
      "nickFormatRight": ${"playersPanel.large.nickFormatLeft"},
      // Display format for vehicle name (macros allowed, see macros.txt).
      // Формат отображения названия танка (допускаются макроподстановки, см. macros.txt).
      "vehicleFormatLeft": "<textformat leading='9' tabstops='[1,110]'> <tab><font alpha='{{alive?#FF|#80}}'>{{name%.14s~..}}</font><font color='#FFCC66' alpha='{{alive?#FF|#80}}'>{{clan}}</font><tab> </textformat>",
      "vehicleFormatRight": ${"playersPanel.large.vehicleFormatLeft"},
      // Display format for frags (macros allowed, see macros.txt).
      // Формат отображения фрагов (допускаются макроподстановки, см. macros.txt).
      "fragsFormatLeft": "{{frags}}",
      "fragsFormatRight": "{{frags}}",
      // Extra fields. Each field have size 350x25. Fields are placed one above the other.
      // Дополнительные поля. Каждое поле имеет размер 350x25. Поля располагаются друг над другом.
      // Set of formats for left panel (extended format supported, see above)
      // Набор форматов для левой панели (поддерживается расширенный формат, см. выше)
      "extraFieldsLeft": [
            //{ "x": 165, "y": 1, "h": 3, "w": "{{hp-max:120|120}}", "bgColor": 0, "alpha": "{{alive?50|0}}" },
            //{ "x": 165, "y": 1, "h": 3, "w": "{{hp:120|120}}", "bgColor": ${"colors.xc":"def.al"}, "alpha": "{{alive?30|0}}" }
        // XMQP service activation indicator (see above).
        // Индикатор активации сервиса XMQP (см. выше).
        ${"xmqpService"}
      ],
      // Set of formats for right panel (extended format supported, see above)
      // Набор форматов для правой панели (поддерживается расширенный формат, см. выше)
      "extraFieldsRight": [
            //{ "x": 165, "y": 1, "h": 3, "w": "{{hp-max:120|120}}", "bgColor": 0, "alpha": "{{alive?50|0}}" },
            //{ "x": 165, "y": 1, "h": 3, "w": "{{hp:120|120}}", "bgColor": ${"colors.xc":"def.en"}, "alpha": "{{alive?30|0}}" },
            // enemy spotted status marker (see above).
            // маркер статуса засвета (см. выше).
            ${"enemySpottedMarker"}
      ]
    }
  }
}
