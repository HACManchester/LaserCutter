$fs = 1;
$fa = 1;

include <config.scad>;

module shroud()
{
  difference()
  {
    union()
    {
      // insert into extraction hole
      cube([170, 100, wood_depth], center=true);

      //half-rounded flange
      translate([0,8,(wood_depth+6)/2])
      {
        hull()
        {
          translate([0,-8,0]) cube([220, 100, 6], center=true);
          for (x=[1, -1])
            translate([(210-8)*x/2,50,0])
              cylinder(d=18, h=6, center=true);
        }
      }

      // shroud hull
      hull()
      {
        translate([0,8.5,(wood_depth/2)+6]) cube([170, 117, 0.1], center=true);
        translate([0,35,50]) cylinder(d=145, h=0.1, center=true);
      }

      // top exhaust
      translate([0,35,60]) cylinder(d=145, h=20, center=true);
    }
    for(x=[1, -1])
      for(y=[1, -1])
        translate([196/2*x,116/2*y])
          cylinder(d=12, h=100);
    for(x=[1, -1])
      for(y=[1,-1])
        translate([196/2*x,30*y])
          cylinder(d=5, h=100);

    union()
    {
      cube([160, 90, wood_depth+0.1], center=true);
      hull()
      {
        translate([0,0,wood_depth/2]) cube([160, 90, 0.2], center=true);
        translate([0,35,50]) cylinder(d=135, h=0.2, center=true);
      }
      translate([0,35,60]) cylinder(d=135, h=20.1, center=true);
    }
  }
}

translate([0,0,-(wood_depth+6)/2]) shroud();
