module generate_assembly(phone_width, phone_length, phone_thickness, phone_edge_radius, rounded_corners, notch_offset_width, notch_offset_height, back_offset_width, camera_bump_x_offset, camera_bump_y_offset, camera_bump_width, camera_bump_length, camera_bump_thickness, camera_bump_radius, clip_width, clip_length, clip_thickness, clip_top_bottom_thickness, cutout_width, cutout_length, cutout_thickness) {
  //trim up front curve
  difference() {

    //trim up top length
    difference() {
      //cutout from slot
        difference() {
          //clip with back
          union() {
            //resulting clip
            difference() {
              //clip cube
              translate([phone_width/2-clip_width/2, -clip_top_bottom_thickness, -clip_top_bottom_thickness]) color("red") roundedcube2(clip_width, clip_length, clip_thickness, 5);
              //phone and mirror back
              union() {
                //phone
                phone(phone_width, phone_length, phone_thickness, phone_edge_radius, rounded_corners, camera_bump_x_offset, camera_bump_y_offset, camera_bump_width, camera_bump_length, camera_bump_thickness, camera_bump_radius);

                //mirror slot
                translate([notch_offset_width, notch_offset_height, 0]) {
                  mirror();
                }
              }
            }

            //mirror back 4.1 is a magic number :/
            translate([back_offset_width, notch_offset_height+4.45, 0]) {
              color("blue") mirror_round();
            }
        }
        // cutout - with some magic numbers
        translate([phone_width/2-cutout_width/2, -3, -clip_top_bottom_thickness-1]) color("green") cube([cutout_width, cutout_length, cutout_thickness]);
      }
      // front trim cube
      translate([-10, 20, -phone_thickness]) cube([phone_width+20, phone_length+20, 10]);
    }

    if (rounded_corners == true) {
      difference() {
          difference() {
              translate ([0,4.2,(clip_thickness/2)-clip_top_bottom_thickness]) rotate(90, [0,1,0]) cylinder(phone_width,  clip_thickness/2+20, clip_thickness/2+20);
              translate ([-1,4.3,(clip_thickness/2)-clip_top_bottom_thickness]) rotate(90, [0,1,
              0]) cylinder(phone_width+5,  clip_thickness/2, clip_thickness/2);
          }
          translate ([-1,4.3,-50]) cube([phone_width+7,100,100]);
      }
    }

  }

  //translate([phone_width/2-cutout_width/2, -3, -clip_top_bottom_thickness-1]) color("green") cube([cutout_width, cutout_length, cutout_thickness]);

  //phone(phone_width, phone_length, phone_thickness, phone_edge_radius, rounded_corners, camera_bump_x_offset, camera_bump_y_offset, camera_bump_width, camera_bump_length, camera_bump_thickness, camera_bump_radius);

  // translate([notch_offset_width, notch_offset_height, 0]) {
  //   mirror();
  // }
}

