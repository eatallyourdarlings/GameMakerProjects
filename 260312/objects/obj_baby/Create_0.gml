// Inherit the parent event
event_inherited();

banished = false

//sound = audio_play_sound(sound_toyyoda, 0, 1)
//sound_asset = audio_sound_get_asset(sound_toyyoda);

name = "baby"

if alt_sprite {name = "goblin"}

cauldron = false

if position_meeting(x,y,obj_hitbox){ 
	cauldron = true 
}

show_debug_message($"{name} in cauldron {cauldron}")