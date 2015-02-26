use <tslot.scad>

laser_width = 1150;
laser_depth = 850;
laser_height = 700;
laser_top_from_ground = 1000;
laser_camera_height = 1600;

translate([0,0,laser_top_from_ground-laser_height/2]) color("red") cube([laser_width, laser_depth, laser_height], center=true);


// HFS5-2040-260 x 6
for (x=[laser_width/2-10, -laser_width/2+10])
  for (y=[laser_depth/2-20, -laser_depth/2+20])
    translate([x, y, 20]) tslot2040(laser_top_from_ground-laser_height-20-20);
for (y=[laser_depth/2-10, -laser_depth/2+10])
  translate([0, y, 20]) rotate([0,0,90]) tslot2040(laser_top_from_ground-laser_height-20-20);

// HFS5-2020-1150 x 4
for (y=[laser_depth/2-10, -laser_depth/2+10])
  for (z=[10, laser_top_from_ground-laser_height-10])
  translate([-laser_width/2, y, z]) rotate([0,90,0]) tslot2020(laser_width);

// HFS5-2020-810 x 10
for (x=[laser_width/2-10, laser_width/4-10, 0, -laser_width/4-10, -laser_width/2+10])
  for (z=[10, laser_top_from_ground-laser_height-10])
    translate([x, laser_depth/2-20, z]) rotate([90,0,0]) tslot2020(laser_depth-20-20);

// HFS5-2020-1600
translate([0,laser_depth/2+10,0]) rotate([0,0,90]) tslot2040(laser_camera_height);

// HFS5-2040-425
translate([0,0,laser_camera_height-10]) rotate([-90,0,0]) rotate([0,0,90]) tslot2040(laser_depth/2);
