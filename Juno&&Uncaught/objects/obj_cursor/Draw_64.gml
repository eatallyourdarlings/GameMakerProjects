//draw_text(10, 10, $"{mouseTargetX},{mouseTargetY}")

//"crosshair" at the centre of screen tilts slightly behind the camera
// lerp tilting of the target to be a bit behind the camera
draw_set_colour(global.col_hi)
draw_text_ext_transformed(camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]), 
"~{ * }~", 0, 400, 1, 1, 0 + 1 * -cursor_wvy * 4)