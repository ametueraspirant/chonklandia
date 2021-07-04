if(input_check(Verb.right))global.cam._x += 5;
else if(input_check(Verb.left))global.cam._x -= 5;
if(input_check(Verb.up))global.cam._y -= 5;
else if(input_check(Verb.down))global.cam._y += 5;
camera_set_view_pos(_main_camera, global.cam._x, global.cam._y);