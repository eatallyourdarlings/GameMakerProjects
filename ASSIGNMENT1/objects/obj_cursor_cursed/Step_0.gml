//x = mouse_x;
//y = mouse_y;


////mouse_check_button_pressed()


//// if not holding anything
//	// if position false and click = flex fingers
//	// if position true and not click = fidgety fingers (animate later)
//	// if position true and hold click = pickup (animate later), change state to holding
//// if holding something 
//	// if click start playing with the toy
//	// if hold click, change state to not holding and return toy to the bag


//// holdable code
////if position_meeting(x,y,obj_holdable) and  not mouse_check_button(INPUT_BUTTON) {
////	cursor_state = STATE.hover;
////}

//// if button just pressed reset the timer
////if mouse_check_button_pressed(INPUT_BUTTON) {
////	frames_pressed = 0;
////}


//if position_meeting(x,y,obj_holdable) {
	
//	if mouse_check_button(INPUT_BUTTON) {
		
//		//start playing pickup animation (forward/reverse based on state when starting)
		
//		if frames_pressed == frames_to_pickup {
//			frames_pressed = 0;
			
//			if cursor_state == STATE.hover {
//				cursor_state = STATE.hold;
//			}
			
			
//			else if cursor_state == STATE.hold {
//				cursor_state = STATE.empty	
//			}
//		}
//		else {
//			frames_pressed += 1;	
//		}
//	}
	
//	else {
//		cursor_state = STATE.hover;
//	}
//}

////else if mouse_check_button_released(INPUT_BUTTON) {
////	if cursor_state == STATE.hold {
////		cursor_state = STATE.empty;
////	}
////}

//else {
//	cursor_state = STATE.empty;
//}



//// FIX THE SPAGHETTI!

//switch (cursor_state) {
//	case STATE.empty: {
		
		
//		//cursor_state = STATE.hover;
//	} break;
//	case STATE.hold: {
		
//	} break;
//	case STATE.hover: {
		
//	} break;
//}



//// draggable code
////if mouse_check_button(INPUT_BUTTON) {
	
////	if position_meeting(x,y,obj_draggable) {
////		cursor_state = STATE.hold;
////	}
////	else {
////		cursor_state = STATE.hover;
////	}
////}

////else {
////	cursor_state = STATE.empty;
////}


//image_index = cursor_state;

////show_debug_message(cursor_state);