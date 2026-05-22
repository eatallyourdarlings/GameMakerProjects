wp_to_sp(x, y, 0);

// if location not behind the camera: draw a shadow!
if (res_screen_scale > 0)
    circle(res_screen_x, res_screen_y, radius * res_screen_scale, c_gray, 1, camera.yscale);

