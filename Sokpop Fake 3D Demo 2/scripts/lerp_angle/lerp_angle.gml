/// @description lerp_angle(angle, target, t)
/// @param angle
/// @param  target
/// @param  t
function lerp_angle(argument0, argument1, argument2) {
	var angle = argument0;
	var target = argument1;
	var t = argument2;
	return -angle_difference(angle, target) * t;



}
