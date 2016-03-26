# Laser Engraving

## Important

  * **The information here should be for now considered experimental / untested.**
  * **It's probably best to check with the Master Laser Guardian first (Bob) before actually trying anything.**
  * **Try to use a highest speed / lowest power as possible to avoid reflections that might impact the optices from the copper**

## Overview

It's not possible to burn away copper with a Co2 Laser, the copper acts like a heat sink and draws away too much of the heat.
To burn away copper with the laser would probably require oxygen assist, or a fibre laser.
But we can burn away paint from the board then use chemicals to etch away the exposed copper

Some things to be aware of:

  * We need to try avoiding going over the board multiple times, this can lead to unpredictable results
  * The air assist should blow onto the part while it's being cut, according to Bob the vacuum is located at the bottom so cutting top to bottom should be okay
    with the orange laser cutter

## Import into Visicut

### Initial Import

At this point we can now import each svg from KiCad into Visicut

  * Open up Visicut
  * Drag and Drop the svg into Visicut
  * Select the Position Tab
  * If your including multiple layers such as the drill points and the pcb, use the center position option to get everything aligned okay

Importing the Drill svg should allow etching within the drill holes to make locating the holes easier when actually drilling the final board.

<a href="../../images/PCB/Visicut/Visicut-Track1.png"><img src="../../images/PCB/Visicut/Visicut-Track1.png" height="50%" width="50%" ></a> <br>

### Mapping the Colour

  * Select **Map by Single Property**
  * Select **Map by Color**
  * Tick the **Blue** colour under the pcb svg
  * Select **Engrave Solid**

<a href="../../images/PCB/Visicut/Visicut-Track2.png"><img src="../../images/PCB/Visicut/Visicut-Track2.png" height="50%" width="50%" ></a> <br>

### Laser Settings

  * Under Laser Settings
  * Make sure speed is set to 100
  * **TODO** check which power option is the best, starting from the lowest moving upwards

<a href="../../images/PCB/Visicut/Visicut-Track3.png"><img src="../../images/PCB/Visicut/Visicut-Track3.png" height="50%" width="50%" ></a> <br>

### Drill Points

If you want to etch away the holes for the drill points then rinse and repeat for the drill svg

<a href="../../images/PCB/Visicut/Visicut-Track4.png"><img src="../../images/PCB/Visicut/Visicut-Track4.png" height="50%" width="50%" ></a> <br>

### Testing on MDF

For testing on a sheet of paper or mdf I've found the following seems to work for some settings

  * engrave solid (this rasters the board)
  * power 0.5
  * speed 100

### DPI

The default DPI Setting is 500 which is the best one to use for most accuracy. <br>
For greater speed with engraving it's possible to use a lower DPI setting, but accuracy will suffer as a result.

## TODO

  * Try a Z Height from the top of the board to the laser, instead of using the bed as the zero point
  * Try different powers, starting with the lowest power first
  * Look into using a Jig for Alignment
