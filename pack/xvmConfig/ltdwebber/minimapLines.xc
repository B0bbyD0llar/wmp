﻿/**
 * Minimap lines. Only for owned vehicle.
 * Линии на миникарте. Только для своей техники. 
 */
{
  "def": {
     // "inmeters": true  - make line size to be in real map meters.
     // "inmeters": false - make line size to be in minimap interface clip points. Minimap interface clip side is 210 points.
     // "inmeters": true  - дистанция линии в метрах реальной карты.
     // "inmeters": false - дистанция линии в точках миникарты. Сторона миникарты 210 точек.	 
     // "enabled": true - включен; "color" - цвет.
     // Own vehicle direction definition.
	 // Шаблон направления корпуса своей техники.
    "vehicle": { "enabled": true, "inmeters": true, "color": "0xFFFFFF" },
     // Camera direction definition.
	 // Шаблон направления камеры от своей техники.
    "camera": { "enabled": true, "inmeters": true, "color": "0xFFCC66" },
     // Dots definition.
	 // Шаблон точек.
    "dot": { "false": false, "inmeters": true, "color": "0xFFCC66" },
     // Horizontal gun traverse angle definition.
	 // Шаблон угла горизонтальной наводки.
    "traverseAngle": { "enabled": true, "inmeters": true, "color": "0xCCCCCC" }
  },
  "lines": {
	   "enabled": true,
	   // Distance between farthest corners at 1km map is somewhat more than 1400 meters.
	   // Sections can contain any number of lines.
	   // To set a point try setting line with length of one and large thickness.
	   // You can leave one line for simplicity. Remember comma positioning rules.
       //---------------------------------------------------------------------------------------------------
       // Дистанция из угла в угол на километровой карте получается немногим более 1400 метров.
       // В секциях располагается произвольное кол-во отрезков.
       // Для постановки точки попробуйте отрезок длиной в единицу и с большой толщиной.
       // Для простоты можете оставить один длинный отрезок, не забыв убрать запятую. В конце секции запятая не ставится.
       // "from" - начало отрезка; "to" - конец; "thickness" - толщина; "alpha" - прозрачность.
       //---------------------------------------------------------------------------------------------------
       // Own vehicle direction.
       // Направление корпуса своей техники.    
	   "vehicle": [
         { "$ref": { "path": "def.vehicle" }, "from": 50,  "to": 97, "thickness": 1.0, "alpha": 45 },
         { "$ref": { "path": "def.vehicle" }, "from": 100,  "to": 147, "thickness": 0.9, "alpha": 40 },
         { "$ref": { "path": "def.vehicle" }, "from": 150,  "to": 197, "thickness": 0.8, "alpha": 35 },
         { "$ref": { "path": "def.vehicle" }, "from": 200, "to": 248, "thickness": 0.7, "alpha": 33 },
         { "$ref": { "path": "def.vehicle" }, "from": 250, "to": 298, "thickness": 0.65, "alpha": 30 },
         { "$ref": { "path": "def.vehicle" }, "from": 300, "to": 398, "thickness": 0.6, "alpha": 30 },
         { "$ref": { "path": "def.vehicle" }, "from": 400, "to": 498, "thickness": 0.55, "alpha": 30 },
         { "$ref": { "path": "def.vehicle" }, "from": 500, "to": 2000, "thickness": 0.5, "alpha": 30 }
    ],
    // Camera direction.
	// Направление камеры от своей техники.
    "camera": [
	     { "$ref": { "path": "def.camera" }, "from": 50,  "to": 97, "thickness": 1.5, "alpha": 45 },
         { "$ref": { "path": "def.camera" }, "from": 100,  "to": 147, "thickness": 1.4, "alpha": 40 },
         { "$ref": { "path": "def.camera" }, "from": 150,  "to": 197, "thickness": 1.3, "alpha": 35 },
         { "$ref": { "path": "def.camera" }, "from": 200, "to": 248, "thickness": 1.2, "alpha": 33 },
         { "$ref": { "path": "def.camera" }, "from": 250, "to": 298, "thickness": 1.1, "alpha": 30 },
         { "$ref": { "path": "def.camera" }, "from": 300, "to": 398, "thickness": 1, "alpha": 30 },
         { "$ref": { "path": "def.camera" }, "from": 400, "to": 498, "thickness": 0.9, "alpha": 30 },
         { "$ref": { "path": "def.camera" }, "from": 500, "to": 2000, "thickness": 0.75, "alpha": 30 }
    ],
    // Gun traverse angles may differ depending on vehicle angle relative to ground. See pics at http://goo.gl/ZqlPa
       // Углы горизонтальной наводки могут меняться в зависимости от углов постановки машины на склонах местности. Подробнее по ссылке: http://goo.gl/ZqlPa	
    //---------------------------------------------------------------------------------------------------
    // Horizontal gun traverse angle lines.
	// Углы горизонтальной наводки.
    "traverseAngle": [
         { "$ref": { "path": "def.traverseAngle" }, "from": 50, "to": 97, "thickness": 1.0, "alpha": 50 },
         { "$ref": { "path": "def.traverseAngle" }, "from": 100, "to": 147, "thickness": 0.9, "alpha": 48 },
         { "$ref": { "path": "def.traverseAngle" }, "from": 150, "to": 197, "thickness": 0.8, "alpha": 46 },
         { "$ref": { "path": "def.traverseAngle" }, "from": 200, "to": 248, "thickness": 0.7, "alpha": 44 },
         { "$ref": { "path": "def.traverseAngle" }, "from": 250, "to": 298, "thickness": 0.65, "alpha": 42 },
         { "$ref": { "path": "def.traverseAngle" }, "from": 300, "to": 398, "thickness": 0.6, "alpha": 40 },
         { "$ref": { "path": "def.traverseAngle" }, "from": 400, "to": 498, "thickness": 0.55, "alpha": 40 },
         { "$ref": { "path": "def.traverseAngle" }, "from": 500, "to": 2000, "thickness": 0.5, "alpha": 40 }
    ]
  }
}