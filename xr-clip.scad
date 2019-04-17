// todo
// - add experimental offsets (eg slot thickness/width), phone thickness
// - add notch offset

// Set to 0.01 for higher definition curves (renders slower)
$fs = 0.1;

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


module phone(phone_width, phone_length, phone_thickness, phone_edge_radius, camera_bump_x_offset, camera_bump_y_offset, camera_bump_width, camera_bump_length, camera_bump_thickness, camera_bump_radius) {
    roundedcube2(phone_width, phone_length, phone_thickness, phone_edge_radius);

    translate([phone_width-camera_bump_x_offset-camera_bump_width/2, camera_bump_y_offset/2, phone_thickness-0.1]) {
        roundedcube2(camera_bump_width, camera_bump_length, camera_bump_thickness+0.1, camera_bump_radius);
    }
}

module mirror(size = [1,1,1], angle = 225) {
    rotate(a=angle, v=[1,0,0]){
        cube(size);
    }
}


// all units in mm and degress

//offsets
phone_thickness_offset = 0.3;
camera_bump_offset = 0.1;

// iPhone XR dimensions
phone_width = 75.72; //from spec
phone_length = 150.91; //from spec
phone_thickness = 8.32+phone_thickness_offset; //from spec
phone_edge_radius = 12; // guess
camera_bump_x_offset = 12.28-camera_bump_offset; //from spec with offset
camera_bump_y_offset = 12.28-camera_bump_offset; //from spec with offset
camera_bump_width = 10.93+camera_bump_offset*2; //from spec with offset
camera_bump_length = 10.93+camera_bump_offset*2; //from spec with offset
camera_bump_thickness = 1.56+1;  //spec 1.56
camera_bump_radius = camera_bump_length/2; //Xr specific, make it round

// mirror
mirror_height = 25.4; //from spec
mirror_width = 35.4; //from spec -- 36.1 in file?
mirror_thickness = 3; //from spec --

// mirror back
mirror_back_height = 25.4;
mirror_back_width = 35.4-4;
mirror_back_thickness = 3;

// clip
clip_width = phone_width*0.66;
clip_length = 50;
clip_top_bottom_thickness = 2;
clip_thickness = phone_thickness+(clip_top_bottom_thickness*2);

// clip cutout
cutout_width = mirror_width-5;
cutout_length = 16;
cutout_thickness = clip_thickness/2+2; //2 is just for some clearance

notch_offset_height = 5.57+5.15; //notch height from spec, add more?
notch_offset_width = phone_width/2-mirror_width/2;
back_offset_width = phone_width/2-mirror_back_width/2;



difference() {
    difference() {
        union() {
         difference() {
            translate([phone_width/2-clip_width/2, -clip_top_bottom_thickness, -clip_top_bottom_thickness]) color("red") cube([clip_width, clip_length, clip_thickness]);
             union() {
                phone(phone_width, phone_length, phone_thickness, phone_edge_radius, camera_bump_x_offset, camera_bump_y_offset, camera_bump_width, camera_bump_length, camera_bump_thickness, camera_bump_radius);

                translate([notch_offset_width,notch_offset_height,0]) {
                    mirror([mirror_width, mirror_height, mirror_thickness]);
                }
             }
         }

         // 4.1 is a magic number :/
         translate([back_offset_width, notch_offset_height+4.1, 0]) {
            color("blue") mirror([mirror_back_width, mirror_back_height, mirror_back_thickness]);
        }
    }
          translate([phone_width/2-cutout_width/2,-clip_top_bottom_thickness-1,-clip_top_bottom_thickness-1]) color("green") cube([cutout_width,cutout_length,cutout_thickness]);
    }
    translate([-10,20,-phone_thickness]) cube([phone_width+20,phone_length+20,10]);
}
