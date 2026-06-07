
// DEBUGGING

// cannot find instance for index 17?
// view_camera[0] prints as 17
// ok so it's not a problem with cursor, that exists

//if instance_exists(obj_cursor){
//	camera.x = lerp(view_camera[0].x, obj_cursor.x, speed);
//}

///////////

animation_run();

// if mid-blink
// draw jellyfish?
//if (blink_anim.image_index == 11 && frames_blinking > 0;){
		
//}


// BLINK !
if mouse_check_button(mb_left) and mouse_check_button(mb_right)
{
	blink_anim_direction = 1;
	//animation_set_pause(false)
	print("blinking!");
	frames_blinking++;
	
	// incremement the counter of how many times you've blinked
	if frames_blinking == 20
	{
		current_room_blinks++;
	}
	
	//if animation_finished(){
	//	current_room_blinks++;	
	//	//animation_set_pause(true);
	//}
	
	
	// do something after x frames of blinking
	// draw jellyfish?
	if frames_blinking == 1000
	{
		print("do a thing after blink");
		
		
		// idk!	
		//last_blink_start_time = current_time;			
		//if (current_time = last_blink_start_time + 5000) 
		//{
		//	print("5 seconds after blink");
		//	last_blink_start_time = 0;
		//}
	}
	
		
	//if (animation_finished()){

	//if blink_anim.image_index == 11 {
	//	//animation_effect_hitstop(100)
	//	animation_set_pause(true)
	//	//if (blink_anim.image_speed < 0) {blink_anim.image_speed = 10}
	//	//else {blink_anim.image_speed = -10}
	
	//}
	//if (room_next(room) != -1)
	//room_next(room) == 1
	
	if (room_next(room) != -1 and obj_room_counter.counter == current_room_blinks)
	{
		current_room_blinks = 0;
	    room_goto_next();
	}
}


if mouse_check_button_released(mb_left) or mouse_check_button_released(mb_right)
{
	if frames_blinking > 0 
	{
		//animation_set_pause(false);
		// reverse animation direction	
		//blink_anim_direction = 1 - blink_anim_direction;
		blink_anim_direction = 0;
		print("just unblinked!");
	}
	
	frames_blinking = 0;
}

		
if (blink_anim_direction == 0) {blink_anim.image_speed = -22}
else if (blink_anim_direction == 1){blink_anim.image_speed = 22}


//with (cursor){
////self.camera.x = lerp(x, other.x, speed);
////self.camera.y = lerp(y, other.y, speed);
//	view_camera[0].x = lerp(x, other.x, speed);
//	view_camera[0].y = lerp(y, other.y, speed);
	
//}
//camera.x = lerp(x, cursor.x, speed);
//camera.y = lerp(y, cursor.y, speed);

// center on the cursor
//camera_set_view_pos(view_camera[0], obj_cursor.x / 2, obj_cursor.y / 2)

//var camera_x, camera_y;

if (instance_exists(obj_cursor)){
	camera_x = lerp(camera_get_view_x(view_camera[0]), obj_cursor.x / 2, speed);
	camera_y = lerp(camera_get_view_y(view_camera[0]), obj_cursor.y / 2, speed);
	}
else 
{
	camera_x = global.width / 2;
	camera_y = global.height / 2;
}
	
camera_set_view_pos(view_camera[0], camera_x, camera_y);

//var camera_y = lerp(camera_get_view_y(view_camera[0]));



// subtley lean the camera?
camera_wvy = sin(get_timer()  / 5000000);
camera_set_view_angle(view_camera[0], 0 + camera_wvy);
//camera_angle = lerp(camera_angle,camera_angle+1,speed)
