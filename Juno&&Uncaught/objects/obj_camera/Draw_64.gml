//draw_text(global.width - 40, global.height - 20, $"{speed}");
//draw_text(width - 40, height - 40, $"{obj_cursor.x}, {obj_cursor.y}");


// 
//draw_text(global.width / 2, global.height / 2, "+")



//spr_blink.image_index = 5;
spr_blink.image_index += 1;
if time_source_units_frames
//spr_blink.image_speed = 5;
camera_corner_x = camera_get_view_x(view_camera[0]) - global.width / 2
camera_corner_y = camera_get_view_y(view_camera[0]) - global.height / 2
draw_sprite_ext(spr_blink, 7, camera_corner_x, camera_corner_y, image_xscale, image_yscale, image_angle, global.col_bg,
image_alpha);

// draw some jellies
// get random frames
// get random positions
	// divide width and height by rand_range(5)
	// add that to camera_corner_x and camera_corner_y
	// draw_spritext
	

draw_text(10, 10, $"{frames_blinking}  {current_room_blinks}")