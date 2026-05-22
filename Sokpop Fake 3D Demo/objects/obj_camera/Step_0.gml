// looking around
rotation += keyboard_check(vk_right) - keyboard_check(vk_left);
pitch += keyboard_check(vk_up) - keyboard_check(vk_down);

// rotation matrix (for faster computation)
m00 = lengthdir_x(1, rotation);
m10 = lengthdir_y(-1, rotation);
m01 = lengthdir_y(1, rotation);
m11 = lengthdir_x(1, rotation);

yscale = lengthdir_y(1, pitch);
zscale = lengthdir_x(1, pitch);

// moving around
var raw_xaxis = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var raw_yaxis = keyboard_check(ord("W")) - keyboard_check(ord("S"));

// // move along the viewing direction
var for_x = lengthdir_x(1, -rotation + 90);
var for_y = lengthdir_y(1, -rotation + 90);
var side_x = lengthdir_x(1, -rotation);
var side_y = lengthdir_y(1, -rotation);

// // change camera location
x += (raw_yaxis * for_x + raw_xaxis * side_x) * 4;
y += (raw_yaxis * for_y + raw_xaxis * side_y) * 4;

// change FOV on the go
fov += (keyboard_check(ord("G")) - keyboard_check(ord("F"))) * 0.01;

