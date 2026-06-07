draw_self()
if self.active
{
	image_blend = global.col_hi;
	draw_set_colour(global.col_hi);
}
else 
{
	image_blend = global.col_key
	draw_set_colour(global.col_key);
}
draw_circle(x,y, radius, true)