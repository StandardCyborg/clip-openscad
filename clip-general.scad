// DONT TOUCH THIS
$fs = 0.1;
include <components/constants.scad>;
include <components/rounded-cube.scad>;
include <components/phone.scad>;
include <components/mirror.scad>;
include <components/assembly.scad>;

include <dimensions/xs-max-dimensions.scad>;
include <dimensions/xs-dimensions.scad>;
include <dimensions/xr-dimensions.scad>;
include <dimensions/ipad-pro-dimensions.scad>;

//translate([0,0,0]) generate_assembly(xs_max__phone_width, xs_max__phone_length, xs_max__phone_thickness, xs_max__phone_edge_radius, xs_max__rounded_corners, xs_max__notch_offset_width, xs_max__notch_offset_height, xs_max__back_offset_width, xs_max__camera_bump_x_offset, xs_max__camera_bump_y_offset, xs_max__camera_bump_width, xs_max__camera_bump_length, xs_max__camera_bump_thickness, xs_max__camera_bump_radius, xs_max__clip_width, clip_length, xs_max__clip_thickness, clip_top_bottom_thickness, cutout_width, cutout_length, xs_max__cutout_thickness);

translate([0,0,0]) generate_assembly(xr__phone_width, xr__phone_length, xr__phone_thickness, xr__phone_edge_radius, xr__rounded_corners, xr__notch_offset_width, xr__notch_offset_height, xr__back_offset_width, xr__camera_bump_x_offset, xr__camera_bump_y_offset, xr__camera_bump_width, xr__camera_bump_length, xr__camera_bump_thickness, xr__camera_bump_radius, xr__clip_width, clip_length, xr__clip_thickness, clip_top_bottom_thickness, cutout_width, cutout_length, xr__cutout_thickness);

//translate([0,0,0]) generate_assembly(xs__phone_width, xs__phone_length, xs__phone_thickness, xs__phone_edge_radius,xs__rounded_corners, xs__notch_offset_width, xs__notch_offset_height, xs__back_offset_width, xs__camera_bump_x_offset, xs__camera_bump_y_offset, xs__camera_bump_width, xs__camera_bump_length, xs__camera_bump_thickness, xs__camera_bump_radius, xs__clip_width, clip_length, xs__clip_thickness, clip_top_bottom_thickness, cutout_width, cutout_length, xs__cutout_thickness);

//translate([0,0,0]) generate_assembly(ipad_pro__phone_width, ipad_pro__phone_length, ipad_pro__phone_thickness, ipad_pro__phone_edge_radius, ipad_pro__rounded_corners,ipad_pro__notch_offset_width, ipad_pro__notch_offset_height, ipad_pro__back_offset_width, ipad_pro__camera_bump_x_offset, ipad_pro__camera_bump_y_offset, ipad_pro__camera_bump_width, ipad_pro__camera_bump_length, ipad_pro__camera_bump_thickness, ipad_pro__camera_bump_radius, ipad_pro__clip_width, clip_length, ipad_pro__clip_thickness, clip_top_bottom_thickness, cutout_width, cutout_length, ipad_pro__cutout_thickness);


