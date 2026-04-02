
//show_debug_message($"height = {room_height}")
//show_debug_message($"width = {room_width}")
//show_debug_overlay(true)

draw_set_colour(#000000)


// smallest of the two
r = (room_width < room_height ? room_width : room_height) * 0.8
r1 = 0.2 * r
r2 = 0.6 * r
rr = r1

//show_debug_message($"hello circle! {r1}")
//show_debug_message($"hello circle! {r2}")




/*
 0 | TWEEN_MODE_ONCE   | “once”
 1 | TWEEN_MODE_BOUNCE | “bounce” 
 2 | TWEEN_MODE_PATROL | “patrol” 
 3 | TWEEN_MODE_LOOP   | “loop”
 4 | TWEEN_MODE_REPEAT | “repeat”
*/

/* 3 = loop, true = seconds
 target, 
 ease,
 mode (repetitions),
 delta time (true=seconds, false=steps),
 delay (to start),
 duration,
 property (variable),
 start value,
 destination value
*/

//TWEEN TEST
//xx = 2
//tw = TweenFire(self, EaseLinear, 0, true, 1, 5, "xx", 0, 1)
//show_debug_message($"hello tween! {tw}")
//TweenAddCallback(tw, TWEEN_EV_FINISH, self, show_debug_message, "tweened!");



//breathe in
//grow to r2 over 4.4 seconds
tw1 = TweenCreate(self, EaseInOutCubic, 0, true, 0, 4.4, "rr", "r1", "r2")
//hold then breathe out
//stay at r2 for 1.1 seconds then shrink back to r1 over 5.5
tw2 = TweenCreate(self, EaseInOutCubic, 0, true, 0, 5.5, "rr", "r2", "r1")

TweenAddCallback(tw1, TWEEN_EV_FINISH, self, TweenPlayDelay, tw2, 1.1);
TweenAddCallback(tw1, TWEEN_EV_FINISH, self, show_debug_message, "tw1 done!");
TweenAddCallback(tw2, TWEEN_EV_FINISH, self, TweenPlay, tw1);
TweenAddCallback(tw2, TWEEN_EV_FINISH, self, show_debug_message, "tw2 done!");
TweenPlay(tw1)


//t = get_timer()	
//tt = get_timer() + 4.4

