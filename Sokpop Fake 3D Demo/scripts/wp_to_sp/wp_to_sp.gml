/// @description wp_to_sp(x, y, z);
/// @param x
/// @param  y
/// @param  z
function wp_to_sp(argument0, argument1, argument2) {
	/* Takes a position in the world,
	   and transforms it to a position
	   on the screen.
   
	   Returns: 
	   res_screen_x:     x-location on the screen
	   res_screen_y:     y-location on the screen
	   res_screen_z:     z-location on the screen.              Used for setting the depth.
	   res_screen_scale: scale of the position on the screen.   Used to make close objects appear bigger.
	   */

	res_screen_x = argument0;
	res_screen_y = argument1;
	res_screen_z = argument2;

	// move to the camera, and to the top-left corner of the screen (translate)
	res_screen_x -= camera.x + camera.width / 2
	res_screen_y -= camera.y + camera.height / 2
	res_screen_z -= camera.z;

	// rotation (rotate x y)
	xp_net = res_screen_x;
	res_screen_x = xp_net * camera.m00 + res_screen_y * camera.m10;
	res_screen_y = xp_net * camera.m01 + res_screen_y * camera.m11;

	// pitch (rotate y z)
	yp_net = res_screen_y;
	res_screen_y = yp_net * camera.yscale - res_screen_z * camera.zscale;
	res_screen_z = -yp_net * camera.zscale - res_screen_z * camera.yscale;

	// calculate perspective amount
	res_screen_scale = (res_screen_z - camera.near) * camera.farnear_comp;
	res_screen_scale += (1 - res_screen_scale) * camera.fov;

	res_screen_scale = camera.zoom / res_screen_scale;

	// move far-away objects to the center of the screen, close-by objects away from the center
	res_screen_x *= res_screen_scale;
	res_screen_y *= res_screen_scale;

	// move (translate) back to the center of the screen
	res_screen_x += camera.width / 2;
	res_screen_y += camera.height / 2;



}
