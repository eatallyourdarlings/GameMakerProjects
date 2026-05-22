/// @description step_foot(foot_index);
/// @param foot_index
function step_foot(argument0) {
	var i = argument0;
	foot_xprev[i] = foot_x[i];
	foot_yprev[i] = foot_y[i];

	var side = i * 2 - 1;
	foot_xtarg[i] = x + side_x * feet_width * side + for_x * radius * 2;
	foot_ytarg[i] = y + side_y * feet_width * side + for_y * radius * 2;

	foot_t[i] = 0;



}
