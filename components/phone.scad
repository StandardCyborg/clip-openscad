module phone(phone_width, phone_length, phone_thickness, phone_edge_radius, rounded_corners, camera_bump_x_offset, camera_bump_y_offset, camera_bump_width, camera_bump_length, camera_bump_thickness, camera_bump_radius) {
    sphere_size = (phone_thickness/2);

    //minowski adds spheres around parts, so we need to translate by sphere_size
    if (rounded_corners == true) {
        translate([sphere_size, sphere_size, sphere_size]) {
          minkowski() {
             //minowski adds spheres around parts, so we need remove sphere size from width, length, and thickness
             roundedcube2(phone_width-sphere_size*2, phone_length-sphere_size*2, 0.00001, phone_edge_radius);
             sphere(r=sphere_size,$fn=50);
           }
        }
    } else {
      roundedcube2(phone_width-sphere_size*2, phone_length-sphere_size*2, phone_thickness, phone_edge_radius);
    }

    //translate([phone_width-camera_bump_x_offset-camera_bump_width/2, camera_bump_y_offset-camera_bump_y_offset/2, phone_thickness-0.1]) {
    translate([phone_width-camera_bump_width/2-camera_bump_x_offset, camera_bump_y_offset-camera_bump_length/2, phone_thickness-0.1]) {
        roundedcube2(camera_bump_width, camera_bump_length, camera_bump_thickness+0.1, camera_bump_radius);
    }
}
