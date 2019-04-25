// phone
xs_max__phone_width       = 77.42; //from spec
xs_max__phone_length      = 157.53; //from spec
xs_max__phone_thickness   = 7.7+phone_thickness_offset; //from spec
xs_max__phone_edge_radius = 8; // guess
xs_max__rounded_corners   = true;

// camera bump
xs_max__camera_bump_x_offset  = 11.82-camera_bump_offset; //from spec with offset
xs_max__camera_bump_y_offset  = 18.67-camera_bump_offset; //from spec with offset
xs_max__camera_bump_width     = 11.26+camera_bump_offset*2; //from spec with offset
xs_max__camera_bump_length    = 24.53+camera_bump_offset*2; //from spec with offset
xs_max__camera_bump_thickness = 1.56+1;  //spec 1.56
xs_max__camera_bump_radius    = xs_max__camera_bump_width/2; //Xr specific, make it round

// truedepth notch
xs_max__notch_height = 3.91+4.99;


// clip
xs_max__clip_width = xs_max__phone_width*0.66;
xs_max__clip_thickness = xs_max__phone_thickness+(clip_top_bottom_thickness*2);

// clip cutout
xs_max__cutout_thickness = xs_max__clip_thickness/2+5; //2 is just for some clearance

xs_max__notch_offset_height = xs_max__notch_height+dfm_notch_offset; //notch height from spec, add more?
xs_max__notch_offset_width = xs_max__phone_width/2-mirror_width/2;
xs_max__back_offset_width = xs_max__phone_width/2-mirror_back_width/2;
