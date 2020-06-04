// phone
11pro__phone_width       = 71.36; //from spec
11pro__phone_length      = 143.99; //from spec
11pro__phone_thickness   = 8.1+phone_thickness_offset; //from spec
11pro__phone_edge_radius = 8; // guess
11pro__rounded_corners   = true;

// camera bump

11pro__camera_bump_width     = 30.59+camera_bump_offset*2; //from spec with offset
11pro__camera_bump_length    = 32.71+camera_bump_offset*2+1; //from spec with offset, 1 is DFM experimental
11pro__camera_bump_thickness = 1.21+1;  //spec 1.21
11pro__camera_bump_radius    = 11pro__camera_bump_width /4; //Xr specific, make it round

11pro__camera_bump_x_offset  = 3.23+(11pro__camera_bump_width/2)-camera_bump_offset; //from spec with offset
11pro__camera_bump_y_offset  = 3.23+(11pro__camera_bump_length/2)-camera_bump_offset+0.5; //from spec with offset

// truedepth notch
11pro__mirror_offset = 0; // this used to be 2mm, but it was clipping the scan off the top, now its 0
11pro__notch_height = 3.91+4.99+11pro__mirror_offset;

11pro__cutout_1_dist = -4.8+11pro__mirror_offset;
11pro__cutout_2_dist = -8.5+11pro__mirror_offset;




// clip
11pro__clip_width = 11pro__phone_width*0.66;
11pro__clip_thickness = 11pro__phone_thickness+(clip_top_bottom_thickness*2);

// clip cutout
11pro__cutout_thickness = 11pro__clip_thickness/2+5; //2 is just for some clearance

11pro__notch_offset_height = 11pro__notch_height+dfm_notch_offset; //notch height from spec, add more?
11pro__notch_offset_width = 11pro__phone_width/2-mirror_width/2;
11pro__back_offset_width = 11pro__phone_width/2-mirror_back_width/2;

/// v4 went with 0.5mm offset on 11pro__camera_bump_y_offset
