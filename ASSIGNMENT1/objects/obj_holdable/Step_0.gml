


if obj_cursor.cursor_state == STATE.hold {
	image_blend = c_blue;
	depth = -2;
}
else if obj_cursor.cursor_state == STATE.hover {
	image_blend = c_red;
	depth = 0;	
}
else  {
	image_blend = c_white;
	depth = 0;	
}