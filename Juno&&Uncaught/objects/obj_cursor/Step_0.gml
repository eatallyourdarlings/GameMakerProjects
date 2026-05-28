

//cursor goes anywhere
//x = lerp(x,mouse_x, speed);
//y = lerp(y,mouse_y, speed);

cursor_wvy = sin(get_timer()  / 1000000)
string_wvy = sin(get_timer()  / 5000000)

if (window_mouse_get_locked())
{
    mouse_delta_x = window_mouse_get_delta_x();
    mouse_delta_y = window_mouse_get_delta_y();
	mouseTargetX += mouse_delta_x;
	mouseTargetY += mouse_delta_y;
	mouseTargetX = clamp(mouseTargetX, v_x, v_x + v_w);
	mouseTargetY = clamp(mouseTargetY, v_y, v_y + v_h);
} 
else {
	mouseTargetX = v_x + v_w / 2;
	mouseTargetY = v_y + v_h / 2;
}

// clamp to obj_mouse_input.radius keep within a square
//x = lerp(x,clamp(mouse_x, obj_mouse_input.x - obj_mouse_input.radius, obj_mouse_input.x + obj_mouse_input.radius), speed);
//y = lerp(y, clamp(mouse_y, obj_mouse_input.y - obj_mouse_input.radius, obj_mouse_input.y + obj_mouse_input.radius), speed);

bounds = obj_mouse_input.radius;
//x = lerp(x,clamp(mouse_x, obj_mouse_input.x - bounds, obj_mouse_input.x + bounds), speed);
//y = lerp(y, clamp(mouse_y, obj_mouse_input.y - bounds, obj_mouse_input.y + bounds), speed);

x = lerp(x,clamp(mouseTargetX, obj_mouse_input.x - bounds, obj_mouse_input.x + bounds), speed);
//x = lerp(y,clamp(mouseTargetY, mouseTargetY - bounds, mouseTargetY + bounds), speed);
y = lerp(y,clamp(mouseTargetY, obj_mouse_input.y - bounds, obj_mouse_input.y + bounds), speed);

// later... keep within bounds of a circle
// later... keep within bounds of a circle

if (position_meeting(x, y, obj_asterite)){
	speed = cursor_speed / 3;
}	
else {
	speed = cursor_speed;
}



