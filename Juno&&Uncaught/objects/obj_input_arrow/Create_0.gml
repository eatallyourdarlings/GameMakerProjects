// value of x and y inputs
input_vector = [0,0]
input_angle = 0;
inputs_limit = 5;

hellip_colour = #cc80e7;

arrow_colour = c_red;
//sizes in pixel
arrow_length = 0;
arrow_size = 0;

// reset variables back to starting state


reset_input = function(){
	show_debug_message("reset input");
	arrow_colour = #8080ff;
	// for each obj_pip?
	
	//obj_pip.whack(input_vector)
	input_vector = [0,0]
	arrow_length = 30;
	arrow_size = arrow_length / 6;
}

reset_input();