asterite_wvy = sin(get_timer()  / 30000000)

if constellated {
	self.image_speed = asterite_speed * 3;
	//y = ystart * asterite_wvy * 0.1
	radius = lerp(radius, radius / 2, .22);
}
else {self.image_speed = asterite_speed;}


//sprite_set_speed() // might set speed of all sprites