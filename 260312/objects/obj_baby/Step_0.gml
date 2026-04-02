// Inherit the parent event
event_inherited();

if mouse_check_button_released(mb_left){
	
	show_debug_message($"{name} dropped")	
	if !position_meeting(x,y,obj_hitbox) {
		
		show_debug_message($"{name} banished")	
		//if a goblin
		if alt_sprite {
			banished = true
			// delete the object
			//self
			//a = audio_create_stream("toyyoda.ogg")
			audio_play_sound(sound_toyyoda, 0, 0);
			instance_destroy()
			//audio_destroy_stream(a)
		}
		
		
		
		//else if you just killed a baby
		else {
			game_restart()
		}
		
if banished {image_index = 4}
		
		//change the background
		//layer_background_change(0, )
	}
}