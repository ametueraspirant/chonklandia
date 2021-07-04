// #TEST
if(input_check_pressed(Verb.f3)) {
	if(debug = false) {
	debug = true;
	inputs = false;
	} else {
		debug = false;
	}
}

// #TEST
if(input_check_pressed(Verb.f2)) {
	if(inputs = false) {
		inputs = true;
		debug = false;
	} else {
		inputs = false;
	}
}