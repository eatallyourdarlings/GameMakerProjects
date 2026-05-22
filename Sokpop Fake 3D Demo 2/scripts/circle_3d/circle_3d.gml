/// @description circle_3d(x, y, z, radius, color);
/// @param x
/// @param  y
/// @param  z
/// @param  radius
/// @param  color
function circle_3d(argument0, argument1, argument2, argument3, argument4) {

	wp_to_sp(argument0, argument1, argument2);
	circle(res_screen_x, res_screen_y, argument3 * res_screen_scale, argument4, 1, 1);



}
