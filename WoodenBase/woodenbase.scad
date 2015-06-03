include <config.scad>;

module top_blank ()
{
  hull()
  {
    for(x = [0, laser_width])
      for(y=[0, laser_depth+175])
        translate([x,y])
          circle(r=10);
  }
}

module top_mounts()
{
  difference()
  {
    top_blank();

    // sides and central support pegs
    for(x=[0,(510+wood_depth/2),laser_width-wood_depth])
      for(y=[20, (laser_depth+175-wood_depth-50)/2, laser_depth+175-wood_depth-50-20])
        translate([x, y])
          square([wood_depth, 50]);

    // sides and central support bolts
    for(x=[wood_depth/2, 400+wood_depth+(wood_depth/2), laser_width-(wood_depth/2)])
      for(y=[120, (laser_depth+175-wood_depth-160)/2, (laser_depth+175-wood_depth+160)/2, laser_depth+175-wood_depth-120])
        translate([x, y])
          circle(d=6);

    // back support pegs
    for(x=[20,((laser_width-50)/2)-160,((laser_width-50)/2)+160,laser_width-50-20])
      translate([x, laser_depth+175-wood_depth])
        square([50, wood_depth]);

    // back support bolts
    for(x=[120,(laser_width/2)-80,(laser_width/2)+80,laser_width-120])
      translate([x, laser_depth+175-(wood_depth/2)])
        circle(d=6);
  }
}


module top()
{
  difference()
  {
    top_mounts();
    for(x=[125, 555, 700])
      translate([x, 4])
        square([60, laser_depth-8]);

    translate([360+(156/2), laser_depth+175-(156/2)-wood_depth-2])circle(d=156);

    translate([120,laser_depth])
    {
      for(x=[-13, 183])
        for(y=[-8, 108])
          translate([x,y])
            circle(d=6);
      square([170, 100]);
    }
    for (y=[25,75,125]) translate([wood_depth+20, laser_depth+y]) circle(d=14);
  }
}

module caster_bolt()
{
  for(x=[7.5+0, 7.5+35])
    for(y=[10+0, 10+50])
      translate([x,y])
        circle(d=11.5);
}

module bottom()
{
  difference()
  {
    top_mounts();

    for(x=[50, laser_width-50-50])
      for(y=[50, laser_depth+175-70-50])
        translate([x, y])caster_bolt();
  }
}

module side()
{
  difference ()
  {
    union()
    {
      translate([wood_depth, 0]) square([base_height-wood_depth-wood_depth, laser_depth+175-wood_depth]);

      for(x=[0,base_height-wood_depth])
        for(y=[20, (laser_depth+175-wood_depth-50)/2, laser_depth+175-wood_depth-50-20])
          translate([x, y])
            square([wood_depth, 50]);
    }

    // sides and central support bolts
    for(x=[wood_depth*2, base_height-(wood_depth*2)])
      for(y=[120, (laser_depth+175-wood_depth-160)/2, (laser_depth+175-wood_depth+160)/2, laser_depth+175-wood_depth-120])
        translate([x, y])
        {
          circle(d=10);
          translate([-30,-3])square([60,6]);
        }
  }
}

module leftside()
{
  difference()
  {
    side();
    for (f=[laser_depth/2-120,laser_depth/2,laser_depth/2+120])
    translate([base_height/2,f])
    {
      for(x=[0,105])
        for(y=[0,105])
          translate([-60+7.5+x,-60+7.5+y])
            circle(d=4);
      circle(d=120);
    }
    translate([base_height/2,laser_depth/2])
      square([90,120+80+80], center=true);
  }
}

module middleside()
{
    side();
}

module back()
{
  difference()
  {
    union()
    {
      translate([0,wood_depth]) square([laser_width, base_height-wood_depth-wood_depth]);

      // back support pegs
      for(x=[20,((laser_width-50)/2)-160,((laser_width-50)/2)+160,laser_width-50-20])
        for(y=[0,base_height-wood_depth])
        translate([x, y])
          square([50, wood_depth]);
    }

    // back support bolts
    for(x=[120,(laser_width/2)-80,(laser_width/2)+80,laser_width-120])
      for(y=[wood_depth*2,base_height-(wood_depth*2)])
      translate([x, y])
      {
        circle(d=10);
        translate([-3,-30])square([6,60]);
      }

      // fan electricity hole
      translate([175,base_height-95]) square([140, 70]);
    }
}

module front()
{
  difference()
  {
  square([510-(wood_depth/2), base_height-18-18]);
  #for(x=[-20,20])
    translate([((510-wood_depth)/2)+x, base_height-18-18-25])
      circle(d=20);
  }
}

front();
