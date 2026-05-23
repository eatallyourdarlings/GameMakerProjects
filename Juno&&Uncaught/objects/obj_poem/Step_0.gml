
//sine wave of linesep
//linesep = lerp(linesep

//if keyboard_check_pressed(vk_space){
//	if (poem_index < array_length(poem) + 1) {
//		poem_index++;
//	}
//}

wvy = sin(get_timer()  / 1000000)
//line_sep = lerp(line_sep, line_sep * abs(wvy), abs(wvy));
//print(_line_sep)



// script from davetech.co.uk/gamemakereasingandtweeningfunctions
// ease in out sine (inputvalue, outputmin, outputmax, inputmax
// return argument2 * 0.5 * (1 - cos(pi * argument0 / argument3)) + argument1)
// return outputmax * 0.5 * (1 - cos(pi * inputvalue/ inputmax)) + outputmin)

//_line_sep_max + 0.5 * (1 - cos(pi * line_sep / 1)) + _line_sep_min);
