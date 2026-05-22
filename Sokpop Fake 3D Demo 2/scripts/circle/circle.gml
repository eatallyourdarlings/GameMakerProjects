/// @description circle(x, y, radius, color, xscale, yscale);
/// @param x
/// @param  y
/// @param  radius
/// @param  color
/// @param  xscale
/// @param  yscale
function circle() {
	draw_sprite_ext(spr_circle, 0, argument[0], argument[1], argument[4] * argument[2] / 32, argument[5] * argument[2] / 32, 0, argument[3], 1);



}
