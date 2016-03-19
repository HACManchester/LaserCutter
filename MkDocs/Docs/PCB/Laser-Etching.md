# Laser Etching

| Important |
| ----- |
| The information here should be for now considered experimental / theoretical / untested. |
| It's important to make sure we don't get reflections back into the laser cutter optics from the copper |
| Try to use a highest speed / lowest power as possible to avoid reflections |
| It's probably best to check with the Master Laser Guardian first (Bob) before actually trying anything. |

## Import into Visicut

At this point we can now import each svg from KiCad into Visicut

  * Open up Visicut
  * Drag and Drop the svg into Visicut
  * Select the Position tab at the bottom right
  * Enter Values in for X and Y, these need to be consistant when marking both layers

<a href="../../images/PCB/Visicut-1.png"><img src="../../images/PCB/Visicut-1.png" height="50%" width="50%" ></a> <br>

  * Select **Map by Single Property**
  * Select **Map by Type**
  * Tick next to **Shape** and select **Engrave Solid**

<a href="../../images/PCB/Visicut-2.png"><img src="../../images/PCB/Visicut-2.png" height="50%" width="50%" ></a> <br>

## Notes

It's not possible to burn away copper with a Co2 Laser, the copper acts like a heat sink and draws away too much of the heat.
But we can use the Etch method by burning away paint from the PCB.
To burn away copper with the laser would probably require oxygen assist, or a fibre laser.

  * We need to try avoiding going over the board multiple times, this can lead to unpredictable results
  * Power should be low as possible, Speed as high as possible, we need to avoid reflections into the optics
  * The air assist should blow onto the part while it's being cut, according to Bob the vacume is located at the bottom so cutting top to bottom should be okay <br>
  * One thing to watch out for is if the evaporated paint from the engrave blows over an area already engraved and settles this can interfere with the engraving

## TODO

  * Try a Z Height from the top of the board to the laser, instead of using the bed as the zero point
  * Try different speeds / powers, starting with the lowest power / highest speed first
  * some users have managed it with a 1W / 2W Laser LED, try 5% first perhaps
