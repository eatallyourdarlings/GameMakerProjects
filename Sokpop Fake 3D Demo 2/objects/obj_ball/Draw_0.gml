wp_to_sp(x, y, z);
// if location not behind the camera: draw a ball!
if (res_screen_scale > 0)
    circle(res_screen_x, res_screen_y, radius * res_screen_scale, color, 1, 1);

