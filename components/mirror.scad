// mirror
mirror_height = 25.4; //from spec
mirror_width = 35.4 + dfm_mirror_width; //from spec -- 36.1 in file?
mirror_thickness = 3 + dfm_mirror_thickness; //from spec

// mirror back
mirror_back_height = 8.4;
mirror_back_width = 35.4-4;
mirror_back_thickness = 2;

module mirror() {
    rotate(a=225, v=[1,0,0]){
        cube([mirror_width, mirror_height, mirror_thickness]);
    }
}

module mirror_round(l,w,h, angle = 225, radius = 2) {
    rotate(a=225, v=[1,0,0]){
        roundedcube2(mirror_back_width, mirror_back_height, mirror_back_thickness,radius);
    }
}
