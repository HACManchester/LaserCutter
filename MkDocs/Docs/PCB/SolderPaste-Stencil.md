# Solder Paste Stencil

It's possible to create a solder paste mask using the laser cutter and A4 Mylar stencil sheets

## Export the Solder Paste Layer

Within Kicad

  * Export the layers F.Paste and B.Paste as Gerbers
  * **Auxiliary axis as origin:** Ticked
  * **Exclude PCB edge layer from other layers:** unticked
  * Plot these layers out as gerber files

## Import to FlatCAM

Next import to flatcam, then re-export as an SVG

<a href="../../images/PCB/FlatCAM/FlatCAM-Paste1.png"><img src="../../images/PCB/FlatCAM/FlatCAM-Paste1.png" height="50%" width="50%" ></a> <br>

## Import to Visicut

Finaly drag and drop the svg into Visicut and use Map by colour

TODO see if Engrave Solid is the best option even though we're cutting through for accuracy
also what power to use?

<a href="../../images/PCB/Visicut/Visicut-Paste1.png"><img src="../../images/PCB/Visicut/Visicut-Paste1.png" height="50%" width="50%" ></a> <br>