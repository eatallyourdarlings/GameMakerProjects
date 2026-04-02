// lerp

//start at r1 
//grow to r2 over 4.4 seconds
//stay at r2 for 1.1 seconds
//shrink back to r1 in 5.5 seconds

//first lerp:
//t = get_timer()
//tt = t + 4.4
//target time tt = t + 4.4
//tt = 4.4

show_debug_message(rr)

//amt = abs(sin(get_timer() / 2200000))
//show_debug_message(amt)
//amt = clamp((tt - t - 1), 0, 1)
//amt =  (tt - t) / 1
//call_later(
//rr = lerp(r1, r2, amt)
	//)

//if hold
//{
//    timer += 1;
//    if timer == 3*60 //3 seconds
//    {

//    }
//    else if timer == 7*60 //7 seconds
//    {

//    }
//    else if timer >= 12*60 //12 seconds
//    {

//    }
//}