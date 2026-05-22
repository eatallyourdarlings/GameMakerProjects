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

// set camera axes
var xy_dist = lengthdir_x(1, pitch);
for_x = lengthdir_x(xy_dist, -rotation + 90);
for_y = lengthdir_y(xy_dist, -rotation + 90);
for_z = -lengthdir_y(1, pitch);
side_x = lengthdir_x(1, -rotation);
side_y = lengthdir_y(1, -rotation);
side_z = 0;
var xy_dist = lengthdir_x(1, pitch + 90);
up_x = lengthdir_x(xy_dist, -rotation + 90);
up_y = lengthdir_y(xy_dist, -rotation + 90);
up_z = -lengthdir_y(1, pitch + 90);

// change FOV on the go
fov += (keyboard_check(ord("G")) - keyboard_check(ord("F"))) * 0.01;

