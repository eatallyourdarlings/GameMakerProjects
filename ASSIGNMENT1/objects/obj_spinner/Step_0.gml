event_inherited();

if spin_speed > 0 {
	//the rate at which the spinning decays
	spin_speed -= .007;
}



image_angle = image_angle + (20 * min(spin_speed, 10));



// maybe should do this in draw?