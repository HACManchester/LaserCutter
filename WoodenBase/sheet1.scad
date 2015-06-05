include <config.scad>;
use <woodenbase.scad>;

/*color("red") square([1200,2400]);*/

rotate([0,0,90])
{
  translate([20,20]) top();
  translate([20, 20+laser_depth+175+10+10+wood_depth]) bottom();
  translate([20, 20+laser_depth+175+10+10+laser_depth+175+10+10+wood_depth]) back();
}
