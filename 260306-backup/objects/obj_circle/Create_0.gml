// get the width or height (whichever is larger) of the room, set radius to 40% of that
//show_debug_message($"height = {room_height}")
//show_debug_message($"width = {room_width}")
//show_debug_overlay(true)
show_debug_message("hello circle!")

// largest of the two
r = 0.4 * (room_width > room_height ? room_width : room_height)
show_debug_message(r)
x = room_width/2
y = room_width/2

//draw_set_colour(#000000)
