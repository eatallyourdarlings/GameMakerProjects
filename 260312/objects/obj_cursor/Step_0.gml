

//first frame the button was pressed/released
//mouse_check_button_pressed()
//mouse_check_button_released()

x = mouse_x; 
y = mouse_y;

if mouse_check_button(mb_left) {
	image_index = 1;
}
else {
	image_index = 0;
}


//with (obj_check)
//{
//    if !collision_line(x, y, other.x, other.y, obj_wall, false, true)
//    {
//        sprite_index = spr_spotted;
//    }
//    else
//    {
//        sprite_index = spr_clear;
//    }
//}

// The above code will loop through all instances of obj_check checking for a collision line between them and the instance running the code. The sprite of those instances will be changed depending on the return value (true or false) for the collision line.

// sprite_index used to change to a different asset
// image_index used to change to a frame within the currently used sprite asset

