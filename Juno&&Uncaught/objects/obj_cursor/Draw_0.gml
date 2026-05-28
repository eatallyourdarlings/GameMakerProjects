depth = 0

// get the camera position (top left corner)
// get the camera width and height
// corners should be:
	// x,y
	// x+w,y
	// x,y+h
	// x+w,y+h
	
//view_wport[0];
//view_hport[0];

// fixed to the room
//v_x = camera_get_view_border_x(view_camera[0])
//v_y = camera_get_view_border_y(view_camera[0])
//v_h = camera_get_view_height(view_camera[0])
//v_w = camera_get_view_width(view_camera[0])
//v_x = view_xport[0]
//v_y = view_yport[0]
//v_h = view_hport[0]
//v_w = view_wport[0]

// global.width
// global.height

v_x = window_get_x();
v_y = window_get_y();
v_w = window_get_width();
v_h = window_get_height();

//draw_text(x - 40, y - 40, $"w {v_w}, h {v_h}");
//draw_text(x - 40, y - 20, $"x {v_x}, y {v_y}");

//draw_line_width_colour(obj_cursor.x, obj_cursor.y, v_x, v_y, 2, global.col_hi, global.col_hi)
//draw_line_width_colour(obj_cursor.x, obj_cursor.y, v_x + v_w, v_y + v_h, 2, global.col_hi, global.col_hi)
//draw_line_width_colour(obj_cursor.x, obj_cursor.y, v_x, v_y + v_h, 2, global.col_hi, global.col_hi)
//draw_line_width_colour(obj_cursor.x, obj_cursor.y, v_x + v_w, v_y, 2, global.col_hi, global.col_hi)

// view_get_xport
// view_xport

draw_set_colour(global.col_hi)
	
curve_detail = 30;
wvy_angle = 35;

//draw_curve(obj_cursor.x, obj_cursor.y, v_x, v_y, 90, curve_detail);
//draw_curve(obj_cursor.x, obj_cursor.y, v_x + v_w, v_y + v_h, 90, curve_detail);
//draw_curve(obj_cursor.x, obj_cursor.y, v_x, v_y + v_h, 90, curve_detail);
//draw_curve(obj_cursor.x, obj_cursor.y, v_x + v_w, v_y, 90, curve_detail);

// going clockwise
draw_curve(v_x, v_y, obj_cursor.x, obj_cursor.y, 300 + (wvy_angle + 5) * string_wvy, curve_detail);
draw_curve(v_x + v_w, v_y, obj_cursor.x, obj_cursor.y, 100 + (wvy_angle + 10) * string_wvy, curve_detail);
draw_curve(v_x + v_w, v_y + v_h, obj_cursor.x, obj_cursor.y, 50 + (wvy_angle - 10) * string_wvy, curve_detail);
draw_curve(v_x, v_y + v_h, obj_cursor.x, obj_cursor.y, 30 + wvy_angle * string_wvy, curve_detail);


//draw sprite on top

//draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend,image_alpha);
draw_sprite_ext(spr_anchor, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend,image_alpha);
image_blend = global.col_key;
draw_set_colour(global.col_key);
draw_text_ext_transformed(x, y + 4, "*<o+{(=:",0, 400, 0.6, 0.6 * cursor_wvy, 270);

depth = -1