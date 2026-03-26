
x_speed = 0;


if keyboard_check(vk_right){
	x_speed = run_speed;
}

if keyboard_check(vk_left){
	x_speed = -run_speed;	
}

y_speed += gravity_speed;



// on the ground
if place_meeting(x,y+1,obj_solid){
	y_speed = 0;
	
	// jump
	if keyboard_check(vk_up){
		y_speed = jump_speed;
	}
}

//on the ceiling
if place_meeting(x, y-1, obj_solid) {
		y_speed = 0;
}

//if x_speed == 0 {image_index = 0;}
//else {image_xscale = sign(x_speed);}

//wrap = position_meeting(x,y,obj_screenwrap);
////wrap = instance_position(x, y, obj_screenwrap)

//if wrap {
//	if wrap.up {
//		self.y -= wrap.wrap_distance;
//	}
//	else {
//		self.y += wrap.wrap_distance;
//	}
//}



if y_speed > y_speed_max { y_speed = y_speed_max }
move_and_collide(x_speed, y_speed, obj_solid);
move_wrap(true, true, sprite_height)


	