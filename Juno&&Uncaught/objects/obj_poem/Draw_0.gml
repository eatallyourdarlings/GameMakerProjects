



// when a new line is triggered (to test, space button pressed)
	// poem_index++
	// 
	// draw all the previous lines full opacity
	// fade in the latest line

draw_set_colour(text_colour);

var sep = clamp(_line_sep * abs(wvy), _line_sep_min, _line_sep);
//draw_text(x + 200, y, $"{sep}");

// args for sep in draw_text_ext
// line_sep * wvy
// clamp(line_sep * abs(wvy) // works ok!
// _line_sep_max + 0.5 * (1 - cos(pi * line_sep * abs(wvy) / 1)) + _line_sep_min;

// poem stanzas are sections of array
for (i = 0; i <= poem_index; i++){
	if i == poem_index {
		draw_set_colour(emphasis_colour);
	}
	
	draw_text_ext(x, y + _line_sep * i, poem[i], sep, 600)
	
}



//make last arg (linewidth) something big so you have control over linewrap
//draw_text_ext(x, y + 50 + _line_height*2, multiline, line_sep, 600);