enum Verb {
	left,
	up,
	down,
	right,
	lclick,
	rclick
}

input_default_key(vk_left, Verb.left);
input_default_key(vk_up, Verb.up);
input_default_key(vk_down, Verb.down);
input_default_key(vk_right, Verb.right);
input_default_mouse_button(mb_left, Verb.lclick);
input_default_mouse_button(mb_right, Verb.rclick);

input_player_source_set(INPUT_SOURCE.KEYBOARD_AND_MOUSE);