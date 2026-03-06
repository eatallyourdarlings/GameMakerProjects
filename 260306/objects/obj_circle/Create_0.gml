// get the width or height (whichever is larger) of the room, set radius to 40% of that
//show_debug_message($"height = {room_height}")
//show_debug_message($"width = {room_width}")
//show_debug_overlay(true)

// smallest of the two
r = (room_width < room_height ? room_width : room_height) * 0.8
r1 = 0.2 * r
r2 = 0.6 * r

show_debug_message($"hello circle! {r1}")
show_debug_message($"hello circle! {r2}")

//rr = r1

draw_set_colour(#000000)

//show_debug_message($"hello circle! {r}")

t = get_timer()	
tt = get_timer() + 4.4