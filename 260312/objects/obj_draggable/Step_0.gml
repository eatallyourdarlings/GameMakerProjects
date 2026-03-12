
//trying to do it all in one logic statement
/*
if position_meeting(x, y, obj_cursor) {

	if mouse_check_button(mb_left){
		dragging = true
		image_index = 2
	}
	else {
		hovering = true
		image_index = 1
	}
}
*/

//this line would tie the variable to making sure the cursor drawing code works
//hovering = position_meeting(x, y, obj_cursor);

hovering = position_meeting(mouse_x,mouse_y, self);

if hovering {
	//on the first frame that it's pressed, 
	// switch from hover to drag
	if mouse_check_button_pressed(mb_left){
		dragging = true	
	}
}

if dragging {
	
	//while button is held, move
	if mouse_check_button(mb_left){
		x = mouse_x;
		y = mouse_y;
	}
	else { dragging = false}
}

//draw sprites and make them hover over the cursor
if dragging {
	image_index = 2
	depth = -2;
}
else if hovering {
	depth = -1;
	
	if alt_sprite {
		image_index = 3
	}
	else {
		image_index = 1
	}
	
}
else {
	image_index = 0
	depth = -1;
}