# Kicad Exporting Gerbers

One of the first steps we need to do is get some gerber and drill files exported from Kicad.
These files will be imported into FlatCAM for isolation routing and for generating the svg export for visicut.

TODO I'm not sure of the minimum track width at this stage, something to be looked into, maybe a drc check file for KiCad

## Setting the Auxiliary Axis

First we want to set the Auxiliary to the bottom left hand corner of the board <br>

  * Select **Place -> Drill and Place Offset** from the Menu
  * Click on the bottom left hand corner of the board for the 0,0 point
  * A red circle should now show up at this corner

<a href="../../images/PCB/KiCad/KiCad-Gerber1.png"><img src="../../images/PCB/KiCad/KiCad-Gerber1.png" height="50%" width="50%" ></a> <br>

<a href="../../images/PCB/KiCad/KiCad-Gerber2.png"><img src="../../images/PCB/KiCad/KiCad-Gerber2.png" height="50%" width="50%" ></a> <br>

## Exporting Gerbers

Next we want to use the Plot option to output the drill and Gerber Files

  * Select **File -> Plot** from the menu

<a href="../../images/PCB/KiCad/KiCad-Gerber3.png"><img src="../../images/PCB/KiCad/KiCad-Gerber3.png" height="50%" width="50%" ></a> <br>

  * Next select the output directory
  * Select which layers to export (Top / Bottom)
  * Make sure **Use auxiliary axis as origin** is ticked
  * Click Plot

<a href="../../images/PCB/KiCad/KiCad-Gerber4.png"><img src="../../images/PCB/KiCad/KiCad-Gerber4.png" height="50%" width="50%" ></a> <br>

## Exporting Drill Files

Next we're going to generate the drill files, since FlatCAM can read these too

  * Select **Generate Drill File**
  * You should be able to leave most of the options at the defaults
  * Make sure **Drill Origin** is set to **Auxiliary Axis**
  * Click **Drill File** to generate the .drl file

<a href="../../images/PCB/KiCad/KiCad-Gerber5.png"><img src="../../images/PCB/KiCad/KiCad-Gerber5.png" height="50%" width="50%" ></a> <br>
