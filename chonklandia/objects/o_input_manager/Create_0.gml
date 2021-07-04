enum Verb {
	left,
	up,
	down,
	right,
	lclick,
	rclick,
	f2,
	f3,
	uscroll,
	dscroll,
	ctrl
}

input_default_key(vk_left, Verb.left);
input_default_key(vk_up, Verb.up);
input_default_key(vk_down, Verb.down);
input_default_key(vk_right, Verb.right);
input_default_mouse_button(mb_left, Verb.lclick);
input_default_mouse_button(mb_right, Verb.rclick);
input_default_key(vk_f3, Verb.f3);
input_default_key(vk_f2, Verb.f2);
input_default_mouse_wheel_up(Verb.uscroll);
input_default_mouse_wheel_down(Verb.dscroll);
input_default_key(vk_control, Verb.ctrl);

input_player_source_set(INPUT_SOURCE.KEYBOARD_AND_MOUSE);