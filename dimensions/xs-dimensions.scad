// phone
xs__phone_width       = 70.94; //from spec
xs__phone_length      = 143.57; //from spec
xs__phone_thickness   = 7.7+phone_thickness_offset; //from spec
xs__phone_edge_radius = 8; // guess
xs__rounded_corners   = true;

// camera bump
xs__camera_bump_x_offset  = 11.82-camera_bump_offset; //from spec with offset
xs__camera_bump_y_offset  = 18.67-camera_bump_offset+0.5; //from spec with offset
xs__camera_bump_width     = 11.26+camera_bump_offset*2; //from spec with offset
xs__camera_bump_length    = 24.23+camera_bump_offset*2+1; //from spec with offset, 1 is DFM experimental
xs__camera_bump_thickness = 1.56+1;  //spec 1.56
xs__camera_bump_radius    = xs__camera_bump_width /2; //Xr specific, make it round

// truedepth notch
xs__mirror_offset = 2;
xs__notch_height = 3.91+4.99+xs__mirror_offset;

xs__cutout_1_dist = -4.8+xs__mirror_offset;
xs__cutout_2_dist = -8.5+xs__mirror_offset;




// clip
xs__clip_width = xs__phone_width*0.66;
xs__clip_thickness = xs__phone_thickness+(clip_top_bottom_thickness*2);

// clip cutout
xs__cutout_thickness = xs__clip_thickness/2+5; //2 is just for some clearance

xs__notch_offset_height = xs__notch_height+dfm_notch_offset; //notch height from spec, add more?
xs__notch_offset_width = xs__phone_width/2-mirror_width/2;
xs__back_offset_width = xs__phone_width/2-mirror_back_width/2;

/// v4 went with 0.5mm offset on xs__camera_bump_y_offset
