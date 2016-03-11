/**
 * Parameters for tank carousel
 * Параметры карусели танков
 */
{
  "carousel": {
    // false - Disable customizable carousel.
	// false - Отключить настраиваемую карусель.
    "enabled": true,
    // Scale of carousel cells.
	// Масштаб ячеек карусели.
    "zoom": 1,
    // Number of rows at carousel.
	// Количество рядов карусели.
    "rows": 4,
    // Spacing between carousel cells.
	// Отступ между ячейками карусели.
    "padding": {
        "horizontal": 1,
        "vertical": 1
    },
    // Background transparency (default - 60)
    // Прозрачность подложки (по умолчанию - 60)
    "backgroundAlpha": 60,
    // Scrolling speed (default - 20)
    // Скорость прокрутки (по умолчанию - 20)
    "scrollingSpeed": 20,
    // true - show filters even if all tanks fit on the screen.
    // true - показывать фильтры даже если все танки помещаются на экране.
    "alwaysShowFilters": true,
    // true - hide cell "Buy tank".
    // true - скрыть ячейку "Купить танк".
    "hideBuyTank": false,
    // true - hide cell "Buy slot".
    // true - скрыть ячейку "Купить слот".
    "hideBuySlot": false,
    // true - show total slots count in the "Buy vehicle" cell.
    // true - показывать общее количество слотов в ячейке "Купить машину".
    "showTotalSlots": true,
    // true - show used slots count in the "Buy slot" cell.
    // true - показывать количество занятых слотов в ячейке "Купить слот".
    "showUsedSlots": true,
    // Visibility filters.
    // Видимость фильтров.
    "filters": {
      // false - hide filter.
      // false - скрыть фильтр.
      "nation":   { "enabled": true },  // nation           / страна
      "type":     { "enabled": true },  // vehicle class    / тип техники
      "favorite": { "enabled": true },  // favorite tanks   / основные танки
      "gameMode": { "enabled": true },  // fallout mode tanks / танки для "боя до последнего"
      "level":    { "enabled": true },  // vehicle level    / уровень техники
      "prefs":    { "enabled": true }   // other filters    / другие фильтры
    },
	// Spacing between filters cells.
    // Отступ между ячейками фильтров.
    "filtersPadding": {
        "horizontal": 11,   // по горизонтали
        "vertical": 13      // по вертикали
    },
    // Standard cell elements.
	// Стандартные элементы ячеек.
    "fields": {
      // "visible"  - the visibility of the element / видимость элемента
      // "dx"       - horizontal shift              / смещение по горизонтали
      // "dy"       - vertical shift                / смещение по вертикали
      // "alpha"    - transparency                  / прозрачность
      // "scale"    - scale                         / масштаб
      //
      // Vehicle class icon.
	  // Иконка типа техники.
      "tankType": { "visible": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 },
      // Vehicle level.
	  // Уровень техники
      "level":    { "visible": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 },
      // todo: english description
	  // Иконка не сбитого кратного опыта за первую победу в день.
      "multiXp":  { "visible": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 },
      // todo: english description
      // Иконка не сбитого опыта за первую победу в день.	  
      "xp":       { "visible": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 },
      // Vehicle name.
      // Название танка.	  
      "tankName": { "visible": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 },
      // Status text (Crew incomplete, Repairs required)
	  // Статусный текст (Неполный экипаж, Требуется ремонт).
      "statusText": { "visible": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 },
      // Status text for "Buy tank" and "Buy slot" slots.
      // Статусный текст для слотов "Купить танк" и "Купить слот".
      "statusTextBuy": { "visible": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 },
      // Clan lock timer
      // Таймер блокировки танка
      "clanLock":   { "visible": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 },
      // Activate / deactivate button.
      // Кнопка активации / деактивации.
      "activateButton": { "dx": 0, "dy": 0, "alpha": 100, "scale": 1 }
    },
    // Extra cell fields (see playersPanel.xc).
	// Дополнительные поля ячеек (см. playersPanel.xc).
    "extraFields": [
      // Sign of mastery.
	  // Знак мастерства.
	  { "x": 0, "y": 14, "format": "<img src='img://gui/maps/icons/library/proficiency/class_icons_{{v.mastery}}.png' width='28' height='28'>" },
	  // BattleTier
	  { "x": 38, "y": 1, "format": "<b><font size='9' color='#C8C8B5'>{{v.battletiermin}}-{{v.battletiermax}}</font></b>", "shadow": { "color": "0x000000", "alpha": 0.8, "blur": 1, "strength": 2, "distance": 0, "angle": 0 }},
	  // Vehicle Level
	  //{ "x": 18, "y": -3, "format": "<b><font size='15' face='$FieldFont' color='#C8C8B5' > {{v.level}}</font></b>", "shadow": { "color": "0x000000", "alpha": 0.8, "blur": 2, "strength": 3, "distance": 0, "angle": 0 }},
	  { "Name": "Expected Dmg", "x": 1, "y": 78, "format": "<font size='10' color='#C8C8B5'>{{v.wn8expd%2d|-}}</font><font size='9' color='{{v.c_wn8effd}}'>({{v.wn8effd%2.02f|-}})</font>" },
	  { "Name": "Winrate","x": 1, "y": 88, "format": "<font face='mono' size='13' color='{{v.c_winrate}}'>{{v.winrate%2d~%|--%}}</font>", "shadow": { "color": "0x000000", "alpha": 80, "blur": 2, "strength": 3, "distance": 0, "angle": 0 }},
	  { "Name": "MarkOnGunIMG","x": 3, "y": 51, "w": 14, "h": 17, "src": "cfg://ltdwebber/img/marksongun/{{level<5?|{{v.marksOnGun|x}}}}.png", "shadow": {} },
	  { "Name": "MarkOnGun","x": 10, "y": 49, "align": "center","format": "<b><font size='9' color='#C8C8B5'>{{v.marksOnGun|-}}</font></b>", "shadow": { "color": "0x000000", "alpha": 80, "blur": 2, "strength": 3, "distance": 0, "angle": 0 } },
	  { "Name": "MarkOnGunPer","x": 1, "y": 66, "format": "<font face='mono' size='11' color='{{v.c_damageRating}}'>{{v.damageRating%2.0f~%|-%}}</font>", "shadow": { "color": "0x000000", "alpha": 80, "blur": 2, "strength": 3, "distance": 0, "angle": 0 } },
	  { "Name": "xTE","x": 173, "y": 78, "align":"right", "format": "<font face='mono' size='9'>xTE:</font><font size='9' color='{{v.c_xte}}'>{{v.xte%2d~|--}}</font>", "shadow": { "color": "0x000000", "alpha": 80, "blur": 2, "strength": 3, "distance": 0, "angle": 0 }}
    ],
	// Order of nations.
    // Порядок наций.
    //"nations_order": ["ussr", "germany", "usa", "france", "uk", "china", "japan", "czech"],
    "nations_order": [],
    // Order of types of vehicles.
    // Порядок классов техники.
    "types_order":   ["lightTank", "mediumTank", "heavyTank", "AT-SPG", "SPG"],
    // Tank sorting criteria, available options: (minus = reverse order)
    // Критерии сортировки танков, доступные значения: (минус = в обратном порядке)
    // "nation", "type", "level", "maxBattleTier", "premium", "winRate", "-level", "-maxBattleTier", "-premium", "-winRate"
    "sorting_criteria": ["nation", "type", "level"],
	// Suppress the tooltips for tanks in carousel
	// Убрать подсказки к танкам в карусели
    "suppressCarouselTooltips": false
  }
}
