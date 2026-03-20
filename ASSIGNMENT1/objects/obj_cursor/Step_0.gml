x = mouse_x;
y = mouse_y;

frames_max = frames_pressed == frames_to_pickup;

if mouse_check_button_released(INPUT_BUTTON) 
// or mouse_check_button_pressed(INPUT_BUTTON)
 //or frames_max 
{
	frames_pressed = 0;
}

if mouse_check_button(INPUT_BUTTON) and frames_pressed < frames_to_pickup{
	frames_pressed += 1
}

//if frames_pressed = frames_to_pickup {
////play animation (in reverse)
//}

//function pickup_object {}
	
	
			
//if hovering over an object you can hold:

	//if not holding something: 
		//hover animation
		
		//if button pressed for 60 frames
			// set collision to target_object
			
		//if holding something: 
			//set object depth to higher than the cursor
			//object follows cursor position
		

	
collision = instance_position(x, y, obj_holdable)
	
if collision {
	show_debug_message("colliding");
	
	collision.image_blend = c_orange;
	//show_debug_message(collision);
	
	if !target_object{
		show_debug_message("no target");
		cursor_state = CURSOR_STATE.HOVER;
		
		//picking up
		if frames_max {
			show_debug_message("picking up");
			target_object = collision
			target_object.depth = -2;
			target_object.image_blend = c_red;
			cursor_state = CURSOR_STATE.HOLD
		}
	}
}


if target_object {
	show_debug_message("target");
	target_object.x = x;
	target_object.y = y;
	
	
	// dropping
	if frames_max {
		show_debug_message("dropping");
		target_object.depth = 0;
		target_object.image_blend = c_white;
		target_object = pointer_null;
		cursor_state = CURSOR_STATE.EMPTY
	}
}

else {
	cursor_state = CURSOR_STATE.EMPTY;
}
	
//		}
//	} break;
//	case CURSOR_STATE.hover: {
		
//	} break;
//	case CURSOR_STATE.hold: {
//		if frames_pressed = frames_to_pickup {
//			cursor_state = CURSOR_STATE.empty;
//		}
//	} break;
//}

image_index = cursor_state;