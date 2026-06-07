asterite_wvy = sin(get_timer()  / 30000000)

//if (self.active) {
	
	if (self.constellated) {
		self.image_speed = asterite_speed * 3;
		if radius != 22 {radius = lerp(radius, 22, .22);}
		//y = ystart * asterite_wvy * 0.1
	}
	
	else if (self.active) {
		if radius != 0 {radius = lerp(radius, 0, .22);}
	}
//}

else {
	self.image_speed = asterite_speed; 
	if radius < 44 {radius = lerp(radius, 44, .22);}	
}


if collision_circle(x, y, 44, obj_cursor, false, true){
	//frames_touching++;
	//if (frames_touching == 1){
	self.constellated = true;
	
	if (obj_camera.frames_blinking == 30){
		self.active = true;
		obj_poem.poem[self.asterite_index, 1] = true;
		obj_poem.stanza_index = self.asterite_index;
	}
	//}
}
else {
	self.constellated = false;	
}

//sprite_set_speed() // might set speed of all sprites

//obj_cursor

//self.constellated = 1 - self.constellated 

//if !self.constellated 
//{
//	//if (obj_camera.blink_anim.image_index == 11){}
//	//self.constellated = true
//	obj_poem.poem[self.asterite_index, 1] = true;
//	obj_poem.stanza_index = self.asterite_index;
//}

// toggle
//self.constellated = 1 - self.constellated;
//print($"stanza: {other.asterite_index}")


// too complicated, trying to make it only fire off once
//if !(obj_poem.poem[other.asterite_index, 1] == true)
//	obj_poem.stanza_index = other.asterite_index;
//else {
//	obj_poem.poem[other.asterite_index, 1] = true;	
//}