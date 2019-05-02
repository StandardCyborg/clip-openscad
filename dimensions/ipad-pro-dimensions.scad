// phone
ipad_pro__phone_width       = 178.52; //from spec
ipad_pro__phone_length      = 247.64; //from spec
ipad_pro__phone_thickness   = 5.9+phone_thickness_offset; //from spec
ipad_pro__phone_edge_radius = 8; // guess
ipad_pro__rounded_corners   = false;

// camera bump (ipad pro doesnt have a camera bump)
ipad_pro__camera_bump_x_offset  = 11.82-camera_bump_offset; //from spec with offset
ipad_pro__camera_bump_y_offset  = 18.67-camera_bump_offset; //from spec with offset
ipad_pro__camera_bump_width     = 11.26+camera_bump_offset*2; //from spec with offset
ipad_pro__camera_bump_length    = 24.53+camera_bump_offset*2; //from spec with offset
ipad_pro__camera_bump_thickness = 1.56+1;  //spec 1.56
ipad_pro__camera_bump_radius    = ipad_pro__camera_bump_width/2; //Xr specific, make it round

// truedepth notch
ipad_pro__notch_height = 8.7+0.2; //ipad's bezel is 8.7. this is a definite guess, added .2mm to try to fix the pulling down issue

ipad_pro__cutout_1_dist = -4.8;
ipad_pro__cutout_2_dist = -8.5;


// clip
ipad_pro__clip_width = 50;
ipad_pro__clip_thickness = ipad_pro__phone_thickness+(clip_top_bottom_thickness*2);

// clip cutout
ipad_pro__cutout_thickness = ipad_pro__clip_thickness/2+5; //2 is just for some clearance

ipad_pro__notch_offset_height = ipad_pro__notch_height+dfm_notch_offset; //notch height from spec, add more?
ipad_pro__notch_offset_width = ipad_pro__phone_width/2-mirror_width/2;
ipad_pro__back_offset_width = ipad_pro__phone_width/2-mirror_back_width/2;
