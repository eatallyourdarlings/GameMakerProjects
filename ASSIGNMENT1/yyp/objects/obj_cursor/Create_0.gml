INPUT_BUTTON = mb_right;
target_object = pointer_null;
depth = -2;


city = audio_play_sound(sound_city, 10, true);
tram = audio_play_sound(sound_tram, 10, true);
birdsong = audio_play_sound(sound_birdsong, 10, true);
audio_sound_gain(birdsong, 0)

obj_sky.image_alpha = 0;

sprite_set_speed(sprite_index, 0, spritespeed_framespersecond);


// scrapped state machine

// 0 not hovering over anything
// 1 hovering
// 2 picked up an object
// 3,4,5 holding stim toys

//enum CURSOR_STATE {
//	EMPTY = 0,
//	HOVER = 1,
//	HOLD = 2,
//}
//cursor_state = CURSOR_STATE.EMPTY

//frames_to_pickup = 20;
//frames_pressed = 0;
//frames_max = false;