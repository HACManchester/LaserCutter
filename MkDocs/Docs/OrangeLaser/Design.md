# Design

## Basic Information

THe cutting area is:

  * 300 x 200 mm (A4 Landscape) for the Blue Laser
  * 600 x 400 mm (A2 Landscape) for the Orange Laser
  * You can cut material up to around 4mm thick
  * Some people (everyone bar Bob) have been having problems with red and black. <br>
    If you're trying to do something intricate such as engraving we recommend NOT using black **ANYWHERE** on your design <br>
    to avoid bits being engraved unnecessarily and wasting your time/money or potentially wrecking your design.

## Inkscape

### Suggested Page Layout

  * I like to use a 200mm x 300mm page, set to millimetres, with a 1mm grid.
  * [Laser_Template.svg](http://wiki.hacman.org.uk/images/b/bc/Laser_Template.svg) Is a good template.
    Just put it in the templates directory in your inkscape folder to use it.

Templates Directory:

  * Linux: **.config/inkscape/templates/**
  * Windows: **%APPDATA%\Inkscape\templates\**

### Different Cuts / Colours

Each different colour, line thickness, layer and group can be selected to cut differently, and the cut order changed. 
I normally use solid background colours in my inkscape designs to denote what should be cut and when

### Designing the cut

First make an object to cut using inkscape

Notes

  * When creating an image to cut it needs to be all lines or all fill
  * Make sure any lines are not dotted lines and are single fill lines
  * it shouldn't be a mix of both or the laser cutter may throw a hissy fit
  * The thing your engraving should be surrounded by a box or shape to cut it out as the final step
  * The cut lines should have a different colour than the engraving lines (each type of laser strength should have a different colour)

## Solidworks

If your importing a design from Solidworks the best way to do it is to export the model to a DXF file first

  * Open up the 3d model within solidworks
  * Select File -> Save As
  * Select Dwg in the drop down file type list and click Save
  * At this point some options will be visible on the left hand side which we need to set before the actual save is done
  * In the Views to Export, untick Current, and tick Top
  * The other options such as Alignment can be left as defaults
  * Next make sure the view is a direct top down view, with the X / Y / Z cross at the bottom left, click it to make sure the view is aligned
  * Click the tick button
  * A preview will be visible of the outputed diagram before it is saved
  * Import the DWF file into inkscape
  * When prompted make sure to untick the option to scale the image to A4, we want to make sure the measurements are accurate


## Visicut

### Importing the Design into Visicut

Next we need to import the design from InkScape to Visicut

  * Within Inkscape select **Extensions -> Lasercut Path -> Add to Visicut**
  * place the design towards the bottom left hand corner as it's more accurate there and this is where the zero point is
  * Try not to go within the last 5mm of the edges, the small edge stop within the cutter will align the part as such

If the Visicut extension doesn't work for any reason, save the design off as an svg, and re load directly into visicut. Note any text needs to be converted into paths first

### Types of Cut

There are several types of laser strength / profile <br>
Marking is a very light form of engraving

Type of Cut		| Description
------------------------|---------------------------------------------------
Ignore			| Ignore the layer in the diagram
Mark Shallow		| Mark Shallow
Mark Deep		| Mark Deep
Engrave Dithered	| Engrave Dithered - darker colour equals deeper cut
Engrave Solid		| Engrave Solid
Cut			| Cut all the way through the material

### Setting the layer profiles

Next we need to map each layer in the design to a cut profile (Laser speed / strength)

  * Select the material (e.g. Acrylic)
  * Select the material thickness (e.g. 3mm)
  * Under the Mapping tab, select **Map by Fill Colour**
  * Use the shift key in Visicut to view overlaps

Next re-arrange the layers and select the type of cut

  * Place layers with engraving at the top of the list
  * Place layers for cutting holes in the middle of the list
  * Place the final cut stage as the last in the list
  * make sure all layers needed are ticked

It's best to cut the outerline / edge last as the piece will move around after this is done <br>
so make sure to do this stage after any holes

### Laser Settings

Next we need to make sure the settings under the laser settings tab are sane / correct

For Acrylic:

Profile	Power		|	Power	|	Speed	|	Other
------------------------|---------------|---------------|-----------------
Mark Shallow		|	10	|	80	|
Mark Deep		|	100	|	70	|
Engrave Dithered	|	20	|	100	|	Engrave Bottom up: **unticked** <br> Engrave Unidirectional: **unticked**
Engrave Solid		|	20	|	100	|	Engrave Bottom up: ticked 
Cut			|	100	|	6	|
