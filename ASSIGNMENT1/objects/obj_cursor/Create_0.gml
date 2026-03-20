
target_object = pointer_null;

depth = -1;
sprite_set_speed(sprite_index, 0, spritespeed_framespersecond);

// 0 not hovering over anything
// 1 hovering
// 2 picked up an object
// 3,4,5 holding stim toys

// to maybe change to right button / left handed mouse control later!
INPUT_BUTTON = mb_left

enum CURSOR_STATE {
	EMPTY = 0,
	HOVER = 1,
	HOLD = 2,
}

cursor_state = CURSOR_STATE.EMPTY

//frames_to_pickup = 20;
//frames_pressed = 0;
//frames_max = false;