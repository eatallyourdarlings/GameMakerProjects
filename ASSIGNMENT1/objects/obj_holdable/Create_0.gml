//this object differs from draggable by being dependant upon the cursor's state

//pressing = false;

//gots to lerp these
initial_x = x;
initial_y = y;

pickup_sound = sound_pickup;
interact_sound = sound_blep;
//drop_sound = sound_yoda;
drop_sound = sound_pickup;

pickup = function () {
	self.depth = obj_cursor.depth - 1;
	//image_blend = c_blue;
	audio_play_sound(pickup_sound, 10, false);
}

drop = function () {
	self.depth = obj_cursor.depth + 1;
	//image_blend = c_white;
	audio_play_sound(drop_sound, 3, false);
	x = initial_x;
	y = initial_y;
	
	// return the object to its location
}


//toggle = 0;

interact = function (){
	//image_blend = c_red;
	
	var voice = audio_play_sound(interact_sound, 10, false);
	audio_sound_pitch(voice, 2 * random_range(0.8,1.2));

	//toggle = 1 - toggle;
	
	//if toggle {
	//	image_blend = c_green;
	//}
	//else {
	//	image_blend = c_orange;	
	//}
};
