if(input_check(Verb.left))cam._x++;
else if(input_check(Verb.right))cam._x--;
if(input_check(Verb.up))cam._y--;
else if(input_check(Verb.down))cam._y++;
camera_set_view_pos(_main_camera, cam._x, cam._y);