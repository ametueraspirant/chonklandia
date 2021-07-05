if(input_check(Verb.right))global.cam.xx += 5;
else if(input_check(Verb.left))global.cam.xx -= 5;
if(input_check(Verb.up))global.cam.yy -= 5;
else if(input_check(Verb.down))global.cam.yy += 5;
camera_set_view_pos(_main_camera, global.cam.xx, global.cam.yy);