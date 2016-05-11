/**
 * Parameters of the Battle Loading screen.
 * Параметры экрана загрузки боя.
 */
{
  "battleLoading": {
    // Format of clock on the Battle Loading Screen.
    // Формат часов на экране загрузки боя.
    // http://php.net/date
    "clockFormat": "H:i",
    // true - enable display of battle tier.
    // true - включить отображение уровня боя.
    "showBattleTier": false,
    // true - disable Platoon icons. This blank space can house, for example, clan logos.
    // true - убрать отображение иконки взвода. На пустое поле можно вывести, например, иконку клана.
    "removeSquadIcon": false,
    // true - disable vehicle level indicator.
    // true - убрать отображение уровня танка.
    "removeVehicleLevel": true,
    // true - disable vehicle type icon. This space will be used for formatted vehicle field.
    // true - убрать отображение типа танка. Пустое место будет использовано под форматируемое поле.
    "removeVehicleTypeIcon": true,
    // Show border for name field (useful for config tuning)
    // Показывать рамку для поля имени игрока (полезно для настройки конфига)
    "nameFieldShowBorder": false,
    // Show border for vehicle field (useful for config tuning)
    // Показывать рамку для поля имени танка (полезно для настройки конфига)
    "vehicleFieldShowBorder": false,
    // X offset for allies squad icons
    // Cмещение по оси X значка взвода для союзников
    "squadIconOffsetXLeft": 0,
    // X offset for enemies squad icons field
    // Cмещение по оси X значка взвода для противников
    "squadIconOffsetXRight": 0,
    // X offset for allies player names field
    // Cмещение по оси X поля ника для союзников
    "nameFieldOffsetXLeft": 0,
    // Width delta for allies player names field
    // Изменение ширины поля ника союзников
    "nameFieldWidthDeltaLeft": 0,
    // X offset for enemies player names field
    // Cмещение по оси X поля ника для противников
    "nameFieldOffsetXRight": 0,
    // Width delta for enemies player names field
    // Изменение ширины поля ника противников
    "nameFieldWidthDeltaRight": 0,
    // X offset for "formatLeftVehicle" field
    // Cмещение по оси X поля названия танка для союзников
    "vehicleFieldOffsetXLeft": 0,
    // Width delta for allies vehicle names field
    // Изменение ширины поля названия танка союзников
    "vehicleFieldWidthDeltaLeft": 0,
    // X offset for enemies vehicle names field
    // Смещение по оси X поля названия танка противников
    "vehicleFieldOffsetXRight": 0,
    // Width delta for enemies vehicle names field
    // Изменение ширины поля названия танка противников
    "vehicleFieldWidthDeltaRight": 0,
    // X offset for allies vehicle icons
    // Смещение по оси X иконки танка для союзников
    "vehicleIconOffsetXLeft": 0,
    // X offset for enemies vehicle icons
    // Смещение по оси X иконки танка для противников
    "vehicleIconOffsetXRight": 0,
    // Display options for Team/Clan logos.
    // Параметры отображения иконки игрока/клана.
    "clanIcon": ${"common.xc":"clanIconBL"},
    // false - disable highlight of icons during battle start depends on ready state.
    // false - отключить затемнение иконки не загрузившегося игрока.
    "darkenNotReadyIcon": true,
    // Display format for the left panel (macros allowed, see readme-en.txt).
    // Формат отображения для левой панели (допускаются макроподстановки, см. macros.txt).
    "formatLeftNick": "<img src='xvm://res/icons/flags/{{flag|default}}.png' width='12' height='10'> <img src='xvm://res/icons/xvm/xvm-user-{{xvm-user|none}}.png'> <font alpha='{{alive?#FF|#80}}' size='13'>{{name%.26s~..}}<font color='#FFCC66'>{{clan}}</font></font>",
    // Display format for the right panel (macros allowed, see readme-en.txt).
    // Формат отображения для правой панели (допускаются макроподстановки, см. macros.txt).
    "formatRightNick": "<font alpha='{{alive?#FF|#80}}' size='13'>{{name%.26s~..}}<font color='#FFCC66'>{{clan}}</font></font> <img src='xvm://res/icons/xvm/xvm-user-{{xvm-user|none}}.png'> <img src='xvm://res/icons/flags/{{flag|default}}.png' width='12' height='10'>", 
    // Display format for the left Players Panel (macros allowed, see readme-en.txt).
    // Формат отображения для левой панели (допускаются макроподстановки, см. macros.txt).
    "formatLeftVehicle": "<font face='mono' size='13'><font>{{kb%2d~k|--k}}</font> <font size='8'>w</font><font size='5'> </font><font size='13' color='{{c:xwn8}}'>{{xwn8%2d|--}}</font> <font size='13' color='{{c:rating}}'>{{rating%2d~%|--%}}</font> <font size='8'>x</font><font size='5'> </font><font size='13' color='{{c:xte}}'>{{xte%2d|--}}</font>   </font>",
    // Display format for the right Players Panel (macros allowed, see readme-en.txt).
    // Формат отображения для правой панели (допускаются макроподстановки, см. macros.txt).
    "formatRightVehicle": "<font face='mono' size='13'><font>{{kb%2d~k|--k}}</font> <font size='8'>w</font><font size='5'> </font><font size='13' color='{{c:xwn8}}'>{{xwn8%2d|--}}</font> <font size='13' color='{{c:rating}}'>{{rating%2d~%|--%}}</font> <font size='8'>x</font><font size='5'> </font><font size='13' color='{{c:xte}}'>{{xte%2d|--}}</font>   </font>"
  }
}
