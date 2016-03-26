# Solder Masks

Solder masks are good for two reasons

  * They help solder paste to stick to just they're own pads during reflow
  * They can make the board look pretty

## Overview

Normally solder masks are only available on prefabbed boards, and even then the colour is usually just a single colour.
One of the techniques used online to create homebrew solder masks is the use of glass paint.
The reason for using glass paint is that once it's cured it's very heat resistant (such as during soldering).
Also spraying instead of brushing the board leads to better results from what I've heard online

The idea is (and this is untested) in order to make sure the glass paint doesn't stick to the solder pads
we can remove the black paint from the board everywhere except for the solder pads using a negative image / engrave solid.
This way after the glass paint has been sprayed on and dried, we can remove it from the solder pad areas using some ipa.

This is still untested as of yet, but FlatCAM does allow us to create the negative image SVG we need quite easily.
Also this could allow for some really fancy colourful PCB's that you wouldn't normally be able to get with prefabbed boards.

So far I've seen people use vitrea glass paint, although Fred Aldous has some available we can try and experiment with as well.

TODO Check board alignment

## Export the Solder Mask Layers

Within Kicad

  * Export the layers F.Mask and B.Mask as Gerbers
  * **Auxiliary axis as origin:** Ticked
  * **Exclude PCB edge layer from other layers:** unticked
  * Plot these layers out as gerber files

## FlatCam - Create Non Pad Region

  * Next import your gerber into FlatCAM, this gerber should represent all the solder pads to be left exposed
  * Then select it, and switch across to the Selected Tab
  * Under **Non Copper regions**, click **Generate Geometry**
  * Finally export this geometry as an SVG
  * This should give us a Negative to work with

<a href="../../images/PCB/FlatCAM/FlatCAM-Mask1.png"><img src="../../images/PCB/FlatCAM/FlatCAM-Mask1.png" height="50%" width="50%" ></a> <br>

## Editing within Inkscape

Next we need to do a small amount of editing within inkscape

  * Import the SVG exported from FlatCAM
  * Right click ungroup the contents as much as possible
  * Select the Fill and Stroke of the background colour (since this is a Negative) and set the Alpha to 255
  * Make sure the Opacity is also set to 100
  * Change the colour to something solid like bright red

<a href="../../images/PCB/Inkscape/Inkscape-Mask1.png"><img src="../../images/PCB/Inkscape/Inkscape-Mask1.png" height="50%" width="50%" ></a> <br>

## Import into Visicut

Next import the SVG into Visicut

  * Select Map by Colour
  * Select Engrave Solid for the bright red colour mentioned above
  * This should highlight all the non solder pad areas as areas to be engraved.

<a href="../../images/PCB/Visicut/Visicut-Mask1.png"><img src="../../images/PCB/Visicut/Visicut-Mask1.png" height="50%" width="50%" ></a> <br>

## Spray the board

TODO

## Clean the board

TODO
