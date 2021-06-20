if(input_check(Verb.right))cam._x += 5;
else if(input_check(Verb.left))cam._x -= 5;
if(input_check(Verb.up))cam._y -= 5;
else if(input_check(Verb.down))cam._y += 5;
camera_set_view_pos(_main_camera, cam._x, cam._y);