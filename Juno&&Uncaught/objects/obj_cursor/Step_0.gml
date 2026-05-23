

//cursor goes anywhere
//x = lerp(x,mouse_x, speed);
//y = lerp(y,mouse_y, speed);



// clamp to obj_mouse_input.radius keep within a square
x = lerp(x,clamp(mouse_x, obj_mouse_input.x - obj_mouse_input.radius, obj_mouse_input.x + obj_mouse_input.radius), speed);
y = lerp(y, clamp(mouse_y, obj_mouse_input.y - obj_mouse_input.radius, obj_mouse_input.y + obj_mouse_input.radius), speed);

bounds = obj_mouse_input.radius;
x = lerp(x,clamp(mouse_x, obj_mouse_input.x - bounds, obj_mouse_input.x + bounds), speed);
y = lerp(y, clamp(mouse_y, obj_mouse_input.y - bounds, obj_mouse_input.y + bounds), speed);


// later... keep within bounds of a circle

if (position_meeting(x, y, obj_asterite)){
	speed = cursor_speed / 4;
}	
else {
	speed = cursor_speed;
}