# FlatCAM - Single Sided boards

There's a piece of software called FlatCAM, normally this is used in situations where you want to mill out a PCB with a CNC.
However it's also usefull for exporting SVG's from Gerbers and doing isolation routing.

  * <http://flatcam.org/>
  * <http://flatcam.org/manual/index.html>
  * <https://bitbucket.org/jpcgt/flatcam>

## Isolation Routing

Isolation routing is where you surround each track on the PCB with a line. So instead of removing all the Copper on the board,
this just removes the minimum needed to seperate one track from another.

  * In the case of a Laser Cutter the less paint removed from the board the better, the more paint you remove the more likley it will be
    that the paint will re-settle elsewhere on the board.
  * Just having the outlines of the tracks removed by the etchant means that less etchant is needed to make the board.
  * It makes the board look cooler.

There's also features built into FlatCAM for double sided boards, and adding in holes for a jig which I'm hoping to explore later on. <br>
The export to SVG features is relatively new, and at the time of writing only available in the master branch.
I've placed a working copy (python) under <https://github.com/HACManchester/Apps.Cad/tree/master/Builds>

## Importing Gerber into FlatCAM

The first step is to import the Gerber into FlatCAM, and a drill file if you've created one

  * File -> Open -> Select Gerber File
  * File -> Open -> Select Drill File

<a href="../../images/PCB/FlatCAM/FlatCAM-Single1.png"><img src="../../images/PCB/FlatCAM/FlatCAM-Single1.png" height="50%" width="50%" ></a> <br>

(I should probably point out that the image pictured has tracks too small to be used with the laser, but this is only for demonstration purposes)

## Generating the Geometry

The next step is to generate a Geometry for the imported Gerber, this is actually very easy

  * Select the imported gerber under the Project pane
  * Switch to the Selected Tab
  * Enter in a tool diameter, this will represent the thickness of the line that will surround the track
  * Click **Generate Geometry**
  * TODO I think the minimum will be 0.1mm further experimentation is needed

<a href="../../images/PCB/FlatCAM/FlatCAM-Single2.png"><img src="../../images/PCB/FlatCAM/FlatCAM-Single2.png" height="50%" width="50%" ></a> <br>

This should result in a red line surrounding everything

## Generate the CNCJob

Next we need to generate a CNCJob, in this case we're not going to use G-Code, but instead do an SVG Export of the result.

  * Switch to the Project Tab and select the generated Geometry

<a href="../../images/PCB/FlatCAM/FlatCAM-Single3.png"><img src="../../images/PCB/FlatCAM/FlatCAM-Single3.png" height="50%" width="50%" ></a> <br>

  * Next Switch back to the Selected Tab
  * Click Generate to generate a CNC Job
  * This should result in a blue line around the tracks, this is what we're interested in for the laser cutter

<a href="../../images/PCB/FlatCAM/FlatCAM-Single4.png"><img src="../../images/PCB/FlatCAM/FlatCAM-Single4.png" height="50%" width="50%" ></a> <br>

## Export the CNCJob

The final step is just to export the CNCJob as an SVG

  * Swtich back to the Selected Tab
  * Select the new CNCJob
  * Select File -> Export SVG from the menu

<a href="../../images/PCB/FlatCAM/FlatCAM-Single5.png"><img src="../../images/PCB/FlatCAM/FlatCAM-Single5.png" height="50%" width="50%" ></a> <br>

There's quite a lot of different settings you can play with for exporting just the solder pads for example. <br>
If you want the drill holes to be etched as well, then also Export the imported drill file as an SVG, at which point we can then import it later on into Visicut.
