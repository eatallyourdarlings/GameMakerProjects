x = mouse_x;
y = mouse_y;

//collision = instance_position(x, y, obj_holdable)

// if holding an object 
	// set the object's location to the cursor's location
	// set the object's render depth to the cursor's depth - 1 



// slowly transition the background
obj_background_tile.scroll_speed -= 0.0055;
audio_sound_gain(city, audio_sound_get_gain(city) - 0.00055)
audio_sound_gain(tram, audio_sound_get_gain(tram) - 0.00055)
audio_sound_gain(birdsong, audio_sound_get_gain(birdsong) + 0.000055)
obj_sky.image_alpha += 0.0005;

alpha = 0;

if obj_sky.image_alpha > 1 
//or mouse_check_button_pressed(mb_left)
{
	
	if alpha < 1{
		alpha += .1
	}

	obj_holdable.image_alpha = lerp(obj_holdable.image_alpha, 0, alpha)
	obj_background.image_alpha = lerp(obj_background.image_alpha, 0, alpha)
	
	//obj_background_tile.visible = 0;
	if target_object {target_object.drop();}
	instance_destroy(obj_holdable);
}



// on click
	// if not holding an object
		// if hovering over an object spawn
			// set target object to that object
		
		// if not hovering over anything
			// play grabbity animation
		
		
	// if holding an object
		// if cursor at the object's spawn
			// set target object to null
			// return the object to its location
			
		// if cursor not at spawn
			// do the object's unique function
				// play its pickup sound


collision_holdable = instance_position(x, y, obj_holdable)
collision_spawn = instance_position(x, y, obj_legs)



if target_object {
	image_index = 2;
	target_object.x = self.x;
	target_object.y = self.y;
	//target_object.depth = self.depth - 1;
}
else if collision_holdable {
	image_index = 1;
	alarm[0] = 5;
}


if mouse_check_button_pressed(INPUT_BUTTON){
	
	
	// not holding anything
	if !target_object {
		image_index = 1;
		alarm[0] = 5;
		
		// pick up object
		if collision_spawn {
			if collision_holdable {
				target_object = collision_holdable;
				target_object.pickup();
			}
		}
	}
	
	
	// holding something
	else {
		
		// if at the spawn point
		
		// drop it!
		if collision_spawn{
			alarm[0] = 5;
			target_object.drop();
			target_object = pointer_null;
			
		}
		
		
		// not at spawn and clicking while holding something
		else {
			// do the object's unique function
			target_object.interact();
			//play the cursor's unique animation
			
		}
		
	}
	
}
else {
	//image_index = 0;	
}






//image_index = cursor_state;



//frames_max = frames_pressed == frames_to_pickup;

//if mouse_check_button_released(INPUT_BUTTON) 
//// or mouse_check_button_pressed(INPUT_BUTTON)
// //or frames_max 
//{
//	frames_pressed = 0;
//}

//if mouse_check_button(INPUT_BUTTON) and frames_pressed < frames_to_pickup{
//	frames_pressed += 1
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
	
//if collision {
//	//show_debug_message("colliding");
	
//	collision.image_blend = c_orange;
//	//show_debug_message(collision);
	
//	if !target_object{
//		//show_debug_message("no target");
//		cursor_state = CURSOR_STATE.HOVER;
		
//		//picking up
//		if frames_max {
//			//show_debug_message("picking up");
//			target_object = collision
//			target_object.depth = -2;
//			target_object.image_blend = c_red;
//			cursor_state = CURSOR_STATE.HOLD
//		}
//	}
//}


//if target_object {
//	show_debug_message("target");
//	target_object.x = x;
//	target_object.y = y;
	
	
//	// dropping
//	if frames_max {
//		show_debug_message("dropping");
//		target_object.depth = 0;
//		target_object.image_blend = c_white;
//		target_object = pointer_null;
//		cursor_state = CURSOR_STATE.EMPTY
//	}
//}

//else {
//	cursor_state = CURSOR_STATE.EMPTY;
//}