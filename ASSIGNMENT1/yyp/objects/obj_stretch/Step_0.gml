
//image_yscale = lerp(image_xscale, random_scale);
//image_yscale = 1 - (image_xscale / 10);


// if we're touching, make him stretch!
if (touched == true) {
	draw_yscale = lerp(draw_yscale, random_scale, 0.5);
}

// once our guy is fully stretched, reset touched variable
if (draw_yscale == random_scale) {
	touched = false;
}

// when hes fully stretched and we're not touching, make him normal size again
if (touched == false) {
	draw_yscale = lerp(draw_yscale, 1,0.5);
}