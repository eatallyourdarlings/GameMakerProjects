



// when a new line is triggered (to test, space button pressed)
	// poem_index++
	// 
	// draw all the previous lines full opacity
	// fade in the latest line
	
x_anchor = x
y_anchor = y
//draw_sprite_ext(sprite_index, image_index, x_anchor, y_anchor, image_xscale, image_yscale, image_angle, image_blend,image_alpha);
//y_anchor = camera_get_view_height() - 200


draw_set_colour(text_colour);
var sep = clamp(_line_sep * wvy, _line_sep_min, _line_sep)
;
//draw_text(x + 200, y, $"{sep}");

// alternate args for sep in draw_text_ext
// line_sep * wvy
// clamp(line_sep * abs(wvy) // works ok!
// _line_sep_max + 0.5 * (1 - cos(pi * line_sep * abs(wvy) / 1)) + _line_sep_min;


//for (i = 0; i <= poem_index; i++){
//	if i == poem_index {
//		draw_set_colour(emphasis_colour);
//	}
	
//	draw_text_ext(x, y + _line_sep * i, poem[i], sep, 600)
	
//}


for (i = 0; i < array_length(poem); i++){

	// latest stanza found
	//draw_text(x_anchor - 300, y_anchor, $"{stanza_index}")
	
	// whether each stanza is shown
	//draw_text(x_anchor - 200, y_anchor + _line_sep * i, $"{poem[i,1]}");
	
	draw_set_colour(text_colour);
	
	draw_text(x_anchor, y_anchor, "*<o+{(=:");
	
	// if current stanza is activated
	if poem[i,1]{
		if i == stanza_index{
			draw_set_colour(emphasis_colour);
		}
		
		draw_text_ext(x_anchor, y_anchor + abs(sep) + _line_sep * 4 * i, poem[i,0], sep, 600)		
		//clamp(y_anchor * wvy, -_line_sep_min, -_line_sep_min)
	}
	
}




//make last arg (linewidth) something big so you have control over linewrap
//draw_text_ext(x, y + 50 + _line_height*2, multiline, line_sep, 600);