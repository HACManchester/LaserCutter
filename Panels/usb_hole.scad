union()
{
  cube([20, 50, 3], center=true);
  hull()
  {
    translate([0,0,1.5]) cube([20, 50, 0.1], center=true);
    translate([0,0,0.5]) cube([22, 52, 0.1], center=true);
  }
  hull()
  {
    translate([0,0,-1.5]) cube([20, 50, 0.1], center=true);
    translate([0,0,-1]) cube([20, 50.5, 0.1], center=true);
    translate([0,0,0]) cube([20, 50, 0.1], center=true);
  }
}
