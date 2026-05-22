/// @description line_3d(x1, y1, z1, x2, y2, z2, width, color);
/// @param x1
/// @param  y1
/// @param  z1
/// @param  x2
/// @param  y2
/// @param  z2
/// @param  width
/// @param  color
function line_3d(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7) {
	wp_to_sp(argument0, argument1, argument2);
	var x1 = res_screen_x;
	var y1 = res_screen_y;
	var s1 = res_screen_scale;

	wp_to_sp(argument3, argument4, argument5);
	var x2 = res_screen_x;
	var y2 = res_screen_y;
	var s2 = res_screen_scale;

	draw_line_width_colour(x1, y1, x2, y2, argument6 * (s1 + s2) / 2, argument7, argument7);



}
