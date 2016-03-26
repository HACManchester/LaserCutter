# Design

## Basic Information

  * The cutting area is 300 x 200 mm (A4 Landscape)
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
  * Windows: **%APPDATA%\Inkscape**

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

## Visicut

### Importing the Design into Visicut

Next we need to import the design from InkScape to Visicut

  * Within Inkscape select **Extensions -> Lasercut Path -> Add to Visicut**
  * place the design towards the bottom left hand corner as it's more accurate there and this is where the zero point is
  * Try not to go within the last 5mm of the edges, the small edge stop within the cutter will align the part as such

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
  * Under the Mapping tab, select Map by Fill Colour
  * Use the shift key in Visicut to view overlaps

Next re-arrange the layers and select the type of cut

  * Place layers with engraving at the top of the list
  * Place layers for cutting holes in the middle of the list
  * Place the final cut stage as the last in the list
  * make sure all layers needed are ticked

It's best to cut the outerline / edge last as the piece will move around after this is done 
so make sure to do this stage after any holes

### Laser Settings

Next we need to make sure the settings under the laser settings tab are sane / correct

For Acrylic:

Profile	Power		|	Speed	|	Other
------------------------|---------------|---------------|
Mark Shallow		|	10	|	80	|
Mark Deep		|	100	|	70	|
Engrave Dithered	|	20	|	100	|	Engrave Bottom up: **unticked** <br> Engrave Unidirectional: **unticked**
Engrave Solid		|	20	|	100	|	Engrave Bottom up: ticked 
Cut			|	100	|	6	|
