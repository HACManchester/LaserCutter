// *****************************************************************
// Eldersoft
// Ward M. Elder
// Jan 21, 2012
// *****************************************************************
// Portions by:
//	(C) Nathan Zadoks 2011
//	CC-BY-SA or GPLv2, pick your poison.
// *****************************************************************


// *****************************************************************
// Create an Extrusion
//
//	Call:			tslot_build(dimension,xcount,ycount,length)
//
//	dimension 		= size of the extrusion in mm (default = 20)
//	xcount		= number of extrusions to make in the x direction (default =1)
//	ycount		= number of extrusions to make in the y direction (default =1)
//	length		= length of the extrusion in mm (default=100)
//
//
// Create a Nut for your extrusions
//
//	Call:			nut(length,dimension,bolt_diameter,nut_diameter,nut_thickness)
//
//	length 		= total lenght of the nut (default=10)
//	dimension 		= size of the extrusion you will be using this nut on (default=20)
//	bolt_diameter	= bolt hole size in mm (default = 4 = M4 bolt)
//	nut_diameter	= size of the nut (default = 7.8 = M4 nut)
//	nut_thickness	= thickness of the nut (default = 3.2 = M4 nut)
// *****************************************************************



// *****************************************************************
//    START OF CODE
// *****************************************************************

// *****************************************************************
// Extrusion module
// *****************************************************************
// dimension is in millimeters
// xcount and ycount are multiples of "dimension" extrusions
// *****************************************************************

module tslot_build(
	dimension=20,
	xcount=1,
	ycount=1,
	length=100,
	center=false
){
	translate([-(xcount-1)*dimension/2,-(ycount-1)*dimension/2,0])
		union(){
			for(x=[0:xcount-1]) {
				for(y=[0:ycount-1]){ 
					translate([dimension*x-dimension,dimension*y-dimension,0])
						tslot(size=dimension,gap=2.63*(dimension/10),thickness=.75*(dimension/10),length=length,center=center);
				}
			}
		}
}


// *****************************************************************
// TSlot module
// *****************************************************************
//	(C) Nathan Zadoks 2011
//	CC-BY-SA or GPLv2, pick your poison.
// Modified by:
// 	Eldersoft
// 	Ward M. Elder
// 	Jan 21, 2012
// *****************************************************************

module tslot(
	size=10,		//size of each side
	length=10,		//length. descriptive enough, no?
	thickness=3,	//thickness of the 'sheet'
	gap=0,		//gap, thickness of the lower part of the 'T'
	center=false	//somewhat vague. todo.
){
	start=thickness/sqrt(2);
	color([0.5,0.5,0.5])
		linear_extrude(height=length,center=center)
			translate([size,size])
				difference(){
					union(){
						for(d=[0:3])
							rotate([0,0,d*90]) 
								polygon(points=[
									[0,				0],
									[0,				start],
									[size/2-thickness-start,	size/2-thickness],
									[gap/2,			size/2-thickness],
									[gap/2,			size/2],
									[size/2,			size/2],
									[size/2,			gap/2],
									[size/2-thickness,		gap/2],
									[size/2-thickness,		size/2-thickness-start],
									[start,			0]
							]);
						square(gap+thickness,center=true);
					}
					circle(r=gap/2,center=true);
				}
}


// *****************************************************************
// Nut module
// *****************************************************************
//	 (C) Nathan Zadoks 2011
// Modified by:
// 	Eldersoft
// 	Ward M. Elder
// 	Jan 21, 2012
// *****************************************************************


module nut(
	length=10,						//length of nut
	dimension=20,					//dimension of extrusion we will use the nut on

	bolt_diameter=4,					// M4 Bolt
	nut_diameter=7.8,				// M4 Nut
	nut_thickness=3.2				// M4 Nut
){

	width=6.5*(dimension/10);			//width at widest point.  with of top par tof the 'T'
	gapwidth=2.5*(dimension/10);			//gap width.  thickness of the lower part of the 'T'
	overhange = (width - gapwidth)/2;		//width of overhange
	pointdepth=2.25*(dimension/10);		//depth of top part of the 'T'
	gapdepth=.75*(dimension/10);		//depth of lower part of the 'T'	


	color([0.5,0.5,0.5]){
		translate([0,0,length/2])
			difference(){
				linear_extrude(height=length,center=true){
					intersection(){
						polygon([
							[-(width/2-overhange),				-(gapdepth+pointdepth)/2],
							[-(width/2-overhange),				gapdepth-(gapdepth+pointdepth)/2],
							[-(width/2),						gapdepth-(gapdepth+pointdepth)/2],
							[0,							(dimension/2-2)-(gapdepth+pointdepth)/2],	
							[width/2,						gapdepth-(gapdepth+pointdepth)/2],
							[width/2-overhange,				gapdepth-(gapdepth+pointdepth)/2],
							[width/2-overhange,				-(gapdepth+pointdepth)/2]
							]);
						square([width*2,	pointdepth+gapdepth],center=true);  // used to make the flat Point
					}
				}
				rotate(a=[90,0,0])
					cylinder(h=gapdepth+pointdepth+1,r=(bolt_diameter/2)*1.20,$fn=30,center=true);
				rotate([90,0,0])
					translate([0,0,-(gapdepth)+.1])
						rotate([0,0,90])
							cylinder(h=pointdepth+1,r=(nut_diameter/2)*1.20,$fn=6,center=true);
			}
	}
}	


// *****************************************************************
// Predifined common sizes
// *****************************************************************
// 20mm based
// 2020 = 20mm x 20mm
// 2040 = 20mm x 40mm
// 4040 = 40mm x 40mm
// 4080 = 40mm x 80mm
// *****************************************************************

module tslot2020(length,center=false){
	tslot_build(20,1,1,length,center=center);
}
module tslot2040(length,center=false){
	tslot_build(20,1,2,length,center=center);
}
module tslot4040(length,center=false){
	tslot_build(20,2,2,length,center=center);
}
module tslot4080(length,center=false){
	tslot_build(20,2,4,length,center=center);
}


// *****************************************************************
//     END OF CODE
// *****************************************************************


// *****************************************************************
// Add your own calls or uncomment one of the folowing examples 
// *****************************************************************


// Examples:

// *****************************************************************
// 20mm extrusion size with 1 x 1 extrusions wide and deep, 100mm long
//	Also called a 2020
// *****************************************************************
//tslot_build(20,1,1,100);


// *****************************************************************
// 20mm extrusion size with 2 x 4 extrusions wide and deep, 100mm long
//	Also called a 4080
// *****************************************************************
//tslot_build(20,2,4,100);


// *****************************************************************
// Use predifined 2020
// 	20mm x 20mm x 100mm long
// *****************************************************************
tslot2020(100);


// *****************************************************************
// Use predifined 2040
// 	20mm x 40mm x 100mm long
// *****************************************************************
//tslot4080(100, true);


// *****************************************************************
// Create a Nut
// *****************************************************************
//nut(length=15,dimension=20);
























































