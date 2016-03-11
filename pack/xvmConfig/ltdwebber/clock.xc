/**
 * Clock in hangar
 */
{
  "clock": {
    // Show clock in hangar.
    "enabled": true,
    // Horizontal position.
    "x": -15,
    // Vertical position.
    "y": 40,
    // Width.
    "width": 300,
    // Height.
    "height": 60,
    // true - place at top of other windows, false - at bottom.
    "topmost": true,
    // Horizontal alignment of field at screen ("left", "center", "right").
    "align": "right",
    // Vertical alignment of field at screen ("top", "center", "bottom").
    "valign": "top",
    // Horizontal alignment of text in field ("left", "center", "right").
    "textAlign": "right",
    // vertical alignment of text in field ("top", "center", "bottom").
    "textVAlign": "center",
    // Transparency in percents [0..100].
    "alpha": 100,
    // Rotation in degrees [0..360].
    "rotation": 0,
    // If set, draw border with specified color ("0xXXXXXX").
    "borderColor": null,
    // If set, draw background with specified color ("0xXXXXXX").
    "bgColor": null,
    // If set, draw image at background.
    // example: "bgImage": "cfg://My/img/my.png",
    "bgImage": null,
    // Anti aliasing mode ("advanced" or "normal").
    "antiAliasType": "advanced",
    // Macros available (case sensitive):
    //
    // {{Y}}     - full year (4 digits)
    // {{MMM}}   - full month name (January)
    // {{MM}}    - short month name (Jan)
    // {{M}}     - month number (1-12)
    // {{D}}     - day number (1-31)
    // {{WW}}    - full weekday name (Monday)
    // {{W}}     - short weekday name (Mon)
    // {{h}}     - hour
    // {{m}}     - minute
    // {{s}}     - second
    // {{H}}     - hour in 12-hour format
    // {{AM|PM}} - AM/PM
    // Macros formatting allowed, for example: {{AM?a.m.|p.m.}}
    //
    // Clock format.
    "format": "<font face='$FieldFont'><font size='19'>{{WW}} {{D%02d}}. {{MMM}}</font><font size='26'> {{h%02d}}:{{m%02d}}</font></font>",
    // Shadow.
    "shadow": {
      // false - no shadow.      
      "enabled": true,
      "distance": 0,             // (in pixels)
      "angle": 0,                // (0.0 .. 360.0)
      "color": "0x000000",       // "0xXXXXXX"
      "alpha": 70,               // (0 .. 100)
      "blur": 4,                 // (0.0 .. 255.0)
      "strength": 2              // (0.0 .. 255.0)
    }
  }
}
