//draw_text(global.width - 40, global.height - 20, $"{speed}");
//draw_text(width - 40, height - 40, $"{obj_cursor.x}, {obj_cursor.y}");


// "crosshair" at the centre of screen tilts slightly behind the camera
// lerp tilting of the target to be a bit behind the camera
draw_set_colour(global.col_hi)
draw_text_ext_transformed(global.width / 2, global.height / 2, 
"~{ * }~", 0, 400, 1, 1, 0 + 1 * -camera_wvy * 4)
//draw_text(global.width / 2, global.height / 2, "+")
