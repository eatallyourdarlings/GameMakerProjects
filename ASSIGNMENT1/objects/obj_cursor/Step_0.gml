x = mouse_x;
y = mouse_y;


//mouse_check_button_pressed()


// if not holding anything
	// if position false and click = flex fingers
	// if position true and not click = fidgety fingers (animate later)
	// if position true and hold click = pickup (animate later), change state to holding
// if holding something 
	// if click start playing with the toy
	// if hold click, change state to not holding and return toy to the bag



if mouse_check_button(INPUT_BUTTON) {
	if position_meeting(x,y,obj_grabbable) {
		cursor_state = STATE.hold;
	}
	else {
		cursor_state = STATE.hover;
	}
}
else {
	cursor_state = STATE.empty;
}

image_index = cursor_state;

//show_debug_message(cursor_state);