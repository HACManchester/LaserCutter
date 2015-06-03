include <config.scad>;
use <woodenbase.scad>;

color("red")
{
translate([0, 0, base_height-wood_depth]) linear_extrude(height=wood_depth) top();
translate([0, 0, 0]) linear_extrude(height=wood_depth) bottom();
}

color("blue")
{
  translate([0, 0, base_height]) rotate([0, 90, 0]) linear_extrude(height=wood_depth) leftside();
  translate([(510+wood_depth/2), 0, base_height]) rotate([0, 90, 0]) linear_extrude(height=wood_depth) middleside();
  translate([laser_width-wood_depth, 0, base_height]) rotate([0, 90, 0]) linear_extrude(height=wood_depth) side();
}

color("yellow")
{
  translate([0, laser_depth+175, 0]) rotate([90, 0, 0]) linear_extrude(height=wood_depth) back();
//  translate([wood_depth, wood_depth, wood_depth]) rotate([90, 0, 0]) linear_extrude(height=wood_depth) front();
}

color("orange",0.4)
{
  translate([0,0,base_height]) cube([laser_width, laser_depth, laser_height]);
}

color("black")
{
  translate([120,laser_depth-134,base_height-wood_depth-235])
  union()
  {
    cube([210, 264, 235]);
    translate([210-20-125,264,235-12-60]) cube([125,50,60]);
  }

  for(x=[50, laser_width-50-50])
    for(y=[50, laser_depth+175-70-50])
      translate([x,y,-70])
        cube([50,70,70]);
}

color ("green")
{
  translate([wood_depth+10,wood_depth*2,wood_depth+5]) linear_extrude(height=wood_depth) shelf();
}
