


//x is positive-right
if keyboard_check(ord("D")){
	input_vector[0] = 1
} else if keyboard_check(ord("A")) {
	input_vector[0] = -1
}
else {
	input_vector[0] = 0
}

//y is postitive-down
if keyboard_check(ord("W")){
	input_vector[1] = -1
} else if keyboard_check(ord("S")) {
	input_vector[1] = 1
}
else {
	input_vector[1] = 0
}

input_angle = point_direction(0,0, input_vector[0], input_vector[1]);

input_magnitude = sqrt(sqr(input_vector[0]) + sqr(input_vector[1]));
input_vector_normalised = [input_vector[0] / input_magnitude, input_vector[1] / input_magnitude];

//dir = point_direction(0,0,input_vector.x,input_vector.y);

//xspeed = lengthdir_x(runspeed,dir);
//yspeed = lengthdir_y(runspeed,dir);