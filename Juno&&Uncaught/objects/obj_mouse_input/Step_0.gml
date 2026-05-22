
// for later: keep centered in the screen?
//x = display_get_width() / 2 + radius;
//y = display_get_height() / 2 + radius;
//x = window_get_width() / 2;
//y = window_get_height() / 2;

//if (!window_get_fullscreen())
//{
//    window_center();
//}


//input_angle = point_direction(0,0, input_vector[0], input_vector[1]);

input_angle = point_direction(x,y, obj_cursor.x, obj_cursor.y);
input_vector = [obj_cursor.x - x, obj_cursor.y - y]

input_magnitude = sqrt(sqr(input_vector[0]) + sqr(input_vector[1]));
input_vector_normalised = [input_vector[0] / input_magnitude, input_vector[1] / input_magnitude];

//dir = point_direction(0,0,input_vector.x,input_vector.y);

//xspeed = lengthdir_x(runspeed,dir);
//yspeed = lengthdir_y(runspeed,dir);