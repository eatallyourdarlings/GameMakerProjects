// Inherit the parent event
event_inherited();

//interact_sound = sound_cone_fast;

pickup_sound = sound_cone_pickup;
interact_sound = sound_cone_scrape;
drop_sound = sound_cone_scratch;

toggle = 0;

parent_interact = self.interact;
interact = function(){
	parent_interact();
	
	toggle = toggle - 1;
	image_index = toggle;
}