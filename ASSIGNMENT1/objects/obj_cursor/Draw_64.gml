draw_text(x +20,y + 20, string(cursor_state));
draw_text(x +20,y + 40, string(frames_pressed));


if frames_to_pickup == frames_pressed {
	draw_set_colour(c_red)
}
else {
	draw_set_colour(c_white)
}

if collision {
	draw_text(x +20,y + 60, string(collision));
}

draw_text(x +20,y + 80, string(target_object));

