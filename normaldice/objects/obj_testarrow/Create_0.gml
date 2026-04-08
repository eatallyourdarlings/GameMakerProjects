

// value of x and y inputs
input_vector = [0,0]
input_angle = 0;
inputs_limit = 5;

hellip_colour = #cc80e7;

die_faces = ["⚀","⚁","⚅","⚄"]
die_faces = ["1","2","6","5"]
die_index = 0

arrow_colour = c_red;
//sizes in pixel
arrow_length = 0;
arrow_size = 0;

// reset variables back to starting state


reset_input = function(){
	show_debug_message("reset input");
	arrow_colour = #8080ff;

	// for each obj_pip?
	
	obj_pip.whack(input_vector)
	input_vector = [0,0]
	arrow_length = 30;
	arrow_size = arrow_length / 6;
	
	die_index_new = 0;
	
	// i think i could round the number of turns of the face of the die using modulo ?? 
	
	
	
	//if input_vector[0] < 0 or if input_vector[0] >= array_length(die_faces){
		
	//}
	
	// wrap around the array if it drops below 0
	//if input_vector[0] < 0 { die_index_new = die_index + array_length(die_faces) + input_vector[0]}
	// subtract from the length of the array if the input is greater than its length
	//if input_vector[0] > array_length { die_index_new = die_index + array_length(die_faces) + input_vector[0]}

	
	//if input_vector[0] >= array_length(die_faces) { add_to_die -= array_length(die_faces) }
	//else if add_to_die <= 0 { add_to_array_length(die_faces) }
	//die_index += input_vector[0]
	
	die_index = die_index_new;
}

reset_input();