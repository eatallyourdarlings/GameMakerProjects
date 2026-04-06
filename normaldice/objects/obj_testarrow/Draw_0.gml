

//gives you the angle that you're pointing towards
// y + input_vector[1] * arrow_length

//lengthdir_y(1, input_angle)

draw_set_colour(arrow_colour);

//ideally, you would an arrow which is not proportional to the input, multiply by .1 for each increase or somethin.
//draw_arrow(x, y, x + arrow_length * input_vector_normalised[0], y + arrow_length * input_vector_normalised[1], arrow_size);
draw_arrow(x, y, x + arrow_length * input_vector_normalised[0] + input_vector[0], y + arrow_length * input_vector_normalised[1] + input_vector[1], arrow_size);

draw_circle(x,y, arrow_length / 2, true)