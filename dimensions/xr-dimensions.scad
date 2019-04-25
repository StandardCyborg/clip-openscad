// notes
// - left/right alignment is good
// - up/down alignment is good
// - need extra cutouts (to mirror slot width)
// - move camera bump down 1mm, size is good


// phone
xr__phone_width       = 75.72; //from spec
xr__phone_length      = 150.91; //from spec
xr__phone_thickness   = 8.32+phone_thickness_offset; //from spec
xr__phone_edge_radius = 8; // guess
xr__rounded_corners   = true;

// camera bump
xr__camera_bump_x_offset  = 12.28-camera_bump_offset; //from spec with offset
xr__camera_bump_y_offset  = 12.28-camera_bump_offset+1; //from spec with offset, 1 is from DFM test
xr__camera_bump_width     = 10.93+camera_bump_offset*2; //from spec with offset
xr__camera_bump_length    = 10.93+camera_bump_offset*2; //from spec with offset
xr__camera_bump_thickness = 1.56+1;  //spec 1.56
xr__camera_bump_radius    = xr__camera_bump_length /2; //Xr specific, make it round

// truedepth notch
xr__notch_height = 5.57+5.15;




// clip
xr__clip_width = xr__phone_width*0.66;
xr__clip_thickness = xr__phone_thickness+(clip_top_bottom_thickness*2);

// clip cutout
xr__cutout_thickness = xr__clip_thickness/2+5; //2 is just for some clearance

xr__notch_offset_height = xr__notch_height+dfm_notch_offset; //notch height from spec, add more?
xr__notch_offset_width = xr__phone_width/2-mirror_width/2;
xr__back_offset_width = xr__phone_width/2-mirror_back_width/2;
