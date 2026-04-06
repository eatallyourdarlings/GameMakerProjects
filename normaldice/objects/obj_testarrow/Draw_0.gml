

//gives you the angle that you're pointing towards
// y + input_vector[1] * arrow_length

//lengthdir_y(1, input_angle)

draw_arrow(x, y, x + arrow_length * input_vector_normalised[0], y + arrow_length * input_vector_normalised[1], arrow_size);

draw_circle(x,y, arrow_length / 2, true)