include <config.scad>;
use <woodenbase.scad>;

/*color("red") square([2400,1200]);*/

translate([20,20]) leftside();
translate([20+base_height+wood_depth,20]) middleside();
translate([20+base_height+wood_depth+base_height+wood_depth,20]) side();
translate([20+base_height+wood_depth+base_height+wood_depth+base_height+wood_depth,20]) front();
translate([20+base_height+wood_depth+base_height+wood_depth+base_height+wood_depth,20+base_height]) shelf();
