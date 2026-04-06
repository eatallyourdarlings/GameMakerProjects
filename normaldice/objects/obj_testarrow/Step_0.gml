
// if any key if pressed
if keyboard_key {
	//this line determines how long until after any key is released to do the alarm things
	// start the alarm for so many frames
	alarm[0] = 60;
	
	arrow_colour = c_white;
}


//switch (keyboard_key)
//{
//    case vk_numpad1: gun = weapon[0][0]; break;
//}

if keyboard_check_pressed(vk_right){
	input_vector[0] = min(input_vector[0] + 1, inputs_limit)
} else if keyboard_check_pressed(vk_left) {
	input_vector[0] = max(input_vector[0] - 1, -inputs_limit)
}

if keyboard_check_pressed(vk_up){
	input_vector[1] = max(input_vector[1] - 1, -inputs_limit)
} else if keyboard_check_pressed(vk_down) {
	input_vector[1] = min(input_vector[1] + 1, inputs_limit)
}


input_angle = point_direction(0,0, input_vector[0], input_vector[1]);

input_magnitude = sqrt(sqr(input_vector[0]) + sqr(input_vector[1]));
input_vector_normalised = [input_vector[0] / input_magnitude, input_vector[1] / input_magnitude];

//dir = point_direction(0,0,input_vector.x,input_vector.y);

//xspeed = lengthdir_x(runspeed,dir);
//yspeed = lengthdir_y(runspeed,dir);





// WASD AS A VECTOR EACH FRAME

////x is positive-right
//if keyboard_check(ord("D")){
//	input_vector[0] = 1
//} else if keyboard_check(ord("A")) {
//	input_vector[0] = -1
//}
//else {
//	input_vector[0] = 0
//}

////y is postitive-down
//if keyboard_check(ord("W")){
//	input_vector[1] = -1
//} else if keyboard_check(ord("S")) {
//	input_vector[1] = 1
//}
//else {
//	input_vector[1] = 0
//}