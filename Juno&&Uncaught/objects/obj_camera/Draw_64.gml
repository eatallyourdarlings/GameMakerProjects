depth = - 2
//draw_text(global.width - 40, global.height - 20, $"{speed}");
//draw_text(width - 40, height - 40, $"{obj_cursor.x}, {obj_cursor.y}");


// 
//draw_text(global.width / 2, global.height / 2, "+")


// DON'T CHANGE image_index
//spr_blink.image_speed = 5;
//camera_corner_x = camera_get_view_x(view_camera[0]) - global.width / 2
//camera_corner_y = camera_get_view_y(view_camera[0]) - global.height / 2
//camera_corner_x = camera_get_view_x(view_camera[0]) - global.width / 2
//camera_corner_y = camera_get_view_y(view_camera[0]) - global.height / 2
//draw_sprite_ext(spr_blink, 7, camera_corner_x, camera_corner_y, image_xscale, image_yscale, image_angle, global.col_bg,
//image_alpha);

// using camera corners might make the blink move within screen bounds
//animation_draw(camera_corner_x, camera_corner_y);
animation_draw(view_xport[0], view_yport[0]);
//view_xport[]
blink_anim.image_blend = global.col_hi;

// When using manual mode, this function must be called every step for your animations to process
//animation_run()
// stop animation for x frames
//animation_effect_hitstop(_duration)

// draw some jellies
// get random frames
// get random positions
	// divide width and height by rand_range(5)
	// add that to camera_corner_x and camera_corner_y
	// draw_spritext

// DEBUG TEXT
draw_set_colour(global.col_key)
draw_text(10, 10, $"frames{frames_blinking} blinks{current_room_blinks} dir{blink_anim_direction}, a_f{animation_finished()} img_i{blink_anim.image_index}")