module roundedsquare(xx, yy, radius) {
    difference(){

        square([xx,yy]);

        difference(){
            translate([-.5,-.5,-.2])
            square([radius+.5,radius+.5]);

            translate([radius,radius,height/2])
            cylinder(height,radius,radius,true);
        }
        translate([xx,0,0])
        rotate(90)
        difference(){
            translate([-.5,-.5,-.2])
            square([radius+.5,radius+.5]);

            translate([radius,radius,height/2])
            cylinder(height,radius,radius,true);
        }

        translate([xx,yy,0])
        rotate(180)
        difference(){
            translate([-.5,-.5,-.2])
            square([radius+.5,radius+.5]);

            translate([radius,radius,height/2])
            cylinder(height,radius,radius,true);
        }

        translate([0,yy,0])
        rotate(270)
        difference(){
            translate([-.5,-.5,-.2])
            square([radius+.5,radius+.5]);

            translate([radius,radius,height/2])
            cylinder(height,radius,radius,true);
        }
    }
}

module roundedcube2(xx, yy, height, radius) {
    difference(){

        cube([xx,yy,height]);

        difference(){
            translate([-.5,-.5,-.2])
            cube([radius+.5,radius+.5,height+.5]);

            translate([radius,radius,height/2])
            cylinder(height,radius,radius,true);
        }
        translate([xx,0,0])
        rotate(90)
        difference(){
            translate([-.5,-.5,-.2])
            cube([radius+.5,radius+.5,height+.5]);

            translate([radius,radius,height/2])
            cylinder(height,radius,radius,true);
        }

        translate([xx,yy,0])
        rotate(180)
        difference(){
            translate([-.5,-.5,-.2])
            cube([radius+.5,radius+.5,height+.5]);

            translate([radius,radius,height/2])
            cylinder(height,radius,radius,true);
        }

        translate([0,yy,0])
        rotate(270)
        difference(){
            translate([-.5,-.5,-.2])
            cube([radius+.5,radius+.5,height+.5]);

            translate([radius,radius,height/2])
            cylinder(height,radius,radius,true);
        }
    }
}
