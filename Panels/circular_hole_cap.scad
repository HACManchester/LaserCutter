$fs = 0.25;
$fa = 1;

hole_diameter = 5;

difference()
{
  union()
  {
    cylinder(d=hole_diameter, h=3, center=true);
    hull()
    {
      translate([0,0,1.5])  cylinder(d=hole_diameter, h=0.1, center=true);
      translate([0,0,0.5])  cylinder(d=hole_diameter+2, h=0.1, center=true);
    }
    hull()
    {
      translate([0,0,-1.5]) cylinder( d=hole_diameter, h=0.1, center=true);
      translate([0,0,-0.5])   cylinder( d=hole_diameter+0.25, h=0.1, center=true);
      translate([0,0,0])    cylinder( d=hole_diameter, h=0.1, center=true);
    }
  }
  translate([0,0,-0.5])   cylinder( d=hole_diameter-3, h=2.5, center=true);
}
