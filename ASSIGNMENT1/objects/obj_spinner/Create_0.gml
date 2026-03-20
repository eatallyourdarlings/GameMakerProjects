event_inherited();

spin_speed = 0;

self.interact_sound = sound_spinner_flick;
self.pickup_sound = sound_spinner_pickup;
self.drop_sound = sound_spinner_pickup;

parent_interact = self.interact;
interact = function(){
	parent_interact();
	spin_speed += 1;
}

parent_pickup = self.pickup;
pickup = function(){
	parent_pickup();
	
	// start playing the looping spin sfx
	audio_play_sound(sound_spinner_loop, 5, true);
}

//stop playing the loop
drop = function(){
	
}

//flicked = false;
//previous approach for rotating
// previous approach for left pressed
//flicked = true;
// set flicked to false in 20 seconds
//alarm[0] = 20;

//image_angle
//add 30 degrees
//new_image_angle = image_angle + 30


// try do this without the tween library
//tween_duration = .5
											//steps per second
//tween = TweenCreate(self, EaseInOutCubic, 0, false, 0, .5, "image_angle", "image_angle", "new_image_angle")