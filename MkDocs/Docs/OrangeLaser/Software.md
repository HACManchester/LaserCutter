# Software

## Download Links

In order to create your first design, you should install one of the following:

  * [Inkscape](https://inkscape.org/en/) (recommended)
  * Adobe Illustrator
  * [OpenSCAD](http://wiki.hacman.org.uk/OpenSCAD#2D)

Whatever you're using, it's recommended to install Inkscape as that can be used to tweak designs prior to importing them for cutting or etching.

For Cutting you'll also need Visicut

  * https://github.com/t-oster/VisiCut/releases/tag/1.7_310
  * http://download.visicut.org/

Note version 1.7.9 seems to have issues with Engraving, I've found that version 1.7.310 seems to work the best

## Visicut

Visicut is the software that converts vector files into the code that drives the laser cutter.

After you've put together your design for cutting. <br>
Visicut is used to convert files into the format needed to drive the laser cutter.

  * https://github.com/t-oster/VisiCut/releases/tag/1.7_310
  * (If you are using a mac the cross-platform Java implementation works best.)

If you are on OSX, you may need to download the Platform Independant ZIP instead of the OSX Release.
If you are a software developer with experience of OSX packaging, [https://github.com/t-oster/VisiCut/issues/171](Visicut are looking for help with this issue!)

On first run, visicut will ask if you want to download settings.
You do, just select Manchester, UK: Hackspace from the list and visicut will automatically install the latest settings for our laser cutter.
You can use this same method to reset your settings back to the default, under the menu item Options > Settings > Download Recommended Settings.
You may get an error message, error importing settings. If this occurs, just close and reopen visicut for the settings to apply.



## InkScape

For vector editing and manipulation, we suggest people use inkscape. It is a free and powerful vector editing package, and integrates well with visicut.

  * [Inkscape](https://inkscape.org/en/)

Once you have visicut and inkscape installed, and have run inkscape at least once (so it creates its folders in your home drive), You can install the inkscape addon for visicut by clicking Extras > Install Inkscape Extension. Close and reopen inkscape and you should have new options for sending vectors directly to visicut.

### Visicut Extension

To Setup the inkscape extension for Visicut within Windows

  * Open Visicut
  * Select Extras / Install Inkscape Extension
  * For windows 7 this should install into the directory **C:\Users\[username]\AppData\Roaming\inkscape**
  * Close and reopen inkscape and you should have new options for sending vectors directly to visicut.
  * The Extension will be visible within Inkscape under **Extensions Menu -> Lasercut Path -> Open in Visicut**

There's also a link here <http://hci.rwth-aachen.de/visicut_inkscape_plugin> <br>

TODO this seems broken at the moment, check for fixes

### Tabbed Box Extension

For making boxes with the laser cutter, there's a tabbed box maker extension for inkscape

  * <http://www.keppel.demon.co.uk/111000/111000.html>



### HacMan - Visicut Settings

The current way to get the latest settings for visicut is to

  * Open Visicut
  * Select Options -> Settings -> Download recommended settings -> United Kingdom, Manchester: Hackspace
  * You may get an error about downloading the settings, ignore this
  * Restart Visicut
  * There should now be 2 laser cutter settings for the blue and orange laser cutters on the right hand side

For reference the original link to the visicut settings was https://github.com/hacmanchester/visicut-settings But this is no longer in use

As time goes on the settings for the orange laser may be updated / added to for different types of materials
so you may want to try re-downloaded the settings every now and again just to refresh them with new presets for different materials

### Windows Setup

TODO remove this?

To clone the settings on a windows machine

  * First install [Git](http://git-scm.com/download/win)
  * create a directory for git files (e.g. C:\GITHUB)
  * Clone to a local directory

```
cd C:\GIHUB\
git clone https://github.com/HACManchester/visicut-settings.git
```

Another way is just to click the [Download Zip](https://github.com/HACManchester/visicut-settings/archive/master.zip) button on github and extract the files

To install the files for Windows:

  * Startup Visicut for the first time, this should create a directory with some default files in under C:\Users\[username]\.visicut\
  * Close Visicut
  * Copy and paste the files downloaded from git over the top of the default visicut settings files
  * C:\GITHUB\visicut-settings -> C:\Users\username\.visicut\
  * Startup visicut

### Linux Setup

TODO remove this?

To get the settings in a terminal type:

```
cd ~
rm -rf .visicut
git clone https://github.com/HACManchester/visicut-settings.git .visicut
```

To get updated settings, either repeat the above, or type:

```
cd ~/.visicut/
git stash
git pull origin master
git stash apply
```
