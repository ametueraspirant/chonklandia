// #TEST
if(input_check(Verb.right) && !input_check(Verb.left)) {
	global.cam.xx -= (5 * global.cam.spd) * (global.cam.zoom.cur * 0.5);
	global.cam.yy += (5 * global.cam.spd) * (global.cam.zoom.cur * 0.5);
}
else if(input_check(Verb.left) && !input_check(Verb.right)) {
	global.cam.xx += (5 * global.cam.spd) * (global.cam.zoom.cur * 0.5);
	global.cam.yy -= (5 * global.cam.spd) * (global.cam.zoom.cur * 0.5);
}
if(input_check(Verb.up) && !input_check(Verb.down)) {
	global.cam.yy -= (5 * global.cam.spd) * (global.cam.zoom.cur * 0.75);
	global.cam.xx -= (5 * global.cam.spd) * (global.cam.zoom.cur * 0.75);
}
else if(input_check(Verb.down) && !input_check(Verb.up)) {
	global.cam.yy += (5 * global.cam.spd) * (global.cam.zoom.cur * 0.75);
	global.cam.xx += (5 * global.cam.spd) * (global.cam.zoom.cur * 0.75);
}

if(input_check_pressed(Verb.uscroll) && global.cam.zoom.cur > global.cam.zoom.min)global.cam.zoom.cur -= 0.1 * global.cam.zoom.cur;
if(input_check_pressed(Verb.dscroll) && global.cam.zoom.cur < global.cam.zoom.max)global.cam.zoom.cur += 0.1 * global.cam.zoom.cur;

camera_set_view_pos(_main_camera, global.cam.xx, global.cam.yy);
