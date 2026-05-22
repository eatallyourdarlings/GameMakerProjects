var cursor_speed = 1/40

//cursor goes anywhere
//x = lerp(x,mouse_x, cursor_speed);
//y = lerp(y,mouse_y, cursor_speed);



// clamp to obj_mouse_input.radius keep within a square
x = lerp(x,clamp(mouse_x, obj_mouse_input.x - obj_mouse_input.radius, obj_mouse_input.x + obj_mouse_input.radius), cursor_speed);
y = lerp(y, clamp(mouse_y, obj_mouse_input.y - obj_mouse_input.radius, obj_mouse_input.y + obj_mouse_input.radius), cursor_speed);

bounds = obj_mouse_input.radius;
x = lerp(x,clamp(mouse_x, obj_mouse_input.x - bounds, obj_mouse_input.x + bounds), cursor_speed);
y = lerp(y, clamp(mouse_y, obj_mouse_input.y - bounds, obj_mouse_input.y + bounds), cursor_speed);


// later... keep within bounds of a circle