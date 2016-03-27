# Cutting

When lasering / cutting the main thing to be aware of is overheating

  * The laser cutter has a inbuilt water pump / cooler which needs to be running
  * There's also an extraction pipe for getting rid of the fumes

## Warnings

  * **The water pump must be running before cutting** <br>
    **Otherwise you may cause damage to the Laser Cutter. This can be verified by checking the red light is on in the water cooling chamber**
 
  * **After Cutting make sure to leave the cutter on for at least 5 mins to allow the water pump to cool.** <br>
    **Otherwise you may cause damage to the Laser Cutter**

  * **Make sure to watch over the cutter as it's cutting. <br> Rule 0 - don't be on fire**

## Failure

### In the event something goes wrong

  * Mail the mailing list with a short description of the problem
    * What you were trying to do
    * What you expected to happen
    * What happened instead
  * Put the out of order sign on the top of the cutter
  * Let the cutter cool down for 5 mins before turning off

### In the event of fire / emergency

  * There is an emergency stop button on the top panel that is functional. Opening the lid will stop the laser from firing however.
  * If you can smother the fire in-place using a piece of stock, do so.
  * If you cant smother it in place, put it on the floor and try to stomp it out.
  * If you cant do either of these. Leave the space immediately, and call 999. The address is Hackspace Manchester, 42 Edge Street, M4 1HN

## Control Panel

  * The big red button is used as a reset / emergency stop, this stops a laser job if it's in progress
  * The orange button in the center is used by nudging left and right for selecing menu entries
  * The red button is a 'back' button in menus.

TODO

  * Attach a photo of the button layout

## Making the Cut

### Initial Startup

  * First place some money in the pot for using the cutter
  * There is a book for keeping track of usege of the laser so make sure to use this to track any iou's. Time log is in the front of the book, Money log is in the back.
  * Place the extractor pipe outside the window
  * Make sure the electronics bench is turned on, and the power cable is plugged into the back of the cutter.
  * Check for a red light on the bottom left hand corner where the water cooling is, if there is no light this may be an indication that the water cooling is not working in which case email a fault report to the mailing list.

### Positioning the part

With the orange laser the only thing to worry about is the Z axis.
There is a switch on the right hand side of the machine that can be used to lower or raise the main bed of the machine. <br>
It's a bit slow for now, but make sure not to crash the bed into the laser head, since currently there isn't a limit switch installed

There is a small wooden guide inside the machine that can be used to position / zero the height against the bed (the default position).
This goes in between the bed and the left-hand part of the laser cutter, as in the following photo:

**TODO Add Image**

  * For cutting materials up to 6mm it's best to have the z height set to bed level.
  * For cutting materials over 6mm, try to keep the z height 6mm into the material. Multiple passes may be needed.
  * For engraving set the focal point to the height of the material by placing the guide on top of it.
  * If you want crisp engraving on thick stock, you will need to do a 2-stage engrave / cut with the focal point initially set to the top of your material, and then re-set to the correct height for your cut.
  * Place the part into the cutter
  * When cutting try to leave the cover on both sides of the material, or if only one side the bottom (not the top)

### Test the Laser positioning

Next we're going to do a boundary test to make sure the laser cutter is working on the area we think it's going to

  * Click Execute in Visicut
  * Wait for the small LCD on the Cutter it to say the file name
  * Nudge the center orange button to the right to select boundary
  * Press the center orange button, this will cause the laser to trace the box outline of where the cut will be done on the material
  * This can be done with the lid open to assist in placing your part, however watch for pinch hazards.
  * Also an indication of the size of the boundary area will be shown on the LCD
  * Press the orange button again to go back to the main menu

### Do the cut

At this stage you should now be ready to do the cut for real

  * Make sure the lid is closed, The laser wont fire with it open.
  * The LCD should show Run on the screen
  * Press the orange button to start the run job

### Shutdown

  * Make sure to bring the pipe back in from outside of the window
  * After making any kind of cut, make sure to run the cutter for at least 5mins to allow the water pump to cool down the cutter, otherwise bad things may happen
  * There is a red switch on the back for turning off the laser, but once in place it should be on most of the time anyway
